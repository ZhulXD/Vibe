.class public abstract Ly1/d1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final a:Ljava/util/Set;

.field public static final b:Ljava/util/List;

.field public static final c:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    const-string v16, "phenotype_storage_info"

    .line 2
    .line 3
    const-string v17, ".nomedia"

    .line 4
    .line 5
    const-string v1, "godot-user"

    .line 6
    .line 7
    const-string v2, "engine-plugins"

    .line 8
    .line 9
    const-string v3, "translation-overlays"

    .line 10
    .line 11
    const-string v4, "runtime-locks"

    .line 12
    .line 13
    const-string v5, "runtime_patch"

    .line 14
    .line 15
    const-string v6, "runtime_patch_v2"

    .line 16
    .line 17
    const-string v7, "catalog_full_v1.json"

    .line 18
    .line 19
    const-string v8, "vxace_autofix_cache.json"

    .line 20
    .line 21
    const-string v9, "dump"

    .line 22
    .line 23
    const-string v10, "engine-cache.json"

    .line 24
    .line 25
    const-string v11, "lib"

    .line 26
    .line 27
    const-string v12, "renpy"

    .line 28
    .line 29
    const-string v13, "main.py"

    .line 30
    .line 31
    const-string v14, "private.version"

    .line 32
    .line 33
    const-string v15, "profileInstalled"

    .line 34
    .line 35
    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Ly1/d1;->a:Ljava/util/Set;

    .line 44
    .line 45
    const-string v0, "renpy7"

    .line 46
    .line 47
    const-string v1, "profileinstaller_"

    .line 48
    .line 49
    const-string v2, "games.json"

    .line 50
    .line 51
    const-string v3, "game-session.json"

    .line 52
    .line 53
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Ly1/d1;->b:Ljava/util/List;

    .line 62
    .line 63
    const-string v0, "vulkan"

    .line 64
    .line 65
    const-string v1, "logs"

    .line 66
    .line 67
    const-string v2, "shader_cache"

    .line 68
    .line 69
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Ly1/d1;->c:Ljava/util/Set;

    .line 78
    .line 79
    return-void
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)V
    .locals 8

    .line 1
    const-string v0, "oldGameDir"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "newGameDir"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Ly1/d1;->b(Ljava/io/File;)Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_5

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {p1}, Ly1/d1;->b(Ljava/io/File;)Ljava/io/File;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_0
    invoke-static {p1}, Ly1/d1;->b(Ljava/io/File;)Ljava/io/File;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const/4 v1, 0x0

    .line 52
    if-nez p0, :cond_1

    .line 53
    .line 54
    new-array p0, v1, [Ljava/io/File;

    .line 55
    .line 56
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    array-length v3, p0

    .line 62
    move v4, v1

    .line 63
    :goto_0
    if-ge v4, v3, :cond_3

    .line 64
    .line 65
    aget-object v5, p0, v4

    .line 66
    .line 67
    sget-object v6, Ly1/d1;->c:Ljava/util/Set;

    .line 68
    .line 69
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-nez v6, :cond_2

    .line 78
    .line 79
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    :goto_1
    if-ge v1, p0, :cond_4

    .line 90
    .line 91
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    add-int/lit8 v1, v1, 0x1

    .line 96
    .line 97
    check-cast v3, Ljava/io/File;

    .line 98
    .line 99
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    new-instance v4, Ljava/io/File;

    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const/4 v5, 0x1

    .line 112
    invoke-static {v3, v4, v5}, Lkotlin/io/FilesKt;->c(Ljava/io/File;Ljava/io/File;Z)Z

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_4
    new-instance p0, Ljava/io/File;

    .line 117
    .line 118
    const-string v0, ".minhub-godot-user"

    .line 119
    .line 120
    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    const-string p1, "carried-over\n"

    .line 124
    .line 125
    invoke-static {p0, p1}, Lkotlin/io/FilesKt;->g(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :cond_5
    :goto_2
    return-void
.end method

.method public static b(Ljava/io/File;)Ljava/io/File;
    .locals 2

    .line 1
    const-string v0, "gameDir"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/io/File;

    .line 7
    .line 8
    const-string v1, "godot-user"

    .line 9
    .line 10
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public static c(Ljava/io/File;I)Ljava/io/File;
    .locals 2

    .line 1
    const-string v0, "filesDir"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/io/File;

    .line 7
    .line 8
    const-string v1, "godot-user/"

    .line 9
    .line 10
    invoke-static {p1, v1}, LE/b;->i(ILjava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public static d(Ljava/io/File;Ljava/io/File;ZI)Ly1/c1;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    const-string v3, "filesDir"

    .line 8
    .line 9
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v4, "gameDir"

    .line 13
    .line 14
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Ly1/d1;->b(Ljava/io/File;)Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    new-instance v5, Ljava/io/File;

    .line 22
    .line 23
    const-string v6, ".minhub-godot-user"

    .line 24
    .line 25
    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v7, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v6, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_17

    .line 46
    .line 47
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    new-instance v0, Ly1/c1;

    .line 54
    .line 55
    invoke-direct {v0, v4, v7, v6}, Ly1/c1;-><init>(Ljava/io/File;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 56
    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_0
    invoke-static {v1, v2}, Ly1/d1;->c(Ljava/io/File;I)Ljava/io/File;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    const-string v9, ", skipped "

    .line 68
    .line 69
    const-string v10, "game "

    .line 70
    .line 71
    const-string v11, ": "

    .line 72
    .line 73
    sget-object v12, Ly1/d1;->c:Ljava/util/Set;

    .line 74
    .line 75
    const/4 v13, 0x0

    .line 76
    const-string v14, "GodotUserData"

    .line 77
    .line 78
    if-eqz v0, :cond_8

    .line 79
    .line 80
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    if-nez v0, :cond_1

    .line 85
    .line 86
    new-array v0, v13, [Ljava/io/File;

    .line 87
    .line 88
    :cond_1
    new-instance v3, Ly1/M;

    .line 89
    .line 90
    const/4 v15, 0x4

    .line 91
    invoke-direct {v3, v15}, Ly1/M;-><init>(I)V

    .line 92
    .line 93
    .line 94
    invoke-static {v0, v3}, Lkotlin/collections/ArraysKt;->sortedWith([Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    const/4 v0, 0x1

    .line 103
    move v15, v0

    .line 104
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_6

    .line 109
    .line 110
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    move-object v13, v0

    .line 115
    check-cast v13, Ljava/io/File;

    .line 116
    .line 117
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-nez v0, :cond_5

    .line 126
    .line 127
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 128
    .line 129
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    new-instance v0, Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 133
    .line 134
    move-object/from16 p2, v3

    .line 135
    .line 136
    :try_start_1
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-direct {v0, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const/4 v3, 0x0

    .line 144
    invoke-static {v13, v0, v3}, Lkotlin/io/FilesKt;->c(Ljava/io/File;Ljava/io/File;Z)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    goto :goto_2

    .line 157
    :catchall_0
    move-exception v0

    .line 158
    goto :goto_1

    .line 159
    :catchall_1
    move-exception v0

    .line 160
    move-object/from16 p2, v3

    .line 161
    .line 162
    :goto_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 163
    .line 164
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    :goto_2
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    move-object/from16 v16, v0

    .line 177
    .line 178
    if-eqz v3, :cond_2

    .line 179
    .line 180
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    move-object/from16 v17, v8

    .line 189
    .line 190
    new-instance v8, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    move-object/from16 v18, v13

    .line 193
    .line 194
    const-string v13, "could not move "

    .line 195
    .line 196
    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-static {v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_2
    move-object/from16 v17, v8

    .line 217
    .line 218
    move-object/from16 v18, v13

    .line 219
    .line 220
    :goto_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 221
    .line 222
    invoke-static/range {v16 .. v16}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    if-eqz v3, :cond_3

    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_3
    move-object/from16 v0, v16

    .line 230
    .line 231
    :goto_4
    check-cast v0, Ljava/lang/Boolean;

    .line 232
    .line 233
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-eqz v0, :cond_4

    .line 238
    .line 239
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-object/from16 v3, p2

    .line 255
    .line 256
    move-object/from16 v8, v17

    .line 257
    .line 258
    const/4 v13, 0x0

    .line 259
    const/4 v15, 0x0

    .line 260
    goto/16 :goto_0

    .line 261
    .line 262
    :cond_5
    move-object/from16 p2, v3

    .line 263
    .line 264
    move-object/from16 v17, v8

    .line 265
    .line 266
    :goto_5
    move-object/from16 v3, p2

    .line 267
    .line 268
    move-object/from16 v8, v17

    .line 269
    .line 270
    const/4 v13, 0x0

    .line 271
    goto/16 :goto_0

    .line 272
    .line 273
    :cond_6
    move-object/from16 v17, v8

    .line 274
    .line 275
    if-eqz v15, :cond_7

    .line 276
    .line 277
    invoke-static/range {v17 .. v17}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 278
    .line 279
    .line 280
    new-instance v0, Ljava/io/File;

    .line 281
    .line 282
    const-string v3, "godot-user/.prepared/"

    .line 283
    .line 284
    invoke-static {v2, v3}, LE/b;->i(ILjava/lang/String;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 292
    .line 293
    .line 294
    :cond_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    const-string v2, ": moved "

    .line 307
    .line 308
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    const-string v2, " from "

    .line 315
    .line 316
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    .line 334
    .line 335
    goto/16 :goto_e

    .line 336
    .line 337
    :cond_8
    if-eqz p2, :cond_16

    .line 338
    .line 339
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    if-nez v0, :cond_9

    .line 347
    .line 348
    const/4 v3, 0x0

    .line 349
    new-array v0, v3, [Ljava/io/File;

    .line 350
    .line 351
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    .line 352
    .line 353
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .line 355
    .line 356
    array-length v3, v0

    .line 357
    const/4 v8, 0x0

    .line 358
    :goto_6
    if-ge v8, v3, :cond_e

    .line 359
    .line 360
    aget-object v13, v0, v8

    .line 361
    .line 362
    sget-object v15, Ly1/d1;->a:Ljava/util/Set;

    .line 363
    .line 364
    move-object/from16 v16, v0

    .line 365
    .line 366
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    invoke-interface {v15, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    if-nez v0, :cond_d

    .line 375
    .line 376
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result v0

    .line 384
    if-nez v0, :cond_d

    .line 385
    .line 386
    sget-object v0, Ly1/d1;->b:Ljava/util/List;

    .line 387
    .line 388
    if-eqz v0, :cond_b

    .line 389
    .line 390
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 391
    .line 392
    .line 393
    move-result v15

    .line 394
    if-eqz v15, :cond_b

    .line 395
    .line 396
    :cond_a
    move/from16 v17, v3

    .line 397
    .line 398
    goto :goto_8

    .line 399
    :cond_b
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 404
    .line 405
    .line 406
    move-result v15

    .line 407
    if-eqz v15, :cond_a

    .line 408
    .line 409
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v15

    .line 413
    check-cast v15, Ljava/lang/String;

    .line 414
    .line 415
    move-object/from16 p0, v0

    .line 416
    .line 417
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    move/from16 v17, v3

    .line 422
    .line 423
    const-string v3, "getName(...)"

    .line 424
    .line 425
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    invoke-static {v0, v15}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 429
    .line 430
    .line 431
    move-result v0

    .line 432
    if-eqz v0, :cond_c

    .line 433
    .line 434
    goto :goto_9

    .line 435
    :cond_c
    move-object/from16 v0, p0

    .line 436
    .line 437
    move/from16 v3, v17

    .line 438
    .line 439
    goto :goto_7

    .line 440
    :goto_8
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    goto :goto_9

    .line 444
    :cond_d
    move/from16 v17, v3

    .line 445
    .line 446
    :goto_9
    add-int/lit8 v8, v8, 0x1

    .line 447
    .line 448
    move-object/from16 v0, v16

    .line 449
    .line 450
    move/from16 v3, v17

    .line 451
    .line 452
    goto :goto_6

    .line 453
    :cond_e
    new-instance v0, Ly1/M;

    .line 454
    .line 455
    const/4 v3, 0x5

    .line 456
    invoke-direct {v0, v3}, Ly1/M;-><init>(I)V

    .line 457
    .line 458
    .line 459
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 468
    .line 469
    .line 470
    move-result v0

    .line 471
    if-eqz v0, :cond_15

    .line 472
    .line 473
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    move-object v3, v0

    .line 478
    check-cast v3, Ljava/io/File;

    .line 479
    .line 480
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 481
    .line 482
    .line 483
    move-result v0

    .line 484
    if-eqz v0, :cond_f

    .line 485
    .line 486
    invoke-static {v3}, Lkotlin/io/FilesKt;->walkTopDown(Ljava/io/File;)Lkotlin/io/FileTreeWalk;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    new-instance v8, Lcom/minhub/gamehub/hub/catalog/h;

    .line 491
    .line 492
    const/16 v12, 0x1b

    .line 493
    .line 494
    invoke-direct {v8, v12}, Lcom/minhub/gamehub/hub/catalog/h;-><init>(I)V

    .line 495
    .line 496
    .line 497
    invoke-static {v0, v8}, Lkotlin/sequences/SequencesKt;->q(Lkotlin/io/FileTreeWalk;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    const-wide/16 v12, 0x0

    .line 506
    .line 507
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 508
    .line 509
    .line 510
    move-result v8

    .line 511
    if-eqz v8, :cond_10

    .line 512
    .line 513
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v8

    .line 517
    check-cast v8, Ljava/io/File;

    .line 518
    .line 519
    invoke-virtual {v8}, Ljava/io/File;->length()J

    .line 520
    .line 521
    .line 522
    move-result-wide v15

    .line 523
    add-long/2addr v12, v15

    .line 524
    goto :goto_b

    .line 525
    :cond_f
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 526
    .line 527
    .line 528
    move-result-wide v12

    .line 529
    :cond_10
    const-wide/32 v15, 0x4000000

    .line 530
    .line 531
    .line 532
    cmp-long v0, v12, v15

    .line 533
    .line 534
    if-lez v0, :cond_11

    .line 535
    .line 536
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    .line 542
    .line 543
    goto :goto_a

    .line 544
    :cond_11
    :try_start_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 545
    .line 546
    new-instance v0, Ljava/io/File;

    .line 547
    .line 548
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v8

    .line 552
    invoke-direct {v0, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 553
    .line 554
    .line 555
    const/4 v8, 0x0

    .line 556
    :try_start_3
    invoke-static {v3, v0, v8}, Lkotlin/io/FilesKt;->c(Ljava/io/File;Ljava/io/File;Z)Z

    .line 557
    .line 558
    .line 559
    move-result v0

    .line 560
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 568
    goto :goto_d

    .line 569
    :catchall_2
    move-exception v0

    .line 570
    goto :goto_c

    .line 571
    :catchall_3
    move-exception v0

    .line 572
    const/4 v8, 0x0

    .line 573
    :goto_c
    sget-object v12, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 574
    .line 575
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    move-result-object v0

    .line 583
    :goto_d
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 584
    .line 585
    .line 586
    move-result-object v12

    .line 587
    if-eqz v12, :cond_12

    .line 588
    .line 589
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v13

    .line 593
    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v12

    .line 597
    new-instance v15, Ljava/lang/StringBuilder;

    .line 598
    .line 599
    const-string v8, "could not copy "

    .line 600
    .line 601
    invoke-direct {v15, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    .line 606
    .line 607
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    .line 609
    .line 610
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v8

    .line 617
    invoke-static {v14, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    .line 619
    .line 620
    :cond_12
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 621
    .line 622
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 623
    .line 624
    .line 625
    move-result v12

    .line 626
    if-eqz v12, :cond_13

    .line 627
    .line 628
    move-object v0, v8

    .line 629
    :cond_13
    check-cast v0, Ljava/lang/Boolean;

    .line 630
    .line 631
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 632
    .line 633
    .line 634
    move-result v0

    .line 635
    if-eqz v0, :cond_14

    .line 636
    .line 637
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    .line 643
    .line 644
    goto/16 :goto_a

    .line 645
    .line 646
    :cond_14
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v0

    .line 650
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    .line 652
    .line 653
    goto/16 :goto_a

    .line 654
    .line 655
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 656
    .line 657
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 658
    .line 659
    .line 660
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 661
    .line 662
    .line 663
    const-string v1, ": copied shared user data "

    .line 664
    .line 665
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    .line 667
    .line 668
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 669
    .line 670
    .line 671
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    .line 673
    .line 674
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 675
    .line 676
    .line 677
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v0

    .line 681
    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    .line 683
    .line 684
    :cond_16
    :goto_e
    const/4 v11, 0x0

    .line 685
    const/16 v12, 0x3e

    .line 686
    .line 687
    const-string v8, ","

    .line 688
    .line 689
    const/4 v9, 0x0

    .line 690
    const/4 v10, 0x0

    .line 691
    invoke-static/range {v7 .. v12}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v0

    .line 695
    new-instance v1, Ljava/lang/StringBuilder;

    .line 696
    .line 697
    const-string v2, "copied="

    .line 698
    .line 699
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 700
    .line 701
    .line 702
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    .line 704
    .line 705
    const-string v0, "\n"

    .line 706
    .line 707
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    .line 709
    .line 710
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 711
    .line 712
    .line 713
    move-result-object v0

    .line 714
    invoke-static {v5, v0}, Lkotlin/io/FilesKt;->g(Ljava/io/File;Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    new-instance v0, Ly1/c1;

    .line 718
    .line 719
    invoke-direct {v0, v4, v7, v6}, Ly1/c1;-><init>(Ljava/io/File;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 720
    .line 721
    .line 722
    return-object v0

    .line 723
    :cond_17
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object v0

    .line 727
    const-string v1, "cannot create "

    .line 728
    .line 729
    invoke-static {v1, v0}, Lkotlin/collections/unsigned/a;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v0

    .line 733
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 734
    .line 735
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v0

    .line 739
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 740
    .line 741
    .line 742
    throw v1
.end method
