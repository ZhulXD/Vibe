.class public final synthetic LC1/J;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Landroid/view/KeyEvent$Callback;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p6, p0, LC1/J;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LC1/J;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, LC1/J;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, LC1/J;->e:Landroid/view/KeyEvent$Callback;

    .line 8
    .line 9
    iput-object p4, p0, LC1/J;->f:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p5, p0, LC1/J;->g:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 33

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, LC1/J;->b:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const-string v0, "v1"

    .line 9
    .line 10
    iget-object v4, v1, LC1/J;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v4, Lcom/minhub/gamehub/game/GameActivity;

    .line 13
    .line 14
    iget-object v5, v1, LC1/J;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v5, LQ1/d;

    .line 17
    .line 18
    iget-object v6, v1, LC1/J;->e:Landroid/view/KeyEvent$Callback;

    .line 19
    .line 20
    check-cast v6, Landroid/webkit/WebView;

    .line 21
    .line 22
    iget-object v7, v1, LC1/J;->f:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v7, Lcom/minhub/gamehub/data/GameEngine;

    .line 25
    .line 26
    iget-object v8, v1, LC1/J;->g:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v8, Lcom/minhub/gamehub/data/Game;

    .line 29
    .line 30
    sget v9, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 31
    .line 32
    invoke-virtual {v4, v5}, Lcom/minhub/gamehub/game/GameActivity;->y(LQ1/d;)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-nez v5, :cond_0

    .line 37
    .line 38
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 39
    .line 40
    goto/16 :goto_17

    .line 41
    .line 42
    :cond_0
    iget-object v5, v4, Lcom/minhub/gamehub/game/GameActivity;->m:Ly1/t1;

    .line 43
    .line 44
    const-string v9, "wv"

    .line 45
    .line 46
    const-string v10, "<this>"

    .line 47
    .line 48
    if-eqz v5, :cond_23

    .line 49
    .line 50
    const-string v12, "MinHub-PatchOTA"

    .line 51
    .line 52
    const-string v13, "v2"

    .line 53
    .line 54
    const-string v14, "ctx"

    .line 55
    .line 56
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v15, v5, Ly1/t1;->n:LQ1/d;

    .line 60
    .line 61
    iget-boolean v15, v15, LQ1/d;->c:Z

    .line 62
    .line 63
    if-nez v15, :cond_1

    .line 64
    .line 65
    goto/16 :goto_11

    .line 66
    .line 67
    :cond_1
    :try_start_0
    iget-object v15, v5, Ly1/t1;->a:Lcom/minhub/gamehub/game/GameActivity;

    .line 68
    .line 69
    invoke-static {v15}, LG1/m;->b(Landroid/content/Context;)I

    .line 70
    .line 71
    .line 72
    move-result v15

    .line 73
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    if-lez v15, :cond_2

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    const/16 v16, 0x0

    .line 81
    .line 82
    :goto_0
    move-object/from16 v15, v16

    .line 83
    .line 84
    :goto_1
    const/16 v16, 0x1

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :catch_0
    const/4 v15, 0x0

    .line 88
    goto :goto_1

    .line 89
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v3, "(function() {\n  try {\n    if (window.__minhubRendererPreferencePatched) return;\n    window.__minhubRendererPreferencePatched = true;\n    if (typeof HTMLCanvasElement === \'undefined\' ||\n        !HTMLCanvasElement.prototype ||\n        typeof HTMLCanvasElement.prototype.getContext !== \'function\') {\n      return;\n    }\n    var originalGetContext = HTMLCanvasElement.prototype.getContext;\n    HTMLCanvasElement.prototype.getContext = function(type) {\n      // preserveDrawingBuffer:true forces Chrome to use a copy-based compositing\n      // path instead of the mailbox texture-sharing path. On Android emulators\n      // and some devices the mailbox path fails with\n      // \"glCreateAndConsumeTextureCHROMIUM: invalid mailbox name\", causing the\n      // WebGL canvas to appear blank every frame.\n      if (type === \'webgl\' || type === \'webgl2\' || type === \'experimental-webgl\') {\n        var opts = Object.assign({}, arguments[1] || {}, { preserveDrawingBuffer: true });\n        return originalGetContext.call(this, type, opts);\n      }\n      // willReadFrequently:true tells Chrome to keep the 2D canvas backing store\n      // in CPU memory. MV/MZ call getImageData/getPixel frequently (collision,\n      // region IDs, hue rotation) \u2014 without this hint each readback forces a slow\n      // GPU\u2192CPU copy and Chrome logs \"Canvas2D: multiple readback operations\"\n      // warnings every frame.\n      if (type === \'2d\') {\n        var c2dOpts = arguments[1];\n        if (!c2dOpts || !(\'willReadFrequently\' in c2dOpts)) {\n          return originalGetContext.call(this, type,\n            Object.assign({}, c2dOpts || {}, { willReadFrequently: true }));\n        }\n      }\n      return originalGetContext.apply(this, arguments);\n    };\n  } catch (e) {}\n})();\n\n"

    .line 92
    .line 93
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    sget-object v3, Lcom/minhub/gamehub/data/GameEngine;->Companion:Lcom/minhub/gamehub/data/GameEngine$Companion;

    .line 97
    .line 98
    iget-object v11, v5, Ly1/t1;->b:Lcom/minhub/gamehub/data/Game;

    .line 99
    .line 100
    invoke-virtual {v11}, Lcom/minhub/gamehub/data/Game;->getEngine()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v11

    .line 104
    invoke-virtual {v3, v11}, Lcom/minhub/gamehub/data/GameEngine$Companion;->fromString(Ljava/lang/String;)Lcom/minhub/gamehub/data/GameEngine;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    iget-object v11, v5, Ly1/t1;->c:LG1/s;

    .line 109
    .line 110
    move-object/from16 v17, v8

    .line 111
    .line 112
    iget-object v8, v5, Ly1/t1;->d:Ljava/lang/String;

    .line 113
    .line 114
    iget v1, v5, Ly1/t1;->e:I

    .line 115
    .line 116
    move-object/from16 v18, v4

    .line 117
    .line 118
    const-string v4, "engine"

    .line 119
    .line 120
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    move-object/from16 v19, v3

    .line 124
    .line 125
    const-string v3, "snapshot"

    .line 126
    .line 127
    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    move-object/from16 v20, v7

    .line 131
    .line 132
    const-string v7, "fontFallback"

    .line 133
    .line 134
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    move-object/from16 v21, v9

    .line 138
    .line 139
    new-instance v9, Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .line 143
    .line 144
    move-object/from16 v22, v0

    .line 145
    .line 146
    sget-object v0, LG1/a;->b:LG1/a;

    .line 147
    .line 148
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    new-instance v7, Ljava/util/ArrayList;

    .line 158
    .line 159
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-static {v8}, LG1/a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    move-object/from16 v23, v15

    .line 170
    .line 171
    const-string v15, "(function() {\n  try {\n    if (!window.MinHub || !window.MinHub.isTranslationEnabled()) return;\n    var __mhSrc = window.MinHub.getTransSource();\n    var __mhTgt = window.MinHub.getTransTarget();\n    if (!__mhTgt) return;\n    var __mhSlParam = (!__mhSrc || __mhSrc === __mhTgt) ? \'auto\' : __mhSrc;\n\n    try { window.MinHub.log(\'[Trans] src=\' + __mhSrc + \' tgt=\' + __mhTgt + \' sl=\' + __mhSlParam); } catch(e) {}\n\n    var __mhTranslate = function(text, cb) {\n      var cleaned = text\n        .replace(/\\\\[A-Za-z]+\\[\\d+\\]/g, \'\')\n        .replace(/\\\\[{}!\\^.|><]/g, \'\')\n        .replace(/[\\x00-\\x1f]/g, \'\')\n        .replace(/\\n/g, \' \')\n        .trim();\n      if (!cleaned) return;\n      try { window.MinHub.log(\'[Trans] input=\' + cleaned.substring(0, 80)); } catch(e) {}\n      var url = \'https://translate.googleapis.com/translate_a/single?client=gtx&sl=\' +\n        encodeURIComponent(__mhSlParam) + \'&tl=\' + encodeURIComponent(__mhTgt) +\n        \'&dt=t&q=\' + encodeURIComponent(cleaned);\n      var xhr = new XMLHttpRequest();\n      xhr.open(\'GET\', url, true);\n      xhr.onreadystatechange = function() {\n        if (xhr.readyState !== 4) return;\n        if (xhr.status !== 200) {\n          try { window.MinHub.log(\'[Trans] HTTP \' + xhr.status); } catch(e) {}\n          return;\n        }\n        try {\n          var r = JSON.parse(xhr.responseText);\n          var out = \'\';\n          if (r && r[0]) for (var i = 0; i < r[0].length; i++) if (r[0][i] && r[0][i][0]) out += r[0][i][0];\n          try { window.MinHub.log(\'[Trans] result=\' + out.substring(0, 80)); } catch(e) {}\n          if (out) cb(out);\n        } catch (e) {\n          try { window.MinHub.log(\'[Trans] parse error: \' + e); } catch(e2) {}\n        }\n      };\n      xhr.send();\n    };\n\n    var __mhInstall = function(attempt) {\n      if (typeof Window_Message === \'undefined\') {\n        if (attempt < 60) setTimeout(function() { __mhInstall(attempt + 1); }, 500);\n        return;\n      }\n      if (window.__minhubTransHooked) return;\n      window.__minhubTransHooked = true;\n      try { window.MinHub.log(\'[Trans] Window_Message hooked\'); } catch(e) {}\n\n      var _start = Window_Message.prototype.startMessage;\n      Window_Message.prototype.startMessage = function() {\n        _start.call(this);\n        try {\n          var text = window.$gameMessage ? window.$gameMessage.allText() : \'\';\n          if (text && text.trim()) {\n            __mhTranslate(text, function(t) {\n              try { window.MinHub.showSubtitle(t); } catch (e) {}\n            });\n          }\n        } catch (e) {}\n      };\n\n      var _terminate = Window_Message.prototype.terminateMessage;\n      Window_Message.prototype.terminateMessage = function() {\n        _terminate.call(this);\n        try { window.MinHub.hideSubtitle(); } catch (e) {}\n      };\n    };\n\n    __mhInstall(0);\n\n    // TyranoScript: hook [p] pause tag to show translated subtitle\n    var __mhGetTyranoText = function() {\n      try {\n        // Prefer TyranoScript API: getLayer(\'message0\') returns the FORE (visible) layer\n        if (typeof TYRANO !== \'undefined\' && TYRANO && TYRANO.kag &&\n            TYRANO.kag.layer && TYRANO.kag.layer.getLayer) {\n          var layer = TYRANO.kag.layer.getLayer(\'message0\');\n          if (layer && layer.length) {\n            var t = (layer.find(\'.message_inner\').text() || \'\').trim();\n            if (t) return t;\n          }\n        }\n        // Fallback: direct DOM \u2014 .message_inner is the visible text container\n        var els = document.querySelectorAll(\'.message_inner\');\n        var out = \'\';\n        for (var i = 0; i < els.length; i++) {\n          var t = (els[i].innerText || els[i].textContent || \'\').trim();\n          if (t) out += (out ? \' \' : \'\') + t;\n        }\n        return out.trim();\n      } catch(e) { return \'\'; }\n    };\n\n    var __mhInstallTyrano = function(attempt) {\n      if (typeof TYRANO === \'undefined\' || !TYRANO || !TYRANO.kag ||\n          !TYRANO.kag.ftag || !TYRANO.kag.ftag.startTag) {\n        if (attempt < 60) setTimeout(function() { __mhInstallTyrano(attempt + 1); }, 500);\n        return;\n      }\n      if (window.__minhubTyranoTransHooked) return;\n      window.__minhubTyranoTransHooked = true;\n      try { window.MinHub.log(\'[Trans] TYRANO.kag hooked\'); } catch(e) {}\n\n      var _pTag = TYRANO.kag.ftag.startTag[\'p\'];\n      TYRANO.kag.ftag.startTag[\'p\'] = function(pm) {\n        try {\n          setTimeout(function() {\n            var text = __mhGetTyranoText();\n            if (text) {\n              __mhTranslate(text, function(t) {\n                try { window.MinHub && window.MinHub.showSubtitle(t); } catch(e2) {}\n              });\n            }\n          }, 80);\n        } catch(e) {}\n        if (_pTag) _pTag.call(this, pm);\n      };\n\n      var _ctTag = TYRANO.kag.ftag.startTag[\'ct\'];\n      TYRANO.kag.ftag.startTag[\'ct\'] = function(pm) {\n        try { window.MinHub && window.MinHub.hideSubtitle(); } catch(e) {}\n        if (_ctTag) _ctTag.call(this, pm);\n      };\n    };\n\n    __mhInstallTyrano(0);\n  } catch (e) {}\n})();"

    .line 172
    .line 173
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    sget-object v15, LG1/p;->c:LG1/p;

    .line 177
    .line 178
    invoke-virtual {v11, v15}, LG1/s;->b(LG1/p;)Z

    .line 179
    .line 180
    .line 181
    move-result v24

    .line 182
    move-object/from16 v25, v15

    .line 183
    .line 184
    const-string v15, "\n                if ("

    .line 185
    .line 186
    if-eqz v24, :cond_3

    .line 187
    .line 188
    move-object/from16 v24, v12

    .line 189
    .line 190
    invoke-static/range {v25 .. v25}, LG1/a;->c(LG1/p;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v12

    .line 194
    move-object/from16 v25, v13

    .line 195
    .line 196
    new-instance v13, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v12, " && !window.__minhubTouchPolyfill) {\n                  window.__minhubTouchPolyfill = true;\n                  var forwardTouch = function(type, touchEvent) {\n                    var touch = touchEvent.changedTouches && touchEvent.changedTouches[0];\n                    if (!touch) return;\n                    var target = touch.target || document.body;\n                    var mapped = type === \'touchstart\' ? \'mousedown\' : type === \'touchmove\' ? \'mousemove\' : \'mouseup\';\n                    target.dispatchEvent(new MouseEvent(mapped, {\n                      bubbles: true,\n                      cancelable: true,\n                      clientX: touch.clientX,\n                      clientY: touch.clientY\n                    }));\n                  };\n                  document.addEventListener(\'touchstart\', function(e){ forwardTouch(\'touchstart\', e); }, { passive: true });\n                  document.addEventListener(\'touchmove\', function(e){ forwardTouch(\'touchmove\', e); }, { passive: true });\n                  document.addEventListener(\'touchend\', function(e){ forwardTouch(\'touchend\', e); }, { passive: true });\n                }\n            "

    .line 205
    .line 206
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v12

    .line 213
    invoke-static {v12}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v12

    .line 217
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_3
    move-object/from16 v24, v12

    .line 222
    .line 223
    move-object/from16 v25, v13

    .line 224
    .line 225
    :goto_3
    sget-object v12, LG1/p;->d:LG1/p;

    .line 226
    .line 227
    invoke-virtual {v11, v12}, LG1/s;->b(LG1/p;)Z

    .line 228
    .line 229
    .line 230
    move-result v13

    .line 231
    if-eqz v13, :cond_4

    .line 232
    .line 233
    invoke-static {v12}, LG1/a;->c(LG1/p;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v12

    .line 237
    new-instance v13, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v12, " && !window.__minhubNodeCompat) {\n                  window.__minhubNodeCompat = true;\n                  try {\n                    if (typeof window.require !== \'function\') {\n                      window.require = function(module) {\n                        if (module === \'fs\') {\n                          return {\n                            readFileSync: function() { return \'{}\'; },\n                            writeFileSync: function() {},\n                            existsSync: function() { return false; },\n                            mkdirSync: function() {},\n                            readdirSync: function() { return []; },\n                            unlinkSync: function() {},\n                            statSync: function() { return { isFile: function(){ return false; }, isDirectory: function(){ return false; }, size: 0 }; },\n                            lstatSync: function() { return { isFile: function(){ return false; }, isDirectory: function(){ return false; } }; },\n                            readdir: function(path, cb) { if (cb) cb(null, []); },\n                            readFile: function(path, opts, cb) { if (typeof opts === \'function\') { cb = opts; } if (cb) cb(null, \'{}\'); },\n                            writeFile: function(path, data, cb) { if (cb) cb(null); }\n                          };\n                        }\n                        if (module === \'path\') {\n                          return {\n                            dirname: function(path) { return path ? path.replace(/[^\\\\/]+$/, \'\') : \'\'; },\n                            basename: function(path, ext) {\n                              var base = path ? path.split(/[\\\\/]/).pop() : \'\';\n                              return ext && base.endsWith(ext) ? base.slice(0, -ext.length) : base;\n                            },\n                            join: function() { return Array.prototype.slice.call(arguments).join(\'/\'); }\n                          };\n                        }\n                        if (module === \'nw.gui\' || module === \'nw\') {\n                          return window.nw;\n                        }\n                        return {};\n                      };\n                    }\n                    window.nw = window.nw || {};\n                    window.nw.App = window.nw.App || { argv: [], quit: function() {} };\n                    // Provide a no-op nw.Window so plugins like ScreenAdjustForAspect\n                    // that guard with Utils.isNwjs() but then call nw.Window.get() do not crash.\n                    window.nw.Window = window.nw.Window || {\n                      get: function() {\n                        return { moveBy: function(){}, resizeTo: function(){}, on: function(){}, removeListener: function(){} };\n                      }\n                    };\n                    window.process = window.process || { versions: {} };\n                    window.process.argv = window.process.argv || [];\n                    window.process.mainModule = window.process.mainModule || { filename: \'index.html\' };\n                    window.process.versions = window.process.versions || {};\n                    window.process.versions.nw = window.process.versions.nw || \'0\';\n                  } catch (e) {}\n                }\n            "

    .line 246
    .line 247
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v12

    .line 254
    invoke-static {v12}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v12

    .line 258
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    :cond_4
    sget-object v12, LG1/p;->e:LG1/p;

    .line 262
    .line 263
    invoke-virtual {v11, v12}, LG1/s;->b(LG1/p;)Z

    .line 264
    .line 265
    .line 266
    move-result v13

    .line 267
    if-eqz v13, :cond_5

    .line 268
    .line 269
    invoke-static {v12}, LG1/a;->c(LG1/p;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v12

    .line 273
    new-instance v13, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    const-string v12, ") {\n                  try {\n                    var styleId = \'minhub-font-fallback\';\n                    if (!document.getElementById(styleId)) {\n                      var style = document.createElement(\'style\');\n                      style.id = styleId;\n                      style.textContent = \"html, body, input, button, textarea { font-family: \'"

    .line 282
    .line 283
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    const-string v8, "\', \'Noto Sans\', \'Roboto\', Arial, sans-serif !important; }\";\n                      document.head.appendChild(style);\n                    }\n                  } catch (e) {}\n                }\n            "

    .line 290
    .line 291
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v8

    .line 298
    invoke-static {v8}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v8

    .line 302
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    :cond_5
    sget-object v8, LG1/p;->f:LG1/p;

    .line 306
    .line 307
    invoke-virtual {v11, v8}, LG1/s;->b(LG1/p;)Z

    .line 308
    .line 309
    .line 310
    move-result v8

    .line 311
    if-eqz v8, :cond_6

    .line 312
    .line 313
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    const-string v8, "(function() {\n  if (window.__minhubAudioUnlock) return;\n  window.__minhubAudioUnlock = true;\n  var _unlock = function() {\n    try {\n      if (window.WebAudio && WebAudio._context && WebAudio._context.state === \'suspended\') {\n        WebAudio._context.resume();\n      }\n    } catch(e) {}\n    try {\n      var AC = window.AudioContext || window.webkitAudioContext;\n      if (AC) {\n        var ctx = new AC();\n        var buf = ctx.createBuffer(1, 1, 22050);\n        var src = ctx.createBufferSource();\n        src.buffer = buf;\n        src.connect(ctx.destination);\n        src.start(0);\n        setTimeout(function() { try { ctx.close(); } catch(ex) {} }, 1000);\n      }\n    } catch(e) {}\n    document.removeEventListener(\'touchstart\', _unlock, true);\n    document.removeEventListener(\'pointerdown\', _unlock, true);\n  };\n  document.addEventListener(\'touchstart\', _unlock, { capture: true, once: true, passive: true });\n  document.addEventListener(\'pointerdown\', _unlock, { capture: true, once: true, passive: true });\n})();"

    .line 317
    .line 318
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    :cond_6
    sget-object v8, LG1/p;->q:LG1/p;

    .line 322
    .line 323
    invoke-virtual {v11, v8}, LG1/s;->b(LG1/p;)Z

    .line 324
    .line 325
    .line 326
    move-result v8

    .line 327
    if-eqz v8, :cond_7

    .line 328
    .line 329
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    const-string v8, "(function() {\n  if (window.__minhubAutoWrap) return;\n  window.__minhubAutoWrap = true;\n  var _install = function(attempt) {\n    if (typeof Game_Message === \'undefined\') {\n      if (attempt < 40) setTimeout(function() { _install(attempt + 1); }, 200);\n      return;\n    }\n    if (window.__minhubAutoWrapInstalled) return;\n    window.__minhubAutoWrapInstalled = true;\n    var _origAdd = Game_Message.prototype.add;\n    Game_Message.prototype.add = function(text) {\n      try {\n        if (text && typeof text === \'string\' && text.length > 20) {\n          var maxW = (typeof Graphics !== \'undefined\' && Graphics.boxWidth)\n            ? Graphics.boxWidth - 108 : 528;\n          var fontSize = 26;\n          try {\n            if (typeof Window_Base !== \'undefined\' && Window_Base.prototype.standardFontSize) {\n              fontSize = Window_Base.prototype.standardFontSize();\n            } else if (typeof $gameSystem !== \'undefined\' && $gameSystem && $gameSystem.mainFontSize) {\n              fontSize = $gameSystem.mainFontSize();\n            }\n          } catch(e2) {}\n          var cv = document.createElement(\'canvas\').getContext(\'2d\');\n          cv.font = fontSize + \'px sans-serif\';\n          var lines = text.split(\'\\n\');\n          var out = [];\n          for (var i = 0; i < lines.length; i++) {\n            var ln = lines[i];\n            if (/\\\\[A-Za-z<>\\[\\]{}!|^.]/.test(ln) || cv.measureText(ln).width <= maxW) {\n              out.push(ln); continue;\n            }\n            var words = ln.split(\' \');\n            var cur = \'\';\n            for (var j = 0; j < words.length; j++) {\n              var test = cur ? cur + \' \' + words[j] : words[j];\n              if (cur && cv.measureText(test).width > maxW) {\n                out.push(cur); cur = words[j];\n              } else { cur = test; }\n            }\n            if (cur) out.push(cur);\n          }\n          text = out.join(\'\\n\');\n        }\n      } catch(e) {}\n      _origAdd.call(this, text);\n    };\n  };\n  _install(0);\n})();"

    .line 333
    .line 334
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    :cond_7
    sget-object v8, LG1/p;->r:LG1/p;

    .line 338
    .line 339
    invoke-virtual {v11, v8}, LG1/s;->b(LG1/p;)Z

    .line 340
    .line 341
    .line 342
    move-result v12

    .line 343
    const-string v13, "utilityId"

    .line 344
    .line 345
    if-eqz v12, :cond_8

    .line 346
    .line 347
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    invoke-static {v8}, LG1/a;->c(LG1/p;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v8

    .line 357
    new-instance v12, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    move-object/from16 v26, v4

    .line 360
    .line 361
    const-string v4, "\n        if ("

    .line 362
    .line 363
    invoke-direct {v12, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    const-string v4, " && !window.__minhubCacheManager) {\n          window.__minhubCacheManager = true;\n          (function() {\n            var _clear = function() {\n              try {\n                if (typeof ImageManager === \'undefined\') return;\n                // MZ path: ImageManager._imageCache (ImageCache instance with _items map).\n                if (ImageManager._imageCache && ImageManager._imageCache._items) {\n                  var items = ImageManager._imageCache._items;\n                  Object.keys(items).forEach(function(key) {\n                    if (key.indexOf(\'img/system\') !== -1) return;\n                    var bm = items[key] && items[key].bitmap;\n                    try { if (bm && bm.baseTexture) bm.baseTexture.destroy(); } catch(e) {}\n                    delete items[key];\n                  });\n                }\n                // MV path: ImageManager._cache (plain object keyed by url).\n                if (ImageManager._cache) {\n                  Object.keys(ImageManager._cache).forEach(function(key) {\n                    if (key === \'null\' || key.indexOf(\'img/system\') !== -1) return;\n                    var bm = ImageManager._cache[key];\n                    try { if (bm && bm.baseTexture) bm.baseTexture.destroy(); } catch(e) {}\n                    delete ImageManager._cache[key];\n                  });\n                }\n              } catch(e) {}\n            };\n            var _install = function(n) {\n              if (typeof Scene_Map === \'undefined\') {\n                if (n < 60) setTimeout(function() { _install(n + 1); }, 150);\n                return;\n              }\n              var _origCreate = Scene_Map.prototype.create;\n              Scene_Map.prototype.create = function() {\n                _origCreate.call(this);\n                // Only clear on an actual map transfer, not on menu return.\n                if (this._transfer) _clear();\n              };\n              try { window.MinHub && window.MinHub.log && window.MinHub.log(\'[CacheManager] installed\'); } catch(e) {}\n            };\n            _install(0);\n          })();\n        }\n    "

    .line 370
    .line 371
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v4

    .line 378
    invoke-static {v4}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v4

    .line 382
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    goto :goto_4

    .line 386
    :cond_8
    move-object/from16 v26, v4

    .line 387
    .line 388
    :goto_4
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    const-string v4, "(function() {\n  if (window.__minhubVideoTexPatch) return;\n  window.__minhubVideoTexPatch = true;\n  try {\n    var _patchTexImage = function(proto) {\n      if (!proto || typeof proto.texImage2D !== \'function\') return;\n      var orig = proto.texImage2D;\n      proto.texImage2D = function() {\n        var args = Array.prototype.slice.call(arguments);\n        // args[5] (or last arg for 6-arg overload) is the pixel source.\n        // When it is an HTMLVideoElement Chrome internally issues\n        // glCreateAndConsumeTextureCHROMIUM to pull the hardware-decoded\n        // OES_external texture via the GPU mailbox \u2014 that path is broken on\n        // Android emulators and some older devices.  Drawing the frame into\n        // a 2D canvas first converts it to a plain TEXTURE_2D-compatible\n        // bitmap and avoids the mailbox path entirely.\n        if (args.length >= 6) {\n          var src = args[args.length - 1];\n          if (src instanceof HTMLVideoElement && src.readyState >= 2 && src.videoWidth > 0) {\n            try {\n              var cvs = document.createElement(\'canvas\');\n              cvs.width = src.videoWidth;\n              cvs.height = src.videoHeight;\n              cvs.getContext(\'2d\').drawImage(src, 0, 0);\n              args[args.length - 1] = cvs;\n            } catch(e) {}\n          }\n        }\n        return orig.apply(this, args);\n      };\n    };\n    if (typeof WebGLRenderingContext !== \'undefined\') {\n      _patchTexImage(WebGLRenderingContext.prototype);\n    }\n    if (typeof WebGL2RenderingContext !== \'undefined\') {\n      _patchTexImage(WebGL2RenderingContext.prototype);\n    }\n  } catch(e) {}\n})();"

    .line 392
    .line 393
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    const-string v4, "(function() {\n  if (window.__minhubCaseMapInstalled) return;\n  window.__minhubCaseMapInstalled = true;\n  var _img = {}, _snd = {};\n  var _pending = 2;\n\n  var _loadDict = function(url, dict, onDone) {\n    try {\n      var xhr = new XMLHttpRequest();\n      xhr.open(\"GET\", url, true);\n      xhr.onreadystatechange = function() {\n        if (xhr.readyState !== 4) return;\n        try {\n          if (xhr.status === 200 || xhr.status === 0) {\n            var d = JSON.parse(xhr.responseText);\n            if (d && d.data) {\n              for (var i = 0; i < d.data.length; i++) {\n                dict[d.data[i].toLowerCase()] = d.data[i];\n              }\n            }\n          }\n        } catch(e) {}\n        onDone();\n      };\n      xhr.onerror = function() { onDone(); };\n      xhr.send();\n    } catch(e) { onDone(); }\n  };\n\n  // Dictionary entries are raw names (\"img/characters/!$costume.png\") but the engine\n  // hands us encodeURIComponent\'d names (\"!%24costume\") and some plugins hand us raw ones\n  // with \'#\'/\'%\' that the WebView would cut as a fragment or misdecode. Look up the\n  // decoded form, then return a per-segment encoded path. Any miss or throw returns the\n  // original url untouched so the game\'s own loading/error handling continues as before.\n  var _norm = function(u) { try { return decodeURIComponent(u); } catch(e) { return u; } };\n  var _enc = function(p) { return p.split(\'/\').map(function(s) { return encodeURIComponent(s); }).join(\'/\'); };\n  var _resolve = function(url, dict, root) {\n    try {\n      if (typeof url !== \'string\' || !url || /^(data|blob|https?):/i.test(url)) return url;\n      var m = new RegExp(\'(^|/)\' + root + \'/\').exec(url);\n      if (!m) return url;\n      var cut = m.index + m[1].length;\n      var prefix = url.slice(0, cut), rest = url.slice(cut), query = \'\';\n      var hit = dict[_norm(rest).toLowerCase()];\n      if (!hit) {\n        var qi = rest.lastIndexOf(\'?\');\n        if (qi > 0) { query = rest.slice(qi); rest = rest.slice(0, qi); hit = dict[_norm(rest).toLowerCase()]; }\n      }\n      return hit ? prefix + _enc(hit) + query : url;\n    } catch(e) { return url; }\n  };\n\n  var _installHooks = function(attempt) {\n    if (typeof Bitmap === \'undefined\') {\n      if (attempt < 40) setTimeout(function() { _installHooks(attempt + 1); }, 200);\n      return;\n    }\n    if (window.__minhubCaseMapHooked) return;\n    window.__minhubCaseMapHooked = true;\n\n    // MZ: Bitmap.load(url) \u2014 static factory\n    if (typeof Bitmap.load === \'function\' && !Bitmap._mhCaseHooked) {\n      Bitmap._mhCaseHooked = true;\n      var _origLoad = Bitmap.load;\n      Bitmap.load = function(url) {\n        url = _resolve(url, _img, \'img\');\n        return _origLoad.call(this, url);\n      };\n    }\n\n    // MV: Bitmap.request(url) \u2014 static factory\n    if (typeof Bitmap.request === \'function\' && !Bitmap._mhCaseReqHooked) {\n      Bitmap._mhCaseReqHooked = true;\n      var _origReq = Bitmap.request;\n      Bitmap.request = function(url) {\n        url = _resolve(url, _img, \'img\');\n        return _origReq.call(this, url);\n      };\n    }\n\n    // MZ + MV: WebAudio.prototype.initialize\n    if (typeof WebAudio !== \'undefined\' && WebAudio.prototype &&\n        typeof WebAudio.prototype.initialize === \'function\' &&\n        !WebAudio.prototype._mhCaseHooked) {\n      WebAudio.prototype._mhCaseHooked = true;\n      var _origWA = WebAudio.prototype.initialize;\n      WebAudio.prototype.initialize = function(url) {\n        url = _resolve(url, _snd, \'audio\');\n        return _origWA.call(this, url);\n      };\n    }\n\n    // MV: Html5Audio.setup\n    if (typeof Html5Audio !== \'undefined\' && typeof Html5Audio.setup === \'function\' &&\n        !Html5Audio._mhCaseHooked) {\n      Html5Audio._mhCaseHooked = true;\n      var _origH5 = Html5Audio.setup;\n      Html5Audio.setup = function(url) {\n        url = _resolve(url, _snd, \'audio\');\n        return _origH5.call(this, url);\n      };\n    }\n\n    try {\n      window.MinHub && window.MinHub.log &&\n        window.MinHub.log(\'[CaseMap] hooks installed img=\' + Object.keys(_img).length + \' snd=\' + Object.keys(_snd).length);\n    } catch(e) {}\n  };\n\n  var _onLoaded = function() {\n    _pending--;\n    if (_pending <= 0) _installHooks(0);\n  };\n\n  _loadDict(\"img/img_data_mfsuplub.json\", _img, _onLoaded);\n  _loadDict(\"audio/snd_data_mfsuplub.json\", _snd, _onLoaded);\n})();"

    .line 400
    .line 401
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    const-string v4, "(function() {\n  if (window.__minhubExtPathfinder) return;\n  window.__minhubExtPathfinder = true;\n  var _install = function(n) {\n    if (typeof Game_Character === \'undefined\') {\n      if (n < 40) setTimeout(function() { _install(n + 1); }, 200);\n      return;\n    }\n    Game_Character.prototype.searchLimit = function() { return 36; };\n  };\n  _install(0);\n})();"

    .line 408
    .line 409
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    const-string v4, "(function() {\n  if (window.__minhubGetPixelFix) return;\n  window.__minhubGetPixelFix = true;\n  var _install = function(n) {\n    if (typeof Bitmap === \'undefined\') {\n      if (n < 40) setTimeout(function() { _install(n + 1); }, 200);\n      return;\n    }\n    var _orig = Bitmap.prototype.getPixel;\n    if (typeof _orig !== \'function\') return;\n    Bitmap.prototype.getPixel = function(x, y) {\n      var rx = Math.round(x); var ry = Math.round(y);\n      return _orig.call(this, isNaN(rx) ? 0 : rx, isNaN(ry) ? 0 : ry);\n    };\n  };\n  _install(0);\n})();"

    .line 416
    .line 417
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    const-string v4, "(function() {\n  if (window.__minhubGlobalInfoCache) return;\n  window.__minhubGlobalInfoCache = true;\n  var _install = function(n) {\n    if (typeof DataManager === \'undefined\' ||\n        typeof DataManager.loadGlobalInfo !== \'function\' ||\n        typeof DataManager.saveGlobalInfo !== \'function\') {\n      if (n < 60) setTimeout(function() { _install(n + 1); }, 150);\n      return;\n    }\n    if (DataManager.__minhubGiCacheHooked) return;\n    DataManager.__minhubGiCacheHooked = true;\n\n    var _cached = null;\n    var _origSave = DataManager.saveGlobalInfo;\n    DataManager.saveGlobalInfo = function(info) {\n      _origSave.call(this, info);\n      _cached = info;\n    };\n    var _origLoad = DataManager.loadGlobalInfo;\n    DataManager.loadGlobalInfo = function() {\n      if (_cached) return _cached;\n      _cached = _origLoad.call(this);\n      return _cached;\n    };\n\n    // Invalidate after save/load so a freshly written slot is reflected.\n    if (typeof Scene_Save !== \'undefined\' && Scene_Save.prototype.onSaveSuccess) {\n      var _onSave = Scene_Save.prototype.onSaveSuccess;\n      Scene_Save.prototype.onSaveSuccess = function() { _cached = null; _onSave.call(this); };\n    }\n    if (typeof Scene_Load !== \'undefined\' && Scene_Load.prototype.onLoadSuccess) {\n      var _onLoad = Scene_Load.prototype.onLoadSuccess;\n      Scene_Load.prototype.onLoadSuccess = function() { _cached = null; _onLoad.call(this); };\n    }\n    try { window.MinHub && window.MinHub.log && window.MinHub.log(\'[GlobalInfoCache] installed\'); } catch(e) {}\n  };\n  _install(0);\n})();"

    .line 424
    .line 425
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    const-string v4, "(function() {\n  if (window.__minhubPendingImport) return;\n  window.__minhubPendingImport = true;\n  var MARKER = \'minhub_pending_import\';\n  var _log = function(m) {\n    try { window.MinHub && window.MinHub.log && window.MinHub.log(\'[ImportSave] \' + m); } catch(e) {}\n  };\n  var _readMarker = function() {\n    try {\n      var raw = window.MinHub.loadGameByName(MARKER);\n      if (!raw) return [];\n      var text = String((JSON.parse(raw) || {}).slots || \'\');\n      var out = [];\n      var parts = text.split(\',\');\n      for (var i = 0; i < parts.length; i++) {\n        var v = parseInt(parts[i], 10);\n        if (!isNaN(v) && v >= 0) out.push(v);\n      }\n      return out;\n    } catch(e) { return []; }\n  };\n  var _writeMarker = function(slots) {\n    try {\n      if (!slots.length) { window.MinHub.removeSaveByName(MARKER); return; }\n      window.MinHub.saveGameByName(MARKER, JSON.stringify({ slots: slots.join(\',\') }));\n    } catch(e) {}\n  };\n  var _install = function(n) {\n    var ready = typeof DataManager !== \'undefined\' &&\n                typeof DataManager.loadGlobalInfo === \'function\' &&\n                window.MinHub && typeof window.MinHub.loadGameByName === \'function\';\n    if (!ready) {\n      if (n < 60) setTimeout(function() { _install(n + 1); }, 150);\n      return;\n    }\n    if (DataManager.__minhubImportHooked) return;\n\n    var pending = _readMarker();\n    if (!pending.length) return;\n    DataManager.__minhubImportHooked = true;\n    _log(\'pending slot(s) \' + pending.join(\',\'));\n\n    var importedInfo = {};\n    var metadataReady = true;\n    var _infoFromSave = function(contents) {\n      if (!contents || !contents.system || !contents.party) return null;\n      var ids = contents.party._actors || [];\n      var actors = contents.actors && contents.actors._data || [];\n      var characters = [], faces = [];\n      for (var i = 0; i < Math.min(ids.length, 4); i++) {\n        var actor = actors[ids[i]];\n        if (!actor) continue;\n        characters.push([actor._characterName || \'\', actor._characterIndex || 0]);\n        faces.push([actor._faceName || \'\', actor._faceIndex || 0]);\n      }\n      var frames = Number(contents.system._framesOnSave) || 0;\n      var seconds = Math.floor(frames / 60);\n      var time = [Math.floor(seconds / 3600), Math.floor(seconds / 60) % 60, seconds % 60]\n        .map(function(v) { return String(v).padStart(2, \'0\'); }).join(\':\');\n      return { characters: characters, faces: faces, playtime: time };\n    };\n\n    var _mergePending = function(info) {\n      if (!Array.isArray(info)) return info;\n      var still = [];\n      for (var i = 0; i < pending.length; i++) {\n        var slot = pending[i];\n        // The old index may still describe the save overwritten by this import.\n        // Replace that entry in memory until the game\'s own next save writes a new one.\n        try { if (!window.MinHub.saveExists(slot)) continue; } catch(e) {}\n        var entry = {\n          title: \'\',\n          characters: [],\n          faces: [],\n          playtime: \'Imported save\',\n          timestamp: Date.now(),\n          __mhImported: true\n        };\n        if (importedInfo[slot]) Object.assign(entry, importedInfo[slot]);\n        try { entry.title = ($dataSystem && $dataSystem.gameTitle) || \'\'; } catch(e) {}\n        // MV gates loading on this matching the running game; MZ has no such field.\n        if (DataManager._globalId) entry.globalId = DataManager._globalId;\n        info[slot] = entry;\n        still.push(slot);\n      }\n      if (still.length !== pending.length) {\n        pending = still;\n        _writeMarker(still);\n      }\n      return info;\n    };\n    var _origLoad = DataManager.loadGlobalInfo;\n    DataManager.loadGlobalInfo = function() {\n      var info = _origLoad.call(this);\n      return Array.isArray(info) ? _mergePending(info) : info;\n    };\n    var _origSave = DataManager.saveGlobalInfo;\n    if (typeof _origSave === \'function\') {\n      DataManager.saveGlobalInfo = function(info) {\n        var result = _origSave.apply(this, arguments);\n        var saved = Array.isArray(info) ? info : this._globalInfo;\n        if (Array.isArray(saved)) {\n          var remaining = pending.filter(function(slot) {\n            return !saved[slot] || saved[slot].__mhImported;\n          });\n          if (remaining.length !== pending.length) {\n            pending = remaining;\n            _writeMarker(remaining);\n          }\n        }\n        return result;\n      };\n    }\n    // MZ loads global info asynchronously into _globalInfo. Merge only after it is ready,\n    // including the no-index case where loadObject(\"global\") rejects and sets [].\n    if (typeof DataManager.isGlobalInfoLoaded === \'function\') {\n      var _origReady = DataManager.isGlobalInfoLoaded;\n      DataManager.isGlobalInfoLoaded = function() {\n        var ready = _origReady.call(this);\n        if (ready && !metadataReady) return false;\n        if (ready && Array.isArray(this._globalInfo)) _mergePending(this._globalInfo);\n        return ready;\n      };\n    }\n    if (typeof StorageManager.loadObject === \'function\' &&\n        typeof DataManager.makeSavename === \'function\') {\n      metadataReady = false;\n      Promise.all(pending.map(function(slot) {\n        try {\n          return Promise.resolve(StorageManager.loadObject(DataManager.makeSavename(slot)))\n            .then(function(contents) { importedInfo[slot] = _infoFromSave(contents); })\n            .catch(function() {});\n        } catch(e) { return Promise.resolve(); }\n      })).then(function() { metadataReady = true; }, function() { metadataReady = true; });\n      setTimeout(function() { metadataReady = true; }, 5000);\n    }\n  };\n  _install(0);\n})();"

    .line 432
    .line 433
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    const-string v4, "(function() {\n  if (window.__minhubTextAlignFix) return;\n  window.__minhubTextAlignFix = true;\n  var _valid = { left: 1, center: 1, right: 1, start: 1, end: 1 };\n  // Guard the raw Canvas 2D textAlign setter too: some plugins (e.g. SoR_GabWindow,\n  // SoR_StoryObjectiveIndicator) assign context.textAlign = <maybe-undefined> DIRECTLY,\n  // bypassing Bitmap.drawText, so the wrapper below never sees them \u2014 an on-screen\n  // indicator redrawing every frame floods logcat (1600+ lines/session) with Chrome\'s\n  // \"not a valid enum value of type CanvasTextAlign\" warning. Coerce invalid \u2192 \'left\' at\n  // the source so the warning never fires, for every caller.\n  try {\n    var _ctxProto = (typeof CanvasRenderingContext2D !== \'undefined\') && CanvasRenderingContext2D.prototype;\n    var _ta = _ctxProto && Object.getOwnPropertyDescriptor(_ctxProto, \'textAlign\');\n    if (_ta && _ta.set && _ta.configurable && !_ctxProto.__mhTextAlignSetter) {\n      _ctxProto.__mhTextAlignSetter = true;\n      Object.defineProperty(_ctxProto, \'textAlign\', {\n        get: _ta.get,\n        set: function(v) { _ta.set.call(this, _valid[v] ? v : \'left\'); },\n        configurable: true,\n        enumerable: _ta.enumerable\n      });\n    }\n  } catch (e) {}\n  var _install = function(n) {\n    if (typeof Bitmap === \'undefined\' || typeof Bitmap.prototype.drawText !== \'function\') {\n      if (n < 40) setTimeout(function() { _install(n + 1); }, 200);\n      return;\n    }\n    if (Bitmap.prototype.drawText.__mhTextAlign) return;\n    var _orig = Bitmap.prototype.drawText;\n    var _wrapped = function(text, x, y, maxWidth, lineHeight, align) {\n      if (!_valid[align]) align = \'left\';\n      return _orig.call(this, text, x, y, maxWidth, lineHeight, align);\n    };\n    _wrapped.__mhTextAlign = true;\n    Bitmap.prototype.drawText = _wrapped;\n  };\n  _install(0);\n})();"

    .line 440
    .line 441
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    .line 443
    .line 444
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    const-string v0, "(function() {\n  if (window.__minhubApngSceneGuard) return;\n  window.__minhubApngSceneGuard = true;\n  var _log = function(m) { try { window.MinHub && window.MinHub.log && window.MinHub.log(\'[ApngGuard] \' + m); } catch(e) {} };\n  var _install = function(n) {\n    if (typeof Scene_Base === \'undefined\' || typeof Scene_Base.prototype.createSceneApng !== \'function\') {\n      if (n < 100) setTimeout(function() { _install(n + 1); }, 100);\n      return;\n    }\n    if (Scene_Base.prototype.createSceneApng.__mhGuarded) return;\n    var _origCreate = Scene_Base.prototype.createSceneApng;\n    var _guardedCreate = function() {\n      try {\n        _origCreate.call(this);\n      } catch (e) {\n        _log(\'createSceneApng threw, scene apng disabled for this scene: \' + (e && e.message));\n      }\n      if (!Array.isArray(this._apngList)) this._apngList = [];\n    };\n    _guardedCreate.__mhGuarded = true;\n    Scene_Base.prototype.createSceneApng = _guardedCreate;\n\n    if (typeof Scene_Base.prototype.setApngPriority === \'function\' && !Scene_Base.prototype.setApngPriority.__mhGuarded) {\n      var _origPrio = Scene_Base.prototype.setApngPriority;\n      var _guardedPrio = function() {\n        if (!Array.isArray(this._apngList)) { this._apngList = []; return; }\n        try { return _origPrio.call(this); } catch (e) { _log(\'setApngPriority guarded: \' + (e && e.message)); }\n      };\n      _guardedPrio.__mhGuarded = true;\n      Scene_Base.prototype.setApngPriority = _guardedPrio;\n    }\n    _log(\'installed\');\n  };\n  _install(0);\n})();"

    .line 448
    .line 449
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    invoke-static {v9, v7}, Lkotlin/collections/CollectionsKt;->c(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 453
    .line 454
    .line 455
    sget-object v0, LG1/j;->a:[I

    .line 456
    .line 457
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Enum;->ordinal()I

    .line 458
    .line 459
    .line 460
    move-result v4

    .line 461
    aget v0, v0, v4

    .line 462
    .line 463
    packed-switch v0, :pswitch_data_1

    .line 464
    .line 465
    .line 466
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 467
    .line 468
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 469
    .line 470
    .line 471
    throw v0

    .line 472
    :pswitch_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    goto/16 :goto_5

    .line 477
    .line 478
    :pswitch_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    goto/16 :goto_5

    .line 483
    .line 484
    :pswitch_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    goto/16 :goto_5

    .line 489
    .line 490
    :pswitch_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    goto/16 :goto_5

    .line 495
    .line 496
    :pswitch_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    goto/16 :goto_5

    .line 501
    .line 502
    :pswitch_5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    goto/16 :goto_5

    .line 507
    .line 508
    :pswitch_6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    goto/16 :goto_5

    .line 513
    .line 514
    :pswitch_7
    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    new-instance v0, Ljava/util/ArrayList;

    .line 518
    .line 519
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 520
    .line 521
    .line 522
    const-string v3, "(function(){\n  try {\n    // Install global unhandled-rejection logger once (helps diagnose async errors).\n    if (!window.__minhubUnhandledRej) {\n      window.__minhubUnhandledRej = true;\n      window.addEventListener(\'unhandledrejection\', function(e) {\n        try {\n          var r = e.reason;\n          var msg = r instanceof Error\n            ? r.message + \'\\n\' + (r.stack || \'\').substring(0, 300)\n            : String(r);\n          window.MinHub && window.MinHub.log &&\n            window.MinHub.log(\'[UnhandledRej] \' + msg.substring(0, 400));\n        } catch(ex) {}\n      });\n    }\n\n    var _log = function(msg) {\n      try { window.MinHub && window.MinHub.log && window.MinHub.log(\'[BridgeMZ] \' + msg); } catch(e) {}\n    };\n\n    // saveName \u2192 integer slot (null means use ByName methods for unknown strings).\n    // \'global\' intentionally returns null so it uses saveGameByName/loadGameByName\n    // instead of saveGame(0). Previously \'global\' mapped to slot 0 \u2014 same as \'file0\'\n    // (autosave). MZ always writes global AFTER autosave, so global overwrote slot 0\n    // and loading file0 returned global data (no \'system\' property \u2192 extractSaveContents skip).\n    var _slotOf = function(n) {\n      if (n === \'config\') return -1;\n      var m = /^file(\\d+)$/.exec(n);\n      return m ? parseInt(m[1], 10) : null;\n    };\n    var _sv  = function(n,d){ var s=_slotOf(n); return s!==null?window.MinHub.saveGame(s,d)      :window.MinHub.saveGameByName(n,d); };\n    var _ld  = function(n)  { var s=_slotOf(n); return s!==null?window.MinHub.loadGame(s)         :window.MinHub.loadGameByName(n);  };\n    var _ex  = function(n)  { var s=_slotOf(n); return s!==null?window.MinHub.saveExists(s)       :window.MinHub.saveExistsByName(n); };\n    var _rm  = function(n)  { var s=_slotOf(n); return s!==null?window.MinHub.removeSave(s)       :window.MinHub.removeSaveByName(n); };\n    var _svB = function(n,d){ var s=_slotOf(n); return s!==null?window.MinHub.saveBackup(s,d)     :window.MinHub.saveBackupByName(n,d); };\n    var _ldB = function(n)  { var s=_slotOf(n); return s!==null?window.MinHub.loadBackup(s)       :window.MinHub.loadBackupByName(n);  };\n    var _exB = function(n)  { var s=_slotOf(n); return s!==null?window.MinHub.backupExists(s)     :window.MinHub.backupExistsByName(n); };\n    var _rmB = function(n)  { var s=_slotOf(n); return s!==null?window.MinHub.removeBackup(s)     :window.MinHub.removeBackupByName(n); };\n\n    var _applyBridge = function(src) {\n      if (!window.StorageManager || !window.MinHub || !window.MinHub.saveGame) {\n        _log(\'_applyBridge(\' + src + \'): not ready\');\n        return false;\n      }\n      _log(\'_applyBridge(\' + src + \')\');\n\n      StorageManager.isLocalMode = function() { return false; };\n\n      // Intercept the actual MZ I/O path (saveZip/loadZip call these).\n      // pako deflate produces binary strings (chars 0-255); btoa/atob makes them\n      // safe for text-file storage on the native filesystem.\n      StorageManager.saveToForage = function(saveName, data) {\n        var enc;\n        try { enc = btoa(data); } catch(e) { enc = data; } // btoa fails on chars > 255 (shouldn\'t happen with pako)\n        var ok = _sv(saveName, enc);\n        _log(\'saveToForage(\' + saveName + \') ok=\' + ok);\n        return Promise.resolve(ok);\n      };\n\n      StorageManager.loadFromForage = function(saveName) {\n        var raw = _ld(saveName);\n        if (raw != null) {\n          try {\n            var bin = atob(raw);\n            _log(\'loadFromForage(\' + saveName + \') native len=\' + bin.length);\n            return Promise.resolve(bin);\n          } catch(e) {\n            // Stored without base64 (e.g. by an older bridge version) \u2014 return as-is.\n            _log(\'loadFromForage(\' + saveName + \') native raw (atob fail: \' + e.message + \')\');\n            return Promise.resolve(raw);\n          }\n        }\n        // Fallback: data is in localforage (pre-bridge saves). Migrate on first hit.\n        _log(\'loadFromForage(\' + saveName + \') \u2192 localforage fallback\');\n        if (typeof localforage === \'undefined\') return Promise.resolve(null);\n        var self = this;\n        var lfKey;\n        try { lfKey = self.forageKey ? self.forageKey(saveName) : null; } catch(e) { lfKey = null; }\n        if (!lfKey) return Promise.resolve(null);\n        return localforage.getItem(lfKey).then(function(data) {\n          if (data != null) {\n            _log(\'loadFromForage migrate \' + saveName + \' len=\' + data.length);\n            try { _sv(saveName, btoa(data)); } catch(ex) {\n              _log(\'migrate btoa error: \' + ex.message);\n            }\n          } else {\n            _log(\'loadFromForage(\' + saveName + \') not in localforage\');\n          }\n          return data;\n        });\n      };\n\n      StorageManager.removeForage = function(saveName) {\n        _rm(saveName);\n        _log(\'removeForage(\' + saveName + \')\');\n        return Promise.resolve();\n      };\n\n      // forageExists: check MinHub first so saves show in the list regardless\n      // of whether they started life in localforage or native FS.\n      StorageManager.forageExists = function(saveName) {\n        if (_ex(saveName)) return true;\n        try {\n          var key = this.forageKey ? this.forageKey(saveName) : null;\n          return key ? this._forageKeys.includes(key) : false;\n        } catch(e) { return false; }\n      };\n\n      // updateForageKeys: fetch localforage key list for backward compat.\n      // forageExists() checks MinHub directly, so native-FS-only saves are visible\n      // even when their key is absent from _forageKeys.\n      StorageManager.updateForageKeys = function() {\n        var self = this;\n        self._forageKeysUpdated = false;\n        if (typeof localforage === \'undefined\') {\n          self._forageKeys = [];\n          self._forageKeysUpdated = true;\n          return Promise.resolve(0);\n        }\n        return localforage.keys().then(function(keys) {\n          self._forageKeys = keys;\n          self._forageKeysUpdated = true;\n          _log(\'updateForageKeys: \' + keys.length + \' keys\');\n          return 0;\n        });\n      };\n\n      // Backup helpers\n      StorageManager.backup = function(saveName) {\n        if (this.exists(saveName)) { var d = _ld(saveName); if (d) _svB(saveName, d); }\n      };\n      StorageManager.cleanBackup   = function(saveName) { _rmB(saveName); _log(\'cleanBackup(\' + saveName + \')\'); };\n      StorageManager.restoreBackup = function(saveName) {\n        var d = _ldB(saveName);\n        if (d) { _sv(saveName, d); _rmB(saveName); }\n      };\n\n      // Alias localFile/webStorage variants so plugins that call them directly\n      // are also intercepted.\n      StorageManager.saveToLocalFile = function(n, d) { return StorageManager.saveToForage(n, d); };\n      StorageManager.loadFromLocalFile = function(n) { return StorageManager.loadFromForage(n); };\n      StorageManager.localFileExists = function(n) { return StorageManager.forageExists(n); };\n      StorageManager.saveToWebStorage = StorageManager.saveToLocalFile;\n      StorageManager.loadFromWebStorage = StorageManager.loadFromLocalFile;\n      StorageManager.webStorageExists = StorageManager.localFileExists;\n\n      StorageManager.webStorageBackupExists = function(n) { return !!_exB(n); };\n      StorageManager.localFileBackupExists = StorageManager.webStorageBackupExists;\n      StorageManager.loadFromWebStorageBackup = function(n) {\n        var d = _ldB(n);\n        if (!d) return null;\n        try { return atob(d); } catch(e) { return d; }\n      };\n      StorageManager.loadFromLocalBackupFile = StorageManager.loadFromWebStorageBackup;\n\n      // MZ 1.0\u20131.3 compat: sync load/save/remove/exists (removed in MZ 1.4+).\n      // Return null for load \u2014 returning raw pako binary caused plugins like\n      // AnotherNewGame.js to pass it into DataManager.extractSaveContents,\n      // which then set $gameSystem = contents.system = undefined.\n      if (typeof StorageManager.load !== \'function\') {\n        StorageManager.load = function(saveName) { return null; };\n      }\n      if (typeof StorageManager.save !== \'function\') {\n        StorageManager.save = function(saveName, data) {\n          try { _sv(saveName, btoa(data)); } catch(e) { _sv(saveName, data); }\n        };\n      }\n      if (typeof StorageManager.remove !== \'function\') {\n        StorageManager.remove = function(saveName) { _rm(saveName); };\n      }\n      if (typeof StorageManager.exists !== \'function\') {\n        StorageManager.exists = function(saveName) { return !!_ex(saveName); };\n      }\n\n      // Guard extractSaveContents against malformed/null data.\n      // Prevents $gameSystem and other globals being set to undefined when\n      // a load fails or a plugin passes the wrong object.\n      try {\n        var _origExtract = DataManager.extractSaveContents.bind(DataManager);\n        DataManager.extractSaveContents = function(contents) {\n          if (!contents || typeof contents !== \'object\' || !contents.system) {\n            _log(\'extractSaveContents: skipped \u2014 bad contents (system missing)\');\n            return;\n          }\n          _origExtract(contents);\n        };\n      } catch(e) {}\n\n      // Guard AudioManager.playBgm/playBgs against null audio objects.\n      // Game_System.onAfterLoad passes _bgmOnSave which is null on a fresh Game_System\n      // (when extractSaveContents was skipped due to corrupt autosave data).\n      // MZ 1.4\'s AudioManager does not null-check its bgm argument before accessing bgm.name.\n      try {\n        var _origPBgm = AudioManager.playBgm;\n        AudioManager.playBgm = function(bgm, pos) {\n          if (!bgm || !bgm.name) return;\n          return _origPBgm.call(this, bgm, pos);\n        };\n        var _origPBgs = AudioManager.playBgs;\n        AudioManager.playBgs = function(bgs, pos) {\n          if (!bgs || !bgs.name) return;\n          return _origPBgs.call(this, bgs, pos);\n        };\n      } catch(e) {}\n\n      return true;\n    };\n\n    // Poll until StorageManager is ready (FOSSIL loads it ~800 ms after page load).\n    var _applyWhenReady = function(attempt) {\n      if (window.__minhubSaveBridgeMZ) return;\n      if (_applyBridge(\'poll-\' + attempt)) {\n        window.__minhubSaveBridgeMZ = true;\n        _hookBoot(0);\n      } else if (attempt < 50) {\n        setTimeout(function() { _applyWhenReady(attempt + 1); }, 100);\n      }\n    };\n\n    // Hook Scene_Boot.prototype.create to re-apply AFTER all plugins\n    // (e.g. VisuMZ_1_SaveCore) have loaded and potentially overridden our methods.\n    var _hookBoot = function(attempt) {\n      if (typeof Scene_Boot === \'undefined\') {\n        if (attempt < 40) setTimeout(function() { _hookBoot(attempt + 1); }, 150);\n        return;\n      }\n      if (window.__minhubSaveBridgeMZBooted) return;\n      window.__minhubSaveBridgeMZBooted = true;\n      _log(\'Scene_Boot hook installed (attempt=\' + attempt + \')\');\n      var _orig = Scene_Boot.prototype.create;\n      Scene_Boot.prototype.create = function() {\n        _applyBridge(\'Scene_Boot.create\');\n        _orig.call(this);\n      };\n    };\n\n    _applyWhenReady(0);\n\n  } catch(e) {\n    console && console.error && console.error(\'[MinHub] MZ storage bridge\', e);\n  }\n})();"

    .line 523
    .line 524
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    .line 526
    .line 527
    const-string v3, "(function() {\n  if (typeof Response === \'undefined\' || Response.__mhStatusPatch) return;\n  try {\n    var _MhR = Response;\n    window.Response = function(body, init) {\n      if (init && typeof init.status === \'number\' && init.status === 0) {\n        init = Object.assign({}, init, { status: 200 });\n      }\n      return new _MhR(body, init);\n    };\n    window.Response.prototype = _MhR.prototype;\n    if (_MhR.redirect) window.Response.redirect = _MhR.redirect.bind(_MhR);\n    if (_MhR.error) window.Response.error = _MhR.error.bind(_MhR);\n    window.Response.__mhStatusPatch = true;\n  } catch(e) {}\n})();"

    .line 528
    .line 529
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    .line 531
    .line 532
    const-string v3, "(function() {\n  if (window.__minhubPixiApngCompat) return;\n  window.__minhubPixiApngCompat = true;\n  var _apply = function(n) {\n    if (typeof PIXI === \'undefined\') {\n      if (n < 60) setTimeout(function() { _apply(n + 1); }, 150);\n      return;\n    }\n    // PixiApngAndGif.js was written for PIXI 4.x. Provide aliases for APIs renamed in PIXI 5.x:\n    // PIXI.ticker.{Ticker,shared} \u2192 PIXI.Ticker / PIXI.Ticker.shared\n    // PIXI.BaseTexture.fromCanvas \u2192 PIXI.BaseTexture.from\n    try {\n      if (!PIXI.ticker) { PIXI.ticker = {}; }\n      if (!PIXI.ticker.Ticker && PIXI.Ticker) { PIXI.ticker.Ticker = PIXI.Ticker; }\n      if (!PIXI.ticker.shared && PIXI.Ticker && PIXI.Ticker.shared) {\n        PIXI.ticker.shared = PIXI.Ticker.shared;\n      }\n      if (PIXI.BaseTexture && !PIXI.BaseTexture.fromCanvas && PIXI.BaseTexture.from) {\n        PIXI.BaseTexture.fromCanvas = PIXI.BaseTexture.from;\n      }\n    } catch(e) {}\n  };\n  _apply(0);\n})();"

    .line 533
    .line 534
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    .line 536
    .line 537
    const-string v3, "(function() {\n  if (window.__minhubErrCapture) return;\n  window.__minhubErrCapture = true;\n  var _log = function(msg) {\n    try { window.MinHub && window.MinHub.log && window.MinHub.log(\'[ErrCapture] \' + msg); } catch(e) {}\n  };\n\n  // 1. Patch JSON.parse to log failed parses with the first 120 chars of input.\n  //    This reveals WHAT is being parsed when \"unexpected character at position N\" fires.\n  var _origJsonParse = JSON.parse;\n  JSON.parse = function(text) {\n    try {\n      return _origJsonParse.apply(JSON, arguments);\n    } catch(e) {\n      try {\n        var preview = typeof text === \'string\'\n          ? text.substring(0, 120).replace(/[\\r\\n]/g, \'\u21b5\')\n          : String(text).substring(0, 80);\n        _log(\'JSON.parse FAIL: \' + e.message + \' | input[0:120]=\"\' + preview + \'\"\');\n        var st = e.stack ? e.stack.substring(0, 400) : \'\';\n        if (st) _log(\'stack: \' + st);\n      } catch(ex) {}\n      throw e;\n    }\n  };\n  _log(\'JSON.parse patched\');\n\n  // 2. Global onerror \u2014 catches uncaught synchronous errors not caught by MZ.\n  var _prevOnerror = window.onerror;\n  window.onerror = function(msg, src, line, col, err) {\n    try {\n      var st = err && err.stack ? err.stack.substring(0, 400) : \'\';\n      _log(\'onerror: \' + msg + \' @\' + (src||\'?\') + \':\' + line + \'\\n\' + st);\n    } catch(e) {}\n    return _prevOnerror ? _prevOnerror.apply(this, arguments) : false;\n  };\n\n  // 3. Hook Graphics.printError \u2014 MZ\'s on-screen error display path.\n  //    MZ catches exceptions in its update loop and calls Graphics.printError\n  //    instead of re-throwing, so the error never reaches window.onerror.\n  var _hookGfx = function(n) {\n    if (typeof Graphics === \'undefined\' || typeof Graphics.printError !== \'function\') {\n      if (n < 80) setTimeout(function() { _hookGfx(n + 1); }, 100);\n      return;\n    }\n    if (Graphics.__minhubPrintErrHooked) return;\n    Graphics.__minhubPrintErrHooked = true;\n    var _orig = Graphics.printError;\n    Graphics.printError = function(name, message, e) {\n      try {\n        var st = e && e.stack ? e.stack.substring(0, 600) : (e ? String(e) : \'\');\n        _log(\'printError: \' + name + \': \' + message + \'\\n\' + st);\n      } catch(ex) {}\n      return _orig.apply(this, arguments);\n    };\n    _log(\'Graphics.printError hooked\');\n  };\n  _hookGfx(0);\n\n})();"

    .line 538
    .line 539
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    const-string v3, "(function() {\n  if (window.__minhubWLPatch) return;\n  window.__minhubWLPatch = true;\n  try { window.MinHub && window.MinHub.log && window.MinHub.log(\'[MinHub] WLPatch: script loaded\'); } catch(e) {}\n  var check = function(n) {\n    if (typeof WindowLayer === \'undefined\' || typeof PIXI === \'undefined\') {\n      if (n < 80) setTimeout(function() { check(n + 1); }, 100);\n      return;\n    }\n    if (!window.__minhubActualRenderer) {\n      if (n < 80) setTimeout(function() { check(n + 1); }, 100);\n      return;\n    }\n    if (window.__minhubActualRenderer !== \'webgl1\') return;\n    WindowLayer.prototype.render = function(renderer) {\n      if (!this.visible) return;\n      PIXI.Container.prototype.render.call(this, renderer);\n    };\n    try { window.MinHub && window.MinHub.log && window.MinHub.log(\'[MinHub] WLPatch: applied renderer=\' + window.__minhubActualRenderer); } catch(e) {}\n  };\n  check(0);\n})();"

    .line 543
    .line 544
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    .line 546
    .line 547
    const-string v3, "(function() {\n  if (window.__minhubSFPatch) return;\n  window.__minhubSFPatch = true;\n  try { window.MinHub && window.MinHub.log && window.MinHub.log(\'[MinHub] SFPatch: script loaded\'); } catch(e) {}\n  var check = function(n) {\n    if (typeof PIXI === \'undefined\' || !PIXI.Container) {\n      if (n < 80) setTimeout(function() { check(n + 1); }, 100);\n      return;\n    }\n    if (!window.__minhubActualRenderer) {\n      if (n < 80) setTimeout(function() { check(n + 1); }, 100);\n      return;\n    }\n    if (window.__minhubActualRenderer !== \'webgl1\') return;\n    // Live2D (PictureLive2D.js) renders its model as PIXI.Mesh objects and implements\n    // Cubism clipping MASKS via real PIXI filters (MaskMesh.filters = [VoidFilter\u2026] +\n    // a framebuffer pass in filter.apply). Stripping those filters / bypassing\n    // renderAdvanced \u2014 which is correct for RPG Maker spriteset colour-tone filters \u2014\n    // makes the entire Live2D image invisible. RPG Maker\'s tone/overall filters live on\n    // Sprite/Spriteset_Base (PIXI.Container, NOT Mesh), so we can safely tell the two\n    // apart: skip the WebGL1 filter-stripping for PIXI.Mesh instances and let them use\n    // the real renderAdvanced so their masks work. (Verified on a real Adreno device that\n    // reports webgl1; the bypass was originally added for emulators where framebuffer\n    // filter passes fail silently.)\n    // PictureLive2D meshes extend PIXI.SimpleMesh (which extends PIXI.Mesh), so\n    // these two cover them. Deliberately NOT touching the deprecated PIXI.mesh.Mesh\n    // alias \u2014 reading it logs a PIXI deprecation warning on every render call.\n    var isMeshObj = function(o) {\n      try {\n        return (PIXI.SimpleMesh && o instanceof PIXI.SimpleMesh) ||\n               (PIXI.Mesh && o instanceof PIXI.Mesh);\n      } catch (e) { return false; }\n    };\n    // Strip filters in render() so filter-only containers skip renderAdvanced entirely.\n    var origRender = PIXI.Container.prototype.render;\n    var origRenderAdvanced = PIXI.Container.prototype.renderAdvanced;\n    PIXI.Container.prototype.render = function(renderer) {\n      if (isMeshObj(this)) { origRender.call(this, renderer); return; } // Live2D: keep mask filters\n      var f = this.filters;\n      if (f) this.filters = null;\n      origRender.call(this, renderer);\n      if (f) this.filters = f;\n    };\n    // Override renderAdvanced to skip mask/filter framebuffer ops (fail silently in WebGL1).\n    // Keeps batch.flush() calls so sprite draw order is preserved.\n    // Masked containers (e.g. DarkPlasma_MaskPicture) still call renderAdvanced via\n    // the _mask truthy check in origRender, so they end up here instead of crashing.\n    PIXI.Container.prototype.renderAdvanced = function(renderer) {\n      if (isMeshObj(this) && origRenderAdvanced) { return origRenderAdvanced.call(this, renderer); } // Live2D masks\n      renderer.batch.flush();\n      this._render(renderer);\n      for (var i = 0, j = this.children.length; i < j; ++i) {\n        this.children[i].render(renderer);\n      }\n      renderer.batch.flush();\n    };\n    // Secondary fix: also patch MZ prototype methods so new scene instances never\n    // attach filters in the first place (avoids unnecessary per-frame work).\n    if (typeof Spriteset_Base !== \'undefined\') {\n      Spriteset_Base.prototype.createOverallFilters = function() {\n        this.filters = null; this._overallColorFilter = null;\n      };\n      var _origLL = Spriteset_Base.prototype.createLowerLayer;\n      Spriteset_Base.prototype.createLowerLayer = function() {\n        _origLL.call(this);\n        if (this._baseSprite) this._baseSprite.filters = null;\n        this._baseColorFilter = null;\n      };\n      Spriteset_Base.prototype.updateOverallFilters = function() {};\n      Spriteset_Base.prototype.updateBaseFilters = function() {};\n    }\n    if (typeof Sprite !== \'undefined\') {\n      Sprite.prototype.setColorTone = function() {};\n    }\n    try { window.MinHub && window.MinHub.log && window.MinHub.log(\'[MinHub] SFPatch: applied renderer=\' + window.__minhubActualRenderer); } catch(e) {}\n  };\n  check(0);\n})();"

    .line 548
    .line 549
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    .line 551
    .line 552
    const-string v3, "(function() {\n  if (window.__minhubCgmzFilterGuard) return;\n  window.__minhubCgmzFilterGuard = true;\n  var check = function(n) {\n    if (typeof Scene_Base === \'undefined\' ||\n        typeof Scene_Base.prototype.CGMZ_handlePixiFilterCreate !== \'function\') {\n      if (n < 80) setTimeout(function() { check(n + 1); }, 100);\n      return;\n    }\n    // PIXI DisplayObject.filters defaults to null; init it before push() so the\n    // plugin (and our WebGL1 filter-stripping) can\'t crash on null.filters.push().\n    Scene_Base.prototype.CGMZ_handlePixiFilterCreate = function(filter) {\n      var f = $cgmzTemp.createPixiFilterObject(filter);\n      if (!f) return;\n      f.id = filter.id; f.target = filter.target; f.cgmzType = filter.cgmzType;\n      var addTo = function(obj) { if (obj) { if (!obj.filters) obj.filters = []; obj.filters.push(f); } };\n      switch (filter.target) {\n        case \'Scene\':       addTo(this); break;\n        case \'Spriteset\':   addTo(this._spriteset); break;\n        case \'Base Sprite\': addTo(this._spriteset && this._spriteset._baseSprite); break;\n      }\n      if (!this._cgmz_filters) this._cgmz_filters = [];\n      this._cgmz_filters.push(f);\n    };\n    try { window.MinHub && window.MinHub.log && window.MinHub.log(\'[MinHub] CGMZ filter null-guard installed\'); } catch(e) {}\n  };\n  check(0);\n})();"

    .line 553
    .line 554
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    .line 556
    .line 557
    const-string v3, "(function() {\n  if (window.__minhubMapFilterGuard) return;\n  window.__minhubMapFilterGuard = true;\n  var check = function(n) {\n    if (typeof Spriteset_Base === \'undefined\') {\n      if (n < 80) setTimeout(function() { check(n + 1); }, 100);\n      return;\n    }\n    // TRP_MapFilter sorts spriteset._baseSprite.filters; CGMZ targets spriteset.filters.\n    // PIXI defaults filters to null (and SFPatch nulls them on WebGL1) \u2192 plugins throw\n    // \"Cannot read properties of null (reading \'sort\'/\'push\')\". Keep the arrays alive\n    // each frame; only init when null so WebGL2\'s real filters are never clobbered.\n    var _origUpdate = Spriteset_Base.prototype.update;\n    Spriteset_Base.prototype.update = function() {\n      _origUpdate.call(this);\n      if (!this.filters) this.filters = [];\n      if (this._baseSprite && !this._baseSprite.filters) this._baseSprite.filters = [];\n    };\n    try { window.MinHub && window.MinHub.log && window.MinHub.log(\'[MinHub] map-filter target null-guard installed\'); } catch(e) {}\n  };\n  check(0);\n})();"

    .line 558
    .line 559
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    .line 561
    .line 562
    const-string v3, "(function() {\n  if (window.__minhubKcMirrorsGuard) return;\n  window.__minhubKcMirrorsGuard = true;\n  var check = function(n) {\n    var cls = window.KCDev && window.KCDev.Mirrors && window.KCDev.Mirrors.Sprite_Reflect;\n    if (!cls || !cls.prototype || typeof cls.prototype._refresh !== \'function\' ||\n        typeof Sprite_Character === \'undefined\') {\n      if (n < 80) setTimeout(function() { check(n + 1); }, 100);\n      return;\n    }\n    // _refresh runs from an async bitmap-load callback; after a map transfer the\n    // reflected parent sprite is destroyed (transform === null) and reading\n    // _parentSprite.pivot throws. Re-implement with a destroyed-parent guard.\n    cls.prototype._refresh = function() {\n      Sprite_Character.prototype._refresh.call(this);\n      var ps = this._parentSprite;\n      if (ps && ps.transform) { this.pivot.set(ps.pivot.x, ps.pivot.y); }\n    };\n    try { window.MinHub && window.MinHub.log && window.MinHub.log(\'[MinHub] KC_Mirrors reflect null-guard installed\'); } catch(e) {}\n  };\n  check(0);\n})();"

    .line 563
    .line 564
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    const-string v3, "(function() {\n  if (window.__minhubRecollectionGuard) return;\n  window.__minhubRecollectionGuard = true;\n  var check = function(n) {\n    if (typeof Game_Interpreter === \'undefined\' || typeof DataManager === \'undefined\' ||\n        typeof Game_Interpreter.prototype.command117 !== \'function\') {\n      if (n < 80) setTimeout(function() { check(n + 1); }, 100);\n      return;\n    }\n    // Only act when RecollectionSceneForMZ is present (it defines loadPlayedCommonId).\n    if (typeof DataManager.loadPlayedCommonId !== \'function\') return;\n    if (Game_Interpreter.prototype.__mhRecollectionGuarded) return;\n    Game_Interpreter.prototype.__mhRecollectionGuarded = true;\n    var _orig = Game_Interpreter.prototype.command117;\n    Game_Interpreter.prototype.command117 = function(params) {\n      // _playedCommonIds is null until loadObject resolves; on the MinHub storage\n      // bridge it resolves null (no prior save) instead of rejecting \u2192 null.push().\n      if (DataManager._playedCommonIds == null) DataManager._playedCommonIds = [];\n      return _orig.apply(this, arguments);\n    };\n    try { window.MinHub && window.MinHub.log && window.MinHub.log(\'[MinHub] Recollection playedCommonIds null-guard installed\'); } catch(e) {}\n  };\n  check(0);\n})();"

    .line 568
    .line 569
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    .line 571
    .line 572
    const-string v3, "(function() {\n  if (window.__minhubWBToneGuard) return;\n  window.__minhubWBToneGuard = true;\n  var check = function(n) {\n    if (typeof Window_Base === \'undefined\') {\n      if (n < 80) setTimeout(function() { check(n + 1); }, 100);\n      return;\n    }\n    var _origTone = Window_Base.prototype.updateTone;\n    Window_Base.prototype.updateTone = function() {\n      if (typeof $gameSystem !== \'undefined\' && $gameSystem) _origTone.call(this);\n    };\n  };\n  check(0);\n})();"

    .line 573
    .line 574
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    .line 576
    .line 577
    const-string v3, "(function() {\n  if (window.__minhubMzGfxGuard) return;\n  window.__minhubMzGfxGuard = true;\n  var apply = function(n) {\n    if (typeof Graphics === \'undefined\') {\n      if (n < 80) setTimeout(function() { apply(n + 1); }, 100);\n      return;\n    }\n    if (Graphics.__minhubDsmGuarded) return;\n    Graphics.__minhubDsmGuarded = true;\n    try {\n      var dsm = Graphics._defaultStretchMode;\n      Object.defineProperty(Graphics, \'_defaultStretchMode\', {\n        get: function() {\n          return (typeof dsm === \'function\') ? dsm : function() { return dsm !== false; };\n        },\n        set: function(v) { dsm = v; },\n        configurable: true,\n        enumerable: true\n      });\n      try { window.MinHub && window.MinHub.log && window.MinHub.log(\'[MinHub] GfxGuard: installed dsm=\' + (typeof dsm)); } catch(e) {}\n    } catch (e) {\n      try { window.MinHub && window.MinHub.log && window.MinHub.log(\'[MinHub] GfxGuard: defineProperty failed \' + e); } catch(ee) {}\n    }\n  };\n  apply(0);\n})();"

    .line 578
    .line 579
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    .line 581
    .line 582
    const-string v3, "(function() {\n  if (window.__minhubXhrCaseNorm) return;\n  window.__minhubXhrCaseNorm = true;\n  try {\n    var _open = XMLHttpRequest.prototype.open;\n    XMLHttpRequest.prototype.open = function() {\n      var args = Array.prototype.slice.call(arguments);\n      if (typeof args[1] === \'string\' && /\\.(tmj|tsj)$/i.test(args[1])) {\n        var slash = args[1].lastIndexOf(\'/\');\n        if (slash >= 0) {\n          args[1] = args[1].substring(0, slash + 1) + args[1].substring(slash + 1).toLowerCase();\n        } else {\n          args[1] = args[1].toLowerCase();\n        }\n      }\n      return _open.apply(this, args);\n    };\n  } catch(e) {}\n})();"

    .line 583
    .line 584
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    .line 586
    .line 587
    const-string v3, "try {\n  if (window.SceneManager) {\n    window.SceneManager.isGameActive = function() { return true; };\n  }\n} catch (e) {}"

    .line 588
    .line 589
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    sget-object v3, LG1/p;->l:LG1/p;

    .line 593
    .line 594
    invoke-virtual {v11, v3}, LG1/s;->b(LG1/p;)Z

    .line 595
    .line 596
    .line 597
    move-result v4

    .line 598
    if-eqz v4, :cond_9

    .line 599
    .line 600
    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    const-string v3, "\n                if (window.__minhubUtilities.mz_audio_unlock) {\n                  try {\n                    var ac = window.AudioContext || window.webkitAudioContext;\n                    if (ac && !window.__minhubAudioUnlock) {\n                      window.__minhubAudioUnlock = true;\n                      var audioCtx = new ac();\n                      var unlock = function() {\n                        try { audioCtx.resume(); } catch (e) {}\n                        document.removeEventListener(\'touchstart\', unlock, true);\n                        document.removeEventListener(\'pointerdown\', unlock, true);\n                      };\n                      document.addEventListener(\'touchstart\', unlock, true);\n                      document.addEventListener(\'pointerdown\', unlock, true);\n                    }\n                  } catch (e) {}\n                }\n            "

    .line 604
    .line 605
    invoke-static {v3}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v3

    .line 609
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    .line 611
    .line 612
    :cond_9
    sget-object v3, LG1/p;->m:LG1/p;

    .line 613
    .line 614
    invoke-virtual {v11, v3}, LG1/s;->b(LG1/p;)Z

    .line 615
    .line 616
    .line 617
    move-result v4

    .line 618
    if-eqz v4, :cond_a

    .line 619
    .line 620
    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 621
    .line 622
    .line 623
    const-string v3, "\n                if (window.__minhubUtilities.mz_effect_manager_guard && !window.__minhubEffectManagerGuard) {\n                  window.__minhubEffectManagerGuard = true;\n                  try {\n                    if (window.EffectManager && typeof window.EffectManager.checkErrors === \'function\') {\n                      var originalCheckErrors = window.EffectManager.checkErrors.bind(window.EffectManager);\n                      window.EffectManager.checkErrors = function() {\n                        try {\n                          return originalCheckErrors();\n                        } catch (e) {\n                          return null;\n                        }\n                      };\n                    }\n                  } catch (e) {}\n                }\n            "

    .line 624
    .line 625
    invoke-static {v3}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v3

    .line 629
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    .line 631
    .line 632
    :cond_a
    sget-object v3, LG1/p;->n:LG1/p;

    .line 633
    .line 634
    invoke-virtual {v11, v3}, LG1/s;->b(LG1/p;)Z

    .line 635
    .line 636
    .line 637
    move-result v4

    .line 638
    if-eqz v4, :cond_b

    .line 639
    .line 640
    invoke-static {v3}, Lcom/bumptech/glide/c;->y(LG1/p;)Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v3

    .line 644
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    .line 646
    .line 647
    :cond_b
    sget-object v3, LG1/p;->o:LG1/p;

    .line 648
    .line 649
    invoke-virtual {v11, v3}, LG1/s;->b(LG1/p;)Z

    .line 650
    .line 651
    .line 652
    move-result v4

    .line 653
    if-eqz v4, :cond_c

    .line 654
    .line 655
    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    const-string v3, "\n        if (window.__minhubUtilities.mz_mobile_stretch && !window.__minhubRpgPatch) {\n          window.__minhubRpgPatch = true;\n          try {\n            if (window.Utils && typeof window.Utils.isMobileDevice === \'function\') {\n              window.Utils.isMobileDevice = function() { return true; };\n            }\n            if (window.Graphics && typeof window.Graphics._defaultStretchMode === \'function\') {\n              window.Graphics._defaultStretchMode = function() { return true; };\n            }\n          } catch (e) {}\n        }\n    "

    .line 659
    .line 660
    invoke-static {v3}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v3

    .line 664
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    .line 666
    .line 667
    :cond_c
    const-string v3, "RMMZ"

    .line 668
    .line 669
    invoke-static {v3}, Lcom/bumptech/glide/c;->v(Ljava/lang/String;)Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v3

    .line 673
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    .line 675
    .line 676
    sget-object v3, LG1/p;->k:LG1/p;

    .line 677
    .line 678
    invoke-virtual {v11, v3}, LG1/s;->b(LG1/p;)Z

    .line 679
    .line 680
    .line 681
    move-result v4

    .line 682
    if-eqz v4, :cond_d

    .line 683
    .line 684
    invoke-static {v3}, Lcom/bumptech/glide/c;->W(LG1/p;)Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object v3

    .line 688
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    .line 690
    .line 691
    :cond_d
    if-lez v1, :cond_e

    .line 692
    .line 693
    new-instance v3, Ljava/lang/StringBuilder;

    .line 694
    .line 695
    const-string v4, "\n        (function() {\n          if (window.__minhubFontSizeMZ) return;\n          window.__minhubFontSizeMZ = true;\n          var SIZE = "

    .line 696
    .line 697
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 698
    .line 699
    .line 700
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 701
    .line 702
    .line 703
    const-string v1, ";\n          var _apply = function() {\n            try {\n              // Patch prototype so every new Game_System() (new game / load) returns SIZE.\n              // VisuMZ_0_CoreEngine and VisuMZ_1_MessageCore both call $gameSystem.mainFontSize().\n              if (typeof Game_System !== \'undefined\') {\n                Game_System.prototype.mainFontSize = function() { return SIZE; };\n              }\n              // Also override the current instance in case it was already created.\n              if (typeof $gameSystem !== \'undefined\' && $gameSystem) {\n                $gameSystem.mainFontSize = function() { return SIZE; };\n              }\n            } catch(e) {}\n          };\n          var _install = function(attempt) {\n            if (typeof Scene_Boot === \'undefined\') {\n              if (attempt < 40) setTimeout(function() { _install(attempt + 1); }, 200);\n              return;\n            }\n            _apply();\n            var _orig = Scene_Boot.prototype.create;\n            Scene_Boot.prototype.create = function() {\n              _orig.call(this);\n              _apply();\n            };\n          };\n          _install(0);\n        })();\n    "

    .line 704
    .line 705
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v1

    .line 712
    invoke-static {v1}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object v1

    .line 716
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    .line 718
    .line 719
    :cond_e
    const-string v1, "(function() {\n  if (window.__minhubSceneTitleGuard) return;\n  window.__minhubSceneTitleGuard = true;\n  var _install = function(n) {\n    if (typeof Scene_Title === \'undefined\' || typeof Window_Base === \'undefined\') {\n      if (n < 80) setTimeout(function() { _install(n + 1); }, 100);\n      return;\n    }\n    // Guard Scene_Title.isBusy \u2014 _commandWindow is undefined if createCommandWindow threw.\n    // Without this, FakeLoad keeps the scene alive and isBusy crashes every frame.\n    var _origIsBusy = Scene_Title.prototype.isBusy;\n    Scene_Title.prototype.isBusy = function() {\n      if (!this._commandWindow) return Scene_Base.prototype.isBusy.call(this);\n      return _origIsBusy.call(this);\n    };\n    // Guard Window_Base methods that call $gameSystem \u2014 may be undefined after a\n    // failed DataManager.extractSaveContents set it to the contents.system property.\n    var _origFH = Window_Base.prototype.fittingHeight;\n    Window_Base.prototype.fittingHeight = function(numLines) {\n      if (!window.$gameSystem) return numLines * 36 + 24;\n      return _origFH.call(this, numLines);\n    };\n    var _origLH = Window_Base.prototype.lineHeight;\n    if (typeof _origLH === \'function\') {\n      Window_Base.prototype.lineHeight = function() {\n        if (!window.$gameSystem) return 36;\n        return _origLH.call(this);\n      };\n    }\n  };\n  _install(0);\n})();"

    .line 720
    .line 721
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    .line 723
    .line 724
    const-string v1, "(function() {\n  if (window.__minhubDotMoveDiagGuard) return;\n  window.__minhubDotMoveDiagGuard = true;\n  var check = function(n) {\n    var U = window.DotMoveSystem && window.DotMoveSystem.DotMoveUtils;\n    if (!U || typeof U.direction2Axis !== \'function\') {\n      if (n < 80) setTimeout(function() { check(n + 1); }, 100);\n      return;\n    }\n    if (U.direction2Axis.__mhPatched) return;\n    var _orig = U.direction2Axis;\n    var _wrapped = function(direction4) {\n      // direction2Axis() is cardinal-only (2/4/6/8) and throws for diagonals.\n      // triggerTouchAction() passes the player\'s live facing direction, which is\n      // diagonal (1/3/7/9) under 8-directional movement. Diagonal movement changes\n      // both X and Y, so either axis choice reaches the same \"don\'t early-return\"\n      // branch in the caller as the real axis would \u2014 default diagonals to \"x\".\n      if (direction4 === 1 || direction4 === 3 || direction4 === 7 || direction4 === 9) {\n        return \"x\";\n      }\n      return _orig.call(this, direction4);\n    };\n    _wrapped.__mhPatched = true;\n    U.direction2Axis = _wrapped;\n    try { window.MinHub && window.MinHub.log && window.MinHub.log(\'[MinHub] DotMoveSystem diagonal direction2Axis guard installed\'); } catch(e) {}\n  };\n  check(0);\n})();"

    .line 725
    .line 726
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    .line 728
    .line 729
    const-string v1, "(function() {\n  if (window.__minhubScreenCaptureGuard) return;\n  window.__minhubScreenCaptureGuard = true;\n  var _log = function(msg) {\n    try { window.MinHub && window.MinHub.log && window.MinHub.log(\'[MinHub] \' + msg); } catch(e) {}\n  };\n  var check = function(n) {\n    if (typeof StorageManager === \'undefined\' || typeof StorageManager.saveImg !== \'function\') {\n      if (n < 80) setTimeout(function() { check(n + 1); }, 100);\n      return;\n    }\n    if (StorageManager.saveImg.__mhPatched) return;\n    var _wrapped = function(fileName, format, data) {\n      // MakeScreenCapture.js\'s own saveImg() only calls saveImgToLocalFile() when\n      // isLocalMode() is true; MinHub\'s storage bridge always reports it false (the\n      // save-game forage intercept needs that). But saveImgToLocalFile() itself just\n      // goes through StorageManager.fsMkdir/fsWriteFile (RPG Maker MZ core), which\n      // route through the require(\'fs\') polyfill (GameHtmlBootstrap.kt) \u2014 and that now\n      // really persists to the game\'s own folder. So call it directly instead of\n      // gating on isLocalMode(), skipping the plugin\'s PluginManagerEx.throwError().\n      try {\n        this.saveImgToLocalFile(fileName + \'.\' + format, data);\n      } catch (e) {\n        _log(\'saveImg failed: \' + e);\n      }\n    };\n    _wrapped.__mhPatched = true;\n    StorageManager.saveImg = _wrapped;\n    _log(\'StorageManager.saveImg routed to real local-file save\');\n  };\n  check(0);\n})();"

    .line 730
    .line 731
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    .line 733
    .line 734
    const-string v1, "(function() {\n  if (window.__mhLive2DGuard) return;\n  window.__mhLive2DGuard = true;\n  var _log = function(msg) {\n    try { window.MinHub && window.MinHub.log && window.MinHub.log(\'[MH-FIX] \' + msg); } catch(e) {}\n  };\n  // Poll until PictureLive2D.js has defined PIXI.Live2D.\n  // Games without this plugin never define it, so the poll times out harmlessly.\n  var _install = function(n) {\n    if (typeof PIXI === \'undefined\' || !PIXI.Live2D || !PIXI.Live2D.prototype) {\n      if (n < 80) setTimeout(function() { _install(n + 1); }, 100);\n      return;\n    }\n    if (PIXI.Live2D.prototype.__mhLive2DGuarded) return;\n    PIXI.Live2D.prototype.__mhLive2DGuarded = true;\n\n    // PRIMARY FIX: patch Live2DCubismCore.Model to inject empty-but-valid stubs\n    // for drawables/parameters/parts when the SDK fails to initialize them on\n    // Android WebView 91.  With count=0 the downstream loops simply don\'t execute,\n    // so createAnimation/snapshot/Physics/Direction all run safely with empty data.\n    if (typeof Live2DCubismCore !== \'undefined\' && Live2DCubismCore.Model && !Live2DCubismCore.Model.__mhPatched) {\n      Live2DCubismCore.Model.__mhPatched = true;\n      var _OrigModel = Live2DCubismCore.Model;\n      var _makeSafeModel = function(m) {\n        if (!m) return m;\n        if (!m.drawables) {\n          // A missing drawables means Cubism core failed to build the model (e.g. moc3\n          // too new for the bundled core). Stub empty so the game keeps running instead\n          // of crashing \u2014 the Live2D simply renders nothing.\n          m.drawables = {\n            count: 0, ids: [], opacities: new Float32Array(0),\n            renderOrders: [], textureIndices: [], vertexCounts: [],\n            vertexPositions: [], vertexUvs: [], indices: [],\n            constantFlags: new Uint8Array(0), dynamicFlags: new Uint8Array(0),\n            multiplyColors: new Float32Array(0), screenColors: new Float32Array(0),\n            masks: [], resetDynamicFlags: function() {}\n          };\n        }\n        if (!m.parameters) {\n          m.parameters = {\n            count: 0, ids: [], defaultValues: [],\n            values: new Float32Array(0),\n            minimumValues: [], maximumValues: []\n          };\n        }\n        if (!m.parts) {\n          m.parts = { count: 0, ids: [], opacities: new Float32Array(0) };\n        }\n        return m;\n      };\n      Live2DCubismCore.Model = function(moc) {\n        var m;\n        try { m = new _OrigModel(moc); } catch(e) { _log(\'Live2D Model ctor threw: \' + e); m = {}; }\n        return _makeSafeModel(m);\n      };\n      // Preserve the original\'s static members (e.g. Model.fromMoc) \u2014 replacing the\n      // function with only .prototype copied would otherwise drop them.\n      for (var _k in _OrigModel) { try { Live2DCubismCore.Model[_k] = _OrigModel[_k]; } catch(e) {} }\n      Live2DCubismCore.Model.prototype = _OrigModel.prototype;\n      Live2DCubismCore.Model.__mhPatched = true;\n      _log(\'Live2DCubismCore.Model patched with safe stubs\');\n    }\n\n    // DEFENSE-IN-DEPTH: per-method guards in case model patch runs too late or\n    // a different code path constructs the model before the patch is applied.\n    var _origCreateMesh = PIXI.Live2D.prototype.createMesh;\n    PIXI.Live2D.prototype.createMesh = function() {\n      if (!this._model || !this._model.drawables) { _log(\'Live2D.createMesh skipped\'); return; }\n      return _origCreateMesh.apply(this, arguments);\n    };\n    var _origCreateMask = PIXI.Live2D.prototype.createMask;\n    PIXI.Live2D.prototype.createMask = function() {\n      if (!this._model || !this._model.drawables) { _log(\'Live2D.createMask skipped\'); return; }\n      return _origCreateMask.apply(this, arguments);\n    };\n    // _noopAnim needs timeScale/mixTime/tracks/_lastValues because snapshot() reads\n    // those properties even when _animation is our stub (it only null-guards on !_animation).\n    var _noopEntry = { timeScale: 1, weight: 1, track: { entries: [] } };\n    var _noopAnim = {\n      timeScale: 1, mixTime: {}, tracks: [], _lastValues: [],\n      addListener: function(){}, removeListener: function(){},\n      setTimeScale: function(){}, setWeight: function(){},\n      setDefaultMix: function(){}, setMix: function(){},\n      setAutoEyeBlink: function(){}, clearAnimation: function(){},\n      setAnimation: function(){ return _noopEntry; },\n      addAnimation: function(){ return _noopEntry; }\n    };\n    var _origCreateAnim = PIXI.Live2D.prototype.createAnimation;\n    PIXI.Live2D.prototype.createAnimation = function() {\n      if (!this._model || !this._model.parameters) {\n        _log(\'Live2D.createAnimation skipped \u2014 stub installed\');\n        this._animation = _noopAnim;\n        return;\n      }\n      return _origCreateAnim.apply(this, arguments);\n    };\n    // snapshot() iterates this._direction.expressions; stub needs that property.\n    var _noopDir = {\n      expressions: [],\n      setExpression: function(){}, clearExpression: function(){},\n      setCustomExpression: function(){}\n    };\n    var _origCreateDir = PIXI.Live2D.prototype.createDirection;\n    PIXI.Live2D.prototype.createDirection = function() {\n      if (!this._model || !this._model.parameters) {\n        _log(\'Live2D.createDirection skipped \u2014 stub installed\');\n        this._direction = _noopDir;\n        return;\n      }\n      return _origCreateDir.apply(this, arguments);\n    };\n    var _origCreatePhys = PIXI.Live2D.prototype.createPhysics;\n    PIXI.Live2D.prototype.createPhysics = function() {\n      if (!this._model || !this._model.parameters) { _log(\'Live2D.createPhysics skipped\'); return; }\n      return _origCreatePhys.apply(this, arguments);\n    };\n    var _origCreateLip = PIXI.Live2D.prototype.createLipSync;\n    PIXI.Live2D.prototype.createLipSync = function() {\n      if (!this._model || !this._model.parameters) { _log(\'Live2D.createLipSync skipped\'); return; }\n      return _origCreateLip.apply(this, arguments);\n    };\n    var _origUpdate = PIXI.Live2D.prototype.update;\n    if (typeof _origUpdate === \'function\') {\n      PIXI.Live2D.prototype.update = function() {\n        if (!this._model || !this._model.drawables) return;\n        return _origUpdate.apply(this, arguments);\n      };\n    }\n    // snapshot() is called every frame via FlyCat update(); wrap it so any\n    // residual crash from stubs returns null (handled by restore()).\n    var _origSnapshot = PIXI.Live2D.prototype.snapshot;\n    if (typeof _origSnapshot === \'function\') {\n      PIXI.Live2D.prototype.snapshot = function() {\n        if (!this._model || !this._model.parameters) return null;\n        try { return _origSnapshot.apply(this, arguments); } catch(e) { _log(\'snapshot err: \' + e); return null; }\n      };\n    }\n    _log(\'Live2D guards installed (Model+Mesh/Mask/Anim/Dir/Phys/Lip/update/snapshot)\');\n  };\n  _install(0);\n})();"

    .line 735
    .line 736
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    .line 738
    .line 739
    const-string v1, "(function() {\n  if (window.__minhubTouchDiag) return;\n  window.__minhubTouchDiag = true;\n  var _log = function(msg) {\n    try { window.MinHub && window.MinHub.log && window.MinHub.log(\'[TouchDiag] \' + msg); } catch(e) {}\n  };\n  var _install = function(attempt) {\n    if (typeof TouchInput === \'undefined\' || typeof Graphics === \'undefined\') {\n      if (attempt < 80) setTimeout(function() { _install(attempt + 1); }, 100);\n      return;\n    }\n    if (window.__minhubTouchDiagInstalled) return;\n    window.__minhubTouchDiagInstalled = true;\n    document.addEventListener(\'touchend\', function(e) {\n      try {\n        var t = e.changedTouches && e.changedTouches[0];\n        if (!t) return;\n        var canvas = Graphics._canvas || document.querySelector(\'canvas\');\n        var rect = canvas ? canvas.getBoundingClientRect() : null;\n        _log(\'raw: clientX=\' + Math.round(t.clientX) + \' clientY=\' + Math.round(t.clientY) +\n          \' pageX=\' + Math.round(t.pageX) + \' pageY=\' + Math.round(t.pageY));\n        if (rect) {\n          _log(\'canvas: left=\' + Math.round(rect.left) + \' top=\' + Math.round(rect.top) +\n            \' w=\' + Math.round(rect.width) + \' h=\' + Math.round(rect.height));\n        }\n        _log(\'realScale=\' + Graphics._realScale +\n          \' logical=\' + Graphics.width + \'x\' + Graphics.height);\n        setTimeout(function() {\n          try {\n            _log(\'TouchInput: x=\' + TouchInput.x + \' y=\' + TouchInput.y);\n            if (typeof $gameScreen !== \'undefined\' && $gameScreen) {\n              var zs = $gameScreen.zoomScale();\n              var zx = $gameScreen.zoomX();\n              var zy = $gameScreen.zoomY();\n              _log(\'zoom: scale=\' + zs + \' zoomX=\' + zx + \' zoomY=\' + zy);\n              var dx = $gameScreen.disConvertPositionX ? $gameScreen.disConvertPositionX(TouchInput.x) : \'N/A\';\n              var dy = $gameScreen.disConvertPositionY ? $gameScreen.disConvertPositionY(TouchInput.y) : \'N/A\';\n              _log(\'disConvert: x=\' + dx + \' y=\' + dy);\n              var pics = $gameScreen._pictures;\n              if (pics) {\n                for (var i = 0; i < pics.length; i++) {\n                  var p = pics[i];\n                  if (p && p.name && p.name()) {\n                    _log(\'pic[\' + i + \']: name=\' + p.name() +\n                      \' x=\' + Math.round(p.x()) + \' y=\' + Math.round(p.y()) +\n                      \' origin=\' + p.origin());\n                  }\n                }\n              }\n            }\n          } catch(er) { _log(\'postDelay err: \' + er); }\n        }, 50);\n      } catch(e) { _log(\'touchend err: \' + e); }\n    }, { passive: true });\n    _log(\'installed\');\n  };\n  _install(0);\n})();"

    .line 740
    .line 741
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    .line 743
    .line 744
    const-string v1, "(function() {\n    if (typeof Game_Player === \'undefined\') return;\n    if (Game_Player.prototype.__mh8dir) return;\n    if (typeof Game_Player.prototype.isMoveDiagonally === \'function\') return;\n    Game_Player.prototype.__mh8dir = true;\n    Game_Player.prototype.moveByInput = function() {\n        if (!this.isMoving() && this.canMove()) {\n            var dir = Input.dir8;\n            if (dir > 0) {\n                $gameTemp.clearDestination();\n                if (dir === 1 || dir === 3 || dir === 7 || dir === 9) {\n                    var horz = (dir === 1 || dir === 7) ? 4 : 6;\n                    var vert = (dir === 1 || dir === 3) ? 2 : 8;\n                    this.moveDiagonally(horz, vert);\n                } else {\n                    this.moveStraight(dir);\n                }\n            } else if ($gameTemp.isDestinationValid()) {\n                var x = $gameTemp.destinationX();\n                var y = $gameTemp.destinationY();\n                var d = this.findDirectionTo(x, y);\n                if (d > 0) this.moveStraight(d);\n            }\n        }\n    };\n})();"

    .line 745
    .line 746
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    .line 748
    .line 749
    goto/16 :goto_5

    .line 750
    .line 751
    :pswitch_8
    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 752
    .line 753
    .line 754
    new-instance v0, Ljava/util/ArrayList;

    .line 755
    .line 756
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 757
    .line 758
    .line 759
    const-string v3, "if (typeof window.process === \'undefined\') { window.process = {}; }\nwindow.process.versions   = window.process.versions   || {};\nwindow.process.argv       = window.process.argv       || [];\nwindow.process.mainModule = window.process.mainModule || { filename: \'index.html\' };"

    .line 760
    .line 761
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    .line 763
    .line 764
    const-string v3, "try {\n  if (window.AudioManager && window.WebAudio) {\n    window.AudioManager.audioFileExt = function() { return \'.ogg\'; };\n  }\n} catch (e) {}"

    .line 765
    .line 766
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    .line 768
    .line 769
    const-string v3, "(function() {\n  if (window.__minhubMvStability) return;\n  window.__minhubMvStability = true;\n\n  // AudioStreaming.js XHR Cordova path: xhr.status=0 for file:// URLs \u2192 Chrome\n  // throws RangeError on new Response(body,{status:0}) (must be 200-599).\n  // Map status 0 to 200 (not 404) so response.ok=true and the plugin proceeds\n  // with the audio data rather than treating it as a failed load.\n  try {\n    if (typeof Response !== \'undefined\' && !Response.__mhStatusPatch) {\n      var _MhR = Response;\n      window.Response = function(body, init) {\n        if (init && typeof init.status === \'number\' && init.status === 0) {\n          init = Object.assign({}, init, { status: 200 });\n        }\n        return new _MhR(body, init);\n      };\n      window.Response.prototype = _MhR.prototype;\n      if (_MhR.redirect) window.Response.redirect = _MhR.redirect.bind(_MhR);\n      if (_MhR.error) window.Response.error = _MhR.error.bind(_MhR);\n      window.Response.__mhStatusPatch = true;\n    }\n  } catch(e) {}\n\n  try { if (typeof window.Khas === \'undefined\') window.Khas = Object.freeze({}); } catch(e) {}\n  var _applyPixi = function(n) {\n    if (typeof PIXI === \'undefined\' || !PIXI.settings) {\n      if (n < 20) setTimeout(function() { _applyPixi(n + 1); }, 100);\n      return;\n    }\n    try { PIXI.settings.CAN_UPLOAD_SAME_BUFFER = false; } catch(e) {}\n  };\n  _applyPixi(0);\n  var _applyRH = function(n) {\n    if (typeof ResourceHandler === \'undefined\') {\n      if (n < 40) setTimeout(function() { _applyRH(n + 1); }, 150);\n      return;\n    }\n    try { ResourceHandler._defaultRetryInterval = []; } catch(e) {}\n  };\n  _applyRH(0);\n})();"

    .line 770
    .line 771
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    .line 773
    .line 774
    const-string v3, "(function() {\n  if (window.__minhubQuickRotateHue) return;\n  window.__minhubQuickRotateHue = true;\n  var _install = function(n) {\n    if (typeof Bitmap === \'undefined\') {\n      if (n < 40) setTimeout(function() { _install(n + 1); }, 200);\n      return;\n    }\n    Bitmap.prototype.rotateHue = function(offset) {\n      if (offset && this.width > 0 && this.height > 0) {\n        var context = this._context;\n        context.filter = \'hue-rotate(\' + (((offset % 360) + 360) % 360) + \'deg)\';\n        context.drawImage(this._canvas, 0, 0);\n        context.filter = \'\';\n        this._setDirty();\n      }\n    };\n  };\n  _install(0);\n})();"

    .line 775
    .line 776
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 777
    .line 778
    .line 779
    const-string v3, "(function() {\n  if (window.__minhubSimRequest) return;\n  window.__minhubSimRequest = true;\n  var _install = function(n) {\n    if (typeof RequestQueue === \'undefined\') {\n      if (n < 40) setTimeout(function() { _install(n + 1); }, 200);\n      return;\n    }\n    RequestQueue.prototype.update = function() {\n      if (this._queue.length === 0) return;\n      this._queue = this._queue.filter(function(item) {\n        return item.value.isRequestReady();\n      });\n      this._queue.forEach(function(item) { item.value.startRequest(); });\n    };\n  };\n  _install(0);\n})();"

    .line 780
    .line 781
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    .line 783
    .line 784
    const-string v3, "(function() {\n  if (window.__minhubAudioCache) return;\n  window.__minhubAudioCache = true;\n  var _install = function(n) {\n    if (typeof WebAudio === \'undefined\' || !WebAudio.prototype || typeof Decrypter === \'undefined\') {\n      if (n < 40) setTimeout(function() { _install(n + 1); }, 200);\n      return;\n    }\n    if (WebAudio.__minhubCacheHooked) return;\n    WebAudio.__minhubCacheHooked = true;\n    WebAudio._cache = {};\n    var _trim = function() {\n      var keys = Object.keys(WebAudio._cache);\n      if (keys.length > 64) {\n        var oldest = null, oldestT = Infinity;\n        for (var i = 0; i < keys.length; i++) {\n          var e = WebAudio._cache[keys[i]];\n          if (e.touch < oldestT) { oldestT = e.touch; oldest = keys[i]; }\n        }\n        if (oldest) delete WebAudio._cache[oldest];\n      }\n    };\n    WebAudio.prototype._load = function(url) {\n      if (!WebAudio._context) return;\n      var entry = WebAudio._cache[url];\n      if (entry) {\n        entry.touch = Date.now();\n        this._onXhrLoad({ response: entry.response.slice(0) });\n        return;\n      }\n      var xhr = new XMLHttpRequest();\n      var _origUrl = url;\n      var reqUrl = (Decrypter.hasEncryptedAudio) ? Decrypter.extToEncryptExt(url) : url;\n      xhr.open(\'GET\', reqUrl);\n      xhr.responseType = \'arraybuffer\';\n      var self = this;\n      xhr.onload = function() {\n        // file:// returns status 0 on success; treat <400 OR 0 as ok.\n        if (xhr.status < 400 || xhr.status === 0) {\n          try {\n            WebAudio._cache[_origUrl] = { url: _origUrl, response: xhr.response.slice(0), touch: Date.now() };\n            _trim();\n          } catch(e) {}\n          self._onXhrLoad(xhr);\n        }\n      };\n      xhr.onerror = (this._loader || function() { self._hasError = true; });\n      xhr.send();\n    };\n    try { window.MinHub && window.MinHub.log && window.MinHub.log(\'[AudioCache] installed\'); } catch(e) {}\n  };\n  _install(0);\n})();"

    .line 785
    .line 786
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    .line 788
    .line 789
    const-string v3, "(function() {\n  if (window.__minhubMvPluginCompat) return;\n  window.__minhubMvPluginCompat = true;\n\n  // Community_Basic: force renderingMode=\'webgl\' before the plugin evaluates it.\n  // Patch PluginManager.setup so the parameter is already corrected when the plugin file loads.\n  var _patchPluginParams = function(n) {\n    if (typeof PluginManager === \'undefined\' || typeof PluginManager.setup !== \'function\') {\n      if (n < 40) setTimeout(function() { _patchPluginParams(n + 1); }, 150);\n      return;\n    }\n    if (window.__minhubPluginParamsPatched) return;\n    window.__minhubPluginParamsPatched = true;\n    var _origSetup = PluginManager.setup;\n    PluginManager.setup = function(plugins) {\n      try {\n        if (Array.isArray(plugins)) {\n          plugins.forEach(function(p, i) {\n            if (p && p.name === \'Community_Basic\' && p.parameters && p.parameters[\'renderingMode\']) {\n              plugins[i].parameters[\'renderingMode\'] = \'webgl\';\n            }\n          });\n        }\n      } catch(e) {}\n      return _origSetup.call(this, plugins);\n    };\n  };\n  _patchPluginParams(0);\n\n  // Patches requiring game classes \u2014 polled until Sprite + PIXI are ready.\n  var _installPostLoad = function(n) {\n    if (typeof Sprite === \'undefined\' || typeof PIXI === \'undefined\') {\n      if (n < 60) setTimeout(function() { _installPostLoad(n + 1); }, 150);\n      return;\n    }\n\n    // EventEffects: updateTone crash when character.tone() returns undefined/non-Array.\n    try {\n      if (typeof Sprite_Character !== \'undefined\' &&\n          typeof Sprite_Character.prototype.updateTone === \'function\' &&\n          !Sprite_Character.prototype.updateTone.__mhPatched) {\n        var _origTone = Sprite_Character.prototype.updateTone;\n        Sprite_Character.prototype.updateTone = function() {\n          try {\n            var tone = this._character && this._character.tone && this._character.tone();\n            if (Array.isArray(tone) && !this._colorTone.equals(tone)) {\n              this._colorTone = tone.slice();\n            }\n          } catch(e) {}\n        };\n        Sprite_Character.prototype.updateTone.__mhPatched = true;\n      }\n    } catch(e) {}\n\n    // PIXI 4.5.4 VAO crash: initVao() unconditionally adds aTextureCoord even when\n    // the shader does not declare that attribute, producing a GL error that blacks out the scene.\n    try {\n      var ver = (PIXI.VERSION || \'\').split(\'.\').map(Number);\n      if (ver[0] === 4 && (ver[1] < 5 || (ver[1] === 5 && ver[2] <= 4))) {\n        if (PIXI.Quad && PIXI.Quad.prototype.initVao && !PIXI.Quad.prototype.initVao.__mhPatched) {\n          PIXI.Quad.prototype.initVao = function(shader) {\n            var x = this.vao.clear()\n              .addIndex(this.indexBuffer)\n              .addAttribute(this.vertexBuffer, shader.attributes.aVertexPosition, this.gl.FLOAT, false, 4 * 4, 0);\n            if (shader.attributes.aTextureCoord) {\n              x.addAttribute(this.vertexBuffer, shader.attributes.aTextureCoord, this.gl.FLOAT, false, 4 * 4, 2 * 4);\n            }\n          };\n          PIXI.Quad.prototype.initVao.__mhPatched = true;\n        }\n      }\n    } catch(e) {}\n\n    // PIXI \u2264 4.8.9 broader VAO safety net: wrap glCore VertexArrayObject.addAttribute\n    // in try/catch. Plugins that bind attributes a shader did not declare throw a GL\n    // error here that propagates and blacks out the whole scene. Swallowing it keeps\n    // the rest of the frame rendering (Maldives uses the same guard).\n    try {\n      var ver2 = (PIXI.VERSION || \'\').split(\'.\').map(Number);\n      var le489 = ver2[0] < 4 || (ver2[0] === 4 && (ver2[1] < 8 || (ver2[1] === 8 && ver2[2] <= 9)));\n      if (le489 && PIXI.glCore && PIXI.glCore.VertexArrayObject &&\n          PIXI.glCore.VertexArrayObject.prototype.addAttribute &&\n          !PIXI.glCore.VertexArrayObject.prototype.addAttribute.__mhPatched) {\n        var _origAddAttr = PIXI.glCore.VertexArrayObject.prototype.addAttribute;\n        PIXI.glCore.VertexArrayObject.prototype.addAttribute = function() {\n          try { return _origAddAttr.apply(this, arguments); }\n          catch(err) { console.error(err); return this; }\n        };\n        PIXI.glCore.VertexArrayObject.prototype.addAttribute.__mhPatched = true;\n      }\n    } catch(e) {}\n\n    // PixiApngAndGif.js was written for PIXI 4.x. Provide aliases for APIs renamed in PIXI 5.x:\n    // PIXI.ticker.{Ticker,shared} \u2192 PIXI.Ticker / PIXI.Ticker.shared\n    // PIXI.BaseTexture.fromCanvas \u2192 PIXI.BaseTexture.from\n    // On PIXI 4.x (MV) the originals already exist so these become no-ops.\n    try {\n      if (!PIXI.ticker) { PIXI.ticker = {}; }\n      if (!PIXI.ticker.Ticker && PIXI.Ticker) { PIXI.ticker.Ticker = PIXI.Ticker; }\n      if (!PIXI.ticker.shared && PIXI.Ticker && PIXI.Ticker.shared) {\n        PIXI.ticker.shared = PIXI.Ticker.shared;\n      }\n      if (PIXI.BaseTexture && !PIXI.BaseTexture.fromCanvas && PIXI.BaseTexture.from) {\n        PIXI.BaseTexture.fromCanvas = PIXI.BaseTexture.from;\n      }\n    } catch(e) {}\n  };\n  _installPostLoad(0);\n})();"

    .line 790
    .line 791
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    .line 793
    .line 794
    const-string v3, "(function() {\n  if (window.__minhubMvTargetedFix) return;\n  window.__minhubMvTargetedFix = true;\n  var _install = function(n) {\n    if (typeof PluginManager === \'undefined\' || !Array.isArray(PluginManager._scripts)) {\n      if (n < 60) setTimeout(function() { _install(n + 1); }, 150);\n      return;\n    }\n    if (window.__minhubMvTargetedFixDone) return;\n    window.__minhubMvTargetedFixDone = true;\n    var has = function(name) { return PluginManager._scripts.includes(name); };\n\n    // KMS_Minimap: blinking markers tank FPS on mobile \u2014 disable the per-frame blink update.\n    if (has(\'KMS_Minimap\') && typeof SceneManager !== \'undefined\') {\n      try {\n        var _oldChange = SceneManager.changeScene;\n        SceneManager.changeScene = function() {\n          _oldChange.call(this);\n          try {\n            SceneManager._scene.children[0]._minimap.children\n              .filter(function(c) { return c.updateBlink; })\n              .forEach(function(c) { c.updateBlink = function() {}; });\n          } catch(e) {}\n        };\n      } catch(e) {}\n    }\n\n    // DKTools: force local mode so its IO layer doesn\'t try nwjs/browser file APIs.\n    if (has(\'DKTools\')) {\n      try { if (window.DKTools && DKTools.IO) DKTools.IO.isLocalMode = function() { return true; }; } catch(e) {}\n    }\n\n    // MPP_MessageEX: resetTextColor crashes when _colorIndex is undefined.\n    if (has(\'MPP_MessageEX\')) {\n      try {\n        if (window.MPP && MPP.Window_MessageName && MPP.Window_MessageName.prototype) {\n          MPP.Window_MessageName.prototype.resetTextColor = function() {\n            this.changeTextColor(this.textColor(this._colorIndex || 0));\n          };\n        }\n      } catch(e) {}\n    }\n\n    // CustomizeErrorScreen: fix error printer sizing (uses _realScale).\n    if (has(\'CustomizeErrorScreen\') && typeof Graphics !== \'undefined\') {\n      try {\n        Graphics._updateErrorPrinter = function() {\n          var w = 640 * this._realScale, h = 100 * this._realScale;\n          if (this._errorPrinter) {\n            this._errorPrinter.style.width = w + \'px\';\n            this._errorPrinter.style.height = h + \'px\';\n          }\n        };\n      } catch(e) {}\n    }\n\n    // Feed pointer/touch position into TouchInput.mouseX/Y for mouse-aware plugins.\n    // These plugins only set TouchInput.mouseX/Y inside TouchInput._onMouseMove, which\n    // fires on the DOM \'mousemove\' event \u2014 a PC-mouse-only event that never fires on a\n    // touch screen. So their hit-tests read a stale (0,0) mouse position on Android and\n    // the whole screen goes dead to touch. Notably DragSpine/cursorXY drive dress-up /\n    // character-creation screens via spine.hitTest(mouseX, mouseY). We mirror the touch\n    // position into mouseX/Y from pointer+touch events so those hit-tests work on touch.\n    if ((has(\'Mousu_base\') || has(\'cursorXY\') || has(\'DragSpine\') || has(\'MousePointerExtend\'))\n        && typeof Graphics !== \'undefined\' && typeof TouchInput !== \'undefined\') {\n      try {\n        var _setMouse = function(pageX, pageY) {\n          try {\n            var cx = Graphics.pageToCanvasX(pageX), cy = Graphics.pageToCanvasY(pageY);\n            if (!Graphics.isInsideCanvas(cx, cy)) return;\n            TouchInput.mouseX = cx; TouchInput.mouseY = cy;\n          } catch(err) {}\n        };\n        var _injectMouse = function(e) { _setMouse(e.pageX, e.pageY); };\n        var _injectTouch = function(e) {\n          var t = e.changedTouches && e.changedTouches[0];\n          if (t) _setMouse(t.pageX, t.pageY);\n        };\n        document.addEventListener(\'pointerdown\', _injectMouse);\n        document.addEventListener(\'pointermove\', _injectMouse);\n        document.addEventListener(\'pointerup\', _injectMouse);\n        document.addEventListener(\'touchstart\', _injectTouch, { passive: true });\n        document.addEventListener(\'touchmove\', _injectTouch, { passive: true });\n      } catch(e) {}\n    }\n\n    try { window.MinHub && window.MinHub.log && window.MinHub.log(\'[TargetedFix] applied\'); } catch(e) {}\n  };\n  _install(0);\n})();"

    .line 795
    .line 796
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    .line 798
    .line 799
    const-string v3, "(function() {\n  if (window.__minhubPpcSnap) return;\n  window.__minhubPpcSnap = true;\n  var _log = function(m) { try { window.MinHub && window.MinHub.log && window.MinHub.log(\'[PPCSnap] \' + m); } catch(e) {} };\n  var palette = null, paletteMapId = -1;\n  var _collect = function(list, set) {\n    if (!list) return;\n    for (var i = 0; i < list.length; i++) {\n      var c = list[i];\n      if (!c || !c.parameters) continue;\n      for (var j = 0; j < c.parameters.length; j++) {\n        var p = c.parameters[j];\n        if (typeof p === \'string\' && p.indexOf(\'#\') >= 0) {\n          var m = p.match(/#[0-9a-fA-F]{6}/g);\n          if (m) for (var k = 0; k < m.length; k++) set[m[k].toLowerCase()] = 1;\n        }\n      }\n    }\n  };\n  var _buildPalette = function() {\n    var set = {};\n    try {\n      if (window.$dataCommonEvents)\n        for (var i = 0; i < $dataCommonEvents.length; i++) {\n          var ce = $dataCommonEvents[i];\n          if (ce) _collect(ce.list, set);\n        }\n    } catch(e) {}\n    try {\n      if (window.$dataMap && $dataMap.events)\n        for (var i = 0; i < $dataMap.events.length; i++) {\n          var ev = $dataMap.events[i];\n          if (ev && ev.pages) for (var p = 0; p < ev.pages.length; p++) _collect(ev.pages[p].list, set);\n        }\n    } catch(e) {}\n    var arr = [];\n    for (var h in set) arr.push([h, parseInt(h.substr(1, 2), 16), parseInt(h.substr(3, 2), 16), parseInt(h.substr(5, 2), 16)]);\n    return arr;\n  };\n  var _snap = function(hex) {\n    if (typeof hex !== \'string\' || hex.charAt(0) !== \'#\' || hex.length !== 7) return hex;\n    var mapId = (window.$gameMap && $gameMap._mapId) || 0;\n    if (palette === null || mapId !== paletteMapId) {\n      palette = _buildPalette();\n      paletteMapId = mapId;\n      _log(\'palette rebuilt for map \' + mapId + \' size \' + palette.length);\n    }\n    var r = parseInt(hex.substr(1, 2), 16), g = parseInt(hex.substr(3, 2), 16), b = parseInt(hex.substr(5, 2), 16);\n    if (isNaN(r) || isNaN(g) || isNaN(b)) return hex;\n    var best = null, bestD = 1e9;\n    for (var i = 0; i < palette.length; i++) {\n      var e = palette[i];\n      var dr = r - e[1], dg = g - e[2], db = b - e[3];\n      if (dr < 0) dr = -dr; if (dg < 0) dg = -dg; if (db < 0) db = -db;\n      if (dr > 4 || dg > 4 || db > 4) continue;   // only correct small (lossy re-encode) drift\n      var d = dr * dr + dg * dg + db * db;\n      if (d < bestD) { bestD = d; best = e; }\n    }\n    return best ? best[0] : hex;\n  };\n  var install = function(n) {\n    if (typeof Game_Screen === \'undefined\' || !Game_Screen.prototype._getPicturePointColor) {\n      if (n < 120) setTimeout(function() { install(n + 1); }, 150);\n      return;\n    }\n    if (window.__minhubPpcSnapDone) return;\n    window.__minhubPpcSnapDone = true;\n    var _orig = Game_Screen.prototype._getPicturePointColor;\n    Game_Screen.prototype._getPicturePointColor = function(pictureId) {\n      var c = _orig.call(this, pictureId);\n      try { return _snap(c); } catch(e) { return c; }\n    };\n    _log(\'installed\');\n    // Touch has no hover. PPC games sample the colour under the pointer in a\n    // *parallel* common event (PPC_GET_RGB pic var) and the picture-click handler\n    // (PictureCallCommon) branches on that variable in the same frame as the tap.\n    // With a mouse the variable is already fresh from hovering; on touch the\n    // position jumps at touchstart and the click fires before the parallel event\n    // re-samples, so the game acts on the PREVIOUS tap\'s colour (e.g. Little Sister\n    // Massage: every heroine-room button behaved like the \"back\" button).\n    // Move the pointer immediately but deliver the trigger one frame later, so one\n    // parallel-event pass sees the new position before the click is processed.\n    try {\n      if (typeof TouchInput !== \'undefined\' && !TouchInput.__mhPpcDeferTrigger) {\n        TouchInput.__mhPpcDeferTrigger = true;\n        var _trig = TouchInput._onTrigger, _upd = TouchInput.update, _clr = TouchInput.clear;\n        var pending = null;\n        // One tap reaches _onTrigger twice (touchstart + emulated mousedown). Never\n        // flush the pending trigger here \u2014 that would fire it immediately with the\n        // stale colour. Just replace it and restart the 1-frame wait.\n        TouchInput._onTrigger = function(x, y) {\n          this._x = x; this._y = y;\n          pending = { args: arguments, wait: 1 };\n        };\n        TouchInput.update = function() {\n          if (pending) {\n            if (pending.wait > 0) pending.wait--;\n            else { var a = pending.args; pending = null; _trig.apply(this, a); }\n          }\n          return _upd.apply(this, arguments);\n        };\n        TouchInput.clear = function() { pending = null; return _clr.apply(this, arguments); };\n        _log(\'touch trigger deferred 1 frame\');\n      }\n    } catch(e) {}\n  };\n  var gate = function(n) {\n    if (typeof PluginManager !== \'undefined\' && Array.isArray(PluginManager._scripts)) {\n      if (PluginManager._scripts.includes(\'PicturePointColor\')) install(0);\n      return;\n    }\n    if (n < 80) setTimeout(function() { gate(n + 1); }, 150);\n  };\n  gate(0);\n})();"

    .line 800
    .line 801
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    .line 803
    .line 804
    const-string v3, "(function() {\n  if (window.__minhubMvCFPatch) return;\n  window.__minhubMvCFPatch = true;\n  try { window.MinHub && window.MinHub.log && window.MinHub.log(\'[MinHub] MvCFPatch: script loaded\'); } catch(e) {}\n  var check = function(n) {\n    if (typeof PIXI === \'undefined\' || !PIXI.Container || !PIXI.Container.prototype.renderWebGL) {\n      if (n < 80) setTimeout(function() { check(n + 1); }, 100);\n      return;\n    }\n    if (!window.__minhubActualRenderer) {\n      if (n < 80) setTimeout(function() { check(n + 1); }, 100);\n      return;\n    }\n    if (window.__minhubActualRenderer !== \'webgl1\') return;\n    var isMeshObj = function(o) {\n      try { return !!(PIXI.mesh && PIXI.mesh.Mesh && o instanceof PIXI.mesh.Mesh); }\n      catch (e) { return false; }\n    };\n    var origRenderWebGL = PIXI.Container.prototype.renderWebGL;\n    var origRenderAdvanced = PIXI.Container.prototype.renderAdvancedWebGL;\n    // Strip filters (keep masks \u2014 scissor-based masking works fine on WebGL1) before the\n    // filters-vs-simple dispatch check, so filtered objects take the cheap direct path.\n    PIXI.Container.prototype.renderWebGL = function(renderer) {\n      if (isMeshObj(this)) { origRenderWebGL.call(this, renderer); return; }\n      var f = this._filters;\n      if (f) this._filters = null;\n      origRenderWebGL.call(this, renderer);\n      if (f) this._filters = f;\n    };\n    // Defense-in-depth: if something still reaches renderAdvancedWebGL with filters set\n    // (e.g. a mask is also present), skip only the filter push/pop, keep mask handling.\n    PIXI.Container.prototype.renderAdvancedWebGL = function(renderer) {\n      if (isMeshObj(this) && origRenderAdvanced) { origRenderAdvanced.call(this, renderer); return; }\n      var f = this._filters;\n      if (f) this._filters = null;\n      origRenderAdvanced.call(this, renderer);\n      if (f) this._filters = f;\n    };\n    try { window.MinHub && window.MinHub.log && window.MinHub.log(\'[MinHub] MvCFPatch: applied renderer=\' + window.__minhubActualRenderer); } catch(e) {}\n  };\n  check(0);\n})();"

    .line 805
    .line 806
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    .line 808
    .line 809
    const-string v3, "(function() {\n  if (window.__minhubStuckInterp) return;\n  window.__minhubStuckInterp = true;\n  var _log = function(msg) {\n    try { window.MinHub && window.MinHub.log && window.MinHub.log(\'[StuckInterp] \' + msg); } catch(e) {}\n  };\n  var _install = function(n) {\n    if (typeof Game_Interpreter === \'undefined\' || !Game_Interpreter.prototype.updateWaitMode) {\n      if (n < 80) setTimeout(function() { _install(n + 1); }, 100);\n      return;\n    }\n    if (Game_Interpreter.prototype.__mhWaitDiag) return;\n    Game_Interpreter.prototype.__mhWaitDiag = true;\n    var _orig = Game_Interpreter.prototype.updateWaitMode;\n    Game_Interpreter.prototype.updateWaitMode = function() {\n      var modeBefore = this._waitMode;\n      var waiting = _orig.call(this);\n      if (waiting && modeBefore) {\n        if (this.__mhWaitSince == null || this.__mhWaitModeTracked !== modeBefore) {\n          this.__mhWaitSince = Date.now();\n          this.__mhWaitModeTracked = modeBefore;\n          this.__mhWaitLogged = false;\n        } else if (!this.__mhWaitLogged && Date.now() - this.__mhWaitSince > 3000) {\n          this.__mhWaitLogged = true;\n          var cmd = null;\n          try { cmd = this._list && this._list[this._index]; } catch(e) {}\n          var extra = \'\';\n          try {\n            if (modeBefore === \'image\') {\n              extra = \' imageCacheReady=\' + (window.ImageManager && ImageManager.isReady ? ImageManager.isReady() : \'?\');\n            } else if (modeBefore === \'video\') {\n              extra = \' videoSrc=\' + (window.Graphics && Graphics._video ? Graphics._video.src : \'?\') +\n                \' videoPaused=\' + (window.Graphics && Graphics._video ? Graphics._video.paused : \'?\');\n            } else if (modeBefore === \'animation\' || modeBefore === \'balloon\' || modeBefore === \'route\') {\n              extra = \' character=\' + (this._character ? (this._character.constructor && this._character.constructor.name) : \'null\');\n            }\n          } catch(e) {}\n          _log(\'stuck waitMode=\"\' + modeBefore + \'\" for >3s @ index=\' + this._index +\n            \' cmdCode=\' + (cmd ? cmd.code : \'?\') + \' mapId=\' + this._mapId + \' eventId=\' + this._eventId +\n            \' isBattle=\' + (this === (window.BattleManager && BattleManager._interpreter)) + extra);\n        }\n      } else {\n        this.__mhWaitSince = null;\n        this.__mhWaitModeTracked = null;\n        this.__mhWaitLogged = false;\n      }\n      return waiting;\n    };\n    _log(\'installed\');\n  };\n  _install(0);\n})();"

    .line 810
    .line 811
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    .line 813
    .line 814
    const-string v3, "(function() {\n  if (window.__minhubCoroutineDiag) return;\n  window.__minhubCoroutineDiag = true;\n  var _log = function(msg) {\n    try { window.MinHub && window.MinHub.log && window.MinHub.log(\'[CoroutineDiag] \' + msg); } catch(e) {}\n  };\n  var _install = function(n) {\n    if (typeof Coroutine === \'undefined\' || typeof Coroutine.update !== \'function\') {\n      if (n < 80) setTimeout(function() { _install(n + 1); }, 100);\n      return;\n    }\n    if (Coroutine.__mhDiagInstalled) return;\n    Coroutine.__mhDiagInstalled = true;\n    var _orig = Coroutine.update;\n    var callCount = 0;\n    var lastLog = Date.now();\n    var prevTaskCount = -1;\n    var stuckSince = null;\n    var firstCallLogged = false;\n    Coroutine.update = function() {\n      callCount++;\n      if (!firstCallLogged) {\n        firstCallLogged = true;\n        _log(\'first Coroutine.update() call observed \u2014 driver is running\');\n      }\n      var r;\n      try {\n        r = _orig.apply(this, arguments);\n      } catch (e) {\n        _log(\'Coroutine.update THREW: \' + (e && e.message) + \'\\\\n\' + (e && e.stack ? e.stack.substring(0, 400) : \'\'));\n        throw e;\n      }\n      var now = Date.now();\n      var taskCount = this._tasks ? this._tasks.length : -1;\n      if (taskCount > 0 && taskCount === prevTaskCount) {\n        if (stuckSince == null) stuckSince = now;\n      } else {\n        stuckSince = null;\n      }\n      prevTaskCount = taskCount;\n      if (taskCount > 0 && now - lastLog > 3000) {\n        var detail = \'\';\n        if (taskCount > 0) {\n          try {\n            detail = this._tasks.map(function(t) {\n              return \'depth=\' + t.tasks.length;\n            }).join(\',\');\n          } catch (e) {}\n        }\n        _log(\'calls=\' + callCount + \' inLast=\' + (now - lastLog) + \'ms tasks=\' + taskCount +\n          (stuckSince ? \' STUCK for \' + (now - stuckSince) + \'ms\' : \'\') +\n          (detail ? \' [\' + detail + \']\' : \'\'));\n        callCount = 0;\n        lastLog = now;\n      }\n      return r;\n    };\n    _log(\'installed, wrapping Coroutine.update\');\n  };\n  _install(0);\n})();"

    .line 815
    .line 816
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    .line 818
    .line 819
    const-string v3, "(function() {\n  if (window.__minhubSceneWatchdog) return;\n  window.__minhubSceneWatchdog = true;\n  var _log = function(msg) {\n    try { window.MinHub && window.MinHub.log && window.MinHub.log(\'[SceneWatchdog] \' + msg); } catch(e) {}\n  };\n  var _install = function(n) {\n    if (typeof SceneManager === \'undefined\' || typeof SceneManager.updateScene !== \'function\') {\n      if (n < 80) setTimeout(function() { _install(n + 1); }, 100);\n      return;\n    }\n    if (SceneManager.__mhWatchdogInstalled) return;\n    SceneManager.__mhWatchdogInstalled = true;\n    var _orig = SceneManager.updateScene;\n    var waitingScene = null;\n    var waitingSince = null;\n    var forcedFor = null;\n    SceneManager.updateScene = function() {\n      if (this._scene && !this._sceneStarted) {\n        if (waitingScene !== this._scene) {\n          waitingScene = this._scene;\n          waitingSince = Date.now();\n        } else if (Date.now() - waitingSince > 5000 && forcedFor !== this._scene) {\n          forcedFor = this._scene;\n          var stuckList = [];\n          try {\n            var items = window.ImageManager && ImageManager._imageCache && ImageManager._imageCache._items;\n            if (items) {\n              Object.keys(items).forEach(function(k) {\n                var b = items[k] && items[k].bitmap;\n                if (b && !b.isRequestOnly() && !b.isReady()) {\n                  stuckList.push((b._url || \'?\') + \' state=\' + b._loadingState);\n                }\n              });\n            }\n          } catch (e) {}\n          var sceneName = \'unknown\';\n          try { sceneName = this._scene.constructor && this._scene.constructor.name; } catch (e) {}\n          _log(\'scene \' + sceneName + \' stuck not-ready for >5s \u2014 forcing start. stuck bitmaps: \' +\n            (stuckList.length ? stuckList.join(\', \') : \'(none in ImageCache \u2014 may be a non-image resource or a different isReady() override)\'));\n          this._sceneStarted = true;\n        }\n      } else {\n        waitingScene = null;\n      }\n      return _orig.call(this);\n    };\n    _log(\'installed\');\n  };\n  _install(0);\n})();"

    .line 820
    .line 821
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    .line 823
    .line 824
    const-string v3, "(function() {\n  if (window.__minhubErrCapture) return;\n  window.__minhubErrCapture = true;\n  var _log = function(msg) {\n    try { window.MinHub && window.MinHub.log && window.MinHub.log(\'[ErrCapture] \' + msg); } catch(e) {}\n  };\n\n  // 1. Patch JSON.parse to log failed parses with the first 120 chars of input.\n  //    This reveals WHAT is being parsed when \"unexpected character at position N\" fires.\n  var _origJsonParse = JSON.parse;\n  JSON.parse = function(text) {\n    try {\n      return _origJsonParse.apply(JSON, arguments);\n    } catch(e) {\n      try {\n        var preview = typeof text === \'string\'\n          ? text.substring(0, 120).replace(/[\\r\\n]/g, \'\u21b5\')\n          : String(text).substring(0, 80);\n        _log(\'JSON.parse FAIL: \' + e.message + \' | input[0:120]=\"\' + preview + \'\"\');\n        var st = e.stack ? e.stack.substring(0, 400) : \'\';\n        if (st) _log(\'stack: \' + st);\n      } catch(ex) {}\n      throw e;\n    }\n  };\n  _log(\'JSON.parse patched\');\n\n  // 2. Global onerror \u2014 catches uncaught synchronous errors not caught by MV.\n  var _prevOnerror = window.onerror;\n  window.onerror = function(msg, src, line, col, err) {\n    try {\n      var st = err && err.stack ? err.stack.substring(0, 400) : \'\';\n      _log(\'onerror: \' + msg + \' @\' + (src||\'?\') + \':\' + line + \'\\n\' + st);\n    } catch(e) {}\n    return _prevOnerror ? _prevOnerror.apply(this, arguments) : false;\n  };\n\n  // 3. Hook Graphics.printError \u2014 MV\'s on-screen error display path.\n  //    MV catches exceptions in its update loop and calls Graphics.printError\n  //    instead of re-throwing, so the error never reaches window.onerror.\n  var _hookGfx = function(n) {\n    if (typeof Graphics === \'undefined\' || typeof Graphics.printError !== \'function\') {\n      if (n < 80) setTimeout(function() { _hookGfx(n + 1); }, 100);\n      return;\n    }\n    if (Graphics.__minhubPrintErrHooked) return;\n    Graphics.__minhubPrintErrHooked = true;\n    var _orig = Graphics.printError;\n    Graphics.printError = function(name, message, e) {\n      try {\n        var st = e && e.stack ? e.stack.substring(0, 600) : (e ? String(e) : \'\');\n        _log(\'printError: \' + name + \': \' + message + \'\\n\' + st);\n      } catch(ex) {}\n      return _orig.apply(this, arguments);\n    };\n    _log(\'Graphics.printError hooked\');\n  };\n  _hookGfx(0);\n\n})();"

    .line 825
    .line 826
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    .line 828
    .line 829
    const-string v3, "(function() {\n  if (window.__minhubLive2DCoreWait) return;\n  window.__minhubLive2DCoreWait = true;\n  var _log = function(msg) {\n    try { window.MinHub && window.MinHub.log && window.MinHub.log(\'[MinHub] \' + msg); } catch(e) {}\n  };\n  var isCoreReady = function() {\n    return typeof window.LIVE2DCUBISMCORE !== \'undefined\' && !!window.LIVE2DCUBISMCORE && !!window.LIVE2DCUBISMCORE.Moc;\n  };\n  var check = function(n) {\n    if (typeof PlatformManager === \'undefined\' || !PlatformManager.prototype ||\n        typeof PlatformManager.prototype.loadBytes !== \'function\') {\n      if (n < 80) setTimeout(function() { check(n + 1); }, 100);\n      return;\n    }\n    if (PlatformManager.prototype.loadBytes.__mhPatched) return;\n    var _orig = PlatformManager.prototype.loadBytes;\n    var _wrapped = function(path, callback) {\n      var self = this, args = arguments;\n      if (isCoreReady()) {\n        return _orig.apply(self, args);\n      }\n      // Live2DInterfaceMV.js\'s moc-load callback (invoked from here) reads\n      // LIVE2DCUBISMCORE.Moc.fromArrayBuffer(...) with no readiness check. Wait for\n      // MinHub\'s replacement Cubism Core (still finishing its own init) instead of\n      // crashing the first time a model loads.\n      _log(\'loadBytes: waiting for LIVE2DCUBISMCORE before loading \' + path);\n      var waited = 0;\n      var poll = function() {\n        if (isCoreReady()) {\n          _log(\'loadBytes: LIVE2DCUBISMCORE ready after \' + waited + \'ms\');\n          _orig.apply(self, args);\n          return;\n        }\n        waited += 100;\n        if (waited > 8000) {\n          var diag;\n          try {\n            var t = typeof window.LIVE2DCUBISMCORE;\n            if (t === \'undefined\') {\n              diag = \'typeof=undefined (global never assigned)\';\n            } else if (!window.LIVE2DCUBISMCORE) {\n              diag = \'typeof=\' + t + \' value=\' + window.LIVE2DCUBISMCORE;\n            } else {\n              diag = \'typeof=\' + t + \' keys=[\' + Object.keys(window.LIVE2DCUBISMCORE).join(\',\') + \']\' +\n                \' hasMoc=\' + (!!window.LIVE2DCUBISMCORE.Moc) +\n                \' Version=\' + (window.LIVE2DCUBISMCORE.Version ? JSON.stringify(window.LIVE2DCUBISMCORE.Version) : \'n/a\');\n            }\n          } catch (e) { diag = \'diag threw: \' + e; }\n          _log(\'loadBytes: LIVE2DCUBISMCORE never became ready, skipping: \' + path + \' | \' + diag);\n          return;\n        }\n        setTimeout(poll, 100);\n      };\n      poll();\n    };\n    _wrapped.__mhPatched = true;\n    PlatformManager.prototype.loadBytes = _wrapped;\n    _log(\'Live2D PlatformManager.loadBytes core-ready guard installed\');\n  };\n  check(0);\n})();"

    .line 830
    .line 831
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    .line 833
    .line 834
    sget-object v3, LG1/p;->h:LG1/p;

    .line 835
    .line 836
    invoke-virtual {v11, v3}, LG1/s;->b(LG1/p;)Z

    .line 837
    .line 838
    .line 839
    move-result v4

    .line 840
    if-eqz v4, :cond_f

    .line 841
    .line 842
    invoke-static {v3}, Lcom/bumptech/glide/c;->y(LG1/p;)Ljava/lang/String;

    .line 843
    .line 844
    .line 845
    move-result-object v3

    .line 846
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    .line 848
    .line 849
    :cond_f
    sget-object v3, LG1/p;->i:LG1/p;

    .line 850
    .line 851
    invoke-virtual {v11, v3}, LG1/s;->b(LG1/p;)Z

    .line 852
    .line 853
    .line 854
    move-result v4

    .line 855
    if-eqz v4, :cond_10

    .line 856
    .line 857
    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 858
    .line 859
    .line 860
    const-string v3, "\n        if (window.__minhubUtilities.mv_mobile_stretch && !window.__minhubRpgPatch) {\n          window.__minhubRpgPatch = true;\n          try {\n            if (window.Utils && typeof window.Utils.isMobileDevice === \'function\') {\n              window.Utils.isMobileDevice = function() { return true; };\n            }\n            if (window.Graphics && typeof window.Graphics._defaultStretchMode !== \'undefined\') {\n              window.Graphics._defaultStretchMode = true;\n            }\n          } catch (e) {}\n        }\n    "

    .line 861
    .line 862
    invoke-static {v3}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 863
    .line 864
    .line 865
    move-result-object v3

    .line 866
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 867
    .line 868
    .line 869
    :cond_10
    const-string v3, "RMMV"

    .line 870
    .line 871
    invoke-static {v3}, Lcom/bumptech/glide/c;->v(Ljava/lang/String;)Ljava/lang/String;

    .line 872
    .line 873
    .line 874
    move-result-object v3

    .line 875
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 876
    .line 877
    .line 878
    sget-object v3, LG1/p;->j:LG1/p;

    .line 879
    .line 880
    invoke-virtual {v11, v3}, LG1/s;->b(LG1/p;)Z

    .line 881
    .line 882
    .line 883
    move-result v4

    .line 884
    if-eqz v4, :cond_11

    .line 885
    .line 886
    invoke-static {v3}, Lcom/bumptech/glide/c;->W(LG1/p;)Ljava/lang/String;

    .line 887
    .line 888
    .line 889
    move-result-object v3

    .line 890
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 891
    .line 892
    .line 893
    :cond_11
    sget-object v3, LG1/p;->g:LG1/p;

    .line 894
    .line 895
    invoke-virtual {v11, v3}, LG1/s;->b(LG1/p;)Z

    .line 896
    .line 897
    .line 898
    move-result v4

    .line 899
    if-eqz v4, :cond_12

    .line 900
    .line 901
    invoke-static {v3}, LG1/a;->c(LG1/p;)Ljava/lang/String;

    .line 902
    .line 903
    .line 904
    move-result-object v3

    .line 905
    new-instance v4, Ljava/lang/StringBuilder;

    .line 906
    .line 907
    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 908
    .line 909
    .line 910
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    .line 912
    .line 913
    const-string v3, ") {\n                  (function(){\n  try {\n    // One-time migration: copy pre-bridge localStorage saves into native storage.\n    if (!window.__minhubSaveMigrated && window.StorageManager && window.MinHub && window.MinHub.saveGame) {\n      window.__minhubSaveMigrated = true;\n      var _origKey = typeof StorageManager.webStorageKey === \'function\'\n        ? StorageManager.webStorageKey.bind(StorageManager) : null;\n      if (_origKey) {\n        var _max = (typeof DataManager !== \'undefined\' && DataManager.maxSavefiles) ? DataManager.maxSavefiles() : 20;\n        var _slots = [-1, 0];\n        for (var i = 1; i <= _max; i++) _slots.push(i);\n        _slots.push(window.MinHub.getQuickSaveSlot ? window.MinHub.getQuickSaveSlot() : 999);\n        _slots.forEach(function(slot) {\n          try {\n            var key = _origKey(slot);\n            var compressed = localStorage.getItem(key);\n            if (compressed && !window.MinHub.saveExists(slot)) {\n              window.MinHub.saveGame(slot, compressed);\n            }\n            var backup = localStorage.getItem(key + \'bak\');\n            if (backup && !window.MinHub.backupExists(slot)) {\n              window.MinHub.saveBackup(slot, backup);\n            }\n          } catch (e) {}\n        });\n      }\n    }\n\n    // Re-applicable bridge: overrides StorageManager methods to route all I/O\n    // through MinHub native storage. Called immediately AND from the Scene_Boot\n    // hook below so that plugins like YEP_SaveCore (which run after this script)\n    // cannot permanently claim StorageManager methods.\n    var _log = function(msg) {\n      try { window.MinHub && window.MinHub.log && window.MinHub.log(\'[Bridge] \' + msg); } catch(e){}\n    };\n    // Routes string slot IDs (e.g. \"sync\") to ByName methods; numeric IDs to the\n    // integer overloads. Android WebView does not reliably dispatch @JavascriptInterface\n    // overloads by parameter type, so uniquely-named methods are required.\n    var _isStrSlot = function(id) { return typeof id === \'string\' && isNaN(+id); };\n    var _saveGame = function(id, c) { return _isStrSlot(id) ? window.MinHub.saveGameByName(String(id), c) : window.MinHub.saveGame(id, c); };\n    var _loadGame = function(id) { return _isStrSlot(id) ? window.MinHub.loadGameByName(String(id)) : window.MinHub.loadGame(id); };\n    var _saveExists = function(id) { return _isStrSlot(id) ? window.MinHub.saveExistsByName(String(id)) : window.MinHub.saveExists(id); };\n    var _removeSave = function(id) { return _isStrSlot(id) ? window.MinHub.removeSaveByName(String(id)) : window.MinHub.removeSave(id); };\n    var _saveBackup = function(id, c) { return _isStrSlot(id) ? window.MinHub.saveBackupByName(String(id), c) : window.MinHub.saveBackup(id, c); };\n    var _loadBackup = function(id) { return _isStrSlot(id) ? window.MinHub.loadBackupByName(String(id)) : window.MinHub.loadBackup(id); };\n    var _backupExists = function(id) { return _isStrSlot(id) ? window.MinHub.backupExistsByName(String(id)) : window.MinHub.backupExists(id); };\n    var _removeBackup = function(id) { return _isStrSlot(id) ? window.MinHub.removeBackupByName(String(id)) : window.MinHub.removeBackup(id); };\n\n    var _applyBridge = function(source) {\n      if (!window.StorageManager || !window.MinHub || !window.MinHub.saveGame) {\n        _log(\'_applyBridge(\' + (source||\'init\') + \'): not ready \u2013 SM=\' + (typeof StorageManager) + \' MH=\' + (typeof (window.MinHub&&window.MinHub.saveGame)));\n        return;\n      }\n      _log(\'_applyBridge(\' + (source||\'init\') + \')\');\n      StorageManager.isLocalMode = function() { return false; };\n      // Safe localFilePath/localFileDirectoryPath: prevents YEP_SaveCore and similar\n      // plugins from crashing when they call require(\'path\') inside these methods.\n      // These paths are never actually used for I/O because all local-mode calls are\n      // redirected to saveToWebStorage / loadFromWebStorage below.\n      StorageManager.localFileDirectoryPath = function() { return \'save/\'; };\n      StorageManager.localFilePath = function(savefileId) {\n        if (_isStrSlot(savefileId)) return \'save/\' + savefileId + \'.rpgsave\';\n        if (savefileId < 0) return \'save/config.rpgsave\';\n        if (savefileId === 0) return \'save/global.rpgsave\';\n        return \'save/file\' + savefileId + \'.rpgsave\';\n      };\n      StorageManager.saveToWebStorage = function(savefileId, json) {\n        _log(\'saveToWebStorage slot=\' + savefileId + \' len=\' + (json ? json.length : \'null\'));\n        var compressed = LZString.compressToBase64(json);\n        var ok = _saveGame(savefileId, compressed);\n        _log(\'saveGame(\' + savefileId + \') \u2192 \' + ok);\n        return ok;\n      };\n      StorageManager.loadFromWebStorage = function(savefileId) {\n        var compressed = _loadGame(savefileId);\n        _log(\'loadFromWebStorage slot=\' + savefileId + \' found=\' + (compressed != null));\n        if (!compressed) return null;\n        var data = LZString.decompressFromBase64(compressed);\n        // Slot 0 must be a JSON array (DataManager._globalInfo).\n        // If it parses as a non-array object it means a previous bug wrote sync data\n        // (a plain object) over global.rpgsave \u2014 clear it so the game starts fresh.\n        if (savefileId === 0 && data) {\n          try {\n            var parsed = JSON.parse(data);\n            if (!Array.isArray(parsed)) {\n              _log(\'loadFromWebStorage slot=0: not array (corrupted), clearing\');\n              window.MinHub.removeSave(0);\n              return null;\n            }\n          } catch(e) {\n            _log(\'loadFromWebStorage slot=0: parse error (corrupted), clearing\');\n            window.MinHub.removeSave(0);\n            return null;\n          }\n        }\n        return data;\n      };\n      StorageManager.saveToLocalFile = StorageManager.saveToWebStorage;\n      StorageManager.loadFromLocalFile = StorageManager.loadFromWebStorage;\n      StorageManager.webStorageExists = function(savefileId) {\n        return !!_saveExists(savefileId);\n      };\n      StorageManager.localFileExists = StorageManager.webStorageExists;\n      StorageManager.removeWebStorage = function(savefileId) {\n        _removeSave(savefileId);\n      };\n      StorageManager.removeLocalFile = StorageManager.removeWebStorage;\n      StorageManager.webStorageBackupExists = function(savefileId) {\n        return !!_backupExists(savefileId);\n      };\n      StorageManager.localFileBackupExists = StorageManager.webStorageBackupExists;\n      StorageManager.loadFromWebStorageBackup = function(savefileId) {\n        var compressed = _loadBackup(savefileId);\n        return compressed ? LZString.decompressFromBase64(compressed) : null;\n      };\n      StorageManager.loadFromLocalBackupFile = StorageManager.loadFromWebStorageBackup;\n      StorageManager.backup = function(savefileId) {\n        if (this.exists(savefileId)) {\n          var compressed = _loadGame(savefileId);\n          if (compressed) { _saveBackup(savefileId, compressed); }\n        }\n      };\n      StorageManager.cleanBackup = function(savefileId) {\n        _log(\'cleanBackup slot=\' + savefileId + \' \u2190 onSaveSuccess ran\');\n        _removeBackup(savefileId);\n      };\n      StorageManager.restoreBackup = function(savefileId) {\n        var compressed = _loadBackup(savefileId);\n        if (compressed) {\n          _saveGame(savefileId, compressed);\n          _removeBackup(savefileId);\n        }\n      };\n\n      // MinHub saves are isolated per-game directory, so the title check in\n      // isThisGameFile is redundant and can fail when a localization plugin\n      // changes the game title stored in dataSystem after the save was written.\n      // Override to check only globalId (sufficient for correctness here).\n      if (typeof DataManager !== \'undefined\' && DataManager.isThisGameFile) {\n        DataManager.isThisGameFile = function(savefileId) {\n          var globalInfo = this.loadGlobalInfo();\n          if (globalInfo && globalInfo[savefileId]) {\n            if (StorageManager.isLocalMode()) { return true; }\n            return globalInfo[savefileId].globalId === this._globalId;\n          }\n          return false;\n        };\n        DataManager.isThisGameFileInfo = function(savefile) {\n          if (!savefile) { return false; }\n          if (StorageManager.isLocalMode()) { return true; }\n          return savefile.globalId === this._globalId;\n        };\n      }\n    };\n\n    _applyBridge(\'init\');\n\n    // Hook Scene_Boot.prototype.create to re-apply the bridge AFTER all plugins\n    // have loaded. Polls until Scene_Boot is defined (plugins load asynchronously).\n    var _hookBoot = function(attempt) {\n      if (typeof Scene_Boot === \'undefined\') {\n        if (attempt < 20) { setTimeout(function() { _hookBoot(attempt + 1); }, 150); }\n        return;\n      }\n      if (window.__minhubSaveBridgeHooked) return;\n      window.__minhubSaveBridgeHooked = true;\n      _log(\'hooking Scene_Boot.prototype.create (attempt=\' + attempt + \')\');\n      var _origCreate = Scene_Boot.prototype.create;\n      Scene_Boot.prototype.create = function() {\n        _log(\'Scene_Boot.create \u2192 re-applying bridge\');\n        _applyBridge(\'Scene_Boot\');\n        _origCreate.call(this);\n      };\n    };\n    _hookBoot(0);\n\n  } catch (e) {\n    console && console.error && console.error(\'[MinHub] storage bridge\', e);\n  }\n})();\n                }\n            "

    .line 914
    .line 915
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    .line 917
    .line 918
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 919
    .line 920
    .line 921
    move-result-object v3

    .line 922
    invoke-static {v3}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 923
    .line 924
    .line 925
    move-result-object v3

    .line 926
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 927
    .line 928
    .line 929
    :cond_12
    if-lez v1, :cond_13

    .line 930
    .line 931
    new-instance v3, Ljava/lang/StringBuilder;

    .line 932
    .line 933
    const-string v4, "\n        (function() {\n          if (window.__minhubFontSizeMV) return;\n          window.__minhubFontSizeMV = true;\n          var SIZE = "

    .line 934
    .line 935
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 936
    .line 937
    .line 938
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 939
    .line 940
    .line 941
    const-string v1, ";\n          var _install = function(attempt) {\n            if (typeof Window_Base === \'undefined\') {\n              if (attempt < 40) setTimeout(function() { _install(attempt + 1); }, 200);\n              return;\n            }\n            // Base: windows without their own standardFontSize (vanilla MV, YEP_CoreEngine)\n            Window_Base.prototype.standardFontSize = function() { return SIZE; };\n            if (typeof Game_System !== \'undefined\') {\n              // YEP_MessageCore: delegates window font size to $gameSystem.getMessageFontSize()\n              Game_System.prototype.getMessageFontSize = function() { return SIZE; };\n              // VisuMZ_1_MessageCore on MV (via FOSSIL): calls $gameSystem.mainFontSize()\n              Game_System.prototype.mainFontSize = function() { return SIZE; };\n            }\n          };\n          _install(0);\n        })();\n    "

    .line 942
    .line 943
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    .line 945
    .line 946
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 947
    .line 948
    .line 949
    move-result-object v1

    .line 950
    invoke-static {v1}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 951
    .line 952
    .line 953
    move-result-object v1

    .line 954
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 955
    .line 956
    .line 957
    :cond_13
    const-string v1, "(function() {\n    if (typeof Game_Player === \'undefined\') return;\n    // Skip if an 8DIR plugin already patched moveByInput\n    if (Game_Player.prototype.__mh8dir) return;\n    var orig = Game_Player.prototype.moveByInput;\n    // Check if plugin already overrides dir8 (Yami sets isMoveDiagonally)\n    if (typeof Game_Player.prototype.isMoveDiagonally === \'function\') return;\n    Game_Player.prototype.__mh8dir = true;\n    Game_Player.prototype.moveByInput = function() {\n        if (!this.isMoving() && this.canMove()) {\n            var dir = Input.dir8;\n            if (dir > 0) {\n                $gameTemp.clearDestination();\n                // Diagonal directions: 1=DL 3=DR 7=UL 9=UR\n                if (dir === 1 || dir === 3 || dir === 7 || dir === 9) {\n                    var horz = (dir === 1 || dir === 7) ? 4 : 6;\n                    var vert = (dir === 1 || dir === 3) ? 2 : 8;\n                    this.moveDiagonally(horz, vert);\n                } else {\n                    this.moveStraight(dir);\n                }\n            } else if ($gameTemp.isDestinationValid()) {\n                var x = $gameTemp.destinationX();\n                var y = $gameTemp.destinationY();\n                var d = this.findDirectionTo(x, y);\n                if (d > 0) this.moveStraight(d);\n            }\n        }\n    };\n})();"

    .line 958
    .line 959
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 960
    .line 961
    .line 962
    :goto_5
    invoke-static {v9, v0}, Lkotlin/collections/CollectionsKt;->c(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 963
    .line 964
    .line 965
    new-instance v0, Ljava/util/ArrayList;

    .line 966
    .line 967
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 968
    .line 969
    .line 970
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 971
    .line 972
    .line 973
    move-result v1

    .line 974
    const/4 v3, 0x0

    .line 975
    :cond_14
    :goto_6
    if-ge v3, v1, :cond_15

    .line 976
    .line 977
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 978
    .line 979
    .line 980
    move-result-object v4

    .line 981
    add-int/lit8 v3, v3, 0x1

    .line 982
    .line 983
    move-object v7, v4

    .line 984
    check-cast v7, Ljava/lang/String;

    .line 985
    .line 986
    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 987
    .line 988
    .line 989
    move-result v7

    .line 990
    if-nez v7, :cond_14

    .line 991
    .line 992
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 993
    .line 994
    .line 995
    goto :goto_6

    .line 996
    :cond_15
    const/16 v31, 0x0

    .line 997
    .line 998
    const/16 v32, 0x3e

    .line 999
    .line 1000
    const-string v28, "\n\n"

    .line 1001
    .line 1002
    const/16 v29, 0x0

    .line 1003
    .line 1004
    const/16 v30, 0x0

    .line 1005
    .line 1006
    move-object/from16 v27, v0

    .line 1007
    .line 1008
    invoke-static/range {v27 .. v32}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v0

    .line 1012
    const-string v1, "\n\n(function() {\n  if (window.__minhubRendererDetectionInstalled) return;\n  window.__minhubRendererDetectionInstalled = true;\n  var attempts = 0;\n  var maxAttempts = 20;\n  var detect = function() {\n    try {\n      attempts += 1;\n      var renderer = (window.Graphics && window.Graphics._app && window.Graphics._app.renderer) ||\n        (window.Graphics && window.Graphics._renderer);\n      if (!renderer) {\n        if (attempts < maxAttempts) {\n          setTimeout(detect, 50);\n        }\n        return;\n      }\n      var actual = \'unknown\';\n      var gl = renderer && renderer.gl;\n      if (gl && typeof WebGL2RenderingContext !== \'undefined\' && gl instanceof WebGL2RenderingContext) {\n        actual = \'webgl2\';\n      } else if (gl) {\n        actual = \'webgl1\';\n      } else if (renderer) {\n        actual = \'canvas\';\n      }\n      window.__minhubActualRenderer = actual;\n      try {\n        window.MinHub && window.MinHub.log &&\n          window.MinHub.log(\'Renderer actual=\' + actual);\n      } catch (e) {}\n      try {\n        window.MinHub && window.MinHub.reportActualRenderer && window.MinHub.reportActualRenderer(actual);\n      } catch (e) {}\n    } catch (e) {}\n  };\n  setTimeout(detect, 0);\n  if (window.addEventListener) {\n    window.addEventListener(\'load\', detect, { once: true });\n  }\n})();"

    .line 1013
    .line 1014
    invoke-static {v2, v0, v1}, Lkotlin/collections/unsigned/a;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v0

    .line 1018
    iget-object v1, v5, Ly1/t1;->o:Ljava/lang/String;

    .line 1019
    .line 1020
    const-string v2, "utilitiesJson"

    .line 1021
    .line 1022
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1023
    .line 1024
    .line 1025
    const-string v3, "patchBody"

    .line 1026
    .line 1027
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1028
    .line 1029
    .line 1030
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1031
    .line 1032
    .line 1033
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1034
    .line 1035
    .line 1036
    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v1

    .line 1040
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v1

    .line 1044
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 1045
    .line 1046
    .line 1047
    move-result v2

    .line 1048
    if-eqz v2, :cond_16

    .line 1049
    .line 1050
    const-string v1, "{}"

    .line 1051
    .line 1052
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1053
    .line 1054
    const-string v3, "\n            (function(){\n              if (window.__minhubPatchesApplied) return;\n              window.__minhubPatchesApplied = true;\n\n              window.__minhubUtilities = "

    .line 1055
    .line 1056
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1057
    .line 1058
    .line 1059
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    .line 1061
    .line 1062
    const-string v1, ";\n\n              "

    .line 1063
    .line 1064
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1065
    .line 1066
    .line 1067
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    .line 1069
    .line 1070
    const-string v0, "\n            })();\n        "

    .line 1071
    .line 1072
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v0

    .line 1079
    invoke-static {v0}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v0

    .line 1083
    const/4 v1, 0x0

    .line 1084
    invoke-virtual {v6, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 1085
    .line 1086
    .line 1087
    :try_start_1
    sget-object v0, Lcom/minhub/gamehub/data/GameEngine;->Companion:Lcom/minhub/gamehub/data/GameEngine$Companion;

    .line 1088
    .line 1089
    iget-object v1, v5, Ly1/t1;->b:Lcom/minhub/gamehub/data/Game;

    .line 1090
    .line 1091
    invoke-virtual {v1}, Lcom/minhub/gamehub/data/Game;->getEngine()Ljava/lang/String;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v1

    .line 1095
    invoke-virtual {v0, v1}, Lcom/minhub/gamehub/data/GameEngine$Companion;->fromString(Ljava/lang/String;)Lcom/minhub/gamehub/data/GameEngine;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v0

    .line 1099
    iget-object v1, v5, Ly1/t1;->a:Lcom/minhub/gamehub/game/GameActivity;

    .line 1100
    .line 1101
    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1102
    .line 1103
    .line 1104
    new-instance v2, Ljava/io/File;

    .line 1105
    .line 1106
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v1

    .line 1110
    const-string v3, "runtime_patch_v2"

    .line 1111
    .line 1112
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1113
    .line 1114
    .line 1115
    invoke-static {v2}, LG1/m;->a(Ljava/io/File;)Lkotlin/Pair;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v1

    .line 1119
    if-eqz v1, :cond_17

    .line 1120
    .line 1121
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v2

    .line 1125
    check-cast v2, Ljava/lang/String;

    .line 1126
    .line 1127
    if-eqz v2, :cond_17

    .line 1128
    .line 1129
    invoke-static {v2}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v2

    .line 1133
    if-nez v2, :cond_18

    .line 1134
    .line 1135
    goto :goto_7

    .line 1136
    :catch_1
    move-object/from16 v2, v22

    .line 1137
    .line 1138
    move-object/from16 v11, v23

    .line 1139
    .line 1140
    goto/16 :goto_c

    .line 1141
    .line 1142
    :cond_17
    :goto_7
    move-object/from16 v2, v23

    .line 1143
    .line 1144
    :cond_18
    if-eqz v1, :cond_1a

    .line 1145
    .line 1146
    sget-object v3, LG1/g;->a:Ljava/lang/String;

    .line 1147
    .line 1148
    iget-object v3, v5, Ly1/t1;->a:Lcom/minhub/gamehub/game/GameActivity;

    .line 1149
    .line 1150
    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1151
    .line 1152
    .line 1153
    move-object/from16 v4, v26

    .line 1154
    .line 1155
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1156
    .line 1157
    .line 1158
    invoke-static {v0}, LG1/g;->e(Lcom/minhub/gamehub/data/GameEngine;)Ljava/lang/String;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v4

    .line 1162
    if-nez v4, :cond_19

    .line 1163
    .line 1164
    const/4 v3, 0x0

    .line 1165
    goto :goto_8

    .line 1166
    :cond_19
    invoke-static {v3, v4}, LG1/g;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v3

    .line 1170
    invoke-static {v3}, LG1/m;->a(Ljava/io/File;)Lkotlin/Pair;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v3

    .line 1174
    :goto_8
    if-eqz v3, :cond_1a

    .line 1175
    .line 1176
    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v4

    .line 1180
    check-cast v4, Ljava/lang/String;

    .line 1181
    .line 1182
    const-string v7, "js"

    .line 1183
    .line 1184
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1185
    .line 1186
    .line 1187
    const-string v7, "// MinHub engine-addon v1\n"

    .line 1188
    .line 1189
    invoke-static {v4, v7}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1190
    .line 1191
    .line 1192
    move-result v4

    .line 1193
    if-eqz v4, :cond_1a

    .line 1194
    .line 1195
    goto :goto_9

    .line 1196
    :cond_1a
    const/4 v3, 0x0

    .line 1197
    :goto_9
    if-eqz v1, :cond_1d

    .line 1198
    .line 1199
    iget-object v4, v5, Ly1/t1;->n:LQ1/d;

    .line 1200
    .line 1201
    sget-object v7, LQ1/b;->c:LQ1/b;

    .line 1202
    .line 1203
    move-object/from16 v8, v25

    .line 1204
    .line 1205
    invoke-virtual {v4, v7, v2, v8}, LQ1/d;->d(LQ1/b;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 1206
    .line 1207
    .line 1208
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v4

    .line 1212
    check-cast v4, Ljava/lang/String;

    .line 1213
    .line 1214
    invoke-static {v0, v4}, Ly1/t1;->b(Lcom/minhub/gamehub/data/GameEngine;Ljava/lang/String;)Ljava/lang/String;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v4

    .line 1218
    const/4 v7, 0x0

    .line 1219
    invoke-virtual {v6, v4, v7}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 1220
    .line 1221
    .line 1222
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v1

    .line 1226
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1227
    .line 1228
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1229
    .line 1230
    .line 1231
    const-string v7, "inject channel=v2 version="

    .line 1232
    .line 1233
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1234
    .line 1235
    .line 1236
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1237
    .line 1238
    .line 1239
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1240
    .line 1241
    .line 1242
    move-result-object v1

    .line 1243
    move-object/from16 v4, v24

    .line 1244
    .line 1245
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    .line 1247
    .line 1248
    if-eqz v3, :cond_1b

    .line 1249
    .line 1250
    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v1

    .line 1254
    check-cast v1, Ljava/lang/String;

    .line 1255
    .line 1256
    invoke-static {v0, v1}, Ly1/t1;->b(Lcom/minhub/gamehub/data/GameEngine;Ljava/lang/String;)Ljava/lang/String;

    .line 1257
    .line 1258
    .line 1259
    move-result-object v0

    .line 1260
    const/4 v1, 0x0

    .line 1261
    invoke-virtual {v6, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 1262
    .line 1263
    .line 1264
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 1265
    .line 1266
    .line 1267
    move-result-object v0

    .line 1268
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1269
    .line 1270
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1271
    .line 1272
    .line 1273
    const-string v7, "inject channel=engine-addon version="

    .line 1274
    .line 1275
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    .line 1277
    .line 1278
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1279
    .line 1280
    .line 1281
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v0

    .line 1285
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    .line 1287
    .line 1288
    :cond_1b
    iget-object v0, v5, Ly1/t1;->n:LQ1/d;

    .line 1289
    .line 1290
    sget-object v1, LQ1/b;->d:LQ1/b;

    .line 1291
    .line 1292
    if-eqz v3, :cond_1c

    .line 1293
    .line 1294
    const-string v13, "v2+engine"

    .line 1295
    .line 1296
    goto :goto_a

    .line 1297
    :cond_1c
    move-object v13, v8

    .line 1298
    :goto_a
    invoke-virtual {v0, v1, v2, v13}, LQ1/d;->d(LQ1/b;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 1299
    .line 1300
    .line 1301
    :goto_b
    const/4 v1, 0x0

    .line 1302
    goto :goto_d

    .line 1303
    :cond_1d
    iget-object v0, v5, Ly1/t1;->n:LQ1/d;

    .line 1304
    .line 1305
    sget-object v1, LQ1/b;->b:LQ1/b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1306
    .line 1307
    move-object/from16 v2, v22

    .line 1308
    .line 1309
    move-object/from16 v11, v23

    .line 1310
    .line 1311
    :try_start_2
    invoke-virtual {v0, v1, v11, v2}, LQ1/d;->d(LQ1/b;Ljava/lang/Integer;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1312
    .line 1313
    .line 1314
    goto :goto_b

    .line 1315
    :catch_2
    :goto_c
    iget-object v0, v5, Ly1/t1;->n:LQ1/d;

    .line 1316
    .line 1317
    sget-object v1, LQ1/b;->e:LQ1/b;

    .line 1318
    .line 1319
    invoke-virtual {v0, v1, v11, v2}, LQ1/d;->d(LQ1/b;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 1320
    .line 1321
    .line 1322
    goto :goto_b

    .line 1323
    :goto_d
    iput-object v1, v5, Ly1/t1;->p:Ljava/lang/String;

    .line 1324
    .line 1325
    const-string v1, "MinHub-GamePatch"

    .line 1326
    .line 1327
    const-string v0, "inject game="

    .line 1328
    .line 1329
    move-object/from16 v2, v21

    .line 1330
    .line 1331
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1332
    .line 1333
    .line 1334
    iget-object v3, v5, Ly1/t1;->n:LQ1/d;

    .line 1335
    .line 1336
    iget-boolean v3, v3, LQ1/d;->c:Z

    .line 1337
    .line 1338
    if-nez v3, :cond_1e

    .line 1339
    .line 1340
    goto/16 :goto_f

    .line 1341
    .line 1342
    :cond_1e
    :try_start_3
    sget-object v3, LG1/g;->a:Ljava/lang/String;

    .line 1343
    .line 1344
    iget-object v3, v5, Ly1/t1;->a:Lcom/minhub/gamehub/game/GameActivity;

    .line 1345
    .line 1346
    iget-object v4, v5, Ly1/t1;->b:Lcom/minhub/gamehub/data/Game;

    .line 1347
    .line 1348
    invoke-virtual {v4}, Lcom/minhub/gamehub/data/Game;->getCatalogPostId()J

    .line 1349
    .line 1350
    .line 1351
    move-result-wide v7

    .line 1352
    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1353
    .line 1354
    .line 1355
    const-wide/16 v11, 0x0

    .line 1356
    .line 1357
    cmp-long v4, v7, v11

    .line 1358
    .line 1359
    if-gtz v4, :cond_1f

    .line 1360
    .line 1361
    const/4 v3, 0x0

    .line 1362
    goto :goto_e

    .line 1363
    :cond_1f
    invoke-static {v3, v7, v8}, LG1/g;->l(Landroid/content/Context;J)Ljava/io/File;

    .line 1364
    .line 1365
    .line 1366
    move-result-object v3

    .line 1367
    invoke-static {v3}, LG1/m;->a(Ljava/io/File;)Lkotlin/Pair;

    .line 1368
    .line 1369
    .line 1370
    move-result-object v3

    .line 1371
    :goto_e
    if-nez v3, :cond_20

    .line 1372
    .line 1373
    goto/16 :goto_f

    .line 1374
    .line 1375
    :cond_20
    iget-object v4, v5, Ly1/t1;->p:Ljava/lang/String;

    .line 1376
    .line 1377
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 1378
    .line 1379
    .line 1380
    move-result-object v7

    .line 1381
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1382
    .line 1383
    .line 1384
    move-result v4

    .line 1385
    if-eqz v4, :cond_21

    .line 1386
    .line 1387
    goto :goto_f

    .line 1388
    :cond_21
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 1389
    .line 1390
    .line 1391
    move-result-object v4

    .line 1392
    check-cast v4, Ljava/lang/String;

    .line 1393
    .line 1394
    iput-object v4, v5, Ly1/t1;->p:Ljava/lang/String;

    .line 1395
    .line 1396
    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v4

    .line 1400
    check-cast v4, Ljava/lang/String;

    .line 1401
    .line 1402
    sget-object v7, Lcom/minhub/gamehub/data/GameEngine;->Companion:Lcom/minhub/gamehub/data/GameEngine$Companion;

    .line 1403
    .line 1404
    iget-object v8, v5, Ly1/t1;->b:Lcom/minhub/gamehub/data/Game;

    .line 1405
    .line 1406
    invoke-virtual {v8}, Lcom/minhub/gamehub/data/Game;->getEngine()Ljava/lang/String;

    .line 1407
    .line 1408
    .line 1409
    move-result-object v8

    .line 1410
    invoke-virtual {v7, v8}, Lcom/minhub/gamehub/data/GameEngine$Companion;->fromString(Ljava/lang/String;)Lcom/minhub/gamehub/data/GameEngine;

    .line 1411
    .line 1412
    .line 1413
    move-result-object v7

    .line 1414
    invoke-static {v7, v4}, Ly1/t1;->b(Lcom/minhub/gamehub/data/GameEngine;Ljava/lang/String;)Ljava/lang/String;

    .line 1415
    .line 1416
    .line 1417
    move-result-object v4

    .line 1418
    const-string v7, "[OTA] patch error"

    .line 1419
    .line 1420
    const-string v8, "[GamePatch] patch error"

    .line 1421
    .line 1422
    invoke-static {v4, v7, v8}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1423
    .line 1424
    .line 1425
    move-result-object v4

    .line 1426
    const/4 v7, 0x0

    .line 1427
    invoke-virtual {v6, v4, v7}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 1428
    .line 1429
    .line 1430
    iget-object v4, v5, Ly1/t1;->b:Lcom/minhub/gamehub/data/Game;

    .line 1431
    .line 1432
    invoke-virtual {v4}, Lcom/minhub/gamehub/data/Game;->getCatalogPostId()J

    .line 1433
    .line 1434
    .line 1435
    move-result-wide v7

    .line 1436
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 1437
    .line 1438
    .line 1439
    move-result-object v3

    .line 1440
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1441
    .line 1442
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1443
    .line 1444
    .line 1445
    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1446
    .line 1447
    .line 1448
    const-string v0, " version="

    .line 1449
    .line 1450
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1451
    .line 1452
    .line 1453
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1454
    .line 1455
    .line 1456
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1457
    .line 1458
    .line 1459
    move-result-object v0

    .line 1460
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1461
    .line 1462
    .line 1463
    goto :goto_f

    .line 1464
    :catch_3
    move-exception v0

    .line 1465
    iget-object v3, v5, Ly1/t1;->b:Lcom/minhub/gamehub/data/Game;

    .line 1466
    .line 1467
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/Game;->getCatalogPostId()J

    .line 1468
    .line 1469
    .line 1470
    move-result-wide v3

    .line 1471
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1472
    .line 1473
    .line 1474
    move-result-object v0

    .line 1475
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1476
    .line 1477
    const-string v8, "inject failed game="

    .line 1478
    .line 1479
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1480
    .line 1481
    .line 1482
    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1483
    .line 1484
    .line 1485
    const-string v3, ": "

    .line 1486
    .line 1487
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1488
    .line 1489
    .line 1490
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1491
    .line 1492
    .line 1493
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1494
    .line 1495
    .line 1496
    move-result-object v0

    .line 1497
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    .line 1499
    .line 1500
    :goto_f
    sget-object v0, Lcom/minhub/gamehub/data/GameEngine;->MV:Lcom/minhub/gamehub/data/GameEngine;

    .line 1501
    .line 1502
    sget-object v1, Lcom/minhub/gamehub/data/GameEngine;->MZ:Lcom/minhub/gamehub/data/GameEngine;

    .line 1503
    .line 1504
    filled-new-array {v0, v1}, [Lcom/minhub/gamehub/data/GameEngine;

    .line 1505
    .line 1506
    .line 1507
    move-result-object v0

    .line 1508
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 1509
    .line 1510
    .line 1511
    move-result-object v0

    .line 1512
    sget-object v1, Lcom/minhub/gamehub/data/GameEngine;->Companion:Lcom/minhub/gamehub/data/GameEngine$Companion;

    .line 1513
    .line 1514
    iget-object v3, v5, Ly1/t1;->b:Lcom/minhub/gamehub/data/Game;

    .line 1515
    .line 1516
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/Game;->getEngine()Ljava/lang/String;

    .line 1517
    .line 1518
    .line 1519
    move-result-object v3

    .line 1520
    invoke-virtual {v1, v3}, Lcom/minhub/gamehub/data/GameEngine$Companion;->fromString(Ljava/lang/String;)Lcom/minhub/gamehub/data/GameEngine;

    .line 1521
    .line 1522
    .line 1523
    move-result-object v1

    .line 1524
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1525
    .line 1526
    .line 1527
    move-result v0

    .line 1528
    if-eqz v0, :cond_22

    .line 1529
    .line 1530
    const-string v0, "(function(){\n  var tries=0, timer=setInterval(function(){\n    if (!window.TouchInput) { if (++tries >= 30) clearInterval(timer); return; }\n    clearInterval(timer);\n    if (typeof TouchInput.requestKeyboard === \'function\') return;\n    TouchInput.requestKeyboard=function(id,title,value){\n      try { window.MinHub.requestKeyboard(Number(id)||0, String(title||\'Input\'), String(value==null?\'\':value)); } catch(e) {}\n      return \'\';\n    };\n  },100);\n})();"

    .line 1531
    .line 1532
    const/4 v1, 0x0

    .line 1533
    invoke-virtual {v6, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 1534
    .line 1535
    .line 1536
    goto :goto_10

    .line 1537
    :cond_22
    const/4 v1, 0x0

    .line 1538
    :goto_10
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1539
    .line 1540
    .line 1541
    const-string v0, "(function(){\n  if (window.__mhBugReportHooked) return;\n  window.__mhBugReportHooked = true;\n  var lastAt = 0, lastSig = \'\';\n  function sigOf(t){ return String(t).replace(/:[0-9]+:[0-9]+/g,\'\').replace(/\\b\\d+\\b/g,\'#\').replace(/\\s+/g,\' \').trim().toLowerCase().substring(0,160); }\n  function report(title, stack){\n    try {\n      if (!title) return;\n      title = String(title).split(\'\\n\')[0].substring(0, 220);\n      var now = Date.now();\n      var sig = sigOf(title);\n      if (sig === lastSig && now - lastAt < 15000) return;\n      lastAt = now; lastSig = sig;\n      window.MinHub && window.MinHub.reportError && window.MinHub.reportError(title, String(stack || \'\').substring(0, 1500));\n    } catch(e) {}\n  }\n  window.addEventListener(\'error\', function(ev){\n    var err = ev && ev.error;\n    if (err && err.stack) report(ev.message || err.message, err.stack);\n    else if (ev) report(ev.message, ev.filename ? (ev.message + \'\\n    at \' + ev.filename + \':\' + ev.lineno) : \'\');\n  }, true);\n  window.addEventListener(\'unhandledrejection\', function(ev){\n    var r = ev && ev.reason;\n    // A media play() cut short by pause()/load() is normal playback, never a game bug.\n    if (r && r.name === \'AbortError\' && /play\\(\\)|load request|interrupted by a call to pause/i.test(String(r.message || \'\'))) return;\n    if (r && r.stack) report(r.message || (\'Unhandled rejection: \' + r), r.stack);\n    else if (r) report(\'Unhandled rejection: \' + r, \'\');\n  });\n  var n = 0;\n  (function hookPrintError(){\n    try {\n      if (typeof Graphics !== \'undefined\' && typeof Graphics.printError === \'function\' && !Graphics.__mhBugReportHooked) {\n        Graphics.__mhBugReportHooked = true;\n        var orig = Graphics.printError;\n        Graphics.printError = function(name, msg, e){\n          var realErr = (e && e.error) ? e.error : e;\n          var st = (realErr && realErr.stack) ? String(realErr.stack) : \'\';\n          report((name || \'Error\') + \': \' + (msg || \'\'), st);\n          try { return orig.apply(this, arguments); } catch(ex) {}\n        };\n        return;\n      }\n    } catch(e) {}\n    if (n++ < 80) setTimeout(hookPrintError, 100);\n  })();\n})();"

    .line 1542
    .line 1543
    invoke-virtual {v6, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 1544
    .line 1545
    .line 1546
    goto :goto_12

    .line 1547
    :cond_23
    :goto_11
    move-object/from16 v18, v4

    .line 1548
    .line 1549
    move-object/from16 v20, v7

    .line 1550
    .line 1551
    move-object/from16 v17, v8

    .line 1552
    .line 1553
    move-object v2, v9

    .line 1554
    const/16 v16, 0x1

    .line 1555
    .line 1556
    :goto_12
    sget-object v0, Lcom/minhub/gamehub/data/GameEngine;->MV:Lcom/minhub/gamehub/data/GameEngine;

    .line 1557
    .line 1558
    move-object/from16 v7, v20

    .line 1559
    .line 1560
    if-eq v7, v0, :cond_25

    .line 1561
    .line 1562
    sget-object v0, Lcom/minhub/gamehub/data/GameEngine;->MZ:Lcom/minhub/gamehub/data/GameEngine;

    .line 1563
    .line 1564
    if-ne v7, v0, :cond_24

    .line 1565
    .line 1566
    goto :goto_14

    .line 1567
    :cond_24
    const/4 v1, 0x0

    .line 1568
    :goto_13
    move-object/from16 v4, v18

    .line 1569
    .line 1570
    goto :goto_15

    .line 1571
    :cond_25
    :goto_14
    const-string v0, "(function(){\n        if(window.__mhBugCheckpointTimer)return;\n        // Only when the player could save from the menu: MV\'s JsonEx wraps live arrays while encoding,\n        // so a throw half-way (deep data during events) corrupted e.g. $gameParty._actors in 0.8.8.\n        function idle(){try{\n            if(!window.$gameMap||$gameMap.mapId()<=0)return false;\n            if(!window.Scene_Map||!(SceneManager._scene instanceof Scene_Map))return false;\n            if(SceneManager.isSceneChanging&&SceneManager.isSceneChanging())return false;\n            if($gameMap.isEventRunning&&$gameMap.isEventRunning())return false;\n            if(window.$gameMessage&&$gameMessage.isBusy&&$gameMessage.isBusy())return false;\n            if(window.$gamePlayer&&$gamePlayer.isTransferring&&$gamePlayer.isTransferring())return false;\n            if(window.$gameTemp&&$gameTemp.isCommonEventReserved&&$gameTemp.isCommonEventReserved())return false;\n            return true;\n        }catch(e){return false}}\n        // Pre-check depth/content so JsonEx can never throw half-way through the live objects.\n        function encodable(root){\n            var mz=!!(window.StorageManager&&StorageManager.saveObject);\n            var max=((window.JsonEx&&JsonEx.maxDepth)||100)-5,seen=typeof Set===\'function\'?new Set():null,path=[];\n            function walk(v,d){\n                if(!v||typeof v!==\'object\')return true;\n                if(d>max)return false;\n                if(path.indexOf(v)>=0)return !mz;\n                if(seen&&seen.has(v))return true;\n                if(typeof Node!==\'undefined\'&&v instanceof Node)return false;\n                if(window.Bitmap&&v instanceof Bitmap)return false;\n                if(window.PIXI&&PIXI.DisplayObject&&v instanceof PIXI.DisplayObject)return false;\n                path.push(v);\n                for(var k in v){if(Object.prototype.hasOwnProperty.call(v,k)&&!walk(v[k],d+1)){path.pop();return false}}\n                path.pop();if(seen)seen.add(v);return true;\n            }\n            return walk(root,0);\n        }\n        function checkpoint(){try{\n            if(!window.DataManager||!DataManager.makeSaveContents||!idle())return;\n            if(window.__mhBugCheckpointBusy)return;\n            window.__mhBugCheckpointBusy=true;\n            var contents=DataManager.makeSaveContents();\n            if(!encodable(contents)){window.__mhBugCheckpointBusy=false;return}\n            var result;\n            if(window.StorageManager&&StorageManager.saveObject&&DataManager.makeSavename)\n                result=StorageManager.saveObject(DataManager.makeSavename(997),contents);\n            else if(window.StorageManager&&StorageManager.save&&window.JsonEx)\n                result=StorageManager.save(997,JsonEx.stringify(contents));\n            if(result&&typeof result.then===\'function\')result.catch(function(){}).finally(function(){window.__mhBugCheckpointBusy=false});\n            else window.__mhBugCheckpointBusy=false;\n        }catch(e){window.__mhBugCheckpointBusy=false}}\n        // The report-time save (captureBugReportSave) uses the same guard.\n        window.__mhBugSaveSafe=function(){try{return idle()&&encodable(DataManager.makeSaveContents())}catch(e){return false}};\n        window.__mhBugCheckpointTimer=setInterval(checkpoint,30000);\n        setTimeout(checkpoint,5000);\n    })()"

    .line 1572
    .line 1573
    const/4 v1, 0x0

    .line 1574
    invoke-virtual {v6, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 1575
    .line 1576
    .line 1577
    goto :goto_13

    .line 1578
    :goto_15
    iget-boolean v0, v4, Lcom/minhub/gamehub/game/GameActivity;->D:Z

    .line 1579
    .line 1580
    if-eqz v0, :cond_26

    .line 1581
    .line 1582
    const-string v0, "\n        (function() {\n          try {\n            var ON = true;\n            if (typeof Spriteset_Map === \'undefined\' || typeof PIXI === \'undefined\') return;\n\n            if (!window.__minhubReveal) {\n              // `edited` remembers events changed from this panel so their marker stays on screen\n              // once they become visible \u2014 otherwise turning a switch ON would make the event\n              // appear, remove its marker, and leave no way to turn it back OFF.\n              var R = window.__minhubReveal = { on: false, popupEventId: null, sp: null, edited: {} };\n\n              // Lazy accessors so a reload/scene change never leaves us holding a stale object.\n              var g = {\n                map:    function() { return $gameMap; },\n                sw:     function() { return $gameSwitches; },\n                va:     function() { return $gameVariables; },\n                ss:     function() { return $gameSelfSwitches; },\n                sys:    function() { return $dataSystem; },\n                items:  function() { return $dataItems; },\n                actors: function() { return $dataActors; },\n                party:  function() { return $gameParty; }\n              };\n\n              var esc = function(s) {\n                return String(s == null ? \'\' : s).replace(/[&<>\"]/g, function(c) {\n                  return { \'&\': \'&amp;\', \'<\': \'&lt;\', \'>\': \'&gt;\', \'\"\': \'&quot;\' }[c];\n                });\n              };\n\n              var isHidden = function(ev) {\n                try {\n                  if (!ev) return false;\n                  if (ev._erased) return true;\n                  var page = ev.page ? ev.page() : null;\n                  if (!page) return true;\n                  var img = page.image || {};\n                  return !img.characterName && !img.tileId;\n                } catch (e) { return false; }\n              };\n\n              // kind \'hidden\' = red (the player cannot see this event); \'edited\' = amber (an event\n              // you changed here \u2014 kept marked even once visible so you can tap it and revert).\n              var makeMarker = function(kind) {\n                var m = new PIXI.Graphics();\n                m.beginFill(kind === \'edited\' ? 0xff9f0a : 0xff3b30, 0.75);\n                m.drawCircle(0, 0, 9); m.endFill();\n                m.lineStyle(2, 0xffffff, 0.95); m.drawCircle(0, 0, 9);\n                m.moveTo(0, -4); m.lineTo(0, 2);\n                m.beginFill(0xffffff, 0.95); m.drawCircle(0, 5, 1.2); m.endFill();\n                m.__mhKind = kind;\n                return m;\n              };\n\n              var switchLabel = function(id) {\n                var n = g.sys() && g.sys().switches && g.sys().switches[id];\n                return (n && n.trim()) ? (n + \' (#\' + id + \')\') : (\'#\' + id);\n              };\n              var varLabel = function(id) {\n                var n = g.sys() && g.sys().variables && g.sys().variables[id];\n                return (n && n.trim()) ? (n + \' (#\' + id + \')\') : (\'#\' + id);\n              };\n\n              // Resolve a page\'s activation conditions into rows the panel can render + edit.\n              var conditionsOf = function(page, mapId, eventId) {\n                var out = [];\n                var c = page && page.conditions;\n                if (!c) return out;\n                try {\n                  if (c.switch1Valid) out.push(swRow(c.switch1Id));\n                  if (c.switch2Valid) out.push(swRow(c.switch2Id));\n                  if (c.variableValid) {\n                    var cur = g.va().value(c.variableId);\n                    out.push({ kind: \'variable\', id: c.variableId, need: c.variableValue,\n                      label: \'Variable \' + varLabel(c.variableId),\n                      detail: cur + \' / needs >= \' + c.variableValue, ok: cur >= c.variableValue });\n                  }\n                  if (c.selfSwitchValid) {\n                    var sv = g.ss().value([mapId, eventId, c.selfSwitchCh]);\n                    out.push({ kind: \'selfswitch\', id: c.selfSwitchCh,\n                      label: \'Self-Switch \' + c.selfSwitchCh, detail: sv ? \'ON\' : \'OFF\', ok: !!sv });\n                  }\n                  if (c.itemValid) {\n                    var it = g.items()[c.itemId];\n                    var has = it ? g.party().hasItem(it) : false;\n                    out.push({ kind: \'item\', label: \'Item \' + (it ? it.name : \'#\' + c.itemId),\n                      detail: has ? \'owned\' : \'missing\', ok: has });\n                  }\n                  if (c.actorValid) {\n                    var inParty = g.party().members().some(function(m) { return m.actorId() === c.actorId; });\n                    var a = g.actors()[c.actorId];\n                    out.push({ kind: \'actor\', label: \'Actor \' + (a ? a.name : \'#\' + c.actorId),\n                      detail: inParty ? \'in party\' : \'absent\', ok: inParty });\n                  }\n                } catch (e) {}\n                return out;\n              };\n              var swRow = function(id) {\n                var v = g.sw().value(id);\n                return { kind: \'switch\', id: id, label: \'Switch \' + switchLabel(id),\n                  detail: v ? \'ON\' : \'OFF\', ok: !!v };\n              };\n\n              // ---- marker layer -------------------------------------------------------------\n              R.attach = function(sp) {\n                if (!sp || sp.__mhRevealLayer) return;\n                sp.__mhRevealLayer = new PIXI.Container();\n                sp.__mhMarkers = {};\n                sp.addChild(sp.__mhRevealLayer);\n              };\n\n              R.refresh = function(sp) {\n                R.sp = sp;\n                var layer = sp && sp.__mhRevealLayer;\n                if (!layer) return;\n                if (!R.on) { layer.visible = false; return; }\n                layer.visible = true;\n                var events = (g.map() && g.map().events) ? g.map().events() : [];\n                var seen = {};\n                for (var i = 0; i < events.length; i++) {\n                  var ev = events[i];\n                  var id = ev.eventId();\n                  // Mark hidden events, plus any event you edited (so it stays reachable).\n                  // A normal visible event gets no marker, so tapping it still talks to the NPC.\n                  var kind = isHidden(ev) ? \'hidden\' : (R.edited[id] ? \'edited\' : null);\n                  if (!kind) continue;\n                  seen[id] = true;\n                  var m = sp.__mhMarkers[id];\n                  if (m && m.__mhKind !== kind) { layer.removeChild(m); m = null; }\n                  if (!m) { m = makeMarker(kind); sp.__mhMarkers[id] = m; layer.addChild(m); }\n                  m.visible = true;\n                  m.x = ev.screenX();\n                  m.y = ev.screenY() - 24;\n                  if (kind === \'edited\') {\n                    // The event is visible now (an NPC stands here), so keep the marker off to the\n                    // side \u2014 sitting on top of the character would swallow the tap meant for it.\n                    var off = 40;\n                    var limit = (typeof Graphics !== \'undefined\' && Graphics.width) ? Graphics.width : 816;\n                    if (m.x + off > limit - 16) off = -off;   // flip near the screen edge\n                    m.x += off;\n                    m.y = ev.screenY() - 12;\n                  }\n                }\n                for (var key in sp.__mhMarkers) {\n                  if (!seen[key]) sp.__mhMarkers[key].visible = false;\n                }\n              };\n\n              // ---- tap handling -------------------------------------------------------------\n              R.handleTouch = function() {\n                try {\n                  if (!R.on || !TouchInput.isTriggered() || !R.sp || !R.sp.__mhMarkers) return false;\n                  // ~24px radius: big enough to tap, small enough that an offset marker does not\n                  // cover the character standing next to it.\n                  var tx = TouchInput.x, ty = TouchInput.y, best = null, bestD = 576;\n                  for (var id in R.sp.__mhMarkers) {\n                    var m = R.sp.__mhMarkers[id];\n                    if (!m.visible) continue;\n                    var dx = m.x - tx, dy = m.y - ty, d = dx * dx + dy * dy;\n                    if (d < bestD) { bestD = d; best = id; }\n                  }\n                  if (best === null) return false;\n                  R.openPanel(Number(best));\n                  return true;\n                } catch (e) { return false; }\n              };\n\n              // ---- detail / edit panel ------------------------------------------------------\n              var host = function() {\n                var h = document.getElementById(\'mh-ev-panel\');\n                if (h) return h;\n                h = document.createElement(\'div\');\n                h.id = \'mh-ev-panel\';\n                // WebView inflates DOM text on these wide-viewport game pages and ignores font-size\n                // (and text-size-adjust) \u2014 measured on device: a 4.5px request still rendered huge.\n                // A geometric transform runs after all of that, so scaling the whole panel is the\n                // only reliable way to size it. Everything inside shrinks with it.\n                h.style.cssText = \'position:fixed;left:50%;top:50%;transform:translate(-50%,-50%) scale(0.5);\' +\n                  \'z-index:2147483000;background:rgba(18,22,32,0.97);color:#f5f7fa;\' +\n                  \'border:2px solid rgba(255,255,255,0.22);border-radius:18px;padding:14px 18px;\' +\n                  \'min-width:430px;max-width:150vw;max-height:150vh;overflow:auto;\' +\n                  // WebView \"font boosting\" inflates text on wide-viewport pages and ignores the\n                  // requested size \u2014 which is why several rounds of shrinking looked identical.\n                  // text-size-adjust:none opts this panel out so font-size is honoured verbatim.\n                  \'-webkit-text-size-adjust:none;text-size-adjust:none;\' +\n                  \'font-family:sans-serif;font-size:19px;line-height:1.35;\' +\n                  \'box-shadow:0 10px 34px rgba(0,0,0,0.65);display:none\';\n                // Keep taps inside the panel away from the game\'s own touch handling \u2014 but in the\n                // BUBBLE phase. Capturing here would swallow the event on its way down and our own\n                // buttons would never fire.\n                [\'touchstart\', \'touchend\', \'touchmove\', \'mousedown\', \'mouseup\', \'click\', \'pointerdown\', \'pointerup\']\n                  .forEach(function(t) { h.addEventListener(t, function(e) { e.stopPropagation(); }, false); });\n                document.body.appendChild(h);\n                return h;\n              };\n\n              R.closePanel = function() {\n                var h = document.getElementById(\'mh-ev-panel\');\n                if (h) h.style.display = \'none\';\n                R.popupEventId = null;\n              };\n\n              var btnCss = \'background:#2a3550;color:#fff;border:1px solid rgba(255,255,255,0.25);\' +\n                \'border-radius:7px;padding:4px 9px;font-size:16px;line-height:1.4;cursor:pointer;flex:none\';\n\n              R.openPanel = function(eventId) {\n                var ev = g.map().event(eventId);\n                if (!ev) return;\n                var data = ev.event();\n                var mapId = g.map().mapId();\n                R.popupEventId = eventId;\n                var h = host();\n\n                var html = \'<div style=\"display:flex;align-items:center;margin-bottom:6px\">\' +\n                  \'<b>#\' + eventId + \' \' + esc(data.name || \'(no name)\') + \'</b>\' +\n                  \'<span style=\"opacity:.55;margin-left:8px\">(\' + data.x + \',\' + data.y + \')</span>\' +\n                  \'<span style=\"flex:1\"></span>\' +\n                  \'<button data-mh=\"close\" style=\"\' + btnCss + \'\">Close</button></div>\';\n\n                (data.pages || []).forEach(function(p, i) {\n                  var active = (ev._pageIndex === i);\n                  html += \'<div style=\"margin-top:10px\"><div style=\"font-size:15px;color:\' +\n                    (active ? \'#7CFF9B\' : \'#9aa0aa\') + \'\">Page \' + (i + 1) + (active ? \' \u2014 ACTIVE\' : \'\') + \'</div>\';\n                  var conds = conditionsOf(p, mapId, eventId);\n                  if (!conds.length) {\n                    html += \'<div style=\"font-size:15px;opacity:.5;margin-left:8px\">No conditions</div>\';\n                  }\n                  conds.forEach(function(c) {\n                    html += \'<div style=\"display:flex;align-items:center;margin:6px 0\">\' +\n                      \'<span style=\"width:9px;height:9px;border-radius:50%;flex:none;margin-right:9px;background:\' +\n                      (c.ok ? \'#34C759\' : \'#FF3B30\') + \'\"></span>\' +\n                      // min-width:0 lets this shrink inside the flex row instead of overrunning\n                      // the button next to it (they visibly overlapped before).\n                      \'<span style=\"flex:1;min-width:0;margin-right:6px;word-break:break-word\">\' +\n                      esc(c.label) + \': <b>\' + esc(c.detail) + \'</b></span>\';\n                    if (c.kind === \'switch\') {\n                      html += \'<button data-mh=\"sw\" data-id=\"\' + c.id + \'\" style=\"\' + btnCss + \'\">\' +\n                        (c.ok ? \'Turn OFF\' : \'Turn ON\') + \'</button>\';\n                    } else if (c.kind === \'selfswitch\') {\n                      html += \'<button data-mh=\"ss\" data-id=\"\' + esc(c.id) + \'\" style=\"\' + btnCss + \'\">\' +\n                        (c.ok ? \'Turn OFF\' : \'Turn ON\') + \'</button>\';\n                    } else if (c.kind === \'variable\') {\n                      html += \'<input data-mh=\"varin\" data-id=\"\' + c.id + \'\" value=\"\' + esc(c.need) +\n                        \'\" style=\"width:58px;margin-right:8px;background:#141a26;color:#fff;flex:none;\' +\n                        \'border:1px solid rgba(255,255,255,0.25);border-radius:6px;padding:3px 6px;font-size:15px\">\' +\n                        \'<button data-mh=\"setvar\" data-id=\"\' + c.id + \'\" style=\"\' + btnCss + \'\">Set</button>\';\n                    }\n                    html += \'</div>\';\n                  });\n                  html += \'</div>\';\n                });\n\n                h.innerHTML = html;\n                h.style.display = \'block\';\n\n                h.querySelectorAll(\'[data-mh]\').forEach(function(el) {\n                  var kind = el.getAttribute(\'data-mh\');\n                  if (kind === \'varin\') return;\n                  el.addEventListener(\'click\', function(e) {\n                    e.stopPropagation();\n                    var id = el.getAttribute(\'data-id\');\n                    try {\n                      if (kind === \'close\') { R.closePanel(); return; }\n                      if (kind === \'sw\') {\n                        g.sw().setValue(Number(id), !g.sw().value(Number(id)));\n                      } else if (kind === \'ss\') {\n                        var key = [mapId, eventId, id];\n                        g.ss().setValue(key, !g.ss().value(key));\n                      } else if (kind === \'setvar\') {\n                        var input = h.querySelector(\'[data-mh=\"varin\"][data-id=\"\' + id + \'\"]\');\n                        var val = Number(input && input.value);\n                        if (!isNaN(val)) g.va().setValue(Number(id), val);\n                      }\n                      R.edited[eventId] = true;   // keep this event markered so it can be reverted\n                      if (g.map().requestRefresh) g.map().requestRefresh();\n                      R.openPanel(eventId);\n                    } catch (err) {}\n                  }, false);\n                });\n              };\n\n              // ---- hooks --------------------------------------------------------------------\n              var _createLowerLayer = Spriteset_Map.prototype.createLowerLayer;\n              Spriteset_Map.prototype.createLowerLayer = function() {\n                _createLowerLayer.call(this);\n                R.attach(this);\n              };\n\n              var _update = Spriteset_Map.prototype.update;\n              Spriteset_Map.prototype.update = function() {\n                _update.call(this);\n                R.refresh(this);\n              };\n\n              if (typeof Scene_Map !== \'undefined\' && Scene_Map.prototype.processMapTouch) {\n                var _processMapTouch = Scene_Map.prototype.processMapTouch;\n                Scene_Map.prototype.processMapTouch = function() {\n                  if (R.handleTouch()) return;   // tap consumed by a marker \u2014 don\'t walk there\n                  _processMapTouch.call(this);\n                };\n              }\n            }\n\n            var RR = window.__minhubReveal;\n            RR.on = ON;\n            if (!ON) RR.closePanel();\n\n            // Attach to the spriteset already on screen so the toggle works without changing maps.\n            try {\n              var scene = SceneManager._scene;\n              var sp = scene && scene._spriteset;\n              if (sp) { RR.attach(sp); RR.refresh(sp); }\n            } catch (e) {}\n          } catch (e) {\n            try { window.MinHub && window.MinHub.log && window.MinHub.log(\'[Reveal] \' + e); } catch (_) {}\n          }\n        })();\n    "

    .line 1583
    .line 1584
    invoke-static {v0}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 1585
    .line 1586
    .line 1587
    move-result-object v0

    .line 1588
    invoke-virtual {v6, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 1589
    .line 1590
    .line 1591
    :cond_26
    iget-boolean v0, v4, Lcom/minhub/gamehub/game/GameActivity;->E:Z

    .line 1592
    .line 1593
    if-eqz v0, :cond_27

    .line 1594
    .line 1595
    const-string v0, "\n        (function() {\n          try {\n            var ON = true;\n            if (typeof Spriteset_Map === \'undefined\' || typeof PIXI === \'undefined\') return;\n\n            if (!window.__minhubHints) {\n              var H = window.__minhubHints = { on: false };\n\n              // Command codes that mark an event as \"story progress\" when the player triggers it.\n              // 121 Control Switches \u00b7 122 Control Variables \u00b7 201 Transfer Player \u00b7\n              // 126/127/128 Change Items/Weapons/Armor \u00b7 129 Change Party Member.\n              // (123 Control Self Switch is intentionally excluded \u2014 see the class note.)\n              var PROGRESS = { 121: 1, 122: 1, 201: 1, 126: 1, 127: 1, 128: 1, 129: 1 };\n\n              var isHint = function(ev) {\n                try {\n                  if (!ev || ev._erased) return false;\n                  var page = ev.page ? ev.page() : null;\n                  if (!page) return false;\n                  // Only events the player can trigger by standing there / pressing action:\n                  // 0 action button, 1 player touch, 2 event touch. Autorun/parallel run themselves.\n                  if (page.trigger == null || page.trigger > 2) return false;\n                  // Only visible events \u2014 an arrow floating over nothing helps no one.\n                  var img = page.image || {};\n                  if (!img.characterName && !img.tileId) return false;\n                  var list = page.list || [];\n                  for (var i = 0; i < list.length; i++) {\n                    if (PROGRESS[list[i].code]) return true;\n                  }\n                  return false;\n                } catch (e) { return false; }\n              };\n\n              // Downward-pointing arrow (\u25bc): cyan fill + white outline so it reads on any tileset.\n              var makeArrow = function() {\n                var a = new PIXI.Graphics();\n                a.beginFill(0x34d3ff, 0.95);\n                a.moveTo(-11, -9); a.lineTo(11, -9); a.lineTo(0, 8); a.lineTo(-11, -9);\n                a.endFill();\n                a.lineStyle(2, 0xffffff, 0.9);\n                a.moveTo(-11, -9); a.lineTo(11, -9); a.lineTo(0, 8); a.lineTo(-11, -9);\n                return a;\n              };\n\n              H.attach = function(sp) {\n                if (!sp || sp.__mhHintLayer) return;\n                sp.__mhHintLayer = new PIXI.Container();\n                sp.__mhArrows = {};\n                sp.addChild(sp.__mhHintLayer);\n              };\n\n              H.refresh = function(sp) {\n                var layer = sp && sp.__mhHintLayer;\n                if (!layer) return;\n                if (!H.on) { layer.visible = false; return; }\n                layer.visible = true;\n                var map = $gameMap;\n                var events = (map && map.events) ? map.events() : [];\n                // Time-based bob so the arrows draw the eye without any per-sprite state.\n                var bounce = Math.sin(Date.now() / 250) * 4;\n                var seen = {};\n                for (var i = 0; i < events.length; i++) {\n                  var ev = events[i];\n                  if (!isHint(ev)) continue;\n                  var id = ev.eventId();\n                  seen[id] = true;\n                  var a = sp.__mhArrows[id];\n                  if (!a) { a = makeArrow(); sp.__mhArrows[id] = a; layer.addChild(a); }\n                  a.visible = true;\n                  a.x = ev.screenX();\n                  a.y = ev.screenY() - 50 + bounce;   // float above the head, pointing down\n                }\n                for (var key in sp.__mhArrows) {\n                  if (!seen[key]) sp.__mhArrows[key].visible = false;\n                }\n              };\n\n              var _createLowerLayer = Spriteset_Map.prototype.createLowerLayer;\n              Spriteset_Map.prototype.createLowerLayer = function() {\n                _createLowerLayer.call(this);\n                H.attach(this);\n              };\n\n              var _update = Spriteset_Map.prototype.update;\n              Spriteset_Map.prototype.update = function() {\n                _update.call(this);\n                H.refresh(this);\n              };\n            }\n\n            var HH = window.__minhubHints;\n            HH.on = ON;\n\n            // Attach to the spriteset already on screen so the toggle works without changing maps.\n            try {\n              var scene = SceneManager._scene;\n              var sp = scene && scene._spriteset;\n              if (sp) { HH.attach(sp); HH.refresh(sp); }\n            } catch (e) {}\n          } catch (e) {\n            try { window.MinHub && window.MinHub.log && window.MinHub.log(\'[Hints] \' + e); } catch (_) {}\n          }\n        })();\n    "

    .line 1596
    .line 1597
    invoke-static {v0}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 1598
    .line 1599
    .line 1600
    move-result-object v0

    .line 1601
    invoke-virtual {v6, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 1602
    .line 1603
    .line 1604
    :cond_27
    iget-object v0, v4, Lcom/minhub/gamehub/game/GameActivity;->m:Ly1/t1;

    .line 1605
    .line 1606
    if-eqz v0, :cond_28

    .line 1607
    .line 1608
    invoke-static {v4}, LS1/d;->c(Landroid/content/Context;)I

    .line 1609
    .line 1610
    .line 1611
    move-result v0

    .line 1612
    invoke-static {v6, v0}, Ly1/t1;->a(Landroid/webkit/WebView;I)V

    .line 1613
    .line 1614
    .line 1615
    :cond_28
    iget-boolean v0, v4, Lcom/minhub/gamehub/game/GameActivity;->s:Z

    .line 1616
    .line 1617
    if-eqz v0, :cond_29

    .line 1618
    .line 1619
    iget-object v0, v4, Lcom/minhub/gamehub/game/GameActivity;->m:Ly1/t1;

    .line 1620
    .line 1621
    if-eqz v0, :cond_29

    .line 1622
    .line 1623
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1624
    .line 1625
    .line 1626
    const-string v0, "(function(){\n  if (window.__minhubFps) return;\n  window.__minhubFps = true;\n  var frames = 0, last = performance.now();\n  function loop(now){\n    frames++;\n    if (now - last >= 1000) {\n      try { window.MinHub && window.MinHub.setFps(frames); } catch(e) {}\n      frames = 0; last = now;\n    }\n    requestAnimationFrame(loop);\n  }\n  requestAnimationFrame(loop);\n})();"

    .line 1627
    .line 1628
    const/4 v1, 0x0

    .line 1629
    invoke-virtual {v6, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 1630
    .line 1631
    .line 1632
    goto :goto_16

    .line 1633
    :cond_29
    const/4 v1, 0x0

    .line 1634
    :goto_16
    iget-boolean v0, v4, Lcom/minhub/gamehub/game/GameActivity;->t:Z

    .line 1635
    .line 1636
    if-eqz v0, :cond_2a

    .line 1637
    .line 1638
    invoke-static/range {v16 .. v16}, Lcom/minhub/gamehub/game/GameActivity;->z(Z)Ljava/lang/String;

    .line 1639
    .line 1640
    .line 1641
    move-result-object v0

    .line 1642
    invoke-virtual {v6, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 1643
    .line 1644
    .line 1645
    :cond_2a
    sget-object v0, LS1/d;->a:Ljava/util/Set;

    .line 1646
    .line 1647
    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1648
    .line 1649
    .line 1650
    const-string v0, "minhub_prefs"

    .line 1651
    .line 1652
    const/4 v1, 0x0

    .line 1653
    invoke-virtual {v4, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 1654
    .line 1655
    .line 1656
    move-result-object v2

    .line 1657
    const-string v3, "game_font_size"

    .line 1658
    .line 1659
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 1660
    .line 1661
    .line 1662
    move-result v2

    .line 1663
    if-lez v2, :cond_2b

    .line 1664
    .line 1665
    invoke-virtual {v4, v2}, Lcom/minhub/gamehub/game/GameActivity;->n(I)V

    .line 1666
    .line 1667
    .line 1668
    :cond_2b
    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1669
    .line 1670
    .line 1671
    invoke-virtual {v4, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 1672
    .line 1673
    .line 1674
    move-result-object v0

    .line 1675
    const-string v2, "game_word_wrap"

    .line 1676
    .line 1677
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 1678
    .line 1679
    .line 1680
    move-result v0

    .line 1681
    if-eqz v0, :cond_2c

    .line 1682
    .line 1683
    move/from16 v1, v16

    .line 1684
    .line 1685
    invoke-virtual {v4, v1}, Lcom/minhub/gamehub/game/GameActivity;->o(Z)V

    .line 1686
    .line 1687
    .line 1688
    :cond_2c
    invoke-virtual/range {v17 .. v17}, Lcom/minhub/gamehub/data/Game;->getStreamUrl()Ljava/lang/String;

    .line 1689
    .line 1690
    .line 1691
    move-result-object v0

    .line 1692
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 1693
    .line 1694
    .line 1695
    move-result v0

    .line 1696
    if-nez v0, :cond_2d

    .line 1697
    .line 1698
    const-string v0, "(function(){var s=document.createElement(\'style\');s.textContent=\'html,body{margin:0!important;padding:0!important;background:#000!important;overflow:hidden!important;width:100%!important;height:100%!important}canvas{display:block!important}\';document.head&&document.head.appendChild(s);})()"

    .line 1699
    .line 1700
    const/4 v1, 0x0

    .line 1701
    invoke-virtual {v6, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 1702
    .line 1703
    .line 1704
    :cond_2d
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1705
    .line 1706
    :goto_17
    return-object v0

    .line 1707
    :pswitch_9
    iget-object v0, v1, LC1/J;->c:Ljava/lang/Object;

    .line 1708
    .line 1709
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1710
    .line 1711
    iget-object v2, v1, LC1/J;->d:Ljava/lang/Object;

    .line 1712
    .line 1713
    check-cast v2, LD1/b;

    .line 1714
    .line 1715
    iget-object v3, v1, LC1/J;->e:Landroid/view/KeyEvent$Callback;

    .line 1716
    .line 1717
    check-cast v3, Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 1718
    .line 1719
    iget-object v4, v1, LC1/J;->f:Ljava/lang/Object;

    .line 1720
    .line 1721
    check-cast v4, Ljava/lang/String;

    .line 1722
    .line 1723
    iget-object v5, v1, LC1/J;->g:Ljava/lang/Object;

    .line 1724
    .line 1725
    check-cast v5, Ljava/io/File;

    .line 1726
    .line 1727
    const/4 v6, 0x1

    .line 1728
    const/4 v7, 0x0

    .line 1729
    invoke-virtual {v0, v7, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 1730
    .line 1731
    .line 1732
    move-result v0

    .line 1733
    if-eqz v0, :cond_2e

    .line 1734
    .line 1735
    invoke-virtual {v2}, LD1/b;->b()Z

    .line 1736
    .line 1737
    .line 1738
    invoke-virtual {v3, v2}, Lcom/minhub/gamehub/hub/AddGameActivity;->r(LD1/b;)V

    .line 1739
    .line 1740
    .line 1741
    new-instance v0, Landroid/content/Intent;

    .line 1742
    .line 1743
    const-class v2, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;

    .line 1744
    .line 1745
    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1746
    .line 1747
    .line 1748
    const-string v2, "kirikiri_source_dir"

    .line 1749
    .line 1750
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 1751
    .line 1752
    .line 1753
    move-result-object v5

    .line 1754
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1755
    .line 1756
    .line 1757
    move-result-object v0

    .line 1758
    const-string v2, "kirikiri_game_name"

    .line 1759
    .line 1760
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1761
    .line 1762
    .line 1763
    move-result-object v0

    .line 1764
    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1765
    .line 1766
    .line 1767
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 1768
    .line 1769
    .line 1770
    :cond_2e
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1771
    .line 1772
    return-object v0

    .line 1773
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch

    .line 1774
    .line 1775
    .line 1776
    .line 1777
    .line 1778
    .line 1779
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
