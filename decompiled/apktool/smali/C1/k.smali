.class public final synthetic LC1/k;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LC1/k;->b:I

    .line 2
    .line 3
    iput-object p2, p0, LC1/k;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, LC1/k;->d:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget v0, p0, LC1/k;->b:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    iget-object v5, p0, LC1/k;->d:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v6, p0, LC1/k;->c:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v6, Ly1/x0;

    .line 15
    .line 16
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 17
    .line 18
    iget-object v0, v6, Ly1/x0;->a:Landroid/app/Activity;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    iget-object v0, v6, Ly1/x0;->a:Landroid/app/Activity;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void

    .line 38
    :pswitch_0
    check-cast v6, Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 39
    .line 40
    check-cast v5, Ljava/util/List;

    .line 41
    .line 42
    sget v0, Lcom/minhub/gamehub/editor/EditModeOverlay;->l:I

    .line 43
    .line 44
    invoke-virtual {v6, v5}, Lcom/minhub/gamehub/editor/EditModeOverlay;->d(Ljava/util/List;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_1
    check-cast v6, Landroid/webkit/WebView;

    .line 49
    .line 50
    check-cast v5, Lr1/b;

    .line 51
    .line 52
    const-string v0, "runtime"

    .line 53
    .line 54
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    sget-object v0, Lr1/b;->b:Lr1/b;

    .line 58
    .line 59
    if-eq v5, v0, :cond_2

    .line 60
    .line 61
    sget-object v0, Lr1/b;->c:Lr1/b;

    .line 62
    .line 63
    if-ne v5, v0, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v2, "Unsupported RPG Maker runtime: "

    .line 71
    .line 72
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v0

    .line 90
    :cond_2
    :goto_0
    const-string v0, "(function() {\n    var SC_MAP = {\n        speed1x:\'adel_speed1x\',speed2x:\'adel_speed2x\',speed3x:\'adel_speed3x\',\n        speed5x:\'adel_speed5x\',noClip:\'adel_noclip\',encounterToggle:\'adel_encounter\',\n        healParty:\'adel_heal\',recoverParty:\'adel_recover\',quickSave:\'adel_save\',\n        quickLoad:\'adel_load\',forceVictory:\'adel_victory\',forceDefeat:\'adel_defeat\',\n        forceEscape:\'adel_escape\',woundAllEnemies:\'adel_wound\',snapshot:\'adel_snapshot\'\n    };\n    function setupShortcutUI(host) {\n        if (!host.shadowRoot || host.__mhScObs) return;\n        var SR = host.shadowRoot;\n        function injectRow(row) {\n            var scEl = row.querySelector(\'[data-shortcut-id]\');\n            if (!scEl) return;\n            var sid = scEl.dataset.shortcutId;\n            if (!SC_MAP[sid]) return;\n            var assignBtn = row.querySelector(\'button[data-action=\"shortcut-start-record\"]\');\n            if (!assignBtn) return;\n            var opsDiv = assignBtn.parentElement;\n            if (opsDiv.dataset.mhSc) return;\n            opsDiv.dataset.mhSc = \'1\';\n            var bridge = window.MHAdelBridge;\n            var isAdded = bridge && bridge.hasButton(sid);\n            var addBtn = document.createElement(\'button\');\n            addBtn.className = \'btn\';\n            addBtn.style.cssText = \'font-size:10px;padding:2px 7px;white-space:nowrap;flex-shrink:0;\' +\n                (isAdded ? \'background:#166534;border-color:#166534;color:#fff;\'\n                         : \'background:#0d9488;border-color:#0d9488;color:#fff;\');\n            addBtn.textContent = isAdded ? \'\u2713\' : \'+Add\';\n            addBtn.addEventListener(\'click\', function(e) {\n                e.stopPropagation();\n                if (!window.MHAdelBridge) return;\n                if (window.MHAdelBridge.hasButton(sid)) {\n                    window.MHAdelBridge.removeButton(sid);\n                    addBtn.textContent = \'+Add\';\n                    addBtn.style.background = \'#0d9488\';\n                    addBtn.style.borderColor = \'#0d9488\';\n                } else {\n                    window.MHAdelBridge.addButton(sid);\n                    addBtn.textContent = \'\u2713\';\n                    addBtn.style.background = \'#166534\';\n                    addBtn.style.borderColor = \'#166534\';\n                }\n            });\n            opsDiv.insertBefore(addBtn, opsDiv.firstChild);\n            /* Widen the last column to fit 3 buttons */\n            var parts = (row.style.gridTemplateColumns || \'\').trim().split(/\\s+/);\n            if (parts.length >= 4) { parts[3] = \'195px\'; row.style.gridTemplateColumns = parts.join(\' \'); }\n            var clearBtn = opsDiv.querySelector(\'[data-action=\"shortcut-clear\"]\');\n            if (clearBtn && !clearBtn.dataset.mhBound) {\n                clearBtn.dataset.mhBound = \'1\';\n                clearBtn.addEventListener(\'click\', function() {\n                    if (window.MHAdelBridge) window.MHAdelBridge.removeButton(sid);\n                });\n            }\n        }\n        function scan() {\n            SR.querySelectorAll(\'.table-row\').forEach(function(row) { injectRow(row); });\n        }\n        var obs = new MutationObserver(scan);\n        obs.observe(SR, { childList: true, subtree: true });\n        host.__mhScObs = obs;\n        scan();\n    }\n    function patchHost() {\n        var host = document.getElementById(\'adel9st-control-center-host\');\n        if (!host || host.__mhPatched) return;\n        host.__mhPatched = true;\n        var orig = host.style.setProperty.bind(host.style);\n        host.style.setProperty = function(name, value, priority) {\n            if (name === \'--adel-font-scale\') return orig(name, \'0.62\', priority);\n            if (name === \'--adel-shell-width\')\n                return orig(name, (window.innerWidth - 16) + \'px\', priority);\n            if (name === \'--adel-shell-height\')\n                return orig(name, (window.innerHeight - 16) + \'px\', priority);\n            return orig(name, value, priority);\n        };\n        setupShortcutUI(host);\n        if (host.shadowRoot && !host.shadowRoot.getElementById(\'__mh_fix__\')) {\n            var s = document.createElement(\'style\');\n            s.id = \'__mh_fix__\';\n            s.textContent = [\n                /* freeze opacity */ \'.panel{opacity:1!important}*{transition:opacity 0s!important;animation-duration:0s!important}\',\n                /* restore grids broken by cramped class */\n                \'.panel-shell.cramped .signals{grid-template-columns:repeat(3,minmax(86px,1fr))!important}\',\n                \'.panel-shell.cramped .metrics{grid-template-columns:repeat(4,minmax(0,1fr))!important}\',\n                \'.panel-shell.cramped .cols,.panel-shell.cramped .dashboard-grid{grid-template-columns:1.1fr .9fr!important}\',\n                \'.panel-shell.cramped .lower-grid{grid-template-columns:1.2fr .8fr!important}\',\n                \'.panel-shell.cramped .actions{grid-template-columns:repeat(3,minmax(0,1fr))!important}\',\n                \'.panel-shell.cramped .actions.two{grid-template-columns:repeat(2,minmax(0,1fr))!important}\',\n                \'.panel-shell.cramped .actions.four{grid-template-columns:repeat(4,minmax(0,1fr))!important}\',\n                \'.panel-shell.cramped .loadouts{grid-template-columns:repeat(2,minmax(0,1fr))!important}\',\n                \'.panel-shell.cramped .field-grid{grid-template-columns:90px 1fr!important}\',\n                \'.panel-shell.cramped .button-strip{justify-content:flex-end!important;width:auto!important}\',\n                /* restore grids broken by @media(max-width:780px) */\n                \'@media(max-width:780px){\',\n                \'.panel-shell .signals{grid-template-columns:repeat(3,minmax(86px,1fr))!important}\',\n                \'.panel-shell .metrics{grid-template-columns:repeat(4,minmax(0,1fr))!important}\',\n                \'.panel-shell .cols,.panel-shell .dashboard-grid{grid-template-columns:1.1fr .9fr!important}\',\n                \'.panel-shell .lower-grid{grid-template-columns:1.2fr .8fr!important}\',\n                \'.panel-shell .actions{grid-template-columns:repeat(3,minmax(0,1fr))!important}\',\n                \'.panel-shell .actions.two{grid-template-columns:repeat(2,minmax(0,1fr))!important}\',\n                \'.panel-shell .actions.four{grid-template-columns:repeat(4,minmax(0,1fr))!important}\',\n                \'.panel-shell .loadouts{grid-template-columns:repeat(2,minmax(0,1fr))!important}\',\n                \'.panel-shell .field-grid{grid-template-columns:90px 1fr!important}\',\n                \'.panel-shell .button-strip{justify-content:flex-end!important;width:auto!important}\',\n                \'}\'\n            ].join(\'\');\n            host.shadowRoot.appendChild(s);\n        }\n    }\n    function setupAct(cc) {\n        window.__mhAdelAct = function(act) {\n            try {\n                var s = cc.state;\n                var dk = function(k, c, a) {\n                    var o = {key: k, bubbles: true, cancelable: true, ctrlKey: c, altKey: a};\n                    document.dispatchEvent(new KeyboardEvent(\'keydown\', o));\n                    document.dispatchEvent(new KeyboardEvent(\'keyup\', o));\n                };\n                if (act === \'speed1\') cc.command(\'speed 1\');\n                else if (act === \'speed2\') cc.command(\'speed 2\');\n                else if (act === \'speed3\') cc.command(\'speed 3\');\n                else if (act === \'speed5\') cc.command(\'speed 5\');\n                else if (act === \'heal\') cc.command(\'heal\');\n                else if (act === \'save\') cc.command(\'save\');\n                else if (act === \'load\') cc.command(\'load\');\n                else if (act === \'snapshot\') cc.command(\'snapshot\');\n                else if (act === \'noclip\') cc.command(s.noClip ? \'noclip off\' : \'noclip on\');\n                else if (act === \'encounter\') cc.command(s.encounterDisabled ? \'encounter on\' : \'encounter off\');\n                else if (act === \'victory\') dk(\'v\', false, true);\n                else if (act === \'defeat\') dk(\'d\', false, true);\n                else if (act === \'escape\') dk(\'x\', false, true);\n                else if (act === \'wound\') dk(\'F1\', false, false);\n                else if (act === \'recover\') dk(\'F2\', false, false);\n            } catch(e) {}\n        };\n    }\n    var cc = window.__ADEL9ST_CONTROL_CENTER__;\n    if (cc) {\n        patchHost();\n        setupAct(cc);\n        var willShow = !cc.state.visible;\n        willShow ? cc.show() : cc.hide();\n        return willShow ? \'SHOWN\' : \'HIDDEN\';\n    }\n    var s = document.createElement(\'script\');\n    s.src = \'https://appassets.androidplatform.net/cheat/adel-control-center.js\';\n    s.onload = function() {\n        setTimeout(function() {\n            var c = window.__ADEL9ST_CONTROL_CENTER__;\n            if (!c) return;\n            c.state.uiSizeMode = \'max\';\n            patchHost();\n            setupAct(c);\n            c.show();\n        }, 300);\n    };\n    document.head.appendChild(s);\n    return \'INJECTING\';\n})();"

    .line 91
    .line 92
    invoke-virtual {v6, v0, v4}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :pswitch_2
    check-cast v6, Lorg/godotengine/godot/Godot;

    .line 97
    .line 98
    check-cast v5, Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v6, v5}, Lorg/godotengine/godot/Godot;->s(Lorg/godotengine/godot/Godot;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :pswitch_3
    check-cast v6, [Ljava/lang/String;

    .line 105
    .line 106
    check-cast v5, [I

    .line 107
    .line 108
    invoke-static {v6, v5}, Lorg/godotengine/godot/Godot;->p([Ljava/lang/String;[I)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :pswitch_4
    check-cast v6, Lorg/godotengine/godot/Godot;

    .line 113
    .line 114
    check-cast v5, Lorg/godotengine/godot/GodotHost;

    .line 115
    .line 116
    invoke-static {v6, v5}, Lorg/godotengine/godot/Godot;->z(Lorg/godotengine/godot/Godot;Lorg/godotengine/godot/GodotHost;)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :pswitch_5
    check-cast v6, Le/n;

    .line 121
    .line 122
    check-cast v5, Ljava/lang/Runnable;

    .line 123
    .line 124
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    :try_start_0
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6}, Le/n;->a()V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :catchall_0
    move-exception v0

    .line 135
    invoke-virtual {v6}, Le/n;->a()V

    .line 136
    .line 137
    .line 138
    throw v0

    .line 139
    :pswitch_6
    check-cast v6, Landroidx/lifecycle/DispatchQueue;

    .line 140
    .line 141
    check-cast v5, Ljava/lang/Runnable;

    .line 142
    .line 143
    invoke-static {v6, v5}, Landroidx/lifecycle/DispatchQueue;->a(Landroidx/lifecycle/DispatchQueue;Ljava/lang/Runnable;)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :pswitch_7
    check-cast v6, Landroidx/core/content/res/ResourcesCompat$FontCallback;

    .line 148
    .line 149
    check-cast v5, Landroid/graphics/Typeface;

    .line 150
    .line 151
    invoke-static {v6, v5}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->a(Landroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/graphics/Typeface;)V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :pswitch_8
    check-cast v6, LR1/a;

    .line 156
    .line 157
    check-cast v5, Landroid/content/Context;

    .line 158
    .line 159
    const-string v7, "MinHub-Update"

    .line 160
    .line 161
    iget-object v0, v6, LR1/a;->c:Ljava/lang/String;

    .line 162
    .line 163
    :try_start_1
    new-instance v8, Ljava/net/URL;

    .line 164
    .line 165
    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    const-string v8, "null cannot be cast to non-null type java.net.HttpURLConnection"

    .line 173
    .line 174
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 178
    .line 179
    const/16 v8, 0x3a98

    .line 180
    .line 181
    invoke-virtual {v0, v8}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v8}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 185
    .line 186
    .line 187
    const-string v8, "GET"

    .line 188
    .line 189
    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 193
    .line 194
    .line 195
    const-string v8, "User-Agent"

    .line 196
    .line 197
    const-string v9, "Mozilla/5.0 (Linux; Android 10) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36"

    .line 198
    .line 199
    invoke-virtual {v0, v8, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 203
    .line 204
    .line 205
    move-result-object v8

    .line 206
    const-string v9, "getInputStream(...)"

    .line 207
    .line 208
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    sget-object v9, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 212
    .line 213
    new-instance v10, Ljava/io/InputStreamReader;

    .line 214
    .line 215
    invoke-direct {v10, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 216
    .line 217
    .line 218
    new-instance v8, Ljava/io/BufferedReader;

    .line 219
    .line 220
    const/16 v9, 0x2000

    .line 221
    .line 222
    invoke-direct {v8, v10, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 223
    .line 224
    .line 225
    :try_start_2
    invoke-static {v8}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 229
    :try_start_3
    invoke-static {v8, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 233
    .line 234
    .line 235
    new-instance v0, Lkotlin/text/Regex;

    .line 236
    .line 237
    const-string v8, "href=\"(https://download[^\"]+)\"[^>]*id=\"downloadButton\""

    .line 238
    .line 239
    sget-object v10, Lkotlin/text/RegexOption;->IGNORE_CASE:Lkotlin/text/RegexOption;

    .line 240
    .line 241
    sget-object v11, Lkotlin/text/RegexOption;->DOT_MATCHES_ALL:Lkotlin/text/RegexOption;

    .line 242
    .line 243
    filled-new-array {v10, v11}, [Lkotlin/text/RegexOption;

    .line 244
    .line 245
    .line 246
    move-result-object v10

    .line 247
    invoke-static {v10}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 248
    .line 249
    .line 250
    move-result-object v10

    .line 251
    invoke-direct {v0, v8, v10}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 252
    .line 253
    .line 254
    invoke-static {v0, v9, v2, v1, v4}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    if-eqz v0, :cond_3

    .line 259
    .line 260
    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    if-eqz v0, :cond_3

    .line 265
    .line 266
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    check-cast v0, Ljava/lang/String;

    .line 271
    .line 272
    if-eqz v0, :cond_3

    .line 273
    .line 274
    const-string v1, "&amp;"

    .line 275
    .line 276
    const-string v2, "&"

    .line 277
    .line 278
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 282
    goto :goto_2

    .line 283
    :catch_0
    move-exception v0

    .line 284
    goto :goto_1

    .line 285
    :catchall_1
    move-exception v0

    .line 286
    move-object v1, v0

    .line 287
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 288
    :catchall_2
    move-exception v0

    .line 289
    :try_start_5
    invoke-static {v8, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 290
    .line 291
    .line 292
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 293
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    const-string v1, "MediaFire resolve failed: "

    .line 298
    .line 299
    invoke-static {v1, v0, v7}, LE/b;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    .line 303
    .line 304
    const-string v0, "MediaFire resolved: "

    .line 305
    .line 306
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .line 312
    .line 313
    goto :goto_3

    .line 314
    :cond_4
    const-string v0, "MediaFire resolve failed, using raw URL"

    .line 315
    .line 316
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .line 318
    .line 319
    iget-object v4, v6, LR1/a;->c:Ljava/lang/String;

    .line 320
    .line 321
    :goto_3
    new-instance v0, Landroid/os/Handler;

    .line 322
    .line 323
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 328
    .line 329
    .line 330
    new-instance v1, LC1/A1;

    .line 331
    .line 332
    const/4 v2, 0x4

    .line 333
    invoke-direct {v1, v5, v6, v4, v2}, LC1/A1;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 337
    .line 338
    .line 339
    return-void

    .line 340
    :pswitch_9
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 341
    .line 342
    check-cast v5, Ljava/lang/Exception;

    .line 343
    .line 344
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    if-nez v0, :cond_5

    .line 349
    .line 350
    const-string v0, "Network error"

    .line 351
    .line 352
    :cond_5
    invoke-interface {v6, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    return-void

    .line 356
    :pswitch_a
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 357
    .line 358
    check-cast v5, Lorg/json/JSONObject;

    .line 359
    .line 360
    invoke-interface {v6, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    return-void

    .line 364
    :pswitch_b
    check-cast v6, Ljava/lang/String;

    .line 365
    .line 366
    check-cast v5, Landroidx/fragment/app/strictmode/Violation;

    .line 367
    .line 368
    invoke-static {v6, v5}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->a(Ljava/lang/String;Landroidx/fragment/app/strictmode/Violation;)V

    .line 369
    .line 370
    .line 371
    return-void

    .line 372
    :pswitch_c
    check-cast v6, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    .line 373
    .line 374
    check-cast v5, Landroidx/fragment/app/strictmode/Violation;

    .line 375
    .line 376
    invoke-static {v6, v5}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->b(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Landroidx/fragment/app/strictmode/Violation;)V

    .line 377
    .line 378
    .line 379
    return-void

    .line 380
    :pswitch_d
    check-cast v6, LJ1/a;

    .line 381
    .line 382
    check-cast v5, Ljava/lang/String;

    .line 383
    .line 384
    :try_start_6
    iget-object v0, v6, LJ1/a;->a:Lcom/minhub/gamehub/game/GameActivity;

    .line 385
    .line 386
    new-instance v1, Landroid/content/Intent;

    .line 387
    .line 388
    const-string v2, "android.intent.action.VIEW"

    .line 389
    .line 390
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 391
    .line 392
    .line 393
    move-result-object v3

    .line 394
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 398
    .line 399
    .line 400
    :catch_1
    return-void

    .line 401
    :pswitch_e
    check-cast v6, LC1/V1;

    .line 402
    .line 403
    check-cast v5, Ljava/lang/CharSequence;

    .line 404
    .line 405
    iget-object v0, v6, LC1/V1;->a:Landroid/widget/TextView;

    .line 406
    .line 407
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    .line 409
    .line 410
    iget-object v0, v6, LC1/V1;->a:Landroid/widget/TextView;

    .line 411
    .line 412
    const/high16 v1, 0x41200000    # 10.0f

    .line 413
    .line 414
    iget v2, v6, LC1/V1;->h:F

    .line 415
    .line 416
    mul-float/2addr v1, v2

    .line 417
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    const-wide/16 v1, 0x0

    .line 425
    .line 426
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    const/high16 v1, 0x3f800000    # 1.0f

    .line 431
    .line 432
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    const/4 v1, 0x0

    .line 437
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    const-wide/16 v1, 0xf0

    .line 442
    .line 443
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 448
    .line 449
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 457
    .line 458
    .line 459
    return-void

    .line 460
    :pswitch_f
    check-cast v6, Lcom/minhub/gamehub/hub/OnlineDownloadsActivity;

    .line 461
    .line 462
    check-cast v5, Ljava/util/List;

    .line 463
    .line 464
    iget-object v0, v6, Lcom/minhub/gamehub/hub/OnlineDownloadsActivity;->f:LC1/G1;

    .line 465
    .line 466
    if-nez v0, :cond_6

    .line 467
    .line 468
    const-string v0, "adapter"

    .line 469
    .line 470
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    move-object v0, v4

    .line 474
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 475
    .line 476
    .line 477
    const-string v1, "list"

    .line 478
    .line 479
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    iput-object v5, v0, LC1/G1;->d:Ljava/util/List;

    .line 483
    .line 484
    invoke-virtual {v0}, LP/W;->c()V

    .line 485
    .line 486
    .line 487
    const-string v0, "jobs"

    .line 488
    .line 489
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 493
    .line 494
    .line 495
    move-result v0

    .line 496
    iget-object v1, v6, Lcom/minhub/gamehub/hub/OnlineDownloadsActivity;->e:LI1/j;

    .line 497
    .line 498
    const-string v3, "b"

    .line 499
    .line 500
    if-nez v1, :cond_7

    .line 501
    .line 502
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    move-object v1, v4

    .line 506
    :cond_7
    iget-object v1, v1, LI1/j;->e:Ljava/lang/Object;

    .line 507
    .line 508
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 509
    .line 510
    const/16 v5, 0x8

    .line 511
    .line 512
    if-nez v0, :cond_8

    .line 513
    .line 514
    move v7, v2

    .line 515
    goto :goto_4

    .line 516
    :cond_8
    move v7, v5

    .line 517
    :goto_4
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 518
    .line 519
    .line 520
    iget-object v1, v6, Lcom/minhub/gamehub/hub/OnlineDownloadsActivity;->e:LI1/j;

    .line 521
    .line 522
    if-nez v1, :cond_9

    .line 523
    .line 524
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    goto :goto_5

    .line 528
    :cond_9
    move-object v4, v1

    .line 529
    :goto_5
    iget-object v1, v4, LI1/j;->f:Ljava/lang/Object;

    .line 530
    .line 531
    check-cast v1, Landroid/widget/TextView;

    .line 532
    .line 533
    if-nez v0, :cond_a

    .line 534
    .line 535
    move v2, v5

    .line 536
    :cond_a
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 537
    .line 538
    .line 539
    return-void

    .line 540
    :pswitch_10
    check-cast v6, Lcom/minhub/gamehub/hub/LoginActivity;

    .line 541
    .line 542
    sget v0, Lcom/minhub/gamehub/hub/LoginActivity;->l:I

    .line 543
    .line 544
    invoke-virtual {v6}, Landroid/app/Activity;->isFinishing()Z

    .line 545
    .line 546
    .line 547
    move-result v0

    .line 548
    if-nez v0, :cond_11

    .line 549
    .line 550
    invoke-virtual {v6}, Landroid/app/Activity;->isDestroyed()Z

    .line 551
    .line 552
    .line 553
    move-result v0

    .line 554
    if-eqz v0, :cond_b

    .line 555
    .line 556
    goto/16 :goto_8

    .line 557
    .line 558
    :cond_b
    iget-object v0, v6, Lcom/minhub/gamehub/hub/LoginActivity;->f:Le/g;

    .line 559
    .line 560
    if-eqz v0, :cond_c

    .line 561
    .line 562
    invoke-virtual {v0}, Le/D;->dismiss()V

    .line 563
    .line 564
    .line 565
    :cond_c
    iput-object v4, v6, Lcom/minhub/gamehub/hub/LoginActivity;->f:Le/g;

    .line 566
    .line 567
    invoke-static {v5}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    const-string v1, "LoginActivity"

    .line 572
    .line 573
    if-nez v0, :cond_f

    .line 574
    .line 575
    check-cast v5, Lcom/minhub/gamehub/hub/auth/AuthHttp$Result;

    .line 576
    .line 577
    invoke-virtual {v5}, Lcom/minhub/gamehub/hub/auth/AuthHttp$Result;->isSuccess()Z

    .line 578
    .line 579
    .line 580
    move-result v0

    .line 581
    if-eqz v0, :cond_d

    .line 582
    .line 583
    :try_start_7
    sget-object v0, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge;->INSTANCE:Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge;

    .line 584
    .line 585
    invoke-virtual {v5}, Lcom/minhub/gamehub/hub/auth/AuthHttp$Result;->getBody()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v2

    .line 589
    invoke-virtual {v0, v2}, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge;->parseRedeemResponse(Ljava/lang/String;)Lcom/minhub/gamehub/hub/auth/MinHubPatreonSession;

    .line 590
    .line 591
    .line 592
    move-result-object v0

    .line 593
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/auth/MinHubPatreonSession;->getName()Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 597
    move-object v4, v6

    .line 598
    :try_start_8
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/auth/MinHubPatreonSession;->getPatreonUserId()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v6

    .line 602
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/auth/MinHubPatreonSession;->getLoginType()I

    .line 603
    .line 604
    .line 605
    move-result v7

    .line 606
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/auth/MinHubPatreonSession;->getPledgeCents()I

    .line 607
    .line 608
    .line 609
    move-result v2

    .line 610
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 611
    .line 612
    .line 613
    move-result-object v8

    .line 614
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/auth/MinHubPatreonSession;->getSessionToken()Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v9

    .line 618
    invoke-virtual/range {v4 .. v9}, Lcom/minhub/gamehub/hub/LoginActivity;->q(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 619
    .line 620
    .line 621
    goto/16 :goto_8

    .line 622
    .line 623
    :catch_2
    move-exception v0

    .line 624
    goto :goto_6

    .line 625
    :catch_3
    move-exception v0

    .line 626
    move-object v4, v6

    .line 627
    :goto_6
    const-string v2, "Redeem parsing error"

    .line 628
    .line 629
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 630
    .line 631
    .line 632
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v0

    .line 636
    new-instance v1, Ljava/lang/StringBuilder;

    .line 637
    .line 638
    const-string v2, "Error processing Patreon account: "

    .line 639
    .line 640
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    .line 645
    .line 646
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v0

    .line 650
    invoke-virtual {v4, v0}, Lcom/minhub/gamehub/hub/LoginActivity;->t(Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {v4, v3}, Lcom/minhub/gamehub/hub/LoginActivity;->r(Z)V

    .line 654
    .line 655
    .line 656
    goto/16 :goto_8

    .line 657
    .line 658
    :cond_d
    move-object v4, v6

    .line 659
    invoke-virtual {v5}, Lcom/minhub/gamehub/hub/auth/AuthHttp$Result;->getCode()I

    .line 660
    .line 661
    .line 662
    move-result v0

    .line 663
    invoke-virtual {v5}, Lcom/minhub/gamehub/hub/auth/AuthHttp$Result;->getBody()Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v2

    .line 667
    new-instance v6, Ljava/lang/StringBuilder;

    .line 668
    .line 669
    const-string v7, "Redeem error HTTP "

    .line 670
    .line 671
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 675
    .line 676
    .line 677
    const-string v0, ": "

    .line 678
    .line 679
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    .line 681
    .line 682
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    .line 691
    .line 692
    invoke-virtual {v5}, Lcom/minhub/gamehub/hub/auth/AuthHttp$Result;->getBody()Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v0

    .line 696
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 697
    .line 698
    .line 699
    move-result v0

    .line 700
    const-string v1, "Patreon authentication failed (HTTP "

    .line 701
    .line 702
    if-nez v0, :cond_e

    .line 703
    .line 704
    invoke-virtual {v5}, Lcom/minhub/gamehub/hub/auth/AuthHttp$Result;->getCode()I

    .line 705
    .line 706
    .line 707
    move-result v0

    .line 708
    invoke-virtual {v5}, Lcom/minhub/gamehub/hub/auth/AuthHttp$Result;->getBody()Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v2

    .line 712
    new-instance v5, Ljava/lang/StringBuilder;

    .line 713
    .line 714
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 718
    .line 719
    .line 720
    const-string v0, ")\n"

    .line 721
    .line 722
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    .line 724
    .line 725
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    .line 727
    .line 728
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object v0

    .line 732
    goto :goto_7

    .line 733
    :cond_e
    invoke-virtual {v5}, Lcom/minhub/gamehub/hub/auth/AuthHttp$Result;->getCode()I

    .line 734
    .line 735
    .line 736
    move-result v0

    .line 737
    const-string v2, ")"

    .line 738
    .line 739
    invoke-static {v0, v1, v2}, LE/b;->j(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object v0

    .line 743
    :goto_7
    invoke-virtual {v4, v0}, Lcom/minhub/gamehub/hub/LoginActivity;->t(Ljava/lang/String;)V

    .line 744
    .line 745
    .line 746
    invoke-virtual {v4, v3}, Lcom/minhub/gamehub/hub/LoginActivity;->r(Z)V

    .line 747
    .line 748
    .line 749
    goto :goto_8

    .line 750
    :cond_f
    move-object v4, v6

    .line 751
    const-string v2, "Redeem error"

    .line 752
    .line 753
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 754
    .line 755
    .line 756
    sget-object v1, Lcom/minhub/gamehub/hub/auth/LoginAlertDialog;->INSTANCE:Lcom/minhub/gamehub/hub/auth/LoginAlertDialog;

    .line 757
    .line 758
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 759
    .line 760
    .line 761
    move-result-object v2

    .line 762
    if-nez v2, :cond_10

    .line 763
    .line 764
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 765
    .line 766
    .line 767
    move-result-object v0

    .line 768
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 769
    .line 770
    .line 771
    move-result-object v2

    .line 772
    :cond_10
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 773
    .line 774
    .line 775
    invoke-virtual {v1, v4, v2}, Lcom/minhub/gamehub/hub/auth/LoginAlertDialog;->showConnectionError(Landroid/app/Activity;Ljava/lang/String;)Le/g;

    .line 776
    .line 777
    .line 778
    invoke-virtual {v4, v3}, Lcom/minhub/gamehub/hub/LoginActivity;->r(Z)V

    .line 779
    .line 780
    .line 781
    :cond_11
    :goto_8
    return-void

    .line 782
    :pswitch_11
    check-cast v6, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;

    .line 783
    .line 784
    check-cast v5, LD1/h;

    .line 785
    .line 786
    sget v0, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->o:I

    .line 787
    .line 788
    invoke-virtual {v6}, Landroid/app/Activity;->isFinishing()Z

    .line 789
    .line 790
    .line 791
    move-result v0

    .line 792
    if-nez v0, :cond_23

    .line 793
    .line 794
    invoke-virtual {v6}, Landroid/app/Activity;->isDestroyed()Z

    .line 795
    .line 796
    .line 797
    move-result v0

    .line 798
    if-eqz v0, :cond_12

    .line 799
    .line 800
    goto/16 :goto_c

    .line 801
    .line 802
    :cond_12
    iget-object v0, v6, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->h:Landroid/widget/ProgressBar;

    .line 803
    .line 804
    if-nez v0, :cond_13

    .line 805
    .line 806
    const-string v0, "progress"

    .line 807
    .line 808
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 809
    .line 810
    .line 811
    move-object v0, v4

    .line 812
    :cond_13
    iget v7, v5, LD1/h;->c:I

    .line 813
    .line 814
    iget-object v8, v5, LD1/h;->d:Ljava/lang/String;

    .line 815
    .line 816
    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 817
    .line 818
    .line 819
    iget-object v0, v6, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->i:Landroid/widget/TextView;

    .line 820
    .line 821
    if-nez v0, :cond_14

    .line 822
    .line 823
    const-string v0, "percent"

    .line 824
    .line 825
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 826
    .line 827
    .line 828
    move-object v0, v4

    .line 829
    :cond_14
    iget v7, v5, LD1/h;->c:I

    .line 830
    .line 831
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 832
    .line 833
    .line 834
    move-result-object v7

    .line 835
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 836
    .line 837
    .line 838
    move-result-object v7

    .line 839
    const v9, 0x7f1201cb

    .line 840
    .line 841
    .line 842
    invoke-virtual {v6, v9, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 843
    .line 844
    .line 845
    move-result-object v7

    .line 846
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 847
    .line 848
    .line 849
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 850
    .line 851
    .line 852
    move-result v0

    .line 853
    if-lez v0, :cond_16

    .line 854
    .line 855
    iget-object v0, v6, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->j:Landroid/widget/TextView;

    .line 856
    .line 857
    if-nez v0, :cond_15

    .line 858
    .line 859
    const-string v0, "status"

    .line 860
    .line 861
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 862
    .line 863
    .line 864
    move-object v0, v4

    .line 865
    :cond_15
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 866
    .line 867
    .line 868
    :cond_16
    iget-object v0, v5, LD1/h;->b:Ljava/util/List;

    .line 869
    .line 870
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 871
    .line 872
    .line 873
    move-result-object v0

    .line 874
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 875
    .line 876
    .line 877
    move-result v7

    .line 878
    if-eqz v7, :cond_1f

    .line 879
    .line 880
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 881
    .line 882
    .line 883
    move-result-object v7

    .line 884
    add-int/lit8 v8, v2, 0x1

    .line 885
    .line 886
    if-gez v2, :cond_17

    .line 887
    .line 888
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 889
    .line 890
    .line 891
    :cond_17
    check-cast v7, LD1/i;

    .line 892
    .line 893
    iget-object v9, v6, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->f:Ljava/util/List;

    .line 894
    .line 895
    if-nez v9, :cond_18

    .line 896
    .line 897
    const-string v9, "icons"

    .line 898
    .line 899
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 900
    .line 901
    .line 902
    move-object v9, v4

    .line 903
    :cond_18
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 904
    .line 905
    .line 906
    move-result-object v9

    .line 907
    check-cast v9, Landroid/widget/ImageView;

    .line 908
    .line 909
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 910
    .line 911
    .line 912
    move-result v10

    .line 913
    if-eqz v10, :cond_1c

    .line 914
    .line 915
    if-eq v10, v3, :cond_1b

    .line 916
    .line 917
    if-eq v10, v1, :cond_1a

    .line 918
    .line 919
    const/4 v11, 0x3

    .line 920
    if-ne v10, v11, :cond_19

    .line 921
    .line 922
    const v10, 0x7f0800dd

    .line 923
    .line 924
    .line 925
    goto :goto_a

    .line 926
    :cond_19
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 927
    .line 928
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 929
    .line 930
    .line 931
    throw v0

    .line 932
    :cond_1a
    const v10, 0x7f0800dc

    .line 933
    .line 934
    .line 935
    goto :goto_a

    .line 936
    :cond_1b
    const v10, 0x7f0800df

    .line 937
    .line 938
    .line 939
    goto :goto_a

    .line 940
    :cond_1c
    const v10, 0x7f0800de

    .line 941
    .line 942
    .line 943
    :goto_a
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 944
    .line 945
    .line 946
    iget-object v9, v6, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->g:Ljava/util/List;

    .line 947
    .line 948
    if-nez v9, :cond_1d

    .line 949
    .line 950
    const-string v9, "stepRows"

    .line 951
    .line 952
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 953
    .line 954
    .line 955
    move-object v9, v4

    .line 956
    :cond_1d
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 957
    .line 958
    .line 959
    move-result-object v2

    .line 960
    check-cast v2, Landroid/view/View;

    .line 961
    .line 962
    sget-object v9, LD1/i;->c:LD1/i;

    .line 963
    .line 964
    if-ne v7, v9, :cond_1e

    .line 965
    .line 966
    const v7, 0x7f08009f

    .line 967
    .line 968
    .line 969
    goto :goto_b

    .line 970
    :cond_1e
    const v7, 0x7f08009e

    .line 971
    .line 972
    .line 973
    :goto_b
    invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 974
    .line 975
    .line 976
    move v2, v8

    .line 977
    goto :goto_9

    .line 978
    :cond_1f
    iget-object v0, v5, LD1/h;->a:LD1/g;

    .line 979
    .line 980
    iget-object v2, v6, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->n:LD1/g;

    .line 981
    .line 982
    if-ne v0, v2, :cond_20

    .line 983
    .line 984
    goto :goto_c

    .line 985
    :cond_20
    iput-object v0, v6, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->n:LD1/g;

    .line 986
    .line 987
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 988
    .line 989
    .line 990
    move-result v0

    .line 991
    if-eqz v0, :cond_23

    .line 992
    .line 993
    if-eq v0, v3, :cond_22

    .line 994
    .line 995
    if-ne v0, v1, :cond_21

    .line 996
    .line 997
    new-instance v0, LC1/s1;

    .line 998
    .line 999
    invoke-direct {v0, v6, v3}, LC1/s1;-><init>(Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;I)V

    .line 1000
    .line 1001
    .line 1002
    const v1, 0x7f1201be

    .line 1003
    .line 1004
    .line 1005
    invoke-virtual {v6, v1, v0}, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->q(ILkotlin/jvm/functions/Function0;)V

    .line 1006
    .line 1007
    .line 1008
    goto :goto_c

    .line 1009
    :cond_21
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 1010
    .line 1011
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 1012
    .line 1013
    .line 1014
    throw v0

    .line 1015
    :cond_22
    iget-object v0, v5, LD1/h;->e:Ljava/lang/Integer;

    .line 1016
    .line 1017
    if-eqz v0, :cond_23

    .line 1018
    .line 1019
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1020
    .line 1021
    .line 1022
    move-result v0

    .line 1023
    new-instance v2, Ly1/C0;

    .line 1024
    .line 1025
    invoke-direct {v2, v6, v0, v1}, Ly1/C0;-><init>(Landroidx/fragment/app/FragmentActivity;II)V

    .line 1026
    .line 1027
    .line 1028
    const v0, 0x7f1201ca

    .line 1029
    .line 1030
    .line 1031
    invoke-virtual {v6, v0, v2}, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->q(ILkotlin/jvm/functions/Function0;)V

    .line 1032
    .line 1033
    .line 1034
    :cond_23
    :goto_c
    return-void

    .line 1035
    :pswitch_12
    check-cast v6, Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 1036
    .line 1037
    check-cast v5, Lcom/minhub/gamehub/hub/catalog/UnsupportedGameImportException;

    .line 1038
    .line 1039
    sget-object v0, LC1/Q;->b:LC1/Q;

    .line 1040
    .line 1041
    invoke-virtual {v6, v0}, Lcom/minhub/gamehub/hub/AddGameActivity;->B(LC1/Q;)V

    .line 1042
    .line 1043
    .line 1044
    invoke-static {v6, v5}, LC1/O;->d(Lcom/minhub/gamehub/hub/AddGameActivity;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v0

    .line 1048
    invoke-static {v6, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v0

    .line 1052
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1053
    .line 1054
    .line 1055
    return-void

    .line 1056
    :pswitch_13
    check-cast v6, Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 1057
    .line 1058
    check-cast v5, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;

    .line 1059
    .line 1060
    sget v0, Lcom/minhub/gamehub/hub/AddGameActivity;->y:I

    .line 1061
    .line 1062
    invoke-virtual {v6}, Landroid/app/Activity;->isFinishing()Z

    .line 1063
    .line 1064
    .line 1065
    move-result v0

    .line 1066
    invoke-virtual {v6}, Landroid/app/Activity;->isDestroyed()Z

    .line 1067
    .line 1068
    .line 1069
    move-result v1

    .line 1070
    if-nez v0, :cond_24

    .line 1071
    .line 1072
    if-nez v1, :cond_24

    .line 1073
    .line 1074
    invoke-virtual {v6, v5}, Lcom/minhub/gamehub/hub/AddGameActivity;->y(Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;)V

    .line 1075
    .line 1076
    .line 1077
    :cond_24
    return-void

    .line 1078
    nop

    .line 1079
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
