.class public final synthetic LC1/V;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LC1/V;->b:I

    .line 2
    .line 3
    iput-object p2, p0, LC1/V;->c:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget p1, p0, LC1/V;->b:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, LC1/V;->c:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v2, Landroid/app/Dialog;

    .line 11
    .line 12
    sget p1, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->e:I

    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    check-cast v2, Lcom/minhub/gamehub/game/KiriKiriGameActivity;

    .line 19
    .line 20
    sget p1, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->e:I

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const v3, 0x7f0c0043

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance v1, Landroid/app/Dialog;

    .line 34
    .line 35
    invoke-direct {v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    const v3, 0x7f0900a9

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    new-instance v4, LC1/V;

    .line 53
    .line 54
    const/16 v5, 0xb

    .line 55
    .line 56
    invoke-direct {v4, v5, v1}, LC1/V;-><init>(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    .line 62
    const v3, 0x7f0900aa

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    new-instance v3, Ly1/M0;

    .line 70
    .line 71
    const/4 v4, 0x2

    .line 72
    invoke-direct {v3, v4, v1, v2}, Ly1/M0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-eqz p1, :cond_0

    .line 83
    .line 84
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 85
    .line 86
    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 101
    .line 102
    int-to-float v0, v0

    .line 103
    const v3, 0x3f666666    # 0.9f

    .line 104
    .line 105
    .line 106
    mul-float/2addr v0, v3

    .line 107
    float-to-int v0, v0

    .line 108
    const/16 v3, 0x168

    .line 109
    .line 110
    int-to-float v3, v3

    .line 111
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 120
    .line 121
    mul-float/2addr v3, v2

    .line 122
    float-to-int v2, v3

    .line 123
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    const/4 v2, -0x2

    .line 128
    invoke-virtual {p1, v0, v2}, Landroid/view/Window;->setLayout(II)V

    .line 129
    .line 130
    .line 131
    :cond_0
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :pswitch_1
    check-cast v2, LC1/D;

    .line 136
    .line 137
    invoke-virtual {v2}, LC1/D;->invoke()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :pswitch_2
    check-cast v2, LN1/w;

    .line 142
    .line 143
    sget-object p1, Ly1/f;->a:Ljava/util/List;

    .line 144
    .line 145
    sget-object p1, Ly1/b;->f:Ly1/b;

    .line 146
    .line 147
    invoke-static {p1}, Ly1/f;->a(Ly1/b;)Ly1/e;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    const-string p1, "Required value was null."

    .line 152
    .line 153
    if-eqz v3, :cond_7

    .line 154
    .line 155
    sget-object v1, Ly1/b;->g:Ly1/b;

    .line 156
    .line 157
    invoke-static {v1}, Ly1/f;->a(Ly1/b;)Ly1/e;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    if-eqz v4, :cond_6

    .line 162
    .line 163
    sget-object v1, Ly1/b;->h:Ly1/b;

    .line 164
    .line 165
    invoke-static {v1}, Ly1/f;->a(Ly1/b;)Ly1/e;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    if-eqz v5, :cond_5

    .line 170
    .line 171
    sget-object v1, Ly1/b;->i:Ly1/b;

    .line 172
    .line 173
    invoke-static {v1}, Ly1/f;->a(Ly1/b;)Ly1/e;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    if-eqz v6, :cond_4

    .line 178
    .line 179
    sget-object v1, Ly1/b;->j:Ly1/b;

    .line 180
    .line 181
    invoke-static {v1}, Ly1/f;->a(Ly1/b;)Ly1/e;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    if-eqz v7, :cond_3

    .line 186
    .line 187
    sget-object v1, Ly1/b;->k:Ly1/b;

    .line 188
    .line 189
    invoke-static {v1}, Ly1/f;->a(Ly1/b;)Ly1/e;

    .line 190
    .line 191
    .line 192
    move-result-object v8

    .line 193
    if-eqz v8, :cond_2

    .line 194
    .line 195
    sget-object v1, Ly1/b;->l:Ly1/b;

    .line 196
    .line 197
    invoke-static {v1}, Ly1/f;->a(Ly1/b;)Ly1/e;

    .line 198
    .line 199
    .line 200
    move-result-object v9

    .line 201
    if-eqz v9, :cond_1

    .line 202
    .line 203
    filled-new-array/range {v3 .. v9}, [Ly1/e;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-virtual {v2, p1, v0}, LN1/w;->e(Ljava/util/List;Z)V

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 216
    .line 217
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw v0

    .line 221
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 222
    .line 223
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw v0

    .line 227
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 228
    .line 229
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    throw v0

    .line 233
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 234
    .line 235
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    throw v0

    .line 239
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 240
    .line 241
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    throw v0

    .line 245
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 246
    .line 247
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    throw v0

    .line 251
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 252
    .line 253
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    throw v0

    .line 257
    :pswitch_3
    check-cast v2, Ld1/v;

    .line 258
    .line 259
    iget-object p1, v2, Ld1/v;->f:Landroid/widget/EditText;

    .line 260
    .line 261
    if-nez p1, :cond_8

    .line 262
    .line 263
    goto :goto_1

    .line 264
    :cond_8
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 265
    .line 266
    .line 267
    move-result p1

    .line 268
    iget-object v0, v2, Ld1/v;->f:Landroid/widget/EditText;

    .line 269
    .line 270
    if-eqz v0, :cond_9

    .line 271
    .line 272
    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    .line 277
    .line 278
    if-eqz v0, :cond_9

    .line 279
    .line 280
    iget-object v0, v2, Ld1/v;->f:Landroid/widget/EditText;

    .line 281
    .line 282
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 283
    .line 284
    .line 285
    goto :goto_0

    .line 286
    :cond_9
    iget-object v0, v2, Ld1/v;->f:Landroid/widget/EditText;

    .line 287
    .line 288
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 293
    .line 294
    .line 295
    :goto_0
    if-ltz p1, :cond_a

    .line 296
    .line 297
    iget-object v0, v2, Ld1/v;->f:Landroid/widget/EditText;

    .line 298
    .line 299
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 300
    .line 301
    .line 302
    :cond_a
    invoke-virtual {v2}, Ld1/o;->p()V

    .line 303
    .line 304
    .line 305
    :goto_1
    return-void

    .line 306
    :pswitch_4
    check-cast v2, Ld1/i;

    .line 307
    .line 308
    invoke-virtual {v2}, Ld1/i;->t()V

    .line 309
    .line 310
    .line 311
    return-void

    .line 312
    :pswitch_5
    check-cast v2, Ld1/d;

    .line 313
    .line 314
    iget-object p1, v2, Ld1/d;->i:Landroid/widget/EditText;

    .line 315
    .line 316
    if-nez p1, :cond_b

    .line 317
    .line 318
    goto :goto_2

    .line 319
    :cond_b
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    if-eqz p1, :cond_c

    .line 324
    .line 325
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 326
    .line 327
    .line 328
    :cond_c
    invoke-virtual {v2}, Ld1/o;->p()V

    .line 329
    .line 330
    .line 331
    :goto_2
    return-void

    .line 332
    :pswitch_6
    check-cast v2, Lcom/google/android/material/datepicker/n;

    .line 333
    .line 334
    invoke-virtual {v2}, Lcom/google/android/material/datepicker/n;->b()V

    .line 335
    .line 336
    .line 337
    throw v1

    .line 338
    :pswitch_7
    check-cast v2, Lcom/minhub/gamehub/hub/SettingsActivity;

    .line 339
    .line 340
    sget p1, Lcom/minhub/gamehub/hub/SettingsActivity;->f:I

    .line 341
    .line 342
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 343
    .line 344
    .line 345
    return-void

    .line 346
    :pswitch_8
    check-cast v2, Lcom/minhub/gamehub/hub/OnlineDownloadsActivity;

    .line 347
    .line 348
    sget p1, Lcom/minhub/gamehub/hub/OnlineDownloadsActivity;->h:I

    .line 349
    .line 350
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 351
    .line 352
    .line 353
    return-void

    .line 354
    :pswitch_9
    check-cast v2, Lcom/minhub/gamehub/hub/ImageViewerActivity;

    .line 355
    .line 356
    sget p1, Lcom/minhub/gamehub/hub/ImageViewerActivity;->e:I

    .line 357
    .line 358
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 359
    .line 360
    .line 361
    return-void

    .line 362
    :pswitch_a
    check-cast v2, Lcom/minhub/gamehub/hub/AppLockActivity;

    .line 363
    .line 364
    iget-object p1, v2, Lcom/minhub/gamehub/hub/AppLockActivity;->f:LC1/V1;

    .line 365
    .line 366
    if-nez p1, :cond_d

    .line 367
    .line 368
    const-string p1, "ui"

    .line 369
    .line 370
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    goto :goto_3

    .line 374
    :cond_d
    move-object v1, p1

    .line 375
    :goto_3
    iget-boolean p1, v1, LC1/V1;->f:Z

    .line 376
    .line 377
    if-nez p1, :cond_e

    .line 378
    .line 379
    invoke-virtual {v2}, Lcom/minhub/gamehub/hub/AppLockActivity;->m()V

    .line 380
    .line 381
    .line 382
    :cond_e
    return-void

    .line 383
    :pswitch_data_0
    .packed-switch 0x0
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
