tyrano.plugin.kag.studio = {
    app: {},
    tyrano: null,
    rider_view: {},
    ipc: {},
    flag_push_console: !0,
    last_push_console_obj: {},
    map_watch: {},
    init: function () {
        if (-1 != window.navigator.userAgent.indexOf("VNE")) {
            try {
                this.ipc = require("electron")
            } catch (e) {
                return !1
            }
            TYRANO.kag.is_studio = !0;
            this.ipc = require("electron");
            this.ipc.ipcRenderer.on("ping", ((event, arg) => {
                this.send("asynchronous-reply", JSON.stringify(arg))
            }));
            this.ipc.ipcRenderer.on("variable-add", ((event, arg) => {
                let data = JSON.parse(arg), array_name = data.names;
                for (let i = 0; i < array_name.length; i++) {
                    let name = array_name[i].name, val = "" + this.kag.embScript(name);
                    this.map_watch[name] = val;
                    array_name[i].val = val
                }
                data.names = array_name;
                this.send("changed-variable", data)
            }));
            this.ipc.ipcRenderer.on("status-clear-save-data", ((event, arg) => {
                localStorage.clear()
            }));
            this.ipc.ipcRenderer.on("status-load-save", ((event, arg) => {
                let slot = JSON.parse(arg).slot;
                var timer_id = setInterval((() => {
                    if (1 == this.kag.stat.is_strong_stop) {
                        clearInterval(timer_id);
                        this.kag.menu.loadGame(slot)
                    }
                }), 100)
            }));
            this.ipc.ipcRenderer.on("exe-tag", ((event, arg) => {
                let tag_text = JSON.parse(arg).tag_text;
                this.cutTyranoScript(tag_text)
            }));
            this.ipc.ipcRenderer.on("material-preview-position", ((event, arg) => {
                let data = JSON.parse(arg), file = data.file, category = data.category;
                this.insertElement(category, file)
            }));
            this.ipc.ipcRenderer.on("variable-add-all", ((event, arg) => {
                var map_variable = TYRANO.kag.variable, f = TYRANO.kag.stat.f, mp = TYRANO.kag.stat.mp;
                map_variable.f = f;
                map_variable.mp = mp;
                this.send("init-variable-all", map_variable)
            }));
            setInterval((e => {
                let charas = this.kag.stat.charas;
                this.send("chara-update-charas", charas)
            }), 5e3);
            var j_reload_button = $("<div style='position:absolute;z-index:999999999;padding:10px;opacity:0.8;background-color:white;left:0px;top:0px'><button style='cursor:pointer'><span style=''>" + $.lang("reload") + "</span></button></div>");
            j_reload_button.draggable({
                scroll: !1, stop: (e, ui) => {
                }
            });
            j_reload_button.find("button").on("click", (e => {
                location.reload()
            }));
            $("body").append(j_reload_button);
            this.send("init-variable", {})
        }
    },
    insertElement: function (category, file) {
        var path = "./data/" + category + "/" + file;
        if ("fgimage" == category || "image" == category) {
            var j_img = $("<div style='position:absolute;z-index:9999999999;'><div class='area_pos' style='position:absolute;width:100px;opacity:0.5;background-color:black;color:white'></div><div class='button_delete' style='position:absolute;right:0px;border:solid 1px gray;background-color:white;width:20px;height:20px;cursor:pointer' >×</div><img style='width:100%;border:solid 1px green;' src='" + path + "' /></div>");
            (() => {
                var _j_img = j_img;
                j_img.draggable({
                    scroll: !1, stop: (e, ui) => {
                        let left = Math.floor(ui.position.left), top = Math.floor(ui.position.top);
                        _j_img.find(".area_pos").html("x:" + left + " y:" + top);
                        let obj = {left: left, top: top};
                        this.send("material-update-pos", obj)
                    }
                });
                j_img.resizable({
                    aspectRatio: !0, handles: "all", resize: (e, ui) => {
                        var target = $(e.target);
                        let obj = {width: parseInt(target.css("width")), height: parseInt(target.css("height"))};
                        this.send("material-update-size", obj)
                    }
                });
                _j_img.find(".button_delete").click((function () {
                    _j_img.remove()
                }));
                $(".tyrano_base").attr("ondragstart", "");
                $(".tyrano_base").append(_j_img)
            })()
        } else if ("bgimage" == category) {
            TYRANO.kag.layer.getLayer("base", "fore").css("background-image", "url(" + path + ")")
        }
    },
    send: function (key, json_obj) {
        this.ipc.ipcRenderer.send(key, JSON.stringify(json_obj))
    },
    notifyChangeVariable: function () {
        let data = {}, array_name = [];
        for (let key in this.map_watch) {
            void 0 === this.map_watch[key] && (this.map_watch[key] = "");
            let val = this.kag.embScript(key);
            this.map_watch[key] = val;
            array_name.push({name: key, val: val})
        }
        data.names = array_name;
        this.send("changed-variable", data)
    },
    pushConsole: function (obj) {
        this.last_push_console_obj = obj;
        if (1 == this.flag_push_console) {
            this.flag_push_console = !1;
            setTimeout((e => {
                this.flag_push_console = !0;
                this.send("replay-console", this.last_push_console_obj)
            }), 1e3)
        }
    },
    complete: function (TG) {
        let init_data = {array_save: TG.kag.menu.getSaveData()};
        this.send("load-complete", init_data)
    },
    cutTyranoTag: function (tag, pm) {
        TYRANO.kag.ftag.startTag(tag, pm)
    },
    cutTyranoScript: function (str) {
        for (var array_s = TYRANO.kag.parser.parseScenario(str).array_s, i = 0; i < array_s.length; i++) {
            var tag = array_s[i];
            this.cutTyranoTag(tag.name, tag.pm)
        }
    }
};
