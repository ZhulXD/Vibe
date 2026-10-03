.class public abstract Ly1/L1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final a:[B

.field public static volatile b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Ly1/L1;->a:[B

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 1
        0x52t
        0x50t
        0x47t
        0x4dt
        0x56t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static A(Ljava/io/File;)V
    .locals 14

    .line 1
    const-string v0, "gameDir"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Ly1/L1;->n(Ljava/io/File;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_2

    .line 13
    .line 14
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 15
    .line 16
    const-string v1, "game.zip"

    .line 17
    .line 18
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const-string v2, "MinHub-RenpyExtract"

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string v0, "game.zip not found in "

    .line 34
    .line 35
    invoke-static {v0, p0, v2}, LE/b;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    new-instance v1, Ljava/io/File;

    .line 40
    .line 41
    const-string v3, "__renpy_manifest__.json"

    .line 42
    .line 43
    invoke-direct {v1, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 47
    .line 48
    .line 49
    new-instance v1, Ljava/io/File;

    .line 50
    .line 51
    const-string v4, "__renpy_game__"

    .line 52
    .line 53
    invoke-direct {v1, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v1}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 57
    .line 58
    .line 59
    new-instance v1, Ljava/io/File;

    .line 60
    .line 61
    invoke-direct {v1, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    new-instance v5, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    :try_start_0
    new-instance v6, Ljava/util/zip/ZipInputStream;

    .line 77
    .line 78
    new-instance v7, Ljava/io/FileInputStream;

    .line 79
    .line 80
    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 81
    .line 82
    .line 83
    const/16 v8, 0x2000

    .line 84
    .line 85
    new-instance v9, Ljava/io/BufferedInputStream;

    .line 86
    .line 87
    invoke-direct {v9, v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 88
    .line 89
    .line 90
    invoke-direct {v6, v9}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    .line 92
    .line 93
    :try_start_1
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    :goto_0
    const/4 v9, 0x0

    .line 98
    if-eqz v7, :cond_4

    .line 99
    .line 100
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    const-string v11, "getName(...)"

    .line 105
    .line 106
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const/16 v11, 0x5c

    .line 110
    .line 111
    const/16 v12, 0x2f

    .line 112
    .line 113
    invoke-static {v10, v11, v12}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;CC)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v4, v10}, La/a;->H(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 121
    .line 122
    .line 123
    move-result-object v11

    .line 124
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    if-eqz v7, :cond_2

    .line 129
    .line 130
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :catchall_0
    move-exception v0

    .line 135
    goto/16 :goto_3

    .line 136
    .line 137
    :cond_2
    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    if-eqz v7, :cond_3

    .line 142
    .line 143
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 144
    .line 145
    .line 146
    :cond_3
    new-instance v7, Ljava/io/FileOutputStream;

    .line 147
    .line 148
    invoke-direct {v7, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 149
    .line 150
    .line 151
    new-instance v12, Ljava/io/BufferedOutputStream;

    .line 152
    .line 153
    invoke-direct {v12, v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    .line 155
    .line 156
    const/4 v7, 0x2

    .line 157
    const/4 v13, 0x0

    .line 158
    :try_start_2
    invoke-static {v6, v12, v13, v7, v9}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 159
    .line 160
    .line 161
    :try_start_3
    invoke-static {v12, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 162
    .line 163
    .line 164
    const-string v7, "path"

    .line 165
    .line 166
    invoke-static {v7, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    const-string v9, "size"

    .line 171
    .line 172
    invoke-virtual {v11}, Ljava/io/File;->length()J

    .line 173
    .line 174
    .line 175
    move-result-wide v10

    .line 176
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 177
    .line 178
    .line 179
    move-result-object v10

    .line 180
    invoke-static {v9, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 181
    .line 182
    .line 183
    move-result-object v9

    .line 184
    filled-new-array {v7, v9}, [Lkotlin/Pair;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    invoke-static {v7}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    :goto_1
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    .line 199
    .line 200
    .line 201
    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 202
    goto :goto_0

    .line 203
    :catchall_1
    move-exception v0

    .line 204
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 205
    :catchall_2
    move-exception v4

    .line 206
    :try_start_5
    invoke-static {v12, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 207
    .line 208
    .line 209
    throw v4

    .line 210
    :cond_4
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 211
    .line 212
    :try_start_6
    invoke-static {v6, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 213
    .line 214
    .line 215
    new-instance v4, Li1/l;

    .line 216
    .line 217
    invoke-direct {v4}, Li1/l;-><init>()V

    .line 218
    .line 219
    .line 220
    const-string v6, "files"

    .line 221
    .line 222
    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    invoke-static {v6}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    invoke-virtual {v4, v6}, Li1/l;->g(Ljava/lang/Object;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    new-instance v6, Ljava/io/File;

    .line 235
    .line 236
    invoke-direct {v6, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    sget-object v7, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 243
    .line 244
    invoke-static {v6, v4, v7}, Lkotlin/io/FilesKt;->writeText(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    new-instance v6, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .line 263
    .line 264
    const-string v7, "Prepared "

    .line 265
    .line 266
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string v4, " files from "

    .line 273
    .line 274
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    const-string v0, " in "

    .line 281
    .line 282
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 293
    .line 294
    .line 295
    :try_start_7
    sget-object p0, Lcom/minhub/gamehub/data/RenpyTagFixer;->INSTANCE:Lcom/minhub/gamehub/data/RenpyTagFixer;

    .line 296
    .line 297
    invoke-virtual {p0, v1}, Lcom/minhub/gamehub/data/RenpyTagFixer;->fixTlFolder(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 298
    .line 299
    .line 300
    :catch_0
    :goto_2
    return-void

    .line 301
    :catch_1
    move-exception v0

    .line 302
    goto :goto_4

    .line 303
    :goto_3
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 304
    :catchall_3
    move-exception v4

    .line 305
    :try_start_9
    invoke-static {v6, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 306
    .line 307
    .line 308
    throw v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 309
    :goto_4
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    new-instance v5, Ljava/lang/StringBuilder;

    .line 314
    .line 315
    const-string v6, "Extraction failed for "

    .line 316
    .line 317
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v4

    .line 327
    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    .line 329
    .line 330
    new-instance v0, Ljava/io/File;

    .line 331
    .line 332
    invoke-direct {v0, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 336
    .line 337
    .line 338
    invoke-static {v1}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 339
    .line 340
    .line 341
    return-void
.end method

.method public static final B(ZLy1/I1;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-lez p0, :cond_2

    .line 11
    .line 12
    const-string p0, "None"

    .line 13
    .line 14
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_2

    .line 19
    .line 20
    const-string p0, "."

    .line 21
    .line 22
    invoke-static {p2, p0}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-nez p0, :cond_2

    .line 27
    .line 28
    move p0, v0

    .line 29
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-ge p0, v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/16 v2, 0x2f

    .line 40
    .line 41
    if-eq v1, v2, :cond_2

    .line 42
    .line 43
    const/16 v2, 0x5c

    .line 44
    .line 45
    if-ne v1, v2, :cond_0

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    add-int/lit8 p0, p0, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object p0, p1, Ly1/I1;->b:Ljava/util/LinkedHashSet;

    .line 52
    .line 53
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_2

    .line 58
    .line 59
    iget-object p0, p1, Ly1/I1;->a:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-nez p0, :cond_2

    .line 66
    .line 67
    const/4 p0, 0x1

    .line 68
    return p0

    .line 69
    :cond_2
    :goto_1
    return v0
.end method

.method public static C(Ljava/io/File;)Ly1/P0;
    .locals 6

    .line 1
    const-string v0, "pack"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 8
    .line 9
    invoke-static {p0}, Lkotlin/io/FilesKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "pck"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-static {v1, v2, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    new-instance v1, Ljava/io/RandomAccessFile;

    .line 24
    .line 25
    const-string v2, "r"

    .line 26
    .line 27
    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    const/16 p0, 0x14

    .line 31
    .line 32
    :try_start_1
    new-array p0, p0, [B

    .line 33
    .line 34
    invoke-virtual {v1, p0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 35
    .line 36
    .line 37
    new-instance v2, Ljava/lang/String;

    .line 38
    .line 39
    sget-object v3, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    const/4 v5, 0x4

    .line 43
    invoke-direct {v2, p0, v4, v5, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 44
    .line 45
    .line 46
    const-string v3, "GDPC"

    .line 47
    .line 48
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    if-nez v2, :cond_1

    .line 53
    .line 54
    :try_start_2
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    .line 56
    .line 57
    return-object v0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    :try_start_3
    new-instance v2, Ly1/P0;

    .line 61
    .line 62
    const/16 v3, 0x8

    .line 63
    .line 64
    invoke-static {p0, v3}, Ly1/L1;->D([BI)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    const/16 v4, 0xc

    .line 69
    .line 70
    invoke-static {p0, v4}, Ly1/L1;->D([BI)I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    const/16 v5, 0x10

    .line 75
    .line 76
    invoke-static {p0, v5}, Ly1/L1;->D([BI)I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    invoke-direct {v2, v3, v4, p0}, Ly1/P0;-><init>(III)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 81
    .line 82
    .line 83
    :try_start_4
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 90
    goto :goto_1

    .line 91
    :catchall_1
    move-exception p0

    .line 92
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 93
    :catchall_2
    move-exception v2

    .line 94
    :try_start_6
    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 98
    :goto_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 99
    .line 100
    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    :goto_1
    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_2

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_2
    move-object v0, p0

    .line 116
    :goto_2
    check-cast v0, Ly1/P0;

    .line 117
    .line 118
    return-object v0
.end method

.method public static final D([BI)I
    .locals 2

    .line 1
    aget-byte v0, p0, p1

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    add-int/lit8 v1, p1, 0x1

    .line 6
    .line 7
    aget-byte v1, p0, v1

    .line 8
    .line 9
    and-int/lit16 v1, v1, 0xff

    .line 10
    .line 11
    shl-int/lit8 v1, v1, 0x8

    .line 12
    .line 13
    or-int/2addr v0, v1

    .line 14
    add-int/lit8 v1, p1, 0x2

    .line 15
    .line 16
    aget-byte v1, p0, v1

    .line 17
    .line 18
    and-int/lit16 v1, v1, 0xff

    .line 19
    .line 20
    shl-int/lit8 v1, v1, 0x10

    .line 21
    .line 22
    or-int/2addr v0, v1

    .line 23
    add-int/lit8 p1, p1, 0x3

    .line 24
    .line 25
    aget-byte p0, p0, p1

    .line 26
    .line 27
    and-int/lit16 p0, p0, 0xff

    .line 28
    .line 29
    shl-int/lit8 p0, p0, 0x18

    .line 30
    .line 31
    or-int/2addr p0, v0

    .line 32
    return p0
.end method

.method public static E(Ljava/io/RandomAccessFile;)J
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    invoke-static {v0, p0}, Ly1/L1;->p([BI)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public static F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    sub-int/2addr v0, p1

    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string p1, "substring(...)"

    .line 16
    .line 17
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p2}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static final G(Lcom/minhub/gamehub/data/Game;Z)Ly1/T1;
    .locals 2

    .line 1
    const-string v0, "game"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/minhub/gamehub/data/Game;->getIconPath()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v0, 0x0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object p0, v0

    .line 24
    :goto_0
    if-eqz p0, :cond_1

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    move-object v0, p0

    .line 29
    :cond_1
    new-instance p0, Ly1/T1;

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    const/4 p1, 0x0

    .line 36
    :goto_1
    invoke-direct {p0, v0, p1}, Ly1/T1;-><init>(Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    return-object p0
.end method

.method public static final H(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x64

    .line 3
    .line 4
    invoke-static {p0, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "\n        begin\n          vol = "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p0, "\n          if defined?(Audio)\n            [:bgm_vol=, :bgs_vol=, :se_vol=, :me_vol=].each do |setter|\n              Audio.send(setter, vol) if Audio.respond_to?(setter)\n            end\n          end\n        rescue\n        end\n    "

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
    invoke-static {p0}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public static final a(Ly1/g0;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 4

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "url"

    .line 7
    .line 8
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p0, "file://"

    .line 12
    .line 13
    invoke-static {p1, p0}, Lkotlin/text/StringsKt;->K(Ljava/lang/String;Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const/4 v0, 0x0

    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    :try_start_0
    invoke-static {p1}, Ly1/L1;->h(Ljava/lang/String;)Ljava/io/File;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-nez p0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/4 p1, 0x4

    .line 36
    invoke-static {p0, p1}, Ly1/L1;->b(Ljava/io/File;I)Ljava/io/File;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-nez p1, :cond_3

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    const-string v1, "MinHub-CaseFix"

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p0, " \u2192 "

    .line 62
    .line 63
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    new-instance p0, Landroid/webkit/WebResourceResponse;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const-string v2, "getName(...)"

    .line 83
    .line 84
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v1}, Ly1/L1;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    new-instance v2, Ljava/io/FileInputStream;

    .line 92
    .line 93
    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 94
    .line 95
    .line 96
    invoke-direct {p0, v1, v0, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    return-object p0

    .line 100
    :catch_0
    :goto_0
    return-object v0
.end method

.method public static final b(Ljava/io/File;I)Ljava/io/File;
    .locals 7

    .line 1
    const-string v0, "target"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-gtz p1, :cond_0

    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 24
    .line 25
    invoke-static {v0, p1}, Ly1/L1;->b(Ljava/io/File;I)Ljava/io/File;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_3
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string p1, "getName(...)"

    .line 37
    .line 38
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 42
    .line 43
    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const-string v1, "toLowerCase(...)"

    .line 48
    .line 49
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_5

    .line 57
    .line 58
    array-length v2, v0

    .line 59
    const/4 v3, 0x0

    .line 60
    :goto_1
    if-ge v3, v2, :cond_5

    .line 61
    .line 62
    aget-object v4, v0, v3

    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 72
    .line 73
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-eqz v5, :cond_4

    .line 85
    .line 86
    return-object v4

    .line 87
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_5
    :goto_2
    const/4 p0, 0x0

    .line 91
    return-object p0
.end method

.method public static c(Ljava/io/File;Ljava/io/File;Ljava/util/ArrayList;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_2

    .line 6
    .line 7
    array-length v0, p0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_2

    .line 10
    .line 11
    aget-object v2, p0, v1

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v2, p1, p2}, Ly1/L1;->c(Ljava/io/File;Ljava/io/File;Ljava/util/ArrayList;)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v2, p1}, Lkotlin/io/FilesKt;->relativeTo(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string v3, "getPath(...)"

    .line 44
    .line 45
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/16 v3, 0x5c

    .line 49
    .line 50
    const/16 v4, 0x2f

    .line 51
    .line 52
    invoke-static {v2, v3, v4}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;CC)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    return-void
.end method

.method public static d(Ljava/io/File;)Z
    .locals 11

    .line 1
    const-string v0, "file"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "data"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    array-length v1, v0

    .line 19
    const/4 v2, 0x1

    .line 20
    const/4 v3, 0x0

    .line 21
    const/16 v4, 0xff

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x2

    .line 25
    if-ge v1, v6, :cond_0

    .line 26
    .line 27
    :goto_0
    move-object v1, v5

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    aget-byte v1, v0, v3

    .line 30
    .line 31
    and-int/2addr v1, v4

    .line 32
    aget-byte v7, v0, v2

    .line 33
    .line 34
    and-int/2addr v7, v4

    .line 35
    const/16 v8, 0xfe

    .line 36
    .line 37
    if-ne v1, v4, :cond_1

    .line 38
    .line 39
    if-ne v7, v8, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    if-ne v1, v8, :cond_2

    .line 43
    .line 44
    if-ne v7, v8, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    xor-int/2addr v1, v4

    .line 48
    xor-int/2addr v7, v1

    .line 49
    if-eq v7, v8, :cond_3

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    :goto_1
    if-eqz v1, :cond_f

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    array-length v7, v0

    .line 63
    new-array v8, v7, [B

    .line 64
    .line 65
    move v9, v3

    .line 66
    :goto_2
    if-ge v9, v7, :cond_4

    .line 67
    .line 68
    aget-byte v10, v0, v9

    .line 69
    .line 70
    and-int/2addr v10, v4

    .line 71
    xor-int/2addr v10, v1

    .line 72
    int-to-byte v10, v10

    .line 73
    aput-byte v10, v8, v9

    .line 74
    .line 75
    add-int/lit8 v9, v9, 0x1

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    const-string v0, "decrypted"

    .line 79
    .line 80
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    if-ne v7, v6, :cond_5

    .line 84
    .line 85
    goto/16 :goto_5

    .line 86
    .line 87
    :cond_5
    rem-int/lit8 v0, v7, 0x2

    .line 88
    .line 89
    if-eqz v0, :cond_6

    .line 90
    .line 91
    goto/16 :goto_6

    .line 92
    .line 93
    :cond_6
    new-instance v0, Ljava/lang/String;

    .line 94
    .line 95
    sub-int/2addr v7, v6

    .line 96
    const/16 v1, 0x800

    .line 97
    .line 98
    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    sget-object v4, Lkotlin/text/Charsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 103
    .line 104
    invoke-direct {v0, v8, v6, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-nez v1, :cond_7

    .line 112
    .line 113
    goto :goto_5

    .line 114
    :cond_7
    invoke-static {v0, v3}, Lkotlin/text/StringsKt;->o(Ljava/lang/CharSequence;C)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_8

    .line 119
    .line 120
    goto :goto_6

    .line 121
    :cond_8
    move v1, v3

    .line 122
    move v4, v1

    .line 123
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    const/16 v7, 0x9

    .line 128
    .line 129
    const/16 v9, 0xa

    .line 130
    .line 131
    if-ge v1, v6, :cond_e

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    if-eq v6, v9, :cond_c

    .line 138
    .line 139
    const/16 v9, 0xd

    .line 140
    .line 141
    if-eq v6, v9, :cond_c

    .line 142
    .line 143
    if-eq v6, v7, :cond_c

    .line 144
    .line 145
    const/16 v7, 0x20

    .line 146
    .line 147
    if-gt v7, v6, :cond_9

    .line 148
    .line 149
    const/16 v7, 0x7f

    .line 150
    .line 151
    if-ge v6, v7, :cond_9

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_9
    const/16 v7, 0x3000

    .line 155
    .line 156
    if-gt v7, v6, :cond_a

    .line 157
    .line 158
    const/16 v7, 0x3100

    .line 159
    .line 160
    if-ge v6, v7, :cond_a

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_a
    const/16 v7, 0x4e00

    .line 164
    .line 165
    if-gt v7, v6, :cond_b

    .line 166
    .line 167
    const v7, 0xa000

    .line 168
    .line 169
    .line 170
    if-ge v6, v7, :cond_b

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_b
    const v7, 0xff00

    .line 174
    .line 175
    .line 176
    if-gt v7, v6, :cond_d

    .line 177
    .line 178
    const v7, 0xfff0

    .line 179
    .line 180
    .line 181
    if-ge v6, v7, :cond_d

    .line 182
    .line 183
    :cond_c
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 184
    .line 185
    :cond_d
    add-int/lit8 v1, v1, 0x1

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_e
    mul-int/2addr v4, v9

    .line 189
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    mul-int/2addr v0, v7

    .line 194
    if-lt v4, v0, :cond_f

    .line 195
    .line 196
    :goto_5
    move-object v5, v8

    .line 197
    :cond_f
    :goto_6
    if-nez v5, :cond_10

    .line 198
    .line 199
    return v3

    .line 200
    :cond_10
    invoke-static {p0, v5}, Lkotlin/io/FilesKt;->writeBytes(Ljava/io/File;[B)V

    .line 201
    .line 202
    .line 203
    return v2
.end method

.method public static final e(Ly1/g0;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 4

    .line 1
    const-string v0, "Served decrypted: "

    .line 2
    .line 3
    const-string v1, "<this>"

    .line 4
    .line 5
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string p0, "url"

    .line 9
    .line 10
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string p0, "file://"

    .line 14
    .line 15
    invoke-static {p1, p0}, Lkotlin/text/StringsKt;->K(Ljava/lang/String;Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :cond_0
    const/16 p0, 0x3f

    .line 24
    .line 25
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->U(CLjava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const/16 p1, 0x23

    .line 30
    .line 31
    invoke-static {p1, p0}, Lkotlin/text/StringsKt;->U(CLjava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string p1, ".json"

    .line 36
    .line 37
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string v1, "toLowerCase(...)"

    .line 51
    .line 52
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v1, "/data/"

    .line 56
    .line 57
    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    :try_start_0
    invoke-static {p0}, Ly1/L1;->h(Ljava/lang/String;)Ljava/io/File;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    if-nez p0, :cond_3

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    new-instance p1, Ljava/io/File;

    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    if-nez v1, :cond_4

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v2, ".enc"

    .line 93
    .line 94
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-nez v1, :cond_5

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_5
    sget-object v1, Lcom/minhub/gamehub/data/DataEncryptor;->INSTANCE:Lcom/minhub/gamehub/data/DataEncryptor;

    .line 112
    .line 113
    invoke-virtual {v1, p1}, Lcom/minhub/gamehub/data/DataEncryptor;->decryptFile(Ljava/io/File;)Ljava/io/ByteArrayInputStream;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    if-nez p1, :cond_6

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_6
    const-string v1, "MinHub-Enc"

    .line 121
    .line 122
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    new-instance p0, Landroid/webkit/WebResourceResponse;

    .line 142
    .line 143
    const-string v0, "application/json"

    .line 144
    .line 145
    const-string v1, "UTF-8"

    .line 146
    .line 147
    invoke-direct {p0, v0, v1, p1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .line 149
    .line 150
    return-object p0

    .line 151
    :catch_0
    :goto_0
    const/4 p0, 0x0

    .line 152
    return-object p0
.end method

.method public static f(Ljava/io/File;)Ljava/lang/String;
    .locals 14

    .line 1
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    const-string v1, "r"

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-static {v0}, Ly1/L1;->r(Ljava/io/RandomAccessFile;)Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x0

    .line 29
    move v5, v4

    .line 30
    :cond_1
    :goto_0
    if-ge v5, v3, :cond_9

    .line 31
    .line 32
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    add-int/lit8 v5, v5, 0x1

    .line 37
    .line 38
    check-cast v6, Ly1/r1;

    .line 39
    .line 40
    iget-boolean v7, v6, Ly1/r1;->c:Z

    .line 41
    .line 42
    if-nez v7, :cond_1

    .line 43
    .line 44
    iget-wide v7, v6, Ly1/r1;->e:J

    .line 45
    .line 46
    const-wide/16 v9, 0x4

    .line 47
    .line 48
    cmp-long v7, v7, v9

    .line 49
    .line 50
    if-gez v7, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iget-object v7, v6, Ly1/r1;->a:Ljava/lang/String;

    .line 54
    .line 55
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 56
    .line 57
    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    const-string v8, "toLowerCase(...)"

    .line 62
    .line 63
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v8, ".png"

    .line 67
    .line 68
    invoke-static {v7, v8}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    const/4 v9, 0x4

    .line 73
    if-eqz v8, :cond_3

    .line 74
    .line 75
    new-array v7, v9, [B

    .line 76
    .line 77
    fill-array-data v7, :array_0

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    const-string v8, ".ogg"

    .line 82
    .line 83
    invoke-static {v7, v8}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    if-eqz v8, :cond_4

    .line 88
    .line 89
    new-array v7, v9, [B

    .line 90
    .line 91
    fill-array-data v7, :array_1

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    const-string v8, ".tlg"

    .line 96
    .line 97
    invoke-static {v7, v8}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    if-eqz v7, :cond_5

    .line 102
    .line 103
    new-array v7, v9, [B

    .line 104
    .line 105
    fill-array-data v7, :array_2

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_5
    move-object v7, v1

    .line 110
    :goto_1
    if-nez v7, :cond_6

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_6
    new-array v8, v9, [B

    .line 114
    .line 115
    iget-wide v10, v6, Ly1/r1;->d:J

    .line 116
    .line 117
    invoke-virtual {v0, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v8}, Ljava/io/RandomAccessFile;->read([B)I

    .line 121
    .line 122
    .line 123
    move-result v10

    .line 124
    if-ne v10, v9, :cond_1

    .line 125
    .line 126
    aget-byte v10, v8, v4

    .line 127
    .line 128
    and-int/lit16 v10, v10, 0xff

    .line 129
    .line 130
    aget-byte v11, v7, v4

    .line 131
    .line 132
    and-int/lit16 v11, v11, 0xff

    .line 133
    .line 134
    xor-int/2addr v10, v11

    .line 135
    const/4 v11, 0x1

    .line 136
    :goto_2
    if-ge v11, v9, :cond_8

    .line 137
    .line 138
    aget-byte v12, v8, v11

    .line 139
    .line 140
    and-int/lit16 v12, v12, 0xff

    .line 141
    .line 142
    xor-int/2addr v12, v10

    .line 143
    aget-byte v13, v7, v11

    .line 144
    .line 145
    and-int/lit16 v13, v13, 0xff

    .line 146
    .line 147
    if-eq v12, v13, :cond_7

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_7
    add-int/lit8 v11, v11, 0x1

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :catchall_0
    move-exception p0

    .line 154
    goto/16 :goto_c

    .line 155
    .line 156
    :cond_8
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    iget-wide v8, v6, Ly1/r1;->b:J

    .line 161
    .line 162
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    invoke-static {v7, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    const/16 v7, 0x8

    .line 178
    .line 179
    if-lt v6, v7, :cond_1

    .line 180
    .line 181
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 182
    .line 183
    .line 184
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    if-eqz p0, :cond_a

    .line 186
    .line 187
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 188
    .line 189
    .line 190
    return-object v1

    .line 191
    :cond_a
    :try_start_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 192
    .line 193
    .line 194
    move-result p0

    .line 195
    if-eqz p0, :cond_b

    .line 196
    .line 197
    goto/16 :goto_b

    .line 198
    .line 199
    :cond_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 200
    .line 201
    .line 202
    move-result p0

    .line 203
    move v3, v4

    .line 204
    :goto_3
    if-ge v3, p0, :cond_18

    .line 205
    .line 206
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    add-int/lit8 v3, v3, 0x1

    .line 211
    .line 212
    check-cast v5, Lkotlin/Pair;

    .line 213
    .line 214
    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    check-cast v5, Ljava/lang/Number;

    .line 219
    .line 220
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    if-nez v5, :cond_c

    .line 225
    .line 226
    goto :goto_3

    .line 227
    :cond_c
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 228
    .line 229
    .line 230
    move-result p0

    .line 231
    if-eqz p0, :cond_d

    .line 232
    .line 233
    goto/16 :goto_a

    .line 234
    .line 235
    :cond_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 236
    .line 237
    .line 238
    move-result p0

    .line 239
    move v3, v4

    .line 240
    :goto_4
    if-ge v3, p0, :cond_17

    .line 241
    .line 242
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    add-int/lit8 v3, v3, 0x1

    .line 247
    .line 248
    check-cast v5, Lkotlin/Pair;

    .line 249
    .line 250
    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v6

    .line 254
    check-cast v6, Ljava/lang/Number;

    .line 255
    .line 256
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 257
    .line 258
    .line 259
    move-result v6

    .line 260
    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    check-cast v5, Ljava/lang/Number;

    .line 265
    .line 266
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    .line 267
    .line 268
    .line 269
    move-result-wide v7

    .line 270
    const/4 v5, 0x3

    .line 271
    ushr-long/2addr v7, v5

    .line 272
    const-wide/16 v9, 0xff

    .line 273
    .line 274
    and-long/2addr v7, v9

    .line 275
    long-to-int v5, v7

    .line 276
    if-ne v6, v5, :cond_e

    .line 277
    .line 278
    goto :goto_4

    .line 279
    :cond_e
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 280
    .line 281
    .line 282
    move-result p0

    .line 283
    if-eqz p0, :cond_f

    .line 284
    .line 285
    goto/16 :goto_9

    .line 286
    .line 287
    :cond_f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 288
    .line 289
    .line 290
    move-result p0

    .line 291
    move v3, v4

    .line 292
    :goto_5
    if-ge v3, p0, :cond_16

    .line 293
    .line 294
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v5

    .line 298
    add-int/lit8 v3, v3, 0x1

    .line 299
    .line 300
    check-cast v5, Lkotlin/Pair;

    .line 301
    .line 302
    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v6

    .line 306
    check-cast v6, Ljava/lang/Number;

    .line 307
    .line 308
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 309
    .line 310
    .line 311
    move-result v6

    .line 312
    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v5

    .line 316
    check-cast v5, Ljava/lang/Number;

    .line 317
    .line 318
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    .line 319
    .line 320
    .line 321
    move-result-wide v7

    .line 322
    and-long/2addr v7, v9

    .line 323
    long-to-int v5, v7

    .line 324
    if-ne v6, v5, :cond_10

    .line 325
    .line 326
    goto :goto_5

    .line 327
    :cond_10
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object p0

    .line 331
    check-cast p0, Lkotlin/Pair;

    .line 332
    .line 333
    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object p0

    .line 337
    check-cast p0, Ljava/lang/Number;

    .line 338
    .line 339
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 340
    .line 341
    .line 342
    move-result p0

    .line 343
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 344
    .line 345
    .line 346
    move-result v3

    .line 347
    if-eqz v3, :cond_11

    .line 348
    .line 349
    goto :goto_7

    .line 350
    :cond_11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 351
    .line 352
    .line 353
    move-result v3

    .line 354
    move v5, v4

    .line 355
    :goto_6
    if-ge v5, v3, :cond_12

    .line 356
    .line 357
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v6

    .line 361
    add-int/lit8 v5, v5, 0x1

    .line 362
    .line 363
    check-cast v6, Lkotlin/Pair;

    .line 364
    .line 365
    invoke-virtual {v6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v6

    .line 369
    check-cast v6, Ljava/lang/Number;

    .line 370
    .line 371
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 372
    .line 373
    .line 374
    move-result v6

    .line 375
    if-ne v6, p0, :cond_15

    .line 376
    .line 377
    goto :goto_6

    .line 378
    :cond_12
    :goto_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 379
    .line 380
    .line 381
    move-result v3

    .line 382
    if-eqz v3, :cond_13

    .line 383
    .line 384
    goto :goto_8

    .line 385
    :cond_13
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 386
    .line 387
    .line 388
    move-result v3

    .line 389
    move v5, v4

    .line 390
    :cond_14
    if-ge v5, v3, :cond_15

    .line 391
    .line 392
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v6

    .line 396
    add-int/lit8 v5, v5, 0x1

    .line 397
    .line 398
    check-cast v6, Lkotlin/Pair;

    .line 399
    .line 400
    invoke-virtual {v6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v6

    .line 404
    check-cast v6, Ljava/lang/Number;

    .line 405
    .line 406
    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    .line 407
    .line 408
    .line 409
    move-result-wide v6

    .line 410
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v8

    .line 414
    check-cast v8, Lkotlin/Pair;

    .line 415
    .line 416
    invoke-virtual {v8}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v8

    .line 420
    check-cast v8, Ljava/lang/Number;

    .line 421
    .line 422
    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    .line 423
    .line 424
    .line 425
    move-result-wide v8

    .line 426
    cmp-long v6, v6, v8

    .line 427
    .line 428
    if-eqz v6, :cond_14

    .line 429
    .line 430
    const/16 v2, 0x10

    .line 431
    .line 432
    invoke-static {v2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    .line 433
    .line 434
    .line 435
    move-result v2

    .line 436
    invoke-static {p0, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object p0

    .line 440
    const-string v2, "toString(...)"

    .line 441
    .line 442
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    new-instance v2, Ljava/lang/StringBuilder;

    .line 446
    .line 447
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 448
    .line 449
    .line 450
    const-string v3, "0x"

    .line 451
    .line 452
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 462
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 463
    .line 464
    .line 465
    return-object p0

    .line 466
    :cond_15
    :goto_8
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 467
    .line 468
    .line 469
    return-object v1

    .line 470
    :cond_16
    :goto_9
    :try_start_3
    const-string p0, "h"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 471
    .line 472
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 473
    .line 474
    .line 475
    return-object p0

    .line 476
    :cond_17
    :goto_a
    :try_start_4
    const-string p0, "h>>3"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 477
    .line 478
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 479
    .line 480
    .line 481
    return-object p0

    .line 482
    :cond_18
    :goto_b
    :try_start_5
    const-string p0, "PLAIN"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 483
    .line 484
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 485
    .line 486
    .line 487
    return-object p0

    .line 488
    :goto_c
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 489
    :catchall_1
    move-exception v1

    .line 490
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 491
    .line 492
    .line 493
    throw v1

    .line 494
    nop

    .line 495
    :array_0
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
    .end array-data

    .line 496
    :array_1
    .array-data 1
        0x4ft
        0x67t
        0x67t
        0x53t
    .end array-data

    :array_2
    .array-data 1
        0x54t
        0x4ct
        0x47t
        0x30t
    .end array-data
.end method

.method public static g(Landroid/app/Activity;Lcom/minhub/gamehub/data/GameEngine;)Z
    .locals 4

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Ly1/k1;->a:Ljava/util/Set;

    .line 7
    .line 8
    sget-object v1, Ly1/l1;->b:Ly1/l1;

    .line 9
    .line 10
    invoke-static {p0}, LS1/d;->p(Landroid/content/Context;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const-string v3, "feature"

    .line 15
    .line 16
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object v1, Ly1/k1;->a:Ljava/util/Set;

    .line 20
    .line 21
    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/4 v1, 0x1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v2, v1

    .line 30
    :goto_0
    if-eqz v2, :cond_1

    .line 31
    .line 32
    return v1

    .line 33
    :cond_1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const v0, 0x7f0c003d

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    new-instance v0, LO0/b;

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-direct {v0, p0, v1}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 52
    .line 53
    .line 54
    iget-object p0, v0, Le/f;->c:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p0, Le/b;

    .line 57
    .line 58
    iput-object p1, p0, Le/b;->t:Landroid/view/View;

    .line 59
    .line 60
    invoke-virtual {v0}, LO0/b;->c()Le/g;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const-string v0, "create(...)"

    .line 65
    .line 66
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    const v2, 0x106000d

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 79
    .line 80
    .line 81
    :cond_2
    const v0, 0x7f09007e

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Landroid/widget/Button;

    .line 89
    .line 90
    new-instance v0, LC1/z;

    .line 91
    .line 92
    const/16 v2, 0x8

    .line 93
    .line 94
    invoke-direct {v0, p0, v2}, LC1/z;-><init>(Le/g;I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 101
    .line 102
    .line 103
    return v1
.end method

.method public static final h(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v0, Ljava/net/URI;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v1, "file"

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-static {p0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance p0, Ljava/io/File;

    .line 26
    .line 27
    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    return-object p0

    .line 31
    :catch_0
    :goto_0
    const/4 p0, 0x0

    .line 32
    return-object p0
.end method

.method public static final i(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x60

    .line 2
    .line 3
    if-eq p0, v0, :cond_7

    .line 4
    .line 5
    const/16 v0, 0x61

    .line 6
    .line 7
    if-eq p0, v0, :cond_6

    .line 8
    .line 9
    const/16 v0, 0x63

    .line 10
    .line 11
    if-eq p0, v0, :cond_5

    .line 12
    .line 13
    const/16 v0, 0x64

    .line 14
    .line 15
    if-eq p0, v0, :cond_4

    .line 16
    .line 17
    const/16 v0, 0x66

    .line 18
    .line 19
    if-eq p0, v0, :cond_3

    .line 20
    .line 21
    const/16 v0, 0x67

    .line 22
    .line 23
    if-eq p0, v0, :cond_2

    .line 24
    .line 25
    const/16 v0, 0x6c

    .line 26
    .line 27
    if-eq p0, v0, :cond_1

    .line 28
    .line 29
    const/16 v0, 0x6d

    .line 30
    .line 31
    if-eq p0, v0, :cond_0

    .line 32
    .line 33
    packed-switch p0, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    return-object p0

    .line 38
    :pswitch_0
    const-string p0, "DPAD_RIGHT"

    .line 39
    .line 40
    return-object p0

    .line 41
    :pswitch_1
    const-string p0, "DPAD_LEFT"

    .line 42
    .line 43
    return-object p0

    .line 44
    :pswitch_2
    const-string p0, "DPAD_DOWN"

    .line 45
    .line 46
    return-object p0

    .line 47
    :pswitch_3
    const-string p0, "DPAD_UP"

    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_0
    const-string p0, "KEYCODE_BUTTON_SELECT"

    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_1
    const-string p0, "KEYCODE_BUTTON_START"

    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_2
    const-string p0, "KEYCODE_BUTTON_R1"

    .line 57
    .line 58
    return-object p0

    .line 59
    :cond_3
    const-string p0, "KEYCODE_BUTTON_L1"

    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_4
    const-string p0, "KEYCODE_BUTTON_Y"

    .line 63
    .line 64
    return-object p0

    .line 65
    :cond_5
    const-string p0, "KEYCODE_BUTTON_X"

    .line 66
    .line 67
    return-object p0

    .line 68
    :cond_6
    const-string p0, "KEYCODE_BUTTON_B"

    .line 69
    .line 70
    return-object p0

    .line 71
    :cond_7
    const-string p0, "KEYCODE_BUTTON_A"

    .line 72
    .line 73
    return-object p0

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static j(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "MinHub-CaseMap"

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 12
    .line 13
    invoke-direct {v1, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_4

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    goto/16 :goto_2

    .line 29
    .line 30
    :cond_1
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-static {v1, p0, v2}, Ly1/L1;->c(Ljava/io/File;Ljava/io/File;Ljava/util/ArrayList;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    new-instance p0, Lorg/json/JSONArray;

    .line 46
    .line 47
    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    const/4 v3, 0x0

    .line 55
    :goto_0
    if-ge v3, v1, :cond_3

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    add-int/lit8 v3, v3, 0x1

    .line 62
    .line 63
    check-cast v4, Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-exception p0

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    new-instance v1, Lorg/json/JSONObject;

    .line 72
    .line 73
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v3, "data"

    .line 77
    .line 78
    invoke-virtual {v1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    const-string v1, "toString(...)"

    .line 86
    .line 87
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-static {p1, p0}, Lkotlin/io/FilesKt;->g(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v2, "wrote "

    .line 107
    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string p0, " entries \u2192 "

    .line 115
    .line 116
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v1, "scan failed for "

    .line 133
    .line 134
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string p2, ": "

    .line 141
    .line 142
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    :cond_4
    :goto_2
    return-void
.end method

.method public static final k(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "filename"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, ".png"

    .line 7
    .line 8
    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string p0, "image/png"

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    const-string v0, ".jpg"

    .line 18
    .line 19
    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_14

    .line 24
    .line 25
    const-string v0, ".jpeg"

    .line 26
    .line 27
    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    goto/16 :goto_3

    .line 34
    .line 35
    :cond_1
    const-string v0, ".webp"

    .line 36
    .line 37
    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    const-string p0, "image/webp"

    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_2
    const-string v0, ".svg"

    .line 47
    .line 48
    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    const-string p0, "image/svg+xml"

    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_3
    const-string v0, ".ogg"

    .line 58
    .line 59
    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    const-string p0, "audio/ogg"

    .line 66
    .line 67
    return-object p0

    .line 68
    :cond_4
    const-string v0, ".mp3"

    .line 69
    .line 70
    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    const-string p0, "audio/mpeg"

    .line 77
    .line 78
    return-object p0

    .line 79
    :cond_5
    const-string v0, ".m4a"

    .line 80
    .line 81
    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_6

    .line 86
    .line 87
    const-string p0, "audio/mp4"

    .line 88
    .line 89
    return-object p0

    .line 90
    :cond_6
    const-string v0, ".wav"

    .line 91
    .line 92
    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_7

    .line 97
    .line 98
    const-string p0, "audio/wav"

    .line 99
    .line 100
    return-object p0

    .line 101
    :cond_7
    const-string v0, ".mp4"

    .line 102
    .line 103
    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_8

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_8
    const-string v0, ".m4v"

    .line 111
    .line 112
    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_9

    .line 117
    .line 118
    :goto_0
    const-string p0, "video/mp4"

    .line 119
    .line 120
    return-object p0

    .line 121
    :cond_9
    const-string v0, ".webm"

    .line 122
    .line 123
    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_a

    .line 128
    .line 129
    const-string p0, "video/webm"

    .line 130
    .line 131
    return-object p0

    .line 132
    :cond_a
    const-string v0, ".json"

    .line 133
    .line 134
    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-nez v0, :cond_13

    .line 139
    .line 140
    const-string v0, ".tmj"

    .line 141
    .line 142
    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-nez v0, :cond_13

    .line 147
    .line 148
    const-string v0, ".tsj"

    .line 149
    .line 150
    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_b

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_b
    const-string v0, ".csv"

    .line 158
    .line 159
    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_c

    .line 164
    .line 165
    const-string p0, "text/csv"

    .line 166
    .line 167
    return-object p0

    .line 168
    :cond_c
    const-string v0, ".md"

    .line 169
    .line 170
    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_d

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_d
    const-string v0, ".js"

    .line 178
    .line 179
    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_e

    .line 184
    .line 185
    const-string p0, "application/javascript"

    .line 186
    .line 187
    return-object p0

    .line 188
    :cond_e
    const-string v0, ".wasm"

    .line 189
    .line 190
    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-eqz v0, :cond_f

    .line 195
    .line 196
    const-string p0, "application/wasm"

    .line 197
    .line 198
    return-object p0

    .line 199
    :cond_f
    const-string v0, ".css"

    .line 200
    .line 201
    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-eqz v0, :cond_10

    .line 206
    .line 207
    const-string p0, "text/css"

    .line 208
    .line 209
    return-object p0

    .line 210
    :cond_10
    const-string v0, ".html"

    .line 211
    .line 212
    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-eqz v0, :cond_11

    .line 217
    .line 218
    const-string p0, "text/html"

    .line 219
    .line 220
    return-object p0

    .line 221
    :cond_11
    const-string v0, ".txt"

    .line 222
    .line 223
    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 224
    .line 225
    .line 226
    move-result p0

    .line 227
    if-eqz p0, :cond_12

    .line 228
    .line 229
    :goto_1
    const-string p0, "text/plain"

    .line 230
    .line 231
    return-object p0

    .line 232
    :cond_12
    const-string p0, "application/octet-stream"

    .line 233
    .line 234
    return-object p0

    .line 235
    :cond_13
    :goto_2
    const-string p0, "application/json"

    .line 236
    .line 237
    return-object p0

    .line 238
    :cond_14
    :goto_3
    const-string p0, "image/jpeg"

    .line 239
    .line 240
    return-object p0
.end method

.method public static l([B)[B
    .locals 4

    .line 1
    new-instance v0, Ljava/util/zip/Inflater;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 7
    .line 8
    .line 9
    const/high16 p0, 0x10000

    .line 10
    .line 11
    new-array p0, p0, [B

    .line 12
    .line 13
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/util/zip/Inflater;->inflate([B)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_1

    .line 35
    .line 36
    :cond_0
    const/4 v3, 0x0

    .line 37
    invoke-virtual {v1, p0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const-string v0, "toByteArray(...)"

    .line 49
    .line 50
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object p0
.end method

.method public static final m(Ly1/g0;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 11

    .line 1
    const-string v0, "reroute miss: game/"

    .line 2
    .line 3
    const-string v1, "game/"

    .line 4
    .line 5
    const-string v2, "/"

    .line 6
    .line 7
    const-string v3, "rerouting "

    .line 8
    .line 9
    const-string v4, "<this>"

    .line 10
    .line 11
    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v4, "url"

    .line 15
    .line 16
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Ly1/g0;->f:Ljava/io/File;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    goto/16 :goto_4

    .line 25
    .line 26
    :cond_0
    const-string v5, "file://"

    .line 27
    .line 28
    invoke-static {p1, v5}, Lkotlin/text/StringsKt;->K(Ljava/lang/String;Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-nez v5, :cond_1

    .line 33
    .line 34
    goto/16 :goto_4

    .line 35
    .line 36
    :cond_1
    const-string v5, "_mfsuplub.json"

    .line 37
    .line 38
    invoke-static {p1, v5}, Lkotlin/text/StringsKt;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    const-string v6, "MinHub-RenpyWebload"

    .line 43
    .line 44
    if-eqz v5, :cond_2

    .line 45
    .line 46
    const/16 p0, 0x3c

    .line 47
    .line 48
    invoke-static {p1, p0}, Lkotlin/text/StringsKt;->takeLast(Ljava/lang/String;I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v0, "returning empty manifest: "

    .line 55
    .line 56
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    new-instance p0, Landroid/webkit/WebResourceResponse;

    .line 70
    .line 71
    new-instance p1, Ljava/io/ByteArrayInputStream;

    .line 72
    .line 73
    const-string v0, "[]"

    .line 74
    .line 75
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const-string v1, "getBytes(...)"

    .line 82
    .line 83
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 87
    .line 88
    .line 89
    const-string v0, "application/json"

    .line 90
    .line 91
    const-string v1, "UTF-8"

    .line 92
    .line 93
    invoke-direct {p0, v0, v1, p1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 94
    .line 95
    .line 96
    return-object p0

    .line 97
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    if-eqz v7, :cond_3

    .line 106
    .line 107
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 108
    .line 109
    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    const-string v8, "toLowerCase(...)"

    .line 114
    .line 115
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_3
    move-object v7, v4

    .line 120
    :goto_0
    const-string v8, "file"

    .line 121
    .line 122
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    if-nez v7, :cond_4

    .line 127
    .line 128
    goto/16 :goto_4

    .line 129
    .line 130
    :cond_4
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    if-eqz v7, :cond_10

    .line 135
    .line 136
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 137
    .line 138
    .line 139
    move-result v8

    .line 140
    if-lez v8, :cond_5

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_5
    move-object v7, v4

    .line 144
    :goto_1
    if-nez v7, :cond_6

    .line 145
    .line 146
    goto/16 :goto_4

    .line 147
    .line 148
    :cond_6
    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    if-eqz v5, :cond_7

    .line 153
    .line 154
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    if-lez v8, :cond_7

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_7
    move-object v5, v4

    .line 162
    :goto_2
    if-eqz v5, :cond_9

    .line 163
    .line 164
    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    new-instance v1, Ljava/io/File;

    .line 169
    .line 170
    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 174
    .line 175
    .line 176
    move-result p0

    .line 177
    if-eqz p0, :cond_8

    .line 178
    .line 179
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 180
    .line 181
    .line 182
    move-result p0

    .line 183
    if-eqz p0, :cond_8

    .line 184
    .line 185
    new-instance p0, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    const-string v2, "serving webloader asset: "

    .line 188
    .line 189
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    new-instance p0, Landroid/webkit/WebResourceResponse;

    .line 203
    .line 204
    invoke-static {p1}, Ly1/L1;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    new-instance v0, Ljava/io/FileInputStream;

    .line 209
    .line 210
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 211
    .line 212
    .line 213
    invoke-direct {p0, p1, v4, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 214
    .line 215
    .line 216
    return-object p0

    .line 217
    :cond_8
    const-string p0, "asset not found: "

    .line 218
    .line 219
    invoke-static {p0, v0, v6}, LE/b;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    return-object v4

    .line 223
    :cond_9
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    const-string v8, "getAbsolutePath(...)"

    .line 228
    .line 229
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    const/4 v8, 0x1

    .line 233
    new-array v8, v8, [C

    .line 234
    .line 235
    sget-char v9, Ljava/io/File;->separatorChar:C

    .line 236
    .line 237
    const/4 v10, 0x0

    .line 238
    aput-char v9, v8, v10

    .line 239
    .line 240
    invoke-static {v5, v8}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/String;[C)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    new-instance v8, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    invoke-static {v7, v8}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 260
    .line 261
    .line 262
    move-result v8

    .line 263
    if-nez v8, :cond_a

    .line 264
    .line 265
    goto/16 :goto_4

    .line 266
    .line 267
    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    invoke-static {v7, v2}, Lkotlin/text/StringsKt;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 287
    .line 288
    .line 289
    move-result v5

    .line 290
    if-nez v5, :cond_b

    .line 291
    .line 292
    goto :goto_4

    .line 293
    :cond_b
    invoke-static {v2, v1}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 294
    .line 295
    .line 296
    move-result v5

    .line 297
    if-eqz v5, :cond_c

    .line 298
    .line 299
    goto :goto_4

    .line 300
    :cond_c
    new-instance v5, Ljava/io/File;

    .line 301
    .line 302
    invoke-direct {v5, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 306
    .line 307
    .line 308
    move-result v5

    .line 309
    if-eqz v5, :cond_d

    .line 310
    .line 311
    goto :goto_4

    .line 312
    :cond_d
    new-instance v5, Ljava/io/File;

    .line 313
    .line 314
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    invoke-direct {v5, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 322
    .line 323
    .line 324
    move-result p0

    .line 325
    if-eqz p0, :cond_f

    .line 326
    .line 327
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    .line 328
    .line 329
    .line 330
    move-result p0

    .line 331
    if-nez p0, :cond_e

    .line 332
    .line 333
    goto :goto_3

    .line 334
    :cond_e
    new-instance p0, Ljava/lang/StringBuilder;

    .line 335
    .line 336
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    const-string v0, " \u2192 game/"

    .line 343
    .line 344
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object p0

    .line 354
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    .line 356
    .line 357
    new-instance p0, Landroid/webkit/WebResourceResponse;

    .line 358
    .line 359
    invoke-static {p1}, Ly1/L1;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    new-instance v0, Ljava/io/FileInputStream;

    .line 364
    .line 365
    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 366
    .line 367
    .line 368
    invoke-direct {p0, p1, v4, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 369
    .line 370
    .line 371
    return-object p0

    .line 372
    :cond_f
    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object p0

    .line 376
    invoke-static {v6, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    .line 378
    .line 379
    :catch_0
    :cond_10
    :goto_4
    return-object v4
.end method

.method public static n(Ljava/io/File;)Z
    .locals 5

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
    const-string v1, "__renpy_manifest__.json"

    .line 9
    .line 10
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    return v2

    .line 21
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 22
    .line 23
    const-string v3, "game.zip"

    .line 24
    .line 25
    invoke-direct {v1, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    cmp-long v0, v3, v0

    .line 43
    .line 44
    if-lez v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v1, "game.zip newer than manifest in "

    .line 53
    .line 54
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p0, " \u2014 cache stale, will re-extract"

    .line 61
    .line 62
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    const-string v0, "MinHub-RenpyExtract"

    .line 70
    .line 71
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    return v2

    .line 75
    :cond_1
    const/4 p0, 0x1

    .line 76
    return p0
.end method

.method public static o([BI)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, 0x2

    .line 4
    if-ge v0, v2, :cond_0

    .line 5
    .line 6
    add-int v2, p1, v0

    .line 7
    .line 8
    aget-byte v2, p0, v2

    .line 9
    .line 10
    and-int/lit16 v2, v2, 0xff

    .line 11
    .line 12
    mul-int/lit8 v3, v0, 0x8

    .line 13
    .line 14
    shl-int/2addr v2, v3

    .line 15
    or-int/2addr v1, v2

    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return v1
.end method

.method public static p([BI)J
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    const/16 v3, 0x8

    .line 5
    .line 6
    if-ge v2, v3, :cond_0

    .line 7
    .line 8
    add-int v3, p1, v2

    .line 9
    .line 10
    aget-byte v3, p0, v3

    .line 11
    .line 12
    int-to-long v3, v3

    .line 13
    const-wide/16 v5, 0xff

    .line 14
    .line 15
    and-long/2addr v3, v5

    .line 16
    mul-int/lit8 v5, v2, 0x8

    .line 17
    .line 18
    shl-long/2addr v3, v5

    .line 19
    or-long/2addr v0, v3

    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-wide v0
.end method

.method public static q(Ljava/util/ArrayList;)LL1/e;
    .locals 14

    .line 1
    const-string v0, "dirs"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const/4 v0, 0x0

    .line 15
    const/4 v1, 0x0

    .line 16
    move-object v2, v0

    .line 17
    move v3, v1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_e

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Ljava/io/File;

    .line 29
    .line 30
    new-instance v5, Lcom/minhub/gamehub/data/b;

    .line 31
    .line 32
    const/4 v6, 0x5

    .line 33
    invoke-direct {v5, v6}, Lcom/minhub/gamehub/data/b;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, v5}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    if-nez v4, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    array-length v5, v4

    .line 44
    move v6, v1

    .line 45
    :goto_1
    if-ge v6, v5, :cond_0

    .line 46
    .line 47
    aget-object v7, v4, v6

    .line 48
    .line 49
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    const/16 v8, 0x190

    .line 52
    .line 53
    if-le v3, v8, :cond_2

    .line 54
    .line 55
    return-object v2

    .line 56
    :cond_2
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    const-string v8, "save"

    .line 60
    .line 61
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :try_start_0
    new-instance v8, Ljava/util/zip/ZipFile;

    .line 65
    .line 66
    invoke-direct {v8, v7}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    :try_start_1
    const-string v9, "json"

    .line 70
    .line 71
    invoke-virtual {v8, v9}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 72
    .line 73
    .line 74
    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    if-nez v9, :cond_3

    .line 76
    .line 77
    :try_start_2
    invoke-static {v8, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 78
    .line 79
    .line 80
    :goto_2
    move-object v9, v0

    .line 81
    goto/16 :goto_9

    .line 82
    .line 83
    :catch_0
    move-exception v8

    .line 84
    goto/16 :goto_8

    .line 85
    .line 86
    :cond_3
    :try_start_3
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getSize()J

    .line 87
    .line 88
    .line 89
    move-result-wide v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    const-wide/32 v12, 0x100000

    .line 91
    .line 92
    .line 93
    cmp-long v10, v10, v12

    .line 94
    .line 95
    if-lez v10, :cond_4

    .line 96
    .line 97
    :try_start_4
    invoke-static {v8, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    :try_start_5
    invoke-virtual {v8, v9}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 102
    .line 103
    .line 104
    move-result-object v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 105
    :try_start_6
    new-instance v10, Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v9}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    .line 111
    .line 112
    .line 113
    move-result-object v11

    .line 114
    sget-object v12, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 115
    .line 116
    invoke-direct {v10, v11, v12}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 117
    .line 118
    .line 119
    :try_start_7
    invoke-static {v9, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 120
    .line 121
    .line 122
    new-instance v9, Lorg/json/JSONObject;

    .line 123
    .line 124
    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    const-string v10, "_renpy_version"

    .line 128
    .line 129
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 130
    .line 131
    .line 132
    move-result-object v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 133
    if-nez v9, :cond_5

    .line 134
    .line 135
    :try_start_8
    invoke-static {v8, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_5
    :try_start_9
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    .line 140
    .line 141
    .line 142
    move-result v10

    .line 143
    invoke-static {v1, v10}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    .line 144
    .line 145
    .line 146
    move-result-object v10

    .line 147
    new-instance v11, Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 150
    .line 151
    .line 152
    move-result v12

    .line 153
    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    .line 155
    .line 156
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 157
    .line 158
    .line 159
    move-result-object v10

    .line 160
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v12

    .line 164
    if-eqz v12, :cond_6

    .line 165
    .line 166
    move-object v12, v10

    .line 167
    check-cast v12, Lkotlin/collections/IntIterator;

    .line 168
    .line 169
    invoke-virtual {v12}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 170
    .line 171
    .line 172
    move-result v12

    .line 173
    const/4 v13, -0x1

    .line 174
    invoke-virtual {v9, v12, v13}, Lorg/json/JSONArray;->optInt(II)I

    .line 175
    .line 176
    .line 177
    move-result v12

    .line 178
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object v12

    .line 182
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :catchall_0
    move-exception v9

    .line 187
    goto :goto_7

    .line 188
    :cond_6
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 189
    .line 190
    .line 191
    move-result v9

    .line 192
    if-nez v9, :cond_a

    .line 193
    .line 194
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 195
    .line 196
    .line 197
    move-result v9

    .line 198
    if-eqz v9, :cond_7

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_7
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 202
    .line 203
    .line 204
    move-result v9

    .line 205
    move v10, v1

    .line 206
    :cond_8
    if-ge v10, v9, :cond_9

    .line 207
    .line 208
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v12

    .line 212
    add-int/lit8 v10, v10, 0x1

    .line 213
    .line 214
    check-cast v12, Ljava/lang/Number;

    .line 215
    .line 216
    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    .line 217
    .line 218
    .line 219
    move-result v12

    .line 220
    if-gez v12, :cond_8

    .line 221
    .line 222
    goto :goto_5

    .line 223
    :cond_9
    :goto_4
    new-instance v9, LL1/e;

    .line 224
    .line 225
    invoke-direct {v9, v11}, LL1/e;-><init>(Ljava/util/List;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 226
    .line 227
    .line 228
    goto :goto_6

    .line 229
    :cond_a
    :goto_5
    move-object v9, v0

    .line 230
    :goto_6
    :try_start_a
    invoke-static {v8, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 231
    .line 232
    .line 233
    goto :goto_9

    .line 234
    :catchall_1
    move-exception v10

    .line 235
    :try_start_b
    throw v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 236
    :catchall_2
    move-exception v11

    .line 237
    :try_start_c
    invoke-static {v9, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 238
    .line 239
    .line 240
    throw v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 241
    :goto_7
    :try_start_d
    throw v9
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 242
    :catchall_3
    move-exception v10

    .line 243
    :try_start_e
    invoke-static {v8, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 244
    .line 245
    .line 246
    throw v10
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    .line 247
    :goto_8
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v7

    .line 251
    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v8

    .line 255
    new-instance v9, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    const-string v10, "Unreadable save "

    .line 258
    .line 259
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string v7, ": "

    .line 266
    .line 267
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v7

    .line 277
    const-string v8, "RenpySaveVersions"

    .line 278
    .line 279
    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .line 281
    .line 282
    goto/16 :goto_2

    .line 283
    .line 284
    :goto_9
    if-nez v9, :cond_b

    .line 285
    .line 286
    goto :goto_a

    .line 287
    :cond_b
    if-eqz v2, :cond_c

    .line 288
    .line 289
    invoke-virtual {v9, v2}, LL1/e;->a(LL1/e;)I

    .line 290
    .line 291
    .line 292
    move-result v7

    .line 293
    if-lez v7, :cond_d

    .line 294
    .line 295
    :cond_c
    move-object v2, v9

    .line 296
    :cond_d
    :goto_a
    add-int/lit8 v6, v6, 0x1

    .line 297
    .line 298
    goto/16 :goto_1

    .line 299
    .line 300
    :cond_e
    return-object v2
.end method

.method public static r(Ljava/io/RandomAccessFile;)Ljava/util/ArrayList;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    const-wide/16 v3, 0x14

    .line 8
    .line 9
    cmp-long v1, v1, v3

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-gez v1, :cond_0

    .line 13
    .line 14
    goto/16 :goto_1

    .line 15
    .line 16
    :cond_0
    const-wide/16 v3, 0xb

    .line 17
    .line 18
    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Ly1/L1;->E(Ljava/io/RandomAccessFile;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v5, 0x1

    .line 33
    if-gez v1, :cond_2

    .line 34
    .line 35
    :cond_1
    move-object v1, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/16 v6, 0x80

    .line 38
    .line 39
    if-ne v1, v6, :cond_4

    .line 40
    .line 41
    const-wide/16 v6, 0x1

    .line 42
    .line 43
    add-long/2addr v3, v6

    .line 44
    const/16 v1, 0x8

    .line 45
    .line 46
    int-to-long v6, v1

    .line 47
    add-long/2addr v3, v6

    .line 48
    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Ly1/L1;->E(Ljava/io/RandomAccessFile;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v3

    .line 55
    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_3

    .line 63
    .line 64
    invoke-static {v0}, Ly1/L1;->E(Ljava/io/RandomAccessFile;)J

    .line 65
    .line 66
    .line 67
    move-result-wide v3

    .line 68
    long-to-int v1, v3

    .line 69
    new-array v1, v1, [B

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    if-ne v1, v5, :cond_1

    .line 76
    .line 77
    invoke-static {v0}, Ly1/L1;->E(Ljava/io/RandomAccessFile;)J

    .line 78
    .line 79
    .line 80
    move-result-wide v3

    .line 81
    invoke-static {v0}, Ly1/L1;->E(Ljava/io/RandomAccessFile;)J

    .line 82
    .line 83
    .line 84
    long-to-int v1, v3

    .line 85
    new-array v1, v1, [B

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 88
    .line 89
    .line 90
    invoke-static {v1}, Ly1/L1;->l([B)[B

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    goto :goto_0

    .line 95
    :cond_4
    and-int/2addr v1, v5

    .line 96
    if-eqz v1, :cond_5

    .line 97
    .line 98
    invoke-static {v0}, Ly1/L1;->E(Ljava/io/RandomAccessFile;)J

    .line 99
    .line 100
    .line 101
    move-result-wide v6

    .line 102
    invoke-static {v0}, Ly1/L1;->E(Ljava/io/RandomAccessFile;)J

    .line 103
    .line 104
    .line 105
    long-to-int v1, v6

    .line 106
    new-array v1, v1, [B

    .line 107
    .line 108
    const/16 v6, 0x11

    .line 109
    .line 110
    int-to-long v6, v6

    .line 111
    add-long/2addr v3, v6

    .line 112
    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 116
    .line 117
    .line 118
    invoke-static {v1}, Ly1/L1;->l([B)[B

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    goto :goto_0

    .line 123
    :cond_5
    invoke-static {v0}, Ly1/L1;->E(Ljava/io/RandomAccessFile;)J

    .line 124
    .line 125
    .line 126
    move-result-wide v6

    .line 127
    long-to-int v1, v6

    .line 128
    new-array v1, v1, [B

    .line 129
    .line 130
    const/16 v6, 0x9

    .line 131
    .line 132
    int-to-long v6, v6

    .line 133
    add-long/2addr v3, v6

    .line 134
    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 138
    .line 139
    .line 140
    :goto_0
    if-nez v1, :cond_6

    .line 141
    .line 142
    :goto_1
    return-object v2

    .line 143
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .line 147
    .line 148
    const/4 v0, 0x0

    .line 149
    move v4, v0

    .line 150
    :goto_2
    add-int/lit8 v6, v4, 0xc

    .line 151
    .line 152
    :try_start_0
    array-length v7, v1

    .line 153
    if-gt v6, v7, :cond_11

    .line 154
    .line 155
    new-instance v7, Ljava/lang/String;

    .line 156
    .line 157
    sget-object v8, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 158
    .line 159
    const/4 v9, 0x4

    .line 160
    invoke-direct {v7, v1, v4, v9, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 161
    .line 162
    .line 163
    add-int/lit8 v4, v4, 0x4

    .line 164
    .line 165
    invoke-static {v1, v4}, Ly1/L1;->p([BI)J

    .line 166
    .line 167
    .line 168
    move-result-wide v10

    .line 169
    int-to-long v12, v6

    .line 170
    add-long/2addr v12, v10

    .line 171
    long-to-int v4, v12

    .line 172
    const-string v8, "File"

    .line 173
    .line 174
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    if-eqz v7, :cond_f

    .line 179
    .line 180
    if-gt v6, v4, :cond_f

    .line 181
    .line 182
    array-length v7, v1

    .line 183
    if-gt v4, v7, :cond_f

    .line 184
    .line 185
    const-string v7, ""

    .line 186
    .line 187
    const-wide/16 v10, 0x0

    .line 188
    .line 189
    move v14, v0

    .line 190
    move-wide v12, v10

    .line 191
    move-wide v15, v12

    .line 192
    move-wide/from16 v17, v15

    .line 193
    .line 194
    move-object v11, v7

    .line 195
    move v7, v14

    .line 196
    :goto_3
    add-int/lit8 v8, v6, 0xc

    .line 197
    .line 198
    if-gt v8, v4, :cond_e

    .line 199
    .line 200
    new-instance v10, Ljava/lang/String;

    .line 201
    .line 202
    sget-object v2, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 203
    .line 204
    invoke-direct {v10, v1, v6, v9, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 205
    .line 206
    .line 207
    add-int/lit8 v2, v6, 0x4

    .line 208
    .line 209
    move/from16 p0, v6

    .line 210
    .line 211
    invoke-static {v1, v2}, Ly1/L1;->p([BI)J

    .line 212
    .line 213
    .line 214
    move-result-wide v5

    .line 215
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    const v9, 0x2d9ce9

    .line 220
    .line 221
    .line 222
    if-eq v2, v9, :cond_b

    .line 223
    .line 224
    const v9, 0x3164ae

    .line 225
    .line 226
    .line 227
    if-eq v2, v9, :cond_a

    .line 228
    .line 229
    const v9, 0x35ceb8

    .line 230
    .line 231
    .line 232
    if-eq v2, v9, :cond_7

    .line 233
    .line 234
    goto/16 :goto_5

    .line 235
    .line 236
    :cond_7
    const-string v2, "segm"

    .line 237
    .line 238
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    if-nez v2, :cond_8

    .line 243
    .line 244
    goto/16 :goto_5

    .line 245
    .line 246
    :cond_8
    if-nez v7, :cond_d

    .line 247
    .line 248
    const-wide/16 v9, 0x1c

    .line 249
    .line 250
    cmp-long v2, v5, v9

    .line 251
    .line 252
    if-ltz v2, :cond_d

    .line 253
    .line 254
    add-int/lit8 v2, p0, 0x28

    .line 255
    .line 256
    array-length v9, v1

    .line 257
    if-gt v2, v9, :cond_d

    .line 258
    .line 259
    invoke-static {v1, v8}, Ly1/L1;->p([BI)J

    .line 260
    .line 261
    .line 262
    move-result-wide v9

    .line 263
    long-to-int v2, v9

    .line 264
    and-int/lit8 v2, v2, 0x7

    .line 265
    .line 266
    if-eqz v2, :cond_9

    .line 267
    .line 268
    const/4 v14, 0x1

    .line 269
    goto :goto_4

    .line 270
    :cond_9
    move v14, v0

    .line 271
    :goto_4
    add-int/lit8 v2, p0, 0x10

    .line 272
    .line 273
    invoke-static {v1, v2}, Ly1/L1;->p([BI)J

    .line 274
    .line 275
    .line 276
    move-result-wide v9

    .line 277
    add-int/lit8 v2, p0, 0x20

    .line 278
    .line 279
    invoke-static {v1, v2}, Ly1/L1;->p([BI)J

    .line 280
    .line 281
    .line 282
    move-result-wide v15

    .line 283
    move-wide/from16 v17, v15

    .line 284
    .line 285
    const/4 v7, 0x1

    .line 286
    move-wide v15, v9

    .line 287
    goto :goto_5

    .line 288
    :catch_0
    move-exception v0

    .line 289
    goto/16 :goto_6

    .line 290
    .line 291
    :cond_a
    const-string v2, "info"

    .line 292
    .line 293
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    if-eqz v2, :cond_d

    .line 298
    .line 299
    add-int/lit8 v2, p0, 0x20

    .line 300
    .line 301
    invoke-static {v1, v2}, Ly1/L1;->o([BI)I

    .line 302
    .line 303
    .line 304
    move-result v2

    .line 305
    array-length v9, v1

    .line 306
    add-int/lit8 v10, p0, 0x22

    .line 307
    .line 308
    sub-int/2addr v9, v10

    .line 309
    div-int/lit8 v9, v9, 0x2

    .line 310
    .line 311
    invoke-static {v9, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 312
    .line 313
    .line 314
    move-result v9

    .line 315
    new-instance v11, Ljava/lang/String;

    .line 316
    .line 317
    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    .line 318
    .line 319
    .line 320
    move-result v2

    .line 321
    mul-int/lit8 v2, v2, 0x2

    .line 322
    .line 323
    sget-object v9, Lkotlin/text/Charsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 324
    .line 325
    invoke-direct {v11, v1, v10, v2, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 326
    .line 327
    .line 328
    const/16 v2, 0x5c

    .line 329
    .line 330
    const/16 v9, 0x2f

    .line 331
    .line 332
    invoke-static {v11, v2, v9}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;CC)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    move-object v11, v2

    .line 337
    goto :goto_5

    .line 338
    :cond_b
    const-string v2, "adlr"

    .line 339
    .line 340
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    move-result v2

    .line 344
    if-nez v2, :cond_c

    .line 345
    .line 346
    goto :goto_5

    .line 347
    :cond_c
    const-wide/16 v9, 0x4

    .line 348
    .line 349
    cmp-long v2, v5, v9

    .line 350
    .line 351
    if-ltz v2, :cond_d

    .line 352
    .line 353
    add-int/lit8 v2, p0, 0x10

    .line 354
    .line 355
    array-length v9, v1

    .line 356
    if-gt v2, v9, :cond_d

    .line 357
    .line 358
    invoke-static {v1, v8}, Ly1/L1;->o([BI)I

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    int-to-long v9, v2

    .line 363
    add-int/lit8 v2, p0, 0xe

    .line 364
    .line 365
    invoke-static {v1, v2}, Ly1/L1;->o([BI)I

    .line 366
    .line 367
    .line 368
    move-result v2

    .line 369
    int-to-long v12, v2

    .line 370
    const/16 v2, 0x10

    .line 371
    .line 372
    shl-long/2addr v12, v2

    .line 373
    or-long/2addr v9, v12

    .line 374
    move-wide v12, v9

    .line 375
    :cond_d
    :goto_5
    long-to-int v2, v5

    .line 376
    add-int v6, v8, v2

    .line 377
    .line 378
    const/4 v2, 0x0

    .line 379
    const/4 v5, 0x1

    .line 380
    const/4 v9, 0x4

    .line 381
    goto/16 :goto_3

    .line 382
    .line 383
    :cond_e
    if-eqz v7, :cond_f

    .line 384
    .line 385
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 386
    .line 387
    .line 388
    move-result v2

    .line 389
    if-lez v2, :cond_f

    .line 390
    .line 391
    new-instance v10, Ly1/r1;

    .line 392
    .line 393
    invoke-direct/range {v10 .. v18}, Ly1/r1;-><init>(Ljava/lang/String;JZJJ)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    :cond_f
    if-lez v4, :cond_11

    .line 400
    .line 401
    array-length v2, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    if-le v4, v2, :cond_10

    .line 403
    .line 404
    goto :goto_7

    .line 405
    :cond_10
    const/4 v2, 0x0

    .line 406
    const/4 v5, 0x1

    .line 407
    goto/16 :goto_2

    .line 408
    .line 409
    :goto_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 410
    .line 411
    .line 412
    move-result v1

    .line 413
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    const-string v4, "index parse stopped at tail ("

    .line 420
    .line 421
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    const-string v1, " entries): "

    .line 428
    .line 429
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    const-string v1, "KiriKiriXp3Filter"

    .line 440
    .line 441
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    .line 443
    .line 444
    :cond_11
    :goto_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 445
    .line 446
    .line 447
    move-result v0

    .line 448
    if-eqz v0, :cond_12

    .line 449
    .line 450
    const/4 v2, 0x0

    .line 451
    goto :goto_8

    .line 452
    :cond_12
    move-object v2, v3

    .line 453
    :goto_8
    return-object v2
.end method

.method public static s(Ljava/lang/String;)Ly1/I1;
    .locals 6

    .line 1
    const-string v0, "text"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lkotlin/text/StringsKt;->lineSequence(Ljava/lang/CharSequence;)Lkotlin/sequences/Sequence;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    move-object v2, v1

    .line 21
    :cond_0
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_3

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-string v4, "next(...)"

    .line 32
    .line 33
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    check-cast v3, Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const-string v4, "#"

    .line 47
    .line 48
    invoke-static {v3, v4}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-nez v4, :cond_0

    .line 53
    .line 54
    invoke-static {v3}, Lkotlin/text/StringsKt;->T(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    const/16 v5, 0x3d

    .line 59
    .line 60
    invoke-static {v5, v3}, Lkotlin/text/StringsKt;->O(CLjava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    const-string v5, "language"

    .line 65
    .line 66
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_2

    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    move-object v2, v3

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    const-string v5, "parkable"

    .line 82
    .line 83
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_0

    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-lez v4, :cond_0

    .line 94
    .line 95
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    new-instance p0, Ly1/I1;

    .line 100
    .line 101
    invoke-direct {p0, v2, v0}, Ly1/I1;-><init>(Ljava/lang/String;Ljava/util/LinkedHashSet;)V

    .line 102
    .line 103
    .line 104
    return-object p0
.end method

.method public static final t(Ly1/g0;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 4

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "url"

    .line 7
    .line 8
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/16 p0, 0x3f

    .line 12
    .line 13
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->U(CLjava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const/16 p1, 0x23

    .line 18
    .line 19
    invoke-static {p1, p0}, Lkotlin/text/StringsKt;->U(CLjava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string p1, "/CBR_imgFusion.js"

    .line 24
    .line 25
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    :try_start_0
    invoke-static {p0}, Ly1/L1;->h(Ljava/lang/String;)Ljava/io/File;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    if-nez p0, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 47
    .line 48
    invoke-static {p0, p1}, Lkotlin/io/FilesKt;->readText(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const-string v0, "\r\n"

    .line 53
    .line 54
    const-string v1, "\n"

    .line 55
    .line 56
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    const-string v0, "\tvar ary = $gameSystem._CBR_imgFusion._fusionList;\n\tfor(var i=0,len=ary[key].add_ary.length; i<len; i++){\n\t\tvar bitmap2 = ImageManager.loadBitmap(\'img/pictures/\', ary[key].add_ary[i].slice(0,-4), undefined, true);\n\t\tthis.context.drawImage(bitmap2._image, 0, 0);\n\t}"

    .line 61
    .line 62
    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_3

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const-string v1, "\tvar ary = $gameSystem._CBR_imgFusion._fusionList;\n\tvar __mhctx = this._context;\n\t__mhctx.drawImage(this._image, 0, 0);\n\tfor(var i=0,len=ary[key].add_ary.length; i<len; i++){\n\t\tvar bitmap2 = ImageManager.loadBitmap(\'img/pictures/\', ary[key].add_ary[i].slice(0,-4), undefined, true);\n\t\tif(bitmap2 && bitmap2._image){ __mhctx.drawImage(bitmap2._image, 0, 0); }\n\t}\n\ttry{ if(this._baseTexture){ if(this._baseTexture.dispose) this._baseTexture.dispose(); this._baseTexture.update(); } }catch(__mhe){}"

    .line 70
    .line 71
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-eqz p0, :cond_4

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    const-string p0, "MinHub-MZPatch"

    .line 83
    .line 84
    const-string v1, "CBR_imgFusion.js patched (single-context composite + texture update)"

    .line 85
    .line 86
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    new-instance p0, Landroid/webkit/WebResourceResponse;

    .line 90
    .line 91
    const-string v1, "application/javascript"

    .line 92
    .line 93
    const-string v2, "UTF-8"

    .line 94
    .line 95
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 96
    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    const-string v0, "getBytes(...)"

    .line 102
    .line 103
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 107
    .line 108
    .line 109
    invoke-direct {p0, v1, v2, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    .line 112
    return-object p0

    .line 113
    :catch_0
    :goto_0
    const/4 p0, 0x0

    .line 114
    return-object p0
.end method

.method public static final u(Ly1/g0;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 4

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "url"

    .line 7
    .line 8
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/16 p0, 0x3f

    .line 12
    .line 13
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->U(CLjava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const/16 p1, 0x23

    .line 18
    .line 19
    invoke-static {p1, p0}, Lkotlin/text/StringsKt;->U(CLjava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string p1, "/CityWalkingSystemt.js"

    .line 24
    .line 25
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    :try_start_0
    invoke-static {p0}, Ly1/L1;->h(Ljava/lang/String;)Ljava/io/File;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    if-nez p0, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 47
    .line 48
    invoke-static {p0, p1}, Lkotlin/io/FilesKt;->readText(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const-string v0, "function CSVToArray(str, delimiter = \',\') {\n        const rows = str.split(\'\\n\');"

    .line 53
    .line 54
    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_3

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    const-string v1, "function CSVToArray(str, delimiter = \',\') {\n        if (str == null) return [[]];\n        const rows = str.split(\'\\n\');"

    .line 62
    .line 63
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-eqz p0, :cond_4

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    const-string p0, "MinHub-MZPatch"

    .line 75
    .line 76
    const-string v1, "CityWalkingSystemt.js patched (CSVToArray null guard)"

    .line 77
    .line 78
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    new-instance p0, Landroid/webkit/WebResourceResponse;

    .line 82
    .line 83
    const-string v1, "application/javascript"

    .line 84
    .line 85
    const-string v2, "UTF-8"

    .line 86
    .line 87
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 88
    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const-string v0, "getBytes(...)"

    .line 94
    .line 95
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 99
    .line 100
    .line 101
    invoke-direct {p0, v1, v2, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    .line 104
    return-object p0

    .line 105
    :catch_0
    :goto_0
    const/4 p0, 0x0

    .line 106
    return-object p0
.end method

.method public static final v(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "\\"

    .line 2
    .line 3
    const-string v1, "\\\\"

    .line 4
    .line 5
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "\""

    .line 10
    .line 11
    const-string v1, "\\\""

    .line 12
    .line 13
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v0, "\r"

    .line 18
    .line 19
    const-string v1, "\\r"

    .line 20
    .line 21
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string v0, "\n"

    .line 26
    .line 27
    const-string v1, "\\n"

    .line 28
    .line 29
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string v0, "\t"

    .line 34
    .line 35
    const-string v1, "\\t"

    .line 36
    .line 37
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public static final w(Ly1/g0;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 4

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "url"

    .line 7
    .line 8
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/16 p0, 0x3f

    .line 12
    .line 13
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->U(CLjava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const/16 p1, 0x23

    .line 18
    .line 19
    invoke-static {p1, p0}, Lkotlin/text/StringsKt;->U(CLjava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string p1, "/FOSSIL.js"

    .line 24
    .line 25
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    :try_start_0
    invoke-static {p0}, Ly1/L1;->h(Ljava/lang/String;)Ljava/io/File;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    if-nez p0, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 47
    .line 48
    invoke-static {p0, p1}, Lkotlin/io/FilesKt;->readText(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    new-instance v0, Lkotlin/text/Regex;

    .line 53
    .line 54
    const-string v1, "[ \\t]*var fs = require\\(\"fs\"\\);\\r?\\n[ \\t]*var path = require\\(\'path\'\\);\\r?\\n[ \\t]*var base = path\\.dirname\\(process\\.mainModule\\.filename\\);\\r?\\n[ \\t]*var filePath = path\\.join\\(base, \'FOSSILindex\\.html\'\\);\\r?\\n[ \\t]*//var data = createWrapperObject\\(, orderedResult, unknownPlugins\\);\\r?\\n[ \\t]*fs\\.writeFileSync\\(filePath, rawIndexHtml\\);\\r?\\n[ \\t]*//synchronous writing means that we can guarantee this is in place[ \\t]*\\r?\\n[ \\t]*//for when we ridirect to the new html\\."

    .line 55
    .line 56
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v1, "\t\t/* MinHub: NW.js file write removed \u2014 FOSSILindex.html served on-the-fly */"

    .line 60
    .line 61
    invoke-virtual {v0, p0, v1}, Lkotlin/text/Regex;->replaceFirst(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-eqz p0, :cond_3

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    const-string p0, "MinHub-MZPatch"

    .line 73
    .line 74
    const-string v1, "FOSSIL.js patched (NW.js write block removed)"

    .line 75
    .line 76
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    new-instance p0, Landroid/webkit/WebResourceResponse;

    .line 80
    .line 81
    const-string v1, "application/javascript"

    .line 82
    .line 83
    const-string v2, "UTF-8"

    .line 84
    .line 85
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 86
    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const-string v0, "getBytes(...)"

    .line 92
    .line 93
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 97
    .line 98
    .line 99
    invoke-direct {p0, v1, v2, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    .line 102
    return-object p0

    .line 103
    :catch_0
    :goto_0
    const/4 p0, 0x0

    .line 104
    return-object p0
.end method

.method public static final x(Ly1/g0;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "url"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Ly1/g0;->d:[B

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/16 v0, 0x3f

    .line 17
    .line 18
    invoke-static {v0, p1}, Lkotlin/text/StringsKt;->U(CLjava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/16 v0, 0x23

    .line 23
    .line 24
    invoke-static {v0, p1}, Lkotlin/text/StringsKt;->U(CLjava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/16 v0, 0x2f

    .line 29
    .line 30
    invoke-static {v0, p1}, Lkotlin/text/StringsKt;->S(CLjava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v0, "live2dcubismcore"

    .line 35
    .line 36
    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->K(Ljava/lang/String;Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string v0, ".js"

    .line 44
    .line 45
    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    :goto_0
    const/4 p0, 0x0

    .line 52
    return-object p0

    .line 53
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v1, "Cubism Core override -> 4.2.4 for "

    .line 56
    .line 57
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const-string v0, "MinHub-Live2D"

    .line 68
    .line 69
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    new-instance p1, Landroid/webkit/WebResourceResponse;

    .line 73
    .line 74
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 75
    .line 76
    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 77
    .line 78
    .line 79
    const-string p0, "application/javascript"

    .line 80
    .line 81
    const-string v1, "UTF-8"

    .line 82
    .line 83
    invoke-direct {p1, p0, v1, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 84
    .line 85
    .line 86
    return-object p1
.end method

.method public static final y(Ly1/g0;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 6

    .line 1
    const-string v0, "moc3 v5->v4 patched: "

    .line 2
    .line 3
    const-string v1, "<this>"

    .line 4
    .line 5
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string p0, "url"

    .line 9
    .line 10
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/16 p0, 0x3f

    .line 14
    .line 15
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->U(CLjava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const/16 p1, 0x23

    .line 20
    .line 21
    invoke-static {p1, p0}, Lkotlin/text/StringsKt;->U(CLjava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string p1, ".moc3"

    .line 26
    .line 27
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/4 v1, 0x0

    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    goto/16 :goto_1

    .line 35
    .line 36
    :cond_0
    invoke-static {p0}, Ly1/L1;->h(Ljava/lang/String;)Ljava/io/File;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    if-nez p0, :cond_1

    .line 41
    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    const/4 v2, 0x5

    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-static {p0, v2}, Ly1/L1;->b(Ljava/io/File;I)Ljava/io/File;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    if-nez p0, :cond_3

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_4

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_4
    const/16 p1, 0x8

    .line 67
    .line 68
    :try_start_0
    new-array v3, p1, [B

    .line 69
    .line 70
    new-instance v4, Ljava/io/FileInputStream;

    .line 71
    .line 72
    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    :try_start_1
    invoke-virtual {v4, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 76
    .line 77
    .line 78
    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :try_start_2
    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    if-ge v5, p1, :cond_5

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_5
    const/4 p1, 0x0

    .line 86
    aget-byte p1, v3, p1

    .line 87
    .line 88
    const/16 v4, 0x4d

    .line 89
    .line 90
    if-ne p1, v4, :cond_8

    .line 91
    .line 92
    const/4 p1, 0x1

    .line 93
    aget-byte p1, v3, p1

    .line 94
    .line 95
    const/16 v4, 0x4f

    .line 96
    .line 97
    if-ne p1, v4, :cond_8

    .line 98
    .line 99
    const/4 p1, 0x2

    .line 100
    aget-byte p1, v3, p1

    .line 101
    .line 102
    const/16 v4, 0x43

    .line 103
    .line 104
    if-ne p1, v4, :cond_8

    .line 105
    .line 106
    const/4 p1, 0x3

    .line 107
    aget-byte p1, v3, p1

    .line 108
    .line 109
    const/16 v4, 0x33

    .line 110
    .line 111
    if-eq p1, v4, :cond_6

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_6
    const/4 p1, 0x4

    .line 115
    aget-byte v3, v3, p1

    .line 116
    .line 117
    if-eq v3, v2, :cond_7

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_7
    invoke-static {p0}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    aput-byte p1, v2, p1

    .line 125
    .line 126
    const-string p1, "MinHub-Live2D"

    .line 127
    .line 128
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    new-instance p0, Landroid/webkit/WebResourceResponse;

    .line 148
    .line 149
    const-string p1, "application/octet-stream"

    .line 150
    .line 151
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 152
    .line 153
    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 154
    .line 155
    .line 156
    invoke-direct {p0, p1, v1, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 157
    .line 158
    .line 159
    return-object p0

    .line 160
    :catchall_0
    move-exception p0

    .line 161
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 162
    :catchall_1
    move-exception p1

    .line 163
    :try_start_4
    invoke-static {v4, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 164
    .line 165
    .line 166
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 167
    :catch_0
    :cond_8
    :goto_1
    return-object v1
.end method

.method public static z(Ljava/io/File;Z)Ly1/H1;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "root"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v3, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v4, Ljava/io/File;

    .line 21
    .line 22
    const-string v5, "game"

    .line 23
    .line 24
    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    filled-new-array {v4, v0}, [Ljava/io/File;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v4, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_1

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    move-object v6, v5

    .line 55
    check-cast v6, Ljava/io/File;

    .line 56
    .line 57
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-eqz v6, :cond_0

    .line 62
    .line 63
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    const/4 v6, 0x0

    .line 72
    move v0, v6

    .line 73
    :goto_1
    const-string v7, "RenpyTranslations"

    .line 74
    .line 75
    if-ge v0, v5, :cond_14

    .line 76
    .line 77
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    add-int/lit8 v9, v0, 0x1

    .line 82
    .line 83
    check-cast v8, Ljava/io/File;

    .line 84
    .line 85
    new-instance v10, Ljava/io/File;

    .line 86
    .line 87
    const-string v0, ".minhub_tl_parked"

    .line 88
    .line 89
    invoke-direct {v10, v8, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_c

    .line 97
    .line 98
    new-instance v11, Ljava/io/File;

    .line 99
    .line 100
    const-string v0, "tl"

    .line 101
    .line 102
    invoke-direct {v11, v8, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const/4 v8, 0x0

    .line 106
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 107
    .line 108
    new-instance v0, Ljava/io/File;

    .line 109
    .line 110
    const-string v12, "state.txt"

    .line 111
    .line 112
    invoke-direct {v0, v10, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 116
    .line 117
    .line 118
    move-result v12

    .line 119
    if-eqz v12, :cond_2

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_2
    move-object v0, v8

    .line 123
    :goto_2
    if-eqz v0, :cond_3

    .line 124
    .line 125
    invoke-static {v0}, Lkotlin/io/FilesKt;->f(Ljava/io/File;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    if-eqz v0, :cond_3

    .line 130
    .line 131
    invoke-static {v0}, Ly1/L1;->s(Ljava/lang/String;)Ly1/I1;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    goto :goto_3

    .line 136
    :catchall_0
    move-exception v0

    .line 137
    goto :goto_4

    .line 138
    :cond_3
    move-object v0, v8

    .line 139
    :goto_3
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    goto :goto_5

    .line 144
    :goto_4
    sget-object v12, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 145
    .line 146
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    :goto_5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v12

    .line 158
    if-eqz v12, :cond_4

    .line 159
    .line 160
    goto :goto_6

    .line 161
    :cond_4
    move-object v8, v0

    .line 162
    :goto_6
    check-cast v8, Ly1/I1;

    .line 163
    .line 164
    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    if-nez v0, :cond_5

    .line 169
    .line 170
    new-array v0, v6, [Ljava/io/File;

    .line 171
    .line 172
    :cond_5
    new-instance v12, Ljava/util/ArrayList;

    .line 173
    .line 174
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .line 176
    .line 177
    array-length v13, v0

    .line 178
    move v14, v6

    .line 179
    :goto_7
    if-ge v14, v13, :cond_7

    .line 180
    .line 181
    aget-object v15, v0, v14

    .line 182
    .line 183
    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    .line 184
    .line 185
    .line 186
    move-result v16

    .line 187
    if-eqz v16, :cond_6

    .line 188
    .line 189
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    :cond_6
    add-int/lit8 v14, v14, 0x1

    .line 193
    .line 194
    goto :goto_7

    .line 195
    :cond_7
    new-instance v0, Ly1/M;

    .line 196
    .line 197
    const/4 v13, 0x7

    .line 198
    invoke-direct {v0, v13}, Ly1/M;-><init>(I)V

    .line 199
    .line 200
    .line 201
    invoke-static {v12, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 210
    .line 211
    .line 212
    move-result v12

    .line 213
    const-string v13, "getName(...)"

    .line 214
    .line 215
    if-eqz v12, :cond_b

    .line 216
    .line 217
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v12

    .line 221
    check-cast v12, Ljava/io/File;

    .line 222
    .line 223
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v14

    .line 227
    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-static {v1, v8, v14}, Ly1/L1;->B(ZLy1/I1;Ljava/lang/String;)Z

    .line 231
    .line 232
    .line 233
    move-result v13

    .line 234
    if-nez v13, :cond_8

    .line 235
    .line 236
    new-instance v13, Ljava/io/File;

    .line 237
    .line 238
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v14

    .line 242
    invoke-direct {v13, v11, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    .line 246
    .line 247
    .line 248
    move-result v14

    .line 249
    if-eqz v14, :cond_9

    .line 250
    .line 251
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v12

    .line 255
    new-instance v13, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    const-string v14, "tl/"

    .line 258
    .line 259
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string v12, " exists and a moved copy too; leaving both"

    .line 266
    .line 267
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v12

    .line 274
    invoke-static {v7, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    goto :goto_8

    .line 278
    :cond_9
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 279
    .line 280
    .line 281
    invoke-virtual {v12, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 282
    .line 283
    .line 284
    move-result v13

    .line 285
    if-eqz v13, :cond_a

    .line 286
    .line 287
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v12

    .line 291
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    goto :goto_8

    .line 295
    :cond_a
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v12

    .line 299
    const-string v13, "could not restore tl/"

    .line 300
    .line 301
    invoke-static {v13, v12, v7}, LE/b;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    goto :goto_8

    .line 305
    :cond_b
    if-eqz v1, :cond_c

    .line 306
    .line 307
    if-nez v8, :cond_d

    .line 308
    .line 309
    :cond_c
    move v0, v9

    .line 310
    goto/16 :goto_1

    .line 311
    .line 312
    :cond_d
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    if-nez v0, :cond_e

    .line 317
    .line 318
    new-array v0, v6, [Ljava/io/File;

    .line 319
    .line 320
    :cond_e
    new-instance v11, Ljava/util/ArrayList;

    .line 321
    .line 322
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .line 324
    .line 325
    array-length v12, v0

    .line 326
    move v14, v6

    .line 327
    :goto_9
    if-ge v14, v12, :cond_10

    .line 328
    .line 329
    aget-object v15, v0, v14

    .line 330
    .line 331
    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    .line 332
    .line 333
    .line 334
    move-result v16

    .line 335
    if-eqz v16, :cond_f

    .line 336
    .line 337
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v6

    .line 341
    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    invoke-static {v1, v8, v6}, Ly1/L1;->B(ZLy1/I1;Ljava/lang/String;)Z

    .line 345
    .line 346
    .line 347
    move-result v6

    .line 348
    if-eqz v6, :cond_f

    .line 349
    .line 350
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    :cond_f
    add-int/lit8 v14, v14, 0x1

    .line 354
    .line 355
    const/4 v6, 0x0

    .line 356
    goto :goto_9

    .line 357
    :cond_10
    new-instance v0, Ly1/M;

    .line 358
    .line 359
    const/16 v6, 0x8

    .line 360
    .line 361
    invoke-direct {v0, v6}, Ly1/M;-><init>(I)V

    .line 362
    .line 363
    .line 364
    invoke-static {v11, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    :cond_11
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 373
    .line 374
    .line 375
    move-result v6

    .line 376
    if-eqz v6, :cond_13

    .line 377
    .line 378
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v6

    .line 382
    check-cast v6, Ljava/io/File;

    .line 383
    .line 384
    new-instance v8, Ljava/io/File;

    .line 385
    .line 386
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v11

    .line 390
    invoke-direct {v8, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 394
    .line 395
    .line 396
    move-result v11

    .line 397
    if-nez v11, :cond_11

    .line 398
    .line 399
    invoke-virtual {v6, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 400
    .line 401
    .line 402
    move-result v8

    .line 403
    if-eqz v8, :cond_12

    .line 404
    .line 405
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v6

    .line 409
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    goto :goto_a

    .line 413
    :cond_12
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v6

    .line 417
    new-instance v8, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    const-string v11, "could not move tl/"

    .line 420
    .line 421
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    const-string v6, " aside"

    .line 428
    .line 429
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v6

    .line 436
    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    .line 438
    .line 439
    goto :goto_a

    .line 440
    :cond_13
    move v0, v9

    .line 441
    const/4 v6, 0x0

    .line 442
    goto/16 :goto_1

    .line 443
    .line 444
    :cond_14
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 445
    .line 446
    .line 447
    move-result v0

    .line 448
    if-eqz v0, :cond_15

    .line 449
    .line 450
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 451
    .line 452
    .line 453
    move-result v0

    .line 454
    if-nez v0, :cond_16

    .line 455
    .line 456
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 457
    .line 458
    const-string v1, "not loading translations "

    .line 459
    .line 460
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    const-string v1, "; restored "

    .line 467
    .line 468
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    .line 480
    .line 481
    :cond_16
    new-instance v0, Ly1/H1;

    .line 482
    .line 483
    invoke-direct {v0, v2, v3}, Ly1/H1;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 484
    .line 485
    .line 486
    return-object v0
.end method
