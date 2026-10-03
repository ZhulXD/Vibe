.class public abstract Ly1/k2;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# direct methods
.method public static final a(Lcom/minhub/gamehub/game/VxAceGameActivity;Landroid/view/View;)V
    .locals 1

    .line 1
    const v0, 0x7f0900bc

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroid/widget/TextView;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/VxAceGameActivity;->getFpsEnabled$app_release()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const v0, 0x7f12012b

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const v0, 0x7f12012a

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    sget-object p1, Lcom/minhub/gamehub/game/VxAceGameActivity;->tvFps:Landroid/widget/TextView;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/VxAceGameActivity;->getFpsEnabled$app_release()Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    const/16 p0, 0x8

    .line 44
    .line 45
    :goto_2
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    :cond_2
    return-void
.end method

.method public static final b(Lcom/minhub/gamehub/game/VxAceGameActivity;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/VxAceGameActivity;->getMenuOverlay$app_release()Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const/16 v0, 0x8

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public static final c(Lcom/minhub/gamehub/game/VxAceGameActivity;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/VxAceGameActivity;->getLoadSaveOverlay$app_release()Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const/16 v0, 0x8

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public static final d(Lcom/minhub/gamehub/game/VxAceGameActivity;Ly1/e2;)V
    .locals 11

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "entry"

    .line 7
    .line 8
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    const/4 v3, 0x0

    .line 19
    packed-switch p1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 23
    .line 24
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 25
    .line 26
    .line 27
    throw p0

    .line 28
    :pswitch_0
    invoke-static {p0}, Ly1/k2;->b(Lcom/minhub/gamehub/game/VxAceGameActivity;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const v0, 0x7f0c0040

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-instance v0, LO0/b;

    .line 44
    .line 45
    invoke-direct {v0, p0, v3}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 46
    .line 47
    .line 48
    iget-object v1, v0, Le/f;->c:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v1, Le/b;

    .line 51
    .line 52
    iput-object p1, v1, Le/b;->t:Landroid/view/View;

    .line 53
    .line 54
    invoke-virtual {v0}, LO0/b;->c()Le/g;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v1, "create(...)"

    .line 59
    .line 60
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    if-eqz v1, :cond_0

    .line 68
    .line 69
    const v2, 0x106000d

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 73
    .line 74
    .line 75
    :cond_0
    const v1, 0x7f090092

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    new-instance v2, LC1/z;

    .line 83
    .line 84
    const/16 v3, 0x9

    .line 85
    .line 86
    invoke-direct {v2, v0, v3}, LC1/z;-><init>(Le/g;I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    .line 91
    .line 92
    const v1, 0x7f090093

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    new-instance v1, Ly1/M0;

    .line 100
    .line 101
    const/4 v2, 0x3

    .line 102
    invoke-direct {v1, v2, v0, p0}, Ly1/M0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :pswitch_1
    invoke-static {p0}, Ly1/k2;->b(Lcom/minhub/gamehub/game/VxAceGameActivity;)V

    .line 113
    .line 114
    .line 115
    const-string p1, "MinHub_"

    .line 116
    .line 117
    :try_start_0
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/VxAceGameActivity;->getSafeSurface$app_release()Lorg/libsdl/app/SDLSurface;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    if-eqz v0, :cond_1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/VxAceGameActivity;->getSafeLayout$app_release()Landroid/view/ViewGroup;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    if-eqz v0, :cond_b

    .line 129
    .line 130
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    invoke-static {v4, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 147
    .line 148
    invoke-static {v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    const-string v2, "createBitmap(...)"

    .line 153
    .line 154
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    new-instance v2, Landroid/graphics/Canvas;

    .line 158
    .line 159
    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/VxAceGameActivity;->getCurrentGame$app_release()Lcom/minhub/gamehub/data/Game;

    .line 166
    .line 167
    .line 168
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    const-string v2, "_"

    .line 170
    .line 171
    if-eqz v0, :cond_2

    .line 172
    .line 173
    :try_start_1
    invoke-virtual {v0}, Lcom/minhub/gamehub/data/Game;->getTitle()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    if-eqz v0, :cond_2

    .line 178
    .line 179
    const/16 v4, 0x14

    .line 180
    .line 181
    invoke-static {v0, v4}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    if-eqz v0, :cond_2

    .line 186
    .line 187
    new-instance v4, Lkotlin/text/Regex;

    .line 188
    .line 189
    const-string v5, "\\W+"

    .line 190
    .line 191
    invoke-direct {v4, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4, v0, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    if-nez v0, :cond_3

    .line 199
    .line 200
    goto :goto_1

    .line 201
    :catchall_0
    move-exception p1

    .line 202
    goto :goto_3

    .line 203
    :cond_2
    :goto_1
    const-string v0, "VXACE"

    .line 204
    .line 205
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 206
    .line 207
    .line 208
    move-result-wide v4

    .line 209
    new-instance v6, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v6, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string p1, ".png"

    .line 224
    .line 225
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-static {p0, v1, p1}, Ly1/k2;->f(Lcom/minhub/gamehub/game/VxAceGameActivity;Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    if-eqz p1, :cond_4

    .line 237
    .line 238
    const p1, 0x7f12037f

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    goto :goto_2

    .line 246
    :cond_4
    const p1, 0x7f12037e

    .line 247
    .line 248
    .line 249
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    :goto_2
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    .line 259
    .line 260
    return-void

    .line 261
    :goto_3
    const-string v0, "VxAceGameActivity"

    .line 262
    .line 263
    const-string v1, "screenshot failed"

    .line 264
    .line 265
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    .line 267
    .line 268
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    const v0, 0x7f1200f7

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 288
    .line 289
    .line 290
    return-void

    .line 291
    :pswitch_2
    invoke-static {p0}, Ly1/k2;->b(Lcom/minhub/gamehub/game/VxAceGameActivity;)V

    .line 292
    .line 293
    .line 294
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/VxAceGameActivity;->getCurrentGame$app_release()Lcom/minhub/gamehub/data/Game;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    if-nez p1, :cond_5

    .line 302
    .line 303
    goto/16 :goto_6

    .line 304
    .line 305
    :cond_5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/VxAceGameActivity;->getLoadSaveOverlay$app_release()Landroid/view/View;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    const v4, 0x7f090289

    .line 313
    .line 314
    .line 315
    if-eqz v0, :cond_6

    .line 316
    .line 317
    goto/16 :goto_4

    .line 318
    .line 319
    :cond_6
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/VxAceGameActivity;->getSafeLayout$app_release()Landroid/view/ViewGroup;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    if-eqz v0, :cond_9

    .line 324
    .line 325
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 326
    .line 327
    .line 328
    move-result-object v5

    .line 329
    const v6, 0x7f0c00bd

    .line 330
    .line 331
    .line 332
    invoke-virtual {v5, v6, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 333
    .line 334
    .line 335
    move-result-object v5

    .line 336
    new-instance v6, LC1/g2;

    .line 337
    .line 338
    new-instance v7, Ly1/f1;

    .line 339
    .line 340
    const/16 v8, 0x9

    .line 341
    .line 342
    invoke-direct {v7, v8}, Ly1/f1;-><init>(I)V

    .line 343
    .line 344
    .line 345
    new-instance v8, Ly1/f1;

    .line 346
    .line 347
    const/16 v9, 0xa

    .line 348
    .line 349
    invoke-direct {v8, v9}, Ly1/f1;-><init>(I)V

    .line 350
    .line 351
    .line 352
    new-instance v9, LA1/p;

    .line 353
    .line 354
    const/16 v10, 0x12

    .line 355
    .line 356
    invoke-direct {v9, v10, p0}, LA1/p;-><init>(ILjava/lang/Object;)V

    .line 357
    .line 358
    .line 359
    invoke-direct {v6, v7, v8, v9, v3}, LC1/g2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Z)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {p0, v6}, Lcom/minhub/gamehub/game/VxAceGameActivity;->setLoadSaveAdapter$app_release(LC1/g2;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 366
    .line 367
    .line 368
    move-result-object v6

    .line 369
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    .line 370
    .line 371
    new-instance v7, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 372
    .line 373
    invoke-direct {v7, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(LP/g0;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/VxAceGameActivity;->getLoadSaveAdapter$app_release()LC1/g2;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    invoke-virtual {v6, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(LP/W;)V

    .line 384
    .line 385
    .line 386
    const v2, 0x7f090085

    .line 387
    .line 388
    .line 389
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 390
    .line 391
    .line 392
    move-result-object v2

    .line 393
    new-instance v6, Ly1/i2;

    .line 394
    .line 395
    const/4 v7, 0x5

    .line 396
    invoke-direct {v6, p0, v7}, Ly1/i2;-><init>(Lcom/minhub/gamehub/game/VxAceGameActivity;I)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    .line 401
    .line 402
    new-instance v2, Ly1/i2;

    .line 403
    .line 404
    const/4 v6, 0x6

    .line 405
    invoke-direct {v2, p0, v6}, Ly1/i2;-><init>(Lcom/minhub/gamehub/game/VxAceGameActivity;I)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    .line 410
    .line 411
    const v2, 0x7f0901c7

    .line 412
    .line 413
    .line 414
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    new-instance v6, Lorg/renpy/android/b;

    .line 419
    .line 420
    const/4 v7, 0x3

    .line 421
    invoke-direct {v6, v7}, Lorg/renpy/android/b;-><init>(I)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    .line 426
    .line 427
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 428
    .line 429
    const/4 v6, -0x1

    .line 430
    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v0, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {p0, v5}, Lcom/minhub/gamehub/game/VxAceGameActivity;->setLoadSaveOverlay$app_release(Landroid/view/View;)V

    .line 437
    .line 438
    .line 439
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 440
    .line 441
    .line 442
    move-object v0, v5

    .line 443
    :goto_4
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/VxAceGameActivity;->getSaveRepository$app_release()Lcom/minhub/gamehub/data/SaveRepository;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    invoke-virtual {v2, p1}, Lcom/minhub/gamehub/data/SaveRepository;->scanSaves(Lcom/minhub/gamehub/data/Game;)Ljava/util/List;

    .line 448
    .line 449
    .line 450
    move-result-object p1

    .line 451
    new-instance v2, Ly1/M;

    .line 452
    .line 453
    const/16 v5, 0x9

    .line 454
    .line 455
    invoke-direct {v2, v5}, Ly1/M;-><init>(I)V

    .line 456
    .line 457
    .line 458
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 459
    .line 460
    .line 461
    move-result-object p1

    .line 462
    invoke-virtual {p0, p1}, Lcom/minhub/gamehub/game/VxAceGameActivity;->setCurrentLoadSaves$app_release(Ljava/util/List;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/VxAceGameActivity;->getLoadSaveAdapter$app_release()LC1/g2;

    .line 466
    .line 467
    .line 468
    move-result-object p1

    .line 469
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/VxAceGameActivity;->getCurrentLoadSaves$app_release()Ljava/util/List;

    .line 470
    .line 471
    .line 472
    move-result-object v2

    .line 473
    invoke-virtual {p1, v2}, LC1/g2;->k(Ljava/util/List;)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/VxAceGameActivity;->getCurrentLoadSaves$app_release()Ljava/util/List;

    .line 477
    .line 478
    .line 479
    move-result-object p0

    .line 480
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 481
    .line 482
    .line 483
    move-result p0

    .line 484
    const p1, 0x7f090372

    .line 485
    .line 486
    .line 487
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 488
    .line 489
    .line 490
    move-result-object p1

    .line 491
    if-nez p0, :cond_7

    .line 492
    .line 493
    move v2, v1

    .line 494
    goto :goto_5

    .line 495
    :cond_7
    move v2, v3

    .line 496
    :goto_5
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 500
    .line 501
    .line 502
    move-result-object p1

    .line 503
    if-nez p0, :cond_8

    .line 504
    .line 505
    move v1, v3

    .line 506
    :cond_8
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 513
    .line 514
    .line 515
    return-void

    .line 516
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 517
    .line 518
    const-string p1, "SDL layout missing"

    .line 519
    .line 520
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    throw p0

    .line 524
    :pswitch_3
    invoke-static {p0}, Ly1/k2;->b(Lcom/minhub/gamehub/game/VxAceGameActivity;)V

    .line 525
    .line 526
    .line 527
    invoke-static {v2, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 528
    .line 529
    .line 530
    move-result p1

    .line 531
    sub-int/2addr p1, v2

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    .line 533
    .line 534
    const-string v1, "\n        begin\n          Dir.mkdir(\"Save\") unless FileTest.directory?(\"Save\")\n        rescue\n        end\n        begin\n          if DataManager.save_game("

    .line 535
    .line 536
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    const-string p1, ")\n            Sound.play_save rescue nil\n          else\n            Sound.play_buzzer rescue nil\n          end\n        rescue\n          Sound.play_buzzer rescue nil\n        end\n    "

    .line 543
    .line 544
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object p1

    .line 551
    invoke-static {p1}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object p1

    .line 555
    invoke-virtual {p0, p1}, Lcom/minhub/gamehub/game/VxAceGameActivity;->queueRuntimeScript$app_release(Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    const p1, 0x7f120379

    .line 559
    .line 560
    .line 561
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object p1

    .line 565
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 566
    .line 567
    .line 568
    move-result-object p1

    .line 569
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 570
    .line 571
    .line 572
    new-instance p1, Landroid/os/Handler;

    .line 573
    .line 574
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 579
    .line 580
    .line 581
    new-instance v0, Ly1/W1;

    .line 582
    .line 583
    const/4 v1, 0x2

    .line 584
    invoke-direct {v0, p0, v1}, Ly1/W1;-><init>(Lcom/minhub/gamehub/game/VxAceGameActivity;I)V

    .line 585
    .line 586
    .line 587
    const-wide/16 v1, 0x320

    .line 588
    .line 589
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 590
    .line 591
    .line 592
    return-void

    .line 593
    :pswitch_4
    invoke-static {p0}, Ly1/k2;->b(Lcom/minhub/gamehub/game/VxAceGameActivity;)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/VxAceGameActivity;->getMCheatFabVisible$app_release()Z

    .line 597
    .line 598
    .line 599
    move-result p1

    .line 600
    xor-int/2addr p1, v2

    .line 601
    invoke-virtual {p0, p1}, Lcom/minhub/gamehub/game/VxAceGameActivity;->setMCheatFabVisible$app_release(Z)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/VxAceGameActivity;->getMCheatFab$app_release()Landroid/widget/ImageView;

    .line 605
    .line 606
    .line 607
    move-result-object p1

    .line 608
    if-eqz p1, :cond_b

    .line 609
    .line 610
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/VxAceGameActivity;->getMCheatFabVisible$app_release()Z

    .line 611
    .line 612
    .line 613
    move-result p0

    .line 614
    if-eqz p0, :cond_a

    .line 615
    .line 616
    move v1, v3

    .line 617
    :cond_a
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 618
    .line 619
    .line 620
    return-void

    .line 621
    :pswitch_5
    invoke-static {p0}, Ly1/k2;->b(Lcom/minhub/gamehub/game/VxAceGameActivity;)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/VxAceGameActivity;->getVxControlsCoordinator$app_release()Ly1/j1;

    .line 625
    .line 626
    .line 627
    move-result-object p0

    .line 628
    if-eqz p0, :cond_b

    .line 629
    .line 630
    invoke-virtual {p0}, Ly1/j1;->d()V

    .line 631
    .line 632
    .line 633
    return-void

    .line 634
    :pswitch_6
    invoke-static {p0}, Ly1/k2;->b(Lcom/minhub/gamehub/game/VxAceGameActivity;)V

    .line 635
    .line 636
    .line 637
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/VxAceGameActivity;->getVxControlsCoordinator$app_release()Ly1/j1;

    .line 638
    .line 639
    .line 640
    move-result-object p0

    .line 641
    if-eqz p0, :cond_b

    .line 642
    .line 643
    invoke-virtual {p0}, Ly1/j1;->h()V

    .line 644
    .line 645
    .line 646
    :cond_b
    :goto_6
    return-void

    .line 647
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final e(Lcom/minhub/gamehub/game/VxAceGameActivity;)V
    .locals 13

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Ly1/k2;->c(Lcom/minhub/gamehub/game/VxAceGameActivity;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/VxAceGameActivity;->getMenuOverlay$app_release()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/VxAceGameActivity;->getSafeLayout$app_release()Landroid/view/ViewGroup;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const v3, 0x7f0c00be

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    new-instance v2, Ly1/i2;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-direct {v2, p0, v3}, Ly1/i2;-><init>(Lcom/minhub/gamehub/game/VxAceGameActivity;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    .line 49
    .line 50
    const v2, 0x7f0901cc

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    new-instance v3, Lorg/renpy/android/b;

    .line 58
    .line 59
    const/4 v4, 0x3

    .line 60
    invoke-direct {v3, v4}, Lorg/renpy/android/b;-><init>(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    .line 65
    .line 66
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 71
    .line 72
    .line 73
    move-result v11

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 83
    .line 84
    const/high16 v3, 0x41800000    # 16.0f

    .line 85
    .line 86
    mul-float v12, v2, v3

    .line 87
    .line 88
    new-instance v6, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 89
    .line 90
    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 91
    .line 92
    .line 93
    new-instance v7, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 94
    .line 95
    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 96
    .line 97
    .line 98
    new-instance v8, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 99
    .line 100
    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 101
    .line 102
    .line 103
    new-instance v9, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 104
    .line 105
    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 106
    .line 107
    .line 108
    new-instance v10, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 109
    .line 110
    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 111
    .line 112
    .line 113
    const v2, 0x7f09036f

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    check-cast v2, Landroid/widget/TextView;

    .line 121
    .line 122
    new-instance v4, Ly1/Q;

    .line 123
    .line 124
    invoke-direct/range {v4 .. v12}, Ly1/Q;-><init>(Landroid/view/View;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;IF)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 128
    .line 129
    .line 130
    const v2, 0x7f090282

    .line 131
    .line 132
    .line 133
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    new-instance v3, Ly1/j2;

    .line 138
    .line 139
    const/4 v4, 0x1

    .line 140
    invoke-direct {v3, p0, v5, v4}, Ly1/j2;-><init>(Lcom/minhub/gamehub/game/VxAceGameActivity;Landroid/view/View;I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    .line 145
    .line 146
    const v2, 0x7f090283

    .line 147
    .line 148
    .line 149
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    new-instance v3, Ly1/j2;

    .line 154
    .line 155
    const/4 v4, 0x2

    .line 156
    invoke-direct {v3, p0, v5, v4}, Ly1/j2;-><init>(Lcom/minhub/gamehub/game/VxAceGameActivity;Landroid/view/View;I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    .line 161
    .line 162
    const v2, 0x7f090286

    .line 163
    .line 164
    .line 165
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    new-instance v3, Ly1/j2;

    .line 170
    .line 171
    const/4 v4, 0x3

    .line 172
    invoke-direct {v3, p0, v5, v4}, Ly1/j2;-><init>(Lcom/minhub/gamehub/game/VxAceGameActivity;Landroid/view/View;I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    .line 177
    .line 178
    const v2, 0x7f090284

    .line 179
    .line 180
    .line 181
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    new-instance v3, Ly1/j2;

    .line 186
    .line 187
    const/4 v4, 0x4

    .line 188
    invoke-direct {v3, p0, v5, v4}, Ly1/j2;-><init>(Lcom/minhub/gamehub/game/VxAceGameActivity;Landroid/view/View;I)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    .line 193
    .line 194
    const v2, 0x7f0900b8

    .line 195
    .line 196
    .line 197
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    new-instance v3, Ly1/i2;

    .line 202
    .line 203
    const/16 v4, 0x9

    .line 204
    .line 205
    invoke-direct {v3, p0, v4}, Ly1/i2;-><init>(Lcom/minhub/gamehub/game/VxAceGameActivity;I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    .line 210
    .line 211
    const v2, 0x7f0900ba

    .line 212
    .line 213
    .line 214
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    new-instance v3, Ly1/i2;

    .line 219
    .line 220
    const/4 v4, 0x1

    .line 221
    invoke-direct {v3, p0, v4}, Ly1/i2;-><init>(Lcom/minhub/gamehub/game/VxAceGameActivity;I)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    .line 226
    .line 227
    const v2, 0x7f0900b6

    .line 228
    .line 229
    .line 230
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    new-instance v3, Ly1/i2;

    .line 235
    .line 236
    const/4 v4, 0x2

    .line 237
    invoke-direct {v3, p0, v4}, Ly1/i2;-><init>(Lcom/minhub/gamehub/game/VxAceGameActivity;I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    .line 242
    .line 243
    const v2, 0x7f0900c1

    .line 244
    .line 245
    .line 246
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    new-instance v3, Ly1/i2;

    .line 251
    .line 252
    const/4 v4, 0x3

    .line 253
    invoke-direct {v3, p0, v4}, Ly1/i2;-><init>(Lcom/minhub/gamehub/game/VxAceGameActivity;I)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    .line 258
    .line 259
    const v2, 0x7f0900bd

    .line 260
    .line 261
    .line 262
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    new-instance v3, Ly1/i2;

    .line 267
    .line 268
    const/4 v4, 0x4

    .line 269
    invoke-direct {v3, p0, v4}, Ly1/i2;-><init>(Lcom/minhub/gamehub/game/VxAceGameActivity;I)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    .line 274
    .line 275
    const v2, 0x7f0900c2

    .line 276
    .line 277
    .line 278
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    new-instance v3, Ly1/i2;

    .line 283
    .line 284
    const/4 v4, 0x7

    .line 285
    invoke-direct {v3, p0, v4}, Ly1/i2;-><init>(Lcom/minhub/gamehub/game/VxAceGameActivity;I)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    .line 290
    .line 291
    const v2, 0x7f0900bb

    .line 292
    .line 293
    .line 294
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    new-instance v3, Ly1/i2;

    .line 299
    .line 300
    const/16 v4, 0x8

    .line 301
    .line 302
    invoke-direct {v3, p0, v4}, Ly1/i2;-><init>(Lcom/minhub/gamehub/game/VxAceGameActivity;I)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    .line 307
    .line 308
    const v2, 0x7f0900bc

    .line 309
    .line 310
    .line 311
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    check-cast v2, Landroid/widget/TextView;

    .line 316
    .line 317
    new-instance v3, Ly1/j2;

    .line 318
    .line 319
    const/4 v4, 0x0

    .line 320
    invoke-direct {v3, p0, v5, v4}, Ly1/j2;-><init>(Lcom/minhub/gamehub/game/VxAceGameActivity;Landroid/view/View;I)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    .line 325
    .line 326
    invoke-static {p0, v5}, Ly1/k2;->a(Lcom/minhub/gamehub/game/VxAceGameActivity;Landroid/view/View;)V

    .line 327
    .line 328
    .line 329
    const v2, 0x7f090292

    .line 330
    .line 331
    .line 332
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    check-cast v2, Landroid/widget/SeekBar;

    .line 337
    .line 338
    const v3, 0x7f0903b8

    .line 339
    .line 340
    .line 341
    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    check-cast v3, Landroid/widget/TextView;

    .line 346
    .line 347
    invoke-static {p0}, LS1/d;->c(Landroid/content/Context;)I

    .line 348
    .line 349
    .line 350
    move-result v4

    .line 351
    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    .line 355
    .line 356
    .line 357
    move-result v4

    .line 358
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 359
    .line 360
    .line 361
    move-result-object v4

    .line 362
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v4

    .line 366
    const v6, 0x7f120450

    .line 367
    .line 368
    .line 369
    invoke-virtual {p0, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v4

    .line 373
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    .line 375
    .line 376
    new-instance v4, LE1/H;

    .line 377
    .line 378
    invoke-direct {v4, v3, p0}, LE1/H;-><init>(Landroid/widget/TextView;Lcom/minhub/gamehub/game/VxAceGameActivity;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 382
    .line 383
    .line 384
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 385
    .line 386
    const/4 v3, -0x1

    .line 387
    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v0, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {p0, v5}, Lcom/minhub/gamehub/game/VxAceGameActivity;->setMenuOverlay$app_release(Landroid/view/View;)V

    .line 394
    .line 395
    .line 396
    move-object v0, v5

    .line 397
    :goto_0
    new-instance v2, Ly1/o1;

    .line 398
    .line 399
    invoke-direct {v2}, Ly1/o1;-><init>()V

    .line 400
    .line 401
    .line 402
    invoke-virtual {p0, v2}, Lcom/minhub/gamehub/game/VxAceGameActivity;->setMenuSectionState$app_release(Ly1/o1;)V

    .line 403
    .line 404
    .line 405
    invoke-static {p0, v0}, Ly1/k2;->g(Lcom/minhub/gamehub/game/VxAceGameActivity;Landroid/view/View;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 412
    .line 413
    .line 414
    return-void

    .line 415
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 416
    .line 417
    const-string v0, "SDL layout missing"

    .line 418
    .line 419
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    throw p0
.end method

.method public static final f(Lcom/minhub/gamehub/game/VxAceGameActivity;Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 9

    .line 1
    const-string v0, "is_pending"

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    const/16 v4, 0x1d

    .line 11
    .line 12
    const/16 v5, 0x64

    .line 13
    .line 14
    const/4 v6, 0x1

    .line 15
    const-string v7, "image/png"

    .line 16
    .line 17
    const/4 v8, 0x0

    .line 18
    if-lt v3, v4, :cond_2

    .line 19
    .line 20
    :try_start_1
    new-instance p0, Landroid/content/ContentValues;

    .line 21
    .line 22
    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v3, "_display_name"

    .line 26
    .line 27
    invoke-virtual {p0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string p2, "mime_type"

    .line 31
    .line 32
    invoke-virtual {p0, p2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string p2, "relative_path"

    .line 36
    .line 37
    sget-object v3, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 38
    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v3, "/MinHub"

    .line 48
    .line 49
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {p0, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p0, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 64
    .line 65
    .line 66
    sget-object p2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 67
    .line 68
    invoke-virtual {v1, p2, p0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    if-nez p2, :cond_0

    .line 73
    .line 74
    return v2

    .line 75
    :cond_0
    invoke-virtual {v1, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    .line 76
    .line 77
    .line 78
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    if-eqz v3, :cond_1

    .line 80
    .line 81
    :try_start_2
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 82
    .line 83
    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 84
    .line 85
    .line 86
    :try_start_3
    invoke-static {v3, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    goto :goto_2

    .line 92
    :catchall_1
    move-exception p0

    .line 93
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 94
    :catchall_2
    move-exception p1

    .line 95
    :try_start_5
    invoke-static {v3, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    throw p1

    .line 99
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContentValues;->clear()V

    .line 100
    .line 101
    .line 102
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, p2, p0, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    new-instance v0, Ljava/io/File;

    .line 114
    .line 115
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 116
    .line 117
    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    const-string v3, "MinHub"

    .line 122
    .line 123
    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-nez v1, :cond_3

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 133
    .line 134
    .line 135
    :cond_3
    new-instance v1, Ljava/io/File;

    .line 136
    .line 137
    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    new-instance p2, Ljava/io/FileOutputStream;

    .line 141
    .line 142
    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 143
    .line 144
    .line 145
    :try_start_6
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 146
    .line 147
    invoke-virtual {p1, v0, v5, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 148
    .line 149
    .line 150
    :try_start_7
    invoke-static {p2, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    filled-new-array {p1}, [Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    filled-new-array {v7}, [Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    invoke-static {p0, p1, p2, v8}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 166
    .line 167
    .line 168
    :goto_1
    return v6

    .line 169
    :catchall_3
    move-exception p0

    .line 170
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 171
    :catchall_4
    move-exception p1

    .line 172
    :try_start_9
    invoke-static {p2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 173
    .line 174
    .line 175
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 176
    :goto_2
    const-string p1, "VxAceGameActivity"

    .line 177
    .line 178
    const-string p2, "saveBitmap failed"

    .line 179
    .line 180
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    .line 182
    .line 183
    return v2
.end method

.method public static final g(Lcom/minhub/gamehub/game/VxAceGameActivity;Landroid/view/View;)V
    .locals 6

    .line 1
    const v0, 0x7f1202da

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "getString(...)"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const v2, 0x7f1202db

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const v1, 0x7f0901cb

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/VxAceGameActivity;->getMenuSectionState$app_release()Ly1/o1;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    iget-boolean v3, v3, Ly1/o1;->a:Z

    .line 35
    .line 36
    const/16 v4, 0x8

    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    move v3, v5

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move v3, v4

    .line 44
    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    const v1, 0x7f0901cd

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/VxAceGameActivity;->getMenuSectionState$app_release()Ly1/o1;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    iget-boolean v3, v3, Ly1/o1;->b:Z

    .line 59
    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    move v3, v5

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    move v3, v4

    .line 65
    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    const v1, 0x7f0901d0

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/VxAceGameActivity;->getMenuSectionState$app_release()Ly1/o1;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    iget-boolean v3, v3, Ly1/o1;->c:Z

    .line 80
    .line 81
    if-eqz v3, :cond_2

    .line 82
    .line 83
    move v3, v5

    .line 84
    goto :goto_2

    .line 85
    :cond_2
    move v3, v4

    .line 86
    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 87
    .line 88
    .line 89
    const v1, 0x7f0901ce

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/VxAceGameActivity;->getMenuSectionState$app_release()Ly1/o1;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    iget-boolean v3, v3, Ly1/o1;->d:Z

    .line 101
    .line 102
    if-eqz v3, :cond_3

    .line 103
    .line 104
    move v4, v5

    .line 105
    :cond_3
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    const v1, 0x7f09036a

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    check-cast v1, Landroid/widget/TextView;

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/VxAceGameActivity;->getMenuSectionState$app_release()Ly1/o1;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    iget-boolean v3, v3, Ly1/o1;->a:Z

    .line 122
    .line 123
    if-eqz v3, :cond_4

    .line 124
    .line 125
    move-object v3, v2

    .line 126
    goto :goto_3

    .line 127
    :cond_4
    move-object v3, v0

    .line 128
    :goto_3
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    .line 130
    .line 131
    const v1, 0x7f09036b

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    check-cast v1, Landroid/widget/TextView;

    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/VxAceGameActivity;->getMenuSectionState$app_release()Ly1/o1;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    iget-boolean v3, v3, Ly1/o1;->b:Z

    .line 145
    .line 146
    if-eqz v3, :cond_5

    .line 147
    .line 148
    move-object v3, v2

    .line 149
    goto :goto_4

    .line 150
    :cond_5
    move-object v3, v0

    .line 151
    :goto_4
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    const v1, 0x7f09036e

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    check-cast v1, Landroid/widget/TextView;

    .line 162
    .line 163
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/VxAceGameActivity;->getMenuSectionState$app_release()Ly1/o1;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    iget-boolean v3, v3, Ly1/o1;->c:Z

    .line 168
    .line 169
    if-eqz v3, :cond_6

    .line 170
    .line 171
    move-object v3, v2

    .line 172
    goto :goto_5

    .line 173
    :cond_6
    move-object v3, v0

    .line 174
    :goto_5
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    .line 176
    .line 177
    const v1, 0x7f09036c

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    check-cast p1, Landroid/widget/TextView;

    .line 185
    .line 186
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/VxAceGameActivity;->getMenuSectionState$app_release()Ly1/o1;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    iget-boolean p0, p0, Ly1/o1;->d:Z

    .line 191
    .line 192
    if-eqz p0, :cond_7

    .line 193
    .line 194
    move-object v0, v2

    .line 195
    :cond_7
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    .line 197
    .line 198
    return-void
.end method
