.class public final synthetic LC1/G0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/hub/GameDetailActivity;LH0/o;Ljava/util/LinkedHashMap;LC1/c2;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, LC1/G0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC1/G0;->d:Ljava/lang/Object;

    iput-object p2, p0, LC1/G0;->c:Ljava/lang/Object;

    iput-object p3, p0, LC1/G0;->e:Ljava/lang/Object;

    iput-object p4, p0, LC1/G0;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;LH0/o;I)V
    .locals 0

    .line 2
    iput p5, p0, LC1/G0;->b:I

    iput-object p1, p0, LC1/G0;->d:Ljava/lang/Object;

    iput-object p2, p0, LC1/G0;->e:Ljava/lang/Object;

    iput-object p3, p0, LC1/G0;->f:Ljava/lang/Object;

    iput-object p4, p0, LC1/G0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/LinkedHashMap;Le/g;Lkotlin/jvm/functions/Function1;Ljava/util/List;)V
    .locals 1

    .line 3
    const/4 v0, 0x3

    iput v0, p0, LC1/G0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC1/G0;->e:Ljava/lang/Object;

    iput-object p2, p0, LC1/G0;->d:Ljava/lang/Object;

    iput-object p3, p0, LC1/G0;->c:Ljava/lang/Object;

    iput-object p4, p0, LC1/G0;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, LC1/G0;->b:I

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const-string v3, "mappingManager"

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    iget-object v6, v0, LC1/G0;->f:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v7, v0, LC1/G0;->c:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v8, v0, LC1/G0;->d:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v9, v0, LC1/G0;->e:Ljava/lang/Object;

    .line 17
    .line 18
    packed-switch v1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    check-cast v9, Ljava/util/LinkedHashMap;

    .line 22
    .line 23
    check-cast v8, Le/g;

    .line 24
    .line 25
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 26
    .line 27
    check-cast v6, Ljava/util/List;

    .line 28
    .line 29
    invoke-virtual {v9}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "<get-entries>(...)"

    .line 41
    .line 42
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    const/16 v3, 0x10

    .line 54
    .line 55
    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 60
    .line 61
    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_1

    .line 73
    .line 74
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Ljava/util/Map$Entry;

    .line 79
    .line 80
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    const-string v5, "component1(...)"

    .line 88
    .line 89
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    check-cast v4, Ljava/lang/Integer;

    .line 93
    .line 94
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    const-string v5, "component2(...)"

    .line 99
    .line 100
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    check-cast v2, Li1/s;

    .line 104
    .line 105
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {v8}, Le/D;->dismiss()V

    .line 130
    .line 131
    .line 132
    invoke-interface {v7, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    :goto_1
    return-void

    .line 136
    :pswitch_0
    check-cast v8, Landroid/widget/EditText;

    .line 137
    .line 138
    check-cast v9, Landroid/widget/TextView;

    .line 139
    .line 140
    check-cast v6, LE1/g;

    .line 141
    .line 142
    check-cast v7, LH0/o;

    .line 143
    .line 144
    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    if-eqz v1, :cond_2

    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    goto :goto_2

    .line 155
    :cond_2
    move-object v1, v4

    .line 156
    :goto_2
    if-nez v1, :cond_3

    .line 157
    .line 158
    const-string v1, ""

    .line 159
    .line 160
    :cond_3
    const-string v8, "name"

    .line 161
    .line 162
    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 166
    .line 167
    .line 168
    move-result-object v10

    .line 169
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v10

    .line 173
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 174
    .line 175
    .line 176
    move-result v10

    .line 177
    if-lez v10, :cond_8

    .line 178
    .line 179
    const/16 v10, 0x8

    .line 180
    .line 181
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 182
    .line 183
    .line 184
    iget-object v9, v6, LE1/g;->c:LB1/z;

    .line 185
    .line 186
    if-nez v9, :cond_4

    .line 187
    .line 188
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_4
    move-object v4, v9

    .line 193
    :goto_3
    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    if-eqz v3, :cond_5

    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_5
    invoke-virtual {v4}, LB1/z;->c()Ljava/util/LinkedHashMap;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    invoke-virtual {v4}, LB1/z;->d()Ljava/util/List;

    .line 227
    .line 228
    .line 229
    move-result-object v8

    .line 230
    new-instance v9, Ljava/util/ArrayList;

    .line 231
    .line 232
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .line 234
    .line 235
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 236
    .line 237
    .line 238
    move-result-object v8

    .line 239
    :cond_6
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 240
    .line 241
    .line 242
    move-result v10

    .line 243
    if-eqz v10, :cond_7

    .line 244
    .line 245
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v10

    .line 249
    move-object v11, v10

    .line 250
    check-cast v11, LB1/B;

    .line 251
    .line 252
    iget-object v11, v11, LB1/B;->a:Ljava/lang/String;

    .line 253
    .line 254
    const/4 v12, 0x1

    .line 255
    invoke-static {v11, v1, v12}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 256
    .line 257
    .line 258
    move-result v11

    .line 259
    if-nez v11, :cond_6

    .line 260
    .line 261
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    goto :goto_4

    .line 265
    :cond_7
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    .line 266
    .line 267
    .line 268
    move-result-object v12

    .line 269
    new-instance v8, LB1/B;

    .line 270
    .line 271
    invoke-direct {v8, v1, v3}, LB1/B;-><init>(Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 272
    .line 273
    .line 274
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    sget-object v1, LS1/d;->a:Ljava/util/Set;

    .line 278
    .line 279
    iget-object v1, v4, LB1/z;->a:Landroid/content/Context;

    .line 280
    .line 281
    new-instance v3, LA1/p;

    .line 282
    .line 283
    invoke-direct {v3, v2, v4}, LA1/p;-><init>(ILjava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    const/16 v17, 0x18

    .line 287
    .line 288
    const-string v13, ","

    .line 289
    .line 290
    const-string v14, "["

    .line 291
    .line 292
    const-string v15, "]"

    .line 293
    .line 294
    move-object/from16 v16, v3

    .line 295
    .line 296
    invoke-static/range {v12 .. v17}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    const-string v3, "<this>"

    .line 301
    .line 302
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    const-string v3, "v"

    .line 306
    .line 307
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-static {v1}, LS1/d;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    const-string v3, "physical_gamepad_presets_json"

    .line 319
    .line 320
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 325
    .line 326
    .line 327
    :goto_5
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    const v2, 0x7f120400

    .line 332
    .line 333
    .line 334
    invoke-virtual {v6, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v7}, Le/D;->dismiss()V

    .line 346
    .line 347
    .line 348
    goto :goto_6

    .line 349
    :cond_8
    invoke-virtual {v9, v5}, Landroid/view/View;->setVisibility(I)V

    .line 350
    .line 351
    .line 352
    :goto_6
    return-void

    .line 353
    :pswitch_1
    check-cast v8, LE1/g;

    .line 354
    .line 355
    check-cast v9, LB1/A;

    .line 356
    .line 357
    check-cast v6, LB1/C;

    .line 358
    .line 359
    check-cast v7, LH0/o;

    .line 360
    .line 361
    iget-object v1, v9, LB1/A;->a:Ljava/lang/String;

    .line 362
    .line 363
    iget-object v2, v6, LB1/C;->a:Ljava/lang/String;

    .line 364
    .line 365
    iget-object v6, v8, LE1/g;->d:Ljava/util/ArrayList;

    .line 366
    .line 367
    new-instance v9, Ljava/util/ArrayList;

    .line 368
    .line 369
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 370
    .line 371
    .line 372
    move-result v10

    .line 373
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 377
    .line 378
    .line 379
    move-result v10

    .line 380
    :goto_7
    if-ge v5, v10, :cond_a

    .line 381
    .line 382
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v11

    .line 386
    add-int/lit8 v5, v5, 0x1

    .line 387
    .line 388
    check-cast v11, LB1/A;

    .line 389
    .line 390
    iget-object v12, v11, LB1/A;->a:Ljava/lang/String;

    .line 391
    .line 392
    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    move-result v12

    .line 396
    if-eqz v12, :cond_9

    .line 397
    .line 398
    const/4 v12, 0x5

    .line 399
    invoke-static {v11, v2, v4, v12}, LB1/A;->a(LB1/A;Ljava/lang/String;Ljava/lang/String;I)LB1/A;

    .line 400
    .line 401
    .line 402
    move-result-object v11

    .line 403
    :cond_9
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    goto :goto_7

    .line 407
    :cond_a
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 408
    .line 409
    .line 410
    iget-object v2, v8, LE1/g;->c:LB1/z;

    .line 411
    .line 412
    if-nez v2, :cond_b

    .line 413
    .line 414
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    goto :goto_8

    .line 418
    :cond_b
    move-object v4, v2

    .line 419
    :goto_8
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 420
    .line 421
    .line 422
    invoke-static {v9}, LB1/z;->f(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    invoke-static {v6, v2}, Lkotlin/collections/CollectionsKt;->c(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 427
    .line 428
    .line 429
    iput-object v1, v8, LE1/g;->e:Ljava/lang/String;

    .line 430
    .line 431
    invoke-virtual {v8}, LE1/g;->c()V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v8}, LE1/g;->f()V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v8}, LE1/g;->i()V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v7}, Le/D;->dismiss()V

    .line 441
    .line 442
    .line 443
    return-void

    .line 444
    :pswitch_2
    check-cast v8, Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 445
    .line 446
    check-cast v7, LH0/o;

    .line 447
    .line 448
    check-cast v9, Ljava/util/LinkedHashMap;

    .line 449
    .line 450
    check-cast v6, LC1/c2;

    .line 451
    .line 452
    invoke-static {v8}, LS1/d;->p(Landroid/content/Context;)Z

    .line 453
    .line 454
    .line 455
    move-result v1

    .line 456
    sget-object v3, LC1/X0;->a:Li1/l;

    .line 457
    .line 458
    if-nez v1, :cond_c

    .line 459
    .line 460
    invoke-static {v8}, Lcom/bumptech/glide/c;->V(Lcom/minhub/gamehub/hub/GameDetailActivity;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v7}, Le/D;->dismiss()V

    .line 464
    .line 465
    .line 466
    goto :goto_a

    .line 467
    :cond_c
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 468
    .line 469
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 473
    .line 474
    .line 475
    move-result-object v3

    .line 476
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 477
    .line 478
    .line 479
    move-result-object v3

    .line 480
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 481
    .line 482
    .line 483
    move-result v4

    .line 484
    if-eqz v4, :cond_d

    .line 485
    .line 486
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v4

    .line 490
    check-cast v4, Ljava/util/Map$Entry;

    .line 491
    .line 492
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v5

    .line 496
    check-cast v5, Ljava/lang/String;

    .line 497
    .line 498
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v4

    .line 502
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 503
    .line 504
    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v4

    .line 508
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    goto :goto_9

    .line 512
    :cond_d
    new-instance v3, LA1/r;

    .line 513
    .line 514
    invoke-direct {v3, v8, v6, v1, v2}, LA1/r;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 515
    .line 516
    .line 517
    invoke-static {v8, v3}, Lcom/bumptech/glide/c;->Z(Lcom/minhub/gamehub/hub/GameDetailActivity;Lkotlin/jvm/functions/Function1;)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v7}, Le/D;->dismiss()V

    .line 521
    .line 522
    .line 523
    :goto_a
    return-void

    .line 524
    nop

    .line 525
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
