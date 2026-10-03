.class public final synthetic Ly1/S;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic d:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic e:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic f:I

.field public final synthetic g:F

.field public final synthetic h:Ljava/io/Serializable;

.field public final synthetic i:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;IF)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Ly1/S;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/S;->c:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p2, p0, Ly1/S;->d:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p3, p0, Ly1/S;->h:Ljava/io/Serializable;

    iput-object p4, p0, Ly1/S;->i:Ljava/io/Serializable;

    iput-object p5, p0, Ly1/S;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput p6, p0, Ly1/S;->f:I

    iput p7, p0, Ly1/S;->g:F

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;IF)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Ly1/S;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/S;->h:Ljava/io/Serializable;

    iput-object p2, p0, Ly1/S;->i:Ljava/io/Serializable;

    iput-object p3, p0, Ly1/S;->c:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p4, p0, Ly1/S;->d:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p5, p0, Ly1/S;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput p6, p0, Ly1/S;->f:I

    iput p7, p0, Ly1/S;->g:F

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1
    iget v0, p0, Ly1/S;->b:I

    .line 2
    .line 3
    const-string v1, "null cannot be cast to non-null type android.view.View"

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    iget v5, p0, Ly1/S;->g:F

    .line 9
    .line 10
    iget v6, p0, Ly1/S;->f:I

    .line 11
    .line 12
    iget-object v7, p0, Ly1/S;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 13
    .line 14
    iget-object v8, p0, Ly1/S;->d:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 15
    .line 16
    iget-object v9, p0, Ly1/S;->c:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 17
    .line 18
    iget-object v10, p0, Ly1/S;->i:Ljava/io/Serializable;

    .line 19
    .line 20
    iget-object v11, p0, Ly1/S;->h:Ljava/io/Serializable;

    .line 21
    .line 22
    packed-switch v0, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    check-cast v11, Lkotlin/jvm/internal/Ref$IntRef;

    .line 26
    .line 27
    check-cast v10, Lkotlin/jvm/internal/Ref$IntRef;

    .line 28
    .line 29
    sget v0, Lcom/minhub/gamehub/game/GodotGameActivity;->q:I

    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const-string v12, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    .line 36
    .line 37
    if-eqz v0, :cond_5

    .line 38
    .line 39
    if-eq v0, v3, :cond_4

    .line 40
    .line 41
    if-eq v0, v2, :cond_1

    .line 42
    .line 43
    const/4 p2, 0x3

    .line 44
    if-eq v0, p2, :cond_0

    .line 45
    .line 46
    move v3, v4

    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    :cond_1
    iget-boolean v0, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 55
    .line 56
    if-nez v0, :cond_3

    .line 57
    .line 58
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iget v2, v9, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 63
    .line 64
    sub-float/2addr v0, v2

    .line 65
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    int-to-float v2, v6

    .line 70
    cmpl-float v0, v0, v2

    .line 71
    .line 72
    if-gtz v0, :cond_2

    .line 73
    .line 74
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    iget v4, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 79
    .line 80
    sub-float/2addr v0, v4

    .line 81
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    cmpl-float v0, v0, v2

    .line 86
    .line 87
    if-lez v0, :cond_3

    .line 88
    .line 89
    :cond_2
    iput-boolean v3, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 90
    .line 91
    :cond_3
    iget-boolean v0, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 92
    .line 93
    if-eqz v0, :cond_6

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    check-cast v2, Landroid/view/View;

    .line 112
    .line 113
    iget v1, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 114
    .line 115
    int-to-float v1, v1

    .line 116
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    add-float/2addr v4, v1

    .line 121
    iget v1, v9, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 122
    .line 123
    sub-float/2addr v4, v1

    .line 124
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    sub-int/2addr v1, v6

    .line 133
    int-to-float v1, v1

    .line 134
    sub-float/2addr v1, v5

    .line 135
    invoke-static {v4, v5, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    float-to-int v1, v1

    .line 140
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 141
    .line 142
    iget v1, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 143
    .line 144
    int-to-float v1, v1

    .line 145
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    add-float/2addr p2, v1

    .line 150
    iget v1, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 151
    .line 152
    sub-float/2addr p2, v1

    .line 153
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    sub-int/2addr v1, v2

    .line 162
    int-to-float v1, v1

    .line 163
    sub-float/2addr v1, v5

    .line 164
    invoke-static {p2, v5, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    .line 165
    .line 166
    .line 167
    move-result p2

    .line 168
    float-to-int p2, p2

    .line 169
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 170
    .line 171
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 176
    .line 177
    .line 178
    iget-boolean p2, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 179
    .line 180
    if-nez p2, :cond_6

    .line 181
    .line 182
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 183
    .line 184
    .line 185
    goto :goto_0

    .line 186
    :cond_5
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-static {p1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 200
    .line 201
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 202
    .line 203
    iput v0, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 204
    .line 205
    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 206
    .line 207
    iput p1, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 208
    .line 209
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    iput p1, v9, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 214
    .line 215
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    iput p1, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 220
    .line 221
    iput-boolean v4, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 222
    .line 223
    :cond_6
    :goto_0
    return v3

    .line 224
    :pswitch_0
    check-cast v11, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 225
    .line 226
    check-cast v10, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 227
    .line 228
    const-string v0, "view"

    .line 229
    .line 230
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    const-string v0, "event"

    .line 234
    .line 235
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    if-eqz v0, :cond_b

    .line 243
    .line 244
    if-eq v0, v3, :cond_a

    .line 245
    .line 246
    if-eq v0, v2, :cond_7

    .line 247
    .line 248
    move v3, v4

    .line 249
    goto/16 :goto_1

    .line 250
    .line 251
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    iget v2, v9, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 256
    .line 257
    sub-float/2addr v0, v2

    .line 258
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 259
    .line 260
    .line 261
    move-result p2

    .line 262
    iget v2, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 263
    .line 264
    sub-float/2addr p2, v2

    .line 265
    iget-boolean v2, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 266
    .line 267
    if-nez v2, :cond_9

    .line 268
    .line 269
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    int-to-float v4, v6

    .line 274
    cmpl-float v2, v2, v4

    .line 275
    .line 276
    if-gtz v2, :cond_8

    .line 277
    .line 278
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    cmpl-float v2, v2, v4

    .line 283
    .line 284
    if-lez v2, :cond_9

    .line 285
    .line 286
    :cond_8
    iput-boolean v3, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 287
    .line 288
    :cond_9
    iget-boolean v2, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 289
    .line 290
    if-eqz v2, :cond_c

    .line 291
    .line 292
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    check-cast v2, Landroid/view/View;

    .line 300
    .line 301
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    int-to-float v1, v1

    .line 306
    sub-float v1, v5, v1

    .line 307
    .line 308
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 309
    .line 310
    .line 311
    move-result v4

    .line 312
    int-to-float v4, v4

    .line 313
    sub-float/2addr v4, v5

    .line 314
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 315
    .line 316
    .line 317
    move-result v6

    .line 318
    int-to-float v6, v6

    .line 319
    sub-float/2addr v4, v6

    .line 320
    invoke-static {v4, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    .line 321
    .line 322
    .line 323
    move-result v4

    .line 324
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 325
    .line 326
    .line 327
    move-result v6

    .line 328
    int-to-float v6, v6

    .line 329
    sub-float v6, v5, v6

    .line 330
    .line 331
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 332
    .line 333
    .line 334
    move-result v2

    .line 335
    int-to-float v2, v2

    .line 336
    sub-float/2addr v2, v5

    .line 337
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 338
    .line 339
    .line 340
    move-result v5

    .line 341
    int-to-float v5, v5

    .line 342
    sub-float/2addr v2, v5

    .line 343
    invoke-static {v2, v6}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    iget v5, v11, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 348
    .line 349
    add-float/2addr v5, v0

    .line 350
    invoke-static {v5, v1, v4}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    .line 351
    .line 352
    .line 353
    move-result v0

    .line 354
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 355
    .line 356
    .line 357
    iget v0, v10, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 358
    .line 359
    add-float/2addr v0, p2

    .line 360
    invoke-static {v0, v6, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    .line 361
    .line 362
    .line 363
    move-result p2

    .line 364
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 365
    .line 366
    .line 367
    goto :goto_1

    .line 368
    :cond_a
    iget-boolean p2, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 369
    .line 370
    if-nez p2, :cond_c

    .line 371
    .line 372
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 373
    .line 374
    .line 375
    goto :goto_1

    .line 376
    :cond_b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    iput v0, v9, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 381
    .line 382
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 383
    .line 384
    .line 385
    move-result p2

    .line 386
    iput p2, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 387
    .line 388
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 389
    .line 390
    .line 391
    move-result p2

    .line 392
    iput p2, v11, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 393
    .line 394
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 395
    .line 396
    .line 397
    move-result p2

    .line 398
    iput p2, v10, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 399
    .line 400
    iput-boolean v4, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 401
    .line 402
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 403
    .line 404
    .line 405
    :cond_c
    :goto_1
    return v3

    .line 406
    nop

    .line 407
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
