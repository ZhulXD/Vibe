.class public final LA1/u0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LA1/u0;->b:I

    .line 2
    .line 3
    iput-object p2, p0, LA1/u0;->c:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, LA1/u0;->b:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x1

    .line 9
    const/4 v6, 0x0

    .line 10
    iget-object v7, v0, LA1/u0;->c:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast v7, Landroidx/appcompat/widget/Toolbar;

    .line 16
    .line 17
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuView;->u:Lk/l;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Lk/l;->n()Z

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void

    .line 29
    :pswitch_0
    check-cast v7, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 30
    .line 31
    iget-boolean v1, v7, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->g:Z

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "input_method"

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 46
    .line 47
    invoke-virtual {v1, v7, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 48
    .line 49
    .line 50
    iput-boolean v6, v7, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->g:Z

    .line 51
    .line 52
    :cond_1
    return-void

    .line 53
    :pswitch_1
    check-cast v7, Lk/v0;

    .line 54
    .line 55
    iput-object v3, v7, Lk/v0;->m:LA1/u0;

    .line 56
    .line 57
    invoke-virtual {v7}, Lk/v0;->drawableStateChanged()V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_2
    move-object v1, v7

    .line 62
    check-cast v1, LF/b;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    :goto_0
    :try_start_0
    iget-object v2, v1, LF/b;->d:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v2, Ljava/lang/ref/ReferenceQueue;

    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Lf0/b;

    .line 76
    .line 77
    invoke-virtual {v1, v2}, LF/b;->e(Lf0/b;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :pswitch_3
    const/16 v1, 0xa

    .line 90
    .line 91
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 92
    .line 93
    .line 94
    check-cast v7, Ljava/lang/Runnable;

    .line 95
    .line 96
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :pswitch_4
    check-cast v7, Lcom/google/android/material/textfield/TextInputLayout;

    .line 101
    .line 102
    iget-object v1, v7, Lcom/google/android/material/textfield/TextInputLayout;->d:Ld1/n;

    .line 103
    .line 104
    iget-object v1, v1, Ld1/n;->h:Lcom/google/android/material/internal/CheckableImageButton;

    .line 105
    .line 106
    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :pswitch_5
    check-cast v7, Lcom/bumptech/glide/n;

    .line 114
    .line 115
    iget-object v1, v7, Lcom/bumptech/glide/n;->d:Lcom/bumptech/glide/manager/h;

    .line 116
    .line 117
    invoke-interface {v1, v7}, Lcom/bumptech/glide/manager/h;->b(Lcom/bumptech/glide/manager/i;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :pswitch_6
    check-cast v7, Landroidx/viewpager2/adapter/d;

    .line 122
    .line 123
    iput-boolean v6, v7, Landroidx/viewpager2/adapter/d;->k:Z

    .line 124
    .line 125
    invoke-virtual {v7}, Landroidx/viewpager2/adapter/d;->m()V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :pswitch_7
    check-cast v7, Landroidx/biometric/E;

    .line 130
    .line 131
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    if-nez v1, :cond_2

    .line 136
    .line 137
    const-string v1, "FingerprintFragment"

    .line 138
    .line 139
    const-string v2, "Not resetting the dialog. Context is null."

    .line 140
    .line 141
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_2
    iget-object v2, v7, Landroidx/biometric/E;->d:Landroidx/biometric/w;

    .line 146
    .line 147
    invoke-virtual {v2, v5}, Landroidx/biometric/w;->d(I)V

    .line 148
    .line 149
    .line 150
    iget-object v2, v7, Landroidx/biometric/E;->d:Landroidx/biometric/w;

    .line 151
    .line 152
    const v3, 0x7f120101

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v2, v1}, Landroidx/biometric/w;->c(Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    :goto_1
    return-void

    .line 163
    :pswitch_8
    check-cast v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 164
    .line 165
    invoke-virtual {v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G0()Z

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :pswitch_9
    check-cast v7, LP/G;

    .line 170
    .line 171
    iget-object v1, v7, LP/G;->c:LP/y0;

    .line 172
    .line 173
    if-eqz v1, :cond_10

    .line 174
    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 176
    .line 177
    .line 178
    move-result-wide v3

    .line 179
    iget-wide v8, v7, LP/G;->B:J

    .line 180
    .line 181
    const-wide/high16 v10, -0x8000000000000000L

    .line 182
    .line 183
    cmp-long v1, v8, v10

    .line 184
    .line 185
    if-nez v1, :cond_3

    .line 186
    .line 187
    const-wide/16 v8, 0x0

    .line 188
    .line 189
    :goto_2
    move-wide/from16 v16, v8

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_3
    sub-long v8, v3, v8

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :goto_3
    iget-object v1, v7, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 196
    .line 197
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()LP/g0;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    iget-object v5, v7, LP/G;->A:Landroid/graphics/Rect;

    .line 202
    .line 203
    if-nez v5, :cond_4

    .line 204
    .line 205
    new-instance v5, Landroid/graphics/Rect;

    .line 206
    .line 207
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 208
    .line 209
    .line 210
    iput-object v5, v7, LP/G;->A:Landroid/graphics/Rect;

    .line 211
    .line 212
    :cond_4
    iget-object v5, v7, LP/G;->c:LP/y0;

    .line 213
    .line 214
    iget-object v5, v5, LP/y0;->a:Landroid/view/View;

    .line 215
    .line 216
    iget-object v8, v7, LP/G;->A:Landroid/graphics/Rect;

    .line 217
    .line 218
    iget-object v9, v1, LP/g0;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 219
    .line 220
    if-nez v9, :cond_5

    .line 221
    .line 222
    invoke-virtual {v8, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 223
    .line 224
    .line 225
    goto :goto_4

    .line 226
    :cond_5
    invoke-virtual {v9, v5}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)Landroid/graphics/Rect;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    invoke-virtual {v8, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 231
    .line 232
    .line 233
    :goto_4
    invoke-virtual {v1}, LP/g0;->d()Z

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    if-eqz v5, :cond_7

    .line 238
    .line 239
    iget v5, v7, LP/G;->j:F

    .line 240
    .line 241
    iget v8, v7, LP/G;->h:F

    .line 242
    .line 243
    add-float/2addr v5, v8

    .line 244
    float-to-int v5, v5

    .line 245
    iget-object v8, v7, LP/G;->A:Landroid/graphics/Rect;

    .line 246
    .line 247
    iget v8, v8, Landroid/graphics/Rect;->left:I

    .line 248
    .line 249
    sub-int v8, v5, v8

    .line 250
    .line 251
    iget-object v9, v7, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 252
    .line 253
    invoke-virtual {v9}, Landroid/view/View;->getPaddingLeft()I

    .line 254
    .line 255
    .line 256
    move-result v9

    .line 257
    sub-int/2addr v8, v9

    .line 258
    iget v9, v7, LP/G;->h:F

    .line 259
    .line 260
    cmpg-float v12, v9, v2

    .line 261
    .line 262
    if-gez v12, :cond_6

    .line 263
    .line 264
    if-gez v8, :cond_6

    .line 265
    .line 266
    :goto_5
    move v15, v8

    .line 267
    goto :goto_6

    .line 268
    :cond_6
    cmpl-float v8, v9, v2

    .line 269
    .line 270
    if-lez v8, :cond_7

    .line 271
    .line 272
    iget-object v8, v7, LP/G;->c:LP/y0;

    .line 273
    .line 274
    iget-object v8, v8, LP/y0;->a:Landroid/view/View;

    .line 275
    .line 276
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    .line 277
    .line 278
    .line 279
    move-result v8

    .line 280
    add-int/2addr v8, v5

    .line 281
    iget-object v5, v7, LP/G;->A:Landroid/graphics/Rect;

    .line 282
    .line 283
    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 284
    .line 285
    add-int/2addr v8, v5

    .line 286
    iget-object v5, v7, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 287
    .line 288
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    iget-object v9, v7, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 293
    .line 294
    invoke-virtual {v9}, Landroid/view/View;->getPaddingRight()I

    .line 295
    .line 296
    .line 297
    move-result v9

    .line 298
    sub-int/2addr v5, v9

    .line 299
    sub-int/2addr v8, v5

    .line 300
    if-lez v8, :cond_7

    .line 301
    .line 302
    goto :goto_5

    .line 303
    :cond_7
    move v15, v6

    .line 304
    :goto_6
    invoke-virtual {v1}, LP/g0;->e()Z

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    if-eqz v1, :cond_9

    .line 309
    .line 310
    iget v1, v7, LP/G;->k:F

    .line 311
    .line 312
    iget v5, v7, LP/G;->i:F

    .line 313
    .line 314
    add-float/2addr v1, v5

    .line 315
    float-to-int v1, v1

    .line 316
    iget-object v5, v7, LP/G;->A:Landroid/graphics/Rect;

    .line 317
    .line 318
    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 319
    .line 320
    sub-int v5, v1, v5

    .line 321
    .line 322
    iget-object v8, v7, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 323
    .line 324
    invoke-virtual {v8}, Landroid/view/View;->getPaddingTop()I

    .line 325
    .line 326
    .line 327
    move-result v8

    .line 328
    sub-int/2addr v5, v8

    .line 329
    iget v8, v7, LP/G;->i:F

    .line 330
    .line 331
    cmpg-float v9, v8, v2

    .line 332
    .line 333
    if-gez v9, :cond_8

    .line 334
    .line 335
    if-gez v5, :cond_8

    .line 336
    .line 337
    move v6, v5

    .line 338
    goto :goto_7

    .line 339
    :cond_8
    cmpl-float v2, v8, v2

    .line 340
    .line 341
    if-lez v2, :cond_9

    .line 342
    .line 343
    iget-object v2, v7, LP/G;->c:LP/y0;

    .line 344
    .line 345
    iget-object v2, v2, LP/y0;->a:Landroid/view/View;

    .line 346
    .line 347
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 348
    .line 349
    .line 350
    move-result v2

    .line 351
    add-int/2addr v2, v1

    .line 352
    iget-object v1, v7, LP/G;->A:Landroid/graphics/Rect;

    .line 353
    .line 354
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 355
    .line 356
    add-int/2addr v2, v1

    .line 357
    iget-object v1, v7, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 358
    .line 359
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 360
    .line 361
    .line 362
    move-result v1

    .line 363
    iget-object v5, v7, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 364
    .line 365
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    .line 366
    .line 367
    .line 368
    move-result v5

    .line 369
    sub-int/2addr v1, v5

    .line 370
    sub-int/2addr v2, v1

    .line 371
    if-lez v2, :cond_9

    .line 372
    .line 373
    move v6, v2

    .line 374
    :cond_9
    :goto_7
    if-eqz v15, :cond_a

    .line 375
    .line 376
    iget-object v12, v7, LP/G;->m:LC1/N0;

    .line 377
    .line 378
    iget-object v13, v7, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 379
    .line 380
    iget-object v1, v7, LP/G;->c:LP/y0;

    .line 381
    .line 382
    iget-object v1, v1, LP/y0;->a:Landroid/view/View;

    .line 383
    .line 384
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 385
    .line 386
    .line 387
    move-result v14

    .line 388
    iget-object v1, v7, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 389
    .line 390
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 391
    .line 392
    .line 393
    invoke-virtual/range {v12 .. v17}, LP/E;->d(Landroidx/recyclerview/widget/RecyclerView;IIJ)I

    .line 394
    .line 395
    .line 396
    move-result v15

    .line 397
    :cond_a
    move v1, v15

    .line 398
    if-eqz v6, :cond_b

    .line 399
    .line 400
    iget-object v12, v7, LP/G;->m:LC1/N0;

    .line 401
    .line 402
    iget-object v13, v7, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 403
    .line 404
    iget-object v2, v7, LP/G;->c:LP/y0;

    .line 405
    .line 406
    iget-object v2, v2, LP/y0;->a:Landroid/view/View;

    .line 407
    .line 408
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 409
    .line 410
    .line 411
    move-result v14

    .line 412
    iget-object v2, v7, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 413
    .line 414
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 415
    .line 416
    .line 417
    move v15, v6

    .line 418
    invoke-virtual/range {v12 .. v17}, LP/E;->d(Landroidx/recyclerview/widget/RecyclerView;IIJ)I

    .line 419
    .line 420
    .line 421
    move-result v6

    .line 422
    goto :goto_8

    .line 423
    :cond_b
    move v15, v6

    .line 424
    :goto_8
    if-nez v1, :cond_d

    .line 425
    .line 426
    if-eqz v6, :cond_c

    .line 427
    .line 428
    goto :goto_9

    .line 429
    :cond_c
    iput-wide v10, v7, LP/G;->B:J

    .line 430
    .line 431
    goto :goto_a

    .line 432
    :cond_d
    :goto_9
    iget-wide v8, v7, LP/G;->B:J

    .line 433
    .line 434
    cmp-long v2, v8, v10

    .line 435
    .line 436
    if-nez v2, :cond_e

    .line 437
    .line 438
    iput-wide v3, v7, LP/G;->B:J

    .line 439
    .line 440
    :cond_e
    iget-object v2, v7, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 441
    .line 442
    invoke-virtual {v2, v1, v6}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 443
    .line 444
    .line 445
    iget-object v1, v7, LP/G;->c:LP/y0;

    .line 446
    .line 447
    if-eqz v1, :cond_f

    .line 448
    .line 449
    invoke-virtual {v7, v1}, LP/G;->p(LP/y0;)V

    .line 450
    .line 451
    .line 452
    :cond_f
    iget-object v1, v7, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 453
    .line 454
    iget-object v2, v7, LP/G;->s:LA1/u0;

    .line 455
    .line 456
    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 457
    .line 458
    .line 459
    iget-object v1, v7, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 460
    .line 461
    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 462
    .line 463
    .line 464
    :cond_10
    :goto_a
    return-void

    .line 465
    :pswitch_a
    check-cast v7, LP/x;

    .line 466
    .line 467
    iget-object v1, v7, LP/x;->z:Landroid/animation/ValueAnimator;

    .line 468
    .line 469
    iget v3, v7, LP/x;->A:I

    .line 470
    .line 471
    if-eq v3, v5, :cond_11

    .line 472
    .line 473
    if-eq v3, v4, :cond_12

    .line 474
    .line 475
    goto :goto_b

    .line 476
    :cond_11
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 477
    .line 478
    .line 479
    :cond_12
    const/4 v3, 0x3

    .line 480
    iput v3, v7, LP/x;->A:I

    .line 481
    .line 482
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v3

    .line 486
    check-cast v3, Ljava/lang/Float;

    .line 487
    .line 488
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 489
    .line 490
    .line 491
    move-result v3

    .line 492
    new-array v4, v4, [F

    .line 493
    .line 494
    aput v3, v4, v6

    .line 495
    .line 496
    aput v2, v4, v5

    .line 497
    .line 498
    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 499
    .line 500
    .line 501
    const/16 v2, 0x1f4

    .line 502
    .line 503
    int-to-long v2, v2

    .line 504
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 508
    .line 509
    .line 510
    :goto_b
    return-void

    .line 511
    :pswitch_b
    check-cast v7, LH0/i;

    .line 512
    .line 513
    iput-boolean v6, v7, LH0/i;->c:Z

    .line 514
    .line 515
    iget-object v1, v7, LH0/i;->e:Lz/a;

    .line 516
    .line 517
    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 518
    .line 519
    iget-object v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M:LD/e;

    .line 520
    .line 521
    if-eqz v2, :cond_13

    .line 522
    .line 523
    invoke-virtual {v2}, LD/e;->f()Z

    .line 524
    .line 525
    .line 526
    move-result v2

    .line 527
    if-eqz v2, :cond_13

    .line 528
    .line 529
    iget v1, v7, LH0/i;->b:I

    .line 530
    .line 531
    invoke-virtual {v7, v1}, LH0/i;->a(I)V

    .line 532
    .line 533
    .line 534
    goto :goto_c

    .line 535
    :cond_13
    iget v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->L:I

    .line 536
    .line 537
    if-ne v2, v4, :cond_14

    .line 538
    .line 539
    iget v2, v7, LH0/i;->b:I

    .line 540
    .line 541
    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I(I)V

    .line 542
    .line 543
    .line 544
    :cond_14
    :goto_c
    return-void

    .line 545
    :pswitch_c
    check-cast v7, LD/e;

    .line 546
    .line 547
    invoke-virtual {v7, v6}, LD/e;->n(I)V

    .line 548
    .line 549
    .line 550
    return-void

    .line 551
    :pswitch_d
    check-cast v7, LA1/v0;

    .line 552
    .line 553
    iget-boolean v1, v7, LA1/v0;->r:Z

    .line 554
    .line 555
    if-eqz v1, :cond_15

    .line 556
    .line 557
    iget-object v1, v7, LA1/v0;->q:LA1/L0;

    .line 558
    .line 559
    sget-object v2, LA1/L0;->c:LA1/L0;

    .line 560
    .line 561
    if-ne v1, v2, :cond_15

    .line 562
    .line 563
    const-string v1, "com.minhub.gamehub.action.GAME_SESSION_HEARTBEAT"

    .line 564
    .line 565
    invoke-virtual {v7, v1, v3}, LA1/v0;->a(Ljava/lang/String;LA1/j;)V

    .line 566
    .line 567
    .line 568
    iget-object v1, v7, LA1/v0;->p:Landroid/os/Handler;

    .line 569
    .line 570
    const-wide/16 v2, 0x3e8

    .line 571
    .line 572
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 573
    .line 574
    .line 575
    :cond_15
    return-void

    .line 576
    nop

    .line 577
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
