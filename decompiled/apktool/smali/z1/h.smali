.class public abstract Lz1/h;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final a:Lkotlin/text/Regex;

.field public static final b:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlin/text/Regex;

    .line 2
    .line 3
    const-string v1, "try\\{(Plugins\\s*\\.\\s*link\\s*\\([^)]*\\)\\s*)\\}catch\\(e\\)\\{\\}(if\\s*\\([^)]*\\)\\s*;?)"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lz1/h;->a:Lkotlin/text/Regex;

    .line 9
    .line 10
    new-instance v0, Lkotlin/text/Regex;

    .line 11
    .line 12
    const-string v1, "try\\{(Plugins\\s*\\.\\s*link\\s*\\([^)]*\\)\\s*;?)\\}catch\\(e\\)\\{\\}"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lz1/h;->b:Lkotlin/text/Regex;

    .line 18
    .line 19
    return-void
.end method

.method public static a(ILjava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    sub-int/2addr p0, v0

    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    if-ltz p0, :cond_5

    .line 6
    .line 7
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/16 v4, 0x7b

    .line 12
    .line 13
    if-eq v3, v4, :cond_1

    .line 14
    .line 15
    const/16 v4, 0x7d

    .line 16
    .line 17
    if-eq v3, v4, :cond_0

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_1
    if-nez v2, :cond_4

    .line 24
    .line 25
    add-int/lit8 v2, p0, -0x1

    .line 26
    .line 27
    :goto_1
    if-ltz v2, :cond_2

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-static {v3}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    add-int/lit8 v2, v2, -0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    const/4 v3, 0x2

    .line 43
    if-lt v2, v3, :cond_3

    .line 44
    .line 45
    add-int/lit8 v2, v2, -0x2

    .line 46
    .line 47
    const-string v3, "try"

    .line 48
    .line 49
    invoke-static {v2, p1, v3}, Lkotlin/text/StringsKt;->M(ILjava/lang/String;Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_3

    .line 54
    .line 55
    return v0

    .line 56
    :cond_3
    move v2, v1

    .line 57
    goto :goto_2

    .line 58
    :cond_4
    add-int/lit8 v2, v2, -0x1

    .line 59
    .line 60
    :goto_2
    add-int/lit8 p0, p0, -0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_5
    return v1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 7
    .line 8
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ly1/f1;

    .line 12
    .line 13
    const/16 v2, 0x10

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ly1/f1;-><init>(I)V

    .line 16
    .line 17
    .line 18
    sget-object v2, Lz1/h;->a:Lkotlin/text/Regex;

    .line 19
    .line 20
    invoke-virtual {v2, p0, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 25
    .line 26
    new-instance v2, LA1/p;

    .line 27
    .line 28
    const/16 v3, 0x13

    .line 29
    .line 30
    invoke-direct {v2, v3, v0}, LA1/p;-><init>(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sget-object v3, Lz1/h;->b:Lkotlin/text/Regex;

    .line 34
    .line 35
    invoke-virtual {v3, v1, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, Ljava/lang/CharSequence;

    .line 49
    .line 50
    const/4 v3, 0x6

    .line 51
    const-string v4, "Plugins"

    .line 52
    .line 53
    const/4 v5, 0x0

    .line 54
    invoke-static {v4, v5, v3, v2}, Lkotlin/text/StringsKt;->w(Ljava/lang/String;IILjava/lang/CharSequence;)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    move v3, v5

    .line 59
    :goto_0
    if-ltz v2, :cond_12

    .line 60
    .line 61
    iget-object v6, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v6, Ljava/lang/String;

    .line 64
    .line 65
    add-int/lit8 v7, v2, 0x7

    .line 66
    .line 67
    move v8, v7

    .line 68
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    if-ge v8, v9, :cond_0

    .line 73
    .line 74
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    invoke-static {v9}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    .line 79
    .line 80
    .line 81
    move-result v9

    .line 82
    if-eqz v9, :cond_0

    .line 83
    .line 84
    add-int/lit8 v8, v8, 0x1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    const/16 v10, 0x28

    .line 92
    .line 93
    const/4 v11, -0x1

    .line 94
    if-ge v8, v9, :cond_3

    .line 95
    .line 96
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    const/16 v12, 0x2e

    .line 101
    .line 102
    if-eq v9, v12, :cond_1

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    .line 106
    .line 107
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    if-ge v8, v9, :cond_2

    .line 112
    .line 113
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    invoke-static {v9}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    .line 118
    .line 119
    .line 120
    move-result v9

    .line 121
    if-eqz v9, :cond_2

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_2
    const-string v9, "link"

    .line 125
    .line 126
    invoke-static {v8, v6, v9}, Lkotlin/text/StringsKt;->M(ILjava/lang/String;Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v9

    .line 130
    if-nez v9, :cond_4

    .line 131
    .line 132
    :cond_3
    :goto_3
    move v8, v11

    .line 133
    goto :goto_5

    .line 134
    :cond_4
    add-int/lit8 v8, v8, 0x4

    .line 135
    .line 136
    :goto_4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 137
    .line 138
    .line 139
    move-result v9

    .line 140
    if-ge v8, v9, :cond_5

    .line 141
    .line 142
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    .line 143
    .line 144
    .line 145
    move-result v9

    .line 146
    invoke-static {v9}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    .line 147
    .line 148
    .line 149
    move-result v9

    .line 150
    if-eqz v9, :cond_5

    .line 151
    .line 152
    add-int/lit8 v8, v8, 0x1

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_5
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    if-ge v8, v9, :cond_3

    .line 160
    .line 161
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    if-ne v6, v10, :cond_3

    .line 166
    .line 167
    :goto_5
    if-ltz v8, :cond_6

    .line 168
    .line 169
    iget-object v6, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast v6, Ljava/lang/String;

    .line 172
    .line 173
    invoke-static {v8, v6}, Lz1/h;->c(ILjava/lang/String;)I

    .line 174
    .line 175
    .line 176
    move-result v11

    .line 177
    :cond_6
    const/4 v6, 0x4

    .line 178
    if-gez v11, :cond_7

    .line 179
    .line 180
    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v2, Ljava/lang/CharSequence;

    .line 183
    .line 184
    invoke-static {v4, v7, v6, v2}, Lkotlin/text/StringsKt;->w(Ljava/lang/String;IILjava/lang/CharSequence;)I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :cond_7
    iget-object v7, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v7, Ljava/lang/String;

    .line 193
    .line 194
    add-int/lit8 v11, v11, 0x1

    .line 195
    .line 196
    move v8, v11

    .line 197
    :goto_6
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 198
    .line 199
    .line 200
    move-result v9

    .line 201
    const/16 v12, 0x9

    .line 202
    .line 203
    const/16 v13, 0x20

    .line 204
    .line 205
    if-ge v8, v9, :cond_9

    .line 206
    .line 207
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    .line 208
    .line 209
    .line 210
    move-result v9

    .line 211
    if-eq v9, v13, :cond_8

    .line 212
    .line 213
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    .line 214
    .line 215
    .line 216
    move-result v9

    .line 217
    if-ne v9, v12, :cond_9

    .line 218
    .line 219
    :cond_8
    add-int/lit8 v8, v8, 0x1

    .line 220
    .line 221
    goto :goto_6

    .line 222
    :cond_9
    const-string v9, "if"

    .line 223
    .line 224
    invoke-static {v8, v7, v9}, Lkotlin/text/StringsKt;->M(ILjava/lang/String;Ljava/lang/String;)Z

    .line 225
    .line 226
    .line 227
    move-result v9

    .line 228
    if-eqz v9, :cond_e

    .line 229
    .line 230
    add-int/lit8 v8, v8, 0x2

    .line 231
    .line 232
    :goto_7
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 233
    .line 234
    .line 235
    move-result v9

    .line 236
    if-ge v8, v9, :cond_b

    .line 237
    .line 238
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    .line 239
    .line 240
    .line 241
    move-result v9

    .line 242
    if-eq v9, v13, :cond_a

    .line 243
    .line 244
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    .line 245
    .line 246
    .line 247
    move-result v9

    .line 248
    if-ne v9, v12, :cond_b

    .line 249
    .line 250
    :cond_a
    add-int/lit8 v8, v8, 0x1

    .line 251
    .line 252
    goto :goto_7

    .line 253
    :cond_b
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 254
    .line 255
    .line 256
    move-result v9

    .line 257
    if-ge v8, v9, :cond_d

    .line 258
    .line 259
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    .line 260
    .line 261
    .line 262
    move-result v9

    .line 263
    if-ne v9, v10, :cond_d

    .line 264
    .line 265
    invoke-static {v8, v7}, Lz1/h;->c(ILjava/lang/String;)I

    .line 266
    .line 267
    .line 268
    move-result v8

    .line 269
    if-ltz v8, :cond_c

    .line 270
    .line 271
    add-int/lit8 v8, v8, 0x1

    .line 272
    .line 273
    invoke-static {v8, v7}, Lz1/h;->d(ILjava/lang/String;)I

    .line 274
    .line 275
    .line 276
    move-result v7

    .line 277
    goto :goto_8

    .line 278
    :cond_c
    invoke-static {v11, v7}, Lz1/h;->d(ILjava/lang/String;)I

    .line 279
    .line 280
    .line 281
    move-result v7

    .line 282
    goto :goto_8

    .line 283
    :cond_d
    invoke-static {v11, v7}, Lz1/h;->d(ILjava/lang/String;)I

    .line 284
    .line 285
    .line 286
    move-result v7

    .line 287
    goto :goto_8

    .line 288
    :cond_e
    invoke-static {v11, v7}, Lz1/h;->d(ILjava/lang/String;)I

    .line 289
    .line 290
    .line 291
    move-result v7

    .line 292
    :goto_8
    iget-object v8, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 293
    .line 294
    check-cast v8, Ljava/lang/String;

    .line 295
    .line 296
    add-int/lit8 v9, v2, -0x1

    .line 297
    .line 298
    :goto_9
    if-ltz v9, :cond_f

    .line 299
    .line 300
    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    .line 301
    .line 302
    .line 303
    move-result v10

    .line 304
    invoke-static {v10}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    .line 305
    .line 306
    .line 307
    move-result v10

    .line 308
    if-eqz v10, :cond_f

    .line 309
    .line 310
    add-int/lit8 v9, v9, -0x1

    .line 311
    .line 312
    goto :goto_9

    .line 313
    :cond_f
    if-ltz v9, :cond_10

    .line 314
    .line 315
    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    .line 316
    .line 317
    .line 318
    move-result v10

    .line 319
    const/16 v11, 0x7b

    .line 320
    .line 321
    if-ne v10, v11, :cond_10

    .line 322
    .line 323
    const/4 v10, 0x3

    .line 324
    if-lt v9, v10, :cond_10

    .line 325
    .line 326
    add-int/lit8 v9, v9, -0x3

    .line 327
    .line 328
    const-string v10, "try"

    .line 329
    .line 330
    invoke-static {v9, v8, v10}, Lkotlin/text/StringsKt;->M(ILjava/lang/String;Ljava/lang/String;)Z

    .line 331
    .line 332
    .line 333
    move-result v8

    .line 334
    if-eqz v8, :cond_10

    .line 335
    .line 336
    goto :goto_a

    .line 337
    :cond_10
    iget-object v8, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 338
    .line 339
    check-cast v8, Ljava/lang/String;

    .line 340
    .line 341
    invoke-static {v2, v8}, Lz1/h;->a(ILjava/lang/String;)Z

    .line 342
    .line 343
    .line 344
    move-result v8

    .line 345
    if-eqz v8, :cond_11

    .line 346
    .line 347
    :goto_a
    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 348
    .line 349
    check-cast v2, Ljava/lang/CharSequence;

    .line 350
    .line 351
    invoke-static {v4, v7, v6, v2}, Lkotlin/text/StringsKt;->w(Ljava/lang/String;IILjava/lang/CharSequence;)I

    .line 352
    .line 353
    .line 354
    move-result v2

    .line 355
    goto/16 :goto_0

    .line 356
    .line 357
    :cond_11
    iget-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 358
    .line 359
    check-cast v5, Ljava/lang/CharSequence;

    .line 360
    .line 361
    invoke-virtual {v1, v5, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    const-string v3, "try{"

    .line 365
    .line 366
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 370
    .line 371
    check-cast v3, Ljava/lang/CharSequence;

    .line 372
    .line 373
    invoke-virtual {v1, v3, v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    const-string v2, "}catch(e){}"

    .line 377
    .line 378
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 382
    .line 383
    check-cast v2, Ljava/lang/CharSequence;

    .line 384
    .line 385
    invoke-static {v4, v7, v6, v2}, Lkotlin/text/StringsKt;->w(Ljava/lang/String;IILjava/lang/CharSequence;)I

    .line 386
    .line 387
    .line 388
    move-result v2

    .line 389
    const/4 v5, 0x1

    .line 390
    move v3, v7

    .line 391
    goto/16 :goto_0

    .line 392
    .line 393
    :cond_12
    if-nez v5, :cond_14

    .line 394
    .line 395
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 396
    .line 397
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result p0

    .line 401
    if-nez p0, :cond_13

    .line 402
    .line 403
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 404
    .line 405
    check-cast p0, Ljava/lang/String;

    .line 406
    .line 407
    return-object p0

    .line 408
    :cond_13
    const/4 p0, 0x0

    .line 409
    return-object p0

    .line 410
    :cond_14
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 411
    .line 412
    move-object v0, p0

    .line 413
    check-cast v0, Ljava/lang/CharSequence;

    .line 414
    .line 415
    check-cast p0, Ljava/lang/String;

    .line 416
    .line 417
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 418
    .line 419
    .line 420
    move-result p0

    .line 421
    invoke-virtual {v1, v0, v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object p0

    .line 428
    return-object p0
.end method

.method public static c(ILjava/lang/String;)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge p0, v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/16 v3, 0x28

    .line 13
    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    const/16 v3, 0x29

    .line 17
    .line 18
    if-eq v2, v3, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 22
    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    return p0

    .line 26
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    :cond_2
    :goto_1
    add-int/lit8 p0, p0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    const/4 p0, -0x1

    .line 32
    return p0
.end method

.method public static d(ILjava/lang/String;)I
    .locals 3

    .line 1
    move v0, p0

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/16 v2, 0x20

    .line 13
    .line 14
    if-eq v1, v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/16 v2, 0x9

    .line 21
    .line 22
    if-ne v1, v2, :cond_1

    .line 23
    .line 24
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-ge v0, v1, :cond_2

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    const/16 v1, 0x3b

    .line 38
    .line 39
    if-ne p1, v1, :cond_2

    .line 40
    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    return v0

    .line 44
    :cond_2
    return p0
.end method
