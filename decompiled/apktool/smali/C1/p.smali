.class public final synthetic LC1/p;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/hub/AddGameActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/hub/AddGameActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, LC1/p;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LC1/p;->c:Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onActivityResult(Ljava/lang/Object;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, LC1/p;->b:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    move-object/from16 v0, p1

    .line 9
    .line 10
    check-cast v0, Landroid/net/Uri;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v2, v1, LC1/p;->c:Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/minhub/gamehub/hub/AddGameActivity;->o:LC1/u;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {v2, v0}, LC1/u;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget v0, Lcom/minhub/gamehub/hub/AddGameActivity;->y:I

    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void

    .line 27
    :pswitch_0
    iget-object v3, v1, LC1/p;->c:Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 28
    .line 29
    iget-object v2, v3, Lcom/minhub/gamehub/hub/AddGameActivity;->g:Ljava/util/Set;

    .line 30
    .line 31
    move-object/from16 v5, p1

    .line 32
    .line 33
    check-cast v5, Landroid/net/Uri;

    .line 34
    .line 35
    sget v0, Lcom/minhub/gamehub/hub/AddGameActivity;->y:I

    .line 36
    .line 37
    if-eqz v5, :cond_9

    .line 38
    .line 39
    const-string v10, "<this>"

    .line 40
    .line 41
    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v0, "uri"

    .line 45
    .line 46
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v3, v5}, LC1/O;->g(Lcom/minhub/gamehub/hub/AddGameActivity;Landroid/net/Uri;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v3, v5}, LC1/O;->g(Lcom/minhub/gamehub/hub/AddGameActivity;Landroid/net/Uri;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    const-string v7, ".zip"

    .line 64
    .line 65
    invoke-static {v6, v7}, Lkotlin/text/StringsKt;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    const-string v7, ".ZIP"

    .line 70
    .line 71
    invoke-static {v6, v7}, Lkotlin/text/StringsKt;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    const-string v7, ".rar"

    .line 76
    .line 77
    invoke-static {v6, v7}, Lkotlin/text/StringsKt;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    const-string v7, ".RAR"

    .line 82
    .line 83
    invoke-static {v6, v7}, Lkotlin/text/StringsKt;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    const-string v7, ".apk"

    .line 88
    .line 89
    invoke-static {v6, v7}, Lkotlin/text/StringsKt;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    const-string v8, ".APK"

    .line 94
    .line 95
    invoke-static {v6, v8}, Lkotlin/text/StringsKt;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-static {v4, v7}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    const-string v11, "importOperations"

    .line 104
    .line 105
    if-eqz v4, :cond_2

    .line 106
    .line 107
    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const-string v0, "gameName"

    .line 114
    .line 115
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    sget-object v0, LC1/Q;->c:LC1/Q;

    .line 119
    .line 120
    invoke-virtual {v3, v0}, Lcom/minhub/gamehub/hub/AddGameActivity;->B(LC1/Q;)V

    .line 121
    .line 122
    .line 123
    const/4 v0, 0x5

    .line 124
    invoke-virtual {v3, v0}, Lcom/minhub/gamehub/hub/AddGameActivity;->D(I)V

    .line 125
    .line 126
    .line 127
    move-object v4, v6

    .line 128
    new-instance v6, LD1/b;

    .line 129
    .line 130
    invoke-direct {v6}, LD1/b;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    new-instance v0, Ljava/lang/Thread;

    .line 140
    .line 141
    new-instance v2, LC1/t;

    .line 142
    .line 143
    const/4 v7, 0x2

    .line 144
    invoke-direct/range {v2 .. v7}, LC1/t;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;Ljava/lang/String;Landroid/net/Uri;LD1/b;I)V

    .line 145
    .line 146
    .line 147
    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 151
    .line 152
    .line 153
    goto/16 :goto_6

    .line 154
    .line 155
    :cond_2
    move-object v12, v3

    .line 156
    move-object v3, v6

    .line 157
    invoke-static {v12, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    const/4 v13, 0x0

    .line 164
    const/4 v14, 0x0

    .line 165
    const-wide/16 v6, 0x0

    .line 166
    .line 167
    :try_start_0
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    const-string v0, "_size"

    .line 172
    .line 173
    filled-new-array {v0}, [Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    const/4 v8, 0x0

    .line 178
    const/4 v9, 0x0

    .line 179
    move-wide v15, v6

    .line 180
    const/4 v7, 0x0

    .line 181
    move-object v6, v0

    .line 182
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 183
    .line 184
    .line 185
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    if-eqz v4, :cond_4

    .line 187
    .line 188
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_3

    .line 193
    .line 194
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getLong(I)J

    .line 195
    .line 196
    .line 197
    move-result-wide v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    goto :goto_1

    .line 199
    :catchall_0
    move-exception v0

    .line 200
    move-object v6, v0

    .line 201
    goto :goto_2

    .line 202
    :cond_3
    const-wide/16 v6, 0x0

    .line 203
    .line 204
    :goto_1
    :try_start_2
    invoke-static {v4, v13}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 205
    .line 206
    .line 207
    goto :goto_3

    .line 208
    :goto_2
    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 209
    :catchall_1
    move-exception v0

    .line 210
    :try_start_4
    invoke-static {v4, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 211
    .line 212
    .line 213
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 214
    :catch_0
    :cond_4
    const-wide/16 v6, 0x0

    .line 215
    .line 216
    :goto_3
    invoke-static {v12, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    const-wide/16 v8, 0x0

    .line 220
    .line 221
    cmp-long v0, v6, v8

    .line 222
    .line 223
    if-gtz v0, :cond_5

    .line 224
    .line 225
    move-wide v6, v8

    .line 226
    goto :goto_4

    .line 227
    :cond_5
    invoke-virtual {v12}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    .line 232
    .line 233
    .line 234
    move-result-wide v14

    .line 235
    invoke-virtual {v12, v13}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    if-nez v0, :cond_6

    .line 240
    .line 241
    invoke-virtual {v12}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    .line 246
    .line 247
    .line 248
    move-result-wide v8

    .line 249
    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 250
    .line 251
    .line 252
    move-result-wide v8

    .line 253
    const/4 v0, 0x2

    .line 254
    int-to-long v14, v0

    .line 255
    mul-long/2addr v6, v14

    .line 256
    sub-long/2addr v6, v8

    .line 257
    const-wide/16 v8, 0x0

    .line 258
    .line 259
    invoke-static {v6, v7, v8, v9}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    .line 260
    .line 261
    .line 262
    move-result-wide v6

    .line 263
    :goto_4
    cmp-long v0, v6, v8

    .line 264
    .line 265
    if-lez v0, :cond_7

    .line 266
    .line 267
    invoke-static {v6, v7}, LC1/O;->e(J)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    const v2, 0x7f1201ad

    .line 276
    .line 277
    .line 278
    invoke-virtual {v12, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    const/4 v2, 0x1

    .line 283
    invoke-static {v12, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 288
    .line 289
    .line 290
    goto :goto_6

    .line 291
    :cond_7
    sget-object v0, LC1/Q;->c:LC1/Q;

    .line 292
    .line 293
    invoke-virtual {v12, v0}, Lcom/minhub/gamehub/hub/AddGameActivity;->B(LC1/Q;)V

    .line 294
    .line 295
    .line 296
    const v0, 0x7f12010a

    .line 297
    .line 298
    .line 299
    invoke-virtual {v12, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    const-string v4, "getString(...)"

    .line 304
    .line 305
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    const-string v4, "text"

    .line 309
    .line 310
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    iget-object v4, v12, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 314
    .line 315
    if-nez v4, :cond_8

    .line 316
    .line 317
    const-string v4, "b"

    .line 318
    .line 319
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    goto :goto_5

    .line 323
    :cond_8
    move-object v13, v4

    .line 324
    :goto_5
    iget-object v4, v13, Lw1/a;->r:Landroid/widget/TextView;

    .line 325
    .line 326
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    .line 328
    .line 329
    const/4 v4, 0x0

    .line 330
    invoke-virtual {v12, v4}, Lcom/minhub/gamehub/hub/AddGameActivity;->D(I)V

    .line 331
    .line 332
    .line 333
    new-instance v6, LD1/b;

    .line 334
    .line 335
    invoke-direct {v6}, LD1/b;-><init>()V

    .line 336
    .line 337
    .line 338
    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    new-instance v0, Ljava/lang/Thread;

    .line 345
    .line 346
    new-instance v2, LC1/t;

    .line 347
    .line 348
    const/4 v7, 0x0

    .line 349
    move-object v4, v3

    .line 350
    move-object v3, v12

    .line 351
    invoke-direct/range {v2 .. v7}, LC1/t;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;Ljava/lang/String;Landroid/net/Uri;LD1/b;I)V

    .line 352
    .line 353
    .line 354
    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 358
    .line 359
    .line 360
    :cond_9
    :goto_6
    return-void

    .line 361
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 9

    .line 1
    sget v0, Lcom/minhub/gamehub/hub/AddGameActivity;->y:I

    .line 2
    .line 3
    const-string v0, "<unused var>"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string p1, "insets"

    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "getInsets(...)"

    .line 22
    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->mandatorySystemGestures()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {p2, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, LC1/p;->c:Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 38
    .line 39
    iget-object v2, v0, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    const-string v4, "b"

    .line 43
    .line 44
    if-nez v2, :cond_0

    .line 45
    .line 46
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    move-object v2, v3

    .line 50
    :cond_0
    iget-object v2, v2, Lw1/a;->j:Landroid/widget/LinearLayout;

    .line 51
    .line 52
    const-string v5, "layoutHeader"

    .line 53
    .line 54
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget v5, p1, Landroidx/core/graphics/Insets;->top:I

    .line 58
    .line 59
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    invoke-virtual {v2, v6, v5, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 72
    .line 73
    .line 74
    iget-object v0, v0, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 75
    .line 76
    if-nez v0, :cond_1

    .line 77
    .line 78
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    move-object v3, v0

    .line 83
    :goto_0
    iget-object v0, v3, Lw1/a;->h:Landroid/widget/FrameLayout;

    .line 84
    .line 85
    const-string v2, "contentFrame"

    .line 86
    .line 87
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    .line 91
    .line 92
    iget v1, v1, Landroidx/core/graphics/Insets;->bottom:I

    .line 93
    .line 94
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 111
    .line 112
    .line 113
    return-object p2
.end method
