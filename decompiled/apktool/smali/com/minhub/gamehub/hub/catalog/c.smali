.class public final synthetic Lcom/minhub/gamehub/hub/catalog/c;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/minhub/gamehub/hub/catalog/c;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/minhub/gamehub/hub/catalog/c;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/minhub/gamehub/hub/catalog/c;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/minhub/gamehub/hub/catalog/c;->d:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 13

    .line 1
    iget v0, p0, Lcom/minhub/gamehub/hub/catalog/c;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lcom/minhub/gamehub/hub/catalog/c;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/minhub/gamehub/hub/catalog/c;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v5, p0, Lcom/minhub/gamehub/hub/catalog/c;->b:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v5, Lcom/minhub/gamehub/game/GameActivity;

    .line 15
    .line 16
    check-cast v4, Ly1/p0;

    .line 17
    .line 18
    check-cast v3, Landroid/os/Handler;

    .line 19
    .line 20
    check-cast p1, Ljava/lang/String;

    .line 21
    .line 22
    sget v0, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 23
    .line 24
    const-string v0, "["

    .line 25
    .line 26
    :try_start_0
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 27
    .line 28
    new-instance v6, Lorg/json/JSONArray;

    .line 29
    .line 30
    new-instance v7, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, "]"

    .line 39
    .line 40
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {v6, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    move-object p1, v0

    .line 61
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 62
    .line 63
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    .line 77
    const-string p1, ""

    .line 78
    .line 79
    :cond_0
    check-cast p1, Ljava/lang/String;

    .line 80
    .line 81
    new-instance v0, Lkotlin/text/Regex;

    .line 82
    .line 83
    const-string v6, "^[A-Za-z0-9_.-]{1,100}$"

    .line 84
    .line 85
    invoke-direct {v0, v6}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_1

    .line 96
    .line 97
    invoke-virtual {v4, v1}, Ly1/p0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_1
    const-string v0, "_minhub_bug_save"

    .line 102
    .line 103
    invoke-static {p1, v0}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    const-string v0, "tyrano_save"

    .line 108
    .line 109
    invoke-virtual {v5, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iget-object v0, v0, Lw1/d;->q0:Landroid/webkit/WebView;

    .line 129
    .line 130
    new-instance v1, Ly1/I;

    .line 131
    .line 132
    invoke-direct {v1, v4, v3, v5, p1}, Ly1/I;-><init>(Ly1/p0;Landroid/os/Handler;Lcom/minhub/gamehub/game/GameActivity;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    const-string p1, "(function(){try{var k=tyrano.plugin.kag;k.menu.snapSave(\'Bug report\',function(){$.setStorage(k.config.projectID+\'_minhub_bug_save\',k.menu.snap,k.config.configSave)},\'false\');return true}catch(e){return false}})()"

    .line 136
    .line 137
    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 138
    .line 139
    .line 140
    :goto_1
    return-void

    .line 141
    :pswitch_0
    check-cast v5, Lu1/a;

    .line 142
    .line 143
    iget-object v10, v5, Lu1/a;->b:Ly1/u;

    .line 144
    .line 145
    check-cast v4, Lcom/minhub/gamehub/data/Game;

    .line 146
    .line 147
    check-cast v3, Landroid/webkit/WebView;

    .line 148
    .line 149
    check-cast p1, Ljava/lang/String;

    .line 150
    .line 151
    iget-object v7, v5, Lu1/a;->a:Landroid/app/Activity;

    .line 152
    .line 153
    invoke-virtual {v7}, Landroid/app/Activity;->isFinishing()Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-nez v0, :cond_d

    .line 158
    .line 159
    invoke-virtual {v7}, Landroid/app/Activity;->isDestroyed()Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_2

    .line 164
    .line 165
    goto/16 :goto_b

    .line 166
    .line 167
    :cond_2
    sget-object v0, Lu1/b;->a:Li1/l;

    .line 168
    .line 169
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 170
    .line 171
    if-eqz p1, :cond_6

    .line 172
    .line 173
    const-string v0, "null"

    .line 174
    .line 175
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_3

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_3
    invoke-static {p1}, La/a;->E(Ljava/lang/String;)Li1/o;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    instance-of v0, p1, Li1/s;

    .line 187
    .line 188
    if-eqz v0, :cond_6

    .line 189
    .line 190
    invoke-virtual {p1}, Li1/o;->e()Li1/s;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    iget-object v0, v0, Li1/s;->b:Ljava/io/Serializable;

    .line 195
    .line 196
    instance-of v0, v0, Ljava/lang/String;

    .line 197
    .line 198
    if-eqz v0, :cond_6

    .line 199
    .line 200
    invoke-virtual {p1}, Li1/o;->f()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-static {p1}, La/a;->E(Ljava/lang/String;)Li1/o;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    instance-of v0, p1, Li1/r;

    .line 209
    .line 210
    if-eqz v0, :cond_4

    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_4
    move-object p1, v1

    .line 214
    :goto_2
    if-eqz p1, :cond_5

    .line 215
    .line 216
    invoke-virtual {p1}, Li1/o;->d()Li1/r;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    goto :goto_3

    .line 221
    :catchall_1
    move-exception v0

    .line 222
    move-object p1, v0

    .line 223
    goto :goto_5

    .line 224
    :cond_5
    move-object p1, v1

    .line 225
    :goto_3
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 229
    goto :goto_6

    .line 230
    :cond_6
    :goto_4
    move-object p1, v1

    .line 231
    goto :goto_7

    .line 232
    :goto_5
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 233
    .line 234
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    :goto_6
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-eqz v0, :cond_7

    .line 247
    .line 248
    move-object p1, v1

    .line 249
    :cond_7
    check-cast p1, Li1/r;

    .line 250
    .line 251
    :goto_7
    if-eqz p1, :cond_9

    .line 252
    .line 253
    :try_start_2
    invoke-static {p1}, Lu1/b;->a(Li1/r;)Ljava/util/ArrayList;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 261
    goto :goto_8

    .line 262
    :catchall_2
    move-exception v0

    .line 263
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 264
    .line 265
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    :goto_8
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v6

    .line 277
    if-eqz v6, :cond_8

    .line 278
    .line 279
    move-object v0, v1

    .line 280
    :cond_8
    check-cast v0, Ljava/util/List;

    .line 281
    .line 282
    goto :goto_9

    .line 283
    :cond_9
    move-object v0, v1

    .line 284
    :goto_9
    if-eqz p1, :cond_c

    .line 285
    .line 286
    if-nez v0, :cond_a

    .line 287
    .line 288
    goto/16 :goto_a

    .line 289
    .line 290
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 291
    .line 292
    .line 293
    move-result p1

    .line 294
    const v12, 0x7f120429

    .line 295
    .line 296
    .line 297
    if-eqz p1, :cond_b

    .line 298
    .line 299
    new-instance p1, LO0/b;

    .line 300
    .line 301
    invoke-direct {p1, v7, v2}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 302
    .line 303
    .line 304
    iget-object v0, p1, Le/f;->c:Ljava/lang/Object;

    .line 305
    .line 306
    check-cast v0, Le/b;

    .line 307
    .line 308
    const v2, 0x7f12042a

    .line 309
    .line 310
    .line 311
    iget-object v4, v0, Le/b;->a:Landroid/view/ContextThemeWrapper;

    .line 312
    .line 313
    invoke-virtual {v4, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    iput-object v2, v0, Le/b;->f:Ljava/lang/CharSequence;

    .line 318
    .line 319
    const v2, 0x104000a

    .line 320
    .line 321
    .line 322
    invoke-virtual {p1, v2, v1}, LO0/b;->h(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 323
    .line 324
    .line 325
    new-instance v1, LC1/I1;

    .line 326
    .line 327
    invoke-direct {v1, v5, v3}, LC1/I1;-><init>(Lu1/a;Landroid/webkit/WebView;)V

    .line 328
    .line 329
    .line 330
    iget-object v2, v0, Le/b;->a:Landroid/view/ContextThemeWrapper;

    .line 331
    .line 332
    invoke-virtual {v2, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    iput-object v2, v0, Le/b;->k:Ljava/lang/CharSequence;

    .line 337
    .line 338
    iput-object v1, v0, Le/b;->l:Landroid/content/DialogInterface$OnClickListener;

    .line 339
    .line 340
    new-instance v1, LC1/x;

    .line 341
    .line 342
    const/4 v2, 0x1

    .line 343
    invoke-direct {v1, v2, v5}, LC1/x;-><init>(ILjava/lang/Object;)V

    .line 344
    .line 345
    .line 346
    iput-object v1, v0, Le/b;->o:Landroid/content/DialogInterface$OnDismissListener;

    .line 347
    .line 348
    invoke-virtual {p1}, Le/f;->e()Le/g;

    .line 349
    .line 350
    .line 351
    goto :goto_b

    .line 352
    :cond_b
    new-instance v6, Ly1/x0;

    .line 353
    .line 354
    new-instance v11, LA1/q;

    .line 355
    .line 356
    const/16 p1, 0x12

    .line 357
    .line 358
    invoke-direct {v11, p1}, LA1/q;-><init>(I)V

    .line 359
    .line 360
    .line 361
    const/4 v8, 0x0

    .line 362
    const/4 v9, 0x0

    .line 363
    invoke-direct/range {v6 .. v11}, Ly1/x0;-><init>(Landroid/app/Activity;Ljava/io/File;Ljava/io/File;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v4}, Lcom/minhub/gamehub/data/Game;->getTitle()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object p1

    .line 370
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    const v1, 0x7f120183

    .line 375
    .line 376
    .line 377
    invoke-virtual {v7, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    const-string v1, "getString(...)"

    .line 382
    .line 383
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v7, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    new-instance v1, LA1/n;

    .line 394
    .line 395
    invoke-direct {v1, v5, v3}, LA1/n;-><init>(Lu1/a;Landroid/webkit/WebView;)V

    .line 396
    .line 397
    .line 398
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    new-instance v2, LA1/H;

    .line 403
    .line 404
    const/4 v4, 0x7

    .line 405
    invoke-direct {v2, v4, v3, v5}, LA1/H;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v6, p1, v0, v1, v2}, Ly1/x0;->d(Ljava/lang/String;Ljava/util/List;Lkotlin/Pair;Lkotlin/jvm/functions/Function1;)V

    .line 409
    .line 410
    .line 411
    goto :goto_b

    .line 412
    :cond_c
    :goto_a
    const p1, 0x7f12042b

    .line 413
    .line 414
    .line 415
    invoke-static {v7, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 416
    .line 417
    .line 418
    move-result-object p1

    .line 419
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v10}, Ly1/u;->invoke()Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    :cond_d
    :goto_b
    return-void

    .line 426
    :pswitch_1
    check-cast v5, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 427
    .line 428
    check-cast v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 429
    .line 430
    check-cast v3, Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;

    .line 431
    .line 432
    check-cast p1, Ljava/lang/String;

    .line 433
    .line 434
    invoke-static {v5, v4, v3, p1}, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4;->c(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    return-void

    .line 438
    nop

    .line 439
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
