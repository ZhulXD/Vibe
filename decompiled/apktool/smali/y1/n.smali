.class public final synthetic Ly1/n;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/game/GameActivity;

.field public final synthetic d:LQ1/d;

.field public final synthetic e:Lcom/minhub/gamehub/data/Game;

.field public final synthetic f:LQ1/c;

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/game/GameActivity;LQ1/d;Lcom/minhub/gamehub/data/Game;LQ1/c;ZI)V
    .locals 0

    .line 1
    iput p6, p0, Ly1/n;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ly1/n;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 4
    .line 5
    iput-object p2, p0, Ly1/n;->d:LQ1/d;

    .line 6
    .line 7
    iput-object p3, p0, Ly1/n;->e:Lcom/minhub/gamehub/data/Game;

    .line 8
    .line 9
    iput-object p4, p0, Ly1/n;->f:LQ1/c;

    .line 10
    .line 11
    iput-boolean p5, p0, Ly1/n;->g:Z

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, Ly1/n;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v2, p0, Ly1/n;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 7
    .line 8
    iget-object v3, p0, Ly1/n;->d:LQ1/d;

    .line 9
    .line 10
    invoke-virtual {v2, v3}, Lcom/minhub/gamehub/game/GameActivity;->y(LQ1/d;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto/16 :goto_3

    .line 17
    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v1, v4, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 32
    .line 33
    const/16 v5, 0x1c

    .line 34
    .line 35
    if-lt v4, v5, :cond_1

    .line 36
    .line 37
    invoke-static {v1}, Lo0/a;->d(Landroid/content/pm/PackageInfo;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    long-to-int v1, v4

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move v1, v0

    .line 47
    :goto_0
    const-string v4, "ctx"

    .line 48
    .line 49
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v2}, LG1/m;->b(Landroid/content/Context;)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    const-string v5, "https://pub-5c8ab05667bd4a25a3ff4033246d4339.r2.dev/Patch/patch_manifest_v2.json"

    .line 57
    .line 58
    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    const/4 v6, 0x0

    .line 63
    if-eqz v5, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    sget-object v5, LG1/a;->a:LG1/a;

    .line 67
    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 69
    .line 70
    .line 71
    move-result-wide v7

    .line 72
    new-instance v9, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v10, "https://pub-5c8ab05667bd4a25a3ff4033246d4339.r2.dev/Patch/patch_manifest_v2.json?t="

    .line 75
    .line 76
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    const-wide/32 v8, 0x40000

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5, v7, v8, v9}, LG1/a;->b(Ljava/lang/String;J)[B

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    if-nez v5, :cond_3

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    invoke-static {v5}, LG1/m;->f([B)LN1/n;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    if-nez v5, :cond_4

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_4
    iget-object v7, v5, LN1/n;->b:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v7}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    if-eqz v7, :cond_5

    .line 110
    .line 111
    iget v5, v5, LN1/n;->o:I

    .line 112
    .line 113
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-static {v7, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    :cond_5
    :goto_1
    if-nez v6, :cond_6

    .line 122
    .line 123
    new-instance v1, LG1/h;

    .line 124
    .line 125
    const/4 v5, -0x1

    .line 126
    invoke-direct {v1, v5, v4, v0, v0}, LG1/h;-><init>(IIZZ)V

    .line 127
    .line 128
    .line 129
    move-object v4, v1

    .line 130
    goto :goto_2

    .line 131
    :cond_6
    new-instance v5, LG1/h;

    .line 132
    .line 133
    invoke-virtual {v6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    check-cast v7, Ljava/lang/Number;

    .line 138
    .line 139
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    const/4 v8, 0x1

    .line 144
    if-gt v7, v1, :cond_7

    .line 145
    .line 146
    invoke-virtual {v6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    check-cast v1, Ljava/lang/Number;

    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-eq v1, v4, :cond_7

    .line 157
    .line 158
    move v0, v8

    .line 159
    :cond_7
    invoke-virtual {v6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    check-cast v1, Ljava/lang/Number;

    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    invoke-direct {v5, v1, v4, v8, v0}, LG1/h;-><init>(IIZZ)V

    .line 170
    .line 171
    .line 172
    move-object v4, v5

    .line 173
    :goto_2
    invoke-virtual {v2, v3}, Lcom/minhub/gamehub/game/GameActivity;->y(LQ1/d;)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-nez v0, :cond_8

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_8
    new-instance v1, Ly1/r;

    .line 181
    .line 182
    iget-object v5, p0, Ly1/n;->e:Lcom/minhub/gamehub/data/Game;

    .line 183
    .line 184
    iget-object v6, p0, Ly1/n;->f:LQ1/c;

    .line 185
    .line 186
    iget-boolean v7, p0, Ly1/n;->g:Z

    .line 187
    .line 188
    invoke-direct/range {v1 .. v7}, Ly1/r;-><init>(Lcom/minhub/gamehub/game/GameActivity;LQ1/d;LG1/h;Lcom/minhub/gamehub/data/Game;LQ1/c;Z)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 192
    .line 193
    .line 194
    :goto_3
    return-void

    .line 195
    :pswitch_0
    iget-object v0, p0, Ly1/n;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 196
    .line 197
    iget-object v1, p0, Ly1/n;->d:LQ1/d;

    .line 198
    .line 199
    invoke-virtual {v0, v1}, Lcom/minhub/gamehub/game/GameActivity;->y(LQ1/d;)Z

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    if-eqz v2, :cond_9

    .line 204
    .line 205
    iget-object v2, p0, Ly1/n;->e:Lcom/minhub/gamehub/data/Game;

    .line 206
    .line 207
    iget-object v3, p0, Ly1/n;->f:LQ1/c;

    .line 208
    .line 209
    iget-boolean v4, p0, Ly1/n;->g:Z

    .line 210
    .line 211
    invoke-static {v0, v2, v1, v3, v4}, Ly1/s;->b(Lcom/minhub/gamehub/game/GameActivity;Lcom/minhub/gamehub/data/Game;LQ1/d;LQ1/c;Z)V

    .line 212
    .line 213
    .line 214
    :cond_9
    return-void

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
