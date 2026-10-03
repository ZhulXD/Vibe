.class public final Landroidx/biometric/j;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/biometric/p;


# direct methods
.method public synthetic constructor <init>(Landroidx/biometric/p;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/biometric/j;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/biometric/j;->b:Landroidx/biometric/p;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget v0, p0, Landroidx/biometric/j;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Boolean;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iget-object v0, p0, Landroidx/biometric/j;->b:Landroidx/biometric/p;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroidx/biometric/p;->b(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/biometric/p;->dismiss()V

    .line 21
    .line 22
    .line 23
    iget-object p1, v0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 24
    .line 25
    iget-object v0, p1, Landroidx/biometric/w;->u:Landroidx/lifecycle/MutableLiveData;

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 30
    .line 31
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p1, Landroidx/biometric/w;->u:Landroidx/lifecycle/MutableLiveData;

    .line 35
    .line 36
    :cond_0
    iget-object p1, p1, Landroidx/biometric/w;->u:Landroidx/lifecycle/MutableLiveData;

    .line 37
    .line 38
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-static {p1, v0}, Landroidx/biometric/w;->f(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void

    .line 44
    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_7

    .line 51
    .line 52
    iget-object p1, p0, Landroidx/biometric/j;->b:Landroidx/biometric/p;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroidx/biometric/p;->d()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    invoke-virtual {p1}, Landroidx/biometric/p;->f()V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    iget-object v0, p1, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 65
    .line 66
    iget-object v1, v0, Landroidx/biometric/w;->h:Ljava/lang/String;

    .line 67
    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    iget-object v0, v0, Landroidx/biometric/w;->c:LF/b;

    .line 72
    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    iget-object v0, v0, LF/b;->e:Ljava/lang/Object;

    .line 76
    .line 77
    move-object v1, v0

    .line 78
    check-cast v1, Ljava/lang/CharSequence;

    .line 79
    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    const-string v1, ""

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    const/4 v1, 0x0

    .line 87
    :goto_0
    if-eqz v1, :cond_6

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_6
    const v0, 0x7f1200b8

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    :goto_1
    const/16 v0, 0xd

    .line 98
    .line 99
    invoke-virtual {p1, v0, v1}, Landroidx/biometric/p;->g(ILjava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    const/4 v0, 0x2

    .line 103
    invoke-virtual {p1, v0}, Landroidx/biometric/p;->b(I)V

    .line 104
    .line 105
    .line 106
    :goto_2
    iget-object p1, p1, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 107
    .line 108
    const/4 v0, 0x0

    .line 109
    invoke-virtual {p1, v0}, Landroidx/biometric/w;->e(Z)V

    .line 110
    .line 111
    .line 112
    :cond_7
    return-void

    .line 113
    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_c

    .line 120
    .line 121
    iget-object p1, p0, Landroidx/biometric/j;->b:Landroidx/biometric/p;

    .line 122
    .line 123
    invoke-virtual {p1}, Landroidx/biometric/p;->e()Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_8

    .line 128
    .line 129
    const v0, 0x7f120107

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {p1, v0}, Landroidx/biometric/p;->j(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    :cond_8
    iget-object v0, p1, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 140
    .line 141
    iget-boolean v1, v0, Landroidx/biometric/w;->k:Z

    .line 142
    .line 143
    if-nez v1, :cond_9

    .line 144
    .line 145
    const-string v0, "BiometricFragment"

    .line 146
    .line 147
    const-string v1, "Failure not sent to client. Client is not awaiting a result."

    .line 148
    .line 149
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_9
    iget-object v0, v0, Landroidx/biometric/w;->a:Ljava/util/concurrent/Executor;

    .line 154
    .line 155
    if-eqz v0, :cond_a

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_a
    new-instance v0, LP/e;

    .line 159
    .line 160
    const/4 v1, 0x2

    .line 161
    invoke-direct {v0, v1}, LP/e;-><init>(I)V

    .line 162
    .line 163
    .line 164
    :goto_3
    new-instance v1, Landroidx/biometric/i;

    .line 165
    .line 166
    const/4 v2, 0x0

    .line 167
    invoke-direct {v1, p1, v2}, Landroidx/biometric/i;-><init>(Landroidx/biometric/p;I)V

    .line 168
    .line 169
    .line 170
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 171
    .line 172
    .line 173
    :goto_4
    iget-object p1, p1, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 174
    .line 175
    iget-object v0, p1, Landroidx/biometric/w;->r:Landroidx/lifecycle/MutableLiveData;

    .line 176
    .line 177
    if-nez v0, :cond_b

    .line 178
    .line 179
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 180
    .line 181
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 182
    .line 183
    .line 184
    iput-object v0, p1, Landroidx/biometric/w;->r:Landroidx/lifecycle/MutableLiveData;

    .line 185
    .line 186
    :cond_b
    iget-object p1, p1, Landroidx/biometric/w;->r:Landroidx/lifecycle/MutableLiveData;

    .line 187
    .line 188
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 189
    .line 190
    invoke-static {p1, v0}, Landroidx/biometric/w;->f(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    :cond_c
    return-void

    .line 194
    :pswitch_2
    check-cast p1, Ljava/lang/CharSequence;

    .line 195
    .line 196
    if-eqz p1, :cond_e

    .line 197
    .line 198
    iget-object v0, p0, Landroidx/biometric/j;->b:Landroidx/biometric/p;

    .line 199
    .line 200
    invoke-virtual {v0}, Landroidx/biometric/p;->e()Z

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    if-eqz v1, :cond_d

    .line 205
    .line 206
    invoke-virtual {v0, p1}, Landroidx/biometric/p;->j(Ljava/lang/CharSequence;)V

    .line 207
    .line 208
    .line 209
    :cond_d
    iget-object p1, v0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 210
    .line 211
    const/4 v0, 0x0

    .line 212
    invoke-virtual {p1, v0}, Landroidx/biometric/w;->b(Landroidx/biometric/g;)V

    .line 213
    .line 214
    .line 215
    :cond_e
    return-void

    .line 216
    :pswitch_3
    check-cast p1, Landroidx/biometric/g;

    .line 217
    .line 218
    if-eqz p1, :cond_1e

    .line 219
    .line 220
    iget v0, p1, Landroidx/biometric/g;->a:I

    .line 221
    .line 222
    iget-object p1, p1, Landroidx/biometric/g;->b:Ljava/lang/CharSequence;

    .line 223
    .line 224
    packed-switch v0, :pswitch_data_1

    .line 225
    .line 226
    .line 227
    :pswitch_4
    const/16 v0, 0x8

    .line 228
    .line 229
    :pswitch_5
    iget-object v1, p0, Landroidx/biometric/j;->b:Landroidx/biometric/p;

    .line 230
    .line 231
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 236
    .line 237
    const/16 v4, 0x1d

    .line 238
    .line 239
    const/4 v5, 0x0

    .line 240
    if-ge v3, v4, :cond_11

    .line 241
    .line 242
    const/4 v4, 0x7

    .line 243
    if-eq v0, v4, :cond_f

    .line 244
    .line 245
    const/16 v4, 0x9

    .line 246
    .line 247
    if-ne v0, v4, :cond_11

    .line 248
    .line 249
    :cond_f
    if-eqz v2, :cond_11

    .line 250
    .line 251
    invoke-static {v2}, Landroidx/biometric/F;->a(Landroid/content/Context;)Landroid/app/KeyguardManager;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    if-nez v2, :cond_10

    .line 256
    .line 257
    move v2, v5

    .line 258
    goto :goto_5

    .line 259
    :cond_10
    invoke-static {v2}, Landroidx/biometric/F;->b(Landroid/app/KeyguardManager;)Z

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    :goto_5
    if-eqz v2, :cond_11

    .line 264
    .line 265
    iget-object v2, v1, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 266
    .line 267
    invoke-virtual {v2}, Landroidx/biometric/w;->a()I

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    invoke-static {v2}, La/a;->s(I)Z

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    if-eqz v2, :cond_11

    .line 276
    .line 277
    invoke-virtual {v1}, Landroidx/biometric/p;->f()V

    .line 278
    .line 279
    .line 280
    goto/16 :goto_d

    .line 281
    .line 282
    :cond_11
    invoke-virtual {v1}, Landroidx/biometric/p;->e()Z

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    if-eqz v2, :cond_1c

    .line 287
    .line 288
    if-eqz p1, :cond_12

    .line 289
    .line 290
    goto :goto_6

    .line 291
    :cond_12
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    invoke-static {p1, v0}, Lcom/bumptech/glide/d;->z(Landroid/content/Context;I)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    :goto_6
    const/4 v2, 0x5

    .line 300
    if-ne v0, v2, :cond_15

    .line 301
    .line 302
    iget-object v2, v1, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 303
    .line 304
    iget v2, v2, Landroidx/biometric/w;->i:I

    .line 305
    .line 306
    if-eqz v2, :cond_13

    .line 307
    .line 308
    const/4 v3, 0x3

    .line 309
    if-ne v2, v3, :cond_14

    .line 310
    .line 311
    :cond_13
    invoke-virtual {v1, v0, p1}, Landroidx/biometric/p;->h(ILjava/lang/CharSequence;)V

    .line 312
    .line 313
    .line 314
    :cond_14
    invoke-virtual {v1}, Landroidx/biometric/p;->dismiss()V

    .line 315
    .line 316
    .line 317
    goto/16 :goto_d

    .line 318
    .line 319
    :cond_15
    iget-object v2, v1, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 320
    .line 321
    iget-boolean v2, v2, Landroidx/biometric/w;->t:Z

    .line 322
    .line 323
    const/4 v4, 0x1

    .line 324
    if-eqz v2, :cond_16

    .line 325
    .line 326
    invoke-virtual {v1, v0, p1}, Landroidx/biometric/p;->g(ILjava/lang/CharSequence;)V

    .line 327
    .line 328
    .line 329
    goto :goto_b

    .line 330
    :cond_16
    invoke-virtual {v1, p1}, Landroidx/biometric/p;->j(Ljava/lang/CharSequence;)V

    .line 331
    .line 332
    .line 333
    iget-object v2, v1, Landroidx/biometric/p;->b:Landroid/os/Handler;

    .line 334
    .line 335
    new-instance v6, Landroidx/biometric/h;

    .line 336
    .line 337
    const/4 v7, 0x1

    .line 338
    invoke-direct {v6, v1, v0, p1, v7}, Landroidx/biometric/h;-><init>(Landroidx/biometric/p;ILjava/lang/CharSequence;I)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    if-eqz p1, :cond_1b

    .line 346
    .line 347
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 348
    .line 349
    const/16 v7, 0x1c

    .line 350
    .line 351
    if-eq v3, v7, :cond_18

    .line 352
    .line 353
    :cond_17
    :goto_7
    move p1, v5

    .line 354
    goto :goto_9

    .line 355
    :cond_18
    if-nez v0, :cond_19

    .line 356
    .line 357
    goto :goto_7

    .line 358
    :cond_19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    const v3, 0x7f030005

    .line 363
    .line 364
    .line 365
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    array-length v3, p1

    .line 370
    move v7, v5

    .line 371
    :goto_8
    if-ge v7, v3, :cond_17

    .line 372
    .line 373
    aget-object v8, p1, v7

    .line 374
    .line 375
    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 376
    .line 377
    .line 378
    move-result v8

    .line 379
    if-eqz v8, :cond_1a

    .line 380
    .line 381
    move p1, v4

    .line 382
    goto :goto_9

    .line 383
    :cond_1a
    add-int/lit8 v7, v7, 0x1

    .line 384
    .line 385
    goto :goto_8

    .line 386
    :goto_9
    if-eqz p1, :cond_1b

    .line 387
    .line 388
    goto :goto_a

    .line 389
    :cond_1b
    const/16 v5, 0x7d0

    .line 390
    .line 391
    :goto_a
    int-to-long v7, v5

    .line 392
    invoke-virtual {v2, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 393
    .line 394
    .line 395
    :goto_b
    iget-object p1, v1, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 396
    .line 397
    iput-boolean v4, p1, Landroidx/biometric/w;->t:Z

    .line 398
    .line 399
    goto :goto_d

    .line 400
    :cond_1c
    if-eqz p1, :cond_1d

    .line 401
    .line 402
    goto :goto_c

    .line 403
    :cond_1d
    new-instance p1, Ljava/lang/StringBuilder;

    .line 404
    .line 405
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    .line 407
    .line 408
    const v2, 0x7f1200b8

    .line 409
    .line 410
    .line 411
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v2

    .line 415
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    const-string v2, " "

    .line 419
    .line 420
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object p1

    .line 430
    :goto_c
    invoke-virtual {v1, v0, p1}, Landroidx/biometric/p;->g(ILjava/lang/CharSequence;)V

    .line 431
    .line 432
    .line 433
    :goto_d
    iget-object p1, v1, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 434
    .line 435
    const/4 v0, 0x0

    .line 436
    invoke-virtual {p1, v0}, Landroidx/biometric/w;->b(Landroidx/biometric/g;)V

    .line 437
    .line 438
    .line 439
    :cond_1e
    return-void

    .line 440
    :pswitch_6
    check-cast p1, Landroidx/biometric/s;

    .line 441
    .line 442
    if-eqz p1, :cond_20

    .line 443
    .line 444
    iget-object v0, p0, Landroidx/biometric/j;->b:Landroidx/biometric/p;

    .line 445
    .line 446
    invoke-virtual {v0, p1}, Landroidx/biometric/p;->i(Landroidx/biometric/s;)V

    .line 447
    .line 448
    .line 449
    iget-object p1, v0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 450
    .line 451
    iget-object v0, p1, Landroidx/biometric/w;->o:Landroidx/lifecycle/MutableLiveData;

    .line 452
    .line 453
    if-nez v0, :cond_1f

    .line 454
    .line 455
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 456
    .line 457
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 458
    .line 459
    .line 460
    iput-object v0, p1, Landroidx/biometric/w;->o:Landroidx/lifecycle/MutableLiveData;

    .line 461
    .line 462
    :cond_1f
    iget-object p1, p1, Landroidx/biometric/w;->o:Landroidx/lifecycle/MutableLiveData;

    .line 463
    .line 464
    const/4 v0, 0x0

    .line 465
    invoke-static {p1, v0}, Landroidx/biometric/w;->f(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 466
    .line 467
    .line 468
    :cond_20
    return-void

    .line 469
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
