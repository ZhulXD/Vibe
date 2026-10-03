.class public final Ly1/c0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final a:Ly1/c0;

.field public static final b:Ly1/c0;

.field public static volatile c:[B


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ly1/c0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ly1/c0;->a:Ly1/c0;

    .line 7
    .line 8
    new-instance v0, Ly1/c0;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Ly1/c0;->b:Ly1/c0;

    .line 14
    .line 15
    return-void
.end method

.method public static a(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 6

    .line 1
    const-string v0, "com.minhub.gamehub.session.id"

    .line 2
    .line 3
    const-string v1, "com.minhub.gamehub.session.token"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v3, 0x0

    .line 10
    move v4, v3

    .line 11
    :goto_0
    const/4 v5, 0x2

    .line 12
    if-ge v4, v5, :cond_1

    .line 13
    .line 14
    aget-object v5, v2, v4

    .line 15
    .line 16
    invoke-virtual {p0, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    if-nez v5, :cond_0

    .line 21
    .line 22
    goto :goto_3

    .line 23
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const-string v2, "com.minhub.gamehub.session.process"

    .line 27
    .line 28
    const-string v4, "com.minhub.gamehub.session.pid"

    .line 29
    .line 30
    const-string v5, "com.minhub.gamehub.session.engine"

    .line 31
    .line 32
    filled-new-array {v0, v1, v5, v2, v4}, [Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :goto_1
    const/4 v1, 0x5

    .line 37
    if-ge v3, v1, :cond_4

    .line 38
    .line 39
    aget-object v1, v0, v3

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    if-eqz v2, :cond_3

    .line 46
    .line 47
    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    instance-of v4, v2, Ljava/lang/String;

    .line 54
    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    check-cast v2, Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    instance-of v4, v2, Ljava/lang/Integer;

    .line 64
    .line 65
    if-eqz v4, :cond_3

    .line 66
    .line 67
    check-cast v2, Ljava/lang/Number;

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    :goto_3
    return-void
.end method

.method public static b(Landroid/content/Context;)Ly1/N0;
    .locals 4

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Ly1/N0;->d:Ly1/c0;

    .line 7
    .line 8
    const-string v1, "minhub_prefs"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v1, "godot_max_fps"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    sget-object v0, Ly1/N0;->h:Lkotlin/enums/EnumEntries;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    move-object v3, v1

    .line 42
    check-cast v3, Ly1/N0;

    .line 43
    .line 44
    iget-object v3, v3, Ly1/N0;->b:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    move-object v2, v1

    .line 53
    :cond_1
    check-cast v2, Ly1/N0;

    .line 54
    .line 55
    if-nez v2, :cond_2

    .line 56
    .line 57
    sget-object p0, Ly1/N0;->e:Ly1/N0;

    .line 58
    .line 59
    return-object p0

    .line 60
    :cond_2
    return-object v2
.end method

.method public static d(Landroid/content/Context;)Ly1/O0;
    .locals 4

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Ly1/O0;->c:Ly1/c0;

    .line 7
    .line 8
    const-string v1, "minhub_prefs"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v1, "godot_renderer"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    sget-object v0, Ly1/O0;->g:Lkotlin/enums/EnumEntries;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    move-object v3, v1

    .line 42
    check-cast v3, Ly1/O0;

    .line 43
    .line 44
    iget-object v3, v3, Ly1/O0;->b:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    move-object v2, v1

    .line 53
    :cond_1
    check-cast v2, Ly1/O0;

    .line 54
    .line 55
    if-nez v2, :cond_2

    .line 56
    .line 57
    sget-object p0, Ly1/O0;->d:Ly1/O0;

    .line 58
    .line 59
    return-object p0

    .line 60
    :cond_2
    return-object v2
.end method


# virtual methods
.method public c(Landroid/app/Activity;Lcom/minhub/gamehub/data/Game;LA1/n0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    move-object/from16 v0, p4

    .line 8
    .line 9
    instance-of v4, v0, Ly1/b0;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    move-object v4, v0

    .line 14
    check-cast v4, Ly1/b0;

    .line 15
    .line 16
    iget v5, v4, Ly1/b0;->h:I

    .line 17
    .line 18
    const/high16 v6, -0x80000000

    .line 19
    .line 20
    and-int v7, v5, v6

    .line 21
    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    sub-int/2addr v5, v6

    .line 25
    iput v5, v4, Ly1/b0;->h:I

    .line 26
    .line 27
    move-object/from16 v5, p0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v4, Ly1/b0;

    .line 31
    .line 32
    move-object/from16 v5, p0

    .line 33
    .line 34
    invoke-direct {v4, v5, v0}, Ly1/b0;-><init>(Ly1/c0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    iget-object v0, v4, Ly1/b0;->f:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    iget v7, v4, Ly1/b0;->h:I

    .line 44
    .line 45
    const-string v8, "GameLaunch"

    .line 46
    .line 47
    const/4 v9, 0x1

    .line 48
    if-eqz v7, :cond_2

    .line 49
    .line 50
    if-ne v7, v9, :cond_1

    .line 51
    .line 52
    iget-object v1, v4, Ly1/b0;->e:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v1, Landroid/content/Intent;

    .line 55
    .line 56
    iget-object v1, v4, Ly1/b0;->d:LA1/n0;

    .line 57
    .line 58
    iget-object v2, v4, Ly1/b0;->c:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v2, Lcom/minhub/gamehub/data/Game;

    .line 61
    .line 62
    iget-object v2, v4, Ly1/b0;->b:Landroid/app/Activity;

    .line 63
    .line 64
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    move-object v3, v1

    .line 68
    move-object v1, v2

    .line 69
    goto/16 :goto_2

    .line 70
    .line 71
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 72
    .line 73
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 74
    .line 75
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v0

    .line 79
    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    new-instance v7, Landroid/content/Intent;

    .line 83
    .line 84
    const-class v0, Lcom/minhub/gamehub/game/GameActivity;

    .line 85
    .line 86
    invoke-direct {v7, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .line 88
    .line 89
    const-string v0, "com.minhub.gamehub.session.id"

    .line 90
    .line 91
    iget-object v10, v3, LA1/n0;->a:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v7, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    .line 95
    .line 96
    const-string v0, "com.minhub.gamehub.session.token"

    .line 97
    .line 98
    iget-object v10, v3, LA1/n0;->b:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v7, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    .line 102
    .line 103
    const-string v0, "com.minhub.gamehub.session.engine"

    .line 104
    .line 105
    iget-object v10, v3, LA1/n0;->c:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v7, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    .line 109
    .line 110
    const-string v0, "com.minhub.gamehub.session.process"

    .line 111
    .line 112
    iget-object v10, v3, LA1/n0;->d:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v7, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    .line 116
    .line 117
    const-string v0, "com.minhub.gamehub.session.pid"

    .line 118
    .line 119
    const/4 v10, 0x0

    .line 120
    invoke-virtual {v7, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    .line 122
    .line 123
    iget-object v0, v3, LA1/n0;->a:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v2}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 126
    .line 127
    .line 128
    move-result v11

    .line 129
    invoke-virtual {v2}, Lcom/minhub/gamehub/data/Game;->getEngine()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v12

    .line 133
    new-instance v13, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v14, "coordinator dispatch begin request="

    .line 136
    .line 137
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v0, " game="

    .line 144
    .line 145
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v0, " engine="

    .line 152
    .line 153
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    const-string v0, "game"

    .line 167
    .line 168
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-static {v2}, Lcom/minhub/gamehub/data/GameKt;->getEngineEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameEngine;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    sget-object v11, Ly1/S1;->a:[I

    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    aget v0, v11, v0

    .line 182
    .line 183
    const/4 v11, 0x4

    .line 184
    const/4 v12, 0x3

    .line 185
    const/4 v13, 0x2

    .line 186
    if-eq v0, v9, :cond_6

    .line 187
    .line 188
    if-eq v0, v13, :cond_5

    .line 189
    .line 190
    if-eq v0, v12, :cond_4

    .line 191
    .line 192
    if-eq v0, v11, :cond_3

    .line 193
    .line 194
    const/4 v14, 0x5

    .line 195
    if-eq v0, v14, :cond_3

    .line 196
    .line 197
    sget-object v0, Ly1/s1;->b:Ly1/s1;

    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_3
    sget-object v0, Ly1/s1;->f:Ly1/s1;

    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_4
    sget-object v0, Ly1/s1;->e:Ly1/s1;

    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_5
    sget-object v0, Ly1/s1;->d:Ly1/s1;

    .line 207
    .line 208
    goto :goto_1

    .line 209
    :cond_6
    sget-object v0, Ly1/s1;->c:Ly1/s1;

    .line 210
    .line 211
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    const-string v14, "game_id"

    .line 216
    .line 217
    if-eqz v0, :cond_11

    .line 218
    .line 219
    const-string v10, "Runtime unavailable"

    .line 220
    .line 221
    const v15, 0x104000a

    .line 222
    .line 223
    .line 224
    if-eq v0, v9, :cond_e

    .line 225
    .line 226
    if-eq v0, v13, :cond_c

    .line 227
    .line 228
    if-eq v0, v12, :cond_9

    .line 229
    .line 230
    if-ne v0, v11, :cond_8

    .line 231
    .line 232
    iput-object v1, v4, Ly1/b0;->b:Landroid/app/Activity;

    .line 233
    .line 234
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    iput-object v0, v4, Ly1/b0;->c:Ljava/lang/Object;

    .line 239
    .line 240
    iput-object v3, v4, Ly1/b0;->d:LA1/n0;

    .line 241
    .line 242
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    iput-object v0, v4, Ly1/b0;->e:Ljava/lang/Object;

    .line 247
    .line 248
    iput v9, v4, Ly1/b0;->h:I

    .line 249
    .line 250
    sget-object v0, LV1/H;->b:Lc2/c;

    .line 251
    .line 252
    new-instance v9, Ly1/a0;

    .line 253
    .line 254
    const/4 v10, 0x0

    .line 255
    invoke-direct {v9, v2, v1, v7, v10}, Ly1/a0;-><init>(Lcom/minhub/gamehub/data/Game;Landroid/app/Activity;Landroid/content/Intent;Lkotlin/coroutines/Continuation;)V

    .line 256
    .line 257
    .line 258
    invoke-static {v0, v9, v4}, LV1/A;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    if-ne v0, v6, :cond_7

    .line 263
    .line 264
    return-object v6

    .line 265
    :cond_7
    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    .line 266
    .line 267
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 268
    .line 269
    .line 270
    move-result v9

    .line 271
    goto/16 :goto_5

    .line 272
    .line 273
    :cond_8
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 274
    .line 275
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 276
    .line 277
    .line 278
    throw v0

    .line 279
    :cond_9
    sget-object v0, Ly1/W0;->a:Lkotlin/text/Regex;

    .line 280
    .line 281
    sget-object v0, Lcom/minhub/gamehub/data/GameEngine;->GODOT:Lcom/minhub/gamehub/data/GameEngine;

    .line 282
    .line 283
    invoke-virtual {v2}, Lcom/minhub/gamehub/data/Game;->getGamePath()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v4

    .line 287
    invoke-static {v0, v4}, Ly1/W0;->c(Lcom/minhub/gamehub/data/GameEngine;Ljava/lang/String;)LL1/c;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    if-eqz v0, :cond_b

    .line 292
    .line 293
    iget-object v0, v0, LL1/c;->a:LL1/a;

    .line 294
    .line 295
    const-string v4, "context"

    .line 296
    .line 297
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    const-string v4, "build"

    .line 301
    .line 302
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    sget-object v4, Ly1/y1;->a:Ly1/y1;

    .line 306
    .line 307
    sget-object v4, Ly1/v1;->j:Ly1/v1;

    .line 308
    .line 309
    invoke-static {v0, v1, v4}, Ly1/y1;->k(LL1/a;Landroid/content/Context;Ly1/v1;)Z

    .line 310
    .line 311
    .line 312
    move-result v4

    .line 313
    if-nez v4, :cond_a

    .line 314
    .line 315
    new-instance v0, LO0/b;

    .line 316
    .line 317
    const/4 v2, 0x0

    .line 318
    invoke-direct {v0, v1, v2}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 319
    .line 320
    .line 321
    iget-object v4, v0, Le/f;->c:Ljava/lang/Object;

    .line 322
    .line 323
    check-cast v4, Le/b;

    .line 324
    .line 325
    iput-object v10, v4, Le/b;->d:Ljava/lang/CharSequence;

    .line 326
    .line 327
    const-string v6, "The Godot runtime is not installed or could not be verified safely."

    .line 328
    .line 329
    iput-object v6, v4, Le/b;->f:Ljava/lang/CharSequence;

    .line 330
    .line 331
    new-instance v6, Lf2/c;

    .line 332
    .line 333
    invoke-direct {v6, v1, v11}, Lf2/c;-><init>(Landroid/app/Activity;I)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0, v15, v6}, LO0/b;->h(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 337
    .line 338
    .line 339
    iput-boolean v2, v4, Le/b;->m:Z

    .line 340
    .line 341
    invoke-virtual {v0}, Le/f;->e()Le/g;

    .line 342
    .line 343
    .line 344
    :goto_3
    const/4 v9, 0x0

    .line 345
    goto/16 :goto_5

    .line 346
    .line 347
    :cond_a
    new-instance v4, Landroid/content/Intent;

    .line 348
    .line 349
    const-class v6, Lcom/minhub/gamehub/game/GodotGameActivity;

    .line 350
    .line 351
    invoke-direct {v4, v1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 352
    .line 353
    .line 354
    const-string v6, "godot_game_path"

    .line 355
    .line 356
    invoke-virtual {v2}, Lcom/minhub/gamehub/data/Game;->getGamePath()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v10

    .line 360
    invoke-virtual {v4, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v2}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 364
    .line 365
    .line 366
    move-result v2

    .line 367
    invoke-virtual {v4, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 368
    .line 369
    .line 370
    const-string v2, "godotRuntimeKey"

    .line 371
    .line 372
    invoke-virtual {v0}, LL1/a;->a()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    .line 378
    .line 379
    invoke-static {v7, v4}, Ly1/c0;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v1, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 383
    .line 384
    .line 385
    goto/16 :goto_5

    .line 386
    .line 387
    :cond_b
    new-instance v0, LO0/b;

    .line 388
    .line 389
    const/4 v2, 0x0

    .line 390
    invoke-direct {v0, v1, v2}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 391
    .line 392
    .line 393
    iget-object v4, v0, Le/f;->c:Ljava/lang/Object;

    .line 394
    .line 395
    check-cast v4, Le/b;

    .line 396
    .line 397
    iput-object v10, v4, Le/b;->d:Ljava/lang/CharSequence;

    .line 398
    .line 399
    const-string v6, "The Godot game has no recognized runtime identity."

    .line 400
    .line 401
    iput-object v6, v4, Le/b;->f:Ljava/lang/CharSequence;

    .line 402
    .line 403
    new-instance v6, Lf2/c;

    .line 404
    .line 405
    invoke-direct {v6, v1, v12}, Lf2/c;-><init>(Landroid/app/Activity;I)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v0, v15, v6}, LO0/b;->h(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 409
    .line 410
    .line 411
    iput-boolean v2, v4, Le/b;->m:Z

    .line 412
    .line 413
    invoke-virtual {v0}, Le/f;->e()Le/g;

    .line 414
    .line 415
    .line 416
    goto :goto_3

    .line 417
    :cond_c
    new-instance v0, Ljava/io/File;

    .line 418
    .line 419
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 420
    .line 421
    .line 422
    move-result-object v4

    .line 423
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 424
    .line 425
    const-string v6, "libkrkr2yuri.so"

    .line 426
    .line 427
    invoke-direct {v0, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 431
    .line 432
    .line 433
    move-result v0

    .line 434
    if-nez v0, :cond_d

    .line 435
    .line 436
    new-instance v0, LO0/b;

    .line 437
    .line 438
    const/4 v2, 0x0

    .line 439
    invoke-direct {v0, v1, v2}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 440
    .line 441
    .line 442
    iget-object v2, v0, Le/f;->c:Ljava/lang/Object;

    .line 443
    .line 444
    check-cast v2, Le/b;

    .line 445
    .line 446
    const v4, 0x7f1201d4

    .line 447
    .line 448
    .line 449
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v4

    .line 453
    iput-object v4, v2, Le/b;->d:Ljava/lang/CharSequence;

    .line 454
    .line 455
    const v4, 0x7f1201d3

    .line 456
    .line 457
    .line 458
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v4

    .line 462
    iput-object v4, v2, Le/b;->f:Ljava/lang/CharSequence;

    .line 463
    .line 464
    new-instance v4, Lf2/c;

    .line 465
    .line 466
    invoke-direct {v4, v1, v13}, Lf2/c;-><init>(Landroid/app/Activity;I)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v0, v15, v4}, LO0/b;->h(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 470
    .line 471
    .line 472
    const/4 v4, 0x0

    .line 473
    iput-boolean v4, v2, Le/b;->m:Z

    .line 474
    .line 475
    invoke-virtual {v0}, Le/f;->e()Le/g;

    .line 476
    .line 477
    .line 478
    goto/16 :goto_3

    .line 479
    .line 480
    :cond_d
    new-instance v0, Landroid/content/Intent;

    .line 481
    .line 482
    const-class v4, Lcom/minhub/gamehub/game/KiriKiriGameActivity;

    .line 483
    .line 484
    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 485
    .line 486
    .line 487
    const-string v4, "kiri_game_path"

    .line 488
    .line 489
    invoke-virtual {v2}, Lcom/minhub/gamehub/data/Game;->getGamePath()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v6

    .line 493
    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    .line 495
    .line 496
    invoke-virtual {v2}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 497
    .line 498
    .line 499
    move-result v2

    .line 500
    invoke-virtual {v0, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 501
    .line 502
    .line 503
    invoke-static {v7, v0}, Ly1/c0;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 507
    .line 508
    .line 509
    goto/16 :goto_5

    .line 510
    .line 511
    :cond_e
    sget-object v0, Ly1/y1;->a:Ly1/y1;

    .line 512
    .line 513
    sget-object v0, Ly1/v1;->g:Ly1/v1;

    .line 514
    .line 515
    const/4 v4, 0x0

    .line 516
    invoke-static {v4, v1, v0}, Ly1/y1;->k(LL1/a;Landroid/content/Context;Ly1/v1;)Z

    .line 517
    .line 518
    .line 519
    move-result v0

    .line 520
    if-eqz v0, :cond_10

    .line 521
    .line 522
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 523
    .line 524
    invoke-static {v1}, Ly1/p2;->a(Landroid/content/Context;)V

    .line 525
    .line 526
    .line 527
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 528
    .line 529
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    goto :goto_4

    .line 534
    :catchall_0
    move-exception v0

    .line 535
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 536
    .line 537
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    :goto_4
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 546
    .line 547
    .line 548
    move-result-object v4

    .line 549
    if-eqz v4, :cond_f

    .line 550
    .line 551
    const-string v6, "VX Ace libs failed"

    .line 552
    .line 553
    invoke-static {v8, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 554
    .line 555
    .line 556
    :cond_f
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    .line 557
    .line 558
    .line 559
    move-result v0

    .line 560
    if-eqz v0, :cond_10

    .line 561
    .line 562
    new-instance v0, Landroid/content/Intent;

    .line 563
    .line 564
    const-class v4, Lcom/minhub/gamehub/game/VxAceGameActivity;

    .line 565
    .line 566
    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {v2}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 570
    .line 571
    .line 572
    move-result v4

    .line 573
    invoke-virtual {v0, v14, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 574
    .line 575
    .line 576
    const-string v4, "vxace_game_path"

    .line 577
    .line 578
    invoke-virtual {v2}, Lcom/minhub/gamehub/data/Game;->getGamePath()Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v2

    .line 582
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    .line 584
    .line 585
    invoke-static {v7, v0}, Ly1/c0;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 586
    .line 587
    .line 588
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 589
    .line 590
    .line 591
    goto :goto_5

    .line 592
    :cond_10
    new-instance v0, LO0/b;

    .line 593
    .line 594
    const/4 v2, 0x0

    .line 595
    invoke-direct {v0, v1, v2}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 596
    .line 597
    .line 598
    iget-object v3, v0, Le/f;->c:Ljava/lang/Object;

    .line 599
    .line 600
    check-cast v3, Le/b;

    .line 601
    .line 602
    iput-object v10, v3, Le/b;->d:Ljava/lang/CharSequence;

    .line 603
    .line 604
    const-string v4, "The VX Ace runtime is not installed or could not be loaded. Open the game page to download the engine support pack."

    .line 605
    .line 606
    iput-object v4, v3, Le/b;->f:Ljava/lang/CharSequence;

    .line 607
    .line 608
    new-instance v4, Lf2/c;

    .line 609
    .line 610
    invoke-direct {v4, v1, v9}, Lf2/c;-><init>(Landroid/app/Activity;I)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v0, v15, v4}, LO0/b;->h(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 614
    .line 615
    .line 616
    iput-boolean v2, v3, Le/b;->m:Z

    .line 617
    .line 618
    invoke-virtual {v0}, Le/f;->e()Le/g;

    .line 619
    .line 620
    .line 621
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    return-object v0

    .line 626
    :cond_11
    invoke-virtual {v2}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 627
    .line 628
    .line 629
    move-result v0

    .line 630
    invoke-virtual {v7, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 631
    .line 632
    .line 633
    move-result-object v0

    .line 634
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 635
    .line 636
    .line 637
    :goto_5
    iget-object v0, v3, LA1/n0;->a:Ljava/lang/String;

    .line 638
    .line 639
    new-instance v2, Ljava/lang/StringBuilder;

    .line 640
    .line 641
    const-string v3, "coordinator dispatch result request="

    .line 642
    .line 643
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    const-string v0, " dispatched="

    .line 650
    .line 651
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    .line 663
    .line 664
    if-eqz v9, :cond_12

    .line 665
    .line 666
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 667
    .line 668
    .line 669
    :cond_12
    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 670
    .line 671
    .line 672
    move-result-object v0

    .line 673
    return-object v0
.end method
