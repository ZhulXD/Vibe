.class public final Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;
.super LS1/c;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;",
        "LS1/c;",
        "<init>",
        "()V",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nKiriKiriInstallActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KiriKiriInstallActivity.kt\ncom/minhub/gamehub/hub/KiriKiriInstallActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,413:1\n1#2:414\n1878#3,3:415\n1056#3:418\n1878#3,3:419\n*S KotlinDebug\n*F\n+ 1 KiriKiriInstallActivity.kt\ncom/minhub/gamehub/hub/KiriKiriInstallActivity\n*L\n104#1:415,3\n179#1:418\n251#1:419,3\n*E\n"
    }
.end annotation


# static fields
.field public static final synthetic o:I


# instance fields
.field public final e:Landroid/os/Handler;

.field public f:Ljava/util/List;

.field public g:Ljava/util/List;

.field public h:Landroid/widget/ProgressBar;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public l:LD1/j;

.field public m:LA1/p;

.field public n:LD1/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, LS1/c;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->e:Landroid/os/Handler;

    .line 14
    .line 15
    return-void
.end method

.method public static n(LD1/j;Ljava/io/File;LD1/d;Z)V
    .locals 1

    .line 1
    const-string v0, "outcome"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p3, LD1/d;->b:LD1/d;

    .line 10
    .line 11
    if-eq p2, p3, :cond_2

    .line 12
    .line 13
    sget-object p3, LD1/d;->d:LD1/d;

    .line 14
    .line 15
    if-ne p2, p3, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    return-void

    .line 19
    :cond_2
    :goto_1
    invoke-static {p1}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 20
    .line 21
    .line 22
    sget-object p1, LD1/f;->a:LD1/f;

    .line 23
    .line 24
    iget-object p0, p0, LD1/j;->a:Ljava/lang/String;

    .line 25
    .line 26
    monitor-enter p1

    .line 27
    :try_start_0
    const-string p2, "sourcePath"

    .line 28
    .line 29
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object p2, LD1/f;->b:Ljava/util/LinkedHashMap;

    .line 33
    .line 34
    invoke-interface {p2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    monitor-exit p1

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    throw p0
.end method


# virtual methods
.method public final m()Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const/high16 v1, 0x4000000

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "addFlags(...)"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public final o(LD1/j;Ljava/util/List;Ljava/io/File;)V
    .locals 46

    .line 1
    move-object/from16 v1, p3

    .line 2
    .line 3
    const-string v0, "archives"

    .line 4
    .line 5
    move-object/from16 v5, p2

    .line 6
    .line 7
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v8, 0x0

    .line 15
    move-object v3, v8

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const-string v12, "getChannel(...)"

    .line 21
    .line 22
    const-string v13, "r"

    .line 23
    .line 24
    if-eqz v0, :cond_6

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/io/File;

    .line 31
    .line 32
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    .line 33
    .line 34
    invoke-direct {v4, v0, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    :try_start_1
    invoke-static {v0}, LT1/a;->c(Ljava/io/File;)LT1/j;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v7, v0, LT1/j;->b:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-static {v6, v7}, LT1/h;->e(Ljava/nio/channels/FileChannel;Ljava/util/ArrayList;)Lkotlin/jvm/functions/Function1;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    if-eqz v6, :cond_3

    .line 55
    .line 56
    iget-object v0, v0, LT1/j;->b:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    const/4 v14, 0x0

    .line 63
    :cond_1
    if-ge v14, v7, :cond_2

    .line 64
    .line 65
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    add-int/lit8 v14, v14, 0x1

    .line 70
    .line 71
    const-wide/16 v16, 0x0

    .line 72
    .line 73
    :try_start_2
    move-object v10, v15

    .line 74
    check-cast v10, LT1/c;

    .line 75
    .line 76
    iget-wide v10, v10, LT1/c;->d:J

    .line 77
    .line 78
    cmp-long v10, v10, v16

    .line 79
    .line 80
    if-eqz v10, :cond_1

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    :goto_1
    move-object v6, v0

    .line 85
    goto :goto_4

    .line 86
    :catchall_1
    move-exception v0

    .line 87
    const-wide/16 v16, 0x0

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    const-wide/16 v16, 0x0

    .line 91
    .line 92
    move-object v15, v8

    .line 93
    :goto_2
    check-cast v15, LT1/c;

    .line 94
    .line 95
    if-eqz v15, :cond_4

    .line 96
    .line 97
    iget-wide v10, v15, LT1/c;->d:J

    .line 98
    .line 99
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-interface {v6, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Ljava/lang/Number;

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    goto :goto_3

    .line 118
    :cond_3
    const-wide/16 v16, 0x0

    .line 119
    .line 120
    :cond_4
    move-object v0, v8

    .line 121
    :goto_3
    :try_start_3
    invoke-static {v4, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 122
    .line 123
    .line 124
    goto :goto_5

    .line 125
    :goto_4
    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 126
    :catchall_2
    move-exception v0

    .line 127
    :try_start_5
    invoke-static {v4, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 128
    .line 129
    .line 130
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 131
    :catch_0
    const-wide/16 v16, 0x0

    .line 132
    .line 133
    :catch_1
    move-object v0, v8

    .line 134
    :goto_5
    if-eqz v0, :cond_0

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-nez v3, :cond_5

    .line 141
    .line 142
    move-object v3, v0

    .line 143
    goto :goto_0

    .line 144
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eq v0, v4, :cond_0

    .line 149
    .line 150
    move-object v0, v8

    .line 151
    goto :goto_6

    .line 152
    :cond_6
    const-wide/16 v16, 0x0

    .line 153
    .line 154
    move-object v0, v3

    .line 155
    :goto_6
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object v10

    .line 159
    const/4 v4, 0x0

    .line 160
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-eqz v2, :cond_25

    .line 165
    .line 166
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    add-int/lit8 v11, v4, 0x1

    .line 171
    .line 172
    if-gez v4, :cond_7

    .line 173
    .line 174
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 175
    .line 176
    .line 177
    :cond_7
    move-object v7, v2

    .line 178
    check-cast v7, Ljava/io/File;

    .line 179
    .line 180
    invoke-static/range {p1 .. p1}, La/a;->a(LD1/j;)V

    .line 181
    .line 182
    .line 183
    sget-object v2, Lz1/e;->a:Lkotlin/text/Regex;

    .line 184
    .line 185
    const-string v2, "gameDir"

    .line 186
    .line 187
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    const-string v14, "archive"

    .line 191
    .line 192
    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    const-string v3, "getName(...)"

    .line 200
    .line 201
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-static {v2}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    sget-object v3, Lz1/e;->a:Lkotlin/text/Regex;

    .line 209
    .line 210
    invoke-virtual {v3, v2}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    if-eqz v3, :cond_8

    .line 215
    .line 216
    new-instance v3, Ljava/io/File;

    .line 217
    .line 218
    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    move-object v15, v3

    .line 222
    goto :goto_8

    .line 223
    :cond_8
    move-object v15, v1

    .line 224
    :goto_8
    new-instance v2, LC1/u1;

    .line 225
    .line 226
    move-object/from16 v6, p0

    .line 227
    .line 228
    move-object/from16 v3, p1

    .line 229
    .line 230
    invoke-direct/range {v2 .. v7}, LC1/u1;-><init>(LD1/j;ILjava/util/List;Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;Ljava/io/File;)V

    .line 231
    .line 232
    .line 233
    new-instance v3, LA1/n;

    .line 234
    .line 235
    const/4 v4, 0x5

    .line 236
    move-object/from16 v5, p1

    .line 237
    .line 238
    invoke-direct {v3, v4, v5}, LA1/n;-><init>(ILjava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    const-string v4, "."

    .line 242
    .line 243
    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    const-string v6, "destDir"

    .line 247
    .line 248
    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    const-string v6, "onProgress"

    .line 252
    .line 253
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    const-string v6, "isCancelled"

    .line 257
    .line 258
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    .line 262
    .line 263
    .line 264
    move-result v6

    .line 265
    new-instance v14, Ljava/util/ArrayList;

    .line 266
    .line 267
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .line 269
    .line 270
    new-instance v8, Ljava/util/LinkedHashSet;

    .line 271
    .line 272
    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    .line 273
    .line 274
    .line 275
    :try_start_6
    invoke-static {v3}, LT1/h;->c(Lkotlin/jvm/functions/Function0;)V

    .line 276
    .line 277
    .line 278
    const/16 v25, 0x0

    .line 279
    .line 280
    invoke-static {v7}, LT1/a;->c(Ljava/io/File;)LT1/j;

    .line 281
    .line 282
    .line 283
    move-result-object v9

    .line 284
    move-object/from16 v26, v0

    .line 285
    .line 286
    iget-object v0, v9, LT1/j;->b:Ljava/util/ArrayList;

    .line 287
    .line 288
    invoke-static {v0}, LT1/h;->j(Ljava/util/ArrayList;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v15}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    move-object/from16 v21, v3

    .line 296
    .line 297
    new-instance v3, Ljava/util/ArrayList;

    .line 298
    .line 299
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 300
    .line 301
    .line 302
    move-result v5

    .line 303
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 307
    .line 308
    .line 309
    move-result v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 310
    move/from16 v27, v6

    .line 311
    .line 312
    move-object/from16 v28, v10

    .line 313
    .line 314
    move/from16 v6, v25

    .line 315
    .line 316
    :goto_9
    if-ge v6, v5, :cond_a

    .line 317
    .line 318
    :try_start_7
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v18

    .line 322
    add-int/lit8 v6, v6, 0x1

    .line 323
    .line 324
    move-object/from16 v10, v18

    .line 325
    .line 326
    check-cast v10, LT1/c;

    .line 327
    .line 328
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    iget-object v10, v10, LT1/c;->a:Ljava/lang/String;

    .line 332
    .line 333
    move/from16 v18, v5

    .line 334
    .line 335
    const-string v5, "path"

    .line 336
    .line 337
    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 341
    .line 342
    invoke-virtual {v10, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 343
    .line 344
    .line 345
    move-result-object v5

    .line 346
    move/from16 v19, v6

    .line 347
    .line 348
    const-string v6, "getBytes(...)"

    .line 349
    .line 350
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    array-length v5, v5

    .line 354
    const/16 v6, 0xdc

    .line 355
    .line 356
    if-gt v5, v6, :cond_9

    .line 357
    .line 358
    goto :goto_a

    .line 359
    :cond_9
    const/4 v5, 0x1

    .line 360
    new-array v5, v5, [C

    .line 361
    .line 362
    const/16 v6, 0x2f

    .line 363
    .line 364
    aput-char v6, v5, v25

    .line 365
    .line 366
    invoke-static {v10, v5}, Lkotlin/text/StringsKt;->I(Ljava/lang/CharSequence;[C)Ljava/util/List;

    .line 367
    .line 368
    .line 369
    move-result-object v29

    .line 370
    const-string v30, "/"

    .line 371
    .line 372
    new-instance v5, LL1/d;

    .line 373
    .line 374
    const/16 v6, 0x9

    .line 375
    .line 376
    invoke-direct {v5, v6}, LL1/d;-><init>(I)V

    .line 377
    .line 378
    .line 379
    const/16 v34, 0x1e

    .line 380
    .line 381
    const/16 v31, 0x0

    .line 382
    .line 383
    const/16 v32, 0x0

    .line 384
    .line 385
    move-object/from16 v33, v5

    .line 386
    .line 387
    invoke-static/range {v29 .. v34}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v10

    .line 391
    :goto_a
    invoke-static {v1, v10}, La/a;->H(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 392
    .line 393
    .line 394
    move-result-object v5

    .line 395
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move/from16 v5, v18

    .line 399
    .line 400
    move/from16 v6, v19

    .line 401
    .line 402
    goto :goto_9

    .line 403
    :catch_2
    move-exception v0

    .line 404
    goto/16 :goto_1e

    .line 405
    .line 406
    :cond_a
    invoke-static/range {v21 .. v21}, LT1/h;->c(Lkotlin/jvm/functions/Function0;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 410
    .line 411
    .line 412
    new-instance v5, Ljava/io/RandomAccessFile;

    .line 413
    .line 414
    invoke-direct {v5, v7, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 415
    .line 416
    .line 417
    :try_start_8
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 418
    .line 419
    .line 420
    move-result-object v6

    .line 421
    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    invoke-static {v6, v0}, LT1/h;->e(Ljava/nio/channels/FileChannel;Ljava/util/ArrayList;)Lkotlin/jvm/functions/Function1;

    .line 425
    .line 426
    .line 427
    move-result-object v6

    .line 428
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 429
    .line 430
    .line 431
    move-result v7

    .line 432
    move/from16 v30, v11

    .line 433
    .line 434
    move-object/from16 v31, v13

    .line 435
    .line 436
    move-wide/from16 v32, v16

    .line 437
    .line 438
    move/from16 v10, v25

    .line 439
    .line 440
    move v11, v10

    .line 441
    move v13, v11

    .line 442
    :goto_b
    if-ge v11, v7, :cond_20

    .line 443
    .line 444
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v18

    .line 448
    add-int/lit8 v11, v11, 0x1

    .line 449
    .line 450
    add-int/lit8 v38, v10, 0x1

    .line 451
    .line 452
    if-gez v10, :cond_b

    .line 453
    .line 454
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 455
    .line 456
    .line 457
    :cond_b
    move-object/from16 v39, v0

    .line 458
    .line 459
    goto :goto_c

    .line 460
    :catchall_3
    move-exception v0

    .line 461
    move-object v1, v0

    .line 462
    goto/16 :goto_1d

    .line 463
    .line 464
    :goto_c
    move-object/from16 v0, v18

    .line 465
    .line 466
    check-cast v0, LT1/c;

    .line 467
    .line 468
    invoke-static/range {v21 .. v21}, LT1/h;->c(Lkotlin/jvm/functions/Function0;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v10

    .line 475
    check-cast v10, Ljava/io/File;

    .line 476
    .line 477
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    .line 478
    .line 479
    .line 480
    move-result v18

    .line 481
    if-eqz v18, :cond_c

    .line 482
    .line 483
    add-int/lit8 v13, v13, 0x1

    .line 484
    .line 485
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 486
    .line 487
    .line 488
    move-result-object v10

    .line 489
    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    .line 490
    .line 491
    .line 492
    move-result v18

    .line 493
    move-object/from16 v40, v3

    .line 494
    .line 495
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 496
    .line 497
    .line 498
    move-result-object v3

    .line 499
    iget-object v0, v0, LT1/c;->a:Ljava/lang/String;

    .line 500
    .line 501
    invoke-virtual {v2, v10, v3, v0}, LC1/u1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-object/from16 v41, v1

    .line 505
    .line 506
    move-object/from16 v44, v4

    .line 507
    .line 508
    move/from16 v42, v7

    .line 509
    .line 510
    move/from16 v45, v11

    .line 511
    .line 512
    move-object/from16 v43, v12

    .line 513
    .line 514
    goto/16 :goto_1b

    .line 515
    .line 516
    :cond_c
    move-object/from16 v40, v3

    .line 517
    .line 518
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 519
    .line 520
    .line 521
    move-result-object v3

    .line 522
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 523
    .line 524
    .line 525
    :goto_d
    if-eqz v3, :cond_d

    .line 526
    .line 527
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    move-result v18

    .line 531
    if-nez v18, :cond_d

    .line 532
    .line 533
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 534
    .line 535
    .line 536
    move-result v18

    .line 537
    if-nez v18, :cond_d

    .line 538
    .line 539
    invoke-interface {v8, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 543
    .line 544
    .line 545
    move-result-object v3

    .line 546
    goto :goto_d

    .line 547
    :cond_d
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 548
    .line 549
    .line 550
    move-result-object v3

    .line 551
    if-eqz v3, :cond_e

    .line 552
    .line 553
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 554
    .line 555
    .line 556
    :cond_e
    new-instance v3, Ljava/io/File;

    .line 557
    .line 558
    move-object/from16 v19, v0

    .line 559
    .line 560
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    move-object/from16 v41, v1

    .line 565
    .line 566
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v1

    .line 570
    move/from16 v42, v7

    .line 571
    .line 572
    new-instance v7, Ljava/lang/StringBuilder;

    .line 573
    .line 574
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    const-string v1, ".xp3-part"

    .line 584
    .line 585
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v1

    .line 592
    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 593
    .line 594
    .line 595
    new-instance v1, Ljava/io/File;

    .line 596
    .line 597
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v7

    .line 605
    move-object/from16 v20, v3

    .line 606
    .line 607
    new-instance v3, Ljava/lang/StringBuilder;

    .line 608
    .line 609
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 610
    .line 611
    .line 612
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    .line 617
    .line 618
    const-string v7, ".xp3-decoded-part"

    .line 619
    .line 620
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v3

    .line 627
    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    new-instance v3, Ljava/io/File;

    .line 631
    .line 632
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 633
    .line 634
    .line 635
    move-result-object v0

    .line 636
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v7

    .line 640
    move-object/from16 v24, v1

    .line 641
    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    .line 643
    .line 644
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 645
    .line 646
    .line 647
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    .line 649
    .line 650
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    .line 652
    .line 653
    const-string v7, ".xp3-publish-part"

    .line 654
    .line 655
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    .line 657
    .line 658
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v1

    .line 662
    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 663
    .line 664
    .line 665
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->delete()Z

    .line 666
    .line 667
    .line 668
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    .line 669
    .line 670
    .line 671
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 672
    .line 673
    .line 674
    :try_start_9
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    const-wide v22, 0x200000000L

    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    sub-long v22, v22, v32

    .line 687
    .line 688
    move-object/from16 v18, v0

    .line 689
    .line 690
    invoke-static/range {v18 .. v23}, LT1/h;->b(Ljava/nio/channels/FileChannel;LT1/c;Ljava/io/File;Lkotlin/jvm/functions/Function0;J)V

    .line 691
    .line 692
    .line 693
    move-object/from16 v0, v19

    .line 694
    .line 695
    move v7, v11

    .line 696
    move-object v1, v12

    .line 697
    iget-wide v11, v0, LT1/c;->d:J

    .line 698
    .line 699
    move-object/from16 v43, v1

    .line 700
    .line 701
    invoke-static/range {v20 .. v20}, LT1/h;->g(Ljava/io/File;)[B

    .line 702
    .line 703
    .line 704
    move-result-object v1

    .line 705
    invoke-static {v1}, LT1/l;->b([B)Ljava/lang/Integer;

    .line 706
    .line 707
    .line 708
    move-result-object v18

    .line 709
    if-eqz v18, :cond_11

    .line 710
    .line 711
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->intValue()I

    .line 712
    .line 713
    .line 714
    move-result v11

    .line 715
    if-eqz v11, :cond_f

    .line 716
    .line 717
    goto :goto_e

    .line 718
    :cond_f
    const/16 v18, 0x0

    .line 719
    .line 720
    :goto_e
    if-eqz v18, :cond_10

    .line 721
    .line 722
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->intValue()I

    .line 723
    .line 724
    .line 725
    move-result v11

    .line 726
    int-to-byte v11, v11

    .line 727
    move-object/from16 v44, v4

    .line 728
    .line 729
    const/4 v12, 0x1

    .line 730
    new-array v4, v12, [B

    .line 731
    .line 732
    aput-byte v11, v4, v25

    .line 733
    .line 734
    goto :goto_10

    .line 735
    :goto_f
    move-object/from16 v1, v24

    .line 736
    .line 737
    goto/16 :goto_1c

    .line 738
    .line 739
    :catch_3
    move-exception v0

    .line 740
    goto :goto_f

    .line 741
    :cond_10
    move-object/from16 v44, v4

    .line 742
    .line 743
    const/4 v4, 0x0

    .line 744
    :goto_10
    new-instance v11, LT1/e;

    .line 745
    .line 746
    move/from16 v45, v7

    .line 747
    .line 748
    move/from16 v7, v25

    .line 749
    .line 750
    const/4 v12, 0x1

    .line 751
    invoke-direct {v11, v4, v7, v12}, LT1/e;-><init>([BZZ)V

    .line 752
    .line 753
    .line 754
    :goto_11
    const/4 v7, 0x0

    .line 755
    const/4 v12, 0x1

    .line 756
    goto/16 :goto_18

    .line 757
    .line 758
    :cond_11
    move-object/from16 v44, v4

    .line 759
    .line 760
    move/from16 v45, v7

    .line 761
    .line 762
    iget-object v4, v9, LT1/j;->c:Ljava/lang/Integer;

    .line 763
    .line 764
    if-eqz v4, :cond_12

    .line 765
    .line 766
    new-instance v11, LT1/e;

    .line 767
    .line 768
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 769
    .line 770
    .line 771
    move-result v4

    .line 772
    int-to-byte v4, v4

    .line 773
    const/4 v12, 0x1

    .line 774
    new-array v7, v12, [B

    .line 775
    .line 776
    const/4 v12, 0x0

    .line 777
    aput-byte v4, v7, v12

    .line 778
    .line 779
    invoke-direct {v11, v7, v12, v12}, LT1/e;-><init>([BZZ)V

    .line 780
    .line 781
    .line 782
    goto :goto_11

    .line 783
    :cond_12
    if-eqz v6, :cond_15

    .line 784
    .line 785
    cmp-long v4, v11, v16

    .line 786
    .line 787
    if-eqz v4, :cond_15

    .line 788
    .line 789
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 790
    .line 791
    .line 792
    move-result-object v4

    .line 793
    invoke-interface {v6, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    .line 795
    .line 796
    move-result-object v4

    .line 797
    move-object v7, v4

    .line 798
    check-cast v7, Ljava/lang/Number;

    .line 799
    .line 800
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 801
    .line 802
    .line 803
    move-result v7

    .line 804
    if-eqz v7, :cond_13

    .line 805
    .line 806
    goto :goto_12

    .line 807
    :cond_13
    const/4 v4, 0x0

    .line 808
    :goto_12
    check-cast v4, Ljava/lang/Integer;

    .line 809
    .line 810
    if-eqz v4, :cond_14

    .line 811
    .line 812
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 813
    .line 814
    .line 815
    move-result v4

    .line 816
    int-to-byte v4, v4

    .line 817
    const/4 v12, 0x1

    .line 818
    new-array v7, v12, [B

    .line 819
    .line 820
    const/16 v25, 0x0

    .line 821
    .line 822
    aput-byte v4, v7, v25

    .line 823
    .line 824
    goto :goto_13

    .line 825
    :cond_14
    const/4 v7, 0x0

    .line 826
    :goto_13
    new-instance v11, LT1/e;

    .line 827
    .line 828
    const/4 v12, 0x0

    .line 829
    invoke-direct {v11, v7, v12, v12}, LT1/e;-><init>([BZZ)V

    .line 830
    .line 831
    .line 832
    goto :goto_11

    .line 833
    :cond_15
    if-eqz v26, :cond_18

    .line 834
    .line 835
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Number;->intValue()I

    .line 836
    .line 837
    .line 838
    move-result v4

    .line 839
    if-eqz v4, :cond_16

    .line 840
    .line 841
    move-object/from16 v4, v26

    .line 842
    .line 843
    goto :goto_14

    .line 844
    :cond_16
    const/4 v4, 0x0

    .line 845
    :goto_14
    if-eqz v4, :cond_17

    .line 846
    .line 847
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 848
    .line 849
    .line 850
    move-result v4

    .line 851
    int-to-byte v4, v4

    .line 852
    const/4 v12, 0x1

    .line 853
    new-array v7, v12, [B

    .line 854
    .line 855
    const/16 v25, 0x0

    .line 856
    .line 857
    aput-byte v4, v7, v25

    .line 858
    .line 859
    goto :goto_15

    .line 860
    :cond_17
    const/4 v7, 0x0

    .line 861
    :goto_15
    new-instance v11, LT1/e;

    .line 862
    .line 863
    const/4 v12, 0x0

    .line 864
    invoke-direct {v11, v7, v12, v12}, LT1/e;-><init>([BZZ)V

    .line 865
    .line 866
    .line 867
    goto :goto_11

    .line 868
    :cond_18
    cmp-long v4, v11, v16

    .line 869
    .line 870
    if-eqz v4, :cond_1b

    .line 871
    .line 872
    invoke-static {v1, v11, v12}, LT1/l;->a([BJ)I

    .line 873
    .line 874
    .line 875
    move-result v4

    .line 876
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 877
    .line 878
    .line 879
    move-result-object v7

    .line 880
    if-eqz v4, :cond_19

    .line 881
    .line 882
    goto :goto_16

    .line 883
    :cond_19
    const/4 v7, 0x0

    .line 884
    :goto_16
    if-eqz v7, :cond_1a

    .line 885
    .line 886
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 887
    .line 888
    .line 889
    move-result v4

    .line 890
    int-to-byte v4, v4

    .line 891
    const/4 v12, 0x1

    .line 892
    new-array v7, v12, [B

    .line 893
    .line 894
    const/16 v25, 0x0

    .line 895
    .line 896
    aput-byte v4, v7, v25

    .line 897
    .line 898
    goto :goto_17

    .line 899
    :cond_1a
    const/4 v7, 0x0

    .line 900
    :goto_17
    new-instance v11, LT1/e;

    .line 901
    .line 902
    const/4 v12, 0x1

    .line 903
    invoke-direct {v11, v7, v12, v12}, LT1/e;-><init>([BZZ)V

    .line 904
    .line 905
    .line 906
    const/4 v7, 0x0

    .line 907
    goto :goto_18

    .line 908
    :cond_1b
    const/4 v12, 0x1

    .line 909
    new-instance v11, LT1/e;

    .line 910
    .line 911
    const/4 v4, 0x0

    .line 912
    const/4 v7, 0x0

    .line 913
    invoke-direct {v11, v4, v7, v7}, LT1/e;-><init>([BZZ)V

    .line 914
    .line 915
    .line 916
    :goto_18
    array-length v4, v1

    .line 917
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 918
    .line 919
    .line 920
    move-result-object v1

    .line 921
    const-string v4, "copyOf(...)"

    .line 922
    .line 923
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 924
    .line 925
    .line 926
    iget-object v4, v11, LT1/e;->a:[B

    .line 927
    .line 928
    array-length v7, v1

    .line 929
    move/from16 v29, v13

    .line 930
    .line 931
    move-wide/from16 v12, v16

    .line 932
    .line 933
    invoke-static {v1, v4, v12, v13, v7}, LT1/h;->l([B[BJI)V

    .line 934
    .line 935
    .line 936
    iget-object v4, v11, LT1/e;->a:[B
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 937
    .line 938
    move-object/from16 v18, v20

    .line 939
    .line 940
    move-object/from16 v19, v24

    .line 941
    .line 942
    move-object/from16 v20, v4

    .line 943
    .line 944
    move-wide/from16 v23, v22

    .line 945
    .line 946
    move-object/from16 v22, v21

    .line 947
    .line 948
    move-object/from16 v21, v1

    .line 949
    .line 950
    :try_start_a
    invoke-static/range {v18 .. v24}, LT1/h;->k(Ljava/io/File;Ljava/io/File;[B[BLkotlin/jvm/functions/Function0;J)J

    .line 951
    .line 952
    .line 953
    move-result-wide v34
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 954
    move-object/from16 v20, v18

    .line 955
    .line 956
    move-object/from16 v1, v19

    .line 957
    .line 958
    move-object/from16 v21, v22

    .line 959
    .line 960
    const-wide v16, 0x80000000L

    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    cmp-long v4, v34, v16

    .line 966
    .line 967
    if-gtz v4, :cond_1f

    .line 968
    .line 969
    const-wide v36, 0x200000000L

    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    :try_start_b
    invoke-static/range {v32 .. v37}, LT1/h;->a(JJJ)J

    .line 975
    .line 976
    .line 977
    move-result-wide v32

    .line 978
    invoke-virtual {v1, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 979
    .line 980
    .line 981
    move-result v4

    .line 982
    if-nez v4, :cond_1d

    .line 983
    .line 984
    new-instance v4, Ljava/io/FileInputStream;

    .line 985
    .line 986
    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 987
    .line 988
    .line 989
    :try_start_c
    new-instance v7, Ljava/io/FileOutputStream;

    .line 990
    .line 991
    invoke-direct {v7, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 992
    .line 993
    .line 994
    const/high16 v12, 0x40000

    .line 995
    .line 996
    :try_start_d
    invoke-static {v4, v7, v12}, Lkotlin/io/ByteStreamsKt;->copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    .line 997
    .line 998
    .line 999
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v12

    .line 1003
    invoke-virtual {v12}, Ljava/io/FileDescriptor;->sync()V

    .line 1004
    .line 1005
    .line 1006
    sget-object v12, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 1007
    .line 1008
    const/4 v12, 0x0

    .line 1009
    :try_start_e
    invoke-static {v7, v12}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 1010
    .line 1011
    .line 1012
    :try_start_f
    invoke-static {v4, v12}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1013
    .line 1014
    .line 1015
    invoke-virtual {v3, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1016
    .line 1017
    .line 1018
    move-result v4

    .line 1019
    if-eqz v4, :cond_1c

    .line 1020
    .line 1021
    goto :goto_1a

    .line 1022
    :cond_1c
    new-instance v0, Ljava/io/IOException;

    .line 1023
    .line 1024
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v2

    .line 1028
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1029
    .line 1030
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1031
    .line 1032
    .line 1033
    const-string v6, "Cannot finalize "

    .line 1034
    .line 1035
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    .line 1037
    .line 1038
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    .line 1040
    .line 1041
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v2

    .line 1045
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1046
    .line 1047
    .line 1048
    throw v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 1049
    :catch_4
    move-exception v0

    .line 1050
    goto :goto_1c

    .line 1051
    :catchall_4
    move-exception v0

    .line 1052
    move-object v2, v0

    .line 1053
    goto :goto_19

    .line 1054
    :catchall_5
    move-exception v0

    .line 1055
    move-object v2, v0

    .line 1056
    :try_start_10
    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 1057
    :catchall_6
    move-exception v0

    .line 1058
    :try_start_11
    invoke-static {v7, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1059
    .line 1060
    .line 1061
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 1062
    :goto_19
    :try_start_12
    throw v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 1063
    :catchall_7
    move-exception v0

    .line 1064
    :try_start_13
    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1065
    .line 1066
    .line 1067
    throw v0

    .line 1068
    :cond_1d
    :goto_1a
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->delete()Z

    .line 1072
    .line 1073
    .line 1074
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1078
    .line 1079
    .line 1080
    add-int/lit8 v13, v29, 0x1

    .line 1081
    .line 1082
    iget-boolean v4, v11, LT1/e;->b:Z

    .line 1083
    .line 1084
    if-nez v4, :cond_1e

    .line 1085
    .line 1086
    iget-boolean v1, v11, LT1/e;->c:Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 1087
    .line 1088
    :cond_1e
    :try_start_14
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v1

    .line 1092
    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    .line 1093
    .line 1094
    .line 1095
    move-result v3

    .line 1096
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v3

    .line 1100
    iget-object v0, v0, LT1/c;->a:Ljava/lang/String;

    .line 1101
    .line 1102
    invoke-virtual {v2, v1, v3, v0}, LC1/u1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 1103
    .line 1104
    .line 1105
    :goto_1b
    move/from16 v10, v38

    .line 1106
    .line 1107
    move-object/from16 v0, v39

    .line 1108
    .line 1109
    move-object/from16 v3, v40

    .line 1110
    .line 1111
    move-object/from16 v1, v41

    .line 1112
    .line 1113
    move/from16 v7, v42

    .line 1114
    .line 1115
    move-object/from16 v12, v43

    .line 1116
    .line 1117
    move-object/from16 v4, v44

    .line 1118
    .line 1119
    move/from16 v11, v45

    .line 1120
    .line 1121
    const-wide/16 v16, 0x0

    .line 1122
    .line 1123
    const/16 v25, 0x0

    .line 1124
    .line 1125
    goto/16 :goto_b

    .line 1126
    .line 1127
    :cond_1f
    :try_start_15
    new-instance v0, LT1/m;

    .line 1128
    .line 1129
    const-string v2, "Decoded entry exceeds size limit"

    .line 1130
    .line 1131
    const-string v4, "message"

    .line 1132
    .line 1133
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1134
    .line 1135
    .line 1136
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1137
    .line 1138
    .line 1139
    throw v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 1140
    :catch_5
    move-exception v0

    .line 1141
    move-object/from16 v20, v18

    .line 1142
    .line 1143
    move-object/from16 v1, v19

    .line 1144
    .line 1145
    :goto_1c
    :try_start_16
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->delete()Z

    .line 1146
    .line 1147
    .line 1148
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1149
    .line 1150
    .line 1151
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1152
    .line 1153
    .line 1154
    throw v0

    .line 1155
    :cond_20
    move-object/from16 v39, v0

    .line 1156
    .line 1157
    move-object/from16 v43, v12

    .line 1158
    .line 1159
    move/from16 v29, v13

    .line 1160
    .line 1161
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 1162
    .line 1163
    const/4 v12, 0x0

    .line 1164
    :try_start_17
    invoke-static {v5, v12}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1165
    .line 1166
    .line 1167
    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    .line 1168
    .line 1169
    .line 1170
    move-result v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_2

    .line 1171
    move/from16 v13, v29

    .line 1172
    .line 1173
    if-ne v13, v0, :cond_21

    .line 1174
    .line 1175
    move-object/from16 v5, p2

    .line 1176
    .line 1177
    move-object/from16 v1, p3

    .line 1178
    .line 1179
    move-object v8, v12

    .line 1180
    move-object/from16 v0, v26

    .line 1181
    .line 1182
    move-object/from16 v10, v28

    .line 1183
    .line 1184
    move/from16 v4, v30

    .line 1185
    .line 1186
    move-object/from16 v13, v31

    .line 1187
    .line 1188
    move-object/from16 v12, v43

    .line 1189
    .line 1190
    const-wide/16 v16, 0x0

    .line 1191
    .line 1192
    goto/16 :goto_7

    .line 1193
    .line 1194
    :cond_21
    new-instance v1, Ljava/io/IOException;

    .line 1195
    .line 1196
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1197
    .line 1198
    const-string v3, "Incomplete XP3 extraction: "

    .line 1199
    .line 1200
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1201
    .line 1202
    .line 1203
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1204
    .line 1205
    .line 1206
    const-string v3, "/"

    .line 1207
    .line 1208
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1209
    .line 1210
    .line 1211
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1212
    .line 1213
    .line 1214
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v0

    .line 1218
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1219
    .line 1220
    .line 1221
    throw v1

    .line 1222
    :goto_1d
    :try_start_18
    throw v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    .line 1223
    :catchall_8
    move-exception v0

    .line 1224
    :try_start_19
    invoke-static {v5, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1225
    .line 1226
    .line 1227
    throw v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_2

    .line 1228
    :catch_6
    move-exception v0

    .line 1229
    move/from16 v27, v6

    .line 1230
    .line 1231
    :goto_1e
    if-eqz v27, :cond_24

    .line 1232
    .line 1233
    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->f(Ljava/util/ArrayList;)Ljava/util/List;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v1

    .line 1237
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v1

    .line 1241
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1242
    .line 1243
    .line 1244
    move-result v2

    .line 1245
    if-eqz v2, :cond_22

    .line 1246
    .line 1247
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1248
    .line 1249
    .line 1250
    move-result-object v2

    .line 1251
    check-cast v2, Ljava/io/File;

    .line 1252
    .line 1253
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1254
    .line 1255
    .line 1256
    goto :goto_1f

    .line 1257
    :cond_22
    new-instance v1, LC1/T;

    .line 1258
    .line 1259
    const/16 v2, 0x8

    .line 1260
    .line 1261
    invoke-direct {v1, v2}, LC1/T;-><init>(I)V

    .line 1262
    .line 1263
    .line 1264
    invoke-static {v8, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 1265
    .line 1266
    .line 1267
    move-result-object v1

    .line 1268
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v1

    .line 1272
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1273
    .line 1274
    .line 1275
    move-result v2

    .line 1276
    if-eqz v2, :cond_23

    .line 1277
    .line 1278
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v2

    .line 1282
    check-cast v2, Ljava/io/File;

    .line 1283
    .line 1284
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1285
    .line 1286
    .line 1287
    goto :goto_20

    .line 1288
    :cond_23
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1289
    .line 1290
    goto :goto_21

    .line 1291
    :cond_24
    invoke-static {v15}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 1292
    .line 1293
    .line 1294
    :goto_21
    throw v0

    .line 1295
    :cond_25
    return-void
.end method

.method public final onBackPressed()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->l:LD1/j;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, LD1/j;->e()LD1/h;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v1

    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v1, v0, LD1/h;->a:LD1/g;

    .line 15
    .line 16
    :cond_1
    const/4 v2, -0x1

    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    move v1, v2

    .line 20
    goto :goto_1

    .line 21
    :cond_2
    sget-object v3, LC1/v1;->a:[I

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    aget v1, v3, v1

    .line 28
    .line 29
    :goto_1
    const/4 v3, 0x2

    .line 30
    if-eq v1, v3, :cond_4

    .line 31
    .line 32
    const/4 v0, 0x3

    .line 33
    if-eq v1, v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->m()Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_3
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->m()Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p0, v0}, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->p(Landroid/content/Intent;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_4
    iget-object v0, v0, LD1/h;->e:Ljava/lang/Integer;

    .line 55
    .line 56
    if-eqz v0, :cond_5

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    :cond_5
    new-instance v0, Landroid/content/Intent;

    .line 63
    .line 64
    const-class v1, Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 65
    .line 66
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .line 68
    .line 69
    const-string v1, "game_id"

    .line 70
    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const-string v1, "putExtra(...)"

    .line 76
    .line 77
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v0}, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->p(Landroid/content/Intent;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0c0025

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Le/j;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x3

    .line 11
    new-array p1, p1, [Landroid/widget/ImageView;

    .line 12
    .line 13
    const v0, 0x7f0901a3

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    aput-object v0, p1, v1

    .line 22
    .line 23
    const v0, 0x7f0901a6

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v2, 0x1

    .line 31
    aput-object v0, p1, v2

    .line 32
    .line 33
    const v0, 0x7f0901a9

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v3, 0x2

    .line 41
    aput-object v0, p1, v3

    .line 42
    .line 43
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->f:Ljava/util/List;

    .line 48
    .line 49
    const p1, 0x7f0901a4

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Le/j;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const v0, 0x7f0901a7

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const v3, 0x7f0901aa

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v3}, Le/j;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    filled-new-array {p1, v0, v3}, [Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iput-object p1, p0, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->g:Ljava/util/List;

    .line 79
    .line 80
    const p1, 0x7f0901a1

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p1}, Le/j;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const-string v0, "findViewById(...)"

    .line 88
    .line 89
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    check-cast p1, Landroid/widget/ProgressBar;

    .line 93
    .line 94
    iput-object p1, p0, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->h:Landroid/widget/ProgressBar;

    .line 95
    .line 96
    const p1, 0x7f0901a0

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p1}, Le/j;->findViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    const-string v0, "findViewById(...)"

    .line 104
    .line 105
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    check-cast p1, Landroid/widget/TextView;

    .line 109
    .line 110
    iput-object p1, p0, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->i:Landroid/widget/TextView;

    .line 111
    .line 112
    const p1, 0x7f0901a2

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, p1}, Le/j;->findViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    const-string v0, "findViewById(...)"

    .line 120
    .line 121
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    check-cast p1, Landroid/widget/TextView;

    .line 125
    .line 126
    iput-object p1, p0, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->j:Landroid/widget/TextView;

    .line 127
    .line 128
    const p1, 0x7f09019e

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, p1}, Le/j;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    const-string v0, "findViewById(...)"

    .line 136
    .line 137
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    check-cast p1, Landroid/widget/TextView;

    .line 141
    .line 142
    iput-object p1, p0, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->k:Landroid/widget/TextView;

    .line 143
    .line 144
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    const-string v0, "kirikiri_game_name"

    .line 149
    .line 150
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    if-nez p1, :cond_0

    .line 155
    .line 156
    const-string p1, ""

    .line 157
    .line 158
    :cond_0
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_1

    .line 163
    .line 164
    const p1, 0x7f1201bf

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    const-string v0, "getString(...)"

    .line 172
    .line 173
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    :cond_1
    move-object v7, p1

    .line 177
    const p1, 0x7f09019f

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, p1}, Le/j;->findViewById(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    check-cast p1, Landroid/widget/TextView;

    .line 185
    .line 186
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    const-string v0, "kirikiri_source_dir"

    .line 194
    .line 195
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    const/4 v0, 0x0

    .line 200
    if-eqz p1, :cond_2

    .line 201
    .line 202
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    if-eqz v3, :cond_3

    .line 207
    .line 208
    :cond_2
    move-object v5, p0

    .line 209
    goto/16 :goto_3

    .line 210
    .line 211
    :cond_3
    new-instance v3, Ljava/io/File;

    .line 212
    .line 213
    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 217
    .line 218
    .line 219
    move-result-object v8

    .line 220
    sget-object p1, LD1/f;->a:LD1/f;

    .line 221
    .line 222
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    const-string v4, "getPath(...)"

    .line 227
    .line 228
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    monitor-enter p1

    .line 232
    :try_start_0
    const-string v4, "sourcePath"

    .line 233
    .line 234
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    sget-object v4, LD1/f;->b:Ljava/util/LinkedHashMap;

    .line 238
    .line 239
    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    check-cast v5, LD1/j;

    .line 244
    .line 245
    if-eqz v5, :cond_4

    .line 246
    .line 247
    new-instance v2, LD1/e;

    .line 248
    .line 249
    invoke-direct {v2, v5, v1}, LD1/e;-><init>(LD1/j;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    .line 251
    .line 252
    monitor-exit p1

    .line 253
    goto :goto_0

    .line 254
    :catchall_0
    move-exception v0

    .line 255
    move-object v5, p0

    .line 256
    goto :goto_2

    .line 257
    :cond_4
    :try_start_1
    new-instance v1, LD1/j;

    .line 258
    .line 259
    invoke-direct {v1, v3}, LD1/j;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    new-instance v3, LD1/e;

    .line 266
    .line 267
    invoke-direct {v3, v1, v2}, LD1/e;-><init>(LD1/j;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    .line 269
    .line 270
    monitor-exit p1

    .line 271
    move-object v2, v3

    .line 272
    :goto_0
    iget-object v6, v2, LD1/e;->a:LD1/j;

    .line 273
    .line 274
    iput-object v6, p0, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->l:LD1/j;

    .line 275
    .line 276
    iget-object p1, p0, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->k:Landroid/widget/TextView;

    .line 277
    .line 278
    if-nez p1, :cond_5

    .line 279
    .line 280
    const-string p1, "action"

    .line 281
    .line 282
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    goto :goto_1

    .line 286
    :cond_5
    move-object v0, p1

    .line 287
    :goto_1
    new-instance p1, LC1/j;

    .line 288
    .line 289
    const/4 v1, 0x5

    .line 290
    invoke-direct {p1, v1, v6, p0}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    const/16 v0, 0x80

    .line 301
    .line 302
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 303
    .line 304
    .line 305
    new-instance p1, LA1/p;

    .line 306
    .line 307
    const/4 v0, 0x6

    .line 308
    invoke-direct {p1, v0, p0}, LA1/p;-><init>(ILjava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    iput-object p1, p0, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->m:LA1/p;

    .line 312
    .line 313
    const-string v0, "observer"

    .line 314
    .line 315
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    iget-object v0, v6, LD1/j;->j:Ljava/util/List;

    .line 319
    .line 320
    const-string v1, "observers"

    .line 321
    .line 322
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    invoke-virtual {v6}, LD1/j;->e()LD1/h;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-virtual {p1, v0}, LA1/p;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    iget-boolean p1, v2, LD1/e;->b:Z

    .line 336
    .line 337
    if-eqz p1, :cond_6

    .line 338
    .line 339
    new-instance p1, Ljava/lang/Thread;

    .line 340
    .line 341
    new-instance v3, LC1/n;

    .line 342
    .line 343
    const/4 v4, 0x1

    .line 344
    move-object v5, p0

    .line 345
    invoke-direct/range {v3 .. v8}, LC1/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    invoke-direct {p1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 352
    .line 353
    .line 354
    return-void

    .line 355
    :cond_6
    move-object v5, p0

    .line 356
    return-void

    .line 357
    :goto_2
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 358
    throw v0

    .line 359
    :catchall_1
    move-exception v0

    .line 360
    goto :goto_2

    .line 361
    :goto_3
    const p1, 0x7f1201c1

    .line 362
    .line 363
    .line 364
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object p1

    .line 368
    const-string v1, "getString(...)"

    .line 369
    .line 370
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    iget-object v1, v5, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->j:Landroid/widget/TextView;

    .line 374
    .line 375
    if-nez v1, :cond_7

    .line 376
    .line 377
    const-string v1, "status"

    .line 378
    .line 379
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    move-object v1, v0

    .line 383
    :cond_7
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    .line 385
    .line 386
    iget-object p1, v5, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->f:Ljava/util/List;

    .line 387
    .line 388
    if-nez p1, :cond_8

    .line 389
    .line 390
    const-string p1, "icons"

    .line 391
    .line 392
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    move-object p1, v0

    .line 396
    :cond_8
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    check-cast p1, Landroid/widget/ImageView;

    .line 401
    .line 402
    if-eqz p1, :cond_9

    .line 403
    .line 404
    const v1, 0x7f0800dd

    .line 405
    .line 406
    .line 407
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 408
    .line 409
    .line 410
    :cond_9
    iget-object p1, v5, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->g:Ljava/util/List;

    .line 411
    .line 412
    if-nez p1, :cond_a

    .line 413
    .line 414
    const-string p1, "stepRows"

    .line 415
    .line 416
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    goto :goto_4

    .line 420
    :cond_a
    move-object v0, p1

    .line 421
    :goto_4
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    check-cast p1, Landroid/view/View;

    .line 426
    .line 427
    if-eqz p1, :cond_b

    .line 428
    .line 429
    const v0, 0x7f08009e

    .line 430
    .line 431
    .line 432
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 433
    .line 434
    .line 435
    :cond_b
    new-instance p1, LC1/s1;

    .line 436
    .line 437
    const/4 v0, 0x0

    .line 438
    invoke-direct {p1, p0, v0}, LC1/s1;-><init>(Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;I)V

    .line 439
    .line 440
    .line 441
    const v0, 0x7f1201be

    .line 442
    .line 443
    .line 444
    invoke-virtual {p0, v0, p1}, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->q(ILkotlin/jvm/functions/Function0;)V

    .line 445
    .line 446
    .line 447
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->m:LA1/p;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->l:LD1/j;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v2, "observer"

    .line 10
    .line 11
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, v1, LD1/j;->j:Ljava/util/List;

    .line 15
    .line 16
    const-string v2, "observers"

    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->m:LA1/p;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/16 v1, 0x80

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 34
    .line 35
    .line 36
    invoke-super {p0}, Le/j;->onDestroy()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final p(Landroid/content/Intent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->l:LD1/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, LD1/f;->a:LD1/f;

    .line 6
    .line 7
    iget-object v0, v0, LD1/j;->a:Ljava/lang/String;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    const-string v2, "sourcePath"

    .line 11
    .line 12
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v2, LD1/f;->b:Ljava/util/LinkedHashMap;

    .line 16
    .line 17
    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    monitor-exit v1

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p1

    .line 25
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->l:LD1/j;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, v0, LD1/j;->b:LD1/b;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, v0, LD1/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move v0, v1

    .line 43
    :goto_1
    if-eqz v0, :cond_2

    .line 44
    .line 45
    sget-object v0, LD1/c;->b:LD1/c;

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    sget-object v0, LD1/c;->c:LD1/c;

    .line 49
    .line 50
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    if-ne v0, v1, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 63
    .line 64
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 65
    .line 66
    .line 67
    throw p1

    .line 68
    :cond_4
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final q(ILkotlin/jvm/functions/Function0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->k:Landroid/widget/TextView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "action"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    const/4 v3, 0x1

    .line 13
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->k:Landroid/widget/TextView;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    move-object v0, v1

    .line 24
    :cond_1
    const/4 v3, 0x0

    .line 25
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->k:Landroid/widget/TextView;

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    move-object v0, v1

    .line 36
    :cond_2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->k:Landroid/widget/TextView;

    .line 40
    .line 41
    if-nez p1, :cond_3

    .line 42
    .line 43
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    move-object v1, p1

    .line 48
    :goto_0
    new-instance p1, LC1/t1;

    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    invoke-direct {p1, v0, p2}, LC1/t1;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const/16 p2, 0x80

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/view/Window;->clearFlags(I)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final r(Lcom/minhub/gamehub/data/Game;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/minhub/gamehub/data/Game;
    .locals 43

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    const-string v2, "KiriKiriMetadata"

    .line 6
    .line 7
    const-string v3, "Cover art: "

    .line 8
    .line 9
    const-string v4, "Using the game\'s declared title: "

    .line 10
    .line 11
    const-string v5, "Title decision: current=\'"

    .line 12
    .line 13
    :try_start_0
    new-instance v6, Ljava/io/File;

    .line 14
    .line 15
    const-string v7, "system/Status.tjs"

    .line 16
    .line 17
    move-object/from16 v8, p2

    .line 18
    .line 19
    invoke-direct {v6, v8, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    .line 23
    .line 24
    .line 25
    move-result v7

    .line 26
    if-eqz v7, :cond_0

    .line 27
    .line 28
    sget-object v7, Lz1/d;->a:Lkotlin/text/Regex;

    .line 29
    .line 30
    invoke-static {v6}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    invoke-static {v6}, Lz1/d;->c([B)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    move-object/from16 v9, p0

    .line 41
    .line 42
    goto/16 :goto_5

    .line 43
    .line 44
    :cond_0
    const/4 v6, 0x0

    .line 45
    :goto_0
    sget-object v7, Lz1/d;->a:Lkotlin/text/Regex;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    const v7, 0x7f1201bf

    .line 48
    .line 49
    .line 50
    move-object/from16 v9, p0

    .line 51
    .line 52
    :try_start_1
    invoke-virtual {v9, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    const-string v10, "getString(...)"

    .line 57
    .line 58
    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v7, v1, v6}, Lz1/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v13

    .line 65
    if-nez v6, :cond_1

    .line 66
    .line 67
    const-string v6, "<none>"

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catch_1
    move-exception v0

    .line 71
    goto/16 :goto_5

    .line 72
    .line 73
    :cond_1
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v0, "\', folder=\'"

    .line 82
    .line 83
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v0, "\', declared=\'"

    .line 90
    .line 91
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v0, "\'"

    .line 98
    .line 99
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    invoke-static {v8}, Lz1/d;->a(Ljava/io/File;)Ljava/io/File;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual/range {p1 .. p1}, Lcom/minhub/gamehub/data/Game;->getTitle()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-nez v1, :cond_2

    .line 122
    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    :cond_2
    if-eqz v0, :cond_3

    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    :cond_3
    if-eqz v0, :cond_5

    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    if-nez v0, :cond_4

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_4
    :goto_2
    move-object/from16 v18, v0

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_5
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/minhub/gamehub/data/Game;->getIconPath()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    goto :goto_2

    .line 176
    :goto_4
    const v41, 0x7ffffbd

    .line 177
    .line 178
    .line 179
    const/16 v42, 0x0

    .line 180
    .line 181
    const/4 v12, 0x0

    .line 182
    const/4 v14, 0x0

    .line 183
    const/4 v15, 0x0

    .line 184
    const/16 v16, 0x0

    .line 185
    .line 186
    const/16 v17, 0x0

    .line 187
    .line 188
    const/16 v19, 0x0

    .line 189
    .line 190
    const/16 v20, 0x0

    .line 191
    .line 192
    const/16 v21, 0x0

    .line 193
    .line 194
    const/16 v22, 0x0

    .line 195
    .line 196
    const/16 v23, 0x0

    .line 197
    .line 198
    const/16 v24, 0x0

    .line 199
    .line 200
    const-wide/16 v25, 0x0

    .line 201
    .line 202
    const/16 v27, 0x0

    .line 203
    .line 204
    const/16 v28, 0x0

    .line 205
    .line 206
    const/16 v29, 0x0

    .line 207
    .line 208
    const/16 v30, 0x0

    .line 209
    .line 210
    const/16 v31, 0x0

    .line 211
    .line 212
    const/16 v32, 0x0

    .line 213
    .line 214
    const/16 v33, 0x0

    .line 215
    .line 216
    const/16 v34, 0x0

    .line 217
    .line 218
    const/16 v35, 0x0

    .line 219
    .line 220
    const-wide/16 v36, 0x0

    .line 221
    .line 222
    const/16 v38, 0x0

    .line 223
    .line 224
    const/16 v39, 0x0

    .line 225
    .line 226
    const/16 v40, 0x0

    .line 227
    .line 228
    move-object/from16 v11, p1

    .line 229
    .line 230
    invoke-static/range {v11 .. v42}, Lcom/minhub/gamehub/data/Game;->copy$default(Lcom/minhub/gamehub/data/Game;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/minhub/gamehub/data/Game;

    .line 231
    .line 232
    .line 233
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 234
    return-object v0

    .line 235
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    const-string v1, "Could not read game metadata: "

    .line 240
    .line 241
    invoke-static {v1, v0, v2}, LE/b;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    return-object p1
.end method
