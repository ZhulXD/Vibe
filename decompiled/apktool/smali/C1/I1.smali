.class public final synthetic LC1/I1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LC1/I1;->b:I

    iput-object p2, p0, LC1/I1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lu1/a;Landroid/webkit/WebView;)V
    .locals 0

    .line 2
    const/4 p1, 0x3

    iput p1, p0, LC1/I1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LC1/I1;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1
    iget v0, p0, LC1/I1;->b:I

    .line 2
    .line 3
    iget-object v1, p0, LC1/I1;->c:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Lcom/minhub/gamehub/game/GodotGameActivity;

    .line 9
    .line 10
    sget p1, Lcom/minhub/gamehub/game/GodotGameActivity;->q:I

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast v1, Ly1/x0;

    .line 17
    .line 18
    iget-object p1, v1, Ly1/x0;->d:Lkotlin/jvm/functions/Function0;

    .line 19
    .line 20
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 25
    .line 26
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_2
    check-cast v1, Landroid/webkit/WebView;

    .line 31
    .line 32
    const-string p1, "(function() {\n    var VER = \'13\';\n    var PANEL_ID = \'__mh_tc_v\' + VER + \'__\';\n    var staleIds = [\'__mh_tyrano_cheat__\',\'__mh_tyrano_cheat_v5__\'];\n    staleIds.forEach(function(sid) { var e = document.getElementById(sid); if (e) e.remove(); });\n    document.querySelectorAll(\'[id^=\"__mh_tc_v\"]\').forEach(function(e) { if (e.id !== PANEL_ID) e.remove(); });\n    var existing = document.getElementById(PANEL_ID);\n    if (existing) { existing.remove(); return; }\n    document.querySelectorAll(\'script[src=\"https://appassets.androidplatform.net/cheat/tyrano-cheat.js\"]\').forEach(function(s){ s.remove(); });\n    var s = document.createElement(\'script\');\n    s.src = \'https://appassets.androidplatform.net/cheat/tyrano-cheat.js\';\n    document.head.appendChild(s);\n})();"

    .line 33
    .line 34
    const/4 p2, 0x0

    .line 35
    invoke-virtual {v1, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_3
    check-cast v1, LF/b;

    .line 40
    .line 41
    iget-object p1, v1, LF/b;->e:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Ls1/a;

    .line 50
    .line 51
    iget-object p2, v1, LF/b;->d:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p2, Landroid/webkit/WebView;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    new-instance v0, Ls1/b;

    .line 59
    .line 60
    invoke-direct {v0, v1, p1}, Ls1/b;-><init>(LF/b;Ls1/a;)V

    .line 61
    .line 62
    .line 63
    const-string p1, "(function() {\n    return \'localStorage:\' + localStorage.length;\n})();"

    .line 64
    .line 65
    invoke-virtual {p2, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_4
    check-cast v1, Landroid/widget/EditText;

    .line 70
    .line 71
    invoke-static {v1, p1, p2}, Lorg/godotengine/godot/utils/DialogUtils$Companion;->f(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_5
    check-cast v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;

    .line 76
    .line 77
    sget p1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->i:I

    .line 78
    .line 79
    const-string p1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    .line 80
    .line 81
    const-string p2, "package:"

    .line 82
    .line 83
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 84
    .line 85
    new-instance v0, Landroid/content/Intent;

    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 111
    .line 112
    .line 113
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 114
    .line 115
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    goto :goto_0

    .line 120
    :catchall_0
    move-exception p2

    .line 121
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 122
    .line 123
    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    :goto_0
    invoke-static {p2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    if-eqz p2, :cond_0

    .line 136
    .line 137
    :try_start_1
    new-instance p2, Landroid/content/Intent;

    .line 138
    .line 139
    invoke-direct {p2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 143
    .line 144
    .line 145
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 146
    .line 147
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :catchall_1
    move-exception p1

    .line 152
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 153
    .line 154
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    :cond_0
    :goto_1
    return-void

    .line 162
    nop

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
