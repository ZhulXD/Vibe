var TyranoPlayer = (function() {
    var COUNTRY = 'aaaaa';

    var TyranoPlayer = function(storage_url) {
        if (!(this instanceof TyranoPlayer)) {
            return new TyranoPlayer(storage_url);
        }
        this.storage_url = storage_url;
    }
    var p = TyranoPlayer.prototype;

    p.pauseAllAudio = function() {
        console.log("pause All Audio!");
        console.log(TYRANO.kag.tmp.map_bgm);

        var bgm_objs = TYRANO.kag.tmp.map_bgm;
        var se_objs = TYRANO.kag.tmp.map_se;

        for (var key in bgm_objs) {
            bgm_objs[key].pause();
        }

        for (var key in se_objs) {
            se_objs[key].pause();
        }
    }
    p.resumeAllAudio = function() {
        console.log("resume All Audio!");
        var bgm_objs = TYRANO.kag.tmp.map_bgm;
        var se_objs = TYRANO.kag.tmp.map_se;

        if(TYRANO.kag.stat.current_bgm==""){
            return;
        }

        if (bgm_objs[TYRANO.kag.stat.current_bgm]) {
            bgm_objs[TYRANO.kag.stat.current_bgm].play();
        } else if (bgm_objs[0]) {
            bgm_objs[0].play();
        }
    }

    return TyranoPlayer;
})();

var _tyrano_player = new TyranoPlayer("");

tyrano.base.fitBaseSize = function(width, height) {
    console.log("fitBaseSize called with width: " + width + ", height: " + height);
    $(".tyrano_base").css("position", "absolute");

    var that = this;
    var view_width = window.innerWidth || document.documentElement.clientWidth;
    var view_height = window.innerHeight || document.documentElement.clientHeight;

    console.log("View width: " + view_width + ", View height: " + view_height);

    var width_f = view_width / width;
    var height_f = view_height / height;

    var scale_f = 0;
    var screen_ratio = this.tyrano.kag.config.ScreenRatio;

    if (screen_ratio == "fix") {
        scale_f = Math.min(width_f, height_f);
        this.tyrano.kag.tmp.base_scale = scale_f;

        $(".tyrano_base").css("transform-origin", "0 0");
        $(".tyrano_base").css({ margin: 0 });

        var offset_x = (view_width - that.tyrano.kag.config.scWidth * scale_f) / 2;
        var offset_y = (view_height - that.tyrano.kag.config.scHeight * scale_f) / 2;

        console.log("Scale: " + scale_f + ", Offset X: " + offset_x + ", Offset Y: " + offset_y);

        $(".tyrano_base").css({
            left: offset_x + "px",
            top: offset_y + "px"
        });

        $(".tyrano_base").css("transform", "scale(" + scale_f + ")");
    } else if (screen_ratio == "fit") {
        $(".tyrano_base").css("transform", "scaleX(" + width_f + ") scaleY(" + height_f + ")");
    }
};

// Xử lý xoay màn hình hoặc thay đổi kích thước
window.addEventListener('resize', function() {
    console.log("Resize event triggered");
    if (tyrano.base && tyrano.kag && tyrano.kag.config) {
        tyrano.base.fitBaseSize(tyrano.kag.config.scWidth || 1280, tyrano.kag.config.scHeight || 720);
    }
});

$.setStorage = function(key, val, type) {
    console.log("setStorage called with key: " + key + ", value: " + val);
    if ("appJsInterface" in window) {
        appJsInterface.setStorage(key, escape(JSON.stringify(val)));
    } else {
        window.tyrano_save[key] = encodeURIComponent(JSON.stringify(val));
        location.href = 'tyranoplayer-save://?key=' + key + '&data=' + encodeURIComponent(JSON.stringify(val));
    }
}

$.getStorage = function(key, type) {
    console.log("getStorage called with key: " + key);
    if ("appJsInterface" in window) {
        try {
            var json_str = appJsInterface.getStorage(key);
            console.log("getStorage returned: " + json_str);
            if (json_str == "") {
                return null;
            }
            return unescape(json_str);
        } catch(e) {
            console.error("getStorage error: " + e);
        }
    } else {
        if (!window.tyrano_save[key] || window.tyrano_save[key] == "") {
            return null;
        } else {
            return decodeURIComponent(window.tyrano_save[key]);
        }
    }
}

$.openWebFromApp = function(url){
    console.log("openWebFromApp called with url: " + url);
    if ("appJsInterface" in window) {
        appJsInterface.openUrl(url);
    } else {
        location.href = 'tyranoplayer-web://?url=' + url;
    }
}