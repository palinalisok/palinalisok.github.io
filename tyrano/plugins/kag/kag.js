tyrano.plugin.kag = {
    version: 500,
    tyrano: null,
    kag: null,
    sound_swf: null,
    is_rider: false,
    is_studio: false,
    save_key_id: "",
    save_key_val: "",
    cache_html: {},
    cache_scenario: {},
    config: {
        defaultStorageExtension: "jpg",
        projectID: "vneproject",
        game_version: "0.0",
        preload: "on",
        skipSpeed: "30",
        patch_apply_auto: "true",
        mediaFormatDefault: "ogg",
        configSave: "webstorage",
        configSaveOverwrite: "false"
    },
    define: {TYRANO_ENGINE_VERSION: 400, BASE_DIV_NAME: "tyrano_base", FLAG_APRI: !1},
    variable: {sf: {}, tf: {}},
    tmp: {
        checking_macro: !1,
        ready_audio: !1,
        audio_context: !1,
        num_anim: 0,
        map_bgm: {},
        map_se: {},
        sleep_game: null,
        sleep_game_next: !1,
        base_scale: 1,
        is_se_play: !1,
        is_se_play_wait: !1,
        is_vo_play: !1,
        is_vo_play_wait: !1,
        is_bgm_play: !1,
        is_bgm_play_wait: !1,
        is_audio_stopping: !1,
        loading_make_ref: !1,
        wait_id: "",
        map_chara_talk_top: {},
        camera_stream: !1,
        video_playing: !1,
        angle: 0,
        largerWidth: !1,
        three: {
            stat: {
                is_load: !1,
                canvas_show: !1,
                start_event: !0,
                scene_pm: {},
                init_pm: {},
                gyro: {pm: {}, x: 0, y: 0, enable: -1, mode: 0}
            },
            models: {}, evt: {}
        }
    },
    stat: {
        map_label: {},
        map_macro: {},
        vertical: "false",
        f: {},
        mp: {},
        current_layer: "message0",
        current_page: "fore",
        is_stop: !1,
        is_wait: !1,
        is_trans: !1,
        is_wait_anim: !1,
        is_strong_stop: !1,
        strong_stop_recover_index: 0,
        is_nowait: !1,
        current_message_str: "Старт игры",
        current_save_str: "",
        current_keyframe: "",
        map_keyframe: {},
        is_script: !1,
        buff_script: "",
        is_html: !1,
        map_html: {},
        cssload: {},
        save_img: "",
        stack: {if: [], call: [], macro: []},
        set_text_span: !1,
        current_scenario: "first.ks",
        is_skip: {},
        is_auto: {},
        current_bgm: "",
        current_bgm_vol: "",
        current_bgm_html5: "false",
        current_se: {},
        load_auto_next: !1,
        current_bgcamera: "",
        enable_keyconfig: !0,
        current_bgmovie: {storage: "", volume: ""},
        current_camera: {},
        current_camera_layer: "",
        is_move_camera: !1,
        is_wait_camera: !1,
        current_line: 0,
        is_hide_message: !1,
        is_click_text: !1,
        is_adding_text: !1,
        flag_ref_page: !1,
        ruby_str: "",
        mark: 0,
        style_mark: "",
        ch_speed: "",
        skip_link: "false",
        log_join: "false",
        log_clear: !1,
        f_chara_ptext: "false",
        flag_glyph: "false",
        path_glyph: "nextpage.gif",
        current_cursor: "auto",
        font: {enable: !1, color: "", bold: "", size: "", face: "", italic: "", effect: "", effect_speed: "0.2s"},
        qr: {mode: "off", define: {}},
        locate: {x: 0, y: 0},
        default_font: {
            color: "",
            bold: "",
            size: "",
            face: "",
            italic: "",
            edge: "",
            shadow: "",
            effect: "",
            effect_speed: ""
        },
        fuki: {def_style: {}, def_style_inner: {}, def_pm: {}, active: !1, marginr: 0, marginb: 0, others_style: {}},
        sysview: {
            save: "./tyrano/html/save.html",
            load: "./tyrano/html/load.html",
            backlog: "./tyrano/html/backlog.html",
            menu: "./tyrano/html/menu.html"
        },
        chara_pos_mode: "true",
        chara_effect: "swing",
        chara_ptext: "",
        chara_time: "600",
        chara_memory: "false",
        chara_anim: "true",
        pos_change_time: "600",
        chara_talk_focus: "none",
        chara_brightness_value: "60",
        chara_blur_value: "2",
        chara_talk_anim: "none",
        chara_talk_anim_time: 230,
        chara_talk_anim_value: 30,
        apply_filter_str: "",
        video_stack: null,
        is_wait_bgmovie: !1,
        charas: {},
        jcharas: {},
        play_bgm: !0,
        play_se: !0,
        play_speak: !1,
        map_se_volume: {},
        map_bgm_volume: {},
        map_vo: {vobuf: {}, vochara: {}},
        vostart: !1,
        log_write: !0,
        buff_label_name: "",
        already_read: !1,
        visible_menu_button: !1,
        resizecall: {storage: "", target: ""},
        vchat: {is_active: !1, chara_name_color: "0x70c7ff", max_log_count: 200, charas: {}},
        title: ""
    },
    init: function () {
        this.kag = this;
        var that = this;
        this.tyrano.test();
        if ($.isElectron() && -1 == window.navigator.userAgent.indexOf("TyranoStudio") && !require("electron").remote.app.requestSingleInstanceLock()) {
            alert($.lang("double_start"));
            window.close();
            void 0 !== navigator.app && navigator.app.exitApp()
        }
        this.parser.loadConfig((function (map_config) {
            that.config = $.extend(!0, that.config, map_config);
            that.checkUpdate((function () {
                that.init_game()
            }))
        }));
        $("script").each((function () {
            $(this).attr("src") && (-1 == $(this).attr("src").indexOf("cordova") && -1 == $(this).attr("src").indexOf("phonegap") || (that.define.FLAG_APRI = !0))
        }));
        ("function" == typeof TyranoPlayer || $.isNWJS()) && (this.tmp.ready_audio = !0);
        var AudioContext = window.AudioContext || window.webkitAudioContext || !1;
        AudioContext && (this.tmp.audio_context = new AudioContext);
        try {
            $.getBrowser()
        } catch (e) {
            console.log(e)
        }
    },
    checkUpdate: function (call_back) {
        if ($.isNWJS() || $.isElectron()) if ("false" != this.kag.config.patch_apply_auto) {
            var patch_path = $.localFilePath();
            patch_path = patch_path + "/" + this.kag.config.projectID + ".tpatch";
            this.applyPatch(patch_path, "true", call_back)
        } else call_back(); else call_back()
    },
    applyPatch: function (patch_path, flag_reload, call_back) {
        var fs = require("fs");
        if (fs.existsSync(patch_path)) {
            var fse = require("fs-extra"), _path = require("path"), unzip_path = $.getUnzipPath();
            if ("asar" != unzip_path) {
                AdmZip = require("adm-zip"), require("path").resolve("./");
                new AdmZip(patch_path).extractAllTo(unzip_path + "/update_tmp", !0);
                fse.copySync(unzip_path + "/update_tmp/", unzip_path + "/");
                fse.removeSync(unzip_path + "/update_tmp");
                fse.removeSync(patch_path);
                $.alert("Патч адаптирован. Перезагрузка.", (function () {
                    location.reload()
                }))
            } else {
                const asar = require("asar");
                let path = __dirname, out_path = (fs.readdirSync(path), $.localFilePath());
                if ("darwin" == process.platform) {
                    alert("Выберите расположение исполняемого файла игры (.app), к которому вы хотите применить патч.");
                    let filenames = require("electron").remote.dialog.showOpenDialogSync(null, {
                        properties: ["openFile"],
                        title: "Выберите исполняемый файл игры (app), к которому вы хотите применить патч.",
                        filters: [{name: "", extensions: ["app"]}]
                    });
                    if (void 0 === filenames) {
                        alert("Остановить применение патча");
                        call_back();
                        return
                    }
                    path = filenames[0] + "/Contents/Resources/app.asar";
                    out_path += "/"
                } else out_path += "/";
                fse.mkdirSync(_path.resolve(out_path + "/update_tmp"));
                (async () => {
                    await asar.extractAll(_path.resolve(path), _path.resolve(out_path + "/update_tmp/"))
                })();
                var AdmZip;
                new (AdmZip = require("adm-zip"))(patch_path).extractAllTo(_path.resolve(out_path + "update_tmp/"), !0);
                const src = _path.resolve(out_path + "update_tmp/"), dest = _path.resolve(path);
                (async () => {
                    await asar.createPackage(src, dest);
                    $.alert("Патч был адаптирован. Пожалуйста, активируйте его снова.", (function () {
                        fse.removeSync(_path.resolve(patch_path));
                        fse.removeSync(_path.resolve(out_path + "update_tmp"));
                        window.close()
                    }))
                })()
            }
        } else call_back()
    },
    evalScript: function (str) {
        var TG = this, f = this.stat.f, sf = this.variable.sf, tf = this.variable.tf, mp = this.stat.mp;
        eval(str);
        this.saveSystemVariable();
        this.kag.is_studio && this.kag.studio.notifyChangeVariable()
    },
    embScript: function (str, preexp) {
        try {
            var f = this.stat.f, sf = this.variable.sf, tf = this.variable.tf, mp = this.stat.mp;
            return eval(str)
        } catch (e) {
            return
        }
    },
    saveSystemVariable: function () {
        $.setStorage(this.kag.config.projectID + "_sf", this.variable.sf, this.kag.config.configSave)
    },
    clearVariable: function () {
        this.stat.f = {};
        this.variable.sf = {};
        this.clearTmpVariable();
        this.saveSystemVariable()
    },
    clearTmpVariable: function () {
        var tmp_sys = this.kag.variable.tf.system;
        this.kag.variable.tf = {};
        this.kag.variable.tf.system = tmp_sys
    },
    pushStack: function (name, flag) {
        this.stat.stack[name].push(flag)
    },
    popStack: function (name) {
        return this.stat.stack[name].pop()
    },
    getStack: function (name) {
        return this.stat.stack[name][this.stat.stack[name].length - 1]
    },
    setStack: function (name, flag) {
        this.stat.stack[name][this.stat.stack[name].length - 1] = flag
    },
    endStorage: function () {
        var pm = this.kag.getStack("call");
        if (null == pm) return !1;
        this.kag.popStack("call");
        this.kag.ftag.nextOrderWithIndex(pm.index, pm.storage)
    },
    init_game: function () {
        var that = this;
        this.parser = object(tyrano.plugin.kag.parser);
        this.parser.kag = that;
        this.ftag = object(tyrano.plugin.kag.ftag);
        this.ftag.kag = that;
        this.ftag.init();
        this.layer = object(tyrano.plugin.kag.layer);
        this.layer.kag = that;
        this.layer.init();
        this.menu = object(tyrano.plugin.kag.menu);
        this.menu.kag = that;
        this.menu.init();
        this.key_mouse = object(tyrano.plugin.kag.key_mouse);
        this.key_mouse.kag = that;
        this.key_mouse.init();
        this.event = object(tyrano.plugin.kag.event);
        this.event.kag = that;
        this.event.init();
        this.rider = object(tyrano.plugin.kag.rider);
        this.rider.kag = that;
        this.rider.init();
        this.studio = object(tyrano.plugin.kag.studio);
        this.studio.kag = that;
        this.studio.init();
        if ($.isElectron() && "file" == that.kag.config.configSave) {
            -1 != process.execPath.indexOf("var/folders") ? that.save_key_id = that.kag.config.projectID + "_save_key" : that.save_key_id = $.getExePath() + "_" + that.kag.config.projectID;
            if (localStorage.getItem(that.save_key_id)) that.save_key_val = localStorage.getItem(that.save_key_id); else {
                that.save_key_val = $.makeSaveKey();
                localStorage.setItem(that.save_key_id, that.save_key_val);
                var tmp_array = that.menu.getSaveData();
                tmp_array.hash = that.save_key_val;
                $.setStorage(that.kag.config.projectID + "_tyrano_data", tmp_array, that.kag.config.configSave)
            }
            var tmp_array = that.menu.getSaveData();
            if (tmp_array.hash != that.save_key_val) {
                alert($.lang("save_file_violation_1"));
                if ("true" != that.kag.config.configSaveOverwrite) {
                    alert($.lang("save_file_violation_3"));
                    return !1
                }
                if (!confirm($.lang("save_file_violation_2"))) {
                    alert($.lang("save_file_violation_3"));
                    return !1
                }
                tmp_array.hash = that.save_key_val;
                $.setStorage(that.kag.config.projectID + "_tyrano_data", tmp_array, that.kag.config.configSave)
            }
        }
        var tmpsf = $.getStorage(this.kag.config.projectID + "_sf", that.config.configSave);
        this.variable.sf = null == tmpsf ? {} : JSON.parse(tmpsf);
        void 0 !== that.variable.sf._system_config_bgm_volume && (that.config.defaultBgmVolume = String(that.variable.sf._system_config_bgm_volume));
        void 0 !== that.variable.sf._system_config_se_volume && (that.config.defaultSeVolume = String(that.variable.sf._system_config_se_volume));
        that.variable.sf._config_ch_speed && (that.config.chSpeed = that.variable.sf._config_ch_speed);
        void 0 !== that.variable.sf._system_config_auto_speed && (that.config.autoSpeed = that.variable.sf._system_config_auto_speed);
        that.variable.sf._system_config_auto_click && (that.config.autoClickStop = that.variable.sf._system_config_auto_click_stop);
        that.variable.sf._system_config_already_read_text_color && (that.config.alreadyReadTextColor = that.variable.sf._system_config_already_read_text_color);
        void 0 !== that.variable.sf._system_config_unread_text_skip && (that.config.unReadTextSkip = that.variable.sf._system_config_unread_text_skip);
        var auto_save_data = $.getStorage(this.kag.config.projectID + "_tyrano_auto_save", this.kag.config.configSave);
        this.variable.sf.system = {};
        this.variable.sf.system.autosave = !!auto_save_data;
        this.variable.tf.system = {};
        this.variable.tf.system.backlog = [];
        var button_menu_obj = $("<div class='button_menu' style='z-index:100000000'><img src='./tyrano/images/system/" + $.novel("file_button_menu") + "'  /></div>");
        if ("-1" != this.kag.config.configLeft && "-1" != this.kag.config.configTop) {
            button_menu_obj.css("left", parseInt(this.kag.config.configLeft));
            button_menu_obj.css("top", parseInt(this.kag.config.configTop))
        } else {
            button_menu_obj.css("left", this.config.scWidth - 70);
            button_menu_obj.css("top", this.config.scHeight - 70)
        }
        button_menu_obj.click((function () {
            that.menu.showMenu()
        }));
        if ("false" == this.kag.config.configVisible) {
            button_menu_obj.hide();
            this.kag.stat.visible_menu_button = !1
        } else this.kag.stat.visible_menu_button = !0;
        $("." + this.kag.define.BASE_DIV_NAME).append(button_menu_obj);
        if (this.kag.config.ScreenCentering && "false" == this.kag.config.ScreenCentering) {
            $(".tyrano_base").css("transform-origin", "0 0");
            $(".tyrano_base").css({margin: 0})
        } else {
            $(".tyrano_base").css("transform-origin", "0 0");
            $(".tyrano_base").css({margin: 0})
        }
        if ("pc" != $.userenv()) {
            $("#tyrano_base").css("position", "absolute");

            function noScroll(event) {
                event.preventDefault()
            }

            "true" != this.kag.config.vchat && document.addEventListener("touchmove", noScroll, {passive: !1})
        }
        this.tyrano.base.setBaseSize(this.config.scWidth, this.config.scHeight);
        that.tmp.angle = $.getAngle();
        that.tmp.largerWidth = $.getLargeScreenWidth();
        this.tyrano.base.fitBaseSize(that.config.scWidth, that.config.scHeight);
        var timerId = null;
        $(window).bind("load orientationchange resize", (function () {
            that.tmp.angle = $.getAngle();
            if (that.tmp.largerWidth != $.getLargeScreenWidth() && "" != that.stat.resizecall.storage) {
                if ("none" == that.kag.layer.layer_event.css("display") && 1 != that.kag.stat.is_strong_stop) {
                    timerId = setTimeout((function () {
                        $(window).trigger("resize")
                    }), 1e3);
                    return !1
                }
                if (1 == that.kag.stat.is_adding_text || 1 == that.kag.stat.is_wait) {
                    timerId = setTimeout((function () {
                        $(window).trigger("resize")
                    }), 1e3);
                    return !1
                }
                that.kag.getStack("call");
                var _auto_next = "false";
                1 == that.kag.stat.is_strong_stop && (_auto_next = "stop");
                1 == $.getLargeScreenWidth() ? that.variable.tf._larger_width = 1 : that.variable.tf._larger_width = 0;
                that.kag.ftag.startTag("call", {
                    storage: that.stat.resizecall.storage,
                    target: that.stat.resizecall.target,
                    auto_next: _auto_next,
                    textclear: "false"
                })
            }
            that.tmp.largerWidth = $.getLargeScreenWidth();
            if (90 === Math.abs(window.orientation)) {
                window.scrollTo(0, 1);
                that.tyrano.base.fitBaseSize(that.config.scWidth, that.config.scHeight)
            } else {
                0 === window.pageYOffset && window.scrollTo(0, 1);
                that.tyrano.base.fitBaseSize(that.config.scWidth, that.config.scHeight)
            }
        }));
        this.layer.addLayer("base");
        this.layer.addLayer("message0");
        var j_message = $("<div class='message_outer'></div>");
        j_message.css("background-color", $.convertColor(this.config.frameColor)).css("opacity", $.convertOpacity(this.config.frameOpacity)).css("left", eval(this.config.ml)).css("top", eval(this.config.mt)).css("width", eval(this.config.mw)).css("height", eval(this.config.mh)).css("z-index", 100);
        j_message.l_visible;
        this.layer.appendObj("message0", "fore", j_message);
        var j_message_inner = $("<div class='message_inner'></div>");
        "false" == this.config.WordBreak && j_message_inner.css("word-break", "break-all");
        $.insertRule(".message_inner p{ padding-top:" + this.kag.config.defaultLineSpacing + "px;}");
        this.layer.appendObj("message0", "fore", j_message_inner);
        for (var num_message_layer = parseInt(this.config.numMessageLayers), i = 1; i < num_message_layer; i++) {
            var message_layer_name = "message" + i;
            this.layer.addLayer(message_layer_name);
            this.layer.getLayer(message_layer_name).attr("l_visible", "false");
            this.layer.getLayer(message_layer_name).hide();
            var j_message1 = j_message.clone(!1);
            this.layer.appendObj(message_layer_name, "fore", j_message1);
            var j_message_inner1 = j_message_inner.clone(!1);
            this.layer.appendObj(message_layer_name, "fore", j_message_inner1)
        }
        this.layer.refMessageLayer();
        for (var fore_layer_num = parseInt(this.config.numCharacterLayers), i = 0; i < fore_layer_num; i++) {
            this.layer.addLayer("" + i);
            this.layer.getLayer("" + i, "fore").css("display", "none").css("z-index", 10 + i);
            this.layer.getLayer("" + i, "back").css("display", "none").css("z-index", 10 + i)
        }
        this.stat.default_font.color = $.convertColor(this.kag.config.defaultChColor);
        this.stat.default_font.bold = $.convertBold(this.kag.config.defaultBold);
        this.stat.default_font.size = this.kag.config.defaultFontSize;
        this.stat.default_font.face = this.kag.config.userFace;
        this.stat.default_font.effect = this.kag.config.defaultChEffect;
        this.stat.default_font.effect_speed = this.kag.config.defaultChEffectSpeed;
        var smooth = this.kag.config.defaultAntialiased;
        "2" == smooth ? $(".tyrano_base").css("-webkit-font-smoothing", "antialiased") : "0" == smooth ? $(".tyrano_base").css("-webkit-font-smoothing", "none") : $(".tyrano_base").css("-webkit-font-smoothing", "subpixel-antialiased");
        "true" == this.kag.config.defaultShadow && (this.stat.default_font.shadow = $.convertColor(this.kag.config.defaultShadowColor));
        "true" == this.kag.config.defaultEdge && (this.stat.default_font.edge = $.convertColor(this.kag.config.defaultEdgeColor));
        this.stat.vertical = this.kag.config.vertical;
        this.kag.stat.font = $.extend(!0, $.cloneObject(this.kag.stat.font), this.stat.default_font);
        this.setTitle(this.config["System.title"]);
        this.setCursor(this.config.cursorDefault);
        $.isNeedClickAudio() || (this.tmp.ready_audio = !0);
        $("[tyrano='config']").each((function () {
            var key = $(this).attr("key"), val = $(this).val();
            that.kag.config[key] = "" + val
        }));
        if (this.kag.config.vchat && "true" == this.kag.config.vchat) {
            this.kag.config.ScreenCentering = "false";
            this.kag.config.ScreenRatio = "fix";
            this.kag.stat.vchat.is_active = !0;
            $("#vchat_base").css({"background-color": "#EEEEEE", overflow: "scroll"});
            $("#vchat_base").show();
            $("body").get(0).ontouchmove = "";
            this.stat.vertical = "false";
            this.kag.config.vertical = "false";
            this.stat.vertical = "false";
            this.kag.ftag.startTag("vchat_in", {});
            $("#vchat_base").on("click", (e => {
                $(".layer_event_click").trigger("click");
                e.preventDefault()
            }))
        }
        this.kag.config.vchatMenuVisible && "true" == this.kag.config.vchatMenuVisible && setTimeout((function () {
            !function () {
                var player_back_cnt = 0,
                    j_menu_button = $("<div id='player_menu_button' class='player_menu_area' style='display:none;opacity:0.6;border-radius:5px;padding:10px;margin:10px;cursor:pointer;position:absolute;left:0px;top:0px;background-color:white;font-size:2em'><span style='color:#6495ED'>Меню</span></div>"),
                    j_menu_area = $("<div style='display:none;position:absolute;left:10px;top:10px;font-size:2em'></div>"),
                    j_end_button = $("<div class='player_menu_area' id='player_end_button' style='opacity:0.6;border-radius:5px;padding:10px;margin:10px 10px 10px 10px;cursor:pointer;left:0px;top:0px;background-color:white;'><span style='color:#6495ED'>Перейти к меню</span></div>"),
                    j_auto_button = $("<div class='player_menu_area' id='player_auto_button' style='opacity:0.6;border-radius:5px;padding:10px;margin:10px 10px 10px 10px;cursor:pointer;left:0px;top:0px;background-color:white;'><span style='color:#6495ED'>Авто</span></div>"),
                    j_skip_button = $("<div class='player_menu_area' id='player_skip_button' style='opacity:0.6;border-radius:5px;padding:10px;margin:10px 10px 10px 10px;cursor:pointer;left:0px;top:0px;background-color:white;'><span style='color:#6495ED'>Пропустить</span></div>");
                j_menu_area.append(j_end_button);
                j_menu_area.append(j_auto_button);
                j_menu_area.append(j_skip_button);

                function hide_menu() {
                    j_menu_area.hide();
                    j_menu_button.hide();
                    player_back_cnt = 0
                }

                j_menu_button.click((function (e) {
                    j_menu_button.hide();
                    j_menu_area.show()
                }));
                j_end_button.click((function (e) {
                    hide_menu();
                    location.reload();
                    e.stopPropagation()
                }));
                j_auto_button.click((function (e) {
                    hide_menu();
                    TYRANO.kag.ftag.startTag("autostart", {});
                    e.stopPropagation()
                }));
                j_skip_button.click((function (e) {
                    hide_menu();
                    TYRANO.kag.ftag.startTag("skipstart", {});
                    e.stopPropagation()
                }));
                $("body").append(j_menu_button);
                $("body").append(j_menu_area);
                $("#tyrano_base").on("click.player", (function () {
                    player_back_cnt > 8 && hide_menu();
                    player_back_cnt = 0
                }));
                setInterval((function () {
                    9 == player_back_cnt && j_menu_button.show();
                    player_back_cnt++
                }), 1e3)
            }();
            $("#tyrano_base").on("click.player", (function () {
                player_back_cnt = 0
            }))
        }), 1e3);
        var first_scenario_file = "first.ks";
        $("#first_scenario_file").length > 0 && (first_scenario_file = $("#first_scenario_file").val());
        var array_scripts = [];
        "true" == this.kag.config.use3D && (array_scripts = ["./tyrano/libs/three/three.js", "./tyrano/libs/three/loader/GLTFLoader.js", "./tyrano/libs/three/loader/OBJLoader.js", "./tyrano/libs/three/loader/MTLLoader.js", "./tyrano/libs/three/controls/OrbitControls.js", "./tyrano/libs/three/classes/ThreeModel.js"]);
        $.getMultiScripts(array_scripts, (() => {
            this.loadScenario(first_scenario_file, (function (array_tag) {
                that.ftag.buildTag(array_tag)
            }))
        }));
        this.kag.is_studio && that.studio.complete(this)
    },
    pushBackLog: function (str, type) {
        if (0 != this.stat.log_write) {
            type = type || "add";
            var max_back_log = parseInt(this.kag.config.maxBackLogNum);
            if (!(max_back_log < 1)) {
                if (1 == this.kag.stat.log_clear) {
                    type = "add";
                    this.kag.stat.log_clear = !1
                }
                if ("join" == type) {
                    var index = this.variable.tf.system.backlog.length - 1;
                    if (index >= 0) {
                        var tmp = this.variable.tf.system.backlog[index];
                        this.variable.tf.system.backlog[this.variable.tf.system.backlog.length - 1] = tmp + str
                    } else this.variable.tf.system.backlog.push(str)
                } else this.variable.tf.system.backlog.push(str);
                this.stat.current_save_str = this.variable.tf.system.backlog[this.variable.tf.system.backlog.length - 1];
                max_back_log < this.variable.tf.system.backlog.length && this.variable.tf.system.backlog.shift()
            }
        }
    },
    setTitle: function (title) {
        this.stat.title = title;
        document.title = title
    },
    pushAnimStack: function () {
        this.kag.tmp.num_anim++
    },
    backTitle: function () {
        "appJsInterface" in window ? appJsInterface.finishGame() : "function" == typeof TyranoPlayer ? webkit.messageHandlers.backHandler.postMessage("endgame") : $.confirm($.lang("go_title"), (function () {
            location.href = "./index.html"
        }), (function () {
            return !1
        }))
    },
    cutTimeWithSkip: function (time) {
        return 1 == this.kag.stat.is_skip && "true" == this.kag.config.skipEffectIgnore ? 70 : time
    },
    readyAudio: function () {
        this.tmp.ready_audio = !0;
        if ($.isNeedClickAudio()) {
            new Howl({src: "./tyrano/audio/silent.mp3", volume: .1}).play()
        }
    },
    setCursor: function (cursor) {
        this.stat.current_cursor = cursor;
        "default" === cursor ? $("body").css("cursor", "auto") : $("body").css("cursor", "url(./data/image/" + cursor + "),default")
    },
    updateFuki: function (chara_name, opt = {}) {
        $(".tyrano_base").find("#tmp_style").get(0) || $(".tyrano_base").prepend("<style id='tmp_style' type='text/css'></style>");
        this.kag.getMessageInnerLayer();
        var msg_outer_layer = this.kag.getMessageOuterLayer();
        if ("others" == chara_name) {
            $("#tmp_style").html("");
            return !1
        }
        var fuki_chara = this.kag.stat.charas[chara_name].fuki;
        fuki_chara.sippo_width = parseInt(fuki_chara.sippo_width);
        fuki_chara.sippo_height = parseInt(fuki_chara.sippo_height);
        this.kag.stat.fuki.def_style;
        let border_size = parseInt(msg_outer_layer.css("border-width")), sippo_left = fuki_chara.sippo_left,
            style_text = "", style_text_after = "";
        if ("top" == fuki_chara.sippo || "bottom" == fuki_chara.sippo) {
            sippo_left = opt.sippo_left + parseInt(fuki_chara.sippo_left);
            style_text = "left:" + sippo_left + "px;"
        } else {
            sippo_left = opt.sippo_left + parseInt(fuki_chara.sippo_top);
            style_text = "top:" + sippo_left + "px;"
        }
        style_text_key = "";
        if ("top" == fuki_chara.sippo) {
            style_text += "bottom:100%;";
            style_text_key = "bottom"
        } else if ("bottom" == fuki_chara.sippo) {
            style_text += "top:100%;";
            style_text_key = "top"
        } else if ("left" == fuki_chara.sippo) {
            style_text += "right:100%;";
            style_text_key = "right"
        } else if ("right" == fuki_chara.sippo) {
            style_text += "left:100%;";
            style_text_key = "left"
        }
        style_text_after = "border-bottom-color:";
        let str_css = `\n\n\t\t.fuki_box:after,.fuki_box:before{\n\t\t    border: solid transparent;\n\t\t    content:'';\n\t\t    height:0;\n\t\t    width:0;\n\t\t    pointer-events:none;\n\t\t    position:absolute;\n\t\t    ${style_text}\n\t\t}\n\t\t`,
            str_css2 = "";
        str_css2 = "top" == fuki_chara.sippo || "bottom" == fuki_chara.sippo ? `\n\n\t\t\t.fuki_box:after{\n\n\t\t\t    border-color: ${msg_outer_layer.css("border-color").replace(")", ",0)")};\n\t\t\t    border-top-width:${fuki_chara.sippo_height}px;\n\t\t\t    border-bottom-width:${fuki_chara.sippo_height}px;\n\t\t\t    border-left-width:${fuki_chara.sippo_width}px;\n\t\t\t    border-right-width:${fuki_chara.sippo_width}px;\n\t\t\t    margin-left: ${-1 * fuki_chara.sippo_width}px;\n\t\t\t    border-${style_text_key}-color:${msg_outer_layer.css("border-color")};\n\n\t\t\t}\n\n\t\t\t.fuki_box:before{\n\n\t\t\t    border-color: ${msg_outer_layer.css("border-color").replace(")", ",0)")};\n\t\t\t    border-top-width:${fuki_chara.sippo_height + border_size}px;\n\t\t\t    border-bottom-width:${fuki_chara.sippo_height + border_size}px;\n\t\t\t    border-left-width:${fuki_chara.sippo_width + border_size}px;\n\t\t\t    border-right-width:${fuki_chara.sippo_width + border_size}px;\n\t\t\t    margin-left: ${-1 * (fuki_chara.sippo_width + border_size)}px;\n\t\t\t    margin-${style_text_key}: ${border_size}px;\n\t\t\t    border-${style_text_key}-color:${msg_outer_layer.css("border-color")};\n\n\t\t\t}` : `\n\n\t\t\t.fuki_box:after{\n\n\t\t\t    border-color: ${msg_outer_layer.css("border-color").replace(")", ",0)")};\n\t\t\t    border-top-width:${fuki_chara.sippo_width}px;\n\t\t\t    border-bottom-width:${fuki_chara.sippo_width}px;\n\t\t\t    border-left-width:${fuki_chara.sippo_height - 2}px;\n\t\t\t    border-right-width:${fuki_chara.sippo_height - 2}px;\n\t\t\t    margin-top: ${-1 * (fuki_chara.sippo_width + 2)}px;\n\t\t\t    border-${style_text_key}-color:${msg_outer_layer.css("background-color")};\n\n\t\t\t}\n\n\t\t\t.fuki_box:before{\n\n\t\t\t    border-color: ${msg_outer_layer.css("border-color").replace(")", ",0)")};\n\t\t\t    border-top-width:${fuki_chara.sippo_width + border_size}px;\n\t\t\t    border-bottom-width:${fuki_chara.sippo_width + border_size}px;\n\t\t\t    border-left-width:${fuki_chara.sippo_height + border_size - 2}px;\n\t\t\t    border-right-width:${fuki_chara.sippo_height + border_size - 2}px;\n\t\t\t    margin-top: ${-1 * (fuki_chara.sippo_width + border_size + 2)}px;\n\t\t\t    margin-${style_text_key}: ${border_size}px;\n\t\t\t    border-${style_text_key}-color:${msg_outer_layer.css("border-color")};\n\n\t\t\t}`;
        $("#tmp_style").html(str_css + "\n" + str_css2)

        let bgImagePath = fuki_chara.bgImage;
        if (bgImagePath) {
            $(".fuki_box").css({
                background: `url(${bgImagePath})`,
                backgroundSize: "cover",
                backgroundPosition: "center",
                backgroundRepeat: "no-repeat"
            });
        }
    },
    popAnimStack: function () {
        this.kag.tmp.num_anim > 0 && this.kag.tmp.num_anim--;
        if (this.kag.tmp.num_anim <= 0 && 1 == this.kag.stat.is_wait_anim) {
            this.kag.stat.is_wait_anim = !1;
            this.kag.layer.showEventLayer();
            this.kag.ftag.nextOrder()
        }
    },
    loadScenario: function (file_name, call_back) {
        var that = this;
        this.stat.is_strong_stop = !0;
        this.stat.current_scenario = file_name;
        var file_url = "";
        file_url = $.isHTTP(file_name) ? file_name : "./data/scenario/" + file_name;
        if (that.cache_scenario[file_url]) {
            if (call_back) {
                var result_obj = that.cache_scenario[file_url], tag_obj = result_obj.array_s,
                    map_label = result_obj.map_label;
                that.stat.map_label = map_label;
                that.stat.is_strong_stop = !1;
                call_back(tag_obj)
            }
        } else $.loadText(file_url, (function (text_str) {
            var result_obj = that.parser.parseScenario(text_str);
            that.cache_scenario[file_url] = result_obj;
            var tag_obj = result_obj.array_s, map_label = result_obj.map_label;
            that.stat.map_label = map_label;
            that.stat.is_strong_stop = !1;
            call_back && call_back(tag_obj)
        }))
    },
    getMessageInnerLayer: function () {
        if (this.stat.vchat.is_active) {
            return $("#vchat_base").find(".current_vchat")
        }
        return this.layer.getLayer(this.stat.current_layer, this.stat.current_page).find(".message_inner")
    },
    getMessageOuterLayer: function () {
        return this.layer.getLayer(this.stat.current_layer, this.stat.current_page).find(".message_outer")
    },
    getMessageCurrentSpan: function () {
        return this.layer.getLayer(this.stat.current_layer, this.stat.current_page).find(".message_inner").find("p").find(".current_span")
    },
    setMessageCurrentSpan: function () {
        var jtext = this.getMessageInnerLayer();
        0 == jtext.find("p").length && ("true" == this.stat.vertical ? jtext.append($("<p class='vertical_text' ></p>")) : jtext.append($("<p class='' style='position: relative; z-index: 10000'></p>")));
        if (jtext.find("p").find(".current_span").length > 0) {
            jtext.find("p").find(".current_span").removeClass("current_span");
            this.stat.set_text_span = !1
        }
        var j_span = $("<span class='current_span' style='position: relative; z-index: 10000'></span>");
        jtext.find("p").append(j_span);
        return j_span
    },
    checkMessage: function (jtext) {
        if (1 == this.stat.set_text_span) {
            jtext.find("p").find(".current_span").removeClass("current_span");
            this.stat.set_text_span = !1
        }
        0 == jtext.find(".current_span").length && jtext.find("p").append($("<span class='current_span' style='position: relative; z-index: 10000'></span>"))
    },
    appendMessage: function (jtext, str) {
        jtext.find("p").find(".current_span").html(str)
    },
    preload: function (src, callbk) {
        var that = this, ext = $.getExt(src);
        if ("mp3" == ext || "ogg" == ext || "m4a" == ext) {
            0 !== src.indexOf("http://") && 0 !== src.indexOf("https://") && 0 !== src.indexOf("./") && (src = "./" + src);
            let obj = new Howl({
                src: src, preload: !0, onload: () => {
                    callbk && callbk()
                }, onloaderror: () => {
                    callbk && callbk(obj)
                }
            })
        } else "mp4" == ext || "ogv" == ext || "webm" == ext ? $("<video />").attr("src", src).on("loadeddata", (function (e) {
            callbk && callbk()
        })).on("error", (function (e) {
            that.kag.error("Видеофайл " + src + " не найден. Указано ли местоположение правильно? (например, data/video/file.mp4).");
            callbk && callbk()
        })) : $("<img />").attr("src", src).on("load", (function (e) {
            callbk && callbk(this)
        })).on("error", (function (e) {
            that.kag.error("Изображение " + src + " не найдено. Указано ли местоположение правильно? (например, data/fgimage/file.png");
            callbk && callbk()
        }))
    },
    preloadAll: function (storage, callbk) {
        if ("object" == typeof storage && storage.length >= 0) {
            if (0 == storage.length) {
                callbk();
                return
            }
            for (var sum = 0, i = 0; i < storage.length; i++) this.kag.preload(storage[i], (function () {
                sum++;
                storage.length == sum && callbk()
            }))
        } else this.kag.preload(pm.storage, (function () {
            callbk()
        }))
    },
    setStyles: function (j_obj, array_style) {
        for (key in array_style) void 0 !== array_style[key] && ("" === array_style[key] || j_obj.css(key, array_style[key]));
        return j_obj
    },
    html: function (html_file_name, data, callback) {
        var that = this;
        data = data || {};
        if (this.cache_html[html_file_name]) {
            if (callback) {
                var html = $.templates(this.cache_html[html_file_name]).render(data);
                callback($(html))
            }
        } else {
            if (!this.kag.stat.sysview) {
                this.kag.stat.sysview = {};
                this.kag.stat.sysview = {
                    save: "./tyrano/html/save.html",
                    load: "./tyrano/html/load.html",
                    backlog: "./tyrano/html/backlog.html",
                    menu: "./tyrano/html/menu.html"
                }
            }
            var path_html = this.kag.stat.sysview[html_file_name];
            $.loadText(path_html, (function (text_str) {
                var html = $.templates(text_str).render(data);
                that.cache_html[html_file_name] = text_str;
                callback && callback($(html))
            }))
        }
    },
    error: function (str) {
        if ("true" == this.kag.config["debugMenu.visible"]) {
            var err = "Error:" + this.kag.stat.current_scenario + ":" + (parseInt(this.kag.stat.current_line) + 1) + "行目:" + str;
            $.error_message(err)
        }
    },
    warning: function (str) {
        "true" == this.kag.config["debugMenu.visible"] && alert(str)
    },
    log: function (obj) {
        "true" == this.kag.config["debugMenu.visible"] && console.log(obj)
    },
    test: function () {
    }
};
tyrano.plugin.kag.tag = {};
