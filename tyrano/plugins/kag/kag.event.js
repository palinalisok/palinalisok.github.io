tyrano.plugin.kag.event = {
    tyrano: null, init: function () {
    }, addEventElement: function (obj) {
        var j_obj = obj.j_target;
        j_obj.addClass("event-setting-element");
        j_obj.attr("data-event-target", obj.target);
        j_obj.attr("data-event-storage", obj.storage);
        j_obj.attr("data-event-tag", obj.tag);
        j_obj.attr("data-event-pm", JSON.stringify(obj.pm))
    }
};
