.class public abstract LT0/l;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final b:LT0/e;

.field public final c:LG0/b;

.field public final d:LT0/h;

.field public e:Li/h;

.field public f:LT0/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13

    .line 1
    const v3, 0x7f040077

    .line 2
    .line 3
    .line 4
    const v4, 0x7f130342

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2, v3, v4}, Lf1/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, p1, p2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    .line 13
    .line 14
    new-instance p1, LT0/h;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    iput-boolean v6, p1, LT0/h;->c:Z

    .line 21
    .line 22
    iput-object p1, p0, LT0/l;->d:LT0/h;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/16 v7, 0xc

    .line 29
    .line 30
    const/16 v8, 0xa

    .line 31
    .line 32
    filled-new-array {v7, v8}, [I

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    sget-object v2, LA0/a;->B:[I

    .line 37
    .line 38
    move-object v1, p2

    .line 39
    invoke-static/range {v0 .. v5}, LR0/p;->f(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Lk/Z0;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    new-instance v2, LT0/e;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {p0}, LT0/l;->getMaxItemCount()I

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    invoke-direct {v2, v0, v5, v9}, LT0/e;-><init>(Landroid/content/Context;Ljava/lang/Class;I)V

    .line 54
    .line 55
    .line 56
    iput-object v2, p0, LT0/l;->b:LT0/e;

    .line 57
    .line 58
    new-instance v5, LG0/b;

    .line 59
    .line 60
    invoke-direct {v5, v0}, LG0/b;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    iput-object v5, p0, LT0/l;->c:LG0/b;

    .line 64
    .line 65
    iput-object v5, p1, LT0/h;->b:LG0/b;

    .line 66
    .line 67
    const/4 v9, 0x1

    .line 68
    iput v9, p1, LT0/h;->d:I

    .line 69
    .line 70
    invoke-virtual {v5, p1}, LT0/f;->setPresenter(LT0/h;)V

    .line 71
    .line 72
    .line 73
    iget-object v10, v2, Lj/p;->a:Landroid/content/Context;

    .line 74
    .line 75
    invoke-virtual {v2, p1, v10}, Lj/p;->b(Lj/C;Landroid/content/Context;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    iget-object v10, p1, LT0/h;->b:LG0/b;

    .line 82
    .line 83
    iput-object v2, v10, LT0/f;->F:Lj/p;

    .line 84
    .line 85
    iget-object v10, p2, Lk/Z0;->b:Landroid/content/res/TypedArray;

    .line 86
    .line 87
    const/4 v11, 0x6

    .line 88
    invoke-virtual {v10, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 89
    .line 90
    .line 91
    move-result v12

    .line 92
    if-eqz v12, :cond_0

    .line 93
    .line 94
    invoke-virtual {p2, v11}, Lk/Z0;->a(I)Landroid/content/res/ColorStateList;

    .line 95
    .line 96
    .line 97
    move-result-object v11

    .line 98
    invoke-virtual {v5, v11}, LT0/f;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {v5}, LT0/f;->c()Landroid/content/res/ColorStateList;

    .line 103
    .line 104
    .line 105
    move-result-object v11

    .line 106
    invoke-virtual {v5, v11}, LT0/f;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 107
    .line 108
    .line 109
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 110
    .line 111
    .line 112
    move-result-object v11

    .line 113
    const v12, 0x7f0702d3

    .line 114
    .line 115
    .line 116
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 117
    .line 118
    .line 119
    move-result v11

    .line 120
    const/4 v12, 0x5

    .line 121
    invoke-virtual {v10, v12, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 122
    .line 123
    .line 124
    move-result v11

    .line 125
    invoke-virtual {p0, v11}, LT0/l;->setItemIconSize(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v10, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 129
    .line 130
    .line 131
    move-result v11

    .line 132
    if-eqz v11, :cond_1

    .line 133
    .line 134
    invoke-virtual {v10, v7, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    invoke-virtual {p0, v7}, LT0/l;->setItemTextAppearanceInactive(I)V

    .line 139
    .line 140
    .line 141
    :cond_1
    invoke-virtual {v10, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 142
    .line 143
    .line 144
    move-result v7

    .line 145
    if-eqz v7, :cond_2

    .line 146
    .line 147
    invoke-virtual {v10, v8, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 148
    .line 149
    .line 150
    move-result v7

    .line 151
    invoke-virtual {p0, v7}, LT0/l;->setItemTextAppearanceActive(I)V

    .line 152
    .line 153
    .line 154
    :cond_2
    const/16 v7, 0xb

    .line 155
    .line 156
    invoke-virtual {v10, v7, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 157
    .line 158
    .line 159
    move-result v7

    .line 160
    invoke-virtual {p0, v7}, LT0/l;->setItemTextAppearanceActiveBoldEnabled(Z)V

    .line 161
    .line 162
    .line 163
    const/16 v7, 0xd

    .line 164
    .line 165
    invoke-virtual {v10, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 166
    .line 167
    .line 168
    move-result v8

    .line 169
    if-eqz v8, :cond_3

    .line 170
    .line 171
    invoke-virtual {p2, v7}, Lk/Z0;->a(I)Landroid/content/res/ColorStateList;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    invoke-virtual {p0, v7}, LT0/l;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 176
    .line 177
    .line 178
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    invoke-static {v7}, Lcom/bumptech/glide/d;->t(Landroid/graphics/drawable/Drawable;)Landroid/content/res/ColorStateList;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    if-eqz v7, :cond_4

    .line 187
    .line 188
    if-eqz v8, :cond_6

    .line 189
    .line 190
    :cond_4
    invoke-static {v0, v1, v3, v4}, LY0/m;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)LY0/l;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-virtual {v1}, LY0/l;->a()LY0/m;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    new-instance v3, LY0/h;

    .line 199
    .line 200
    invoke-direct {v3, v1}, LY0/h;-><init>(LY0/m;)V

    .line 201
    .line 202
    .line 203
    if-eqz v8, :cond_5

    .line 204
    .line 205
    invoke-virtual {v3, v8}, LY0/h;->l(Landroid/content/res/ColorStateList;)V

    .line 206
    .line 207
    .line 208
    :cond_5
    invoke-virtual {v3, v0}, LY0/h;->j(Landroid/content/Context;)V

    .line 209
    .line 210
    .line 211
    invoke-static {p0, v3}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 212
    .line 213
    .line 214
    :cond_6
    const/16 v1, 0x8

    .line 215
    .line 216
    invoke-virtual {v10, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    if-eqz v3, :cond_7

    .line 221
    .line 222
    invoke-virtual {v10, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    invoke-virtual {p0, v1}, LT0/l;->setItemPaddingTop(I)V

    .line 227
    .line 228
    .line 229
    :cond_7
    const/4 v1, 0x7

    .line 230
    invoke-virtual {v10, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 231
    .line 232
    .line 233
    move-result v3

    .line 234
    if-eqz v3, :cond_8

    .line 235
    .line 236
    invoke-virtual {v10, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    invoke-virtual {p0, v1}, LT0/l;->setItemPaddingBottom(I)V

    .line 241
    .line 242
    .line 243
    :cond_8
    invoke-virtual {v10, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    if-eqz v1, :cond_9

    .line 248
    .line 249
    invoke-virtual {v10, v6, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    invoke-virtual {p0, v1}, LT0/l;->setActiveIndicatorLabelPadding(I)V

    .line 254
    .line 255
    .line 256
    :cond_9
    const/4 v1, 0x2

    .line 257
    invoke-virtual {v10, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    if-eqz v3, :cond_a

    .line 262
    .line 263
    invoke-virtual {v10, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    int-to-float v3, v3

    .line 268
    invoke-virtual {p0, v3}, LT0/l;->setElevation(F)V

    .line 269
    .line 270
    .line 271
    :cond_a
    invoke-static {v0, p2, v9}, Lcom/bumptech/glide/d;->s(Landroid/content/Context;Lk/Z0;I)Landroid/content/res/ColorStateList;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    invoke-static {v4, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 284
    .line 285
    .line 286
    const/16 v3, 0xe

    .line 287
    .line 288
    const/4 v4, -0x1

    .line 289
    invoke-virtual {v10, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    invoke-virtual {p0, v3}, LT0/l;->setLabelVisibilityMode(I)V

    .line 294
    .line 295
    .line 296
    const/4 v3, 0x4

    .line 297
    invoke-virtual {v10, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 298
    .line 299
    .line 300
    move-result v4

    .line 301
    if-eqz v4, :cond_b

    .line 302
    .line 303
    invoke-virtual {v5, v4}, LT0/f;->setItemBackgroundRes(I)V

    .line 304
    .line 305
    .line 306
    goto :goto_1

    .line 307
    :cond_b
    const/16 v4, 0x9

    .line 308
    .line 309
    invoke-static {v0, p2, v4}, Lcom/bumptech/glide/d;->s(Landroid/content/Context;Lk/Z0;I)Landroid/content/res/ColorStateList;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    invoke-virtual {p0, v4}, LT0/l;->setItemRippleColor(Landroid/content/res/ColorStateList;)V

    .line 314
    .line 315
    .line 316
    :goto_1
    const/4 v4, 0x3

    .line 317
    invoke-virtual {v10, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 318
    .line 319
    .line 320
    move-result v7

    .line 321
    if-eqz v7, :cond_c

    .line 322
    .line 323
    invoke-virtual {p0, v9}, LT0/l;->setItemActiveIndicatorEnabled(Z)V

    .line 324
    .line 325
    .line 326
    sget-object v8, LA0/a;->A:[I

    .line 327
    .line 328
    invoke-virtual {v0, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 329
    .line 330
    .line 331
    move-result-object v7

    .line 332
    invoke-virtual {v7, v9, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 333
    .line 334
    .line 335
    move-result v8

    .line 336
    invoke-virtual {p0, v8}, LT0/l;->setItemActiveIndicatorWidth(I)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v7, v6, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 340
    .line 341
    .line 342
    move-result v8

    .line 343
    invoke-virtual {p0, v8}, LT0/l;->setItemActiveIndicatorHeight(I)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v7, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 347
    .line 348
    .line 349
    move-result v4

    .line 350
    invoke-virtual {p0, v4}, LT0/l;->setItemActiveIndicatorMarginHorizontal(I)V

    .line 351
    .line 352
    .line 353
    invoke-static {v0, v7, v1}, Lcom/bumptech/glide/d;->r(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    invoke-virtual {p0, v1}, LT0/l;->setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v7, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 361
    .line 362
    .line 363
    move-result v1

    .line 364
    new-instance v3, LY0/a;

    .line 365
    .line 366
    int-to-float v4, v6

    .line 367
    invoke-direct {v3, v4}, LY0/a;-><init>(F)V

    .line 368
    .line 369
    .line 370
    invoke-static {v0, v1, v6, v3}, LY0/m;->a(Landroid/content/Context;IILY0/a;)LY0/l;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-virtual {v0}, LY0/l;->a()LY0/m;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-virtual {p0, v0}, LT0/l;->setItemActiveIndicatorShapeAppearance(LY0/m;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 382
    .line 383
    .line 384
    :cond_c
    const/16 v0, 0xf

    .line 385
    .line 386
    invoke-virtual {v10, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    if-eqz v1, :cond_d

    .line 391
    .line 392
    invoke-virtual {v10, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 393
    .line 394
    .line 395
    move-result v0

    .line 396
    iput-boolean v9, p1, LT0/h;->c:Z

    .line 397
    .line 398
    invoke-direct {p0}, LT0/l;->getMenuInflater()Landroid/view/MenuInflater;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    invoke-virtual {v1, v0, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 403
    .line 404
    .line 405
    iput-boolean v6, p1, LT0/h;->c:Z

    .line 406
    .line 407
    invoke-virtual {p1, v9}, LT0/h;->g(Z)V

    .line 408
    .line 409
    .line 410
    :cond_d
    invoke-virtual {p2}, Lk/Z0;->f()V

    .line 411
    .line 412
    .line 413
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 414
    .line 415
    .line 416
    new-instance p1, LA1/b;

    .line 417
    .line 418
    move-object p2, p0

    .line 419
    check-cast p2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 420
    .line 421
    invoke-direct {p1, p2}, LA1/b;-><init>(Ljava/lang/Object;)V

    .line 422
    .line 423
    .line 424
    iput-object p1, v2, Lj/p;->e:Lj/n;

    .line 425
    .line 426
    return-void
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 1
    iget-object v0, p0, LT0/l;->e:Li/h;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Li/h;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Li/h;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, LT0/l;->e:Li/h;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, LT0/l;->e:Li/h;

    .line 17
    .line 18
    return-object v0
.end method


# virtual methods
.method public getActiveIndicatorLabelPadding()I
    .locals 1

    .line 1
    iget-object v0, p0, LT0/l;->c:LG0/b;

    .line 2
    .line 3
    invoke-virtual {v0}, LT0/f;->getActiveIndicatorLabelPadding()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemActiveIndicatorColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, LT0/l;->c:LG0/b;

    .line 2
    .line 3
    invoke-virtual {v0}, LT0/f;->getItemActiveIndicatorColor()Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getItemActiveIndicatorHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, LT0/l;->c:LG0/b;

    .line 2
    .line 3
    invoke-virtual {v0}, LT0/f;->getItemActiveIndicatorHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemActiveIndicatorMarginHorizontal()I
    .locals 1

    .line 1
    iget-object v0, p0, LT0/l;->c:LG0/b;

    .line 2
    .line 3
    invoke-virtual {v0}, LT0/f;->getItemActiveIndicatorMarginHorizontal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemActiveIndicatorShapeAppearance()LY0/m;
    .locals 1

    .line 1
    iget-object v0, p0, LT0/l;->c:LG0/b;

    .line 2
    .line 3
    invoke-virtual {v0}, LT0/f;->getItemActiveIndicatorShapeAppearance()LY0/m;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getItemActiveIndicatorWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, LT0/l;->c:LG0/b;

    .line 2
    .line 3
    invoke-virtual {v0}, LT0/f;->getItemActiveIndicatorWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, LT0/l;->c:LG0/b;

    .line 2
    .line 3
    invoke-virtual {v0}, LT0/f;->getItemBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getItemBackgroundResource()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, LT0/l;->c:LG0/b;

    .line 2
    .line 3
    invoke-virtual {v0}, LT0/f;->getItemBackgroundRes()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemIconSize()I
    .locals 1

    .line 1
    iget-object v0, p0, LT0/l;->c:LG0/b;

    .line 2
    .line 3
    invoke-virtual {v0}, LT0/f;->getItemIconSize()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, LT0/l;->c:LG0/b;

    .line 2
    .line 3
    invoke-virtual {v0}, LT0/f;->getIconTintList()Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getItemPaddingBottom()I
    .locals 1

    .line 1
    iget-object v0, p0, LT0/l;->c:LG0/b;

    .line 2
    .line 3
    invoke-virtual {v0}, LT0/f;->getItemPaddingBottom()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemPaddingTop()I
    .locals 1

    .line 1
    iget-object v0, p0, LT0/l;->c:LG0/b;

    .line 2
    .line 3
    invoke-virtual {v0}, LT0/f;->getItemPaddingTop()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, LT0/l;->c:LG0/b;

    .line 2
    .line 3
    invoke-virtual {v0}, LT0/f;->getItemRippleColor()Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getItemTextAppearanceActive()I
    .locals 1

    .line 1
    iget-object v0, p0, LT0/l;->c:LG0/b;

    .line 2
    .line 3
    invoke-virtual {v0}, LT0/f;->getItemTextAppearanceActive()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemTextAppearanceInactive()I
    .locals 1

    .line 1
    iget-object v0, p0, LT0/l;->c:LG0/b;

    .line 2
    .line 3
    invoke-virtual {v0}, LT0/f;->getItemTextAppearanceInactive()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, LT0/l;->c:LG0/b;

    .line 2
    .line 3
    invoke-virtual {v0}, LT0/f;->getItemTextColor()Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getLabelVisibilityMode()I
    .locals 1

    .line 1
    iget-object v0, p0, LT0/l;->c:LG0/b;

    .line 2
    .line 3
    invoke-virtual {v0}, LT0/f;->getLabelVisibilityMode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public abstract getMaxItemCount()I
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 1
    iget-object v0, p0, LT0/l;->b:LT0/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMenuView()Lj/E;
    .locals 1

    .line 1
    iget-object v0, p0, LT0/l;->c:LG0/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPresenter()LT0/h;
    .locals 1

    .line 1
    iget-object v0, p0, LT0/l;->d:LT0/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSelectedItemId()I
    .locals 1

    .line 1
    iget-object v0, p0, LT0/l;->c:LG0/b;

    .line 2
    .line 3
    invoke-virtual {v0}, LT0/f;->getSelectedItemId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v1, v0, LY0/h;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, LY0/h;

    .line 13
    .line 14
    invoke-static {p0, v0}, Lcom/bumptech/glide/c;->T(Landroid/view/View;LY0/h;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .line 1
    instance-of v0, p1, LT0/k;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, LT0/k;

    .line 10
    .line 11
    iget-object v0, p1, LC/c;->b:Landroid/os/Parcelable;

    .line 12
    .line 13
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p1, LT0/k;->d:Landroid/os/Bundle;

    .line 17
    .line 18
    iget-object v0, p0, LT0/l;->b:LT0/e;

    .line 19
    .line 20
    iget-object v0, v0, Lj/p;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 21
    .line 22
    const-string v1, "android:menu:presenters"

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_4

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_4

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Lj/C;

    .line 58
    .line 59
    if-nez v3, :cond_3

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    invoke-interface {v3}, Lj/C;->getId()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-lez v2, :cond_2

    .line 70
    .line 71
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Landroid/os/Parcelable;

    .line 76
    .line 77
    if-eqz v2, :cond_2

    .line 78
    .line 79
    invoke-interface {v3, v2}, Lj/C;->e(Landroid/os/Parcelable;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    :goto_1
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, LT0/k;

    .line 6
    .line 7
    invoke-direct {v1, v0}, LC/c;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Landroid/os/Bundle;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, v1, LT0/k;->d:Landroid/os/Bundle;

    .line 16
    .line 17
    iget-object v2, p0, LT0/l;->b:LT0/e;

    .line 18
    .line 19
    iget-object v2, v2, Lj/p;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    return-object v1

    .line 28
    :cond_0
    new-instance v3, Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_3

    .line 42
    .line 43
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    check-cast v6, Lj/C;

    .line 54
    .line 55
    if-nez v6, :cond_2

    .line 56
    .line 57
    invoke-virtual {v2, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-interface {v6}, Lj/C;->getId()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-lez v5, :cond_1

    .line 66
    .line 67
    invoke-interface {v6}, Lj/C;->j()Landroid/os/Parcelable;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    if-eqz v6, :cond_1

    .line 72
    .line 73
    invoke-virtual {v3, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    const-string v2, "android:menu:presenters"

    .line 78
    .line 79
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 80
    .line 81
    .line 82
    return-object v1
.end method

.method public setActiveIndicatorLabelPadding(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LT0/l;->c:LG0/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LT0/f;->setActiveIndicatorLabelPadding(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setElevation(F)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v1, v0, LY0/h;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, LY0/h;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, LY0/h;->k(F)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, LT0/l;->c:LG0/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LT0/f;->setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemActiveIndicatorEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, LT0/l;->c:LG0/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LT0/f;->setItemActiveIndicatorEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemActiveIndicatorHeight(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LT0/l;->c:LG0/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LT0/f;->setItemActiveIndicatorHeight(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemActiveIndicatorMarginHorizontal(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LT0/l;->c:LG0/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LT0/f;->setItemActiveIndicatorMarginHorizontal(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemActiveIndicatorShapeAppearance(LY0/m;)V
    .locals 1

    .line 1
    iget-object v0, p0, LT0/l;->c:LG0/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LT0/f;->setItemActiveIndicatorShapeAppearance(LY0/m;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemActiveIndicatorWidth(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LT0/l;->c:LG0/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LT0/f;->setItemActiveIndicatorWidth(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, LT0/l;->c:LG0/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LT0/f;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LT0/l;->c:LG0/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LT0/f;->setItemBackgroundRes(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemIconSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LT0/l;->c:LG0/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LT0/f;->setItemIconSize(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemIconSizeRes(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, LT0/l;->setItemIconSize(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, LT0/l;->c:LG0/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LT0/f;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemPaddingBottom(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LT0/l;->c:LG0/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LT0/f;->setItemPaddingBottom(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemPaddingTop(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LT0/l;->c:LG0/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LT0/f;->setItemPaddingTop(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, LT0/l;->c:LG0/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LT0/f;->setItemRippleColor(Landroid/content/res/ColorStateList;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LT0/l;->c:LG0/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LT0/f;->setItemTextAppearanceActive(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemTextAppearanceActiveBoldEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, LT0/l;->c:LG0/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LT0/f;->setItemTextAppearanceActiveBoldEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LT0/l;->c:LG0/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LT0/f;->setItemTextAppearanceInactive(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, LT0/l;->c:LG0/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LT0/f;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 2

    .line 1
    iget-object v0, p0, LT0/l;->c:LG0/b;

    .line 2
    .line 3
    invoke-virtual {v0}, LT0/f;->getLabelVisibilityMode()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eq v1, p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, LT0/f;->setLabelVisibilityMode(I)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, LT0/l;->d:LT0/h;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, LT0/h;->g(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setOnItemReselectedListener(LT0/i;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setOnItemSelectedListener(LT0/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, LT0/l;->f:LT0/j;

    .line 2
    .line 3
    return-void
.end method

.method public setSelectedItemId(I)V
    .locals 3

    .line 1
    iget-object v0, p0, LT0/l;->b:LT0/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lj/p;->findItem(I)Landroid/view/MenuItem;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, LT0/l;->d:LT0/h;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, p1, v1, v2}, Lj/p;->q(Landroid/view/MenuItem;Lj/C;I)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
