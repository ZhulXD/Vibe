.class public final synthetic LC1/E;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/app/Activity;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p6, p0, LC1/E;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LC1/E;->c:Landroid/app/Activity;

    .line 4
    .line 5
    iput-object p2, p0, LC1/E;->d:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p3, p0, LC1/E;->e:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, LC1/E;->g:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p5, p0, LC1/E;->f:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget v0, p0, LC1/E;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LC1/E;->e:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p0, LC1/E;->g:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, [Ljava/lang/String;

    .line 13
    .line 14
    iget-object v2, p0, LC1/E;->f:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 17
    .line 18
    iget-object v3, p0, LC1/E;->c:Landroid/app/Activity;

    .line 19
    .line 20
    iget-object v4, p0, LC1/E;->d:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v3, v4, v0, v1, v2}, Lorg/godotengine/godot/utils/DialogUtils$Companion;->h(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    iget-object v0, p0, LC1/E;->c:Landroid/app/Activity;

    .line 27
    .line 28
    check-cast v0, Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 29
    .line 30
    iget-object v1, p0, LC1/E;->e:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, Ljava/io/File;

    .line 33
    .line 34
    iget-object v2, p0, LC1/E;->g:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v2, LD1/l;

    .line 37
    .line 38
    iget-object v3, p0, LC1/E;->f:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v3, LD1/b;

    .line 41
    .line 42
    iget-object v2, v2, LD1/l;->b:Ljava/io/File;

    .line 43
    .line 44
    iget-object v4, p0, LC1/E;->d:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v0, v4, v1, v2, v3}, LC1/O;->c(Lcom/minhub/gamehub/hub/AddGameActivity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;LD1/b;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_1
    iget-object v0, p0, LC1/E;->c:Landroid/app/Activity;

    .line 51
    .line 52
    move-object v3, v0

    .line 53
    check-cast v3, Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 54
    .line 55
    iget-object v0, p0, LC1/E;->e:Ljava/lang/Object;

    .line 56
    .line 57
    move-object v6, v0

    .line 58
    check-cast v6, Ljava/io/File;

    .line 59
    .line 60
    iget-object v0, p0, LC1/E;->g:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v0, LD1/p;

    .line 63
    .line 64
    iget-boolean v8, v0, LD1/p;->b:Z

    .line 65
    .line 66
    iget-object v1, p0, LC1/E;->f:Ljava/lang/Object;

    .line 67
    .line 68
    move-object v4, v1

    .line 69
    check-cast v4, LD1/b;

    .line 70
    .line 71
    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-virtual {v3}, Landroid/app/Activity;->isDestroyed()Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-nez v1, :cond_3

    .line 80
    .line 81
    if-nez v2, :cond_3

    .line 82
    .line 83
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 84
    .line 85
    const/4 v9, 0x0

    .line 86
    invoke-direct {v2, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 87
    .line 88
    .line 89
    new-instance v1, LC1/I;

    .line 90
    .line 91
    iget-object v5, p0, LC1/E;->d:Ljava/lang/String;

    .line 92
    .line 93
    move-object v13, v6

    .line 94
    move-object v6, v4

    .line 95
    move-object v4, v5

    .line 96
    move-object v5, v13

    .line 97
    invoke-direct/range {v1 .. v6}, LC1/I;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/minhub/gamehub/hub/AddGameActivity;Ljava/lang/String;Ljava/io/File;LD1/b;)V

    .line 98
    .line 99
    .line 100
    move-object v10, v5

    .line 101
    move-object v5, v4

    .line 102
    move-object v4, v6

    .line 103
    move-object v6, v10

    .line 104
    move-object v10, v1

    .line 105
    const/4 v11, 0x0

    .line 106
    if-eqz v8, :cond_0

    .line 107
    .line 108
    new-instance v1, LC1/J;

    .line 109
    .line 110
    const/4 v7, 0x0

    .line 111
    move-object v13, v4

    .line 112
    move-object v4, v3

    .line 113
    move-object v3, v13

    .line 114
    invoke-direct/range {v1 .. v7}, LC1/J;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 115
    .line 116
    .line 117
    move-object v13, v4

    .line 118
    move-object v4, v3

    .line 119
    move-object v3, v13

    .line 120
    move-object v7, v1

    .line 121
    goto :goto_0

    .line 122
    :cond_0
    move-object v7, v11

    .line 123
    :goto_0
    new-instance v1, LC1/K;

    .line 124
    .line 125
    move-object v5, v3

    .line 126
    move-object v3, v2

    .line 127
    const/4 v2, 0x0

    .line 128
    invoke-direct/range {v1 .. v6}, LC1/K;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    move-object v3, v5

    .line 132
    const-string v2, "<this>"

    .line 133
    .line 134
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const-string v2, "scan"

    .line 138
    .line 139
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const-string v2, "onPicked"

    .line 143
    .line 144
    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const-string v2, "onCancel"

    .line 148
    .line 149
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    new-instance v2, LH0/o;

    .line 153
    .line 154
    invoke-direct {v2, v3}, LH0/o;-><init>(Landroid/content/Context;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    const v5, 0x7f0c00ae

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4, v5, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    invoke-virtual {v2, v4}, LH0/o;->setContentView(Landroid/view/View;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    if-eqz v5, :cond_1

    .line 176
    .line 177
    const v6, 0x106000d

    .line 178
    .line 179
    .line 180
    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 181
    .line 182
    .line 183
    :cond_1
    new-instance v5, LC1/L;

    .line 184
    .line 185
    const/4 v6, 0x1

    .line 186
    invoke-direct {v5, v2, v6}, LC1/L;-><init>(LH0/o;I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 190
    .line 191
    .line 192
    const v5, 0x7f0901b5

    .line 193
    .line 194
    .line 195
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    check-cast v5, Landroid/widget/TextView;

    .line 200
    .line 201
    iget-object v6, v0, LD1/p;->d:LD1/o;

    .line 202
    .line 203
    const-string v11, "hint"

    .line 204
    .line 205
    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 209
    .line 210
    .line 211
    move-result v6

    .line 212
    packed-switch v6, :pswitch_data_1

    .line 213
    .line 214
    .line 215
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 216
    .line 217
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 218
    .line 219
    .line 220
    throw v0

    .line 221
    :pswitch_2
    const v6, 0x7f120248

    .line 222
    .line 223
    .line 224
    goto :goto_1

    .line 225
    :pswitch_3
    const v6, 0x7f12024c

    .line 226
    .line 227
    .line 228
    goto :goto_1

    .line 229
    :pswitch_4
    const v6, 0x7f120245

    .line 230
    .line 231
    .line 232
    goto :goto_1

    .line 233
    :pswitch_5
    const v6, 0x7f12024b

    .line 234
    .line 235
    .line 236
    goto :goto_1

    .line 237
    :pswitch_6
    const v6, 0x7f120242

    .line 238
    .line 239
    .line 240
    goto :goto_1

    .line 241
    :pswitch_7
    const v6, 0x7f120249

    .line 242
    .line 243
    .line 244
    goto :goto_1

    .line 245
    :pswitch_8
    const v6, 0x7f12024a

    .line 246
    .line 247
    .line 248
    goto :goto_1

    .line 249
    :pswitch_9
    const v6, 0x7f120246

    .line 250
    .line 251
    .line 252
    goto :goto_1

    .line 253
    :pswitch_a
    const v6, 0x7f120247

    .line 254
    .line 255
    .line 256
    goto :goto_1

    .line 257
    :pswitch_b
    const v6, 0x7f120243

    .line 258
    .line 259
    .line 260
    goto :goto_1

    .line 261
    :pswitch_c
    const v6, 0x7f120244

    .line 262
    .line 263
    .line 264
    :goto_1
    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v6

    .line 268
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    .line 270
    .line 271
    const v5, 0x7f0901b6

    .line 272
    .line 273
    .line 274
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    .line 279
    .line 280
    new-instance v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 281
    .line 282
    const/4 v11, 0x1

    .line 283
    invoke-direct {v6, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(LP/g0;)V

    .line 287
    .line 288
    .line 289
    new-instance v6, LC1/j0;

    .line 290
    .line 291
    iget-object v0, v0, LD1/p;->a:Ljava/util/List;

    .line 292
    .line 293
    new-instance v11, LA1/r;

    .line 294
    .line 295
    const/4 v12, 0x1

    .line 296
    invoke-direct {v11, v2, v3, v10, v12}, LA1/r;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 297
    .line 298
    .line 299
    invoke-direct {v6, v0, v11}, LC1/j0;-><init>(Ljava/util/List;LA1/r;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(LP/W;)V

    .line 303
    .line 304
    .line 305
    const v0, 0x7f0901b8

    .line 306
    .line 307
    .line 308
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    check-cast v0, Landroid/widget/Button;

    .line 313
    .line 314
    if-eqz v8, :cond_2

    .line 315
    .line 316
    if-eqz v7, :cond_2

    .line 317
    .line 318
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 319
    .line 320
    .line 321
    new-instance v5, LC1/w;

    .line 322
    .line 323
    invoke-direct {v5, v2, v3, v7}, LC1/w;-><init>(LH0/o;Lcom/minhub/gamehub/hub/AddGameActivity;LC1/J;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    .line 328
    .line 329
    goto :goto_2

    .line 330
    :cond_2
    const/16 v5, 0x8

    .line 331
    .line 332
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 333
    .line 334
    .line 335
    :goto_2
    const v0, 0x7f0901b4

    .line 336
    .line 337
    .line 338
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    check-cast v0, Landroid/widget/Button;

    .line 343
    .line 344
    new-instance v4, LC1/v;

    .line 345
    .line 346
    const/4 v5, 0x1

    .line 347
    invoke-direct {v4, v2, v5}, LC1/v;-><init>(LH0/o;I)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    .line 352
    .line 353
    new-instance v0, LC1/P;

    .line 354
    .line 355
    invoke-direct {v0, v3, v2, v1}, LC1/P;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;LH0/o;LC1/K;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 359
    .line 360
    .line 361
    const-string v0, "dialog"

    .line 362
    .line 363
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    iget-object v0, v3, Lcom/minhub/gamehub/hub/AddGameActivity;->h:Ljava/util/List;

    .line 367
    .line 368
    const-string v1, "importDialogs"

    .line 369
    .line 370
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 377
    .line 378
    .line 379
    goto :goto_3

    .line 380
    :cond_3
    invoke-virtual {v4}, LD1/b;->b()Z

    .line 381
    .line 382
    .line 383
    invoke-virtual {v3, v4}, Lcom/minhub/gamehub/hub/AddGameActivity;->r(LD1/b;)V

    .line 384
    .line 385
    .line 386
    new-instance v0, Ljava/lang/Thread;

    .line 387
    .line 388
    new-instance v1, LC1/F;

    .line 389
    .line 390
    const/4 v2, 0x1

    .line 391
    invoke-direct {v1, v6, v2}, LC1/F;-><init>(Ljava/io/File;I)V

    .line 392
    .line 393
    .line 394
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 398
    .line 399
    .line 400
    :goto_3
    return-void

    .line 401
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch
.end method
