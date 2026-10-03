.class public final synthetic Ly1/F0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/game/GodotGameActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/game/GodotGameActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly1/F0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ly1/F0;->c:Lcom/minhub/gamehub/game/GodotGameActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ly1/F0;->b:I

    .line 4
    .line 5
    iget-object v2, v0, Ly1/F0;->c:Lcom/minhub/gamehub/game/GodotGameActivity;

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    move-object/from16 v1, p1

    .line 11
    .line 12
    check-cast v1, Ljava/util/List;

    .line 13
    .line 14
    sget v3, Lcom/minhub/gamehub/game/GodotGameActivity;->q:I

    .line 15
    .line 16
    const-string v3, "it"

    .line 17
    .line 18
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/minhub/gamehub/game/GodotGameActivity;->r()V

    .line 22
    .line 23
    .line 24
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 25
    .line 26
    return-object v1

    .line 27
    :pswitch_0
    move-object/from16 v1, p1

    .line 28
    .line 29
    check-cast v1, Ljava/lang/String;

    .line 30
    .line 31
    sget v1, Lcom/minhub/gamehub/game/GodotGameActivity;->q:I

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/minhub/gamehub/game/GodotGameActivity;->r()V

    .line 34
    .line 35
    .line 36
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 37
    .line 38
    return-object v1

    .line 39
    :pswitch_1
    move-object/from16 v4, p1

    .line 40
    .line 41
    check-cast v4, Ljava/lang/String;

    .line 42
    .line 43
    sget v1, Lcom/minhub/gamehub/game/GodotGameActivity;->q:I

    .line 44
    .line 45
    const-string v1, "id"

    .line 46
    .line 47
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/minhub/gamehub/game/GodotGameActivity;->p()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    const/4 v15, 0x0

    .line 63
    move v5, v15

    .line 64
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_1

    .line 69
    .line 70
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    check-cast v6, Lx1/a;

    .line 75
    .line 76
    iget-object v6, v6, Lx1/a;->a:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-eqz v6, :cond_0

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    const/4 v5, -0x1

    .line 89
    :goto_1
    const/16 v16, 0x1

    .line 90
    .line 91
    if-ltz v5, :cond_2

    .line 92
    .line 93
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    move-object/from16 v17, v3

    .line 98
    .line 99
    check-cast v17, Lx1/a;

    .line 100
    .line 101
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    check-cast v3, Lx1/a;

    .line 106
    .line 107
    iget-boolean v3, v3, Lx1/a;->k:Z

    .line 108
    .line 109
    xor-int/lit8 v26, v3, 0x1

    .line 110
    .line 111
    const/16 v27, 0x3ff

    .line 112
    .line 113
    const/16 v18, 0x0

    .line 114
    .line 115
    const/16 v19, 0x0

    .line 116
    .line 117
    const/16 v20, 0x0

    .line 118
    .line 119
    const/16 v21, 0x0

    .line 120
    .line 121
    const/16 v22, 0x0

    .line 122
    .line 123
    const/16 v23, 0x0

    .line 124
    .line 125
    const/16 v24, 0x0

    .line 126
    .line 127
    const/16 v25, 0x0

    .line 128
    .line 129
    invoke-static/range {v17 .. v27}, Lx1/a;->a(Lx1/a;Ljava/lang/String;FFIILjava/lang/String;Ljava/lang/String;FZI)Lx1/a;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-interface {v1, v5, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    goto/16 :goto_5

    .line 137
    .line 138
    :cond_2
    invoke-static {v1, v4}, LB1/k;->b(Ljava/util/List;Ljava/lang/String;)Lkotlin/Pair;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    check-cast v5, Ljava/lang/Number;

    .line 147
    .line 148
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    check-cast v3, Ljava/lang/Number;

    .line 157
    .line 158
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 159
    .line 160
    .line 161
    move-result v8

    .line 162
    invoke-static {v4}, LB1/t;->b(Ljava/lang/String;)LB1/u;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    if-eqz v3, :cond_3

    .line 167
    .line 168
    new-instance v5, Lx1/a;

    .line 169
    .line 170
    move-object v6, v5

    .line 171
    iget-object v5, v3, LB1/u;->b:Ljava/lang/String;

    .line 172
    .line 173
    iget v9, v3, LB1/u;->i:I

    .line 174
    .line 175
    iget v10, v3, LB1/u;->j:I

    .line 176
    .line 177
    iget-object v11, v3, LB1/u;->l:Ljava/lang/String;

    .line 178
    .line 179
    iget-object v12, v3, LB1/u;->k:Ljava/lang/String;

    .line 180
    .line 181
    iget v13, v3, LB1/u;->m:F

    .line 182
    .line 183
    const/4 v14, 0x1

    .line 184
    move-object v3, v6

    .line 185
    const-string v6, ""

    .line 186
    .line 187
    invoke-direct/range {v3 .. v14}, Lx1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFIILjava/lang/String;Ljava/lang/String;FZ)V

    .line 188
    .line 189
    .line 190
    :goto_2
    move-object v5, v3

    .line 191
    goto/16 :goto_4

    .line 192
    .line 193
    :cond_3
    sget-object v3, LB1/i;->a:Ljava/util/List;

    .line 194
    .line 195
    invoke-static {v4}, LB1/i;->a(Ljava/lang/String;)LB1/x;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    if-eqz v3, :cond_6

    .line 200
    .line 201
    iget-object v5, v3, LB1/x;->h:Ljava/lang/String;

    .line 202
    .line 203
    new-instance v6, Lx1/a;

    .line 204
    .line 205
    iget-object v9, v3, LB1/x;->b:Ljava/lang/String;

    .line 206
    .line 207
    move-object v10, v6

    .line 208
    iget-object v6, v3, LB1/x;->e:Ljava/lang/String;

    .line 209
    .line 210
    move-object v11, v9

    .line 211
    iget v9, v3, LB1/x;->f:I

    .line 212
    .line 213
    move-object v12, v10

    .line 214
    iget v10, v3, LB1/x;->g:I

    .line 215
    .line 216
    const-string v13, "ROUNDED"

    .line 217
    .line 218
    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v14

    .line 222
    if-nez v14, :cond_5

    .line 223
    .line 224
    const-string v14, "RECT"

    .line 225
    .line 226
    invoke-static {v5, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v14

    .line 230
    if-eqz v14, :cond_4

    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_4
    move-object v5, v13

    .line 234
    :cond_5
    :goto_3
    iget-object v3, v3, LB1/x;->i:Ljava/lang/String;

    .line 235
    .line 236
    const/high16 v13, 0x3f400000    # 0.75f

    .line 237
    .line 238
    const/4 v14, 0x1

    .line 239
    move-object/from16 v28, v12

    .line 240
    .line 241
    move-object v12, v3

    .line 242
    move-object/from16 v3, v28

    .line 243
    .line 244
    move-object/from16 v28, v11

    .line 245
    .line 246
    move-object v11, v5

    .line 247
    move-object/from16 v5, v28

    .line 248
    .line 249
    invoke-direct/range {v3 .. v14}, Lx1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFIILjava/lang/String;Ljava/lang/String;FZ)V

    .line 250
    .line 251
    .line 252
    goto :goto_2

    .line 253
    :cond_6
    new-instance v3, Lx1/a;

    .line 254
    .line 255
    const-string v5, "key_"

    .line 256
    .line 257
    invoke-static {v4, v5}, Lkotlin/text/StringsKt;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v6

    .line 261
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 262
    .line 263
    invoke-virtual {v6, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v6

    .line 267
    const-string v9, "toUpperCase(...)"

    .line 268
    .line 269
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-static {v4, v5}, Lkotlin/text/StringsKt;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v5

    .line 276
    const/high16 v13, 0x3f400000    # 0.75f

    .line 277
    .line 278
    const/4 v14, 0x1

    .line 279
    const/16 v9, 0x28

    .line 280
    .line 281
    const/16 v10, 0x20

    .line 282
    .line 283
    const-string v11, "ROUNDED"

    .line 284
    .line 285
    const-string v12, "#3A4250"

    .line 286
    .line 287
    move-object/from16 v28, v6

    .line 288
    .line 289
    move-object v6, v5

    .line 290
    move-object/from16 v5, v28

    .line 291
    .line 292
    invoke-direct/range {v3 .. v14}, Lx1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFIILjava/lang/String;Ljava/lang/String;FZ)V

    .line 293
    .line 294
    .line 295
    goto :goto_2

    .line 296
    :goto_4
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    :goto_5
    const/high16 v3, -0x80000000

    .line 300
    .line 301
    invoke-static {v2, v3, v1}, Lx1/e;->b(Landroid/content/Context;ILjava/util/List;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2}, Lcom/minhub/gamehub/game/GodotGameActivity;->p()Ljava/util/List;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 309
    .line 310
    .line 311
    move-result v3

    .line 312
    if-eqz v3, :cond_7

    .line 313
    .line 314
    goto :goto_6

    .line 315
    :cond_7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 320
    .line 321
    .line 322
    move-result v3

    .line 323
    if-eqz v3, :cond_9

    .line 324
    .line 325
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    check-cast v3, Lx1/a;

    .line 330
    .line 331
    iget-boolean v3, v3, Lx1/a;->k:Z

    .line 332
    .line 333
    if-eqz v3, :cond_8

    .line 334
    .line 335
    move/from16 v15, v16

    .line 336
    .line 337
    :cond_9
    :goto_6
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup"

    .line 346
    .line 347
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    check-cast v1, Landroid/view/ViewGroup;

    .line 351
    .line 352
    if-eqz v15, :cond_b

    .line 353
    .line 354
    iget-object v3, v2, Lcom/minhub/gamehub/game/GodotGameActivity;->j:Landroid/widget/FrameLayout;

    .line 355
    .line 356
    if-eqz v3, :cond_a

    .line 357
    .line 358
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 359
    .line 360
    .line 361
    :cond_a
    invoke-virtual {v2}, Lcom/minhub/gamehub/game/GodotGameActivity;->k()Landroid/widget/FrameLayout;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 366
    .line 367
    .line 368
    iput-object v3, v2, Lcom/minhub/gamehub/game/GodotGameActivity;->j:Landroid/widget/FrameLayout;

    .line 369
    .line 370
    goto :goto_7

    .line 371
    :cond_b
    iget-object v3, v2, Lcom/minhub/gamehub/game/GodotGameActivity;->j:Landroid/widget/FrameLayout;

    .line 372
    .line 373
    if-eqz v3, :cond_c

    .line 374
    .line 375
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 376
    .line 377
    .line 378
    :cond_c
    const/4 v1, 0x0

    .line 379
    iput-object v1, v2, Lcom/minhub/gamehub/game/GodotGameActivity;->j:Landroid/widget/FrameLayout;

    .line 380
    .line 381
    :goto_7
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 382
    .line 383
    return-object v1

    .line 384
    nop

    .line 385
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
