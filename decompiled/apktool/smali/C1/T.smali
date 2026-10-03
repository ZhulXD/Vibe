.class public final LC1/T;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, LC1/T;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .line 1
    iget v0, p0, LC1/T;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p2, Ljava/io/File;

    .line 7
    .line 8
    invoke-static {p2}, Lz1/e;->a(Ljava/io/File;)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    check-cast p1, Ljava/io/File;

    .line 17
    .line 18
    invoke-static {p1}, Lz1/e;->a(Ljava/io/File;)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p2, p1}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1

    .line 31
    :pswitch_0
    check-cast p1, Ljava/io/File;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v0, "getName(...)"

    .line 38
    .line 39
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string v2, "toLowerCase(...)"

    .line 49
    .line 50
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    check-cast p2, Ljava/io/File;

    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p1, p2}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    return p1

    .line 74
    :pswitch_1
    check-cast p1, Landroid/view/View;

    .line 75
    .line 76
    check-cast p2, Landroid/view/View;

    .line 77
    .line 78
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getZ(Landroid/view/View;)F

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getZ(Landroid/view/View;)F

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    cmpl-float v0, p1, p2

    .line 87
    .line 88
    if-lez v0, :cond_0

    .line 89
    .line 90
    const/4 p1, -0x1

    .line 91
    goto :goto_0

    .line 92
    :cond_0
    cmpg-float p1, p1, p2

    .line 93
    .line 94
    if-gez p1, :cond_1

    .line 95
    .line 96
    const/4 p1, 0x1

    .line 97
    goto :goto_0

    .line 98
    :cond_1
    const/4 p1, 0x0

    .line 99
    :goto_0
    return p1

    .line 100
    :pswitch_2
    check-cast p1, Lu/i;

    .line 101
    .line 102
    check-cast p2, Lu/i;

    .line 103
    .line 104
    iget p1, p1, Lu/i;->b:I

    .line 105
    .line 106
    iget p2, p2, Lu/i;->b:I

    .line 107
    .line 108
    sub-int/2addr p1, p2

    .line 109
    return p1

    .line 110
    :pswitch_3
    check-cast p1, Ljava/lang/Comparable;

    .line 111
    .line 112
    check-cast p2, Ljava/lang/Comparable;

    .line 113
    .line 114
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    return p1

    .line 119
    :pswitch_4
    check-cast p1, [I

    .line 120
    .line 121
    check-cast p2, [I

    .line 122
    .line 123
    const/4 v0, 0x0

    .line 124
    aget p1, p1, v0

    .line 125
    .line 126
    aget p2, p2, v0

    .line 127
    .line 128
    sub-int/2addr p1, p2

    .line 129
    return p1

    .line 130
    :pswitch_5
    check-cast p2, Ljava/io/File;

    .line 131
    .line 132
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    check-cast p1, Ljava/io/File;

    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-static {p2, p1}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    return p1

    .line 163
    :pswitch_6
    check-cast p1, Ljava/io/File;

    .line 164
    .line 165
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    const-string v0, "getName(...)"

    .line 170
    .line 171
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 175
    .line 176
    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    const-string v2, "toLowerCase(...)"

    .line 181
    .line 182
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    check-cast p2, Ljava/io/File;

    .line 186
    .line 187
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-static {p1, p2}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    return p1

    .line 206
    :pswitch_7
    check-cast p1, Landroid/view/View;

    .line 207
    .line 208
    check-cast p2, Landroid/view/View;

    .line 209
    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 215
    .line 216
    .line 217
    move-result p2

    .line 218
    sub-int/2addr p1, p2

    .line 219
    return p1

    .line 220
    :pswitch_8
    check-cast p1, LP/z;

    .line 221
    .line 222
    check-cast p2, LP/z;

    .line 223
    .line 224
    iget-object v0, p1, LP/z;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 225
    .line 226
    const/4 v1, 0x0

    .line 227
    const/4 v2, 0x1

    .line 228
    if-nez v0, :cond_2

    .line 229
    .line 230
    move v3, v2

    .line 231
    goto :goto_1

    .line 232
    :cond_2
    move v3, v1

    .line 233
    :goto_1
    iget-object v4, p2, LP/z;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 234
    .line 235
    if-nez v4, :cond_3

    .line 236
    .line 237
    move v4, v2

    .line 238
    goto :goto_2

    .line 239
    :cond_3
    move v4, v1

    .line 240
    :goto_2
    if-eq v3, v4, :cond_4

    .line 241
    .line 242
    if-nez v0, :cond_5

    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_4
    iget-boolean v0, p1, LP/z;->a:Z

    .line 246
    .line 247
    iget-boolean v3, p2, LP/z;->a:Z

    .line 248
    .line 249
    if-eq v0, v3, :cond_7

    .line 250
    .line 251
    if-eqz v0, :cond_6

    .line 252
    .line 253
    :cond_5
    const/4 v1, -0x1

    .line 254
    goto :goto_4

    .line 255
    :cond_6
    :goto_3
    move v1, v2

    .line 256
    goto :goto_4

    .line 257
    :cond_7
    iget v0, p2, LP/z;->b:I

    .line 258
    .line 259
    iget v2, p1, LP/z;->b:I

    .line 260
    .line 261
    sub-int/2addr v0, v2

    .line 262
    if-eqz v0, :cond_8

    .line 263
    .line 264
    move v1, v0

    .line 265
    goto :goto_4

    .line 266
    :cond_8
    iget p1, p1, LP/z;->c:I

    .line 267
    .line 268
    iget p2, p2, LP/z;->c:I

    .line 269
    .line 270
    sub-int/2addr p1, p2

    .line 271
    if-eqz p1, :cond_9

    .line 272
    .line 273
    move v1, p1

    .line 274
    :cond_9
    :goto_4
    return v1

    .line 275
    :pswitch_9
    check-cast p1, LP/q;

    .line 276
    .line 277
    check-cast p2, LP/q;

    .line 278
    .line 279
    iget p1, p1, LP/q;->a:I

    .line 280
    .line 281
    iget p2, p2, LP/q;->a:I

    .line 282
    .line 283
    sub-int/2addr p1, p2

    .line 284
    return p1

    .line 285
    :pswitch_a
    check-cast p2, LL1/a;

    .line 286
    .line 287
    iget-object p2, p2, LL1/a;->b:LL1/e;

    .line 288
    .line 289
    check-cast p1, LL1/a;

    .line 290
    .line 291
    iget-object p1, p1, LL1/a;->b:LL1/e;

    .line 292
    .line 293
    invoke-static {p2, p1}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 294
    .line 295
    .line 296
    move-result p1

    .line 297
    return p1

    .line 298
    :pswitch_b
    check-cast p2, LL1/a;

    .line 299
    .line 300
    iget-object p2, p2, LL1/a;->b:LL1/e;

    .line 301
    .line 302
    check-cast p1, LL1/a;

    .line 303
    .line 304
    iget-object p1, p1, LL1/a;->b:LL1/e;

    .line 305
    .line 306
    invoke-static {p2, p1}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 307
    .line 308
    .line 309
    move-result p1

    .line 310
    return p1

    .line 311
    :pswitch_c
    check-cast p2, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 312
    .line 313
    invoke-virtual {p2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getTitle()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object p2

    .line 317
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 318
    .line 319
    const-string v1, "ROOT"

    .line 320
    .line 321
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object p2

    .line 328
    const-string v2, "toLowerCase(...)"

    .line 329
    .line 330
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    check-cast p1, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 334
    .line 335
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getTitle()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    invoke-static {p2, p1}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 350
    .line 351
    .line 352
    move-result p1

    .line 353
    return p1

    .line 354
    :pswitch_d
    check-cast p1, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 355
    .line 356
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getTitle()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 361
    .line 362
    const-string v1, "ROOT"

    .line 363
    .line 364
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object p1

    .line 371
    const-string v2, "toLowerCase(...)"

    .line 372
    .line 373
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    check-cast p2, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 377
    .line 378
    invoke-virtual {p2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getTitle()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object p2

    .line 382
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object p2

    .line 389
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    invoke-static {p1, p2}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 393
    .line 394
    .line 395
    move-result p1

    .line 396
    return p1

    .line 397
    :pswitch_data_0
    .packed-switch 0x0
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
