.class public abstract Le/j;
.super Landroidx/fragment/app/FragmentActivity;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Le/k;
.implements Landroidx/core/app/TaskStackBuilder$SupportParentable;


# instance fields
.field public b:Le/B;


# virtual methods
.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/j;->l()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Le/j;->k()Le/p;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Le/B;

    .line 9
    .line 10
    invoke-virtual {v0}, Le/B;->w()V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Le/B;->B:Landroid/view/ViewGroup;

    .line 14
    .line 15
    const v2, 0x1020002

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/view/ViewGroup;

    .line 23
    .line 24
    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, v0, Le/B;->n:Le/w;

    .line 28
    .line 29
    iget-object p2, v0, Le/B;->m:Landroid/view/Window;

    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p1, p2}, Le/w;->a(Landroid/view/Window$Callback;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Le/j;->k()Le/p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Le/B;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Le/B;->P:Z

    .line 9
    .line 10
    iget v2, v0, Le/B;->T:I

    .line 11
    .line 12
    const/16 v3, -0x64

    .line 13
    .line 14
    if-eq v2, v3, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget v2, Le/p;->c:I

    .line 18
    .line 19
    :goto_0
    invoke-virtual {v0, p1, v2}, Le/B;->B(Landroid/content/Context;I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {p1}, Le/p;->d(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_7

    .line 28
    .line 29
    invoke-static {p1}, Le/p;->d(Landroid/content/Context;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    goto :goto_4

    .line 36
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 37
    .line 38
    const/16 v3, 0x21

    .line 39
    .line 40
    if-lt v2, v3, :cond_2

    .line 41
    .line 42
    sget-boolean v2, Le/p;->g:Z

    .line 43
    .line 44
    if-nez v2, :cond_7

    .line 45
    .line 46
    sget-object v2, Le/p;->b:Le/n;

    .line 47
    .line 48
    new-instance v3, LN/f;

    .line 49
    .line 50
    const/4 v4, 0x3

    .line 51
    invoke-direct {v3, p1, v4}, LN/f;-><init>(Landroid/content/Context;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v3}, Le/n;->execute(Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    goto :goto_4

    .line 58
    :cond_2
    sget-object v2, Le/p;->j:Ljava/lang/Object;

    .line 59
    .line 60
    monitor-enter v2

    .line 61
    :try_start_0
    sget-object v3, Le/p;->d:Landroidx/core/os/LocaleListCompat;

    .line 62
    .line 63
    if-nez v3, :cond_5

    .line 64
    .line 65
    sget-object v3, Le/p;->e:Landroidx/core/os/LocaleListCompat;

    .line 66
    .line 67
    if-nez v3, :cond_3

    .line 68
    .line 69
    invoke-static {p1}, Landroidx/core/app/AppLocalesStorageHelper;->readLocales(Landroid/content/Context;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-static {v3}, Landroidx/core/os/LocaleListCompat;->forLanguageTags(Ljava/lang/String;)Landroidx/core/os/LocaleListCompat;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    sput-object v3, Le/p;->e:Landroidx/core/os/LocaleListCompat;

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    goto :goto_3

    .line 82
    :cond_3
    :goto_1
    sget-object v3, Le/p;->e:Landroidx/core/os/LocaleListCompat;

    .line 83
    .line 84
    invoke-virtual {v3}, Landroidx/core/os/LocaleListCompat;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_4

    .line 89
    .line 90
    monitor-exit v2

    .line 91
    goto :goto_4

    .line 92
    :cond_4
    sget-object v3, Le/p;->e:Landroidx/core/os/LocaleListCompat;

    .line 93
    .line 94
    sput-object v3, Le/p;->d:Landroidx/core/os/LocaleListCompat;

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_5
    sget-object v4, Le/p;->e:Landroidx/core/os/LocaleListCompat;

    .line 98
    .line 99
    invoke-virtual {v3, v4}, Landroidx/core/os/LocaleListCompat;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-nez v3, :cond_6

    .line 104
    .line 105
    sget-object v3, Le/p;->d:Landroidx/core/os/LocaleListCompat;

    .line 106
    .line 107
    sput-object v3, Le/p;->e:Landroidx/core/os/LocaleListCompat;

    .line 108
    .line 109
    invoke-virtual {v3}, Landroidx/core/os/LocaleListCompat;->toLanguageTags()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-static {p1, v3}, Landroidx/core/app/AppLocalesStorageHelper;->persistLocales(Landroid/content/Context;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_6
    :goto_2
    monitor-exit v2

    .line 117
    goto :goto_4

    .line 118
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    throw p1

    .line 120
    :cond_7
    :goto_4
    invoke-static {p1}, Le/B;->p(Landroid/content/Context;)Landroidx/core/os/LocaleListCompat;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    instance-of v3, p1, Landroid/view/ContextThemeWrapper;

    .line 125
    .line 126
    const/4 v4, 0x0

    .line 127
    const/4 v5, 0x0

    .line 128
    if-eqz v3, :cond_8

    .line 129
    .line 130
    invoke-static {p1, v0, v2, v5, v4}, Le/B;->t(Landroid/content/Context;ILandroidx/core/os/LocaleListCompat;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    :try_start_1
    move-object v6, p1

    .line 135
    check-cast v6, Landroid/view/ContextThemeWrapper;

    .line 136
    .line 137
    invoke-virtual {v6, v3}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    .line 139
    .line 140
    goto/16 :goto_6

    .line 141
    .line 142
    :catch_0
    :cond_8
    instance-of v3, p1, Li/c;

    .line 143
    .line 144
    if-eqz v3, :cond_9

    .line 145
    .line 146
    invoke-static {p1, v0, v2, v5, v4}, Le/B;->t(Landroid/content/Context;ILandroidx/core/os/LocaleListCompat;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    :try_start_2
    move-object v4, p1

    .line 151
    check-cast v4, Li/c;

    .line 152
    .line 153
    invoke-virtual {v4, v3}, Li/c;->a(Landroid/content/res/Configuration;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 154
    .line 155
    .line 156
    goto/16 :goto_6

    .line 157
    .line 158
    :catch_1
    :cond_9
    sget-boolean v3, Le/B;->k0:Z

    .line 159
    .line 160
    if-nez v3, :cond_a

    .line 161
    .line 162
    goto/16 :goto_6

    .line 163
    .line 164
    :cond_a
    new-instance v3, Landroid/content/res/Configuration;

    .line 165
    .line 166
    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    .line 167
    .line 168
    .line 169
    const/4 v4, -0x1

    .line 170
    iput v4, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 171
    .line 172
    const/4 v4, 0x0

    .line 173
    iput v4, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 174
    .line 175
    invoke-virtual {p1, v3}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    iget v7, v6, Landroid/content/res/Configuration;->uiMode:I

    .line 196
    .line 197
    iput v7, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 198
    .line 199
    invoke-virtual {v3, v6}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    .line 200
    .line 201
    .line 202
    move-result v7

    .line 203
    if-nez v7, :cond_20

    .line 204
    .line 205
    new-instance v5, Landroid/content/res/Configuration;

    .line 206
    .line 207
    invoke-direct {v5}, Landroid/content/res/Configuration;-><init>()V

    .line 208
    .line 209
    .line 210
    iput v4, v5, Landroid/content/res/Configuration;->fontScale:F

    .line 211
    .line 212
    invoke-virtual {v3, v6}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    .line 213
    .line 214
    .line 215
    move-result v4

    .line 216
    if-nez v4, :cond_b

    .line 217
    .line 218
    goto/16 :goto_5

    .line 219
    .line 220
    :cond_b
    iget v4, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 221
    .line 222
    iget v7, v6, Landroid/content/res/Configuration;->fontScale:F

    .line 223
    .line 224
    cmpl-float v4, v4, v7

    .line 225
    .line 226
    if-eqz v4, :cond_c

    .line 227
    .line 228
    iput v7, v5, Landroid/content/res/Configuration;->fontScale:F

    .line 229
    .line 230
    :cond_c
    iget v4, v3, Landroid/content/res/Configuration;->mcc:I

    .line 231
    .line 232
    iget v7, v6, Landroid/content/res/Configuration;->mcc:I

    .line 233
    .line 234
    if-eq v4, v7, :cond_d

    .line 235
    .line 236
    iput v7, v5, Landroid/content/res/Configuration;->mcc:I

    .line 237
    .line 238
    :cond_d
    iget v4, v3, Landroid/content/res/Configuration;->mnc:I

    .line 239
    .line 240
    iget v7, v6, Landroid/content/res/Configuration;->mnc:I

    .line 241
    .line 242
    if-eq v4, v7, :cond_e

    .line 243
    .line 244
    iput v7, v5, Landroid/content/res/Configuration;->mnc:I

    .line 245
    .line 246
    :cond_e
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 247
    .line 248
    invoke-static {v3, v6, v5}, Le/u;->a(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 249
    .line 250
    .line 251
    iget v7, v3, Landroid/content/res/Configuration;->touchscreen:I

    .line 252
    .line 253
    iget v8, v6, Landroid/content/res/Configuration;->touchscreen:I

    .line 254
    .line 255
    if-eq v7, v8, :cond_f

    .line 256
    .line 257
    iput v8, v5, Landroid/content/res/Configuration;->touchscreen:I

    .line 258
    .line 259
    :cond_f
    iget v7, v3, Landroid/content/res/Configuration;->keyboard:I

    .line 260
    .line 261
    iget v8, v6, Landroid/content/res/Configuration;->keyboard:I

    .line 262
    .line 263
    if-eq v7, v8, :cond_10

    .line 264
    .line 265
    iput v8, v5, Landroid/content/res/Configuration;->keyboard:I

    .line 266
    .line 267
    :cond_10
    iget v7, v3, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 268
    .line 269
    iget v8, v6, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 270
    .line 271
    if-eq v7, v8, :cond_11

    .line 272
    .line 273
    iput v8, v5, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 274
    .line 275
    :cond_11
    iget v7, v3, Landroid/content/res/Configuration;->navigation:I

    .line 276
    .line 277
    iget v8, v6, Landroid/content/res/Configuration;->navigation:I

    .line 278
    .line 279
    if-eq v7, v8, :cond_12

    .line 280
    .line 281
    iput v8, v5, Landroid/content/res/Configuration;->navigation:I

    .line 282
    .line 283
    :cond_12
    iget v7, v3, Landroid/content/res/Configuration;->navigationHidden:I

    .line 284
    .line 285
    iget v8, v6, Landroid/content/res/Configuration;->navigationHidden:I

    .line 286
    .line 287
    if-eq v7, v8, :cond_13

    .line 288
    .line 289
    iput v8, v5, Landroid/content/res/Configuration;->navigationHidden:I

    .line 290
    .line 291
    :cond_13
    iget v7, v3, Landroid/content/res/Configuration;->orientation:I

    .line 292
    .line 293
    iget v8, v6, Landroid/content/res/Configuration;->orientation:I

    .line 294
    .line 295
    if-eq v7, v8, :cond_14

    .line 296
    .line 297
    iput v8, v5, Landroid/content/res/Configuration;->orientation:I

    .line 298
    .line 299
    :cond_14
    iget v7, v3, Landroid/content/res/Configuration;->screenLayout:I

    .line 300
    .line 301
    and-int/lit8 v7, v7, 0xf

    .line 302
    .line 303
    iget v8, v6, Landroid/content/res/Configuration;->screenLayout:I

    .line 304
    .line 305
    and-int/lit8 v8, v8, 0xf

    .line 306
    .line 307
    if-eq v7, v8, :cond_15

    .line 308
    .line 309
    iget v7, v5, Landroid/content/res/Configuration;->screenLayout:I

    .line 310
    .line 311
    or-int/2addr v7, v8

    .line 312
    iput v7, v5, Landroid/content/res/Configuration;->screenLayout:I

    .line 313
    .line 314
    :cond_15
    iget v7, v3, Landroid/content/res/Configuration;->screenLayout:I

    .line 315
    .line 316
    and-int/lit16 v7, v7, 0xc0

    .line 317
    .line 318
    iget v8, v6, Landroid/content/res/Configuration;->screenLayout:I

    .line 319
    .line 320
    and-int/lit16 v8, v8, 0xc0

    .line 321
    .line 322
    if-eq v7, v8, :cond_16

    .line 323
    .line 324
    iget v7, v5, Landroid/content/res/Configuration;->screenLayout:I

    .line 325
    .line 326
    or-int/2addr v7, v8

    .line 327
    iput v7, v5, Landroid/content/res/Configuration;->screenLayout:I

    .line 328
    .line 329
    :cond_16
    iget v7, v3, Landroid/content/res/Configuration;->screenLayout:I

    .line 330
    .line 331
    and-int/lit8 v7, v7, 0x30

    .line 332
    .line 333
    iget v8, v6, Landroid/content/res/Configuration;->screenLayout:I

    .line 334
    .line 335
    and-int/lit8 v8, v8, 0x30

    .line 336
    .line 337
    if-eq v7, v8, :cond_17

    .line 338
    .line 339
    iget v7, v5, Landroid/content/res/Configuration;->screenLayout:I

    .line 340
    .line 341
    or-int/2addr v7, v8

    .line 342
    iput v7, v5, Landroid/content/res/Configuration;->screenLayout:I

    .line 343
    .line 344
    :cond_17
    iget v7, v3, Landroid/content/res/Configuration;->screenLayout:I

    .line 345
    .line 346
    and-int/lit16 v7, v7, 0x300

    .line 347
    .line 348
    iget v8, v6, Landroid/content/res/Configuration;->screenLayout:I

    .line 349
    .line 350
    and-int/lit16 v8, v8, 0x300

    .line 351
    .line 352
    if-eq v7, v8, :cond_18

    .line 353
    .line 354
    iget v7, v5, Landroid/content/res/Configuration;->screenLayout:I

    .line 355
    .line 356
    or-int/2addr v7, v8

    .line 357
    iput v7, v5, Landroid/content/res/Configuration;->screenLayout:I

    .line 358
    .line 359
    :cond_18
    const/16 v7, 0x1a

    .line 360
    .line 361
    if-lt v4, v7, :cond_1a

    .line 362
    .line 363
    invoke-static {v3}, Landroidx/core/view/accessibility/a;->a(Landroid/content/res/Configuration;)I

    .line 364
    .line 365
    .line 366
    move-result v4

    .line 367
    and-int/lit8 v4, v4, 0x3

    .line 368
    .line 369
    invoke-static {v6}, Landroidx/core/view/accessibility/a;->a(Landroid/content/res/Configuration;)I

    .line 370
    .line 371
    .line 372
    move-result v7

    .line 373
    and-int/lit8 v7, v7, 0x3

    .line 374
    .line 375
    if-eq v4, v7, :cond_19

    .line 376
    .line 377
    invoke-static {v5}, Landroidx/core/view/accessibility/a;->a(Landroid/content/res/Configuration;)I

    .line 378
    .line 379
    .line 380
    move-result v4

    .line 381
    invoke-static {v6}, Landroidx/core/view/accessibility/a;->a(Landroid/content/res/Configuration;)I

    .line 382
    .line 383
    .line 384
    move-result v7

    .line 385
    and-int/lit8 v7, v7, 0x3

    .line 386
    .line 387
    or-int/2addr v4, v7

    .line 388
    invoke-static {v5, v4}, Landroidx/core/view/accessibility/a;->v(Landroid/content/res/Configuration;I)V

    .line 389
    .line 390
    .line 391
    :cond_19
    invoke-static {v3}, Landroidx/core/view/accessibility/a;->a(Landroid/content/res/Configuration;)I

    .line 392
    .line 393
    .line 394
    move-result v4

    .line 395
    and-int/lit8 v4, v4, 0xc

    .line 396
    .line 397
    invoke-static {v6}, Landroidx/core/view/accessibility/a;->a(Landroid/content/res/Configuration;)I

    .line 398
    .line 399
    .line 400
    move-result v7

    .line 401
    and-int/lit8 v7, v7, 0xc

    .line 402
    .line 403
    if-eq v4, v7, :cond_1a

    .line 404
    .line 405
    invoke-static {v5}, Landroidx/core/view/accessibility/a;->a(Landroid/content/res/Configuration;)I

    .line 406
    .line 407
    .line 408
    move-result v4

    .line 409
    invoke-static {v6}, Landroidx/core/view/accessibility/a;->a(Landroid/content/res/Configuration;)I

    .line 410
    .line 411
    .line 412
    move-result v7

    .line 413
    and-int/lit8 v7, v7, 0xc

    .line 414
    .line 415
    or-int/2addr v4, v7

    .line 416
    invoke-static {v5, v4}, Landroidx/core/view/accessibility/a;->v(Landroid/content/res/Configuration;I)V

    .line 417
    .line 418
    .line 419
    :cond_1a
    iget v4, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 420
    .line 421
    and-int/lit8 v4, v4, 0xf

    .line 422
    .line 423
    iget v7, v6, Landroid/content/res/Configuration;->uiMode:I

    .line 424
    .line 425
    and-int/lit8 v7, v7, 0xf

    .line 426
    .line 427
    if-eq v4, v7, :cond_1b

    .line 428
    .line 429
    iget v4, v5, Landroid/content/res/Configuration;->uiMode:I

    .line 430
    .line 431
    or-int/2addr v4, v7

    .line 432
    iput v4, v5, Landroid/content/res/Configuration;->uiMode:I

    .line 433
    .line 434
    :cond_1b
    iget v4, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 435
    .line 436
    and-int/lit8 v4, v4, 0x30

    .line 437
    .line 438
    iget v7, v6, Landroid/content/res/Configuration;->uiMode:I

    .line 439
    .line 440
    and-int/lit8 v7, v7, 0x30

    .line 441
    .line 442
    if-eq v4, v7, :cond_1c

    .line 443
    .line 444
    iget v4, v5, Landroid/content/res/Configuration;->uiMode:I

    .line 445
    .line 446
    or-int/2addr v4, v7

    .line 447
    iput v4, v5, Landroid/content/res/Configuration;->uiMode:I

    .line 448
    .line 449
    :cond_1c
    iget v4, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 450
    .line 451
    iget v7, v6, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 452
    .line 453
    if-eq v4, v7, :cond_1d

    .line 454
    .line 455
    iput v7, v5, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 456
    .line 457
    :cond_1d
    iget v4, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 458
    .line 459
    iget v7, v6, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 460
    .line 461
    if-eq v4, v7, :cond_1e

    .line 462
    .line 463
    iput v7, v5, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 464
    .line 465
    :cond_1e
    iget v4, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 466
    .line 467
    iget v7, v6, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 468
    .line 469
    if-eq v4, v7, :cond_1f

    .line 470
    .line 471
    iput v7, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 472
    .line 473
    :cond_1f
    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    .line 474
    .line 475
    iget v4, v6, Landroid/content/res/Configuration;->densityDpi:I

    .line 476
    .line 477
    if-eq v3, v4, :cond_20

    .line 478
    .line 479
    iput v4, v5, Landroid/content/res/Configuration;->densityDpi:I

    .line 480
    .line 481
    :cond_20
    :goto_5
    invoke-static {p1, v0, v2, v5, v1}, Le/B;->t(Landroid/content/Context;ILandroidx/core/os/LocaleListCompat;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    new-instance v1, Li/c;

    .line 486
    .line 487
    const v2, 0x7f130222

    .line 488
    .line 489
    .line 490
    invoke-direct {v1, p1, v2}, Li/c;-><init>(Landroid/content/Context;I)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v1, v0}, Li/c;->a(Landroid/content/res/Configuration;)V

    .line 494
    .line 495
    .line 496
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 497
    .line 498
    .line 499
    move-result-object p1
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    .line 500
    if-eqz p1, :cond_21

    .line 501
    .line 502
    invoke-virtual {v1}, Li/c;->getTheme()Landroid/content/res/Resources$Theme;

    .line 503
    .line 504
    .line 505
    move-result-object p1

    .line 506
    invoke-static {p1}, Landroidx/core/content/res/ResourcesCompat$ThemeCompat;->rebase(Landroid/content/res/Resources$Theme;)V

    .line 507
    .line 508
    .line 509
    :catch_2
    :cond_21
    move-object p1, v1

    .line 510
    :goto_6
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 511
    .line 512
    .line 513
    return-void
.end method

.method public final closeOptionsMenu()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/j;->k()Le/p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Le/B;

    .line 6
    .line 7
    invoke-virtual {v0}, Le/B;->A()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-super {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Le/j;->k()Le/p;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Le/B;

    .line 9
    .line 10
    invoke-virtual {v0}, Le/B;->A()V

    .line 11
    .line 12
    .line 13
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/j;->k()Le/p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Le/B;

    .line 6
    .line 7
    invoke-virtual {v0}, Le/B;->w()V

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Le/B;->m:Landroid/view/Window;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/j;->k()Le/p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Le/B;

    .line 6
    .line 7
    iget-object v1, v0, Le/B;->q:Li/h;

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Le/B;->A()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Li/h;

    .line 15
    .line 16
    iget-object v2, v0, Le/B;->p:Le/M;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v2}, Le/M;->f0()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v2, v0, Le/B;->l:Landroid/content/Context;

    .line 26
    .line 27
    :goto_0
    invoke-direct {v1, v2}, Li/h;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, v0, Le/B;->q:Li/h;

    .line 31
    .line 32
    :cond_1
    iget-object v0, v0, Le/B;->q:Li/h;

    .line 33
    .line 34
    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 1

    .line 1
    sget v0, Lk/n1;->a:I

    .line 2
    .line 3
    invoke-super {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getSupportParentActivityIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/core/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final invalidateOptionsMenu()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/j;->k()Le/p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Le/p;->b()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final k()Le/p;
    .locals 2

    .line 1
    iget-object v0, p0, Le/j;->b:Le/B;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Le/p;->b:Le/n;

    .line 6
    .line 7
    new-instance v0, Le/B;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, p0, v1, p0, p0}, Le/B;-><init>(Landroid/content/Context;Landroid/view/Window;Le/k;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Le/j;->b:Le/B;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Le/j;->b:Le/B;

    .line 16
    .line 17
    return-object v0
.end method

.method public final l()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0, p0}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->set(Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0, p0}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->set(Landroid/view/View;Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0, p0}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->set(Landroid/view/View;Landroidx/savedstate/SavedStateRegistryOwner;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0, p0}, Landroidx/activity/ViewTreeOnBackPressedDispatcherOwner;->set(Landroid/view/View;Landroidx/activity/OnBackPressedDispatcherOwner;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Le/j;->k()Le/p;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Le/B;

    .line 9
    .line 10
    iget-boolean v0, p1, Le/B;->G:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-boolean v0, p1, Le/B;->A:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Le/B;->A()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p1, Le/B;->p:Le/M;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v1, v0, Le/M;->b:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/high16 v2, 0x7f050000

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {v0, v1}, Le/M;->i0(Z)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-static {}, Lk/w;->a()Lk/w;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p1, Le/B;->l:Landroid/content/Context;

    .line 45
    .line 46
    monitor-enter v0

    .line 47
    :try_start_0
    iget-object v2, v0, Lk/w;->a:Lk/P0;

    .line 48
    .line 49
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    :try_start_1
    iget-object v3, v2, Lk/P0;->b:Ljava/util/WeakHashMap;

    .line 51
    .line 52
    invoke-virtual {v3, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lq/g;

    .line 57
    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    invoke-virtual {v1}, Lq/g;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 67
    monitor-exit v0

    .line 68
    new-instance v0, Landroid/content/res/Configuration;

    .line 69
    .line 70
    iget-object v1, p1, Le/B;->l:Landroid/content/Context;

    .line 71
    .line 72
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 81
    .line 82
    .line 83
    iput-object v0, p1, Le/B;->S:Landroid/content/res/Configuration;

    .line 84
    .line 85
    const/4 v0, 0x0

    .line 86
    invoke-virtual {p1, v0, v0}, Le/B;->n(ZZ)Z

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    :try_start_4
    throw p1

    .line 92
    :catchall_1
    move-exception p1

    .line 93
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 94
    throw p1
.end method

.method public final onContentChanged()V
    .locals 0

    .line 1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Le/j;->k()Le/p;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Le/p;->f()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-static {v0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0, p2}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    const/4 p1, 0x1

    .line 62
    return p1

    .line 63
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    return p1
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Le/j;->k()Le/p;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Le/B;

    .line 14
    .line 15
    invoke-virtual {p1}, Le/B;->A()V

    .line 16
    .line 17
    .line 18
    iget-object p1, p1, Le/B;->p:Le/M;

    .line 19
    .line 20
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    const v1, 0x102002c

    .line 25
    .line 26
    .line 27
    if-ne p2, v1, :cond_2

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    iget-object p1, p1, Le/M;->f:Lk/m0;

    .line 32
    .line 33
    check-cast p1, Lk/i1;

    .line 34
    .line 35
    iget p1, p1, Lk/i1;->b:I

    .line 36
    .line 37
    and-int/lit8 p1, p1, 0x4

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    invoke-static {p0}, Landroidx/core/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    invoke-static {p0, p1}, Landroidx/core/app/NavUtils;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-eqz p2, :cond_1

    .line 52
    .line 53
    invoke-static {p0}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1, p0}, Landroidx/core/app/TaskStackBuilder;->addParentStack(Landroid/app/Activity;)Landroidx/core/app/TaskStackBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Landroidx/core/app/TaskStackBuilder;->startActivities()V

    .line 61
    .line 62
    .line 63
    :try_start_0
    invoke-static {p0}, Landroidx/core/app/ActivityCompat;->finishAffinity(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 68
    .line 69
    .line 70
    :goto_0
    return v0

    .line 71
    :cond_1
    invoke-static {p0, p1}, Landroidx/core/app/NavUtils;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 72
    .line 73
    .line 74
    return v0

    .line 75
    :cond_2
    const/4 p1, 0x0

    .line 76
    return p1
.end method

.method public final onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Le/j;->k()Le/p;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Le/B;

    .line 9
    .line 10
    invoke-virtual {p1}, Le/B;->w()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onPostResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPostResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Le/j;->k()Le/p;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Le/B;

    .line 9
    .line 10
    invoke-virtual {v0}, Le/B;->A()V

    .line 11
    .line 12
    .line 13
    iget-object v0, v0, Le/B;->p:Le/M;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    iput-boolean v1, v0, Le/M;->u:Z

    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Le/j;->k()Le/p;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Le/B;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Le/B;->n(ZZ)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Le/j;->k()Le/p;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Le/B;

    .line 9
    .line 10
    invoke-virtual {v0}, Le/B;->A()V

    .line 11
    .line 12
    .line 13
    iget-object v0, v0, Le/B;->p:Le/M;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput-boolean v1, v0, Le/M;->u:Z

    .line 19
    .line 20
    iget-object v0, v0, Le/M;->t:Li/j;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Li/j;->a()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Le/j;->k()Le/p;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-virtual {p2, p1}, Le/p;->m(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final openOptionsMenu()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/j;->k()Le/p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Le/B;

    .line 6
    .line 7
    invoke-virtual {v0}, Le/B;->A()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-super {p0}, Landroid/app/Activity;->openOptionsMenu()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/j;->l()V

    .line 2
    invoke-virtual {p0}, Le/j;->k()Le/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/p;->j(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Le/j;->l()V

    .line 4
    invoke-virtual {p0}, Le/j;->k()Le/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/p;->k(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Le/j;->l()V

    .line 6
    invoke-virtual {p0}, Le/j;->k()Le/p;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Le/p;->l(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setTheme(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/content/Context;->setTheme(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Le/j;->k()Le/p;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Le/B;

    .line 9
    .line 10
    iput p1, v0, Le/B;->U:I

    .line 11
    .line 12
    return-void
.end method

.method public final supportInvalidateOptionsMenu()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/j;->k()Le/p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Le/p;->b()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
