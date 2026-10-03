.class public final synthetic Ly1/p;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/minhub/gamehub/game/GameActivity;

.field public final synthetic c:LQ1/d;

.field public final synthetic d:Landroid/widget/EditText;

.field public final synthetic e:Lcom/minhub/gamehub/data/Game;

.field public final synthetic f:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:LQ1/c;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/game/GameActivity;LQ1/d;Landroid/widget/EditText;Lcom/minhub/gamehub/data/Game;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;LQ1/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly1/p;->b:Lcom/minhub/gamehub/game/GameActivity;

    .line 5
    .line 6
    iput-object p2, p0, Ly1/p;->c:LQ1/d;

    .line 7
    .line 8
    iput-object p3, p0, Ly1/p;->d:Landroid/widget/EditText;

    .line 9
    .line 10
    iput-object p4, p0, Ly1/p;->e:Lcom/minhub/gamehub/data/Game;

    .line 11
    .line 12
    iput-object p5, p0, Ly1/p;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 13
    .line 14
    iput-object p6, p0, Ly1/p;->g:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p7, p0, Ly1/p;->h:LQ1/c;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 13

    .line 1
    iget-object v1, p0, Ly1/p;->b:Lcom/minhub/gamehub/game/GameActivity;

    .line 2
    .line 3
    iget-object v3, p0, Ly1/p;->c:LQ1/d;

    .line 4
    .line 5
    invoke-virtual {v1, v3}, Lcom/minhub/gamehub/game/GameActivity;->y(LQ1/d;)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const p2, 0x7f120062

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-static {v1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 21
    .line 22
    .line 23
    iget-object p2, p0, Ly1/p;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 24
    .line 25
    iget-object v0, p0, Ly1/p;->g:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {p2, v0}, Ly1/s;->d(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    iget-object p2, p0, Ly1/p;->d:Landroid/widget/EditText;

    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    const/4 v8, 0x0

    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    move-object v6, p2

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move-object v6, v8

    .line 47
    :goto_0
    new-instance v0, Ly1/p0;

    .line 48
    .line 49
    const/4 v7, 0x2

    .line 50
    iget-object v2, p0, Ly1/p;->e:Lcom/minhub/gamehub/data/Game;

    .line 51
    .line 52
    iget-object v4, p0, Ly1/p;->h:LQ1/c;

    .line 53
    .line 54
    invoke-direct/range {v0 .. v7}, Ly1/p0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;I)V

    .line 55
    .line 56
    .line 57
    move-object p2, v3

    .line 58
    const-string v3, "done"

    .line 59
    .line 60
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    if-nez v2, :cond_2

    .line 64
    .line 65
    invoke-virtual {v0, v8}, Ly1/p0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    goto/16 :goto_1

    .line 69
    .line 70
    :cond_2
    move-object v3, v8

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 72
    .line 73
    .line 74
    move-result-wide v7

    .line 75
    new-instance v9, Landroid/os/Handler;

    .line 76
    .line 77
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-direct {v9, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v2}, Lcom/minhub/gamehub/data/GameKt;->getEngineEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameEngine;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    sget-object v5, Ly1/K;->a:[I

    .line 89
    .line 90
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    aget v4, v5, v4

    .line 95
    .line 96
    const/4 v5, 0x6

    .line 97
    if-eq v4, v5, :cond_4

    .line 98
    .line 99
    const/4 v5, 0x7

    .line 100
    if-eq v4, v5, :cond_4

    .line 101
    .line 102
    const/16 v2, 0x8

    .line 103
    .line 104
    if-eq v4, v2, :cond_3

    .line 105
    .line 106
    invoke-virtual {v0, v3}, Ly1/p0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_3
    invoke-virtual {v1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    iget-object v2, v2, Lw1/d;->q0:Landroid/webkit/WebView;

    .line 115
    .line 116
    new-instance v3, Lcom/minhub/gamehub/hub/catalog/c;

    .line 117
    .line 118
    const/4 v4, 0x2

    .line 119
    invoke-direct {v3, v1, v0, v9, v4}, Lcom/minhub/gamehub/hub/catalog/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 120
    .line 121
    .line 122
    const-string v0, "(function(){try{return tyrano.plugin.kag.config.projectID||\'\'}catch(e){return \'\'}})()"

    .line 123
    .line 124
    invoke-virtual {v2, v0, v3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_4
    sget-object v3, Lcom/minhub/gamehub/data/RpgMakerSaveStore;->INSTANCE:Lcom/minhub/gamehub/data/RpgMakerSaveStore;

    .line 129
    .line 130
    invoke-static {v2}, Lcom/minhub/gamehub/data/GameKt;->getEngineEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameEngine;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    const/16 v5, 0x3e6

    .line 135
    .line 136
    invoke-virtual {v3, v4, v5}, Lcom/minhub/gamehub/data/RpgMakerSaveStore;->fileNameForSlot(Lcom/minhub/gamehub/data/GameEngine;I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    new-instance v6, Ljava/io/File;

    .line 141
    .line 142
    invoke-virtual {v3, v2}, Lcom/minhub/gamehub/data/RpgMakerSaveStore;->saveDir(Lcom/minhub/gamehub/data/Game;)Ljava/io/File;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    invoke-direct {v6, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    move-object v5, v3

    .line 150
    move-object v3, v1

    .line 151
    new-instance v1, Ljava/io/File;

    .line 152
    .line 153
    invoke-virtual {v5, v2}, Lcom/minhub/gamehub/data/RpgMakerSaveStore;->saveDir(Lcom/minhub/gamehub/data/Game;)Ljava/io/File;

    .line 154
    .line 155
    .line 156
    move-result-object v10

    .line 157
    invoke-static {v2}, Lcom/minhub/gamehub/data/GameKt;->getEngineEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameEngine;

    .line 158
    .line 159
    .line 160
    move-result-object v11

    .line 161
    const/16 v12, 0x3e5

    .line 162
    .line 163
    invoke-virtual {v5, v11, v12}, Lcom/minhub/gamehub/data/RpgMakerSaveStore;->fileNameForSlot(Lcom/minhub/gamehub/data/GameEngine;I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    invoke-direct {v1, v10, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    iget-object v10, v5, Lw1/d;->q0:Landroid/webkit/WebView;

    .line 175
    .line 176
    move-object v5, v2

    .line 177
    move-object v2, v0

    .line 178
    new-instance v0, Ly1/F;

    .line 179
    .line 180
    invoke-direct/range {v0 .. v9}, Ly1/F;-><init>(Ljava/io/File;Ly1/p0;Lcom/minhub/gamehub/game/GameActivity;Ljava/lang/String;Lcom/minhub/gamehub/data/Game;Ljava/io/File;JLandroid/os/Handler;)V

    .line 181
    .line 182
    .line 183
    const-string v1, "(function(){try{if(!DataManager||!DataManager.saveGame||!window.$gameMap||!($gameMap.mapId()>0))return false;if(window.__mhBugSaveSafe&&!window.__mhBugSaveSafe())return false;if(typeof $gameSystem!==\'undefined\'&&$gameSystem.onBeforeSave)$gameSystem.onBeforeSave();var r=DataManager.saveGame(998);if(r&&typeof r.then===\'function\'){r.catch(function(){});return true}return !!r}catch(e){return false}})()"

    .line 184
    .line 185
    invoke-virtual {v10, v1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 186
    .line 187
    .line 188
    :goto_1
    invoke-virtual {p2}, LQ1/d;->c()V

    .line 189
    .line 190
    .line 191
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 192
    .line 193
    .line 194
    return-void
.end method
