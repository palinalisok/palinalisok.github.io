tyrano.plugin.kag.parser = {
    tyrano: null, kag: null, flag_script: !1, deep_if: 0, init: function () {
    }, loadConfig: function (call_back) {
        var that = this;
        $.loadText("./data/system/Config.tjs", (function (text_str) {
            var map_config = that.compileConfig(text_str);
            call_back && call_back(map_config)
        }))
    }, compileConfig: function (text_str) {
        for (var error_str = "", map_config = {}, array_config = text_str.split("\n"), i = 0; i < array_config.length; i++) try {
            var line_str = $.trim(array_config[i]);
            if ("" != line_str && ";" === line_str.substr(0, 1)) {
                var tmp_comment = line_str.split("//");
                tmp_comment.length > 1 && (line_str = $.trim(tmp_comment[0]));
                line_str = $.replaceAll(line_str, ";", "");
                var tmp = (line_str = $.replaceAll(line_str, '"', "")).split("="), key = $.trim(tmp[0]),
                    val = $.trim(tmp[1]);
                map_config[key] = val
            }
        } catch (e) {
            error_str += "Ошибка: Config.tjs имеет ошибку / строка:" + i
        }
        "" != error_str && alert(error_str);
        return map_config
    }, parseScenario: function (text_str) {
        for (var array_s = [], map_label = {}, array_row = text_str.split("\n"), flag_comment = !1, i = 0; i < array_row.length; i++) {
            var line_str = $.trim(array_row[i]), first_char = line_str.substr(0, 1);
            -1 != line_str.indexOf("endscript") && (this.flag_script = !1);
            if (!0 === flag_comment && "*/" === line_str) flag_comment = !1; else if ("/*" === line_str) flag_comment = !0; else if (1 == flag_comment || ";" === first_char) ; else if ("#" === first_char) {
                var tmp_line = $.trim(line_str.replace("#", "")), chara_name = "", chara_face = "";
                if (tmp_line.split(":").length > 1) {
                    var array_line = tmp_line.split(":");
                    chara_name = array_line[0];
                    chara_face = array_line[1]
                } else chara_name = tmp_line;
                var text_obj = {line: i, name: "chara_ptext", pm: {name: chara_name, face: chara_face}, val: text};
                array_s.push(text_obj)
            } else if ("*" === first_char) {
                var label_key, label_tmp = line_str.substr(1, line_str.length).split("|"), label_val = "";
                label_key = $.trim(label_tmp[0]);
                label_tmp.length > 1 && (label_val = $.trim(label_tmp[1]));
                var label_obj = {
                    name: "label",
                    pm: {line: i, index: array_s.length, label_name: label_key, val: label_val},
                    val: label_val
                };
                array_s.push(label_obj);
                map_label[label_obj.pm.label_name] ? this.kag.warning("Warning line:" + i + " " + $.lang("label") + "'" + label_obj.pm.label_name + "'" + $.lang("label_double")) : map_label[label_obj.pm.label_name] = label_obj.pm
            } else if ("@" === first_char) {
                var tag_str = line_str.substr(1, line_str.length), tmpobj = this.makeTag(tag_str, i);
                array_s.push(tmpobj)
            } else {
                "_" === first_char && (line_str = line_str.substring(1, line_str.length));
                for (var array_char = line_str.split(""), text = "", flag_tag = (tag_str = "", !1), num_kakko = 0, j = 0; j < array_char.length; j++) {
                    var c = array_char[j];
                    if (!0 === flag_tag) if ("]" === c && 0 == this.flag_script) if (0 == --num_kakko) {
                        flag_tag = !1;
                        array_s.push(this.makeTag(tag_str, i));
                        tag_str = ""
                    } else tag_str += c; else if ("[" === c && 0 == this.flag_script) {
                        num_kakko++;
                        tag_str += c
                    } else tag_str += c; else if (!1 === flag_tag && "[" === c && 0 == this.flag_script) {
                        num_kakko++;
                        if ("" != text) {
                            text_obj = {line: i, name: "text", pm: {val: text}, val: text};
                            array_s.push(text_obj);
                            text = ""
                        }
                        flag_tag = !0
                    } else text += c
                }
                if ("" != text) {
                    text_obj = {line: i, name: "text", pm: {val: text}, val: text};
                    array_s.push(text_obj)
                }
            }
        }
        var result_obj = {array_s: array_s, map_label: map_label};
        if (0 != this.deep_if) {
            alert("Количество [if] и [endif] не совпадает. Не хотите ли вы пересмотреть свой сценарий?");
            this.deep_if = 0
        }
        return result_obj
    }, makeTag: function (str, line) {
        for (var obj = {
            line: line,
            name: "",
            pm: {},
            val: ""
        }, array_c = str.split(""), flag_quot_c = "", tmp_str = "", cnt_quot_c = 0, j = 0; j < array_c.length; j++) {
            var c = array_c[j];
            if ("" != flag_quot_c || '"' !== c && "'" !== c) if ("" != flag_quot_c) if (c === flag_quot_c) {
                flag_quot_c = "";
                0 == cnt_quot_c && (tmp_str += "undefined");
                cnt_quot_c = 0
            } else {
                "=" == c && (c = "#");
                " " == c && (c = "");
                tmp_str += c;
                cnt_quot_c++
            } else tmp_str += c; else {
                flag_quot_c = c;
                cnt_quot_c = 0
            }
        }
        var array = (str = tmp_str).split(" ");
        obj.name = $.trim(array[0]);
        for (var k = 1; k < array.length; k++) if ("" == array[k]) {
            array.splice(k, 1);
            k--
        } else if ("=" === array[k]) {
            if (array[k - 1] && array[k + 1]) {
                array[k - 1] = array[k - 1] + "=" + array[k + 1];
                array.splice(k, 2);
                k--
            }
        } else if ("=" === array[k].substr(0, 1)) {
            if (array[k - 1] && array[k]) {
                array[k - 1] = array[k - 1] + array[k];
                array.splice(k, 1)
            }
        } else if ("=" === array[k].substr(array[k].length - 1, array[k].length) && array[k + 1] && array[k]) {
            array[k] = array[k] + array[k + 1];
            array.splice(k + 1, 1)
        }
        for (var i = 1; i < array.length; i++) {
            var tmp = $.trim(array[i]).split("="), pm_key = $.trim(tmp[0]), pm_val = $.trim(tmp[1]);
            "*" == pm_key && (obj.pm["*"] = "");
            "" != pm_val && (obj.pm[pm_key] = $.replaceAll(pm_val, "#", "="));
            "undefined" == pm_val && (obj.pm[pm_key] = "")
        }
        "iscript" == obj.name && (this.flag_script = !0);
        "endscript" == obj.name && (this.flag_script = !1);
        switch (obj.name) {
            case"if":
                this.deep_if++;
            case"elsif":
            case"else":
                obj.pm.deep_if = this.deep_if;
                break;
            case"endif":
                obj.pm.deep_if = this.deep_if;
                this.deep_if--
        }
        return obj
    }, test: function () {
    }
};
