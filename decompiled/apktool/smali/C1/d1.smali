.class public final LC1/d1;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "LC1/d1;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHomeFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HomeFragment.kt\ncom/minhub/gamehub/hub/HomeFragment\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,251:1\n55#2,12:252\n84#2,3:264\n1869#3,2:267\n774#3:269\n865#3,2:270\n1869#3:272\n1870#3:274\n1#4:273\n257#5,2:275\n257#5,2:277\n255#5:279\n257#5,2:280\n*S KotlinDebug\n*F\n+ 1 HomeFragment.kt\ncom/minhub/gamehub/hub/HomeFragment\n*L\n84#1:252,12\n84#1:264,3\n116#1:267,2\n168#1:269\n168#1:270,2\n176#1:272\n176#1:274\n232#1:275,2\n237#1:277,2\n73#1:279\n74#1:280,2\n*E\n"
    }
.end annotation


# instance fields
.field public b:Lw1/c;

.field public final c:Lkotlin/Lazy;

.field public final d:LC1/j0;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LA1/n;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-direct {v0, v1, p0}, LA1/n;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, LC1/d1;->c:Lkotlin/Lazy;

    .line 15
    .line 16
    new-instance v0, LC1/j0;

    .line 17
    .line 18
    new-instance v1, LC1/a1;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-direct {v1, p0, v2}, LC1/a1;-><init>(LC1/d1;I)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, LC1/j0;-><init>(LC1/a1;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, LC1/d1;->d:LC1/j0;

    .line 28
    .line 29
    const-string v0, "all"

    .line 30
    .line 31
    iput-object v0, p0, LC1/d1;->e:Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, ""

    .line 34
    .line 35
    iput-object v0, p0, LC1/d1;->f:Ljava/lang/String;

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    iput v0, p0, LC1/d1;->g:I

    .line 39
    .line 40
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, LC1/d1;->h:Ljava/util/List;

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final b(Ljava/util/List;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, LC1/d1;->e:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, LC1/d1;->f:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "list"

    .line 6
    .line 7
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "filter"

    .line 11
    .line 12
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v2, "searchQuery"

    .line 16
    .line 17
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-string v3, "toLowerCase(...)"

    .line 27
    .line 28
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const-string v4, "renpy7"

    .line 36
    .line 37
    const-string v5, "renpy8"

    .line 38
    .line 39
    const/4 v6, 0x1

    .line 40
    sparse-switch v3, :sswitch_data_0

    .line 41
    .line 42
    .line 43
    goto/16 :goto_2

    .line 44
    .line 45
    :sswitch_0
    const-string v3, "vxace"

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_b

    .line 52
    .line 53
    goto/16 :goto_2

    .line 54
    .line 55
    :sswitch_1
    const-string v3, "renpy"

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_0

    .line 62
    .line 63
    goto/16 :goto_2

    .line 64
    .line 65
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_3

    .line 79
    .line 80
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    move-object v3, v2

    .line 85
    check-cast v3, Lcom/minhub/gamehub/data/Game;

    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/Game;->getEngine()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    invoke-static {v7, v5, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    if-nez v7, :cond_2

    .line 96
    .line 97
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/Game;->getEngine()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-static {v3, v4, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-eqz v3, :cond_1

    .line 106
    .line 107
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_3
    move-object p1, v0

    .line 112
    goto/16 :goto_5

    .line 113
    .line 114
    :sswitch_2
    const-string v3, "godot"

    .line 115
    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-nez v2, :cond_b

    .line 121
    .line 122
    goto/16 :goto_2

    .line 123
    .line 124
    :sswitch_3
    const-string v3, "kiri"

    .line 125
    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-nez v2, :cond_b

    .line 131
    .line 132
    goto/16 :goto_2

    .line 133
    .line 134
    :sswitch_4
    const-string v3, "html"

    .line 135
    .line 136
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-nez v2, :cond_b

    .line 141
    .line 142
    goto/16 :goto_2

    .line 143
    .line 144
    :sswitch_5
    const-string v3, "fav"

    .line 145
    .line 146
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-nez v2, :cond_4

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-eqz v2, :cond_3

    .line 167
    .line 168
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    move-object v3, v2

    .line 173
    check-cast v3, Lcom/minhub/gamehub/data/Game;

    .line 174
    .line 175
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/Game;->getFavorite()Z

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    if-eqz v3, :cond_5

    .line 180
    .line 181
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :sswitch_6
    const-string v3, "all"

    .line 186
    .line 187
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    if-nez v2, :cond_d

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :sswitch_7
    const-string v3, "mz"

    .line 195
    .line 196
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-nez v2, :cond_b

    .line 201
    .line 202
    goto :goto_2

    .line 203
    :sswitch_8
    const-string v3, "mv"

    .line 204
    .line 205
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    if-nez v2, :cond_b

    .line 210
    .line 211
    goto :goto_2

    .line 212
    :sswitch_9
    const-string v3, ""

    .line 213
    .line 214
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    if-nez v2, :cond_d

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :sswitch_a
    const-string v3, "tyrano"

    .line 222
    .line 223
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    if-nez v2, :cond_b

    .line 228
    .line 229
    goto :goto_2

    .line 230
    :sswitch_b
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    if-nez v2, :cond_b

    .line 235
    .line 236
    goto :goto_2

    .line 237
    :sswitch_c
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    if-nez v2, :cond_b

    .line 242
    .line 243
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    .line 244
    .line 245
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .line 247
    .line 248
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    if-eqz v3, :cond_a

    .line 257
    .line 258
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    move-object v4, v3

    .line 263
    check-cast v4, Lcom/minhub/gamehub/data/Game;

    .line 264
    .line 265
    invoke-virtual {v4}, Lcom/minhub/gamehub/data/Game;->getEngine()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    invoke-static {v5, v0, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 270
    .line 271
    .line 272
    move-result v5

    .line 273
    if-nez v5, :cond_9

    .line 274
    .line 275
    invoke-virtual {v4}, Lcom/minhub/gamehub/data/Game;->getTags()Ljava/util/List;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    if-eqz v4, :cond_7

    .line 280
    .line 281
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 282
    .line 283
    .line 284
    move-result v5

    .line 285
    if-eqz v5, :cond_7

    .line 286
    .line 287
    goto :goto_3

    .line 288
    :cond_7
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 293
    .line 294
    .line 295
    move-result v5

    .line 296
    if-eqz v5, :cond_6

    .line 297
    .line 298
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v5

    .line 302
    check-cast v5, Ljava/lang/String;

    .line 303
    .line 304
    invoke-static {v5, v0, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 305
    .line 306
    .line 307
    move-result v5

    .line 308
    if-eqz v5, :cond_8

    .line 309
    .line 310
    :cond_9
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    goto :goto_3

    .line 314
    :cond_a
    move-object p1, v2

    .line 315
    goto :goto_5

    .line 316
    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    .line 317
    .line 318
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .line 320
    .line 321
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    :cond_c
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 326
    .line 327
    .line 328
    move-result v3

    .line 329
    if-eqz v3, :cond_a

    .line 330
    .line 331
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    move-object v4, v3

    .line 336
    check-cast v4, Lcom/minhub/gamehub/data/Game;

    .line 337
    .line 338
    invoke-virtual {v4}, Lcom/minhub/gamehub/data/Game;->getEngine()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v4

    .line 342
    invoke-static {v4, v0, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 343
    .line 344
    .line 345
    move-result v4

    .line 346
    if-eqz v4, :cond_c

    .line 347
    .line 348
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    goto :goto_4

    .line 352
    :cond_d
    :goto_5
    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 361
    .line 362
    .line 363
    move-result v1

    .line 364
    if-nez v1, :cond_e

    .line 365
    .line 366
    goto :goto_7

    .line 367
    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    .line 368
    .line 369
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .line 371
    .line 372
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 373
    .line 374
    .line 375
    move-result-object p1

    .line 376
    :cond_f
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 377
    .line 378
    .line 379
    move-result v2

    .line 380
    if-eqz v2, :cond_13

    .line 381
    .line 382
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    move-object v3, v2

    .line 387
    check-cast v3, Lcom/minhub/gamehub/data/Game;

    .line 388
    .line 389
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/Game;->getTitle()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v4

    .line 393
    invoke-static {v4, v0}, Lkotlin/text/StringsKt;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 394
    .line 395
    .line 396
    move-result v4

    .line 397
    if-nez v4, :cond_12

    .line 398
    .line 399
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/Game;->getTags()Ljava/util/List;

    .line 400
    .line 401
    .line 402
    move-result-object v3

    .line 403
    if-eqz v3, :cond_10

    .line 404
    .line 405
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 406
    .line 407
    .line 408
    move-result v4

    .line 409
    if-eqz v4, :cond_10

    .line 410
    .line 411
    goto :goto_6

    .line 412
    :cond_10
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 413
    .line 414
    .line 415
    move-result-object v3

    .line 416
    :cond_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 417
    .line 418
    .line 419
    move-result v4

    .line 420
    if-eqz v4, :cond_f

    .line 421
    .line 422
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v4

    .line 426
    check-cast v4, Ljava/lang/String;

    .line 427
    .line 428
    invoke-static {v4, v0}, Lkotlin/text/StringsKt;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 429
    .line 430
    .line 431
    move-result v4

    .line 432
    if-eqz v4, :cond_11

    .line 433
    .line 434
    :cond_12
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    goto :goto_6

    .line 438
    :cond_13
    move-object p1, v1

    .line 439
    :goto_7
    iput-object p1, p0, LC1/d1;->h:Ljava/util/List;

    .line 440
    .line 441
    if-eqz p2, :cond_14

    .line 442
    .line 443
    goto :goto_8

    .line 444
    :cond_14
    iget p2, p0, LC1/d1;->g:I

    .line 445
    .line 446
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 447
    .line 448
    .line 449
    move-result p1

    .line 450
    add-int/lit8 p1, p1, 0x9

    .line 451
    .line 452
    div-int/lit8 p1, p1, 0xa

    .line 453
    .line 454
    invoke-static {v6, p1}, Ljava/lang/Math;->max(II)I

    .line 455
    .line 456
    .line 457
    move-result p1

    .line 458
    invoke-static {p2, v6, p1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 459
    .line 460
    .line 461
    move-result v6

    .line 462
    :goto_8
    iput v6, p0, LC1/d1;->g:I

    .line 463
    .line 464
    invoke-virtual {p0}, LC1/d1;->c()V

    .line 465
    .line 466
    .line 467
    return-void

    .line 468
    nop

    .line 469
    :sswitch_data_0
    .sparse-switch
        -0x37b48f2d -> :sswitch_c
        -0x37b48f2c -> :sswitch_b
        -0x332f6fcb -> :sswitch_a
        0x0 -> :sswitch_9
        0xda9 -> :sswitch_8
        0xdad -> :sswitch_7
        0x179a1 -> :sswitch_6
        0x18b1b -> :sswitch_5
        0x3107ab -> :sswitch_4
        0x323c15 -> :sswitch_3
        0x5df6f61 -> :sswitch_2
        0x6760be4 -> :sswitch_1
        0x6b6da81 -> :sswitch_0
    .end sparse-switch
.end method

.method public final c()V
    .locals 9

    .line 1
    iget-object v0, p0, LC1/d1;->h:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x9

    .line 8
    .line 9
    div-int/lit8 v0, v0, 0xa

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v2, p0, LC1/d1;->g:I

    .line 17
    .line 18
    sub-int/2addr v2, v1

    .line 19
    mul-int/lit8 v2, v2, 0xa

    .line 20
    .line 21
    add-int/lit8 v3, v2, 0xa

    .line 22
    .line 23
    iget-object v4, p0, LC1/d1;->h:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    iget-object v4, p0, LC1/d1;->h:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object v4, p0, LC1/d1;->h:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v4, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    :goto_0
    iget-object v3, p0, LC1/d1;->d:LC1/j0;

    .line 53
    .line 54
    iget-object v3, v3, LC1/j0;->e:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v3, LP/f;

    .line 57
    .line 58
    iget-object v4, v3, LP/f;->a:LA1/b;

    .line 59
    .line 60
    iget v5, v3, LP/f;->g:I

    .line 61
    .line 62
    add-int/2addr v5, v1

    .line 63
    iput v5, v3, LP/f;->g:I

    .line 64
    .line 65
    iget-object v6, v3, LP/f;->e:Ljava/util/List;

    .line 66
    .line 67
    const/4 v7, 0x0

    .line 68
    if-ne v2, v6, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    if-nez v2, :cond_2

    .line 72
    .line 73
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    const/4 v5, 0x0

    .line 78
    iput-object v5, v3, LP/f;->e:Ljava/util/List;

    .line 79
    .line 80
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 81
    .line 82
    iput-object v5, v3, LP/f;->f:Ljava/util/List;

    .line 83
    .line 84
    invoke-virtual {v4, v7, v2}, LA1/b;->a(II)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3}, LP/f;->a()V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    if-nez v6, :cond_3

    .line 92
    .line 93
    iput-object v2, v3, LP/f;->e:Ljava/util/List;

    .line 94
    .line 95
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    iput-object v5, v3, LP/f;->f:Ljava/util/List;

    .line 100
    .line 101
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    invoke-virtual {v4, v7, v2}, LA1/b;->i(II)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3}, LP/f;->a()V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_3
    iget-object v4, v3, LP/f;->b:LA1/b;

    .line 113
    .line 114
    iget-object v4, v4, LA1/b;->b:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v4, Ljava/util/concurrent/Executor;

    .line 117
    .line 118
    new-instance v8, LP/d;

    .line 119
    .line 120
    invoke-direct {v8, v3, v6, v2, v5}, LP/d;-><init>(LP/f;Ljava/util/List;Ljava/util/List;I)V

    .line 121
    .line 122
    .line 123
    invoke-interface {v4, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 124
    .line 125
    .line 126
    :goto_1
    iget-object v2, p0, LC1/d1;->b:Lw1/c;

    .line 127
    .line 128
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    iget-object v2, v2, Lw1/c;->j:Landroid/view/View;

    .line 132
    .line 133
    check-cast v2, Landroid/widget/TextView;

    .line 134
    .line 135
    const-string v3, "tvEmpty"

    .line 136
    .line 137
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object v3, p0, LC1/d1;->h:Ljava/util/List;

    .line 141
    .line 142
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    const/16 v4, 0x8

    .line 147
    .line 148
    if-eqz v3, :cond_4

    .line 149
    .line 150
    move v3, v7

    .line 151
    goto :goto_2

    .line 152
    :cond_4
    move v3, v4

    .line 153
    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 154
    .line 155
    .line 156
    iget-object v2, p0, LC1/d1;->b:Lw1/c;

    .line 157
    .line 158
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    iget-object v2, v2, Lw1/c;->h:Landroid/view/View;

    .line 162
    .line 163
    check-cast v2, Landroid/widget/LinearLayout;

    .line 164
    .line 165
    const-string v3, "layoutPager"

    .line 166
    .line 167
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    if-le v0, v1, :cond_5

    .line 171
    .line 172
    move v4, v7

    .line 173
    :cond_5
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 174
    .line 175
    .line 176
    if-gt v0, v1, :cond_6

    .line 177
    .line 178
    return-void

    .line 179
    :cond_6
    iget-object v2, p0, LC1/d1;->b:Lw1/c;

    .line 180
    .line 181
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    iget-object v2, v2, Lw1/c;->k:Landroid/view/View;

    .line 185
    .line 186
    check-cast v2, Landroid/widget/TextView;

    .line 187
    .line 188
    iget v3, p0, LC1/d1;->g:I

    .line 189
    .line 190
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    const v4, 0x7f120122

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0, v4, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    .line 211
    .line 212
    iget-object v2, p0, LC1/d1;->b:Lw1/c;

    .line 213
    .line 214
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    iget-object v2, v2, Lw1/c;->b:Landroid/view/View;

    .line 218
    .line 219
    check-cast v2, Landroid/widget/Button;

    .line 220
    .line 221
    iget v3, p0, LC1/d1;->g:I

    .line 222
    .line 223
    if-le v3, v1, :cond_7

    .line 224
    .line 225
    move v3, v1

    .line 226
    goto :goto_3

    .line 227
    :cond_7
    move v3, v7

    .line 228
    :goto_3
    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 229
    .line 230
    .line 231
    iget-object v2, p0, LC1/d1;->b:Lw1/c;

    .line 232
    .line 233
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    iget-object v2, v2, Lw1/c;->a:Landroid/view/View;

    .line 237
    .line 238
    check-cast v2, Landroid/widget/Button;

    .line 239
    .line 240
    iget v3, p0, LC1/d1;->g:I

    .line 241
    .line 242
    if-ge v3, v0, :cond_8

    .line 243
    .line 244
    goto :goto_4

    .line 245
    :cond_8
    move v1, v7

    .line 246
    :goto_4
    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 247
    .line 248
    .line 249
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "i"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const v1, 0x7f0c004d

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    move-object/from16 v3, p2

    .line 13
    .line 14
    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const v1, 0x7f0900c4

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    move-object v5, v2

    .line 26
    check-cast v5, Landroid/widget/Button;

    .line 27
    .line 28
    if-eqz v5, :cond_0

    .line 29
    .line 30
    const v1, 0x7f0900cc

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    move-object v6, v2

    .line 38
    check-cast v6, Landroid/widget/Button;

    .line 39
    .line 40
    if-eqz v6, :cond_0

    .line 41
    .line 42
    const v1, 0x7f0900db

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    move-object v7, v2

    .line 50
    check-cast v7, Landroid/widget/ImageButton;

    .line 51
    .line 52
    if-eqz v7, :cond_0

    .line 53
    .line 54
    const v1, 0x7f0900f9

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    move-object v8, v2

    .line 62
    check-cast v8, Lcom/google/android/material/chip/ChipGroup;

    .line 63
    .line 64
    if-eqz v8, :cond_0

    .line 65
    .line 66
    const v1, 0x7f09010e

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    move-object v9, v2

    .line 74
    check-cast v9, Landroid/widget/LinearLayout;

    .line 75
    .line 76
    if-eqz v9, :cond_0

    .line 77
    .line 78
    const v1, 0x7f09015a

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    move-object v10, v2

    .line 86
    check-cast v10, Landroid/widget/EditText;

    .line 87
    .line 88
    if-eqz v10, :cond_0

    .line 89
    .line 90
    const v1, 0x7f0901d1

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    move-object v11, v2

    .line 98
    check-cast v11, Landroid/widget/LinearLayout;

    .line 99
    .line 100
    if-eqz v11, :cond_0

    .line 101
    .line 102
    const v1, 0x7f09026c

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    move-object v12, v2

    .line 110
    check-cast v12, Landroidx/recyclerview/widget/RecyclerView;

    .line 111
    .line 112
    if-eqz v12, :cond_0

    .line 113
    .line 114
    const v1, 0x7f090339

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    move-object v13, v2

    .line 122
    check-cast v13, Landroid/widget/TextView;

    .line 123
    .line 124
    if-eqz v13, :cond_0

    .line 125
    .line 126
    const v1, 0x7f090346

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    move-object v14, v2

    .line 134
    check-cast v14, Landroid/widget/TextView;

    .line 135
    .line 136
    if-eqz v14, :cond_0

    .line 137
    .line 138
    const v1, 0x7f090378

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    move-object v15, v2

    .line 146
    check-cast v15, Landroid/widget/TextView;

    .line 147
    .line 148
    if-eqz v15, :cond_0

    .line 149
    .line 150
    new-instance v3, Lw1/c;

    .line 151
    .line 152
    move-object v4, v0

    .line 153
    check-cast v4, Landroid/widget/LinearLayout;

    .line 154
    .line 155
    invoke-direct/range {v3 .. v15}, Lw1/c;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ImageButton;Lcom/google/android/material/chip/ChipGroup;Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 156
    .line 157
    .line 158
    move-object/from16 v2, p0

    .line 159
    .line 160
    iput-object v3, v2, LC1/d1;->b:Lw1/c;

    .line 161
    .line 162
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    const-string v0, "getRoot(...)"

    .line 166
    .line 167
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    return-object v4

    .line 171
    :cond_0
    move-object/from16 v2, p0

    .line 172
    .line 173
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    new-instance v1, Ljava/lang/NullPointerException;

    .line 182
    .line 183
    const-string v3, "Missing required view with ID: "

    .line 184
    .line 185
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw v1
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, LC1/d1;->b:Lw1/c;

    .line 6
    .line 7
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "v"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, LC1/d1;->b:Lw1/c;

    .line 11
    .line 12
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, v1, Lw1/c;->i:Landroid/view/View;

    .line 16
    .line 17
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    .line 19
    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    invoke-direct {v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(LP/g0;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, LC1/d1;->b:Lw1/c;

    .line 31
    .line 32
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v1, Lw1/c;->i:Landroid/view/View;

    .line 36
    .line 37
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    .line 39
    iget-object v2, v0, LC1/d1;->d:LC1/j0;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(LP/W;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, LC1/d1;->b:Lw1/c;

    .line 45
    .line 46
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, v1, Lw1/c;->b:Landroid/view/View;

    .line 50
    .line 51
    check-cast v1, Landroid/widget/Button;

    .line 52
    .line 53
    new-instance v2, LC1/b1;

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    invoke-direct {v2, v0, v3}, LC1/b1;-><init>(LC1/d1;I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    .line 62
    iget-object v1, v0, LC1/d1;->b:Lw1/c;

    .line 63
    .line 64
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, v1, Lw1/c;->a:Landroid/view/View;

    .line 68
    .line 69
    check-cast v1, Landroid/widget/Button;

    .line 70
    .line 71
    new-instance v2, LC1/b1;

    .line 72
    .line 73
    const/4 v3, 0x1

    .line 74
    invoke-direct {v2, v0, v3}, LC1/b1;-><init>(LC1/d1;I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    .line 79
    .line 80
    iget-object v1, v0, LC1/d1;->c:Lkotlin/Lazy;

    .line 81
    .line 82
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, LC1/Z0;

    .line 87
    .line 88
    iget-object v1, v1, LC1/Z0;->b:Landroidx/lifecycle/LiveData;

    .line 89
    .line 90
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    new-instance v3, LC1/a1;

    .line 95
    .line 96
    const/4 v4, 0x1

    .line 97
    invoke-direct {v3, v0, v4}, LC1/a1;-><init>(LC1/d1;I)V

    .line 98
    .line 99
    .line 100
    new-instance v4, LC1/x0;

    .line 101
    .line 102
    invoke-direct {v4, v3}, LC1/x0;-><init>(LC1/a1;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 106
    .line 107
    .line 108
    iget-object v1, v0, LC1/d1;->b:Lw1/c;

    .line 109
    .line 110
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    iget-object v1, v1, Lw1/c;->c:Landroid/view/View;

    .line 114
    .line 115
    check-cast v1, Landroid/widget/ImageButton;

    .line 116
    .line 117
    new-instance v2, LC1/b1;

    .line 118
    .line 119
    const/4 v3, 0x2

    .line 120
    invoke-direct {v2, v0, v3}, LC1/b1;-><init>(LC1/d1;I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    .line 125
    .line 126
    iget-object v1, v0, LC1/d1;->b:Lw1/c;

    .line 127
    .line 128
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    iget-object v1, v1, Lw1/c;->g:Landroid/view/View;

    .line 132
    .line 133
    check-cast v1, Landroid/widget/EditText;

    .line 134
    .line 135
    const-string v2, "etSearch"

    .line 136
    .line 137
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    new-instance v2, LC1/c1;

    .line 141
    .line 142
    const/4 v3, 0x0

    .line 143
    invoke-direct {v2, v3, v0}, LC1/c1;-><init>(ILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 147
    .line 148
    .line 149
    const v1, 0x7f1200fd

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    const-string v2, "all"

    .line 157
    .line 158
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    const-string v1, "RPG MV"

    .line 163
    .line 164
    const-string v12, "mv"

    .line 165
    .line 166
    invoke-static {v12, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    const-string v1, "RPG MZ"

    .line 171
    .line 172
    const-string v13, "mz"

    .line 173
    .line 174
    invoke-static {v13, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    const-string v1, "Godot"

    .line 179
    .line 180
    const-string v14, "godot"

    .line 181
    .line 182
    invoke-static {v14, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    const-string v1, "Ren\'Py"

    .line 187
    .line 188
    const-string v15, "renpy"

    .line 189
    .line 190
    invoke-static {v15, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 191
    .line 192
    .line 193
    move-result-object v7

    .line 194
    const-string v1, "Tyrano"

    .line 195
    .line 196
    const-string v8, "tyrano"

    .line 197
    .line 198
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    const-string v9, "VX Ace"

    .line 203
    .line 204
    const-string v10, "vxace"

    .line 205
    .line 206
    invoke-static {v10, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 207
    .line 208
    .line 209
    move-result-object v9

    .line 210
    const-string v11, "KiriKiri"

    .line 211
    .line 212
    move-object/from16 p1, v1

    .line 213
    .line 214
    const-string v1, "kiri"

    .line 215
    .line 216
    invoke-static {v1, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 217
    .line 218
    .line 219
    move-result-object v11

    .line 220
    move-object/from16 p2, v3

    .line 221
    .line 222
    const v3, 0x7f120100

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    move-object/from16 v16, v4

    .line 230
    .line 231
    const-string v4, "fav"

    .line 232
    .line 233
    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    move-object v0, v8

    .line 238
    move-object/from16 v4, v16

    .line 239
    .line 240
    move-object/from16 v8, p1

    .line 241
    .line 242
    move-object/from16 p1, v2

    .line 243
    .line 244
    move-object v2, v10

    .line 245
    move-object v10, v11

    .line 246
    move-object v11, v3

    .line 247
    move-object/from16 v3, p2

    .line 248
    .line 249
    filled-new-array/range {v3 .. v11}, [Lkotlin/Pair;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 262
    .line 263
    .line 264
    move-result v4

    .line 265
    const/4 v5, 0x1

    .line 266
    if-eqz v4, :cond_7

    .line 267
    .line 268
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    check-cast v4, Lkotlin/Pair;

    .line 273
    .line 274
    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v6

    .line 278
    const-string v7, "component1(...)"

    .line 279
    .line 280
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    check-cast v6, Ljava/lang/String;

    .line 284
    .line 285
    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v4

    .line 289
    check-cast v4, Ljava/lang/String;

    .line 290
    .line 291
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 292
    .line 293
    .line 294
    move-result v7

    .line 295
    sparse-switch v7, :sswitch_data_0

    .line 296
    .line 297
    .line 298
    goto :goto_1

    .line 299
    :sswitch_0
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v7

    .line 303
    if-nez v7, :cond_0

    .line 304
    .line 305
    goto :goto_1

    .line 306
    :cond_0
    const-string v7, "#10B981"

    .line 307
    .line 308
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 309
    .line 310
    .line 311
    move-result v7

    .line 312
    goto :goto_2

    .line 313
    :sswitch_1
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v7

    .line 317
    if-nez v7, :cond_1

    .line 318
    .line 319
    goto :goto_1

    .line 320
    :cond_1
    const-string v7, "#E91E8C"

    .line 321
    .line 322
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 323
    .line 324
    .line 325
    move-result v7

    .line 326
    goto :goto_2

    .line 327
    :sswitch_2
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v7

    .line 331
    if-nez v7, :cond_2

    .line 332
    .line 333
    goto :goto_1

    .line 334
    :cond_2
    const-string v7, "#478CBF"

    .line 335
    .line 336
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 337
    .line 338
    .line 339
    move-result v7

    .line 340
    goto :goto_2

    .line 341
    :sswitch_3
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v7

    .line 345
    if-nez v7, :cond_3

    .line 346
    .line 347
    goto :goto_1

    .line 348
    :cond_3
    const-string v7, "#FF6B35"

    .line 349
    .line 350
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 351
    .line 352
    .line 353
    move-result v7

    .line 354
    goto :goto_2

    .line 355
    :sswitch_4
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result v7

    .line 359
    if-nez v7, :cond_4

    .line 360
    .line 361
    goto :goto_1

    .line 362
    :cond_4
    const-string v7, "#8B5CF6"

    .line 363
    .line 364
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 365
    .line 366
    .line 367
    move-result v7

    .line 368
    goto :goto_2

    .line 369
    :sswitch_5
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    move-result v7

    .line 373
    if-nez v7, :cond_5

    .line 374
    .line 375
    goto :goto_1

    .line 376
    :cond_5
    const-string v7, "#3B82F6"

    .line 377
    .line 378
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 379
    .line 380
    .line 381
    move-result v7

    .line 382
    goto :goto_2

    .line 383
    :sswitch_6
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result v7

    .line 387
    if-nez v7, :cond_6

    .line 388
    .line 389
    :goto_1
    const-string v7, "#EF4444"

    .line 390
    .line 391
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 392
    .line 393
    .line 394
    move-result v7

    .line 395
    goto :goto_2

    .line 396
    :cond_6
    const-string v7, "#F97316"

    .line 397
    .line 398
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 399
    .line 400
    .line 401
    move-result v7

    .line 402
    :goto_2
    new-instance v8, Lcom/google/android/material/chip/Chip;

    .line 403
    .line 404
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 405
    .line 406
    .line 407
    move-result-object v9

    .line 408
    const/4 v10, 0x0

    .line 409
    invoke-direct {v8, v9, v10}, Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v8, v5}, Lcom/google/android/material/chip/Chip;->setCheckable(Z)V

    .line 416
    .line 417
    .line 418
    move-object/from16 v4, p1

    .line 419
    .line 420
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    move-result v5

    .line 424
    invoke-virtual {v8, v5}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 425
    .line 426
    .line 427
    const/4 v5, 0x0

    .line 428
    invoke-virtual {v8, v5}, Lcom/google/android/material/chip/Chip;->setCheckedIconVisible(Z)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v8, v5}, Lcom/google/android/material/chip/Chip;->setChipIconVisible(Z)V

    .line 432
    .line 433
    .line 434
    const v9, 0x106000d

    .line 435
    .line 436
    .line 437
    invoke-virtual {v8, v9}, Lcom/google/android/material/chip/Chip;->setRippleColorResource(I)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 441
    .line 442
    .line 443
    move-result-object v9

    .line 444
    const v10, 0x7f070062

    .line 445
    .line 446
    .line 447
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    .line 448
    .line 449
    .line 450
    move-result v9

    .line 451
    invoke-virtual {v8, v9}, Lcom/google/android/material/chip/Chip;->setChipMinHeight(F)V

    .line 452
    .line 453
    .line 454
    const/high16 v9, 0x41300000    # 11.0f

    .line 455
    .line 456
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 457
    .line 458
    .line 459
    sget-object v9, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 460
    .line 461
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 462
    .line 463
    .line 464
    new-instance v9, Landroid/content/res/ColorStateList;

    .line 465
    .line 466
    const v10, 0x10100a0

    .line 467
    .line 468
    .line 469
    filled-new-array {v10}, [I

    .line 470
    .line 471
    .line 472
    move-result-object v11

    .line 473
    move/from16 p1, v10

    .line 474
    .line 475
    new-array v10, v5, [I

    .line 476
    .line 477
    filled-new-array {v11, v10}, [[I

    .line 478
    .line 479
    .line 480
    move-result-object v10

    .line 481
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    .line 482
    .line 483
    .line 484
    move-result v11

    .line 485
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    .line 486
    .line 487
    .line 488
    move-result v5

    .line 489
    move-object/from16 v16, v0

    .line 490
    .line 491
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    .line 492
    .line 493
    .line 494
    move-result v0

    .line 495
    move-object/from16 v17, v1

    .line 496
    .line 497
    const/16 v1, 0x22

    .line 498
    .line 499
    invoke-static {v1, v11, v5, v0}, Landroid/graphics/Color;->argb(IIII)I

    .line 500
    .line 501
    .line 502
    move-result v0

    .line 503
    const-string v1, "#18181f"

    .line 504
    .line 505
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 506
    .line 507
    .line 508
    move-result v1

    .line 509
    filled-new-array {v0, v1}, [I

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    invoke-direct {v9, v10, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v8, v9}, Lcom/google/android/material/chip/Chip;->setChipBackgroundColor(Landroid/content/res/ColorStateList;)V

    .line 517
    .line 518
    .line 519
    new-instance v0, Landroid/content/res/ColorStateList;

    .line 520
    .line 521
    filled-new-array/range {p1 .. p1}, [I

    .line 522
    .line 523
    .line 524
    move-result-object v1

    .line 525
    const/4 v5, 0x0

    .line 526
    new-array v9, v5, [I

    .line 527
    .line 528
    filled-new-array {v1, v9}, [[I

    .line 529
    .line 530
    .line 531
    move-result-object v1

    .line 532
    const-string v9, "#8888A4"

    .line 533
    .line 534
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 535
    .line 536
    .line 537
    move-result v9

    .line 538
    filled-new-array {v7, v9}, [I

    .line 539
    .line 540
    .line 541
    move-result-object v9

    .line 542
    invoke-direct {v0, v1, v9}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 546
    .line 547
    .line 548
    const/high16 v0, 0x3f800000    # 1.0f

    .line 549
    .line 550
    invoke-virtual {v8, v0}, Lcom/google/android/material/chip/Chip;->setChipStrokeWidth(F)V

    .line 551
    .line 552
    .line 553
    new-instance v0, Landroid/content/res/ColorStateList;

    .line 554
    .line 555
    filled-new-array/range {p1 .. p1}, [I

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    new-array v9, v5, [I

    .line 560
    .line 561
    filled-new-array {v1, v9}, [[I

    .line 562
    .line 563
    .line 564
    move-result-object v1

    .line 565
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    .line 566
    .line 567
    .line 568
    move-result v9

    .line 569
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    .line 570
    .line 571
    .line 572
    move-result v10

    .line 573
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    .line 574
    .line 575
    .line 576
    move-result v7

    .line 577
    const/16 v11, 0x44

    .line 578
    .line 579
    invoke-static {v11, v9, v10, v7}, Landroid/graphics/Color;->argb(IIII)I

    .line 580
    .line 581
    .line 582
    move-result v7

    .line 583
    filled-new-array {v7, v5}, [I

    .line 584
    .line 585
    .line 586
    move-result-object v5

    .line 587
    invoke-direct {v0, v1, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 588
    .line 589
    .line 590
    invoke-virtual {v8, v0}, Lcom/google/android/material/chip/Chip;->setChipStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 591
    .line 592
    .line 593
    new-instance v0, LC1/j;

    .line 594
    .line 595
    const/4 v1, 0x3

    .line 596
    move-object/from16 v7, p0

    .line 597
    .line 598
    invoke-direct {v0, v1, v7, v6}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 599
    .line 600
    .line 601
    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 602
    .line 603
    .line 604
    iget-object v0, v7, LC1/d1;->b:Lw1/c;

    .line 605
    .line 606
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 607
    .line 608
    .line 609
    iget-object v0, v0, Lw1/c;->f:Landroid/view/View;

    .line 610
    .line 611
    check-cast v0, Lcom/google/android/material/chip/ChipGroup;

    .line 612
    .line 613
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 614
    .line 615
    .line 616
    move-object/from16 p1, v4

    .line 617
    .line 618
    move-object/from16 v0, v16

    .line 619
    .line 620
    move-object/from16 v1, v17

    .line 621
    .line 622
    goto/16 :goto_0

    .line 623
    .line 624
    :cond_7
    move-object/from16 v7, p0

    .line 625
    .line 626
    iget-object v0, v7, LC1/d1;->b:Lw1/c;

    .line 627
    .line 628
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 629
    .line 630
    .line 631
    iget-object v0, v0, Lw1/c;->f:Landroid/view/View;

    .line 632
    .line 633
    check-cast v0, Lcom/google/android/material/chip/ChipGroup;

    .line 634
    .line 635
    invoke-virtual {v0, v5}, Lcom/google/android/material/chip/ChipGroup;->setSingleSelection(Z)V

    .line 636
    .line 637
    .line 638
    return-void

    .line 639
    :sswitch_data_0
    .sparse-switch
        -0x332f6fcb -> :sswitch_6
        0xda9 -> :sswitch_5
        0xdad -> :sswitch_4
        0x323c15 -> :sswitch_3
        0x5df6f61 -> :sswitch_2
        0x6760be4 -> :sswitch_1
        0x6b6da81 -> :sswitch_0
    .end sparse-switch
.end method
