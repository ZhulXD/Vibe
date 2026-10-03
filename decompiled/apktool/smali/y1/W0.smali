.class public abstract Ly1/W0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final a:Lkotlin/text/Regex;

.field public static final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 1
    new-instance v0, Lkotlin/text/Regex;

    .line 2
    .line 3
    const-string v1, "^godot(-\\d+(\\.\\d+)*)?$"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Ly1/W0;->a:Lkotlin/text/Regex;

    .line 9
    .line 10
    new-instance v2, LL1/a;

    .line 11
    .line 12
    sget-object v0, Ly1/v1;->j:Ly1/v1;

    .line 13
    .line 14
    iget-object v3, v0, Ly1/v1;->b:Ljava/lang/String;

    .line 15
    .line 16
    sget-object v1, LL1/e;->c:Lkotlin/text/Regex;

    .line 17
    .line 18
    const/4 v1, 0x7

    .line 19
    const/4 v4, 0x1

    .line 20
    const/4 v11, 0x4

    .line 21
    filled-new-array {v11, v1, v4}, [I

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, La/a;->v([I)LL1/e;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const-string v9, "godot:4.7.1"

    .line 30
    .line 31
    iget-object v10, v0, Ly1/v1;->b:Ljava/lang/String;

    .line 32
    .line 33
    const-string v5, "https://pub-5c8ab05667bd4a25a3ff4033246d4339.r2.dev/Plugin/Godot/4.7.1/PluginGodot.zip"

    .line 34
    .line 35
    const/4 v6, 0x5

    .line 36
    const-string v7, "ac62ae392fe33f9a0fdd167c42366f058652a0f74587848928664f85e6306725"

    .line 37
    .line 38
    const-string v8, "f42f4a14619eb2e9a0d5fbcb08e47af8e0bc0ff229cddcfddecbaa3a92e02f85"

    .line 39
    .line 40
    invoke-direct/range {v2 .. v10}, LL1/a;-><init>(Ljava/lang/String;LL1/e;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance v12, LL1/a;

    .line 44
    .line 45
    iget-object v13, v0, Ly1/v1;->b:Ljava/lang/String;

    .line 46
    .line 47
    const/4 v1, 0x6

    .line 48
    const/4 v3, 0x0

    .line 49
    filled-new-array {v11, v1, v3}, [I

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v1}, La/a;->v([I)LL1/e;

    .line 54
    .line 55
    .line 56
    move-result-object v14

    .line 57
    const/16 v20, 0x0

    .line 58
    .line 59
    const/16 v21, 0x80

    .line 60
    .line 61
    const-string v15, "https://pub-5c8ab05667bd4a25a3ff4033246d4339.r2.dev/Plugin/Godot/4.6/PluginGodot.zip"

    .line 62
    .line 63
    const/16 v16, 0x1

    .line 64
    .line 65
    const-string v17, "b12320071439b72c73b5a40ae81ce6bd6b747823d329ccefe7f34095210121d0"

    .line 66
    .line 67
    const-string v18, "6fd6e077e4aa15a9e1ea2730a835ebae9f9bc3a2bc00b7d3fc0539264e7de9ab"

    .line 68
    .line 69
    const-string v19, "godot:4.6.0"

    .line 70
    .line 71
    invoke-direct/range {v12 .. v21}, LL1/a;-><init>(Ljava/lang/String;LL1/e;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    new-instance v13, LL1/a;

    .line 75
    .line 76
    iget-object v14, v0, Ly1/v1;->b:Ljava/lang/String;

    .line 77
    .line 78
    const/4 v0, 0x2

    .line 79
    filled-new-array {v11, v0, v0}, [I

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0}, La/a;->v([I)LL1/e;

    .line 84
    .line 85
    .line 86
    move-result-object v15

    .line 87
    const/16 v21, 0x0

    .line 88
    .line 89
    const/16 v22, 0x80

    .line 90
    .line 91
    const-string v16, "https://pub-5c8ab05667bd4a25a3ff4033246d4339.r2.dev/Plugin/Godot/4.2.2/PluginGodot.zip"

    .line 92
    .line 93
    const/16 v17, 0x1

    .line 94
    .line 95
    const-string v18, "6c63910350bc2447b300f2c0a3f801321cb6ef9d8a0387585ec053df23838333"

    .line 96
    .line 97
    const-string v19, "a0cee2ca33d8eb8dbed5e82fe2018d4706b1cb81f0dad1d5a786f47cf84f013f"

    .line 98
    .line 99
    const-string v20, "godot:4.2.2"

    .line 100
    .line 101
    invoke-direct/range {v13 .. v22}, LL1/a;-><init>(Ljava/lang/String;LL1/e;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 102
    .line 103
    .line 104
    filled-new-array {v2, v12, v13}, [LL1/a;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const-string v1, "builds"

    .line 113
    .line 114
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    new-instance v1, Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    .line 125
    .line 126
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-eqz v3, :cond_0

    .line 135
    .line 136
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    check-cast v3, LL1/a;

    .line 141
    .line 142
    invoke-virtual {v3}, LL1/a;->a()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-ne v1, v2, :cond_7

    .line 163
    .line 164
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-eqz v2, :cond_6

    .line 173
    .line 174
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    check-cast v2, LL1/a;

    .line 179
    .line 180
    iget-object v3, v2, LL1/a;->a:Ljava/lang/String;

    .line 181
    .line 182
    iget-object v4, v2, LL1/a;->c:Ljava/lang/String;

    .line 183
    .line 184
    sget-object v5, Ly1/v1;->j:Ly1/v1;

    .line 185
    .line 186
    iget-object v5, v5, Ly1/v1;->b:Ljava/lang/String;

    .line 187
    .line 188
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    if-eqz v3, :cond_5

    .line 193
    .line 194
    const-string v3, "https://"

    .line 195
    .line 196
    invoke-static {v4, v3}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-eqz v3, :cond_4

    .line 201
    .line 202
    new-instance v3, Ljava/net/URI;

    .line 203
    .line 204
    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    if-eqz v3, :cond_4

    .line 212
    .line 213
    iget v3, v2, LL1/a;->d:I

    .line 214
    .line 215
    if-lez v3, :cond_3

    .line 216
    .line 217
    iget-object v3, v2, LL1/a;->e:Ljava/lang/String;

    .line 218
    .line 219
    new-instance v4, Lkotlin/text/Regex;

    .line 220
    .line 221
    const-string v5, "[0-9a-fA-F]{64}"

    .line 222
    .line 223
    invoke-direct {v4, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v4, v3}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    if-eqz v3, :cond_2

    .line 231
    .line 232
    iget-object v3, v2, LL1/a;->f:Ljava/lang/String;

    .line 233
    .line 234
    new-instance v4, Lkotlin/text/Regex;

    .line 235
    .line 236
    invoke-direct {v4, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v4, v3}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    if-eqz v3, :cond_2

    .line 244
    .line 245
    iget-object v3, v2, LL1/a;->g:Ljava/lang/String;

    .line 246
    .line 247
    iget-object v4, v2, LL1/a;->a:Ljava/lang/String;

    .line 248
    .line 249
    iget-object v2, v2, LL1/a;->b:LL1/e;

    .line 250
    .line 251
    new-instance v5, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    const-string v4, ":"

    .line 260
    .line 261
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    if-eqz v2, :cond_1

    .line 276
    .line 277
    goto :goto_1

    .line 278
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 279
    .line 280
    const-string v1, "Catalog identity mismatch"

    .line 281
    .line 282
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    throw v0

    .line 286
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 287
    .line 288
    const-string v1, "Invalid catalog hash"

    .line 289
    .line 290
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    throw v0

    .line 294
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 295
    .line 296
    const-string v1, "Artifact version must be positive"

    .line 297
    .line 298
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    throw v0

    .line 302
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 303
    .line 304
    const-string v1, "Catalog URL must be HTTPS"

    .line 305
    .line 306
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    throw v0

    .line 310
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 311
    .line 312
    const-string v1, "Catalog engine mismatch"

    .line 313
    .line 314
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    throw v0

    .line 318
    :cond_6
    sput-object v0, Ly1/W0;->b:Ljava/util/List;

    .line 319
    .line 320
    return-void

    .line 321
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 322
    .line 323
    const-string v1, "Duplicate runtime install key"

    .line 324
    .line 325
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    throw v0
.end method

.method public static a(LL1/a;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "build"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, LL1/a;->b:LL1/e;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "Godot "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p0, " Runtime"

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static b(Ljava/io/File;)LL1/e;
    .locals 10

    .line 1
    const-string v0, "gamePath"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "dir"

    .line 7
    .line 8
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    if-nez p0, :cond_2

    .line 30
    .line 31
    :cond_1
    :goto_0
    move-object v6, v1

    .line 32
    goto/16 :goto_8

    .line 33
    .line 34
    :cond_2
    array-length v0, p0

    .line 35
    const/4 v2, 0x0

    .line 36
    move v3, v2

    .line 37
    :goto_1
    const-string v4, "pck"

    .line 38
    .line 39
    const/4 v5, 0x1

    .line 40
    if-ge v3, v0, :cond_4

    .line 41
    .line 42
    aget-object v6, p0, v3

    .line 43
    .line 44
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-eqz v7, :cond_3

    .line 49
    .line 50
    invoke-static {v6, v6, v4, v5}, LE/b;->y(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Z)Z

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    if-eqz v7, :cond_3

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_4
    move-object v6, v1

    .line 61
    :goto_2
    if-eqz v6, :cond_5

    .line 62
    .line 63
    goto/16 :goto_8

    .line 64
    .line 65
    :cond_5
    array-length v0, p0

    .line 66
    move v3, v2

    .line 67
    :goto_3
    const-string v6, "apk"

    .line 68
    .line 69
    if-ge v3, v0, :cond_7

    .line 70
    .line 71
    aget-object v7, p0, v3

    .line 72
    .line 73
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    if-eqz v8, :cond_6

    .line 78
    .line 79
    invoke-static {v7, v7, v6, v5}, LE/b;->y(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Z)Z

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    if-eqz v8, :cond_6

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_7
    move-object v7, v1

    .line 90
    :goto_4
    if-eqz v7, :cond_8

    .line 91
    .line 92
    move-object v6, v7

    .line 93
    goto :goto_8

    .line 94
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    .line 99
    array-length v3, p0

    .line 100
    move v7, v2

    .line 101
    :goto_5
    if-ge v7, v3, :cond_a

    .line 102
    .line 103
    aget-object v8, p0, v7

    .line 104
    .line 105
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    if-eqz v9, :cond_9

    .line 110
    .line 111
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    :cond_9
    add-int/lit8 v7, v7, 0x1

    .line 115
    .line 116
    goto :goto_5

    .line 117
    :cond_a
    new-instance p0, Ly1/M;

    .line 118
    .line 119
    const/4 v3, 0x2

    .line 120
    invoke-direct {p0, v3}, Ly1/M;-><init>(I)V

    .line 121
    .line 122
    .line 123
    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    :cond_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-eqz v0, :cond_1

    .line 136
    .line 137
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    check-cast v0, Ljava/io/File;

    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    if-eqz v0, :cond_d

    .line 148
    .line 149
    array-length v3, v0

    .line 150
    move v7, v2

    .line 151
    :goto_6
    if-ge v7, v3, :cond_d

    .line 152
    .line 153
    aget-object v8, v0, v7

    .line 154
    .line 155
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    if-eqz v9, :cond_c

    .line 160
    .line 161
    invoke-static {v8, v8, v4, v5}, LE/b;->y(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Z)Z

    .line 162
    .line 163
    .line 164
    move-result v9

    .line 165
    if-nez v9, :cond_e

    .line 166
    .line 167
    invoke-static {v8}, Lkotlin/io/FilesKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v9

    .line 171
    invoke-static {v9, v6, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 172
    .line 173
    .line 174
    move-result v9

    .line 175
    if-eqz v9, :cond_c

    .line 176
    .line 177
    goto :goto_7

    .line 178
    :cond_c
    add-int/lit8 v7, v7, 0x1

    .line 179
    .line 180
    goto :goto_6

    .line 181
    :cond_d
    move-object v8, v1

    .line 182
    :cond_e
    :goto_7
    if-eqz v8, :cond_b

    .line 183
    .line 184
    move-object v6, v8

    .line 185
    :goto_8
    if-nez v6, :cond_f

    .line 186
    .line 187
    goto :goto_9

    .line 188
    :cond_f
    invoke-static {v6}, Ly1/L1;->C(Ljava/io/File;)Ly1/P0;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    if-nez p0, :cond_10

    .line 193
    .line 194
    :goto_9
    return-object v1

    .line 195
    :cond_10
    sget-object v0, LL1/e;->c:Lkotlin/text/Regex;

    .line 196
    .line 197
    iget v0, p0, Ly1/P0;->a:I

    .line 198
    .line 199
    iget v1, p0, Ly1/P0;->b:I

    .line 200
    .line 201
    iget p0, p0, Ly1/P0;->c:I

    .line 202
    .line 203
    filled-new-array {v0, v1, p0}, [I

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    invoke-static {p0}, La/a;->v([I)LL1/e;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    return-object p0
.end method

.method public static c(Lcom/minhub/gamehub/data/GameEngine;Ljava/lang/String;)LL1/c;
    .locals 5

    .line 1
    const-string v0, "engine"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/minhub/gamehub/data/GameEngine;->GODOT:Lcom/minhub/gamehub/data/GameEngine;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eq p0, v0, :cond_0

    .line 10
    .line 11
    goto :goto_3

    .line 12
    :cond_0
    if-eqz p1, :cond_3

    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move-object p1, v1

    .line 22
    :goto_0
    if-eqz p1, :cond_3

    .line 23
    .line 24
    :try_start_0
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 25
    .line 26
    new-instance p0, Ljava/io/File;

    .line 27
    .line 28
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p0}, Ly1/W0;->b(Ljava/io/File;)LL1/e;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 42
    .line 43
    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    :goto_1
    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    move-object p0, v1

    .line 58
    :cond_2
    check-cast p0, LL1/e;

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    move-object p0, v1

    .line 62
    :goto_2
    sget-object p1, Ly1/W0;->b:Ljava/util/List;

    .line 63
    .line 64
    invoke-static {p1, p0}, Lcom/bumptech/glide/d;->W(Ljava/util/List;LL1/e;)LL1/c;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-nez p1, :cond_4

    .line 69
    .line 70
    :goto_3
    return-object v1

    .line 71
    :cond_4
    if-eqz p0, :cond_5

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_5
    const-string p0, "unknown"

    .line 75
    .line 76
    :goto_4
    iget-object v0, p1, LL1/c;->a:LL1/a;

    .line 77
    .line 78
    iget-object v1, v0, LL1/a;->b:LL1/e;

    .line 79
    .line 80
    iget-object v2, p1, LL1/c;->b:LL1/b;

    .line 81
    .line 82
    invoke-virtual {v0}, LL1/a;->a()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v4, "pack "

    .line 89
    .line 90
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p0, " -> Godot "

    .line 97
    .line 98
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string p0, " ("

    .line 105
    .line 106
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string p0, ", folder "

    .line 113
    .line 114
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string p0, ")"

    .line 121
    .line 122
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    const-string v0, "GodotRuntimes"

    .line 130
    .line 131
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    return-object p1
.end method
