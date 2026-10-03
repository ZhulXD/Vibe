.class public final synthetic Ly1/w;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/game/GameActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/game/GameActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly1/w;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ly1/w;->c:Lcom/minhub/gamehub/game/GameActivity;

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
    .locals 12

    .line 1
    iget p1, p0, Ly1/w;->b:I

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    const/16 v1, 0x48

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    const/16 v5, 0x8

    .line 10
    .line 11
    packed-switch p1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Ly1/w;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 15
    .line 16
    iget-object v5, p1, Lcom/minhub/gamehub/game/GameActivity;->r:Ly1/o1;

    .line 17
    .line 18
    iget-boolean v0, v5, Ly1/o1;->e:Z

    .line 19
    .line 20
    xor-int/lit8 v10, v0, 0x1

    .line 21
    .line 22
    const/16 v11, 0xf

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v8, 0x0

    .line 27
    const/4 v9, 0x0

    .line 28
    invoke-static/range {v5 .. v11}, Ly1/o1;->a(Ly1/o1;ZZZZZI)Ly1/o1;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p1, Lcom/minhub/gamehub/game/GameActivity;->r:Ly1/o1;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->E()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_0
    iget-object p1, p0, Ly1/w;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 39
    .line 40
    iget-object v5, p1, Lcom/minhub/gamehub/game/GameActivity;->r:Ly1/o1;

    .line 41
    .line 42
    iget-boolean v0, v5, Ly1/o1;->d:Z

    .line 43
    .line 44
    xor-int/lit8 v9, v0, 0x1

    .line 45
    .line 46
    const/4 v10, 0x0

    .line 47
    const/16 v11, 0x17

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    const/4 v7, 0x0

    .line 51
    const/4 v8, 0x0

    .line 52
    invoke-static/range {v5 .. v11}, Ly1/o1;->a(Ly1/o1;ZZZZZI)Ly1/o1;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p1, Lcom/minhub/gamehub/game/GameActivity;->r:Ly1/o1;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->E()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_1
    iget-object p1, p0, Ly1/w;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 63
    .line 64
    iget-object v5, p1, Lcom/minhub/gamehub/game/GameActivity;->r:Ly1/o1;

    .line 65
    .line 66
    iget-boolean v0, v5, Ly1/o1;->c:Z

    .line 67
    .line 68
    xor-int/lit8 v8, v0, 0x1

    .line 69
    .line 70
    const/4 v10, 0x0

    .line 71
    const/16 v11, 0x1b

    .line 72
    .line 73
    const/4 v6, 0x0

    .line 74
    const/4 v7, 0x0

    .line 75
    const/4 v9, 0x0

    .line 76
    invoke-static/range {v5 .. v11}, Ly1/o1;->a(Ly1/o1;ZZZZZI)Ly1/o1;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p1, Lcom/minhub/gamehub/game/GameActivity;->r:Ly1/o1;

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->E()V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :pswitch_2
    iget-object p1, p0, Ly1/w;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 87
    .line 88
    iget-object v5, p1, Lcom/minhub/gamehub/game/GameActivity;->r:Ly1/o1;

    .line 89
    .line 90
    iget-boolean v0, v5, Ly1/o1;->b:Z

    .line 91
    .line 92
    xor-int/lit8 v7, v0, 0x1

    .line 93
    .line 94
    const/4 v10, 0x0

    .line 95
    const/16 v11, 0x1d

    .line 96
    .line 97
    const/4 v6, 0x0

    .line 98
    const/4 v8, 0x0

    .line 99
    const/4 v9, 0x0

    .line 100
    invoke-static/range {v5 .. v11}, Ly1/o1;->a(Ly1/o1;ZZZZZI)Ly1/o1;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iput-object v0, p1, Lcom/minhub/gamehub/game/GameActivity;->r:Ly1/o1;

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->E()V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :pswitch_3
    iget-object p1, p0, Ly1/w;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 111
    .line 112
    iget-object v5, p1, Lcom/minhub/gamehub/game/GameActivity;->r:Ly1/o1;

    .line 113
    .line 114
    iget-boolean v0, v5, Ly1/o1;->a:Z

    .line 115
    .line 116
    xor-int/lit8 v6, v0, 0x1

    .line 117
    .line 118
    const/4 v10, 0x0

    .line 119
    const/16 v11, 0x1e

    .line 120
    .line 121
    const/4 v7, 0x0

    .line 122
    const/4 v8, 0x0

    .line 123
    const/4 v9, 0x0

    .line 124
    invoke-static/range {v5 .. v11}, Ly1/o1;->a(Ly1/o1;ZZZZZI)Ly1/o1;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iput-object v0, p1, Lcom/minhub/gamehub/game/GameActivity;->r:Ly1/o1;

    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->E()V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :pswitch_4
    iget-object p1, p0, Ly1/w;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 135
    .line 136
    sget v0, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    iget-object p1, p1, Lw1/d;->P:Landroid/widget/FrameLayout;

    .line 143
    .line 144
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :pswitch_5
    iget-object p1, p0, Ly1/w;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 149
    .line 150
    sget v0, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iget-object v0, v0, Lw1/d;->P:Landroid/widget/FrameLayout;

    .line 157
    .line 158
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-nez v0, :cond_0

    .line 163
    .line 164
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    iget-object p1, p1, Lw1/d;->P:Landroid/widget/FrameLayout;

    .line 169
    .line 170
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 171
    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->x()V

    .line 175
    .line 176
    .line 177
    :goto_0
    return-void

    .line 178
    :pswitch_6
    iget-object p1, p0, Ly1/w;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 179
    .line 180
    sget v0, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 181
    .line 182
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->t()V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :pswitch_7
    iget-object p1, p0, Ly1/w;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 187
    .line 188
    sget v0, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 189
    .line 190
    const-string v0, "1920x1080"

    .line 191
    .line 192
    invoke-virtual {p1, v0}, Lcom/minhub/gamehub/game/GameActivity;->B(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :pswitch_8
    iget-object p1, p0, Ly1/w;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 197
    .line 198
    sget v0, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 199
    .line 200
    const-string v0, "1280x720"

    .line 201
    .line 202
    invoke-virtual {p1, v0}, Lcom/minhub/gamehub/game/GameActivity;->B(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :pswitch_9
    iget-object p1, p0, Ly1/w;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 207
    .line 208
    sget v0, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 209
    .line 210
    const-string v0, "960x540"

    .line 211
    .line 212
    invoke-virtual {p1, v0}, Lcom/minhub/gamehub/game/GameActivity;->B(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    return-void

    .line 216
    :pswitch_a
    iget-object p1, p0, Ly1/w;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 217
    .line 218
    sget v0, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 219
    .line 220
    const-string v0, "device-width"

    .line 221
    .line 222
    invoke-virtual {p1, v0}, Lcom/minhub/gamehub/game/GameActivity;->B(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    :pswitch_b
    iget-object p1, p0, Ly1/w;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 227
    .line 228
    sget v0, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 229
    .line 230
    sget-object v0, LS1/d;->a:Ljava/util/Set;

    .line 231
    .line 232
    const-string v0, "<this>"

    .line 233
    .line 234
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    const-string v0, "minhub_prefs"

    .line 238
    .line 239
    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    const-string v2, "game_font_size"

    .line 248
    .line 249
    invoke-static {v3, v3, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    iget-object v0, v0, Lw1/d;->J:Landroid/widget/EditText;

    .line 265
    .line 266
    const-string v1, ""

    .line 267
    .line 268
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1, v3}, Lcom/minhub/gamehub/game/GameActivity;->n(I)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    iget-object p1, p1, Lw1/d;->P:Landroid/widget/FrameLayout;

    .line 279
    .line 280
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 281
    .line 282
    .line 283
    return-void

    .line 284
    :pswitch_c
    iget-object p1, p0, Ly1/w;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 285
    .line 286
    sget v0, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 287
    .line 288
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    iget-object v0, v0, Lw1/d;->J:Landroid/widget/EditText;

    .line 293
    .line 294
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    if-eqz v0, :cond_1

    .line 307
    .line 308
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    invoke-static {v0, v5, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    goto :goto_1

    .line 317
    :cond_1
    move v0, v3

    .line 318
    :goto_1
    sget-object v2, LS1/d;->a:Ljava/util/Set;

    .line 319
    .line 320
    const-string v2, "<this>"

    .line 321
    .line 322
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    const-string v2, "minhub_prefs"

    .line 326
    .line 327
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    const-string v4, "game_font_size"

    .line 336
    .line 337
    invoke-static {v0, v3, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 346
    .line 347
    .line 348
    invoke-virtual {p1, v0}, Lcom/minhub/gamehub/game/GameActivity;->n(I)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    iget-object p1, p1, Lw1/d;->P:Landroid/widget/FrameLayout;

    .line 356
    .line 357
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 358
    .line 359
    .line 360
    return-void

    .line 361
    :pswitch_d
    iget-object p1, p0, Ly1/w;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 362
    .line 363
    sget v0, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 364
    .line 365
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    iget-object v0, v0, Lw1/d;->P:Landroid/widget/FrameLayout;

    .line 370
    .line 371
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 372
    .line 373
    .line 374
    iget-object v1, p1, Lcom/minhub/gamehub/game/GameActivity;->n:LQ1/d;

    .line 375
    .line 376
    if-eqz v1, :cond_6

    .line 377
    .line 378
    iget-object v0, p1, Lcom/minhub/gamehub/game/GameActivity;->o:Lcom/minhub/gamehub/data/Game;

    .line 379
    .line 380
    const-string v5, "session"

    .line 381
    .line 382
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {p1, v1}, Lcom/minhub/gamehub/game/GameActivity;->y(LQ1/d;)Z

    .line 386
    .line 387
    .line 388
    move-result v5

    .line 389
    if-nez v5, :cond_2

    .line 390
    .line 391
    goto :goto_4

    .line 392
    :cond_2
    monitor-enter v1

    .line 393
    :try_start_0
    iget-boolean v5, v1, LQ1/d;->c:Z

    .line 394
    .line 395
    if-eqz v5, :cond_5

    .line 396
    .line 397
    iget-boolean v5, v1, LQ1/d;->j:Z

    .line 398
    .line 399
    if-eqz v5, :cond_3

    .line 400
    .line 401
    goto :goto_2

    .line 402
    :cond_3
    iput-boolean v4, v1, LQ1/d;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    .line 404
    monitor-exit v1

    .line 405
    sget-object v5, Ly1/s;->a:[Ljava/lang/String;

    .line 406
    .line 407
    aget-object v3, v5, v3

    .line 408
    .line 409
    invoke-virtual {v1, v3, v2, v4}, LQ1/d;->a(Ljava/lang/String;Ljava/lang/String;Z)LQ1/c;

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    if-nez v2, :cond_4

    .line 414
    .line 415
    invoke-virtual {v1}, LQ1/d;->c()V

    .line 416
    .line 417
    .line 418
    goto :goto_4

    .line 419
    :cond_4
    invoke-static {p1, v0, v1, v2, v4}, Ly1/s;->e(Lcom/minhub/gamehub/game/GameActivity;Lcom/minhub/gamehub/data/Game;LQ1/d;LQ1/c;Z)V

    .line 420
    .line 421
    .line 422
    goto :goto_4

    .line 423
    :catchall_0
    move-exception v0

    .line 424
    move-object p1, v0

    .line 425
    goto :goto_3

    .line 426
    :cond_5
    :goto_2
    monitor-exit v1

    .line 427
    goto :goto_4

    .line 428
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    throw p1

    .line 430
    :cond_6
    :goto_4
    return-void

    .line 431
    :pswitch_e
    iget-object p1, p0, Ly1/w;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 432
    .line 433
    sget v0, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 434
    .line 435
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    iget-object v0, v0, Lw1/d;->P:Landroid/widget/FrameLayout;

    .line 440
    .line 441
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->D()V

    .line 445
    .line 446
    .line 447
    return-void

    .line 448
    :pswitch_f
    iget-object p1, p0, Ly1/w;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 449
    .line 450
    const-string v1, "webView"

    .line 451
    .line 452
    const-string v6, "cheatCoordinator"

    .line 453
    .line 454
    iget-object v7, p1, Lcom/minhub/gamehub/game/GameActivity;->o:Lcom/minhub/gamehub/data/Game;

    .line 455
    .line 456
    if-nez v7, :cond_7

    .line 457
    .line 458
    goto/16 :goto_9

    .line 459
    .line 460
    :cond_7
    invoke-static {v7}, Lcom/minhub/gamehub/data/GameKt;->getEngineEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameEngine;

    .line 461
    .line 462
    .line 463
    move-result-object v8

    .line 464
    sget-object v9, Lcom/minhub/gamehub/data/GameEngine;->TYRANO:Lcom/minhub/gamehub/data/GameEngine;

    .line 465
    .line 466
    if-ne v8, v9, :cond_8

    .line 467
    .line 468
    move v8, v4

    .line 469
    goto :goto_5

    .line 470
    :cond_8
    move v8, v3

    .line 471
    :goto_5
    if-eqz v8, :cond_a

    .line 472
    .line 473
    iget-object v0, p1, Lcom/minhub/gamehub/game/GameActivity;->v:Lj/h;

    .line 474
    .line 475
    if-nez v0, :cond_9

    .line 476
    .line 477
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    goto :goto_6

    .line 481
    :cond_9
    move-object v2, v0

    .line 482
    :goto_6
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    iget-object v0, v0, Lw1/d;->q0:Landroid/webkit/WebView;

    .line 487
    .line 488
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    new-instance v1, Ly1/v;

    .line 492
    .line 493
    const/4 v3, 0x2

    .line 494
    invoke-direct {v1, p1, v3}, Ly1/v;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v2, v7, v0, v1}, Lj/h;->q(Lcom/minhub/gamehub/data/Game;Landroid/webkit/WebView;Lkotlin/jvm/functions/Function1;)V

    .line 498
    .line 499
    .line 500
    goto/16 :goto_9

    .line 501
    .line 502
    :cond_a
    iget-boolean v9, p1, Lcom/minhub/gamehub/game/GameActivity;->F:Z

    .line 503
    .line 504
    if-nez v9, :cond_c

    .line 505
    .line 506
    iput-boolean v4, p1, Lcom/minhub/gamehub/game/GameActivity;->F:Z

    .line 507
    .line 508
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 509
    .line 510
    .line 511
    move-result-object v9

    .line 512
    iget-object v9, v9, Lw1/d;->K:Lcom/minhub/gamehub/gamepad/GamepadOverlay;

    .line 513
    .line 514
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 515
    .line 516
    .line 517
    move-result v9

    .line 518
    iput v9, p1, Lcom/minhub/gamehub/game/GameActivity;->G:I

    .line 519
    .line 520
    if-nez v8, :cond_b

    .line 521
    .line 522
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 523
    .line 524
    .line 525
    move-result-object v8

    .line 526
    iget-object v8, v8, Lw1/d;->K:Lcom/minhub/gamehub/gamepad/GamepadOverlay;

    .line 527
    .line 528
    invoke-virtual {v8, v4}, Lcom/minhub/gamehub/gamepad/GamepadOverlay;->setAdelMode(Z)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 532
    .line 533
    .line 534
    move-result-object v4

    .line 535
    iget-object v4, v4, Lw1/d;->K:Lcom/minhub/gamehub/gamepad/GamepadOverlay;

    .line 536
    .line 537
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 538
    .line 539
    .line 540
    :cond_b
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 541
    .line 542
    .line 543
    move-result-object v3

    .line 544
    iget-object v3, v3, Lw1/d;->g:Landroid/widget/ImageView;

    .line 545
    .line 546
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 547
    .line 548
    .line 549
    iget-object v3, p1, Lcom/minhub/gamehub/game/GameActivity;->q:Ly1/d0;

    .line 550
    .line 551
    iget-boolean v3, v3, Ly1/d0;->a:Z

    .line 552
    .line 553
    if-eqz v3, :cond_e

    .line 554
    .line 555
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->v()Landroid/widget/ImageView;

    .line 556
    .line 557
    .line 558
    move-result-object v3

    .line 559
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 560
    .line 561
    .line 562
    goto :goto_7

    .line 563
    :cond_c
    iput-boolean v3, p1, Lcom/minhub/gamehub/game/GameActivity;->F:Z

    .line 564
    .line 565
    if-nez v8, :cond_d

    .line 566
    .line 567
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 568
    .line 569
    .line 570
    move-result-object v4

    .line 571
    iget-object v4, v4, Lw1/d;->K:Lcom/minhub/gamehub/gamepad/GamepadOverlay;

    .line 572
    .line 573
    invoke-virtual {v4, v3}, Lcom/minhub/gamehub/gamepad/GamepadOverlay;->setAdelMode(Z)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 577
    .line 578
    .line 579
    move-result-object v4

    .line 580
    iget-object v4, v4, Lw1/d;->K:Lcom/minhub/gamehub/gamepad/GamepadOverlay;

    .line 581
    .line 582
    iget v5, p1, Lcom/minhub/gamehub/game/GameActivity;->G:I

    .line 583
    .line 584
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 585
    .line 586
    .line 587
    :cond_d
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 588
    .line 589
    .line 590
    move-result-object v4

    .line 591
    iget-object v4, v4, Lw1/d;->g:Landroid/widget/ImageView;

    .line 592
    .line 593
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 594
    .line 595
    .line 596
    iget-object v4, p1, Lcom/minhub/gamehub/game/GameActivity;->q:Ly1/d0;

    .line 597
    .line 598
    iget-boolean v4, v4, Ly1/d0;->a:Z

    .line 599
    .line 600
    if-eqz v4, :cond_e

    .line 601
    .line 602
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->v()Landroid/widget/ImageView;

    .line 603
    .line 604
    .line 605
    move-result-object v4

    .line 606
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 607
    .line 608
    .line 609
    :cond_e
    :goto_7
    iget-object v3, p1, Lcom/minhub/gamehub/game/GameActivity;->v:Lj/h;

    .line 610
    .line 611
    if-nez v3, :cond_f

    .line 612
    .line 613
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 614
    .line 615
    .line 616
    goto :goto_8

    .line 617
    :cond_f
    move-object v2, v3

    .line 618
    :goto_8
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 619
    .line 620
    .line 621
    move-result-object v3

    .line 622
    iget-object v3, v3, Lw1/d;->q0:Landroid/webkit/WebView;

    .line 623
    .line 624
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 625
    .line 626
    .line 627
    new-instance v1, Ly1/v;

    .line 628
    .line 629
    invoke-direct {v1, p1, v0}, Ly1/v;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 630
    .line 631
    .line 632
    invoke-virtual {v2, v7, v3, v1}, Lj/h;->q(Lcom/minhub/gamehub/data/Game;Landroid/webkit/WebView;Lkotlin/jvm/functions/Function1;)V

    .line 633
    .line 634
    .line 635
    :goto_9
    return-void

    .line 636
    :pswitch_10
    iget-object p1, p0, Ly1/w;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 637
    .line 638
    iget-boolean v0, p1, Lcom/minhub/gamehub/game/GameActivity;->t:Z

    .line 639
    .line 640
    xor-int/2addr v0, v4

    .line 641
    iput-boolean v0, p1, Lcom/minhub/gamehub/game/GameActivity;->t:Z

    .line 642
    .line 643
    sget-object v1, LS1/d;->a:Ljava/util/Set;

    .line 644
    .line 645
    const-string v1, "<this>"

    .line 646
    .line 647
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 648
    .line 649
    .line 650
    const-string v1, "minhub_prefs"

    .line 651
    .line 652
    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 653
    .line 654
    .line 655
    move-result-object v1

    .line 656
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 657
    .line 658
    .line 659
    move-result-object v1

    .line 660
    const-string v3, "reduce_fx_mvmz"

    .line 661
    .line 662
    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 663
    .line 664
    .line 665
    move-result-object v0

    .line 666
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 667
    .line 668
    .line 669
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 670
    .line 671
    .line 672
    move-result-object v0

    .line 673
    iget-object v0, v0, Lw1/d;->q:Landroid/widget/Button;

    .line 674
    .line 675
    iget-boolean v1, p1, Lcom/minhub/gamehub/game/GameActivity;->t:Z

    .line 676
    .line 677
    if-eqz v1, :cond_10

    .line 678
    .line 679
    const v1, 0x7f1202d0

    .line 680
    .line 681
    .line 682
    goto :goto_a

    .line 683
    :cond_10
    const v1, 0x7f1202cf

    .line 684
    .line 685
    .line 686
    :goto_a
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v1

    .line 690
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    .line 692
    .line 693
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 694
    .line 695
    .line 696
    move-result-object v0

    .line 697
    iget-object v0, v0, Lw1/d;->q0:Landroid/webkit/WebView;

    .line 698
    .line 699
    iget-boolean v1, p1, Lcom/minhub/gamehub/game/GameActivity;->t:Z

    .line 700
    .line 701
    invoke-static {v1}, Lcom/minhub/gamehub/game/GameActivity;->z(Z)Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v1

    .line 705
    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 706
    .line 707
    .line 708
    iget-boolean v0, p1, Lcom/minhub/gamehub/game/GameActivity;->t:Z

    .line 709
    .line 710
    if-eqz v0, :cond_11

    .line 711
    .line 712
    const v0, 0x7f120409

    .line 713
    .line 714
    .line 715
    goto :goto_b

    .line 716
    :cond_11
    const v0, 0x7f120408

    .line 717
    .line 718
    .line 719
    :goto_b
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v0

    .line 723
    iget-boolean v1, p1, Lcom/minhub/gamehub/game/GameActivity;->t:Z

    .line 724
    .line 725
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 726
    .line 727
    .line 728
    move-result-object p1

    .line 729
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 730
    .line 731
    .line 732
    return-void

    .line 733
    :pswitch_11
    iget-object p1, p0, Ly1/w;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 734
    .line 735
    iget-boolean v0, p1, Lcom/minhub/gamehub/game/GameActivity;->s:Z

    .line 736
    .line 737
    xor-int/2addr v0, v4

    .line 738
    iput-boolean v0, p1, Lcom/minhub/gamehub/game/GameActivity;->s:Z

    .line 739
    .line 740
    sget-object v1, LS1/d;->a:Ljava/util/Set;

    .line 741
    .line 742
    const-string v1, "<this>"

    .line 743
    .line 744
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 745
    .line 746
    .line 747
    const-string v1, "minhub_prefs"

    .line 748
    .line 749
    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 750
    .line 751
    .line 752
    move-result-object v1

    .line 753
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 754
    .line 755
    .line 756
    move-result-object v1

    .line 757
    const-string v2, "show_fps"

    .line 758
    .line 759
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 760
    .line 761
    .line 762
    move-result-object v0

    .line 763
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 764
    .line 765
    .line 766
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->m()V

    .line 767
    .line 768
    .line 769
    return-void

    .line 770
    :pswitch_12
    iget-object p1, p0, Ly1/w;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 771
    .line 772
    sget v0, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 773
    .line 774
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 775
    .line 776
    .line 777
    move-result-object v0

    .line 778
    iget-object v0, v0, Lw1/d;->P:Landroid/widget/FrameLayout;

    .line 779
    .line 780
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 781
    .line 782
    .line 783
    iget-object v0, p1, Lcom/minhub/gamehub/game/GameActivity;->o:Lcom/minhub/gamehub/data/Game;

    .line 784
    .line 785
    if-nez v0, :cond_12

    .line 786
    .line 787
    goto :goto_e

    .line 788
    :cond_12
    iget-object v1, p1, Lcom/minhub/gamehub/game/GameActivity;->x:Lcom/minhub/gamehub/data/SaveRepository;

    .line 789
    .line 790
    if-nez v1, :cond_13

    .line 791
    .line 792
    const-string v1, "saveRepository"

    .line 793
    .line 794
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 795
    .line 796
    .line 797
    move-object v1, v2

    .line 798
    :cond_13
    invoke-virtual {v1, v0}, Lcom/minhub/gamehub/data/SaveRepository;->scanSaves(Lcom/minhub/gamehub/data/Game;)Ljava/util/List;

    .line 799
    .line 800
    .line 801
    move-result-object v0

    .line 802
    new-instance v1, Ly1/M;

    .line 803
    .line 804
    invoke-direct {v1, v3}, Ly1/M;-><init>(I)V

    .line 805
    .line 806
    .line 807
    new-instance v4, LC1/w1;

    .line 808
    .line 809
    const/4 v6, 0x5

    .line 810
    invoke-direct {v4, v6, v1}, LC1/w1;-><init>(ILjava/lang/Object;)V

    .line 811
    .line 812
    .line 813
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 814
    .line 815
    .line 816
    move-result-object v0

    .line 817
    iput-object v0, p1, Lcom/minhub/gamehub/game/GameActivity;->A:Ljava/util/List;

    .line 818
    .line 819
    iget-object v0, p1, Lcom/minhub/gamehub/game/GameActivity;->y:LC1/g2;

    .line 820
    .line 821
    if-nez v0, :cond_14

    .line 822
    .line 823
    const-string v0, "loadSaveAdapter"

    .line 824
    .line 825
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 826
    .line 827
    .line 828
    goto :goto_c

    .line 829
    :cond_14
    move-object v2, v0

    .line 830
    :goto_c
    iget-object v0, p1, Lcom/minhub/gamehub/game/GameActivity;->A:Ljava/util/List;

    .line 831
    .line 832
    invoke-virtual {v2, v0}, LC1/g2;->k(Ljava/util/List;)V

    .line 833
    .line 834
    .line 835
    iget-object v0, p1, Lcom/minhub/gamehub/game/GameActivity;->A:Ljava/util/List;

    .line 836
    .line 837
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 838
    .line 839
    .line 840
    move-result v0

    .line 841
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 842
    .line 843
    .line 844
    move-result-object v1

    .line 845
    iget-object v1, v1, Lw1/d;->m0:Landroid/widget/TextView;

    .line 846
    .line 847
    if-nez v0, :cond_15

    .line 848
    .line 849
    move v2, v5

    .line 850
    goto :goto_d

    .line 851
    :cond_15
    move v2, v3

    .line 852
    :goto_d
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 853
    .line 854
    .line 855
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 856
    .line 857
    .line 858
    move-result-object v1

    .line 859
    iget-object v1, v1, Lw1/d;->c0:Landroidx/recyclerview/widget/RecyclerView;

    .line 860
    .line 861
    if-nez v0, :cond_16

    .line 862
    .line 863
    move v5, v3

    .line 864
    :cond_16
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 865
    .line 866
    .line 867
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 868
    .line 869
    .line 870
    move-result-object p1

    .line 871
    iget-object p1, p1, Lw1/d;->O:Landroid/widget/FrameLayout;

    .line 872
    .line 873
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 874
    .line 875
    .line 876
    :goto_e
    return-void

    .line 877
    :pswitch_13
    iget-object p1, p0, Ly1/w;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 878
    .line 879
    sget v1, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 880
    .line 881
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 882
    .line 883
    .line 884
    move-result-object v1

    .line 885
    iget-object v1, v1, Lw1/d;->P:Landroid/widget/FrameLayout;

    .line 886
    .line 887
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 888
    .line 889
    .line 890
    iget-object v1, p1, Lcom/minhub/gamehub/game/GameActivity;->m:Ly1/t1;

    .line 891
    .line 892
    if-eqz v1, :cond_17

    .line 893
    .line 894
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 895
    .line 896
    .line 897
    move-result-object v1

    .line 898
    iget-object v1, v1, Lw1/d;->q0:Landroid/webkit/WebView;

    .line 899
    .line 900
    const-string v2, "webView"

    .line 901
    .line 902
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 903
    .line 904
    .line 905
    new-instance v2, Ly1/v;

    .line 906
    .line 907
    invoke-direct {v2, p1, v4}, Ly1/v;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 908
    .line 909
    .line 910
    const-string p1, "wv"

    .line 911
    .line 912
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 913
    .line 914
    .line 915
    const-string p1, "callback"

    .line 916
    .line 917
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 918
    .line 919
    .line 920
    const-string p1, "(function(){\n  try {\n    if (typeof DataManager === \'undefined\' || !DataManager.saveGame) return false;\n    var slot = window.MinHub && window.MinHub.getQuickSaveSlot ? window.MinHub.getQuickSaveSlot() : 999;\n    if (typeof $gameSystem !== \'undefined\' && $gameSystem && typeof $gameSystem.onBeforeSave === \'function\') {\n      $gameSystem.onBeforeSave();\n    }\n    var r = DataManager.saveGame(slot);\n    if (r && typeof r.then === \'function\') { r.then(function(){}); return true; }\n    return !!r;\n  } catch(e) { return false; }\n})();"

    .line 921
    .line 922
    new-instance v3, Ls1/b;

    .line 923
    .line 924
    invoke-direct {v3, v0, v2}, Ls1/b;-><init>(ILjava/lang/Object;)V

    .line 925
    .line 926
    .line 927
    invoke-virtual {v1, p1, v3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 928
    .line 929
    .line 930
    :cond_17
    return-void

    .line 931
    :pswitch_14
    iget-object p1, p0, Ly1/w;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 932
    .line 933
    iget-object v0, p1, Lcom/minhub/gamehub/game/GameActivity;->o:Lcom/minhub/gamehub/data/Game;

    .line 934
    .line 935
    if-eqz v0, :cond_18

    .line 936
    .line 937
    invoke-static {v0}, Lcom/minhub/gamehub/data/GameKt;->getEngineEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameEngine;

    .line 938
    .line 939
    .line 940
    move-result-object v0

    .line 941
    goto :goto_f

    .line 942
    :cond_18
    move-object v0, v2

    .line 943
    :goto_f
    invoke-static {p1, v0}, Ly1/L1;->g(Landroid/app/Activity;Lcom/minhub/gamehub/data/GameEngine;)Z

    .line 944
    .line 945
    .line 946
    move-result v0

    .line 947
    if-nez v0, :cond_19

    .line 948
    .line 949
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 950
    .line 951
    .line 952
    move-result-object p1

    .line 953
    iget-object p1, p1, Lw1/d;->P:Landroid/widget/FrameLayout;

    .line 954
    .line 955
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 956
    .line 957
    .line 958
    goto :goto_12

    .line 959
    :cond_19
    iget-boolean v0, p1, Lcom/minhub/gamehub/game/GameActivity;->E:Z

    .line 960
    .line 961
    xor-int/2addr v0, v4

    .line 962
    iput-boolean v0, p1, Lcom/minhub/gamehub/game/GameActivity;->E:Z

    .line 963
    .line 964
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 965
    .line 966
    .line 967
    move-result-object v0

    .line 968
    iget-object v0, v0, Lw1/d;->p:Landroid/widget/Button;

    .line 969
    .line 970
    iget-boolean v1, p1, Lcom/minhub/gamehub/game/GameActivity;->E:Z

    .line 971
    .line 972
    if-eqz v1, :cond_1a

    .line 973
    .line 974
    const v1, 0x7f1202ce

    .line 975
    .line 976
    .line 977
    goto :goto_10

    .line 978
    :cond_1a
    const v1, 0x7f1202cd

    .line 979
    .line 980
    .line 981
    :goto_10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 982
    .line 983
    .line 984
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 985
    .line 986
    .line 987
    move-result-object v0

    .line 988
    iget-object v0, v0, Lw1/d;->q0:Landroid/webkit/WebView;

    .line 989
    .line 990
    iget-boolean v1, p1, Lcom/minhub/gamehub/game/GameActivity;->E:Z

    .line 991
    .line 992
    if-eqz v1, :cond_1b

    .line 993
    .line 994
    const-string v1, "true"

    .line 995
    .line 996
    goto :goto_11

    .line 997
    :cond_1b
    const-string v1, "false"

    .line 998
    .line 999
    :goto_11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1000
    .line 1001
    const-string v4, "\n        (function() {\n          try {\n            var ON = "

    .line 1002
    .line 1003
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1004
    .line 1005
    .line 1006
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    .line 1008
    .line 1009
    const-string v1, ";\n            if (typeof Spriteset_Map === \'undefined\' || typeof PIXI === \'undefined\') return;\n\n            if (!window.__minhubHints) {\n              var H = window.__minhubHints = { on: false };\n\n              // Command codes that mark an event as \"story progress\" when the player triggers it.\n              // 121 Control Switches \u00b7 122 Control Variables \u00b7 201 Transfer Player \u00b7\n              // 126/127/128 Change Items/Weapons/Armor \u00b7 129 Change Party Member.\n              // (123 Control Self Switch is intentionally excluded \u2014 see the class note.)\n              var PROGRESS = { 121: 1, 122: 1, 201: 1, 126: 1, 127: 1, 128: 1, 129: 1 };\n\n              var isHint = function(ev) {\n                try {\n                  if (!ev || ev._erased) return false;\n                  var page = ev.page ? ev.page() : null;\n                  if (!page) return false;\n                  // Only events the player can trigger by standing there / pressing action:\n                  // 0 action button, 1 player touch, 2 event touch. Autorun/parallel run themselves.\n                  if (page.trigger == null || page.trigger > 2) return false;\n                  // Only visible events \u2014 an arrow floating over nothing helps no one.\n                  var img = page.image || {};\n                  if (!img.characterName && !img.tileId) return false;\n                  var list = page.list || [];\n                  for (var i = 0; i < list.length; i++) {\n                    if (PROGRESS[list[i].code]) return true;\n                  }\n                  return false;\n                } catch (e) { return false; }\n              };\n\n              // Downward-pointing arrow (\u25bc): cyan fill + white outline so it reads on any tileset.\n              var makeArrow = function() {\n                var a = new PIXI.Graphics();\n                a.beginFill(0x34d3ff, 0.95);\n                a.moveTo(-11, -9); a.lineTo(11, -9); a.lineTo(0, 8); a.lineTo(-11, -9);\n                a.endFill();\n                a.lineStyle(2, 0xffffff, 0.9);\n                a.moveTo(-11, -9); a.lineTo(11, -9); a.lineTo(0, 8); a.lineTo(-11, -9);\n                return a;\n              };\n\n              H.attach = function(sp) {\n                if (!sp || sp.__mhHintLayer) return;\n                sp.__mhHintLayer = new PIXI.Container();\n                sp.__mhArrows = {};\n                sp.addChild(sp.__mhHintLayer);\n              };\n\n              H.refresh = function(sp) {\n                var layer = sp && sp.__mhHintLayer;\n                if (!layer) return;\n                if (!H.on) { layer.visible = false; return; }\n                layer.visible = true;\n                var map = $gameMap;\n                var events = (map && map.events) ? map.events() : [];\n                // Time-based bob so the arrows draw the eye without any per-sprite state.\n                var bounce = Math.sin(Date.now() / 250) * 4;\n                var seen = {};\n                for (var i = 0; i < events.length; i++) {\n                  var ev = events[i];\n                  if (!isHint(ev)) continue;\n                  var id = ev.eventId();\n                  seen[id] = true;\n                  var a = sp.__mhArrows[id];\n                  if (!a) { a = makeArrow(); sp.__mhArrows[id] = a; layer.addChild(a); }\n                  a.visible = true;\n                  a.x = ev.screenX();\n                  a.y = ev.screenY() - 50 + bounce;   // float above the head, pointing down\n                }\n                for (var key in sp.__mhArrows) {\n                  if (!seen[key]) sp.__mhArrows[key].visible = false;\n                }\n              };\n\n              var _createLowerLayer = Spriteset_Map.prototype.createLowerLayer;\n              Spriteset_Map.prototype.createLowerLayer = function() {\n                _createLowerLayer.call(this);\n                H.attach(this);\n              };\n\n              var _update = Spriteset_Map.prototype.update;\n              Spriteset_Map.prototype.update = function() {\n                _update.call(this);\n                H.refresh(this);\n              };\n            }\n\n            var HH = window.__minhubHints;\n            HH.on = ON;\n\n            // Attach to the spriteset already on screen so the toggle works without changing maps.\n            try {\n              var scene = SceneManager._scene;\n              var sp = scene && scene._spriteset;\n              if (sp) { HH.attach(sp); HH.refresh(sp); }\n            } catch (e) {}\n          } catch (e) {\n            try { window.MinHub && window.MinHub.log && window.MinHub.log(\'[Hints] \' + e); } catch (_) {}\n          }\n        })();\n    "

    .line 1010
    .line 1011
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v1

    .line 1018
    invoke-static {v1}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v1

    .line 1022
    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 1023
    .line 1024
    .line 1025
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1026
    .line 1027
    .line 1028
    move-result-object p1

    .line 1029
    iget-object p1, p1, Lw1/d;->P:Landroid/widget/FrameLayout;

    .line 1030
    .line 1031
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1032
    .line 1033
    .line 1034
    :goto_12
    return-void

    .line 1035
    :pswitch_15
    iget-object p1, p0, Ly1/w;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 1036
    .line 1037
    iget-object v0, p1, Lcom/minhub/gamehub/game/GameActivity;->o:Lcom/minhub/gamehub/data/Game;

    .line 1038
    .line 1039
    if-eqz v0, :cond_1c

    .line 1040
    .line 1041
    invoke-static {v0}, Lcom/minhub/gamehub/data/GameKt;->getEngineEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameEngine;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v0

    .line 1045
    goto :goto_13

    .line 1046
    :cond_1c
    move-object v0, v2

    .line 1047
    :goto_13
    invoke-static {p1, v0}, Ly1/L1;->g(Landroid/app/Activity;Lcom/minhub/gamehub/data/GameEngine;)Z

    .line 1048
    .line 1049
    .line 1050
    move-result v0

    .line 1051
    if-nez v0, :cond_1d

    .line 1052
    .line 1053
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1054
    .line 1055
    .line 1056
    move-result-object p1

    .line 1057
    iget-object p1, p1, Lw1/d;->P:Landroid/widget/FrameLayout;

    .line 1058
    .line 1059
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1060
    .line 1061
    .line 1062
    goto :goto_16

    .line 1063
    :cond_1d
    iget-boolean v0, p1, Lcom/minhub/gamehub/game/GameActivity;->D:Z

    .line 1064
    .line 1065
    xor-int/2addr v0, v4

    .line 1066
    iput-boolean v0, p1, Lcom/minhub/gamehub/game/GameActivity;->D:Z

    .line 1067
    .line 1068
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v0

    .line 1072
    iget-object v0, v0, Lw1/d;->r:Landroid/widget/Button;

    .line 1073
    .line 1074
    iget-boolean v1, p1, Lcom/minhub/gamehub/game/GameActivity;->D:Z

    .line 1075
    .line 1076
    if-eqz v1, :cond_1e

    .line 1077
    .line 1078
    const v1, 0x7f1202d7

    .line 1079
    .line 1080
    .line 1081
    goto :goto_14

    .line 1082
    :cond_1e
    const v1, 0x7f1202d6

    .line 1083
    .line 1084
    .line 1085
    :goto_14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1086
    .line 1087
    .line 1088
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v0

    .line 1092
    iget-object v0, v0, Lw1/d;->q0:Landroid/webkit/WebView;

    .line 1093
    .line 1094
    iget-boolean v1, p1, Lcom/minhub/gamehub/game/GameActivity;->D:Z

    .line 1095
    .line 1096
    if-eqz v1, :cond_1f

    .line 1097
    .line 1098
    const-string v1, "true"

    .line 1099
    .line 1100
    goto :goto_15

    .line 1101
    :cond_1f
    const-string v1, "false"

    .line 1102
    .line 1103
    :goto_15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1104
    .line 1105
    const-string v4, "\n        (function() {\n          try {\n            var ON = "

    .line 1106
    .line 1107
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1108
    .line 1109
    .line 1110
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    .line 1112
    .line 1113
    const-string v1, ";\n            if (typeof Spriteset_Map === \'undefined\' || typeof PIXI === \'undefined\') return;\n\n            if (!window.__minhubReveal) {\n              // `edited` remembers events changed from this panel so their marker stays on screen\n              // once they become visible \u2014 otherwise turning a switch ON would make the event\n              // appear, remove its marker, and leave no way to turn it back OFF.\n              var R = window.__minhubReveal = { on: false, popupEventId: null, sp: null, edited: {} };\n\n              // Lazy accessors so a reload/scene change never leaves us holding a stale object.\n              var g = {\n                map:    function() { return $gameMap; },\n                sw:     function() { return $gameSwitches; },\n                va:     function() { return $gameVariables; },\n                ss:     function() { return $gameSelfSwitches; },\n                sys:    function() { return $dataSystem; },\n                items:  function() { return $dataItems; },\n                actors: function() { return $dataActors; },\n                party:  function() { return $gameParty; }\n              };\n\n              var esc = function(s) {\n                return String(s == null ? \'\' : s).replace(/[&<>\"]/g, function(c) {\n                  return { \'&\': \'&amp;\', \'<\': \'&lt;\', \'>\': \'&gt;\', \'\"\': \'&quot;\' }[c];\n                });\n              };\n\n              var isHidden = function(ev) {\n                try {\n                  if (!ev) return false;\n                  if (ev._erased) return true;\n                  var page = ev.page ? ev.page() : null;\n                  if (!page) return true;\n                  var img = page.image || {};\n                  return !img.characterName && !img.tileId;\n                } catch (e) { return false; }\n              };\n\n              // kind \'hidden\' = red (the player cannot see this event); \'edited\' = amber (an event\n              // you changed here \u2014 kept marked even once visible so you can tap it and revert).\n              var makeMarker = function(kind) {\n                var m = new PIXI.Graphics();\n                m.beginFill(kind === \'edited\' ? 0xff9f0a : 0xff3b30, 0.75);\n                m.drawCircle(0, 0, 9); m.endFill();\n                m.lineStyle(2, 0xffffff, 0.95); m.drawCircle(0, 0, 9);\n                m.moveTo(0, -4); m.lineTo(0, 2);\n                m.beginFill(0xffffff, 0.95); m.drawCircle(0, 5, 1.2); m.endFill();\n                m.__mhKind = kind;\n                return m;\n              };\n\n              var switchLabel = function(id) {\n                var n = g.sys() && g.sys().switches && g.sys().switches[id];\n                return (n && n.trim()) ? (n + \' (#\' + id + \')\') : (\'#\' + id);\n              };\n              var varLabel = function(id) {\n                var n = g.sys() && g.sys().variables && g.sys().variables[id];\n                return (n && n.trim()) ? (n + \' (#\' + id + \')\') : (\'#\' + id);\n              };\n\n              // Resolve a page\'s activation conditions into rows the panel can render + edit.\n              var conditionsOf = function(page, mapId, eventId) {\n                var out = [];\n                var c = page && page.conditions;\n                if (!c) return out;\n                try {\n                  if (c.switch1Valid) out.push(swRow(c.switch1Id));\n                  if (c.switch2Valid) out.push(swRow(c.switch2Id));\n                  if (c.variableValid) {\n                    var cur = g.va().value(c.variableId);\n                    out.push({ kind: \'variable\', id: c.variableId, need: c.variableValue,\n                      label: \'Variable \' + varLabel(c.variableId),\n                      detail: cur + \' / needs >= \' + c.variableValue, ok: cur >= c.variableValue });\n                  }\n                  if (c.selfSwitchValid) {\n                    var sv = g.ss().value([mapId, eventId, c.selfSwitchCh]);\n                    out.push({ kind: \'selfswitch\', id: c.selfSwitchCh,\n                      label: \'Self-Switch \' + c.selfSwitchCh, detail: sv ? \'ON\' : \'OFF\', ok: !!sv });\n                  }\n                  if (c.itemValid) {\n                    var it = g.items()[c.itemId];\n                    var has = it ? g.party().hasItem(it) : false;\n                    out.push({ kind: \'item\', label: \'Item \' + (it ? it.name : \'#\' + c.itemId),\n                      detail: has ? \'owned\' : \'missing\', ok: has });\n                  }\n                  if (c.actorValid) {\n                    var inParty = g.party().members().some(function(m) { return m.actorId() === c.actorId; });\n                    var a = g.actors()[c.actorId];\n                    out.push({ kind: \'actor\', label: \'Actor \' + (a ? a.name : \'#\' + c.actorId),\n                      detail: inParty ? \'in party\' : \'absent\', ok: inParty });\n                  }\n                } catch (e) {}\n                return out;\n              };\n              var swRow = function(id) {\n                var v = g.sw().value(id);\n                return { kind: \'switch\', id: id, label: \'Switch \' + switchLabel(id),\n                  detail: v ? \'ON\' : \'OFF\', ok: !!v };\n              };\n\n              // ---- marker layer -------------------------------------------------------------\n              R.attach = function(sp) {\n                if (!sp || sp.__mhRevealLayer) return;\n                sp.__mhRevealLayer = new PIXI.Container();\n                sp.__mhMarkers = {};\n                sp.addChild(sp.__mhRevealLayer);\n              };\n\n              R.refresh = function(sp) {\n                R.sp = sp;\n                var layer = sp && sp.__mhRevealLayer;\n                if (!layer) return;\n                if (!R.on) { layer.visible = false; return; }\n                layer.visible = true;\n                var events = (g.map() && g.map().events) ? g.map().events() : [];\n                var seen = {};\n                for (var i = 0; i < events.length; i++) {\n                  var ev = events[i];\n                  var id = ev.eventId();\n                  // Mark hidden events, plus any event you edited (so it stays reachable).\n                  // A normal visible event gets no marker, so tapping it still talks to the NPC.\n                  var kind = isHidden(ev) ? \'hidden\' : (R.edited[id] ? \'edited\' : null);\n                  if (!kind) continue;\n                  seen[id] = true;\n                  var m = sp.__mhMarkers[id];\n                  if (m && m.__mhKind !== kind) { layer.removeChild(m); m = null; }\n                  if (!m) { m = makeMarker(kind); sp.__mhMarkers[id] = m; layer.addChild(m); }\n                  m.visible = true;\n                  m.x = ev.screenX();\n                  m.y = ev.screenY() - 24;\n                  if (kind === \'edited\') {\n                    // The event is visible now (an NPC stands here), so keep the marker off to the\n                    // side \u2014 sitting on top of the character would swallow the tap meant for it.\n                    var off = 40;\n                    var limit = (typeof Graphics !== \'undefined\' && Graphics.width) ? Graphics.width : 816;\n                    if (m.x + off > limit - 16) off = -off;   // flip near the screen edge\n                    m.x += off;\n                    m.y = ev.screenY() - 12;\n                  }\n                }\n                for (var key in sp.__mhMarkers) {\n                  if (!seen[key]) sp.__mhMarkers[key].visible = false;\n                }\n              };\n\n              // ---- tap handling -------------------------------------------------------------\n              R.handleTouch = function() {\n                try {\n                  if (!R.on || !TouchInput.isTriggered() || !R.sp || !R.sp.__mhMarkers) return false;\n                  // ~24px radius: big enough to tap, small enough that an offset marker does not\n                  // cover the character standing next to it.\n                  var tx = TouchInput.x, ty = TouchInput.y, best = null, bestD = 576;\n                  for (var id in R.sp.__mhMarkers) {\n                    var m = R.sp.__mhMarkers[id];\n                    if (!m.visible) continue;\n                    var dx = m.x - tx, dy = m.y - ty, d = dx * dx + dy * dy;\n                    if (d < bestD) { bestD = d; best = id; }\n                  }\n                  if (best === null) return false;\n                  R.openPanel(Number(best));\n                  return true;\n                } catch (e) { return false; }\n              };\n\n              // ---- detail / edit panel ------------------------------------------------------\n              var host = function() {\n                var h = document.getElementById(\'mh-ev-panel\');\n                if (h) return h;\n                h = document.createElement(\'div\');\n                h.id = \'mh-ev-panel\';\n                // WebView inflates DOM text on these wide-viewport game pages and ignores font-size\n                // (and text-size-adjust) \u2014 measured on device: a 4.5px request still rendered huge.\n                // A geometric transform runs after all of that, so scaling the whole panel is the\n                // only reliable way to size it. Everything inside shrinks with it.\n                h.style.cssText = \'position:fixed;left:50%;top:50%;transform:translate(-50%,-50%) scale(0.5);\' +\n                  \'z-index:2147483000;background:rgba(18,22,32,0.97);color:#f5f7fa;\' +\n                  \'border:2px solid rgba(255,255,255,0.22);border-radius:18px;padding:14px 18px;\' +\n                  \'min-width:430px;max-width:150vw;max-height:150vh;overflow:auto;\' +\n                  // WebView \"font boosting\" inflates text on wide-viewport pages and ignores the\n                  // requested size \u2014 which is why several rounds of shrinking looked identical.\n                  // text-size-adjust:none opts this panel out so font-size is honoured verbatim.\n                  \'-webkit-text-size-adjust:none;text-size-adjust:none;\' +\n                  \'font-family:sans-serif;font-size:19px;line-height:1.35;\' +\n                  \'box-shadow:0 10px 34px rgba(0,0,0,0.65);display:none\';\n                // Keep taps inside the panel away from the game\'s own touch handling \u2014 but in the\n                // BUBBLE phase. Capturing here would swallow the event on its way down and our own\n                // buttons would never fire.\n                [\'touchstart\', \'touchend\', \'touchmove\', \'mousedown\', \'mouseup\', \'click\', \'pointerdown\', \'pointerup\']\n                  .forEach(function(t) { h.addEventListener(t, function(e) { e.stopPropagation(); }, false); });\n                document.body.appendChild(h);\n                return h;\n              };\n\n              R.closePanel = function() {\n                var h = document.getElementById(\'mh-ev-panel\');\n                if (h) h.style.display = \'none\';\n                R.popupEventId = null;\n              };\n\n              var btnCss = \'background:#2a3550;color:#fff;border:1px solid rgba(255,255,255,0.25);\' +\n                \'border-radius:7px;padding:4px 9px;font-size:16px;line-height:1.4;cursor:pointer;flex:none\';\n\n              R.openPanel = function(eventId) {\n                var ev = g.map().event(eventId);\n                if (!ev) return;\n                var data = ev.event();\n                var mapId = g.map().mapId();\n                R.popupEventId = eventId;\n                var h = host();\n\n                var html = \'<div style=\"display:flex;align-items:center;margin-bottom:6px\">\' +\n                  \'<b>#\' + eventId + \' \' + esc(data.name || \'(no name)\') + \'</b>\' +\n                  \'<span style=\"opacity:.55;margin-left:8px\">(\' + data.x + \',\' + data.y + \')</span>\' +\n                  \'<span style=\"flex:1\"></span>\' +\n                  \'<button data-mh=\"close\" style=\"\' + btnCss + \'\">Close</button></div>\';\n\n                (data.pages || []).forEach(function(p, i) {\n                  var active = (ev._pageIndex === i);\n                  html += \'<div style=\"margin-top:10px\"><div style=\"font-size:15px;color:\' +\n                    (active ? \'#7CFF9B\' : \'#9aa0aa\') + \'\">Page \' + (i + 1) + (active ? \' \u2014 ACTIVE\' : \'\') + \'</div>\';\n                  var conds = conditionsOf(p, mapId, eventId);\n                  if (!conds.length) {\n                    html += \'<div style=\"font-size:15px;opacity:.5;margin-left:8px\">No conditions</div>\';\n                  }\n                  conds.forEach(function(c) {\n                    html += \'<div style=\"display:flex;align-items:center;margin:6px 0\">\' +\n                      \'<span style=\"width:9px;height:9px;border-radius:50%;flex:none;margin-right:9px;background:\' +\n                      (c.ok ? \'#34C759\' : \'#FF3B30\') + \'\"></span>\' +\n                      // min-width:0 lets this shrink inside the flex row instead of overrunning\n                      // the button next to it (they visibly overlapped before).\n                      \'<span style=\"flex:1;min-width:0;margin-right:6px;word-break:break-word\">\' +\n                      esc(c.label) + \': <b>\' + esc(c.detail) + \'</b></span>\';\n                    if (c.kind === \'switch\') {\n                      html += \'<button data-mh=\"sw\" data-id=\"\' + c.id + \'\" style=\"\' + btnCss + \'\">\' +\n                        (c.ok ? \'Turn OFF\' : \'Turn ON\') + \'</button>\';\n                    } else if (c.kind === \'selfswitch\') {\n                      html += \'<button data-mh=\"ss\" data-id=\"\' + esc(c.id) + \'\" style=\"\' + btnCss + \'\">\' +\n                        (c.ok ? \'Turn OFF\' : \'Turn ON\') + \'</button>\';\n                    } else if (c.kind === \'variable\') {\n                      html += \'<input data-mh=\"varin\" data-id=\"\' + c.id + \'\" value=\"\' + esc(c.need) +\n                        \'\" style=\"width:58px;margin-right:8px;background:#141a26;color:#fff;flex:none;\' +\n                        \'border:1px solid rgba(255,255,255,0.25);border-radius:6px;padding:3px 6px;font-size:15px\">\' +\n                        \'<button data-mh=\"setvar\" data-id=\"\' + c.id + \'\" style=\"\' + btnCss + \'\">Set</button>\';\n                    }\n                    html += \'</div>\';\n                  });\n                  html += \'</div>\';\n                });\n\n                h.innerHTML = html;\n                h.style.display = \'block\';\n\n                h.querySelectorAll(\'[data-mh]\').forEach(function(el) {\n                  var kind = el.getAttribute(\'data-mh\');\n                  if (kind === \'varin\') return;\n                  el.addEventListener(\'click\', function(e) {\n                    e.stopPropagation();\n                    var id = el.getAttribute(\'data-id\');\n                    try {\n                      if (kind === \'close\') { R.closePanel(); return; }\n                      if (kind === \'sw\') {\n                        g.sw().setValue(Number(id), !g.sw().value(Number(id)));\n                      } else if (kind === \'ss\') {\n                        var key = [mapId, eventId, id];\n                        g.ss().setValue(key, !g.ss().value(key));\n                      } else if (kind === \'setvar\') {\n                        var input = h.querySelector(\'[data-mh=\"varin\"][data-id=\"\' + id + \'\"]\');\n                        var val = Number(input && input.value);\n                        if (!isNaN(val)) g.va().setValue(Number(id), val);\n                      }\n                      R.edited[eventId] = true;   // keep this event markered so it can be reverted\n                      if (g.map().requestRefresh) g.map().requestRefresh();\n                      R.openPanel(eventId);\n                    } catch (err) {}\n                  }, false);\n                });\n              };\n\n              // ---- hooks --------------------------------------------------------------------\n              var _createLowerLayer = Spriteset_Map.prototype.createLowerLayer;\n              Spriteset_Map.prototype.createLowerLayer = function() {\n                _createLowerLayer.call(this);\n                R.attach(this);\n              };\n\n              var _update = Spriteset_Map.prototype.update;\n              Spriteset_Map.prototype.update = function() {\n                _update.call(this);\n                R.refresh(this);\n              };\n\n              if (typeof Scene_Map !== \'undefined\' && Scene_Map.prototype.processMapTouch) {\n                var _processMapTouch = Scene_Map.prototype.processMapTouch;\n                Scene_Map.prototype.processMapTouch = function() {\n                  if (R.handleTouch()) return;   // tap consumed by a marker \u2014 don\'t walk there\n                  _processMapTouch.call(this);\n                };\n              }\n            }\n\n            var RR = window.__minhubReveal;\n            RR.on = ON;\n            if (!ON) RR.closePanel();\n\n            // Attach to the spriteset already on screen so the toggle works without changing maps.\n            try {\n              var scene = SceneManager._scene;\n              var sp = scene && scene._spriteset;\n              if (sp) { RR.attach(sp); RR.refresh(sp); }\n            } catch (e) {}\n          } catch (e) {\n            try { window.MinHub && window.MinHub.log && window.MinHub.log(\'[Reveal] \' + e); } catch (_) {}\n          }\n        })();\n    "

    .line 1114
    .line 1115
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    .line 1117
    .line 1118
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v1

    .line 1122
    invoke-static {v1}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v1

    .line 1126
    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 1127
    .line 1128
    .line 1129
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1130
    .line 1131
    .line 1132
    move-result-object p1

    .line 1133
    iget-object p1, p1, Lw1/d;->P:Landroid/widget/FrameLayout;

    .line 1134
    .line 1135
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1136
    .line 1137
    .line 1138
    :goto_16
    return-void

    .line 1139
    :pswitch_16
    iget-object p1, p0, Ly1/w;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 1140
    .line 1141
    iget-object v0, p1, Lcom/minhub/gamehub/game/GameActivity;->o:Lcom/minhub/gamehub/data/Game;

    .line 1142
    .line 1143
    if-eqz v0, :cond_20

    .line 1144
    .line 1145
    invoke-static {v0}, Lcom/minhub/gamehub/data/GameKt;->getEngineEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameEngine;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v0

    .line 1149
    goto :goto_17

    .line 1150
    :cond_20
    move-object v0, v2

    .line 1151
    :goto_17
    invoke-static {p1, v0}, Ly1/L1;->g(Landroid/app/Activity;Lcom/minhub/gamehub/data/GameEngine;)Z

    .line 1152
    .line 1153
    .line 1154
    move-result v0

    .line 1155
    if-nez v0, :cond_21

    .line 1156
    .line 1157
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1158
    .line 1159
    .line 1160
    move-result-object p1

    .line 1161
    iget-object p1, p1, Lw1/d;->P:Landroid/widget/FrameLayout;

    .line 1162
    .line 1163
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1164
    .line 1165
    .line 1166
    goto :goto_1a

    .line 1167
    :cond_21
    iget-object v0, p1, Lcom/minhub/gamehub/game/GameActivity;->q:Ly1/d0;

    .line 1168
    .line 1169
    iget-boolean v1, v0, Ly1/d0;->b:Z

    .line 1170
    .line 1171
    xor-int/2addr v1, v4

    .line 1172
    iget-boolean v0, v0, Ly1/d0;->a:Z

    .line 1173
    .line 1174
    new-instance v4, Ly1/d0;

    .line 1175
    .line 1176
    invoke-direct {v4, v0, v1}, Ly1/d0;-><init>(ZZ)V

    .line 1177
    .line 1178
    .line 1179
    iput-object v4, p1, Lcom/minhub/gamehub/game/GameActivity;->q:Ly1/d0;

    .line 1180
    .line 1181
    iget-object v0, p1, Lcom/minhub/gamehub/game/GameActivity;->g:Landroid/widget/ImageView;

    .line 1182
    .line 1183
    if-eqz v0, :cond_22

    .line 1184
    .line 1185
    move-object v2, v0

    .line 1186
    goto :goto_18

    .line 1187
    :cond_22
    const-string v0, "cheatQuickButton"

    .line 1188
    .line 1189
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1190
    .line 1191
    .line 1192
    :goto_18
    iget-object v0, p1, Lcom/minhub/gamehub/game/GameActivity;->q:Ly1/d0;

    .line 1193
    .line 1194
    iget-boolean v0, v0, Ly1/d0;->b:Z

    .line 1195
    .line 1196
    if-eqz v0, :cond_23

    .line 1197
    .line 1198
    goto :goto_19

    .line 1199
    :cond_23
    move v3, v5

    .line 1200
    :goto_19
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1201
    .line 1202
    .line 1203
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1204
    .line 1205
    .line 1206
    move-result-object p1

    .line 1207
    iget-object p1, p1, Lw1/d;->P:Landroid/widget/FrameLayout;

    .line 1208
    .line 1209
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1210
    .line 1211
    .line 1212
    :goto_1a
    return-void

    .line 1213
    :pswitch_17
    iget-object p1, p0, Ly1/w;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 1214
    .line 1215
    iget-object v0, p1, Lcom/minhub/gamehub/game/GameActivity;->q:Ly1/d0;

    .line 1216
    .line 1217
    iget-boolean v1, v0, Ly1/d0;->a:Z

    .line 1218
    .line 1219
    xor-int/2addr v1, v4

    .line 1220
    iget-boolean v0, v0, Ly1/d0;->b:Z

    .line 1221
    .line 1222
    new-instance v2, Ly1/d0;

    .line 1223
    .line 1224
    invoke-direct {v2, v1, v0}, Ly1/d0;-><init>(ZZ)V

    .line 1225
    .line 1226
    .line 1227
    iput-object v2, p1, Lcom/minhub/gamehub/game/GameActivity;->q:Ly1/d0;

    .line 1228
    .line 1229
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->v()Landroid/widget/ImageView;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v0

    .line 1233
    iget-object v1, p1, Lcom/minhub/gamehub/game/GameActivity;->q:Ly1/d0;

    .line 1234
    .line 1235
    iget-boolean v1, v1, Ly1/d0;->a:Z

    .line 1236
    .line 1237
    if-eqz v1, :cond_24

    .line 1238
    .line 1239
    goto :goto_1b

    .line 1240
    :cond_24
    move v3, v5

    .line 1241
    :goto_1b
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1242
    .line 1243
    .line 1244
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1245
    .line 1246
    .line 1247
    move-result-object p1

    .line 1248
    iget-object p1, p1, Lw1/d;->P:Landroid/widget/FrameLayout;

    .line 1249
    .line 1250
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1251
    .line 1252
    .line 1253
    return-void

    .line 1254
    :pswitch_18
    iget-object p1, p0, Ly1/w;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 1255
    .line 1256
    sget v0, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 1257
    .line 1258
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v0

    .line 1262
    iget-object v0, v0, Lw1/d;->P:Landroid/widget/FrameLayout;

    .line 1263
    .line 1264
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1265
    .line 1266
    .line 1267
    iget-object p1, p1, Lcom/minhub/gamehub/game/GameActivity;->u:Ly1/j1;

    .line 1268
    .line 1269
    if-nez p1, :cond_25

    .line 1270
    .line 1271
    const-string p1, "controlsCoordinator"

    .line 1272
    .line 1273
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1274
    .line 1275
    .line 1276
    goto :goto_1c

    .line 1277
    :cond_25
    move-object v2, p1

    .line 1278
    :goto_1c
    invoke-virtual {v2}, Ly1/j1;->d()V

    .line 1279
    .line 1280
    .line 1281
    return-void

    .line 1282
    :pswitch_19
    iget-object p1, p0, Ly1/w;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 1283
    .line 1284
    sget v0, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 1285
    .line 1286
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v0

    .line 1290
    iget-object v0, v0, Lw1/d;->P:Landroid/widget/FrameLayout;

    .line 1291
    .line 1292
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1293
    .line 1294
    .line 1295
    iget-object p1, p1, Lcom/minhub/gamehub/game/GameActivity;->u:Ly1/j1;

    .line 1296
    .line 1297
    if-nez p1, :cond_26

    .line 1298
    .line 1299
    const-string p1, "controlsCoordinator"

    .line 1300
    .line 1301
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1302
    .line 1303
    .line 1304
    goto :goto_1d

    .line 1305
    :cond_26
    move-object v2, p1

    .line 1306
    :goto_1d
    invoke-virtual {v2}, Ly1/j1;->h()V

    .line 1307
    .line 1308
    .line 1309
    return-void

    .line 1310
    :pswitch_1a
    iget-object p1, p0, Ly1/w;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 1311
    .line 1312
    iget-object p1, p1, Lcom/minhub/gamehub/game/GameActivity;->w:LN1/w;

    .line 1313
    .line 1314
    if-nez p1, :cond_27

    .line 1315
    .line 1316
    const-string p1, "basicCheatController"

    .line 1317
    .line 1318
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1319
    .line 1320
    .line 1321
    goto :goto_1e

    .line 1322
    :cond_27
    move-object v2, p1

    .line 1323
    :goto_1e
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1324
    .line 1325
    .line 1326
    sget-object p1, Ly1/f;->a:Ljava/util/List;

    .line 1327
    .line 1328
    const-string p1, "Required value was null."

    .line 1329
    .line 1330
    sget-object v0, Ly1/b;->b:Ly1/b;

    .line 1331
    .line 1332
    invoke-static {v0}, Ly1/f;->a(Ly1/b;)Ly1/e;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v0

    .line 1336
    if-eqz v0, :cond_2b

    .line 1337
    .line 1338
    sget-object v1, Ly1/b;->c:Ly1/b;

    .line 1339
    .line 1340
    invoke-static {v1}, Ly1/f;->a(Ly1/b;)Ly1/e;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v1

    .line 1344
    if-eqz v1, :cond_2a

    .line 1345
    .line 1346
    sget-object v3, Ly1/b;->d:Ly1/b;

    .line 1347
    .line 1348
    invoke-static {v3}, Ly1/f;->a(Ly1/b;)Ly1/e;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v3

    .line 1352
    if-eqz v3, :cond_29

    .line 1353
    .line 1354
    sget-object v5, Ly1/b;->e:Ly1/b;

    .line 1355
    .line 1356
    invoke-static {v5}, Ly1/f;->a(Ly1/b;)Ly1/e;

    .line 1357
    .line 1358
    .line 1359
    move-result-object v5

    .line 1360
    if-eqz v5, :cond_28

    .line 1361
    .line 1362
    filled-new-array {v0, v1, v3, v5}, [Ly1/e;

    .line 1363
    .line 1364
    .line 1365
    move-result-object p1

    .line 1366
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 1367
    .line 1368
    .line 1369
    move-result-object p1

    .line 1370
    invoke-virtual {v2, p1, v4}, LN1/w;->e(Ljava/util/List;Z)V

    .line 1371
    .line 1372
    .line 1373
    return-void

    .line 1374
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1375
    .line 1376
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1377
    .line 1378
    .line 1379
    throw v0

    .line 1380
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1381
    .line 1382
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1383
    .line 1384
    .line 1385
    throw v0

    .line 1386
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1387
    .line 1388
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1389
    .line 1390
    .line 1391
    throw v0

    .line 1392
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1393
    .line 1394
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1395
    .line 1396
    .line 1397
    throw v0

    .line 1398
    :pswitch_1b
    iget-object p1, p0, Ly1/w;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 1399
    .line 1400
    sget v0, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 1401
    .line 1402
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1403
    .line 1404
    .line 1405
    move-result-object p1

    .line 1406
    iget-object p1, p1, Lw1/d;->O:Landroid/widget/FrameLayout;

    .line 1407
    .line 1408
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1409
    .line 1410
    .line 1411
    return-void

    .line 1412
    nop

    .line 1413
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
