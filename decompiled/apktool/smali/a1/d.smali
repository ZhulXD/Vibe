.class public abstract La1/d;
.super Landroid/view/View;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public final N:I

.field public O:F

.field public P:Landroid/view/MotionEvent;

.field public Q:Z

.field public R:F

.field public S:F

.field public T:Ljava/util/ArrayList;

.field public U:I

.field public V:I

.field public W:F

.field public a0:[F

.field public final b:Landroid/graphics/Paint;

.field public b0:Z

.field public final c:Landroid/graphics/Paint;

.field public c0:I

.field public final d:Landroid/graphics/Paint;

.field public d0:I

.field public final e:Landroid/graphics/Paint;

.field public e0:I

.field public final f:Landroid/graphics/Paint;

.field public f0:Z

.field public final g:Landroid/graphics/Paint;

.field public g0:Z

.field public final h:Landroid/graphics/Paint;

.field public h0:Landroid/content/res/ColorStateList;

.field public final i:La1/b;

.field public i0:Landroid/content/res/ColorStateList;

.field public final j:Landroid/view/accessibility/AccessibilityManager;

.field public j0:Landroid/content/res/ColorStateList;

.field public k:LT0/a;

.field public k0:Landroid/content/res/ColorStateList;

.field public final l:I

.field public l0:Landroid/content/res/ColorStateList;

.field public final m:Ljava/util/ArrayList;

.field public final m0:Landroid/graphics/Path;

.field public final n:Ljava/util/ArrayList;

.field public final n0:Landroid/graphics/RectF;

.field public final o:Ljava/util/ArrayList;

.field public final o0:Landroid/graphics/RectF;

.field public p:Z

.field public final p0:LY0/h;

.field public q:Landroid/animation/ValueAnimator;

.field public q0:Landroid/graphics/drawable/Drawable;

.field public r:Landroid/animation/ValueAnimator;

.field public r0:Ljava/util/List;

.field public final s:I

.field public s0:F

.field public final t:I

.field public t0:I

.field public final u:I

.field public final u0:La1/a;

.field public final v:I

.field public final w:I

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .line 1
    const v0, 0x7f130452

    .line 2
    .line 3
    .line 4
    const v4, 0x7f0403a2

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2, v4, v0}, Lf1/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, p1, p2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, La1/d;->m:Ljava/util/ArrayList;

    .line 20
    .line 21
    new-instance p1, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, La1/d;->n:Ljava/util/ArrayList;

    .line 27
    .line 28
    new-instance p1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, La1/d;->o:Ljava/util/ArrayList;

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, La1/d;->p:Z

    .line 37
    .line 38
    const/4 v0, -0x1

    .line 39
    iput v0, p0, La1/d;->J:I

    .line 40
    .line 41
    iput v0, p0, La1/d;->K:I

    .line 42
    .line 43
    iput-boolean p1, p0, La1/d;->Q:Z

    .line 44
    .line 45
    new-instance v1, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, La1/d;->T:Ljava/util/ArrayList;

    .line 51
    .line 52
    iput v0, p0, La1/d;->U:I

    .line 53
    .line 54
    iput v0, p0, La1/d;->V:I

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    iput v0, p0, La1/d;->W:F

    .line 58
    .line 59
    const/4 v7, 0x1

    .line 60
    iput-boolean v7, p0, La1/d;->b0:Z

    .line 61
    .line 62
    iput-boolean p1, p0, La1/d;->f0:Z

    .line 63
    .line 64
    new-instance v1, Landroid/graphics/Path;

    .line 65
    .line 66
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object v1, p0, La1/d;->m0:Landroid/graphics/Path;

    .line 70
    .line 71
    new-instance v1, Landroid/graphics/RectF;

    .line 72
    .line 73
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object v1, p0, La1/d;->n0:Landroid/graphics/RectF;

    .line 77
    .line 78
    new-instance v1, Landroid/graphics/RectF;

    .line 79
    .line 80
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object v1, p0, La1/d;->o0:Landroid/graphics/RectF;

    .line 84
    .line 85
    new-instance v8, LY0/h;

    .line 86
    .line 87
    invoke-direct {v8}, LY0/h;-><init>()V

    .line 88
    .line 89
    .line 90
    iput-object v8, p0, La1/d;->p0:LY0/h;

    .line 91
    .line 92
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 93
    .line 94
    iput-object v1, p0, La1/d;->r0:Ljava/util/List;

    .line 95
    .line 96
    iput p1, p0, La1/d;->t0:I

    .line 97
    .line 98
    new-instance v1, La1/a;

    .line 99
    .line 100
    move-object v9, p0

    .line 101
    check-cast v9, Lcom/google/android/material/slider/Slider;

    .line 102
    .line 103
    invoke-direct {v1, v9}, La1/a;-><init>(Lcom/google/android/material/slider/Slider;)V

    .line 104
    .line 105
    .line 106
    iput-object v1, p0, La1/d;->u0:La1/a;

    .line 107
    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    new-instance v2, Landroid/graphics/Paint;

    .line 113
    .line 114
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 115
    .line 116
    .line 117
    iput-object v2, p0, La1/d;->b:Landroid/graphics/Paint;

    .line 118
    .line 119
    new-instance v2, Landroid/graphics/Paint;

    .line 120
    .line 121
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 122
    .line 123
    .line 124
    iput-object v2, p0, La1/d;->c:Landroid/graphics/Paint;

    .line 125
    .line 126
    new-instance v2, Landroid/graphics/Paint;

    .line 127
    .line 128
    invoke-direct {v2, v7}, Landroid/graphics/Paint;-><init>(I)V

    .line 129
    .line 130
    .line 131
    iput-object v2, p0, La1/d;->d:Landroid/graphics/Paint;

    .line 132
    .line 133
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 134
    .line 135
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 136
    .line 137
    .line 138
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    .line 139
    .line 140
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 141
    .line 142
    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 146
    .line 147
    .line 148
    new-instance v2, Landroid/graphics/Paint;

    .line 149
    .line 150
    invoke-direct {v2, v7}, Landroid/graphics/Paint;-><init>(I)V

    .line 151
    .line 152
    .line 153
    iput-object v2, p0, La1/d;->e:Landroid/graphics/Paint;

    .line 154
    .line 155
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 156
    .line 157
    .line 158
    new-instance v2, Landroid/graphics/Paint;

    .line 159
    .line 160
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 161
    .line 162
    .line 163
    iput-object v2, p0, La1/d;->f:Landroid/graphics/Paint;

    .line 164
    .line 165
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 166
    .line 167
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 168
    .line 169
    .line 170
    sget-object v6, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 171
    .line 172
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 173
    .line 174
    .line 175
    new-instance v2, Landroid/graphics/Paint;

    .line 176
    .line 177
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 178
    .line 179
    .line 180
    iput-object v2, p0, La1/d;->g:Landroid/graphics/Paint;

    .line 181
    .line 182
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 186
    .line 187
    .line 188
    new-instance v2, Landroid/graphics/Paint;

    .line 189
    .line 190
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 191
    .line 192
    .line 193
    iput-object v2, p0, La1/d;->h:Landroid/graphics/Paint;

    .line 194
    .line 195
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    const v3, 0x7f0702ff

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    iput v3, p0, La1/d;->A:I

    .line 213
    .line 214
    const v3, 0x7f0702fe

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    iput v3, p0, La1/d;->t:I

    .line 222
    .line 223
    iput v3, p0, La1/d;->E:I

    .line 224
    .line 225
    const v3, 0x7f0702fa

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 229
    .line 230
    .line 231
    move-result v3

    .line 232
    iput v3, p0, La1/d;->u:I

    .line 233
    .line 234
    const v3, 0x7f0702fd

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    iput v3, p0, La1/d;->v:I

    .line 242
    .line 243
    const v3, 0x7f0702fc

    .line 244
    .line 245
    .line 246
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 247
    .line 248
    .line 249
    move-result v5

    .line 250
    iput v5, p0, La1/d;->w:I

    .line 251
    .line 252
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    iput v3, p0, La1/d;->x:I

    .line 257
    .line 258
    const v3, 0x7f0702fb

    .line 259
    .line 260
    .line 261
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 262
    .line 263
    .line 264
    move-result v3

    .line 265
    iput v3, p0, La1/d;->y:I

    .line 266
    .line 267
    const v3, 0x7f0702f6

    .line 268
    .line 269
    .line 270
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    iput v2, p0, La1/d;->N:I

    .line 275
    .line 276
    new-array v6, p1, [I

    .line 277
    .line 278
    const v5, 0x7f130452

    .line 279
    .line 280
    .line 281
    invoke-static {v1, p2, v4, v5}, LR0/p;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 282
    .line 283
    .line 284
    sget-object v3, LA0/a;->G:[I

    .line 285
    .line 286
    move-object v2, p2

    .line 287
    invoke-static/range {v1 .. v6}, LR0/p;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 291
    .line 292
    .line 293
    move-result-object p2

    .line 294
    const/16 v2, 0x8

    .line 295
    .line 296
    const v3, 0x7f130474

    .line 297
    .line 298
    .line 299
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    iput v2, p0, La1/d;->l:I

    .line 304
    .line 305
    const/4 v2, 0x3

    .line 306
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    iput v2, p0, La1/d;->R:F

    .line 311
    .line 312
    const/4 v2, 0x4

    .line 313
    const/high16 v3, 0x3f800000    # 1.0f

    .line 314
    .line 315
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    iput v2, p0, La1/d;->S:F

    .line 320
    .line 321
    iget v2, p0, La1/d;->R:F

    .line 322
    .line 323
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    filled-new-array {v2}, [Ljava/lang/Float;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    invoke-virtual {p0, v2}, La1/d;->setValues([Ljava/lang/Float;)V

    .line 332
    .line 333
    .line 334
    const/4 v2, 0x2

    .line 335
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 336
    .line 337
    .line 338
    move-result v3

    .line 339
    iput v3, p0, La1/d;->W:F

    .line 340
    .line 341
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    const/16 v4, 0x30

    .line 346
    .line 347
    invoke-static {v3, v4}, LR0/t;->b(Landroid/content/Context;I)F

    .line 348
    .line 349
    .line 350
    move-result v3

    .line 351
    float-to-double v3, v3

    .line 352
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 353
    .line 354
    .line 355
    move-result-wide v3

    .line 356
    double-to-float v3, v3

    .line 357
    const/16 v4, 0x9

    .line 358
    .line 359
    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 360
    .line 361
    .line 362
    move-result v3

    .line 363
    float-to-double v3, v3

    .line 364
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 365
    .line 366
    .line 367
    move-result-wide v3

    .line 368
    double-to-int v3, v3

    .line 369
    iput v3, p0, La1/d;->z:I

    .line 370
    .line 371
    const/16 v3, 0x18

    .line 372
    .line 373
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 374
    .line 375
    .line 376
    move-result v4

    .line 377
    if-eqz v4, :cond_0

    .line 378
    .line 379
    move v5, v3

    .line 380
    goto :goto_0

    .line 381
    :cond_0
    const/16 v5, 0x1a

    .line 382
    .line 383
    :goto_0
    if-eqz v4, :cond_1

    .line 384
    .line 385
    goto :goto_1

    .line 386
    :cond_1
    const/16 v3, 0x19

    .line 387
    .line 388
    :goto_1
    invoke-static {v1, p2, v5}, Lcom/bumptech/glide/d;->r(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 389
    .line 390
    .line 391
    move-result-object v4

    .line 392
    if-eqz v4, :cond_2

    .line 393
    .line 394
    goto :goto_2

    .line 395
    :cond_2
    const v4, 0x7f0602be

    .line 396
    .line 397
    .line 398
    invoke-static {v1, v4}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 399
    .line 400
    .line 401
    move-result-object v4

    .line 402
    :goto_2
    invoke-virtual {p0, v4}, La1/d;->setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 403
    .line 404
    .line 405
    invoke-static {v1, p2, v3}, Lcom/bumptech/glide/d;->r(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 406
    .line 407
    .line 408
    move-result-object v3

    .line 409
    if-eqz v3, :cond_3

    .line 410
    .line 411
    goto :goto_3

    .line 412
    :cond_3
    const v3, 0x7f0602bb

    .line 413
    .line 414
    .line 415
    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 416
    .line 417
    .line 418
    move-result-object v3

    .line 419
    :goto_3
    invoke-virtual {p0, v3}, La1/d;->setTrackActiveTintList(Landroid/content/res/ColorStateList;)V

    .line 420
    .line 421
    .line 422
    const/16 v3, 0xa

    .line 423
    .line 424
    invoke-static {v1, p2, v3}, Lcom/bumptech/glide/d;->r(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 425
    .line 426
    .line 427
    move-result-object v3

    .line 428
    invoke-virtual {v8, v3}, LY0/h;->l(Landroid/content/res/ColorStateList;)V

    .line 429
    .line 430
    .line 431
    const/16 v3, 0xe

    .line 432
    .line 433
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 434
    .line 435
    .line 436
    move-result v4

    .line 437
    if-eqz v4, :cond_4

    .line 438
    .line 439
    invoke-static {v1, p2, v3}, Lcom/bumptech/glide/d;->r(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 440
    .line 441
    .line 442
    move-result-object v3

    .line 443
    invoke-virtual {p0, v3}, La1/d;->setThumbStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 444
    .line 445
    .line 446
    :cond_4
    const/16 v3, 0xf

    .line 447
    .line 448
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 449
    .line 450
    .line 451
    move-result v3

    .line 452
    invoke-virtual {p0, v3}, La1/d;->setThumbStrokeWidth(F)V

    .line 453
    .line 454
    .line 455
    const/4 v3, 0x5

    .line 456
    invoke-static {v1, p2, v3}, Lcom/bumptech/glide/d;->r(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 457
    .line 458
    .line 459
    move-result-object v3

    .line 460
    if-eqz v3, :cond_5

    .line 461
    .line 462
    goto :goto_4

    .line 463
    :cond_5
    const v3, 0x7f0602bc

    .line 464
    .line 465
    .line 466
    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 467
    .line 468
    .line 469
    move-result-object v3

    .line 470
    :goto_4
    invoke-virtual {p0, v3}, La1/d;->setHaloTintList(Landroid/content/res/ColorStateList;)V

    .line 471
    .line 472
    .line 473
    const/16 v3, 0x17

    .line 474
    .line 475
    invoke-virtual {p2, v3, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 476
    .line 477
    .line 478
    move-result v3

    .line 479
    iput-boolean v3, p0, La1/d;->b0:Z

    .line 480
    .line 481
    const/16 v3, 0x12

    .line 482
    .line 483
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 484
    .line 485
    .line 486
    move-result v4

    .line 487
    if-eqz v4, :cond_6

    .line 488
    .line 489
    move v5, v3

    .line 490
    goto :goto_5

    .line 491
    :cond_6
    const/16 v5, 0x14

    .line 492
    .line 493
    :goto_5
    if-eqz v4, :cond_7

    .line 494
    .line 495
    goto :goto_6

    .line 496
    :cond_7
    const/16 v3, 0x13

    .line 497
    .line 498
    :goto_6
    invoke-static {v1, p2, v5}, Lcom/bumptech/glide/d;->r(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 499
    .line 500
    .line 501
    move-result-object v4

    .line 502
    if-eqz v4, :cond_8

    .line 503
    .line 504
    goto :goto_7

    .line 505
    :cond_8
    const v4, 0x7f0602bd

    .line 506
    .line 507
    .line 508
    invoke-static {v1, v4}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 509
    .line 510
    .line 511
    move-result-object v4

    .line 512
    :goto_7
    invoke-virtual {p0, v4}, La1/d;->setTickInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 513
    .line 514
    .line 515
    invoke-static {v1, p2, v3}, Lcom/bumptech/glide/d;->r(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 516
    .line 517
    .line 518
    move-result-object v3

    .line 519
    if-eqz v3, :cond_9

    .line 520
    .line 521
    goto :goto_8

    .line 522
    :cond_9
    const v3, 0x7f0602ba

    .line 523
    .line 524
    .line 525
    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 526
    .line 527
    .line 528
    move-result-object v3

    .line 529
    :goto_8
    invoke-virtual {p0, v3}, La1/d;->setTickActiveTintList(Landroid/content/res/ColorStateList;)V

    .line 530
    .line 531
    .line 532
    const/16 v3, 0x10

    .line 533
    .line 534
    invoke-virtual {p2, v3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 535
    .line 536
    .line 537
    move-result v3

    .line 538
    invoke-virtual {p0, v3}, La1/d;->setThumbTrackGapSize(I)V

    .line 539
    .line 540
    .line 541
    const/16 v3, 0x1d

    .line 542
    .line 543
    invoke-virtual {p2, v3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 544
    .line 545
    .line 546
    move-result v3

    .line 547
    invoke-virtual {p0, v3}, La1/d;->setTrackStopIndicatorSize(I)V

    .line 548
    .line 549
    .line 550
    const/16 v3, 0x1c

    .line 551
    .line 552
    invoke-virtual {p2, v3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 553
    .line 554
    .line 555
    move-result v3

    .line 556
    invoke-virtual {p0, v3}, La1/d;->setTrackInsideCornerSize(I)V

    .line 557
    .line 558
    .line 559
    const/16 v3, 0xd

    .line 560
    .line 561
    invoke-virtual {p2, v3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 562
    .line 563
    .line 564
    move-result v3

    .line 565
    mul-int/2addr v3, v2

    .line 566
    const/16 v4, 0x11

    .line 567
    .line 568
    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 569
    .line 570
    .line 571
    move-result v4

    .line 572
    const/16 v5, 0xc

    .line 573
    .line 574
    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 575
    .line 576
    .line 577
    move-result v3

    .line 578
    invoke-virtual {p0, v4}, La1/d;->setThumbWidth(I)V

    .line 579
    .line 580
    .line 581
    invoke-virtual {p0, v3}, La1/d;->setThumbHeight(I)V

    .line 582
    .line 583
    .line 584
    const/4 v3, 0x6

    .line 585
    invoke-virtual {p2, v3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 586
    .line 587
    .line 588
    move-result v3

    .line 589
    invoke-virtual {p0, v3}, La1/d;->setHaloRadius(I)V

    .line 590
    .line 591
    .line 592
    const/16 v3, 0xb

    .line 593
    .line 594
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 595
    .line 596
    .line 597
    move-result v0

    .line 598
    invoke-virtual {p0, v0}, La1/d;->setThumbElevation(F)V

    .line 599
    .line 600
    .line 601
    const/16 v0, 0x1b

    .line 602
    .line 603
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 604
    .line 605
    .line 606
    move-result v0

    .line 607
    invoke-virtual {p0, v0}, La1/d;->setTrackHeight(I)V

    .line 608
    .line 609
    .line 610
    iget v0, p0, La1/d;->L:I

    .line 611
    .line 612
    div-int/2addr v0, v2

    .line 613
    const/16 v3, 0x15

    .line 614
    .line 615
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 616
    .line 617
    .line 618
    move-result v0

    .line 619
    invoke-virtual {p0, v0}, La1/d;->setTickActiveRadius(I)V

    .line 620
    .line 621
    .line 622
    iget v0, p0, La1/d;->L:I

    .line 623
    .line 624
    div-int/2addr v0, v2

    .line 625
    const/16 v2, 0x16

    .line 626
    .line 627
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 628
    .line 629
    .line 630
    move-result v0

    .line 631
    invoke-virtual {p0, v0}, La1/d;->setTickInactiveRadius(I)V

    .line 632
    .line 633
    .line 634
    const/4 v0, 0x7

    .line 635
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 636
    .line 637
    .line 638
    move-result v0

    .line 639
    invoke-virtual {p0, v0}, La1/d;->setLabelBehavior(I)V

    .line 640
    .line 641
    .line 642
    invoke-virtual {p2, p1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 643
    .line 644
    .line 645
    move-result v0

    .line 646
    if-nez v0, :cond_a

    .line 647
    .line 648
    invoke-virtual {p0, p1}, La1/d;->setEnabled(Z)V

    .line 649
    .line 650
    .line 651
    :cond_a
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 652
    .line 653
    .line 654
    invoke-virtual {p0, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {p0, v7}, Landroid/view/View;->setClickable(Z)V

    .line 658
    .line 659
    .line 660
    invoke-virtual {v8}, LY0/h;->o()V

    .line 661
    .line 662
    .line 663
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 664
    .line 665
    .line 666
    move-result-object p1

    .line 667
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 668
    .line 669
    .line 670
    move-result p1

    .line 671
    iput p1, p0, La1/d;->s:I

    .line 672
    .line 673
    new-instance p1, La1/b;

    .line 674
    .line 675
    invoke-direct {p1, v9}, La1/b;-><init>(Lcom/google/android/material/slider/Slider;)V

    .line 676
    .line 677
    .line 678
    iput-object p1, p0, La1/d;->i:La1/b;

    .line 679
    .line 680
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 681
    .line 682
    .line 683
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 684
    .line 685
    .line 686
    move-result-object p1

    .line 687
    const-string p2, "accessibility"

    .line 688
    .line 689
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 690
    .line 691
    .line 692
    move-result-object p1

    .line 693
    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 694
    .line 695
    iput-object p1, p0, La1/d;->j:Landroid/view/accessibility/AccessibilityManager;

    .line 696
    .line 697
    return-void
.end method


# virtual methods
.method public final A(F)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/math/BigDecimal;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Ljava/math/BigDecimal;

    .line 11
    .line 12
    iget v1, p0, La1/d;->R:F

    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {p1, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v1, Ljava/math/MathContext;->DECIMAL64:Ljava/math/MathContext;

    .line 22
    .line 23
    invoke-virtual {v0, p1, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    invoke-virtual {p0, v0, v1}, La1/d;->i(D)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    return p1
.end method

.method public final B(F)F
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, La1/d;->o(F)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget v0, p0, La1/d;->e0:I

    .line 6
    .line 7
    int-to-float v0, v0

    .line 8
    mul-float/2addr p1, v0

    .line 9
    iget v0, p0, La1/d;->E:I

    .line 10
    .line 11
    int-to-float v0, v0

    .line 12
    add-float/2addr p1, v0

    .line 13
    return p1
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, -0x1

    .line 11
    if-ne v0, v3, :cond_0

    .line 12
    .line 13
    if-ne v1, v3, :cond_0

    .line 14
    .line 15
    iget v0, p0, La1/d;->F:I

    .line 16
    .line 17
    iget v1, p0, La1/d;->G:I

    .line 18
    .line 19
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget v3, p0, La1/d;->F:I

    .line 24
    .line 25
    iget v4, p0, La1/d;->G:I

    .line 26
    .line 27
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    int-to-float v3, v3

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    int-to-float v4, v4

    .line 37
    div-float/2addr v3, v4

    .line 38
    int-to-float v0, v0

    .line 39
    mul-float/2addr v0, v3

    .line 40
    float-to-int v0, v0

    .line 41
    int-to-float v1, v1

    .line 42
    mul-float/2addr v1, v3

    .line 43
    float-to-int v1, v1

    .line 44
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final b()I
    .locals 4

    .line 1
    iget v0, p0, La1/d;->B:I

    .line 2
    .line 3
    div-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iget v1, p0, La1/d;->C:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eq v1, v2, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x3

    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, La1/d;->m:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lg1/a;

    .line 21
    .line 22
    invoke-virtual {v1}, Lg1/a;->getIntrinsicHeight()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    :cond_1
    add-int/2addr v0, v3

    .line 27
    return v0
.end method

.method public final c(Z)Landroid/animation/ValueAnimator;
    .locals 5

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    move v2, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v2, v0

    .line 9
    :goto_0
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-object v3, p0, La1/d;->r:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    iget-object v3, p0, La1/d;->q:Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    :goto_1
    if-eqz v3, :cond_2

    .line 17
    .line 18
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_2

    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/lang/Float;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 35
    .line 36
    .line 37
    :cond_2
    if-eqz p1, :cond_3

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_3
    move v0, v1

    .line 41
    :goto_2
    const/4 v1, 0x2

    .line 42
    new-array v1, v1, [F

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    aput v2, v1, v3

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    aput v0, v1, v2

    .line 49
    .line 50
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz p1, :cond_4

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const v1, 0x7f040307

    .line 61
    .line 62
    .line 63
    const/16 v2, 0x53

    .line 64
    .line 65
    invoke-static {p1, v1, v2}, Lcom/bumptech/glide/c;->N(Landroid/content/Context;II)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const v2, 0x7f040311

    .line 74
    .line 75
    .line 76
    sget-object v3, LB0/a;->e:Landroid/view/animation/DecelerateInterpolator;

    .line 77
    .line 78
    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/c;->O(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    goto :goto_3

    .line 83
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const v1, 0x7f04030a

    .line 88
    .line 89
    .line 90
    const/16 v2, 0x75

    .line 91
    .line 92
    invoke-static {p1, v1, v2}, Lcom/bumptech/glide/c;->N(Landroid/content/Context;II)I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    const v2, 0x7f04030f

    .line 101
    .line 102
    .line 103
    sget-object v3, LB0/a;->c:LL/a;

    .line 104
    .line 105
    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/c;->O(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    :goto_3
    int-to-long v2, p1

    .line 110
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 114
    .line 115
    .line 116
    new-instance p1, LH0/c;

    .line 117
    .line 118
    const/4 v1, 0x4

    .line 119
    invoke-direct {p1, v1, p0}, LH0/c;-><init>(ILjava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 123
    .line 124
    .line 125
    return-object v0
.end method

.method public final d(Landroid/graphics/Canvas;IIFLandroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    .line 3
    .line 4
    iget v0, p0, La1/d;->E:I

    .line 5
    .line 6
    invoke-virtual {p0, p4}, La1/d;->o(F)F

    .line 7
    .line 8
    .line 9
    move-result p4

    .line 10
    int-to-float p2, p2

    .line 11
    mul-float/2addr p4, p2

    .line 12
    float-to-int p2, p4

    .line 13
    add-int/2addr v0, p2

    .line 14
    int-to-float p2, v0

    .line 15
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 16
    .line 17
    .line 18
    move-result-object p4

    .line 19
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    .line 20
    .line 21
    .line 22
    move-result p4

    .line 23
    int-to-float p4, p4

    .line 24
    const/high16 v0, 0x40000000    # 2.0f

    .line 25
    .line 26
    div-float/2addr p4, v0

    .line 27
    sub-float/2addr p2, p4

    .line 28
    int-to-float p3, p3

    .line 29
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 30
    .line 31
    .line 32
    move-result-object p4

    .line 33
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    .line 34
    .line 35
    .line 36
    move-result p4

    .line 37
    int-to-float p4, p4

    .line 38
    div-float/2addr p4, v0

    .line 39
    sub-float/2addr p3, p4

    .line 40
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, La1/d;->i:La1/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LD/b;->d(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1

    .line 18
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 19
    return p1
.end method

.method public final drawableStateChanged()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, La1/d;->l0:Landroid/content/res/ColorStateList;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, La1/d;->h(Landroid/content/res/ColorStateList;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, La1/d;->b:Landroid/graphics/Paint;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, La1/d;->k0:Landroid/content/res/ColorStateList;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, La1/d;->h(Landroid/content/res/ColorStateList;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v1, p0, La1/d;->c:Landroid/graphics/Paint;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, La1/d;->j0:Landroid/content/res/ColorStateList;

    .line 27
    .line 28
    invoke-virtual {p0, v0}, La1/d;->h(Landroid/content/res/ColorStateList;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget-object v1, p0, La1/d;->f:Landroid/graphics/Paint;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, La1/d;->i0:Landroid/content/res/ColorStateList;

    .line 38
    .line 39
    invoke-virtual {p0, v0}, La1/d;->h(Landroid/content/res/ColorStateList;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iget-object v1, p0, La1/d;->g:Landroid/graphics/Paint;

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, La1/d;->k0:Landroid/content/res/ColorStateList;

    .line 49
    .line 50
    invoke-virtual {p0, v0}, La1/d;->h(Landroid/content/res/ColorStateList;)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iget-object v1, p0, La1/d;->h:Landroid/graphics/Paint;

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, La1/d;->m:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    const/4 v2, 0x0

    .line 66
    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    add-int/lit8 v2, v2, 0x1

    .line 73
    .line 74
    check-cast v3, Lg1/a;

    .line 75
    .line 76
    invoke-virtual {v3}, LY0/h;->isStateful()Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_0

    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, La1/d;->p0:LY0/h;

    .line 91
    .line 92
    invoke-virtual {v0}, LY0/h;->isStateful()Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_2

    .line 97
    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 103
    .line 104
    .line 105
    :cond_2
    iget-object v0, p0, La1/d;->h0:Landroid/content/res/ColorStateList;

    .line 106
    .line 107
    invoke-virtual {p0, v0}, La1/d;->h(Landroid/content/res/ColorStateList;)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    iget-object v1, p0, La1/d;->e:Landroid/graphics/Paint;

    .line 112
    .line 113
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    .line 115
    .line 116
    const/16 v0, 0x3f

    .line 117
    .line 118
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public final e()V
    .locals 5

    .line 1
    iget-boolean v0, p0, La1/d;->p:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, La1/d;->p:Z

    .line 7
    .line 8
    invoke-virtual {p0, v0}, La1/d;->c(Z)Landroid/animation/ValueAnimator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, La1/d;->q:Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, La1/d;->r:Landroid/animation/ValueAnimator;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, La1/d;->m:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    :goto_0
    iget-object v3, p0, La1/d;->T:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-ge v2, v3, :cond_2

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    iget v3, p0, La1/d;->V:I

    .line 42
    .line 43
    if-ne v2, v3, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Lg1/a;

    .line 51
    .line 52
    iget-object v4, p0, La1/d;->T:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Ljava/lang/Float;

    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    invoke-virtual {p0, v3, v4}, La1/d;->q(Lg1/a;F)V

    .line 65
    .line 66
    .line 67
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_3

    .line 75
    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lg1/a;

    .line 81
    .line 82
    iget-object v1, p0, La1/d;->T:Ljava/util/ArrayList;

    .line 83
    .line 84
    iget v2, p0, La1/d;->V:I

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    check-cast v1, Ljava/lang/Float;

    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    invoke-virtual {p0, v0, v1}, La1/d;->q(Lg1/a;F)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iget-object v2, p0, La1/d;->T:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    const-string v2, "Not enough labels(%d) to display all the values(%d)"

    .line 125
    .line 126
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw v1
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-boolean v0, p0, La1/d;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, La1/d;->p:Z

    .line 7
    .line 8
    invoke-virtual {p0, v0}, La1/d;->c(Z)Landroid/animation/ValueAnimator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, La1/d;->r:Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, La1/d;->q:Landroid/animation/ValueAnimator;

    .line 16
    .line 17
    new-instance v1, LE0/a;

    .line 18
    .line 19
    const/4 v2, 0x6

    .line 20
    invoke-direct {v1, v2, p0}, LE0/a;-><init>(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, La1/d;->r:Landroid/animation/ValueAnimator;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final g()[F
    .locals 6

    .line 1
    iget-object v0, p0, La1/d;->T:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Float;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v2, p0, La1/d;->T:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x1

    .line 21
    sub-int/2addr v3, v4

    .line 22
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/Float;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iget-object v3, p0, La1/d;->T:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-ne v3, v4, :cond_0

    .line 39
    .line 40
    iget v0, p0, La1/d;->R:F

    .line 41
    .line 42
    :cond_0
    invoke-virtual {p0, v0}, La1/d;->o(F)F

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-virtual {p0, v2}, La1/d;->o(F)F

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-virtual {p0}, La1/d;->k()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    const/4 v5, 0x2

    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    new-array v3, v5, [F

    .line 58
    .line 59
    aput v2, v3, v1

    .line 60
    .line 61
    aput v0, v3, v4

    .line 62
    .line 63
    return-object v3

    .line 64
    :cond_1
    new-array v3, v5, [F

    .line 65
    .line 66
    aput v0, v3, v1

    .line 67
    .line 68
    aput v2, v3, v4

    .line 69
    .line 70
    return-object v3
.end method

.method public final getAccessibilityFocusedVirtualViewId()I
    .locals 1

    .line 1
    iget-object v0, p0, La1/d;->i:La1/b;

    .line 2
    .line 3
    iget v0, v0, LD/b;->h:I

    .line 4
    .line 5
    return v0
.end method

.method public getMinSeparation()F
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public abstract getThumbRadius()I
.end method

.method public getValues()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, La1/d;->T:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final h(Landroid/content/res/ColorStateList;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final i(D)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/math/BigDecimal;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Ljava/math/BigDecimal;

    .line 11
    .line 12
    iget p2, p0, La1/d;->W:F

    .line 13
    .line 14
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-direct {p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object p2, Ljava/math/MathContext;->DECIMAL64:Ljava/math/MathContext;

    .line 22
    .line 23
    invoke-virtual {v0, p1, p2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    .line 28
    .line 29
    .line 30
    move-result-wide p1

    .line 31
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    long-to-double v0, v0

    .line 36
    sub-double/2addr v0, p1

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    .line 38
    .line 39
    .line 40
    move-result-wide p1

    .line 41
    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    cmpg-double p1, p1, v0

    .line 47
    .line 48
    if-gez p1, :cond_0

    .line 49
    .line 50
    const/4 p1, 0x1

    .line 51
    return p1

    .line 52
    :cond_0
    const/4 p1, 0x0

    .line 53
    return p1
.end method

.method public final j(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    const/4 v1, 0x3

    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    .line 15
    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    move-object v1, p1

    .line 19
    check-cast v1, Landroid/view/ViewGroup;

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-virtual {v1, v2}, Landroid/view/View;->canScrollVertically(I)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    const/4 v3, -0x1

    .line 29
    invoke-virtual {v1, v3}, Landroid/view/View;->canScrollVertically(I)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    return v2

    .line 42
    :cond_2
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    goto :goto_0

    .line 47
    :cond_3
    :goto_1
    return v0
.end method

.method public final k()Z
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public final l()V
    .locals 7

    .line 1
    iget v0, p0, La1/d;->W:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpg-float v0, v0, v1

    .line 5
    .line 6
    if-gtz v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {p0}, La1/d;->z()V

    .line 10
    .line 11
    .line 12
    iget v0, p0, La1/d;->S:F

    .line 13
    .line 14
    iget v1, p0, La1/d;->R:F

    .line 15
    .line 16
    sub-float/2addr v0, v1

    .line 17
    iget v1, p0, La1/d;->W:F

    .line 18
    .line 19
    div-float/2addr v0, v1

    .line 20
    const/high16 v1, 0x3f800000    # 1.0f

    .line 21
    .line 22
    add-float/2addr v0, v1

    .line 23
    float-to-int v0, v0

    .line 24
    iget v1, p0, La1/d;->e0:I

    .line 25
    .line 26
    iget v2, p0, La1/d;->y:I

    .line 27
    .line 28
    div-int/2addr v1, v2

    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget-object v1, p0, La1/d;->a0:[F

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    array-length v1, v1

    .line 40
    mul-int/lit8 v2, v0, 0x2

    .line 41
    .line 42
    if-eq v1, v2, :cond_2

    .line 43
    .line 44
    :cond_1
    mul-int/lit8 v1, v0, 0x2

    .line 45
    .line 46
    new-array v1, v1, [F

    .line 47
    .line 48
    iput-object v1, p0, La1/d;->a0:[F

    .line 49
    .line 50
    :cond_2
    iget v1, p0, La1/d;->e0:I

    .line 51
    .line 52
    int-to-float v1, v1

    .line 53
    add-int/lit8 v2, v0, -0x1

    .line 54
    .line 55
    int-to-float v2, v2

    .line 56
    div-float/2addr v1, v2

    .line 57
    const/4 v2, 0x0

    .line 58
    :goto_0
    mul-int/lit8 v3, v0, 0x2

    .line 59
    .line 60
    if-ge v2, v3, :cond_3

    .line 61
    .line 62
    iget-object v3, p0, La1/d;->a0:[F

    .line 63
    .line 64
    iget v4, p0, La1/d;->E:I

    .line 65
    .line 66
    int-to-float v4, v4

    .line 67
    int-to-float v5, v2

    .line 68
    const/high16 v6, 0x40000000    # 2.0f

    .line 69
    .line 70
    div-float/2addr v5, v6

    .line 71
    mul-float/2addr v5, v1

    .line 72
    add-float/2addr v5, v4

    .line 73
    aput v5, v3, v2

    .line 74
    .line 75
    add-int/lit8 v4, v2, 0x1

    .line 76
    .line 77
    invoke-virtual {p0}, La1/d;->b()I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    int-to-float v5, v5

    .line 82
    aput v5, v3, v4

    .line 83
    .line 84
    add-int/lit8 v2, v2, 0x2

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    :goto_1
    return-void
.end method

.method public final m(I)Z
    .locals 11

    .line 1
    iget v0, p0, La1/d;->V:I

    .line 2
    .line 3
    int-to-long v1, v0

    .line 4
    int-to-long v3, p1

    .line 5
    add-long v5, v1, v3

    .line 6
    .line 7
    iget-object p1, p0, La1/d;->T:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v1, 0x1

    .line 14
    sub-int/2addr p1, v1

    .line 15
    int-to-long v9, p1

    .line 16
    const-wide/16 v7, 0x0

    .line 17
    .line 18
    invoke-static/range {v5 .. v10}, Landroidx/core/math/MathUtils;->clamp(JJJ)J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    long-to-int p1, v2

    .line 23
    iput p1, p0, La1/d;->V:I

    .line 24
    .line 25
    if-ne p1, v0, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    return p1

    .line 29
    :cond_0
    iget v0, p0, La1/d;->U:I

    .line 30
    .line 31
    const/4 v2, -0x1

    .line 32
    if-eq v0, v2, :cond_1

    .line 33
    .line 34
    iput p1, p0, La1/d;->U:I

    .line 35
    .line 36
    :cond_1
    invoke-virtual {p0}, La1/d;->v()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 40
    .line 41
    .line 42
    return v1
.end method

.method public final n(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, La1/d;->k()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/high16 v0, -0x80000000

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    const p1, 0x7fffffff

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    neg-int p1, p1

    .line 16
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, La1/d;->m(I)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final o(F)F
    .locals 2

    .line 1
    iget v0, p0, La1/d;->R:F

    .line 2
    .line 3
    sub-float/2addr p1, v0

    .line 4
    iget v1, p0, La1/d;->S:F

    .line 5
    .line 6
    sub-float/2addr v1, v0

    .line 7
    div-float/2addr p1, v1

    .line 8
    invoke-virtual {p0}, La1/d;->k()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/high16 v0, 0x3f800000    # 1.0f

    .line 15
    .line 16
    sub-float/2addr v0, p1

    .line 17
    return v0

    .line 18
    :cond_0
    return p1
.end method

.method public final onAttachedToWindow()V
    .locals 7

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, La1/d;->u0:La1/a;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, La1/d;->m:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    move v3, v2

    .line 21
    :goto_0
    if-ge v3, v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    add-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    check-cast v4, Lg1/a;

    .line 30
    .line 31
    invoke-static {p0}, LR0/t;->c(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    if-nez v5, :cond_0

    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    const/4 v6, 0x2

    .line 45
    new-array v6, v6, [I

    .line 46
    .line 47
    invoke-virtual {v5, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 48
    .line 49
    .line 50
    aget v6, v6, v2

    .line 51
    .line 52
    iput v6, v4, Lg1/a;->K:I

    .line 53
    .line 54
    iget-object v6, v4, Lg1/a;->D:Landroid/graphics/Rect;

    .line 55
    .line 56
    invoke-virtual {v5, v6}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 57
    .line 58
    .line 59
    iget-object v4, v4, Lg1/a;->C:LF0/a;

    .line 60
    .line 61
    invoke-virtual {v5, v4}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 6

    .line 1
    iget-object v0, p0, La1/d;->k:LT0/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, La1/d;->p:Z

    .line 10
    .line 11
    iget-object v1, p0, La1/d;->m:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    :cond_1
    :goto_0
    if-ge v0, v2, :cond_4

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    check-cast v3, Lg1/a;

    .line 26
    .line 27
    invoke-static {p0}, LR0/t;->c(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    if-nez v4, :cond_2

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    new-instance v5, LA1/b;

    .line 36
    .line 37
    invoke-direct {v5, v4}, LA1/b;-><init>(Landroid/view/ViewGroup;)V

    .line 38
    .line 39
    .line 40
    move-object v4, v5

    .line 41
    :goto_1
    if-eqz v4, :cond_1

    .line 42
    .line 43
    iget-object v4, v4, LA1/b;->b:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v4, Landroid/view/ViewOverlay;

    .line 46
    .line 47
    invoke-virtual {v4, v3}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p0}, LR0/t;->c(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    if-nez v4, :cond_3

    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    iget-object v3, v3, Lg1/a;->C:LF0/a;

    .line 61
    .line 62
    invoke-virtual {v4, v3}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v1, p0, La1/d;->u0:La1/a;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 73
    .line 74
    .line 75
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-boolean v2, v0, La1/d;->g0:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, La1/d;->z()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, La1/d;->l()V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, La1/d;->b()I

    .line 19
    .line 20
    .line 21
    move-result v7

    .line 22
    iget-object v2, v0, La1/d;->T:Ljava/util/ArrayList;

    .line 23
    .line 24
    const/4 v8, 0x0

    .line 25
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/Float;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    iget-object v3, v0, La1/d;->T:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    const/4 v9, 0x1

    .line 42
    sub-int/2addr v4, v9

    .line 43
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Ljava/lang/Float;

    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 50
    .line 51
    .line 52
    move-result v10

    .line 53
    iget v3, v0, La1/d;->S:F

    .line 54
    .line 55
    cmpg-float v3, v10, v3

    .line 56
    .line 57
    const/4 v11, 0x2

    .line 58
    const/4 v12, 0x3

    .line 59
    iget-object v13, v0, La1/d;->n0:Landroid/graphics/RectF;

    .line 60
    .line 61
    if-ltz v3, :cond_2

    .line 62
    .line 63
    iget-object v3, v0, La1/d;->T:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-le v3, v9, :cond_1

    .line 70
    .line 71
    iget v3, v0, La1/d;->R:F

    .line 72
    .line 73
    cmpl-float v2, v2, v3

    .line 74
    .line 75
    if-lez v2, :cond_1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    move/from16 v18, v8

    .line 79
    .line 80
    const/high16 v17, 0x40000000    # 2.0f

    .line 81
    .line 82
    goto/16 :goto_2

    .line 83
    .line 84
    :cond_2
    :goto_0
    iget v2, v0, La1/d;->e0:I

    .line 85
    .line 86
    invoke-virtual {v0}, La1/d;->g()[F

    .line 87
    .line 88
    .line 89
    move-result-object v15

    .line 90
    iget v3, v0, La1/d;->E:I

    .line 91
    .line 92
    int-to-float v4, v3

    .line 93
    aget v5, v15, v9

    .line 94
    .line 95
    int-to-float v6, v2

    .line 96
    mul-float/2addr v5, v6

    .line 97
    add-float/2addr v5, v4

    .line 98
    add-int v4, v3, v2

    .line 99
    .line 100
    int-to-float v4, v4

    .line 101
    cmpg-float v4, v5, v4

    .line 102
    .line 103
    move/from16 v16, v6

    .line 104
    .line 105
    iget-object v6, v0, La1/d;->b:Landroid/graphics/Paint;

    .line 106
    .line 107
    if-gez v4, :cond_4

    .line 108
    .line 109
    iget v4, v0, La1/d;->I:I

    .line 110
    .line 111
    if-lez v4, :cond_3

    .line 112
    .line 113
    int-to-float v4, v4

    .line 114
    add-float/2addr v5, v4

    .line 115
    int-to-float v4, v7

    .line 116
    const/high16 v17, 0x40000000    # 2.0f

    .line 117
    .line 118
    iget v14, v0, La1/d;->D:I

    .line 119
    .line 120
    int-to-float v14, v14

    .line 121
    div-float v14, v14, v17

    .line 122
    .line 123
    move/from16 v18, v8

    .line 124
    .line 125
    sub-float v8, v4, v14

    .line 126
    .line 127
    add-int/2addr v3, v2

    .line 128
    int-to-float v2, v3

    .line 129
    add-float/2addr v2, v14

    .line 130
    add-float/2addr v14, v4

    .line 131
    invoke-virtual {v13, v5, v8, v2, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1, v6, v13, v12}, La1/d;->x(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;I)V

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_3
    move/from16 v18, v8

    .line 139
    .line 140
    const/high16 v17, 0x40000000    # 2.0f

    .line 141
    .line 142
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 143
    .line 144
    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 145
    .line 146
    .line 147
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 148
    .line 149
    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 150
    .line 151
    .line 152
    int-to-float v3, v7

    .line 153
    iget v4, v0, La1/d;->E:I

    .line 154
    .line 155
    add-int/2addr v4, v2

    .line 156
    int-to-float v4, v4

    .line 157
    move v2, v5

    .line 158
    move v5, v3

    .line 159
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_4
    move/from16 v18, v8

    .line 164
    .line 165
    const/high16 v17, 0x40000000    # 2.0f

    .line 166
    .line 167
    :goto_1
    iget v2, v0, La1/d;->E:I

    .line 168
    .line 169
    int-to-float v3, v2

    .line 170
    aget v4, v15, v18

    .line 171
    .line 172
    mul-float v4, v4, v16

    .line 173
    .line 174
    add-float/2addr v4, v3

    .line 175
    cmpl-float v3, v4, v3

    .line 176
    .line 177
    if-lez v3, :cond_6

    .line 178
    .line 179
    iget v3, v0, La1/d;->I:I

    .line 180
    .line 181
    if-lez v3, :cond_5

    .line 182
    .line 183
    int-to-float v2, v2

    .line 184
    iget v5, v0, La1/d;->D:I

    .line 185
    .line 186
    int-to-float v5, v5

    .line 187
    div-float v5, v5, v17

    .line 188
    .line 189
    sub-float/2addr v2, v5

    .line 190
    int-to-float v8, v7

    .line 191
    sub-float v14, v8, v5

    .line 192
    .line 193
    int-to-float v3, v3

    .line 194
    sub-float/2addr v4, v3

    .line 195
    add-float/2addr v5, v8

    .line 196
    invoke-virtual {v13, v2, v14, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v1, v6, v13, v11}, La1/d;->x(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;I)V

    .line 200
    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_5
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 204
    .line 205
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 206
    .line 207
    .line 208
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 209
    .line 210
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 211
    .line 212
    .line 213
    iget v2, v0, La1/d;->E:I

    .line 214
    .line 215
    int-to-float v2, v2

    .line 216
    int-to-float v3, v7

    .line 217
    move v5, v3

    .line 218
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 219
    .line 220
    .line 221
    :cond_6
    :goto_2
    iget v2, v0, La1/d;->R:F

    .line 222
    .line 223
    cmpl-float v2, v10, v2

    .line 224
    .line 225
    if-lez v2, :cond_10

    .line 226
    .line 227
    iget v2, v0, La1/d;->e0:I

    .line 228
    .line 229
    invoke-virtual {v0}, La1/d;->g()[F

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    iget v4, v0, La1/d;->E:I

    .line 234
    .line 235
    int-to-float v4, v4

    .line 236
    aget v5, v3, v9

    .line 237
    .line 238
    int-to-float v2, v2

    .line 239
    mul-float/2addr v5, v2

    .line 240
    add-float/2addr v5, v4

    .line 241
    aget v3, v3, v18

    .line 242
    .line 243
    mul-float/2addr v3, v2

    .line 244
    add-float v2, v3, v4

    .line 245
    .line 246
    iget v3, v0, La1/d;->I:I

    .line 247
    .line 248
    iget-object v6, v0, La1/d;->c:Landroid/graphics/Paint;

    .line 249
    .line 250
    if-lez v3, :cond_f

    .line 251
    .line 252
    iget-object v3, v0, La1/d;->T:Ljava/util/ArrayList;

    .line 253
    .line 254
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 255
    .line 256
    .line 257
    move-result v3

    .line 258
    if-ne v3, v9, :cond_8

    .line 259
    .line 260
    invoke-virtual {v0}, La1/d;->k()Z

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    if-eqz v3, :cond_7

    .line 265
    .line 266
    move v3, v12

    .line 267
    goto :goto_3

    .line 268
    :cond_7
    move v3, v11

    .line 269
    goto :goto_3

    .line 270
    :cond_8
    const/4 v3, 0x4

    .line 271
    :goto_3
    move/from16 v4, v18

    .line 272
    .line 273
    :goto_4
    iget-object v8, v0, La1/d;->T:Ljava/util/ArrayList;

    .line 274
    .line 275
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 276
    .line 277
    .line 278
    move-result v8

    .line 279
    if-ge v4, v8, :cond_10

    .line 280
    .line 281
    iget-object v8, v0, La1/d;->T:Ljava/util/ArrayList;

    .line 282
    .line 283
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 284
    .line 285
    .line 286
    move-result v8

    .line 287
    if-le v8, v9, :cond_a

    .line 288
    .line 289
    if-lez v4, :cond_9

    .line 290
    .line 291
    iget-object v2, v0, La1/d;->T:Ljava/util/ArrayList;

    .line 292
    .line 293
    add-int/lit8 v5, v4, -0x1

    .line 294
    .line 295
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    check-cast v2, Ljava/lang/Float;

    .line 300
    .line 301
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 302
    .line 303
    .line 304
    move-result v2

    .line 305
    invoke-virtual {v0, v2}, La1/d;->B(F)F

    .line 306
    .line 307
    .line 308
    move-result v2

    .line 309
    :cond_9
    iget-object v5, v0, La1/d;->T:Ljava/util/ArrayList;

    .line 310
    .line 311
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v5

    .line 315
    check-cast v5, Ljava/lang/Float;

    .line 316
    .line 317
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 318
    .line 319
    .line 320
    move-result v5

    .line 321
    invoke-virtual {v0, v5}, La1/d;->B(F)F

    .line 322
    .line 323
    .line 324
    move-result v5

    .line 325
    invoke-virtual {v0}, La1/d;->k()Z

    .line 326
    .line 327
    .line 328
    move-result v8

    .line 329
    if-eqz v8, :cond_a

    .line 330
    .line 331
    move/from16 v19, v5

    .line 332
    .line 333
    move v5, v2

    .line 334
    move/from16 v2, v19

    .line 335
    .line 336
    :cond_a
    invoke-static {v3}, Lu/h;->a(I)I

    .line 337
    .line 338
    .line 339
    move-result v8

    .line 340
    if-eq v8, v9, :cond_d

    .line 341
    .line 342
    if-eq v8, v11, :cond_c

    .line 343
    .line 344
    if-eq v8, v12, :cond_b

    .line 345
    .line 346
    goto :goto_6

    .line 347
    :cond_b
    iget v8, v0, La1/d;->I:I

    .line 348
    .line 349
    int-to-float v8, v8

    .line 350
    add-float/2addr v2, v8

    .line 351
    :goto_5
    sub-float/2addr v5, v8

    .line 352
    goto :goto_6

    .line 353
    :cond_c
    iget v8, v0, La1/d;->I:I

    .line 354
    .line 355
    int-to-float v8, v8

    .line 356
    add-float/2addr v2, v8

    .line 357
    iget v8, v0, La1/d;->D:I

    .line 358
    .line 359
    int-to-float v8, v8

    .line 360
    div-float v8, v8, v17

    .line 361
    .line 362
    add-float/2addr v8, v5

    .line 363
    move v5, v8

    .line 364
    goto :goto_6

    .line 365
    :cond_d
    iget v8, v0, La1/d;->D:I

    .line 366
    .line 367
    int-to-float v8, v8

    .line 368
    div-float v8, v8, v17

    .line 369
    .line 370
    sub-float/2addr v2, v8

    .line 371
    iget v8, v0, La1/d;->I:I

    .line 372
    .line 373
    int-to-float v8, v8

    .line 374
    goto :goto_5

    .line 375
    :goto_6
    cmpl-float v8, v2, v5

    .line 376
    .line 377
    if-ltz v8, :cond_e

    .line 378
    .line 379
    goto :goto_7

    .line 380
    :cond_e
    int-to-float v8, v7

    .line 381
    iget v10, v0, La1/d;->D:I

    .line 382
    .line 383
    int-to-float v10, v10

    .line 384
    div-float v10, v10, v17

    .line 385
    .line 386
    sub-float v14, v8, v10

    .line 387
    .line 388
    add-float/2addr v10, v8

    .line 389
    invoke-virtual {v13, v2, v14, v5, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0, v1, v6, v13, v3}, La1/d;->x(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;I)V

    .line 393
    .line 394
    .line 395
    :goto_7
    add-int/lit8 v4, v4, 0x1

    .line 396
    .line 397
    goto :goto_4

    .line 398
    :cond_f
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 399
    .line 400
    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 401
    .line 402
    .line 403
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 404
    .line 405
    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 406
    .line 407
    .line 408
    int-to-float v3, v7

    .line 409
    move v4, v5

    .line 410
    move v5, v3

    .line 411
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 412
    .line 413
    .line 414
    :cond_10
    iget-boolean v2, v0, La1/d;->b0:Z

    .line 415
    .line 416
    if-eqz v2, :cond_14

    .line 417
    .line 418
    iget v2, v0, La1/d;->W:F

    .line 419
    .line 420
    const/4 v3, 0x0

    .line 421
    cmpg-float v2, v2, v3

    .line 422
    .line 423
    if-gtz v2, :cond_11

    .line 424
    .line 425
    goto :goto_8

    .line 426
    :cond_11
    invoke-virtual {v0}, La1/d;->g()[F

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    aget v3, v2, v18

    .line 431
    .line 432
    iget-object v4, v0, La1/d;->a0:[F

    .line 433
    .line 434
    array-length v4, v4

    .line 435
    int-to-float v4, v4

    .line 436
    div-float v4, v4, v17

    .line 437
    .line 438
    const/high16 v5, 0x3f800000    # 1.0f

    .line 439
    .line 440
    sub-float/2addr v4, v5

    .line 441
    mul-float/2addr v4, v3

    .line 442
    float-to-double v3, v4

    .line 443
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 444
    .line 445
    .line 446
    move-result-wide v3

    .line 447
    double-to-int v3, v3

    .line 448
    aget v2, v2, v9

    .line 449
    .line 450
    iget-object v4, v0, La1/d;->a0:[F

    .line 451
    .line 452
    array-length v4, v4

    .line 453
    int-to-float v4, v4

    .line 454
    div-float v4, v4, v17

    .line 455
    .line 456
    sub-float/2addr v4, v5

    .line 457
    mul-float/2addr v4, v2

    .line 458
    float-to-double v4, v4

    .line 459
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    .line 460
    .line 461
    .line 462
    move-result-wide v4

    .line 463
    double-to-int v2, v4

    .line 464
    iget-object v4, v0, La1/d;->f:Landroid/graphics/Paint;

    .line 465
    .line 466
    if-lez v3, :cond_12

    .line 467
    .line 468
    iget-object v5, v0, La1/d;->a0:[F

    .line 469
    .line 470
    mul-int/lit8 v6, v3, 0x2

    .line 471
    .line 472
    move/from16 v8, v18

    .line 473
    .line 474
    invoke-virtual {v1, v5, v8, v6, v4}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 475
    .line 476
    .line 477
    :cond_12
    if-gt v3, v2, :cond_13

    .line 478
    .line 479
    iget-object v5, v0, La1/d;->a0:[F

    .line 480
    .line 481
    mul-int/lit8 v6, v3, 0x2

    .line 482
    .line 483
    sub-int v3, v2, v3

    .line 484
    .line 485
    add-int/2addr v3, v9

    .line 486
    mul-int/2addr v3, v11

    .line 487
    iget-object v8, v0, La1/d;->g:Landroid/graphics/Paint;

    .line 488
    .line 489
    invoke-virtual {v1, v5, v6, v3, v8}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 490
    .line 491
    .line 492
    :cond_13
    add-int/2addr v2, v9

    .line 493
    mul-int/2addr v2, v11

    .line 494
    iget-object v3, v0, La1/d;->a0:[F

    .line 495
    .line 496
    array-length v5, v3

    .line 497
    if-ge v2, v5, :cond_14

    .line 498
    .line 499
    array-length v5, v3

    .line 500
    sub-int/2addr v5, v2

    .line 501
    invoke-virtual {v1, v3, v2, v5, v4}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 502
    .line 503
    .line 504
    :cond_14
    :goto_8
    iget v2, v0, La1/d;->L:I

    .line 505
    .line 506
    if-gtz v2, :cond_16

    .line 507
    .line 508
    :cond_15
    const/4 v8, 0x0

    .line 509
    goto :goto_9

    .line 510
    :cond_16
    iget-object v2, v0, La1/d;->T:Ljava/util/ArrayList;

    .line 511
    .line 512
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 513
    .line 514
    .line 515
    move-result v2

    .line 516
    iget-object v3, v0, La1/d;->h:Landroid/graphics/Paint;

    .line 517
    .line 518
    if-lt v2, v9, :cond_17

    .line 519
    .line 520
    iget-object v2, v0, La1/d;->T:Ljava/util/ArrayList;

    .line 521
    .line 522
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 523
    .line 524
    .line 525
    move-result v4

    .line 526
    sub-int/2addr v4, v9

    .line 527
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v2

    .line 531
    check-cast v2, Ljava/lang/Float;

    .line 532
    .line 533
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 534
    .line 535
    .line 536
    move-result v2

    .line 537
    iget v4, v0, La1/d;->S:F

    .line 538
    .line 539
    cmpg-float v2, v2, v4

    .line 540
    .line 541
    if-gez v2, :cond_17

    .line 542
    .line 543
    invoke-virtual {v0, v4}, La1/d;->B(F)F

    .line 544
    .line 545
    .line 546
    move-result v2

    .line 547
    int-to-float v4, v7

    .line 548
    invoke-virtual {v1, v2, v4, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 549
    .line 550
    .line 551
    :cond_17
    iget-object v2, v0, La1/d;->T:Ljava/util/ArrayList;

    .line 552
    .line 553
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 554
    .line 555
    .line 556
    move-result v2

    .line 557
    if-le v2, v9, :cond_15

    .line 558
    .line 559
    iget-object v2, v0, La1/d;->T:Ljava/util/ArrayList;

    .line 560
    .line 561
    const/4 v8, 0x0

    .line 562
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    move-result-object v2

    .line 566
    check-cast v2, Ljava/lang/Float;

    .line 567
    .line 568
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 569
    .line 570
    .line 571
    move-result v2

    .line 572
    iget v4, v0, La1/d;->R:F

    .line 573
    .line 574
    cmpl-float v2, v2, v4

    .line 575
    .line 576
    if-lez v2, :cond_18

    .line 577
    .line 578
    invoke-virtual {v0, v4}, La1/d;->B(F)F

    .line 579
    .line 580
    .line 581
    move-result v2

    .line 582
    int-to-float v4, v7

    .line 583
    invoke-virtual {v1, v2, v4, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 584
    .line 585
    .line 586
    :cond_18
    :goto_9
    iget-boolean v2, v0, La1/d;->Q:Z

    .line 587
    .line 588
    if-nez v2, :cond_19

    .line 589
    .line 590
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 591
    .line 592
    .line 593
    move-result v2

    .line 594
    if-eqz v2, :cond_1b

    .line 595
    .line 596
    :cond_19
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 597
    .line 598
    .line 599
    move-result v2

    .line 600
    if-eqz v2, :cond_1b

    .line 601
    .line 602
    iget v2, v0, La1/d;->e0:I

    .line 603
    .line 604
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 605
    .line 606
    .line 607
    move-result-object v3

    .line 608
    instance-of v3, v3, Landroid/graphics/drawable/RippleDrawable;

    .line 609
    .line 610
    if-nez v3, :cond_1b

    .line 611
    .line 612
    iget v3, v0, La1/d;->E:I

    .line 613
    .line 614
    int-to-float v3, v3

    .line 615
    iget-object v4, v0, La1/d;->T:Ljava/util/ArrayList;

    .line 616
    .line 617
    iget v5, v0, La1/d;->V:I

    .line 618
    .line 619
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    move-result-object v4

    .line 623
    check-cast v4, Ljava/lang/Float;

    .line 624
    .line 625
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 626
    .line 627
    .line 628
    move-result v4

    .line 629
    invoke-virtual {v0, v4}, La1/d;->o(F)F

    .line 630
    .line 631
    .line 632
    move-result v4

    .line 633
    int-to-float v2, v2

    .line 634
    mul-float/2addr v4, v2

    .line 635
    add-float/2addr v4, v3

    .line 636
    float-to-int v9, v4

    .line 637
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 638
    .line 639
    const/16 v3, 0x1c

    .line 640
    .line 641
    if-ge v2, v3, :cond_1a

    .line 642
    .line 643
    iget v2, v0, La1/d;->H:I

    .line 644
    .line 645
    sub-int v3, v9, v2

    .line 646
    .line 647
    int-to-float v3, v3

    .line 648
    sub-int v4, v7, v2

    .line 649
    .line 650
    int-to-float v4, v4

    .line 651
    add-int v5, v9, v2

    .line 652
    .line 653
    int-to-float v5, v5

    .line 654
    add-int/2addr v2, v7

    .line 655
    int-to-float v2, v2

    .line 656
    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 657
    .line 658
    move/from16 v19, v5

    .line 659
    .line 660
    move v5, v2

    .line 661
    move v2, v3

    .line 662
    move v3, v4

    .line 663
    move/from16 v4, v19

    .line 664
    .line 665
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 666
    .line 667
    .line 668
    :cond_1a
    int-to-float v2, v9

    .line 669
    int-to-float v3, v7

    .line 670
    iget v4, v0, La1/d;->H:I

    .line 671
    .line 672
    int-to-float v4, v4

    .line 673
    iget-object v5, v0, La1/d;->e:Landroid/graphics/Paint;

    .line 674
    .line 675
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 676
    .line 677
    .line 678
    :cond_1b
    invoke-virtual {v0}, La1/d;->w()V

    .line 679
    .line 680
    .line 681
    iget v2, v0, La1/d;->e0:I

    .line 682
    .line 683
    :goto_a
    iget-object v3, v0, La1/d;->T:Ljava/util/ArrayList;

    .line 684
    .line 685
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 686
    .line 687
    .line 688
    move-result v3

    .line 689
    if-ge v8, v3, :cond_1f

    .line 690
    .line 691
    iget-object v3, v0, La1/d;->T:Ljava/util/ArrayList;

    .line 692
    .line 693
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 694
    .line 695
    .line 696
    move-result-object v3

    .line 697
    check-cast v3, Ljava/lang/Float;

    .line 698
    .line 699
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 700
    .line 701
    .line 702
    move-result v4

    .line 703
    iget-object v5, v0, La1/d;->q0:Landroid/graphics/drawable/Drawable;

    .line 704
    .line 705
    if-eqz v5, :cond_1c

    .line 706
    .line 707
    move v3, v7

    .line 708
    invoke-virtual/range {v0 .. v5}, La1/d;->d(Landroid/graphics/Canvas;IIFLandroid/graphics/drawable/Drawable;)V

    .line 709
    .line 710
    .line 711
    goto :goto_b

    .line 712
    :cond_1c
    move v3, v7

    .line 713
    iget-object v1, v0, La1/d;->r0:Ljava/util/List;

    .line 714
    .line 715
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 716
    .line 717
    .line 718
    move-result v1

    .line 719
    if-ge v8, v1, :cond_1d

    .line 720
    .line 721
    iget-object v1, v0, La1/d;->r0:Ljava/util/List;

    .line 722
    .line 723
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 724
    .line 725
    .line 726
    move-result-object v1

    .line 727
    move-object v5, v1

    .line 728
    check-cast v5, Landroid/graphics/drawable/Drawable;

    .line 729
    .line 730
    move-object/from16 v1, p1

    .line 731
    .line 732
    invoke-virtual/range {v0 .. v5}, La1/d;->d(Landroid/graphics/Canvas;IIFLandroid/graphics/drawable/Drawable;)V

    .line 733
    .line 734
    .line 735
    goto :goto_b

    .line 736
    :cond_1d
    move-object/from16 v1, p1

    .line 737
    .line 738
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 739
    .line 740
    .line 741
    move-result v5

    .line 742
    if-nez v5, :cond_1e

    .line 743
    .line 744
    iget v5, v0, La1/d;->E:I

    .line 745
    .line 746
    int-to-float v5, v5

    .line 747
    invoke-virtual {v0, v4}, La1/d;->o(F)F

    .line 748
    .line 749
    .line 750
    move-result v6

    .line 751
    int-to-float v7, v2

    .line 752
    mul-float/2addr v6, v7

    .line 753
    add-float/2addr v6, v5

    .line 754
    int-to-float v5, v3

    .line 755
    invoke-virtual {v0}, La1/d;->getThumbRadius()I

    .line 756
    .line 757
    .line 758
    move-result v7

    .line 759
    int-to-float v7, v7

    .line 760
    iget-object v9, v0, La1/d;->d:Landroid/graphics/Paint;

    .line 761
    .line 762
    invoke-virtual {v1, v6, v5, v7, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 763
    .line 764
    .line 765
    :cond_1e
    iget-object v5, v0, La1/d;->p0:LY0/h;

    .line 766
    .line 767
    invoke-virtual/range {v0 .. v5}, La1/d;->d(Landroid/graphics/Canvas;IIFLandroid/graphics/drawable/Drawable;)V

    .line 768
    .line 769
    .line 770
    :goto_b
    add-int/lit8 v8, v8, 0x1

    .line 771
    .line 772
    move-object/from16 v0, p0

    .line 773
    .line 774
    move-object/from16 v1, p1

    .line 775
    .line 776
    move v7, v3

    .line 777
    goto :goto_a

    .line 778
    :cond_1f
    return-void
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, La1/d;->i:La1/b;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    iput p1, p0, La1/d;->U:I

    .line 10
    .line 11
    iget p1, p0, La1/d;->V:I

    .line 12
    .line 13
    invoke-virtual {p3, p1}, LD/b;->a(I)Z

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const/4 p1, 0x1

    .line 18
    const v0, 0x7fffffff

    .line 19
    .line 20
    .line 21
    if-eq p2, p1, :cond_4

    .line 22
    .line 23
    const/4 p1, 0x2

    .line 24
    const/high16 v1, -0x80000000

    .line 25
    .line 26
    if-eq p2, p1, :cond_3

    .line 27
    .line 28
    const/16 p1, 0x11

    .line 29
    .line 30
    if-eq p2, p1, :cond_2

    .line 31
    .line 32
    const/16 p1, 0x42

    .line 33
    .line 34
    if-eq p2, p1, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p0, v1}, La1/d;->n(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {p0, v0}, La1/d;->n(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    invoke-virtual {p0, v1}, La1/d;->m(I)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_4
    invoke-virtual {p0, v0}, La1/d;->m(I)Z

    .line 50
    .line 51
    .line 52
    :goto_0
    iget p1, p0, La1/d;->V:I

    .line 53
    .line 54
    invoke-virtual {p3, p1}, LD/b;->n(I)Z

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    iget-object v0, p0, La1/d;->T:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x1

    .line 20
    if-ne v0, v2, :cond_1

    .line 21
    .line 22
    iput v1, p0, La1/d;->U:I

    .line 23
    .line 24
    :cond_1
    iget v0, p0, La1/d;->U:I

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    const/16 v4, 0x46

    .line 28
    .line 29
    const/16 v5, 0x45

    .line 30
    .line 31
    const/16 v6, 0x51

    .line 32
    .line 33
    const/16 v7, 0x42

    .line 34
    .line 35
    const/16 v8, 0x3d

    .line 36
    .line 37
    const/4 v9, -0x1

    .line 38
    if-ne v0, v9, :cond_9

    .line 39
    .line 40
    if-eq p1, v8, :cond_5

    .line 41
    .line 42
    if-eq p1, v7, :cond_4

    .line 43
    .line 44
    if-eq p1, v6, :cond_3

    .line 45
    .line 46
    if-eq p1, v5, :cond_2

    .line 47
    .line 48
    if-eq p1, v4, :cond_3

    .line 49
    .line 50
    packed-switch p1, :pswitch_data_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :pswitch_0
    invoke-virtual {p0, v2}, La1/d;->n(I)V

    .line 55
    .line 56
    .line 57
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :pswitch_1
    invoke-virtual {p0, v9}, La1/d;->n(I)V

    .line 61
    .line 62
    .line 63
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p0, v9}, La1/d;->m(I)Z

    .line 67
    .line 68
    .line 69
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    invoke-virtual {p0, v2}, La1/d;->m(I)Z

    .line 73
    .line 74
    .line 75
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    :pswitch_2
    iget v0, p0, La1/d;->V:I

    .line 79
    .line 80
    iput v0, p0, La1/d;->U:I

    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 83
    .line 84
    .line 85
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_6

    .line 93
    .line 94
    invoke-virtual {p0, v2}, La1/d;->m(I)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    goto :goto_0

    .line 103
    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_7

    .line 108
    .line 109
    invoke-virtual {p0, v9}, La1/d;->m(I)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    goto :goto_0

    .line 118
    :cond_7
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 119
    .line 120
    :goto_0
    if-eqz v3, :cond_8

    .line 121
    .line 122
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    return p1

    .line 127
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    return p1

    .line 132
    :cond_9
    iget-boolean v0, p0, La1/d;->f0:Z

    .line 133
    .line 134
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    .line 135
    .line 136
    .line 137
    move-result v10

    .line 138
    or-int/2addr v0, v10

    .line 139
    iput-boolean v0, p0, La1/d;->f0:Z

    .line 140
    .line 141
    const/high16 v10, 0x3f800000    # 1.0f

    .line 142
    .line 143
    const/4 v11, 0x0

    .line 144
    if-eqz v0, :cond_c

    .line 145
    .line 146
    iget v0, p0, La1/d;->W:F

    .line 147
    .line 148
    cmpl-float v11, v0, v11

    .line 149
    .line 150
    if-nez v11, :cond_a

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_a
    move v10, v0

    .line 154
    :goto_1
    iget v0, p0, La1/d;->S:F

    .line 155
    .line 156
    iget v11, p0, La1/d;->R:F

    .line 157
    .line 158
    sub-float/2addr v0, v11

    .line 159
    div-float/2addr v0, v10

    .line 160
    const/16 v11, 0x14

    .line 161
    .line 162
    int-to-float v11, v11

    .line 163
    cmpg-float v12, v0, v11

    .line 164
    .line 165
    if-gtz v12, :cond_b

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_b
    div-float/2addr v0, v11

    .line 169
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    int-to-float v0, v0

    .line 174
    mul-float/2addr v10, v0

    .line 175
    goto :goto_2

    .line 176
    :cond_c
    iget v0, p0, La1/d;->W:F

    .line 177
    .line 178
    cmpl-float v11, v0, v11

    .line 179
    .line 180
    if-nez v11, :cond_d

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_d
    move v10, v0

    .line 184
    :goto_2
    const/16 v0, 0x15

    .line 185
    .line 186
    if-eq p1, v0, :cond_12

    .line 187
    .line 188
    const/16 v0, 0x16

    .line 189
    .line 190
    if-eq p1, v0, :cond_10

    .line 191
    .line 192
    if-eq p1, v5, :cond_f

    .line 193
    .line 194
    if-eq p1, v4, :cond_e

    .line 195
    .line 196
    if-eq p1, v6, :cond_e

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_e
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    goto :goto_4

    .line 204
    :cond_f
    neg-float v0, v10

    .line 205
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    goto :goto_4

    .line 210
    :cond_10
    invoke-virtual {p0}, La1/d;->k()Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-eqz v0, :cond_11

    .line 215
    .line 216
    neg-float v10, v10

    .line 217
    :cond_11
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    goto :goto_4

    .line 222
    :cond_12
    invoke-virtual {p0}, La1/d;->k()Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-eqz v0, :cond_13

    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_13
    neg-float v10, v10

    .line 230
    :goto_3
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    :goto_4
    if-eqz v3, :cond_15

    .line 235
    .line 236
    iget-object p1, p0, La1/d;->T:Ljava/util/ArrayList;

    .line 237
    .line 238
    iget p2, p0, La1/d;->U:I

    .line 239
    .line 240
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    check-cast p1, Ljava/lang/Float;

    .line 245
    .line 246
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 251
    .line 252
    .line 253
    move-result p2

    .line 254
    add-float/2addr p2, p1

    .line 255
    iget p1, p0, La1/d;->U:I

    .line 256
    .line 257
    invoke-virtual {p0, p1, p2}, La1/d;->s(IF)Z

    .line 258
    .line 259
    .line 260
    move-result p1

    .line 261
    if-eqz p1, :cond_14

    .line 262
    .line 263
    invoke-virtual {p0}, La1/d;->v()V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 267
    .line 268
    .line 269
    :cond_14
    return v2

    .line 270
    :cond_15
    const/16 v0, 0x17

    .line 271
    .line 272
    if-eq p1, v0, :cond_19

    .line 273
    .line 274
    if-eq p1, v8, :cond_16

    .line 275
    .line 276
    if-eq p1, v7, :cond_19

    .line 277
    .line 278
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 279
    .line 280
    .line 281
    move-result p1

    .line 282
    return p1

    .line 283
    :cond_16
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 284
    .line 285
    .line 286
    move-result p1

    .line 287
    if-eqz p1, :cond_17

    .line 288
    .line 289
    invoke-virtual {p0, v2}, La1/d;->m(I)Z

    .line 290
    .line 291
    .line 292
    move-result p1

    .line 293
    return p1

    .line 294
    :cond_17
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 295
    .line 296
    .line 297
    move-result p1

    .line 298
    if-eqz p1, :cond_18

    .line 299
    .line 300
    invoke-virtual {p0, v9}, La1/d;->m(I)Z

    .line 301
    .line 302
    .line 303
    move-result p1

    .line 304
    return p1

    .line 305
    :cond_18
    return v1

    .line 306
    :cond_19
    iput v9, p0, La1/d;->U:I

    .line 307
    .line 308
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 309
    .line 310
    .line 311
    return v2

    .line 312
    nop

    .line 313
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, La1/d;->f0:Z

    .line 3
    .line 4
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    return p1
.end method

.method public final onMeasure(II)V
    .locals 3

    .line 1
    iget p2, p0, La1/d;->B:I

    .line 2
    .line 3
    iget v0, p0, La1/d;->C:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, La1/d;->m:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lg1/a;

    .line 19
    .line 20
    invoke-virtual {v0}, Lg1/a;->getIntrinsicHeight()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :cond_1
    add-int/2addr p2, v2

    .line 25
    const/high16 v0, 0x40000000    # 2.0f

    .line 26
    .line 27
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    check-cast p1, La1/c;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget v0, p1, La1/c;->b:F

    .line 11
    .line 12
    iput v0, p0, La1/d;->R:F

    .line 13
    .line 14
    iget v0, p1, La1/c;->c:F

    .line 15
    .line 16
    iput v0, p0, La1/d;->S:F

    .line 17
    .line 18
    iget-object v0, p1, La1/c;->d:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, La1/d;->r(Ljava/util/ArrayList;)V

    .line 21
    .line 22
    .line 23
    iget v0, p1, La1/c;->e:F

    .line 24
    .line 25
    iput v0, p0, La1/d;->W:F

    .line 26
    .line 27
    iget-boolean p1, p1, La1/c;->f:Z

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, La1/c;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget v0, p0, La1/d;->R:F

    .line 11
    .line 12
    iput v0, v1, La1/c;->b:F

    .line 13
    .line 14
    iget v0, p0, La1/d;->S:F

    .line 15
    .line 16
    iput v0, v1, La1/c;->c:F

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    iget-object v2, p0, La1/d;->T:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, v1, La1/c;->d:Ljava/util/ArrayList;

    .line 26
    .line 27
    iget v0, p0, La1/d;->W:F

    .line 28
    .line 29
    iput v0, v1, La1/c;->e:F

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput-boolean v0, v1, La1/c;->f:Z

    .line 36
    .line 37
    return-object v1
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    iget p2, p0, La1/d;->E:I

    .line 2
    .line 3
    mul-int/lit8 p2, p2, 0x2

    .line 4
    .line 5
    sub-int/2addr p1, p2

    .line 6
    const/4 p2, 0x0

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput p1, p0, La1/d;->e0:I

    .line 12
    .line 13
    invoke-virtual {p0}, La1/d;->l()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, La1/d;->v()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget v2, p0, La1/d;->E:I

    .line 14
    .line 15
    int-to-float v2, v2

    .line 16
    sub-float v2, v0, v2

    .line 17
    .line 18
    iget v3, p0, La1/d;->e0:I

    .line 19
    .line 20
    int-to-float v3, v3

    .line 21
    div-float/2addr v2, v3

    .line 22
    iput v2, p0, La1/d;->s0:F

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iput v2, p0, La1/d;->s0:F

    .line 30
    .line 31
    const/high16 v3, 0x3f800000    # 1.0f

    .line 32
    .line 33
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    iput v2, p0, La1/d;->s0:F

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const/4 v3, 0x2

    .line 44
    const/4 v4, -0x1

    .line 45
    const/4 v5, 0x1

    .line 46
    if-eqz v2, :cond_b

    .line 47
    .line 48
    iget v6, p0, La1/d;->s:I

    .line 49
    .line 50
    if-eq v2, v5, :cond_5

    .line 51
    .line 52
    if-eq v2, v3, :cond_1

    .line 53
    .line 54
    const/4 v0, 0x3

    .line 55
    if-eq v2, v0, :cond_5

    .line 56
    .line 57
    goto/16 :goto_5

    .line 58
    .line 59
    :cond_1
    iget-boolean v2, p0, La1/d;->Q:Z

    .line 60
    .line 61
    if-nez v2, :cond_3

    .line 62
    .line 63
    invoke-virtual {p0, p1}, La1/d;->j(Landroid/view/MotionEvent;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    iget v2, p0, La1/d;->O:F

    .line 70
    .line 71
    sub-float/2addr v0, v2

    .line 72
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    int-to-float v2, v6

    .line 77
    cmpg-float v0, v0, v2

    .line 78
    .line 79
    if-gez v0, :cond_2

    .line 80
    .line 81
    :goto_0
    return v1

    .line 82
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, La1/d;->p()V

    .line 90
    .line 91
    .line 92
    :cond_3
    move-object v0, p0

    .line 93
    check-cast v0, Lcom/google/android/material/slider/Slider;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/google/android/material/slider/Slider;->getActiveThumbIndex()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eq v2, v4, :cond_4

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_4
    invoke-virtual {v0, v1}, La1/d;->setActiveThumbIndex(I)V

    .line 103
    .line 104
    .line 105
    :goto_1
    iput-boolean v5, p0, La1/d;->Q:Z

    .line 106
    .line 107
    invoke-virtual {p0}, La1/d;->t()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, La1/d;->v()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 114
    .line 115
    .line 116
    goto/16 :goto_5

    .line 117
    .line 118
    :cond_5
    iput-boolean v1, p0, La1/d;->Q:Z

    .line 119
    .line 120
    iget-object v0, p0, La1/d;->P:Landroid/view/MotionEvent;

    .line 121
    .line 122
    if-eqz v0, :cond_7

    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-nez v0, :cond_7

    .line 129
    .line 130
    iget-object v0, p0, La1/d;->P:Landroid/view/MotionEvent;

    .line 131
    .line 132
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    sub-float/2addr v0, v2

    .line 141
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    int-to-float v2, v6

    .line 146
    cmpg-float v0, v0, v2

    .line 147
    .line 148
    if-gtz v0, :cond_7

    .line 149
    .line 150
    iget-object v0, p0, La1/d;->P:Landroid/view/MotionEvent;

    .line 151
    .line 152
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    sub-float/2addr v0, v3

    .line 161
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    cmpg-float v0, v0, v2

    .line 166
    .line 167
    if-gtz v0, :cond_7

    .line 168
    .line 169
    move-object v0, p0

    .line 170
    check-cast v0, Lcom/google/android/material/slider/Slider;

    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/google/android/material/slider/Slider;->getActiveThumbIndex()I

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    if-eq v2, v4, :cond_6

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_6
    invoke-virtual {v0, v1}, La1/d;->setActiveThumbIndex(I)V

    .line 180
    .line 181
    .line 182
    :goto_2
    invoke-virtual {p0}, La1/d;->p()V

    .line 183
    .line 184
    .line 185
    :cond_7
    iget v0, p0, La1/d;->U:I

    .line 186
    .line 187
    if-eq v0, v4, :cond_a

    .line 188
    .line 189
    invoke-virtual {p0}, La1/d;->t()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, La1/d;->v()V

    .line 193
    .line 194
    .line 195
    iget v0, p0, La1/d;->I:I

    .line 196
    .line 197
    if-lez v0, :cond_8

    .line 198
    .line 199
    iget v0, p0, La1/d;->J:I

    .line 200
    .line 201
    if-eq v0, v4, :cond_8

    .line 202
    .line 203
    iget v1, p0, La1/d;->K:I

    .line 204
    .line 205
    if-eq v1, v4, :cond_8

    .line 206
    .line 207
    invoke-virtual {p0, v0}, La1/d;->setThumbWidth(I)V

    .line 208
    .line 209
    .line 210
    iget v0, p0, La1/d;->K:I

    .line 211
    .line 212
    invoke-virtual {p0, v0}, La1/d;->setThumbTrackGapSize(I)V

    .line 213
    .line 214
    .line 215
    :cond_8
    iput v4, p0, La1/d;->U:I

    .line 216
    .line 217
    iget-object v0, p0, La1/d;->o:Ljava/util/ArrayList;

    .line 218
    .line 219
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    if-nez v1, :cond_9

    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_9
    invoke-static {v0}, LE/b;->g(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    throw p1

    .line 235
    :cond_a
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 236
    .line 237
    .line 238
    goto :goto_5

    .line 239
    :cond_b
    iput v0, p0, La1/d;->O:F

    .line 240
    .line 241
    invoke-virtual {p0, p1}, La1/d;->j(Landroid/view/MotionEvent;)Z

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-eqz v0, :cond_c

    .line 246
    .line 247
    goto :goto_5

    .line 248
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 253
    .line 254
    .line 255
    move-object v0, p0

    .line 256
    check-cast v0, Lcom/google/android/material/slider/Slider;

    .line 257
    .line 258
    invoke-virtual {v0}, Lcom/google/android/material/slider/Slider;->getActiveThumbIndex()I

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    if-eq v2, v4, :cond_d

    .line 263
    .line 264
    goto :goto_4

    .line 265
    :cond_d
    invoke-virtual {v0, v1}, La1/d;->setActiveThumbIndex(I)V

    .line 266
    .line 267
    .line 268
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 269
    .line 270
    .line 271
    iput-boolean v5, p0, La1/d;->Q:Z

    .line 272
    .line 273
    invoke-virtual {p0}, La1/d;->t()V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p0}, La1/d;->v()V

    .line 277
    .line 278
    .line 279
    iget v0, p0, La1/d;->I:I

    .line 280
    .line 281
    if-lez v0, :cond_e

    .line 282
    .line 283
    iget v1, p0, La1/d;->F:I

    .line 284
    .line 285
    iput v1, p0, La1/d;->J:I

    .line 286
    .line 287
    iput v0, p0, La1/d;->K:I

    .line 288
    .line 289
    int-to-float v0, v1

    .line 290
    const/high16 v1, 0x3f000000    # 0.5f

    .line 291
    .line 292
    mul-float/2addr v0, v1

    .line 293
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    iget v1, p0, La1/d;->F:I

    .line 298
    .line 299
    sub-int/2addr v1, v0

    .line 300
    invoke-virtual {p0, v0}, La1/d;->setThumbWidth(I)V

    .line 301
    .line 302
    .line 303
    iget v0, p0, La1/d;->I:I

    .line 304
    .line 305
    div-int/2addr v1, v3

    .line 306
    sub-int/2addr v0, v1

    .line 307
    invoke-virtual {p0, v0}, La1/d;->setThumbTrackGapSize(I)V

    .line 308
    .line 309
    .line 310
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p0}, La1/d;->p()V

    .line 314
    .line 315
    .line 316
    :goto_5
    iget-boolean v0, p0, La1/d;->Q:Z

    .line 317
    .line 318
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 319
    .line 320
    .line 321
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    iput-object p1, p0, La1/d;->P:Landroid/view/MotionEvent;

    .line 326
    .line 327
    return v5
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_2

    .line 5
    .line 6
    invoke-static {p0}, LR0/t;->c(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p2, LA1/b;

    .line 15
    .line 16
    invoke-direct {p2, p1}, LA1/b;-><init>(Landroid/view/ViewGroup;)V

    .line 17
    .line 18
    .line 19
    move-object p1, p2

    .line 20
    :goto_0
    if-nez p1, :cond_1

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_1
    iget-object p2, p0, La1/d;->m:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x0

    .line 30
    :goto_1
    if-ge v1, v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    check-cast v2, Lg1/a;

    .line 39
    .line 40
    iget-object v3, p1, LA1/b;->b:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v3, Landroid/view/ViewOverlay;

    .line 43
    .line 44
    invoke-virtual {v3, v2}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    :goto_2
    return-void
.end method

.method public final p()V
    .locals 2

    .line 1
    iget-object v0, p0, La1/d;->o:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-static {v0}, LE/b;->g(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    throw v0
.end method

.method public final q(Lg1/a;F)V
    .locals 3

    .line 1
    float-to-int v0, p2

    .line 2
    int-to-float v0, v0

    .line 3
    cmpl-float v0, v0, p2

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "%.0f"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "%.2f"

    .line 11
    .line 12
    :goto_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p1, Lg1/a;->y:Ljava/lang/CharSequence;

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    iput-object v0, p1, Lg1/a;->y:Ljava/lang/CharSequence;

    .line 33
    .line 34
    iget-object v0, p1, Lg1/a;->B:LR0/m;

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    iput-boolean v1, v0, LR0/m;->e:Z

    .line 38
    .line 39
    invoke-virtual {p1}, LY0/h;->invalidateSelf()V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget v0, p0, La1/d;->E:I

    .line 43
    .line 44
    invoke-virtual {p0, p2}, La1/d;->o(F)F

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    iget v1, p0, La1/d;->e0:I

    .line 49
    .line 50
    int-to-float v1, v1

    .line 51
    mul-float/2addr p2, v1

    .line 52
    float-to-int p2, p2

    .line 53
    add-int/2addr v0, p2

    .line 54
    invoke-virtual {p1}, Lg1/a;->getIntrinsicWidth()I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    div-int/lit8 p2, p2, 0x2

    .line 59
    .line 60
    sub-int/2addr v0, p2

    .line 61
    invoke-virtual {p0}, La1/d;->b()I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    iget v1, p0, La1/d;->G:I

    .line 66
    .line 67
    div-int/lit8 v1, v1, 0x2

    .line 68
    .line 69
    iget v2, p0, La1/d;->N:I

    .line 70
    .line 71
    add-int/2addr v1, v2

    .line 72
    sub-int/2addr p2, v1

    .line 73
    invoke-virtual {p1}, Lg1/a;->getIntrinsicHeight()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    sub-int v1, p2, v1

    .line 78
    .line 79
    invoke-virtual {p1}, Lg1/a;->getIntrinsicWidth()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    add-int/2addr v2, v0

    .line 84
    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 85
    .line 86
    .line 87
    new-instance p2, Landroid/graphics/Rect;

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-direct {p2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 94
    .line 95
    .line 96
    invoke-static {p0}, LR0/t;->c(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v0, p0, p2}, LR0/d;->b(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 104
    .line 105
    .line 106
    invoke-static {p0}, LR0/t;->c(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    if-nez p2, :cond_2

    .line 111
    .line 112
    const/4 p2, 0x0

    .line 113
    goto :goto_1

    .line 114
    :cond_2
    new-instance v0, LA1/b;

    .line 115
    .line 116
    invoke-direct {v0, p2}, LA1/b;-><init>(Landroid/view/ViewGroup;)V

    .line 117
    .line 118
    .line 119
    move-object p2, v0

    .line 120
    :goto_1
    iget-object p2, p2, LA1/b;->b:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast p2, Landroid/view/ViewOverlay;

    .line 123
    .line 124
    invoke-virtual {p2, p1}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public final r(Ljava/util/ArrayList;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_10

    .line 6
    .line 7
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, La1/d;->T:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, La1/d;->T:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iput-object p1, p0, La1/d;->T:Ljava/util/ArrayList;

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, La1/d;->g0:Z

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    iput v0, p0, La1/d;->V:I

    .line 38
    .line 39
    invoke-virtual {p0}, La1/d;->v()V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, La1/d;->m:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    iget-object v3, p0, La1/d;->T:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    const/4 v4, 0x0

    .line 55
    if-le v2, v3, :cond_5

    .line 56
    .line 57
    iget-object v2, p0, La1/d;->T:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_4

    .line 80
    .line 81
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    check-cast v5, Lg1/a;

    .line 86
    .line 87
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    if-eqz v6, :cond_1

    .line 92
    .line 93
    invoke-static {p0}, LR0/t;->c(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    if-nez v6, :cond_2

    .line 98
    .line 99
    move-object v7, v4

    .line 100
    goto :goto_1

    .line 101
    :cond_2
    new-instance v7, LA1/b;

    .line 102
    .line 103
    invoke-direct {v7, v6}, LA1/b;-><init>(Landroid/view/ViewGroup;)V

    .line 104
    .line 105
    .line 106
    :goto_1
    if-eqz v7, :cond_1

    .line 107
    .line 108
    iget-object v6, v7, LA1/b;->b:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v6, Landroid/view/ViewOverlay;

    .line 111
    .line 112
    invoke-virtual {v6, v5}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 113
    .line 114
    .line 115
    invoke-static {p0}, LR0/t;->c(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    if-nez v6, :cond_3

    .line 120
    .line 121
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_3
    iget-object v5, v5, Lg1/a;->C:LF0/a;

    .line 126
    .line 127
    invoke-virtual {v6, v5}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 132
    .line 133
    .line 134
    :cond_5
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    iget-object v3, p0, La1/d;->T:Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-ge v2, v3, :cond_b

    .line 145
    .line 146
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    new-instance v3, Lg1/a;

    .line 151
    .line 152
    iget v9, p0, La1/d;->l:I

    .line 153
    .line 154
    invoke-direct {v3, v2, v9}, Lg1/a;-><init>(Landroid/content/Context;I)V

    .line 155
    .line 156
    .line 157
    sget-object v7, LA0/a;->O:[I

    .line 158
    .line 159
    new-array v10, v0, [I

    .line 160
    .line 161
    iget-object v5, v3, Lg1/a;->z:Landroid/content/Context;

    .line 162
    .line 163
    const/4 v6, 0x0

    .line 164
    const/4 v8, 0x0

    .line 165
    invoke-static/range {v5 .. v10}, LR0/p;->e(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    iget-object v5, v3, Lg1/a;->z:Landroid/content/Context;

    .line 170
    .line 171
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    const v7, 0x7f070316

    .line 176
    .line 177
    .line 178
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 179
    .line 180
    .line 181
    move-result v6

    .line 182
    iput v6, v3, Lg1/a;->J:I

    .line 183
    .line 184
    const/16 v6, 0x8

    .line 185
    .line 186
    invoke-virtual {v2, v6, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    iput-boolean v6, v3, Lg1/a;->I:Z

    .line 191
    .line 192
    if-eqz v6, :cond_6

    .line 193
    .line 194
    iget-object v6, v3, LY0/h;->b:LY0/g;

    .line 195
    .line 196
    iget-object v6, v6, LY0/g;->a:LY0/m;

    .line 197
    .line 198
    invoke-virtual {v6}, LY0/m;->e()LY0/l;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    invoke-virtual {v3}, Lg1/a;->u()LY0/i;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    iput-object v7, v6, LY0/l;->k:LY0/e;

    .line 207
    .line 208
    invoke-virtual {v6}, LY0/l;->a()LY0/m;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    invoke-virtual {v3, v6}, LY0/h;->setShapeAppearanceModel(LY0/m;)V

    .line 213
    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_6
    iput v0, v3, Lg1/a;->J:I

    .line 217
    .line 218
    :goto_3
    const/4 v6, 0x6

    .line 219
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    iget-object v7, v3, Lg1/a;->y:Ljava/lang/CharSequence;

    .line 224
    .line 225
    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 226
    .line 227
    .line 228
    move-result v7

    .line 229
    iget-object v8, v3, Lg1/a;->B:LR0/m;

    .line 230
    .line 231
    if-nez v7, :cond_7

    .line 232
    .line 233
    iput-object v6, v3, Lg1/a;->y:Ljava/lang/CharSequence;

    .line 234
    .line 235
    iput-boolean p1, v8, LR0/m;->e:Z

    .line 236
    .line 237
    invoke-virtual {v3}, LY0/h;->invalidateSelf()V

    .line 238
    .line 239
    .line 240
    :cond_7
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 241
    .line 242
    .line 243
    move-result v6

    .line 244
    if-eqz v6, :cond_8

    .line 245
    .line 246
    invoke-virtual {v2, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 247
    .line 248
    .line 249
    move-result v6

    .line 250
    if-eqz v6, :cond_8

    .line 251
    .line 252
    new-instance v7, LV0/d;

    .line 253
    .line 254
    invoke-direct {v7, v5, v6}, LV0/d;-><init>(Landroid/content/Context;I)V

    .line 255
    .line 256
    .line 257
    goto :goto_4

    .line 258
    :cond_8
    move-object v7, v4

    .line 259
    :goto_4
    if-eqz v7, :cond_9

    .line 260
    .line 261
    invoke-virtual {v2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 262
    .line 263
    .line 264
    move-result v6

    .line 265
    if-eqz v6, :cond_9

    .line 266
    .line 267
    invoke-static {v5, v2, p1}, Lcom/bumptech/glide/d;->r(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    iput-object v6, v7, LV0/d;->j:Landroid/content/res/ColorStateList;

    .line 272
    .line 273
    :cond_9
    invoke-virtual {v8, v7, v5}, LR0/m;->c(LV0/d;Landroid/content/Context;)V

    .line 274
    .line 275
    .line 276
    const v6, 0x7f0400ea

    .line 277
    .line 278
    .line 279
    const-class v7, Lg1/a;

    .line 280
    .line 281
    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v8

    .line 285
    invoke-static {v5, v8, v6}, Lcom/bumptech/glide/c;->l(Landroid/content/Context;Ljava/lang/String;I)I

    .line 286
    .line 287
    .line 288
    move-result v6

    .line 289
    const v8, 0x1010031

    .line 290
    .line 291
    .line 292
    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v9

    .line 296
    invoke-static {v5, v9, v8}, Lcom/bumptech/glide/c;->l(Landroid/content/Context;Ljava/lang/String;I)I

    .line 297
    .line 298
    .line 299
    move-result v8

    .line 300
    const/16 v9, 0xe5

    .line 301
    .line 302
    invoke-static {v8, v9}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 303
    .line 304
    .line 305
    move-result v8

    .line 306
    const/16 v9, 0x99

    .line 307
    .line 308
    invoke-static {v6, v9}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 309
    .line 310
    .line 311
    move-result v6

    .line 312
    invoke-static {v6, v8}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    .line 313
    .line 314
    .line 315
    move-result v6

    .line 316
    const/4 v8, 0x7

    .line 317
    invoke-virtual {v2, v8, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 318
    .line 319
    .line 320
    move-result v6

    .line 321
    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 322
    .line 323
    .line 324
    move-result-object v6

    .line 325
    invoke-virtual {v3, v6}, LY0/h;->l(Landroid/content/res/ColorStateList;)V

    .line 326
    .line 327
    .line 328
    const v6, 0x7f04010e

    .line 329
    .line 330
    .line 331
    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v7

    .line 335
    invoke-static {v5, v7, v6}, Lcom/bumptech/glide/c;->l(Landroid/content/Context;Ljava/lang/String;I)I

    .line 336
    .line 337
    .line 338
    move-result v5

    .line 339
    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 340
    .line 341
    .line 342
    move-result-object v5

    .line 343
    invoke-virtual {v3, v5}, LY0/h;->p(Landroid/content/res/ColorStateList;)V

    .line 344
    .line 345
    .line 346
    const/4 v5, 0x2

    .line 347
    invoke-virtual {v2, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 348
    .line 349
    .line 350
    move-result v6

    .line 351
    iput v6, v3, Lg1/a;->E:I

    .line 352
    .line 353
    const/4 v6, 0x4

    .line 354
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 355
    .line 356
    .line 357
    move-result v6

    .line 358
    iput v6, v3, Lg1/a;->F:I

    .line 359
    .line 360
    const/4 v6, 0x5

    .line 361
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 362
    .line 363
    .line 364
    move-result v6

    .line 365
    iput v6, v3, Lg1/a;->G:I

    .line 366
    .line 367
    const/4 v6, 0x3

    .line 368
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 369
    .line 370
    .line 371
    move-result v6

    .line 372
    iput v6, v3, Lg1/a;->H:I

    .line 373
    .line 374
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    .line 381
    .line 382
    .line 383
    move-result v2

    .line 384
    if-eqz v2, :cond_5

    .line 385
    .line 386
    invoke-static {p0}, LR0/t;->c(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    if-nez v2, :cond_a

    .line 391
    .line 392
    goto/16 :goto_2

    .line 393
    .line 394
    :cond_a
    new-array v5, v5, [I

    .line 395
    .line 396
    invoke-virtual {v2, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 397
    .line 398
    .line 399
    aget v5, v5, v0

    .line 400
    .line 401
    iput v5, v3, Lg1/a;->K:I

    .line 402
    .line 403
    iget-object v5, v3, Lg1/a;->D:Landroid/graphics/Rect;

    .line 404
    .line 405
    invoke-virtual {v2, v5}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 406
    .line 407
    .line 408
    iget-object v3, v3, Lg1/a;->C:LF0/a;

    .line 409
    .line 410
    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 411
    .line 412
    .line 413
    goto/16 :goto_2

    .line 414
    .line 415
    :cond_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 416
    .line 417
    .line 418
    move-result v2

    .line 419
    if-ne v2, p1, :cond_c

    .line 420
    .line 421
    move p1, v0

    .line 422
    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 423
    .line 424
    .line 425
    move-result v2

    .line 426
    move v3, v0

    .line 427
    :goto_5
    if-ge v3, v2, :cond_d

    .line 428
    .line 429
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v4

    .line 433
    add-int/lit8 v3, v3, 0x1

    .line 434
    .line 435
    check-cast v4, Lg1/a;

    .line 436
    .line 437
    int-to-float v5, p1

    .line 438
    iget-object v6, v4, LY0/h;->b:LY0/g;

    .line 439
    .line 440
    iput v5, v6, LY0/g;->j:F

    .line 441
    .line 442
    invoke-virtual {v4}, LY0/h;->invalidateSelf()V

    .line 443
    .line 444
    .line 445
    goto :goto_5

    .line 446
    :cond_d
    iget-object p1, p0, La1/d;->n:Ljava/util/ArrayList;

    .line 447
    .line 448
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 449
    .line 450
    .line 451
    move-result v1

    .line 452
    move v2, v0

    .line 453
    :cond_e
    if-ge v2, v1, :cond_f

    .line 454
    .line 455
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v3

    .line 459
    add-int/lit8 v2, v2, 0x1

    .line 460
    .line 461
    check-cast v3, LE1/y;

    .line 462
    .line 463
    iget-object v4, p0, La1/d;->T:Ljava/util/ArrayList;

    .line 464
    .line 465
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 466
    .line 467
    .line 468
    move-result v5

    .line 469
    move v6, v0

    .line 470
    :goto_6
    if-ge v6, v5, :cond_e

    .line 471
    .line 472
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v7

    .line 476
    add-int/lit8 v6, v6, 0x1

    .line 477
    .line 478
    check-cast v7, Ljava/lang/Float;

    .line 479
    .line 480
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 481
    .line 482
    .line 483
    move-result v7

    .line 484
    invoke-virtual {v3, p0, v7}, LE1/y;->a(La1/d;F)V

    .line 485
    .line 486
    .line 487
    goto :goto_6

    .line 488
    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 489
    .line 490
    .line 491
    return-void

    .line 492
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 493
    .line 494
    const-string v0, "At least one value must be set"

    .line 495
    .line 496
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    throw p1
.end method

.method public final s(IF)Z
    .locals 5

    .line 1
    iput p1, p0, La1/d;->V:I

    .line 2
    .line 3
    iget-object v0, p0, La1/d;->T:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Float;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sub-float v0, p2, v0

    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    float-to-double v0, v0

    .line 22
    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    cmpg-double v0, v0, v2

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    if-gez v0, :cond_0

    .line 31
    .line 32
    return v1

    .line 33
    :cond_0
    invoke-virtual {p0}, La1/d;->getMinSeparation()F

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget v2, p0, La1/d;->t0:I

    .line 38
    .line 39
    if-nez v2, :cond_2

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    cmpl-float v3, v0, v2

    .line 43
    .line 44
    if-nez v3, :cond_1

    .line 45
    .line 46
    move v0, v2

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget v2, p0, La1/d;->E:I

    .line 49
    .line 50
    int-to-float v2, v2

    .line 51
    sub-float/2addr v0, v2

    .line 52
    iget v2, p0, La1/d;->e0:I

    .line 53
    .line 54
    int-to-float v2, v2

    .line 55
    div-float/2addr v0, v2

    .line 56
    iget v2, p0, La1/d;->R:F

    .line 57
    .line 58
    iget v3, p0, La1/d;->S:F

    .line 59
    .line 60
    sub-float v3, v2, v3

    .line 61
    .line 62
    mul-float/2addr v3, v0

    .line 63
    add-float/2addr v3, v2

    .line 64
    move v0, v3

    .line 65
    :cond_2
    :goto_0
    invoke-virtual {p0}, La1/d;->k()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_3

    .line 70
    .line 71
    neg-float v0, v0

    .line 72
    :cond_3
    add-int/lit8 v2, p1, 0x1

    .line 73
    .line 74
    iget-object v3, p0, La1/d;->T:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-lt v2, v3, :cond_4

    .line 81
    .line 82
    iget v2, p0, La1/d;->S:F

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    iget-object v3, p0, La1/d;->T:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Ljava/lang/Float;

    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    sub-float/2addr v2, v0

    .line 98
    :goto_1
    add-int/lit8 v3, p1, -0x1

    .line 99
    .line 100
    if-gez v3, :cond_5

    .line 101
    .line 102
    iget v0, p0, La1/d;->R:F

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_5
    iget-object v4, p0, La1/d;->T:Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    check-cast v3, Ljava/lang/Float;

    .line 112
    .line 113
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    add-float/2addr v0, v3

    .line 118
    :goto_2
    invoke-static {p2, v0, v2}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    iget-object v0, p0, La1/d;->T:Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    iget-object p2, p0, La1/d;->n:Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    :goto_3
    if-ge v1, v0, :cond_6

    .line 138
    .line 139
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    add-int/lit8 v1, v1, 0x1

    .line 144
    .line 145
    check-cast v2, LE1/y;

    .line 146
    .line 147
    iget-object v3, p0, La1/d;->T:Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    check-cast v3, Ljava/lang/Float;

    .line 154
    .line 155
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    invoke-virtual {v2, p0, v3}, LE1/y;->a(La1/d;F)V

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_6
    const/4 p2, 0x1

    .line 164
    iget-object v0, p0, La1/d;->j:Landroid/view/accessibility/AccessibilityManager;

    .line 165
    .line 166
    if-eqz v0, :cond_8

    .line 167
    .line 168
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-eqz v0, :cond_8

    .line 173
    .line 174
    iget-object v0, p0, La1/d;->k:LT0/a;

    .line 175
    .line 176
    if-nez v0, :cond_7

    .line 177
    .line 178
    new-instance v0, LT0/a;

    .line 179
    .line 180
    invoke-direct {v0, p0}, LT0/a;-><init>(La1/d;)V

    .line 181
    .line 182
    .line 183
    iput-object v0, p0, La1/d;->k:LT0/a;

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_7
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 187
    .line 188
    .line 189
    :goto_4
    iget-object v0, p0, La1/d;->k:LT0/a;

    .line 190
    .line 191
    iput p1, v0, LT0/a;->c:I

    .line 192
    .line 193
    const-wide/16 v1, 0xc8

    .line 194
    .line 195
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 196
    .line 197
    .line 198
    :cond_8
    return p2
.end method

.method public setActiveThumbIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, La1/d;->U:I

    .line 2
    .line 3
    return-void
.end method

.method public varargs setCustomThumbDrawablesForValues([I)V
    .locals 4

    .line 1
    array-length v0, p1

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, La1/d;->setCustomThumbDrawablesForValues([Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public varargs setCustomThumbDrawablesForValues([Landroid/graphics/drawable/Drawable;)V
    .locals 4

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, La1/d;->q0:Landroid/graphics/drawable/Drawable;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La1/d;->r0:Ljava/util/List;

    .line 7
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 8
    iget-object v3, p0, La1/d;->r0:Ljava/util/List;

    .line 9
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 10
    invoke-virtual {p0, v2}, La1/d;->a(Landroid/graphics/drawable/Drawable;)V

    .line 11
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x2

    .line 9
    :goto_0
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public abstract setHaloRadius(I)V
.end method

.method public abstract setHaloTintList(Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setLabelBehavior(I)V
.end method

.method public setSeparationUnit(I)V
    .locals 0

    .line 1
    iput p1, p0, La1/d;->t0:I

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, La1/d;->g0:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public abstract setThumbElevation(F)V
.end method

.method public abstract setThumbHeight(I)V
.end method

.method public abstract setThumbStrokeColor(Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setThumbStrokeWidth(F)V
.end method

.method public abstract setThumbTrackGapSize(I)V
.end method

.method public abstract setThumbWidth(I)V
.end method

.method public abstract setTickActiveRadius(I)V
.end method

.method public abstract setTickActiveTintList(Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setTickInactiveRadius(I)V
.end method

.method public abstract setTickInactiveTintList(Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setTrackActiveTintList(Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setTrackHeight(I)V
.end method

.method public abstract setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setTrackInsideCornerSize(I)V
.end method

.method public abstract setTrackStopIndicatorSize(I)V
.end method

.method public setValues(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, La1/d;->r(Ljava/util/ArrayList;)V

    return-void
.end method

.method public varargs setValues([Ljava/lang/Float;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0, v0}, La1/d;->r(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final t()V
    .locals 6

    .line 1
    iget v0, p0, La1/d;->s0:F

    .line 2
    .line 3
    iget v1, p0, La1/d;->W:F

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    cmpl-float v2, v1, v2

    .line 7
    .line 8
    if-lez v2, :cond_0

    .line 9
    .line 10
    iget v2, p0, La1/d;->S:F

    .line 11
    .line 12
    iget v3, p0, La1/d;->R:F

    .line 13
    .line 14
    sub-float/2addr v2, v3

    .line 15
    div-float/2addr v2, v1

    .line 16
    float-to-int v1, v2

    .line 17
    int-to-float v2, v1

    .line 18
    mul-float/2addr v0, v2

    .line 19
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    int-to-double v2, v0

    .line 24
    int-to-double v0, v1

    .line 25
    div-double/2addr v2, v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    float-to-double v2, v0

    .line 28
    :goto_0
    invoke-virtual {p0}, La1/d;->k()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 35
    .line 36
    sub-double v2, v0, v2

    .line 37
    .line 38
    :cond_1
    iget v0, p0, La1/d;->S:F

    .line 39
    .line 40
    iget v1, p0, La1/d;->R:F

    .line 41
    .line 42
    sub-float/2addr v0, v1

    .line 43
    float-to-double v4, v0

    .line 44
    mul-double/2addr v2, v4

    .line 45
    float-to-double v0, v1

    .line 46
    add-double/2addr v2, v0

    .line 47
    double-to-float v0, v2

    .line 48
    iget v1, p0, La1/d;->U:I

    .line 49
    .line 50
    invoke-virtual {p0, v1, v0}, La1/d;->s(IF)Z

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final u(ILandroid/graphics/Rect;)V
    .locals 5

    .line 1
    iget v0, p0, La1/d;->E:I

    .line 2
    .line 3
    invoke-virtual {p0}, La1/d;->getValues()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Float;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {p0, p1}, La1/d;->o(F)F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget v1, p0, La1/d;->e0:I

    .line 22
    .line 23
    int-to-float v1, v1

    .line 24
    mul-float/2addr p1, v1

    .line 25
    float-to-int p1, p1

    .line 26
    add-int/2addr v0, p1

    .line 27
    invoke-virtual {p0}, La1/d;->b()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iget v1, p0, La1/d;->F:I

    .line 32
    .line 33
    div-int/lit8 v1, v1, 0x2

    .line 34
    .line 35
    iget v2, p0, La1/d;->z:I

    .line 36
    .line 37
    div-int/lit8 v2, v2, 0x2

    .line 38
    .line 39
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iget v2, p0, La1/d;->G:I

    .line 44
    .line 45
    div-int/lit8 v2, v2, 0x2

    .line 46
    .line 47
    iget v3, p0, La1/d;->z:I

    .line 48
    .line 49
    div-int/lit8 v3, v3, 0x2

    .line 50
    .line 51
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    sub-int v3, v0, v1

    .line 56
    .line 57
    sub-int v4, p1, v2

    .line 58
    .line 59
    add-int/2addr v0, v1

    .line 60
    add-int/2addr p1, v2

    .line 61
    invoke-virtual {p2, v3, v4, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final v()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, La1/d;->T:Ljava/util/ArrayList;

    .line 24
    .line 25
    iget v2, p0, La1/d;->V:I

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/Float;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {p0, v1}, La1/d;->o(F)F

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iget v2, p0, La1/d;->e0:I

    .line 42
    .line 43
    int-to-float v2, v2

    .line 44
    mul-float/2addr v1, v2

    .line 45
    iget v2, p0, La1/d;->E:I

    .line 46
    .line 47
    int-to-float v2, v2

    .line 48
    add-float/2addr v1, v2

    .line 49
    float-to-int v1, v1

    .line 50
    invoke-virtual {p0}, La1/d;->b()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    iget v3, p0, La1/d;->H:I

    .line 55
    .line 56
    sub-int v4, v1, v3

    .line 57
    .line 58
    sub-int v5, v2, v3

    .line 59
    .line 60
    add-int/2addr v1, v3

    .line 61
    add-int/2addr v2, v3

    .line 62
    invoke-static {v0, v4, v5, v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 63
    .line 64
    .line 65
    :cond_0
    return-void
.end method

.method public final w()V
    .locals 3

    .line 1
    iget v0, p0, La1/d;->C:I

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_3

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    new-instance v0, Landroid/graphics/Rect;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, LR0/t;->c(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-virtual {p0}, La1/d;->e()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    invoke-virtual {p0}, La1/d;->f()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 47
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v2, "Unexpected labelBehavior: "

    .line 51
    .line 52
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget v2, p0, La1/d;->C:I

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0

    .line 68
    :cond_2
    invoke-virtual {p0}, La1/d;->f()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    iget v0, p0, La1/d;->U:I

    .line 73
    .line 74
    const/4 v1, -0x1

    .line 75
    if-eq v0, v1, :cond_4

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    invoke-virtual {p0}, La1/d;->e()V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_4
    invoke-virtual {p0}, La1/d;->f()V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public final x(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;I)V
    .locals 10

    .line 1
    iget v0, p0, La1/d;->D:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    const/high16 v1, 0x40000000    # 2.0f

    .line 5
    .line 6
    div-float/2addr v0, v1

    .line 7
    invoke-static {p4}, Lu/h;->a(I)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x3

    .line 12
    const/4 v4, 0x2

    .line 13
    const/4 v5, 0x1

    .line 14
    if-eq v2, v5, :cond_2

    .line 15
    .line 16
    if-eq v2, v4, :cond_1

    .line 17
    .line 18
    if-eq v2, v3, :cond_0

    .line 19
    .line 20
    :goto_0
    move v2, v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget v0, p0, La1/d;->M:I

    .line 23
    .line 24
    int-to-float v0, v0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget v2, p0, La1/d;->M:I

    .line 27
    .line 28
    int-to-float v2, v2

    .line 29
    move v9, v2

    .line 30
    move v2, v0

    .line 31
    move v0, v9

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    iget v2, p0, La1/d;->M:I

    .line 34
    .line 35
    int-to-float v2, v2

    .line 36
    :goto_1
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 37
    .line 38
    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    .line 40
    .line 41
    sget-object v6, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 42
    .line 43
    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    .line 48
    .line 49
    iget-object v6, p0, La1/d;->m0:Landroid/graphics/Path;

    .line 50
    .line 51
    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    add-float v8, v0, v2

    .line 59
    .line 60
    cmpl-float v7, v7, v8

    .line 61
    .line 62
    if-ltz v7, :cond_3

    .line 63
    .line 64
    const/16 p4, 0x8

    .line 65
    .line 66
    new-array p4, p4, [F

    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    aput v0, p4, v1

    .line 70
    .line 71
    aput v0, p4, v5

    .line 72
    .line 73
    aput v2, p4, v4

    .line 74
    .line 75
    aput v2, p4, v3

    .line 76
    .line 77
    const/4 v1, 0x4

    .line 78
    aput v2, p4, v1

    .line 79
    .line 80
    const/4 v1, 0x5

    .line 81
    aput v2, p4, v1

    .line 82
    .line 83
    const/4 v1, 0x6

    .line 84
    aput v0, p4, v1

    .line 85
    .line 86
    const/4 v1, 0x7

    .line 87
    aput v0, p4, v1

    .line 88
    .line 89
    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 90
    .line 91
    invoke-virtual {v6, p3, p4, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v6, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_3
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 107
    .line 108
    .line 109
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 110
    .line 111
    invoke-virtual {v6, p3, v3, v3, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 115
    .line 116
    .line 117
    invoke-static {p4}, Lu/h;->a(I)I

    .line 118
    .line 119
    .line 120
    move-result p4

    .line 121
    iget-object v2, p0, La1/d;->o0:Landroid/graphics/RectF;

    .line 122
    .line 123
    if-eq p4, v5, :cond_5

    .line 124
    .line 125
    if-eq p4, v4, :cond_4

    .line 126
    .line 127
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    .line 128
    .line 129
    .line 130
    move-result p4

    .line 131
    sub-float/2addr p4, v0

    .line 132
    iget v1, p3, Landroid/graphics/RectF;->top:F

    .line 133
    .line 134
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    add-float/2addr v3, v0

    .line 139
    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    .line 140
    .line 141
    invoke-virtual {v2, p4, v1, v3, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_4
    iget p4, p3, Landroid/graphics/RectF;->right:F

    .line 146
    .line 147
    mul-float/2addr v1, v0

    .line 148
    sub-float v1, p4, v1

    .line 149
    .line 150
    iget v3, p3, Landroid/graphics/RectF;->top:F

    .line 151
    .line 152
    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    .line 153
    .line 154
    invoke-virtual {v2, v1, v3, p4, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_5
    iget p4, p3, Landroid/graphics/RectF;->left:F

    .line 159
    .line 160
    iget v3, p3, Landroid/graphics/RectF;->top:F

    .line 161
    .line 162
    mul-float/2addr v1, v0

    .line 163
    add-float/2addr v1, p4

    .line 164
    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    .line 165
    .line 166
    invoke-virtual {v2, p4, v3, v1, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 167
    .line 168
    .line 169
    :goto_2
    invoke-virtual {p1, v2, v0, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 173
    .line 174
    .line 175
    return-void
.end method

.method public final y()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    iget v0, p0, La1/d;->D:I

    .line 11
    .line 12
    add-int/2addr v0, v1

    .line 13
    iget v1, p0, La1/d;->G:I

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    add-int/2addr v2, v1

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v1, v2

    .line 25
    iget v2, p0, La1/d;->A:I

    .line 26
    .line 27
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget v1, p0, La1/d;->B:I

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    const/4 v3, 0x0

    .line 39
    if-ne v0, v1, :cond_0

    .line 40
    .line 41
    move v0, v3

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iput v0, p0, La1/d;->B:I

    .line 44
    .line 45
    move v0, v2

    .line 46
    :goto_0
    iget v1, p0, La1/d;->F:I

    .line 47
    .line 48
    div-int/lit8 v1, v1, 0x2

    .line 49
    .line 50
    iget v4, p0, La1/d;->u:I

    .line 51
    .line 52
    sub-int/2addr v1, v4

    .line 53
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    iget v4, p0, La1/d;->D:I

    .line 58
    .line 59
    iget v5, p0, La1/d;->v:I

    .line 60
    .line 61
    sub-int/2addr v4, v5

    .line 62
    div-int/lit8 v4, v4, 0x2

    .line 63
    .line 64
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    iget v5, p0, La1/d;->c0:I

    .line 69
    .line 70
    iget v6, p0, La1/d;->w:I

    .line 71
    .line 72
    sub-int/2addr v5, v6

    .line 73
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    iget v6, p0, La1/d;->d0:I

    .line 78
    .line 79
    iget v7, p0, La1/d;->x:I

    .line 80
    .line 81
    sub-int/2addr v6, v7

    .line 82
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    iget v4, p0, La1/d;->t:I

    .line 99
    .line 100
    add-int/2addr v1, v4

    .line 101
    iget v4, p0, La1/d;->E:I

    .line 102
    .line 103
    if-ne v4, v1, :cond_1

    .line 104
    .line 105
    move v2, v3

    .line 106
    goto :goto_1

    .line 107
    :cond_1
    iput v1, p0, La1/d;->E:I

    .line 108
    .line 109
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_2

    .line 114
    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    iget v4, p0, La1/d;->E:I

    .line 120
    .line 121
    mul-int/lit8 v4, v4, 0x2

    .line 122
    .line 123
    sub-int/2addr v1, v4

    .line 124
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    iput v1, p0, La1/d;->e0:I

    .line 129
    .line 130
    invoke-virtual {p0}, La1/d;->l()V

    .line 131
    .line 132
    .line 133
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 134
    .line 135
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :cond_3
    if-eqz v2, :cond_4

    .line 140
    .line 141
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 142
    .line 143
    .line 144
    :cond_4
    return-void
.end method

.method public final z()V
    .locals 10

    .line 1
    iget-boolean v0, p0, La1/d;->g0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_10

    .line 4
    .line 5
    iget v0, p0, La1/d;->R:F

    .line 6
    .line 7
    iget v1, p0, La1/d;->S:F

    .line 8
    .line 9
    cmpl-float v2, v0, v1

    .line 10
    .line 11
    const-string v3, ")"

    .line 12
    .line 13
    if-gez v2, :cond_f

    .line 14
    .line 15
    cmpg-float v0, v1, v0

    .line 16
    .line 17
    if-lez v0, :cond_e

    .line 18
    .line 19
    iget v0, p0, La1/d;->W:F

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    cmpl-float v0, v0, v2

    .line 23
    .line 24
    if-lez v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0, v1}, La1/d;->A(F)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    iget v1, p0, La1/d;->W:F

    .line 36
    .line 37
    iget v2, p0, La1/d;->R:F

    .line 38
    .line 39
    iget v3, p0, La1/d;->S:F

    .line 40
    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v5, "The stepSize("

    .line 44
    .line 45
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, ") must be 0, or a factor of the valueFrom("

    .line 52
    .line 53
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v1, ")-valueTo("

    .line 60
    .line 61
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v1, ") range"

    .line 68
    .line 69
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v0

    .line 80
    :cond_1
    :goto_0
    iget-object v0, p0, La1/d;->T:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    const/4 v4, 0x0

    .line 87
    move v5, v4

    .line 88
    :cond_2
    :goto_1
    const-string v6, ") when using stepSize("

    .line 89
    .line 90
    if-ge v5, v1, :cond_5

    .line 91
    .line 92
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    add-int/lit8 v5, v5, 0x1

    .line 97
    .line 98
    check-cast v7, Ljava/lang/Float;

    .line 99
    .line 100
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    iget v9, p0, La1/d;->R:F

    .line 105
    .line 106
    cmpg-float v8, v8, v9

    .line 107
    .line 108
    if-ltz v8, :cond_4

    .line 109
    .line 110
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    iget v9, p0, La1/d;->S:F

    .line 115
    .line 116
    cmpl-float v8, v8, v9

    .line 117
    .line 118
    if-gtz v8, :cond_4

    .line 119
    .line 120
    iget v8, p0, La1/d;->W:F

    .line 121
    .line 122
    cmpl-float v8, v8, v2

    .line 123
    .line 124
    if-lez v8, :cond_2

    .line 125
    .line 126
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 127
    .line 128
    .line 129
    move-result v8

    .line 130
    invoke-virtual {p0, v8}, La1/d;->A(F)Z

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    if-eqz v8, :cond_3

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 138
    .line 139
    iget v1, p0, La1/d;->R:F

    .line 140
    .line 141
    iget v2, p0, La1/d;->W:F

    .line 142
    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v5, "Value("

    .line 146
    .line 147
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v5, ") must be equal to valueFrom("

    .line 154
    .line 155
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v1, ") plus a multiple of stepSize("

    .line 162
    .line 163
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw v0

    .line 186
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 187
    .line 188
    iget v1, p0, La1/d;->R:F

    .line 189
    .line 190
    iget v2, p0, La1/d;->S:F

    .line 191
    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    const-string v5, "Slider value("

    .line 195
    .line 196
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v5, ") must be greater or equal to valueFrom("

    .line 203
    .line 204
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string v1, "), and lower or equal to valueTo("

    .line 211
    .line 212
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw v0

    .line 229
    :cond_5
    invoke-virtual {p0}, La1/d;->getMinSeparation()F

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    cmpg-float v1, v0, v2

    .line 234
    .line 235
    const-string v5, "minSeparation("

    .line 236
    .line 237
    if-ltz v1, :cond_d

    .line 238
    .line 239
    iget v1, p0, La1/d;->W:F

    .line 240
    .line 241
    cmpl-float v7, v1, v2

    .line 242
    .line 243
    if-lez v7, :cond_8

    .line 244
    .line 245
    cmpl-float v7, v0, v2

    .line 246
    .line 247
    if-lez v7, :cond_8

    .line 248
    .line 249
    iget v7, p0, La1/d;->t0:I

    .line 250
    .line 251
    const/4 v8, 0x1

    .line 252
    if-ne v7, v8, :cond_7

    .line 253
    .line 254
    cmpg-float v1, v0, v1

    .line 255
    .line 256
    if-ltz v1, :cond_6

    .line 257
    .line 258
    float-to-double v7, v0

    .line 259
    invoke-virtual {p0, v7, v8}, La1/d;->i(D)Z

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    if-eqz v1, :cond_6

    .line 264
    .line 265
    goto :goto_2

    .line 266
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 267
    .line 268
    iget v2, p0, La1/d;->W:F

    .line 269
    .line 270
    new-instance v4, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    const-string v0, ") must be greater or equal and a multiple of stepSize("

    .line 279
    .line 280
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    throw v1

    .line 303
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 304
    .line 305
    iget v2, p0, La1/d;->W:F

    .line 306
    .line 307
    new-instance v4, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    const-string v0, ") cannot be set as a dimension when using stepSize("

    .line 316
    .line 317
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    throw v1

    .line 334
    :cond_8
    :goto_2
    iget v0, p0, La1/d;->W:F

    .line 335
    .line 336
    cmpl-float v1, v0, v2

    .line 337
    .line 338
    if-nez v1, :cond_9

    .line 339
    .line 340
    goto :goto_3

    .line 341
    :cond_9
    float-to-int v1, v0

    .line 342
    int-to-float v1, v1

    .line 343
    cmpl-float v1, v1, v0

    .line 344
    .line 345
    const-string v2, "). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly."

    .line 346
    .line 347
    const-string v3, "d"

    .line 348
    .line 349
    if-eqz v1, :cond_a

    .line 350
    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    const-string v5, "Floating point value used for stepSize("

    .line 354
    .line 355
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .line 370
    .line 371
    :cond_a
    iget v0, p0, La1/d;->R:F

    .line 372
    .line 373
    float-to-int v1, v0

    .line 374
    int-to-float v1, v1

    .line 375
    cmpl-float v1, v1, v0

    .line 376
    .line 377
    if-eqz v1, :cond_b

    .line 378
    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    .line 380
    .line 381
    const-string v5, "Floating point value used for valueFrom("

    .line 382
    .line 383
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .line 398
    .line 399
    :cond_b
    iget v0, p0, La1/d;->S:F

    .line 400
    .line 401
    float-to-int v1, v0

    .line 402
    int-to-float v1, v1

    .line 403
    cmpl-float v1, v1, v0

    .line 404
    .line 405
    if-eqz v1, :cond_c

    .line 406
    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    .line 408
    .line 409
    const-string v5, "Floating point value used for valueTo("

    .line 410
    .line 411
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .line 426
    .line 427
    :cond_c
    :goto_3
    iput-boolean v4, p0, La1/d;->g0:Z

    .line 428
    .line 429
    return-void

    .line 430
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 431
    .line 432
    new-instance v2, Ljava/lang/StringBuilder;

    .line 433
    .line 434
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    const-string v0, ") must be greater or equal to 0"

    .line 441
    .line 442
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    throw v1

    .line 453
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 454
    .line 455
    iget v1, p0, La1/d;->S:F

    .line 456
    .line 457
    iget v2, p0, La1/d;->R:F

    .line 458
    .line 459
    new-instance v4, Ljava/lang/StringBuilder;

    .line 460
    .line 461
    const-string v5, "valueTo("

    .line 462
    .line 463
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    const-string v1, ") must be greater than valueFrom("

    .line 470
    .line 471
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    throw v0

    .line 488
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 489
    .line 490
    iget v1, p0, La1/d;->R:F

    .line 491
    .line 492
    iget v2, p0, La1/d;->S:F

    .line 493
    .line 494
    new-instance v4, Ljava/lang/StringBuilder;

    .line 495
    .line 496
    const-string v5, "valueFrom("

    .line 497
    .line 498
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    const-string v1, ") must be smaller than valueTo("

    .line 505
    .line 506
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    throw v0

    .line 523
    :cond_10
    return-void
.end method
