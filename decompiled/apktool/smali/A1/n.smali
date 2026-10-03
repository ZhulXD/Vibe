.class public final synthetic LA1/n;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LA1/n;->b:I

    iput-object p2, p0, LA1/n;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lu1/a;Landroid/webkit/WebView;)V
    .locals 0

    .line 2
    const/16 p1, 0xf

    iput p1, p0, LA1/n;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LA1/n;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, LA1/n;->b:I

    .line 2
    .line 3
    const-class v1, LC1/Z0;

    .line 4
    .line 5
    const-string v2, "requireActivity(...)"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    iget-object v5, p0, LA1/n;->c:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v5, Lcom/minhub/gamehub/game/VxAceGameActivity;

    .line 15
    .line 16
    const v0, 0x7f120400

    .line 17
    .line 18
    .line 19
    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v5, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 31
    .line 32
    return-object v0

    .line 33
    :pswitch_0
    check-cast v5, Ly1/j1;

    .line 34
    .line 35
    iget-object v0, v5, Ly1/j1;->b:Lcom/minhub/gamehub/gamepad/GamepadOverlay;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/minhub/gamehub/gamepad/GamepadOverlay;->getEnabledButtonIds()Ljava/util/Set;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0

    .line 42
    :pswitch_1
    check-cast v5, Landroid/webkit/WebView;

    .line 43
    .line 44
    const-string v0, "(function() {\n    var VER = \'13\';\n    var PANEL_ID = \'__mh_tc_v\' + VER + \'__\';\n    var staleIds = [\'__mh_tyrano_cheat__\',\'__mh_tyrano_cheat_v5__\'];\n    staleIds.forEach(function(sid) { var e = document.getElementById(sid); if (e) e.remove(); });\n    document.querySelectorAll(\'[id^=\"__mh_tc_v\"]\').forEach(function(e) { if (e.id !== PANEL_ID) e.remove(); });\n    var existing = document.getElementById(PANEL_ID);\n    if (existing) { existing.remove(); return; }\n    document.querySelectorAll(\'script[src=\"https://appassets.androidplatform.net/cheat/tyrano-cheat.js\"]\').forEach(function(s){ s.remove(); });\n    var s = document.createElement(\'script\');\n    s.src = \'https://appassets.androidplatform.net/cheat/tyrano-cheat.js\';\n    document.head.appendChild(s);\n})();"

    .line 45
    .line 46
    invoke-virtual {v5, v0, v3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 47
    .line 48
    .line 49
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 50
    .line 51
    return-object v0

    .line 52
    :pswitch_2
    check-cast v5, Landroid/app/AlertDialog;

    .line 53
    .line 54
    invoke-static {v5}, Lorg/godotengine/godot/utils/DialogUtils$Companion;->d(Landroid/app/AlertDialog;)Lkotlin/Unit;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    return-object v0

    .line 59
    :pswitch_3
    check-cast v5, Lorg/godotengine/godot/service/GodotService;

    .line 60
    .line 61
    invoke-static {v5}, Lorg/godotengine/godot/service/GodotService;->b(Lorg/godotengine/godot/service/GodotService;)Lorg/godotengine/godot/Godot;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    return-object v0

    .line 66
    :pswitch_4
    check-cast v5, Lkotlin/time/AbstractLongTimeSource;

    .line 67
    .line 68
    invoke-static {v5}, Lkotlin/time/AbstractLongTimeSource;->a(Lkotlin/time/AbstractLongTimeSource;)J

    .line 69
    .line 70
    .line 71
    move-result-wide v0

    .line 72
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    return-object v0

    .line 77
    :pswitch_5
    check-cast v5, Lorg/godotengine/godot/vulkan/VkSurfaceView;

    .line 78
    .line 79
    invoke-static {v5}, Lorg/godotengine/godot/vulkan/VkSurfaceView;->a(Lorg/godotengine/godot/vulkan/VkSurfaceView;)Lorg/godotengine/godot/vulkan/VkThread;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    return-object v0

    .line 84
    :pswitch_6
    check-cast v5, Lorg/godotengine/godot/nativeapi/GodotNativeBridge;

    .line 85
    .line 86
    invoke-static {v5}, Lorg/godotengine/godot/nativeapi/GodotNativeBridge;->a(Lorg/godotengine/godot/nativeapi/GodotNativeBridge;)Landroid/os/Vibrator;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    return-object v0

    .line 91
    :pswitch_7
    check-cast v5, Lcom/minhub/gamehub/hub/catalog/DownloadForegroundService;

    .line 92
    .line 93
    invoke-static {v5}, Lcom/minhub/gamehub/hub/catalog/DownloadForegroundService;->b(Lcom/minhub/gamehub/hub/catalog/DownloadForegroundService;)Landroid/app/NotificationManager;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    return-object v0

    .line 98
    :pswitch_8
    check-cast v5, LN1/i;

    .line 99
    .line 100
    invoke-virtual {v5}, LN1/i;->g()LN1/q;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    return-object v0

    .line 105
    :pswitch_9
    check-cast v5, LJ1/a;

    .line 106
    .line 107
    iget-object v0, v5, LJ1/a;->a:Lcom/minhub/gamehub/game/GameActivity;

    .line 108
    .line 109
    const-string v1, "tyrano_save"

    .line 110
    .line 111
    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    return-object v0

    .line 116
    :pswitch_a
    check-cast v5, LC1/d2;

    .line 117
    .line 118
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 119
    .line 120
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-direct {v0, v3}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, LC1/Z0;

    .line 135
    .line 136
    return-object v0

    .line 137
    :pswitch_b
    check-cast v5, LD1/j;

    .line 138
    .line 139
    sget v0, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->o:I

    .line 140
    .line 141
    iget-object v0, v5, LD1/j;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    return-object v0

    .line 152
    :pswitch_c
    check-cast v5, LC1/d1;

    .line 153
    .line 154
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 155
    .line 156
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-direct {v0, v3}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    check-cast v0, LC1/Z0;

    .line 171
    .line 172
    return-object v0

    .line 173
    :pswitch_d
    check-cast v5, Landroid/widget/EditText;

    .line 174
    .line 175
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    if-eqz v0, :cond_0

    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    :cond_0
    if-nez v3, :cond_1

    .line 186
    .line 187
    const-string v3, ""

    .line 188
    .line 189
    :cond_1
    return-object v3

    .line 190
    :pswitch_e
    check-cast v5, Landroid/widget/Spinner;

    .line 191
    .line 192
    invoke-virtual {v5}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-nez v0, :cond_2

    .line 197
    .line 198
    const-string v0, "true"

    .line 199
    .line 200
    goto :goto_0

    .line 201
    :cond_2
    const-string v0, "false"

    .line 202
    .line 203
    :goto_0
    return-object v0

    .line 204
    :pswitch_f
    check-cast v5, LA1/K0;

    .line 205
    .line 206
    invoke-virtual {v5}, LA1/K0;->m()LA1/a0;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    return-object v0

    .line 211
    :pswitch_10
    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 212
    .line 213
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    check-cast v0, Landroid/app/Activity;

    .line 218
    .line 219
    if-eqz v0, :cond_4

    .line 220
    .line 221
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    if-nez v1, :cond_3

    .line 226
    .line 227
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-nez v0, :cond_3

    .line 232
    .line 233
    const/4 v4, 0x1

    .line 234
    :cond_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    :cond_4
    return-object v3

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
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
