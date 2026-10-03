.class public final Lm0/E;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ld0/k;


# static fields
.field public static final d:Ld0/h;

.field public static final e:Ld0/h;

.field public static final f:Lcom/google/android/material/datepicker/c;

.field public static final g:Ljava/util/List;


# instance fields
.field public final a:Lcom/google/android/material/datepicker/c;

.field public final b:Lg0/b;

.field public final c:Lcom/google/android/material/datepicker/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lm0/j;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, v2}, Lm0/j;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Ld0/h;

    .line 14
    .line 15
    const-string v3, "com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame"

    .line 16
    .line 17
    invoke-direct {v2, v3, v0, v1}, Ld0/h;-><init>(Ljava/lang/String;Ljava/lang/Object;Ld0/g;)V

    .line 18
    .line 19
    .line 20
    sput-object v2, Lm0/E;->d:Ld0/h;

    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Lm0/j;

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    invoke-direct {v1, v2}, Lm0/j;-><init>(I)V

    .line 31
    .line 32
    .line 33
    new-instance v2, Ld0/h;

    .line 34
    .line 35
    const-string v3, "com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption"

    .line 36
    .line 37
    invoke-direct {v2, v3, v0, v1}, Ld0/h;-><init>(Ljava/lang/String;Ljava/lang/Object;Ld0/g;)V

    .line 38
    .line 39
    .line 40
    sput-object v2, Lm0/E;->e:Ld0/h;

    .line 41
    .line 42
    new-instance v0, Lcom/google/android/material/datepicker/c;

    .line 43
    .line 44
    const/16 v1, 0x18

    .line 45
    .line 46
    invoke-direct {v0, v1}, Lcom/google/android/material/datepicker/c;-><init>(I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lm0/E;->f:Lcom/google/android/material/datepicker/c;

    .line 50
    .line 51
    const-string v0, "TP1A"

    .line 52
    .line 53
    const-string v1, "TD1A.220804.031"

    .line 54
    .line 55
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    sput-object v0, Lm0/E;->g:Ljava/util/List;

    .line 68
    .line 69
    return-void
.end method

.method public constructor <init>(Lg0/b;Lcom/google/android/material/datepicker/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm0/E;->b:Lg0/b;

    .line 5
    .line 6
    iput-object p2, p0, Lm0/E;->a:Lcom/google/android/material/datepicker/c;

    .line 7
    .line 8
    sget-object p1, Lm0/E;->f:Lcom/google/android/material/datepicker/c;

    .line 9
    .line 10
    iput-object p1, p0, Lm0/E;->c:Lcom/google/android/material/datepicker/c;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ld0/i;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public final b(Ljava/lang/Object;IILd0/i;)Lf0/F;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p4

    .line 4
    .line 5
    sget-object v2, Lm0/E;->d:Ld0/h;

    .line 6
    .line 7
    invoke-virtual {v0, v2}, Ld0/i;->c(Ld0/h;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Ljava/lang/Long;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 14
    .line 15
    .line 16
    move-result-wide v4

    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    cmp-long v2, v4, v2

    .line 20
    .line 21
    if-gez v2, :cond_1

    .line 22
    .line 23
    const-wide/16 v2, -0x1

    .line 24
    .line 25
    cmp-long v2, v4, v2

    .line 26
    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v3, "Requested frame must be non-negative, or DEFAULT_FRAME, given: "

    .line 35
    .line 36
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0

    .line 50
    :cond_1
    :goto_0
    sget-object v2, Lm0/E;->e:Ld0/h;

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ld0/i;->c(Ld0/h;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Ljava/lang/Integer;

    .line 57
    .line 58
    if-nez v2, :cond_2

    .line 59
    .line 60
    const/4 v2, 0x2

    .line 61
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    :cond_2
    sget-object v3, Lm0/n;->g:Ld0/h;

    .line 66
    .line 67
    invoke-virtual {v0, v3}, Ld0/i;->c(Ld0/h;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lm0/n;

    .line 72
    .line 73
    if-nez v0, :cond_3

    .line 74
    .line 75
    sget-object v0, Lm0/n;->f:Lm0/n;

    .line 76
    .line 77
    :cond_3
    move-object v9, v0

    .line 78
    iget-object v0, v1, Lm0/E;->c:Lcom/google/android/material/datepicker/c;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    .line 84
    .line 85
    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 86
    .line 87
    .line 88
    const/16 v16, 0x1

    .line 89
    .line 90
    const-wide/16 v6, 0x1

    .line 91
    .line 92
    const/16 v17, 0x0

    .line 93
    .line 94
    const/16 v8, 0x1d

    .line 95
    .line 96
    :try_start_0
    iget-object v0, v1, Lm0/E;->a:Lcom/google/android/material/datepicker/c;

    .line 97
    .line 98
    iget v0, v0, Lcom/google/android/material/datepicker/c;->b:I

    .line 99
    .line 100
    packed-switch v0, :pswitch_data_0

    .line 101
    .line 102
    .line 103
    move-object/from16 v0, p1

    .line 104
    .line 105
    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v3, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :pswitch_0
    move-object/from16 v0, p1

    .line 116
    .line 117
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 118
    .line 119
    new-instance v10, Lm0/D;

    .line 120
    .line 121
    invoke-direct {v10, v0}, Lm0/D;-><init>(Ljava/nio/ByteBuffer;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, v10}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/media/MediaDataSource;)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :pswitch_1
    move-object/from16 v0, p1

    .line 129
    .line 130
    check-cast v0, Landroid/content/res/AssetFileDescriptor;

    .line 131
    .line 132
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 133
    .line 134
    .line 135
    move-result-object v11

    .line 136
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 137
    .line 138
    .line 139
    move-result-wide v12

    .line 140
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 141
    .line 142
    .line 143
    move-result-wide v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 144
    move-object v10, v3

    .line 145
    :try_start_1
    invoke-virtual/range {v10 .. v15}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 146
    .line 147
    .line 148
    move-object v3, v10

    .line 149
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 150
    .line 151
    .line 152
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 153
    move-object/from16 v2, p1

    .line 154
    .line 155
    move-wide v10, v6

    .line 156
    move v12, v8

    .line 157
    move/from16 v7, p2

    .line 158
    .line 159
    move/from16 v8, p3

    .line 160
    .line 161
    move v6, v0

    .line 162
    :try_start_3
    invoke-virtual/range {v1 .. v9}, Lm0/E;->c(Ljava/lang/Object;Landroid/media/MediaMetadataRetriever;JIIILm0/n;)Landroid/graphics/Bitmap;

    .line 163
    .line 164
    .line 165
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 166
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 167
    .line 168
    if-lt v2, v12, :cond_9

    .line 169
    .line 170
    instance-of v2, v3, Ljava/lang/AutoCloseable;

    .line 171
    .line 172
    if-eqz v2, :cond_4

    .line 173
    .line 174
    check-cast v3, Ljava/lang/AutoCloseable;

    .line 175
    .line 176
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    .line 177
    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_4
    instance-of v2, v3, Ljava/util/concurrent/ExecutorService;

    .line 181
    .line 182
    if-eqz v2, :cond_8

    .line 183
    .line 184
    check-cast v3, Ljava/util/concurrent/ExecutorService;

    .line 185
    .line 186
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    if-ne v3, v2, :cond_5

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_5
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    if-nez v2, :cond_a

    .line 198
    .line 199
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 200
    .line 201
    .line 202
    :cond_6
    :goto_2
    if-nez v2, :cond_7

    .line 203
    .line 204
    :try_start_4
    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 205
    .line 206
    invoke-interface {v3, v10, v11, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 207
    .line 208
    .line 209
    move-result v2
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 210
    goto :goto_2

    .line 211
    :catch_0
    if-nez v17, :cond_6

    .line 212
    .line 213
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 214
    .line 215
    .line 216
    move/from16 v17, v16

    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_7
    if-eqz v17, :cond_a

    .line 220
    .line 221
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 226
    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_8
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 230
    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_9
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 234
    .line 235
    .line 236
    :cond_a
    :goto_3
    iget-object v2, v1, Lm0/E;->b:Lg0/b;

    .line 237
    .line 238
    invoke-static {v0, v2}, Lm0/d;->b(Landroid/graphics/Bitmap;Lg0/b;)Lm0/d;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    return-object v0

    .line 243
    :catchall_0
    move-exception v0

    .line 244
    goto :goto_4

    .line 245
    :catchall_1
    move-exception v0

    .line 246
    move-wide v10, v6

    .line 247
    move v12, v8

    .line 248
    goto :goto_4

    .line 249
    :catchall_2
    move-exception v0

    .line 250
    move-object v3, v10

    .line 251
    move v12, v8

    .line 252
    move-wide v10, v6

    .line 253
    :goto_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 254
    .line 255
    if-lt v2, v12, :cond_f

    .line 256
    .line 257
    instance-of v2, v3, Ljava/lang/AutoCloseable;

    .line 258
    .line 259
    if-nez v2, :cond_e

    .line 260
    .line 261
    instance-of v2, v3, Ljava/util/concurrent/ExecutorService;

    .line 262
    .line 263
    if-eqz v2, :cond_d

    .line 264
    .line 265
    check-cast v3, Ljava/util/concurrent/ExecutorService;

    .line 266
    .line 267
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    if-eq v3, v2, :cond_10

    .line 272
    .line 273
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    if-nez v2, :cond_10

    .line 278
    .line 279
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 280
    .line 281
    .line 282
    :cond_b
    :goto_5
    if-nez v2, :cond_c

    .line 283
    .line 284
    :try_start_5
    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 285
    .line 286
    invoke-interface {v3, v10, v11, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 287
    .line 288
    .line 289
    move-result v2
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    .line 290
    goto :goto_5

    .line 291
    :catch_1
    if-nez v17, :cond_b

    .line 292
    .line 293
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 294
    .line 295
    .line 296
    move/from16 v17, v16

    .line 297
    .line 298
    goto :goto_5

    .line 299
    :cond_c
    if-eqz v17, :cond_10

    .line 300
    .line 301
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 306
    .line 307
    .line 308
    goto :goto_6

    .line 309
    :cond_d
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 310
    .line 311
    .line 312
    goto :goto_6

    .line 313
    :cond_e
    check-cast v3, Ljava/lang/AutoCloseable;

    .line 314
    .line 315
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    .line 316
    .line 317
    .line 318
    goto :goto_6

    .line 319
    :cond_f
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 320
    .line 321
    .line 322
    :cond_10
    :goto_6
    throw v0

    .line 323
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;Landroid/media/MediaMetadataRetriever;JIIILm0/n;)Landroid/graphics/Bitmap;
    .locals 17

    .line 1
    move-object/from16 v1, p2

    .line 2
    .line 3
    move/from16 v2, p6

    .line 4
    .line 5
    move/from16 v3, p7

    .line 6
    .line 7
    move-object/from16 v4, p8

    .line 8
    .line 9
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v7, 0x3

    .line 12
    const/4 v8, 0x0

    .line 13
    const-string v9, "VideoDecoder"

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v5, ".+_cheets|cheets_.+"

    .line 18
    .line 19
    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/16 v0, 0xc

    .line 26
    .line 27
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v5, "video/webm"

    .line 32
    .line 33
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    :cond_0
    move-object/from16 v5, p0

    .line 40
    .line 41
    goto/16 :goto_6

    .line 42
    .line 43
    :cond_1
    new-instance v10, Landroid/media/MediaExtractor;

    .line 44
    .line 45
    invoke-direct {v10}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    .line 47
    .line 48
    move-object/from16 v5, p0

    .line 49
    .line 50
    :try_start_1
    iget-object v0, v5, Lm0/E;->a:Lcom/google/android/material/datepicker/c;

    .line 51
    .line 52
    iget v0, v0, Lcom/google/android/material/datepicker/c;->b:I

    .line 53
    .line 54
    packed-switch v0, :pswitch_data_0

    .line 55
    .line 56
    .line 57
    move-object/from16 v0, p1

    .line 58
    .line 59
    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v10, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :pswitch_0
    move-object/from16 v0, p1

    .line 70
    .line 71
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 72
    .line 73
    new-instance v6, Lm0/D;

    .line 74
    .line 75
    invoke-direct {v6, v0}, Lm0/D;-><init>(Ljava/nio/ByteBuffer;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v10, v6}, Landroid/media/MediaExtractor;->setDataSource(Landroid/media/MediaDataSource;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :pswitch_1
    move-object/from16 v0, p1

    .line 83
    .line 84
    check-cast v0, Landroid/content/res/AssetFileDescriptor;

    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 87
    .line 88
    .line 89
    move-result-object v11

    .line 90
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 91
    .line 92
    .line 93
    move-result-wide v12

    .line 94
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 95
    .line 96
    .line 97
    move-result-wide v14

    .line 98
    invoke-virtual/range {v10 .. v15}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 99
    .line 100
    .line 101
    :goto_0
    invoke-virtual {v10}, Landroid/media/MediaExtractor;->getTrackCount()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    const/4 v6, 0x0

    .line 106
    :goto_1
    if-ge v6, v0, :cond_3

    .line 107
    .line 108
    invoke-virtual {v10, v6}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    .line 109
    .line 110
    .line 111
    move-result-object v11

    .line 112
    const-string v12, "mime"

    .line 113
    .line 114
    invoke-virtual {v11, v12}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v11

    .line 118
    const-string v12, "video/x-vnd.on2.vp8"

    .line 119
    .line 120
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    if-nez v11, :cond_2

    .line 125
    .line 126
    add-int/lit8 v6, v6, 0x1

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_2
    invoke-virtual {v10}, Landroid/media/MediaExtractor;->release()V

    .line 130
    .line 131
    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 133
    .line 134
    const-string v1, "Cannot decode VP8 video on CrOS."

    .line 135
    .line 136
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw v0

    .line 140
    :catchall_0
    move-exception v0

    .line 141
    goto :goto_3

    .line 142
    :cond_3
    :goto_2
    invoke-virtual {v10}, Landroid/media/MediaExtractor;->release()V

    .line 143
    .line 144
    .line 145
    goto :goto_6

    .line 146
    :catchall_1
    move-exception v0

    .line 147
    move-object/from16 v5, p0

    .line 148
    .line 149
    move-object v10, v8

    .line 150
    :goto_3
    :try_start_2
    invoke-static {v9, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    if-eqz v6, :cond_4

    .line 155
    .line 156
    const-string v6, "Exception trying to extract track info for a webm video on CrOS."

    .line 157
    .line 158
    invoke-static {v9, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 159
    .line 160
    .line 161
    goto :goto_4

    .line 162
    :catchall_2
    move-exception v0

    .line 163
    goto :goto_5

    .line 164
    :cond_4
    :goto_4
    if-eqz v10, :cond_6

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :goto_5
    if-eqz v10, :cond_5

    .line 168
    .line 169
    invoke-virtual {v10}, Landroid/media/MediaExtractor;->release()V

    .line 170
    .line 171
    .line 172
    :cond_5
    throw v0

    .line 173
    :cond_6
    :goto_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 174
    .line 175
    const/16 v6, 0x1b

    .line 176
    .line 177
    const/16 v10, 0x18

    .line 178
    .line 179
    if-lt v0, v6, :cond_9

    .line 180
    .line 181
    const/high16 v0, -0x80000000

    .line 182
    .line 183
    if-eq v2, v0, :cond_9

    .line 184
    .line 185
    if-eq v3, v0, :cond_9

    .line 186
    .line 187
    sget-object v0, Lm0/n;->e:Lm0/n;

    .line 188
    .line 189
    if-eq v4, v0, :cond_9

    .line 190
    .line 191
    const/16 v0, 0x12

    .line 192
    .line 193
    :try_start_3
    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    const/16 v6, 0x13

    .line 202
    .line 203
    invoke-virtual {v1, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    move-result v6

    .line 211
    invoke-virtual {v1, v10}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v11

    .line 215
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    move-result v11

    .line 219
    const/16 v12, 0x5a

    .line 220
    .line 221
    if-eq v11, v12, :cond_7

    .line 222
    .line 223
    const/16 v12, 0x10e

    .line 224
    .line 225
    if-ne v11, v12, :cond_8

    .line 226
    .line 227
    :cond_7
    move/from16 v16, v6

    .line 228
    .line 229
    move v6, v0

    .line 230
    move/from16 v0, v16

    .line 231
    .line 232
    :cond_8
    invoke-virtual {v4, v0, v6, v2, v3}, Lm0/n;->b(IIII)F

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    int-to-float v0, v0

    .line 237
    mul-float/2addr v0, v2

    .line 238
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    int-to-float v3, v6

    .line 243
    mul-float/2addr v2, v3

    .line 244
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 245
    .line 246
    .line 247
    move-result v6

    .line 248
    move-wide/from16 v2, p3

    .line 249
    .line 250
    move/from16 v4, p5

    .line 251
    .line 252
    move v5, v0

    .line 253
    invoke-static/range {v1 .. v6}, Lm0/C;->b(Landroid/media/MediaMetadataRetriever;JIII)Landroid/graphics/Bitmap;

    .line 254
    .line 255
    .line 256
    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 257
    goto :goto_7

    .line 258
    :catchall_3
    move-exception v0

    .line 259
    invoke-static {v9, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    if-eqz v2, :cond_9

    .line 264
    .line 265
    const-string v2, "Exception trying to decode a scaled frame on oreo+, falling back to a fullsize frame"

    .line 266
    .line 267
    invoke-static {v9, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    .line 269
    .line 270
    :cond_9
    :goto_7
    if-nez v8, :cond_a

    .line 271
    .line 272
    invoke-virtual/range {p2 .. p5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    .line 273
    .line 274
    .line 275
    move-result-object v8

    .line 276
    :cond_a
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 277
    .line 278
    const-string v2, "Pixel"

    .line 279
    .line 280
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    const/16 v2, 0x21

    .line 285
    .line 286
    if-eqz v0, :cond_c

    .line 287
    .line 288
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 289
    .line 290
    if-ne v0, v2, :cond_c

    .line 291
    .line 292
    sget-object v0, Lm0/E;->g:Ljava/util/List;

    .line 293
    .line 294
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    if-eqz v2, :cond_f

    .line 303
    .line 304
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    check-cast v2, Ljava/lang/String;

    .line 309
    .line 310
    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 311
    .line 312
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 313
    .line 314
    .line 315
    move-result v2

    .line 316
    if-eqz v2, :cond_b

    .line 317
    .line 318
    goto :goto_8

    .line 319
    :cond_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 320
    .line 321
    const/16 v3, 0x1e

    .line 322
    .line 323
    if-lt v0, v3, :cond_f

    .line 324
    .line 325
    if-ge v0, v2, :cond_f

    .line 326
    .line 327
    :goto_8
    const/16 v0, 0x24

    .line 328
    .line 329
    :try_start_4
    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    const/16 v2, 0x23

    .line 334
    .line 335
    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    const/4 v3, 0x7

    .line 348
    const/4 v4, 0x6

    .line 349
    if-eq v0, v3, :cond_d

    .line 350
    .line 351
    if-ne v0, v4, :cond_f

    .line 352
    .line 353
    :cond_d
    if-ne v2, v4, :cond_f

    .line 354
    .line 355
    invoke-virtual {v1, v10}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 364
    .line 365
    .line 366
    move-result v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    .line 367
    const/16 v1, 0xb4

    .line 368
    .line 369
    if-ne v0, v1, :cond_f

    .line 370
    .line 371
    invoke-static {v9, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    if-eqz v0, :cond_e

    .line 376
    .line 377
    const-string v0, "Applying HDR 180 deg thumbnail correction"

    .line 378
    .line 379
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .line 381
    .line 382
    :cond_e
    new-instance v0, Landroid/graphics/Matrix;

    .line 383
    .line 384
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    .line 388
    .line 389
    .line 390
    move-result v1

    .line 391
    int-to-float v1, v1

    .line 392
    const/high16 v2, 0x40000000    # 2.0f

    .line 393
    .line 394
    div-float/2addr v1, v2

    .line 395
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    .line 396
    .line 397
    .line 398
    move-result v3

    .line 399
    int-to-float v3, v3

    .line 400
    div-float/2addr v3, v2

    .line 401
    const/high16 v2, 0x43340000    # 180.0f

    .line 402
    .line 403
    invoke-virtual {v0, v2, v1, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 404
    .line 405
    .line 406
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    .line 407
    .line 408
    .line 409
    move-result v1

    .line 410
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    .line 411
    .line 412
    .line 413
    move-result v2

    .line 414
    const/4 v3, 0x1

    .line 415
    const/4 v4, 0x0

    .line 416
    const/4 v5, 0x0

    .line 417
    move-object/from16 p6, v0

    .line 418
    .line 419
    move/from16 p4, v1

    .line 420
    .line 421
    move/from16 p5, v2

    .line 422
    .line 423
    move/from16 p7, v3

    .line 424
    .line 425
    move/from16 p2, v4

    .line 426
    .line 427
    move/from16 p3, v5

    .line 428
    .line 429
    move-object/from16 p1, v8

    .line 430
    .line 431
    invoke-static/range {p1 .. p7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 432
    .line 433
    .line 434
    move-result-object v8

    .line 435
    goto :goto_9

    .line 436
    :catch_0
    invoke-static {v9, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 437
    .line 438
    .line 439
    move-result v0

    .line 440
    if-eqz v0, :cond_f

    .line 441
    .line 442
    const-string v0, "Exception trying to extract HDR transfer function or rotation"

    .line 443
    .line 444
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    .line 446
    .line 447
    :cond_f
    :goto_9
    if-eqz v8, :cond_10

    .line 448
    .line 449
    return-object v8

    .line 450
    :cond_10
    new-instance v0, LQ/c;

    .line 451
    .line 452
    const-string v1, "MediaMetadataRetriever failed to retrieve a frame without throwing, check the adb logs for .*MetadataRetriever.* prior to this exception for details"

    .line 453
    .line 454
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    throw v0

    .line 458
    nop

    .line 459
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
