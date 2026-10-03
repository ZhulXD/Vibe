.class public final Ll1/n;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Li1/z;


# instance fields
.field public final b:Lcom/bumptech/glide/manager/q;

.field public final c:Li1/h;

.field public final d:Lk1/g;

.field public final e:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/manager/q;Li1/h;Lk1/g;Ll1/c;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll1/n;->b:Lcom/bumptech/glide/manager/q;

    .line 5
    .line 6
    iput-object p2, p0, Ll1/n;->c:Li1/h;

    .line 7
    .line 8
    iput-object p3, p0, Ll1/n;->d:Lk1/g;

    .line 9
    .line 10
    iput-object p5, p0, Ll1/n;->e:Ljava/util/List;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Li1/l;Lcom/google/gson/reflect/TypeToken;)Li1/y;
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    return-object p1

    .line 15
    :cond_0
    iget-object v1, p0, Ll1/n;->e:Ljava/util/List;

    .line 16
    .line 17
    invoke-static {v1}, Lk1/d;->e(Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    sget-object v1, Ln1/c;->a:Lcom/bumptech/glide/d;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/d;->L(Ljava/lang/Class;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    new-instance v1, Ll1/m;

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    invoke-virtual {p0, p1, p2, v0, v2}, Ll1/n;->b(Li1/l;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;Z)Ljava/util/LinkedHashMap;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {v1, v0, p1}, Ll1/m;-><init>(Ljava/lang/Class;Ljava/util/LinkedHashMap;)V

    .line 36
    .line 37
    .line 38
    return-object v1

    .line 39
    :cond_1
    iget-object v1, p0, Ll1/n;->b:Lcom/bumptech/glide/manager/q;

    .line 40
    .line 41
    invoke-virtual {v1, p2}, Lcom/bumptech/glide/manager/q;->d(Lcom/google/gson/reflect/TypeToken;)Lk1/n;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    new-instance v2, Ll1/l;

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-virtual {p0, p1, p2, v0, v3}, Ll1/n;->b(Li1/l;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;Z)Ljava/util/LinkedHashMap;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {v2, v1, p1}, Ll1/l;-><init>(Lk1/n;Ljava/util/LinkedHashMap;)V

    .line 53
    .line 54
    .line 55
    return-object v2
.end method

.method public final b(Li1/l;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;Z)Ljava/util/LinkedHashMap;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    new-instance v13, Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto/16 :goto_c

    .line 17
    .line 18
    :cond_0
    move-object/from16 v14, p2

    .line 19
    .line 20
    move-object/from16 v15, p3

    .line 21
    .line 22
    :goto_0
    const-class v1, Ljava/lang/Object;

    .line 23
    .line 24
    if-eq v15, v1, :cond_14

    .line 25
    .line 26
    invoke-virtual {v15}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    move-object/from16 v2, p3

    .line 31
    .line 32
    if-eq v15, v2, :cond_1

    .line 33
    .line 34
    array-length v3, v1

    .line 35
    if-lez v3, :cond_1

    .line 36
    .line 37
    iget-object v3, v0, Ll1/n;->e:Ljava/util/List;

    .line 38
    .line 39
    invoke-static {v3}, Lk1/d;->e(Ljava/util/List;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    array-length v3, v1

    .line 43
    const/4 v4, 0x0

    .line 44
    move v5, v4

    .line 45
    :goto_1
    if-ge v5, v3, :cond_13

    .line 46
    .line 47
    move v6, v3

    .line 48
    aget-object v3, v1, v5

    .line 49
    .line 50
    const/4 v7, 0x1

    .line 51
    invoke-virtual {v0, v3, v7}, Ll1/n;->c(Ljava/lang/reflect/Field;Z)Z

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    invoke-virtual {v0, v3, v4}, Ll1/n;->c(Ljava/lang/reflect/Field;Z)Z

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    if-nez v8, :cond_2

    .line 60
    .line 61
    if-nez v10, :cond_2

    .line 62
    .line 63
    move-object/from16 v18, v1

    .line 64
    .line 65
    move/from16 v25, v4

    .line 66
    .line 67
    move/from16 v21, v5

    .line 68
    .line 69
    move/from16 v23, v6

    .line 70
    .line 71
    goto/16 :goto_b

    .line 72
    .line 73
    :cond_2
    const-class v11, Lj1/b;

    .line 74
    .line 75
    const/16 v16, 0x0

    .line 76
    .line 77
    if-eqz p4, :cond_3

    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 80
    .line 81
    .line 82
    move-result v12

    .line 83
    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 84
    .line 85
    .line 86
    move-result v12

    .line 87
    if-eqz v12, :cond_4

    .line 88
    .line 89
    move v10, v4

    .line 90
    :cond_3
    move-object/from16 v12, v16

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_4
    sget-object v12, Ln1/c;->a:Lcom/bumptech/glide/d;

    .line 94
    .line 95
    invoke-virtual {v12, v15, v3}, Lcom/bumptech/glide/d;->p(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    .line 96
    .line 97
    .line 98
    move-result-object v12

    .line 99
    invoke-static {v12}, Ln1/c;->e(Ljava/lang/reflect/AccessibleObject;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v12, v11}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 103
    .line 104
    .line 105
    move-result-object v17

    .line 106
    if-eqz v17, :cond_6

    .line 107
    .line 108
    invoke-virtual {v3, v11}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 109
    .line 110
    .line 111
    move-result-object v17

    .line 112
    if-eqz v17, :cond_5

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_5
    invoke-static {v12, v4}, Ln1/c;->d(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    new-instance v2, Li1/p;

    .line 120
    .line 121
    const-string v3, "@SerializedName on "

    .line 122
    .line 123
    const-string v4, " is not supported"

    .line 124
    .line 125
    invoke-static {v3, v1, v4}, LE/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw v2

    .line 133
    :cond_6
    :goto_2
    if-nez v12, :cond_7

    .line 134
    .line 135
    invoke-static {v3}, Ln1/c;->e(Ljava/lang/reflect/AccessibleObject;)V

    .line 136
    .line 137
    .line 138
    :cond_7
    invoke-virtual {v14}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    move/from16 v17, v7

    .line 143
    .line 144
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    move-object/from16 v18, v1

    .line 149
    .line 150
    new-instance v1, Ljava/util/HashMap;

    .line 151
    .line 152
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 153
    .line 154
    .line 155
    invoke-static {v4, v15, v7, v1}, Lk1/d;->j(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/HashMap;)Ljava/lang/reflect/Type;

    .line 156
    .line 157
    .line 158
    move-result-object v19

    .line 159
    invoke-virtual {v3, v11}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    check-cast v1, Lj1/b;

    .line 164
    .line 165
    if-nez v1, :cond_8

    .line 166
    .line 167
    iget-object v1, v0, Ll1/n;->c:Li1/h;

    .line 168
    .line 169
    invoke-virtual {v1, v3}, Li1/h;->b(Ljava/lang/reflect/Field;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    goto :goto_3

    .line 178
    :cond_8
    invoke-interface {v1}, Lj1/b;->value()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    invoke-interface {v1}, Lj1/b;->alternate()[Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    array-length v7, v1

    .line 187
    if-nez v7, :cond_9

    .line 188
    .line 189
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    goto :goto_3

    .line 194
    :cond_9
    new-instance v7, Ljava/util/ArrayList;

    .line 195
    .line 196
    array-length v11, v1

    .line 197
    add-int/lit8 v11, v11, 0x1

    .line 198
    .line 199
    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    invoke-static {v7, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-object v1, v7

    .line 209
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    move-object/from16 v11, v16

    .line 214
    .line 215
    const/4 v7, 0x0

    .line 216
    :goto_4
    if-ge v7, v4, :cond_11

    .line 217
    .line 218
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v20

    .line 222
    check-cast v20, Ljava/lang/String;

    .line 223
    .line 224
    if-eqz v7, :cond_a

    .line 225
    .line 226
    const/4 v8, 0x0

    .line 227
    :cond_a
    move/from16 v21, v5

    .line 228
    .line 229
    move v5, v10

    .line 230
    invoke-static/range {v19 .. v19}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 231
    .line 232
    .line 233
    move-result-object v10

    .line 234
    invoke-virtual {v10}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    move-result-object v22

    .line 238
    if-eqz v22, :cond_b

    .line 239
    .line 240
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->isPrimitive()Z

    .line 241
    .line 242
    .line 243
    move-result v22

    .line 244
    if-eqz v22, :cond_b

    .line 245
    .line 246
    move-object/from16 v22, v11

    .line 247
    .line 248
    move/from16 v11, v17

    .line 249
    .line 250
    goto :goto_5

    .line 251
    :cond_b
    move-object/from16 v22, v11

    .line 252
    .line 253
    const/4 v11, 0x0

    .line 254
    :goto_5
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 255
    .line 256
    .line 257
    move-result v23

    .line 258
    invoke-static/range {v23 .. v23}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 259
    .line 260
    .line 261
    move-result v24

    .line 262
    if-eqz v24, :cond_c

    .line 263
    .line 264
    invoke-static/range {v23 .. v23}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    .line 265
    .line 266
    .line 267
    move-result v23

    .line 268
    if-eqz v23, :cond_c

    .line 269
    .line 270
    move/from16 v23, v6

    .line 271
    .line 272
    move-object v6, v12

    .line 273
    move/from16 v12, v17

    .line 274
    .line 275
    :goto_6
    move-object/from16 v24, v1

    .line 276
    .line 277
    goto :goto_7

    .line 278
    :cond_c
    move/from16 v23, v6

    .line 279
    .line 280
    move-object v6, v12

    .line 281
    const/4 v12, 0x0

    .line 282
    goto :goto_6

    .line 283
    :goto_7
    const-class v1, Lj1/a;

    .line 284
    .line 285
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    check-cast v1, Lj1/a;

    .line 290
    .line 291
    if-eqz v1, :cond_d

    .line 292
    .line 293
    iget-object v2, v0, Ll1/n;->b:Lcom/bumptech/glide/manager/q;

    .line 294
    .line 295
    invoke-static {v2, v9, v10, v1}, Ll1/c;->b(Lcom/bumptech/glide/manager/q;Li1/l;Lcom/google/gson/reflect/TypeToken;Lj1/a;)Li1/y;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    goto :goto_8

    .line 300
    :cond_d
    move-object/from16 v1, v16

    .line 301
    .line 302
    :goto_8
    move v2, v7

    .line 303
    if-eqz v1, :cond_e

    .line 304
    .line 305
    move/from16 v7, v17

    .line 306
    .line 307
    goto :goto_9

    .line 308
    :cond_e
    const/4 v7, 0x0

    .line 309
    :goto_9
    if-nez v1, :cond_f

    .line 310
    .line 311
    invoke-virtual {v9, v10}, Li1/l;->d(Lcom/google/gson/reflect/TypeToken;)Li1/y;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    :cond_f
    new-instance v25, Ll1/j;

    .line 316
    .line 317
    move-object/from16 v0, v20

    .line 318
    .line 319
    move/from16 v20, v2

    .line 320
    .line 321
    move-object v2, v0

    .line 322
    move-object/from16 v0, v22

    .line 323
    .line 324
    move/from16 v22, v17

    .line 325
    .line 326
    move/from16 v17, v4

    .line 327
    .line 328
    move v4, v8

    .line 329
    move-object v8, v1

    .line 330
    move-object/from16 v1, v25

    .line 331
    .line 332
    const/16 v25, 0x0

    .line 333
    .line 334
    invoke-direct/range {v1 .. v12}, Ll1/j;-><init>(Ljava/lang/String;Ljava/lang/reflect/Field;ZZLjava/lang/reflect/Method;ZLi1/y;Li1/l;Lcom/google/gson/reflect/TypeToken;ZZ)V

    .line 335
    .line 336
    .line 337
    invoke-interface {v13, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    move-object v11, v1

    .line 342
    check-cast v11, Ll1/j;

    .line 343
    .line 344
    if-nez v0, :cond_10

    .line 345
    .line 346
    goto :goto_a

    .line 347
    :cond_10
    move-object v11, v0

    .line 348
    :goto_a
    add-int/lit8 v7, v20, 0x1

    .line 349
    .line 350
    move-object/from16 v0, p0

    .line 351
    .line 352
    move-object/from16 v9, p1

    .line 353
    .line 354
    move-object/from16 v2, p3

    .line 355
    .line 356
    move v8, v4

    .line 357
    move v10, v5

    .line 358
    move-object v12, v6

    .line 359
    move/from16 v4, v17

    .line 360
    .line 361
    move/from16 v5, v21

    .line 362
    .line 363
    move/from16 v17, v22

    .line 364
    .line 365
    move/from16 v6, v23

    .line 366
    .line 367
    move-object/from16 v1, v24

    .line 368
    .line 369
    goto/16 :goto_4

    .line 370
    .line 371
    :cond_11
    move/from16 v21, v5

    .line 372
    .line 373
    move/from16 v23, v6

    .line 374
    .line 375
    move-object v0, v11

    .line 376
    const/16 v25, 0x0

    .line 377
    .line 378
    if-nez v0, :cond_12

    .line 379
    .line 380
    :goto_b
    add-int/lit8 v5, v21, 0x1

    .line 381
    .line 382
    move-object/from16 v0, p0

    .line 383
    .line 384
    move-object/from16 v9, p1

    .line 385
    .line 386
    move-object/from16 v2, p3

    .line 387
    .line 388
    move-object/from16 v1, v18

    .line 389
    .line 390
    move/from16 v3, v23

    .line 391
    .line 392
    move/from16 v4, v25

    .line 393
    .line 394
    goto/16 :goto_1

    .line 395
    .line 396
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 397
    .line 398
    new-instance v2, Ljava/lang/StringBuilder;

    .line 399
    .line 400
    const-string v4, "Class "

    .line 401
    .line 402
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v4

    .line 409
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    const-string v4, " declares multiple JSON fields named \'"

    .line 413
    .line 414
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    iget-object v4, v0, Ll1/j;->a:Ljava/lang/String;

    .line 418
    .line 419
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    const-string v4, "\'; conflict is caused by fields "

    .line 423
    .line 424
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    iget-object v0, v0, Ll1/j;->b:Ljava/lang/reflect/Field;

    .line 428
    .line 429
    invoke-static {v0}, Ln1/c;->c(Ljava/lang/reflect/Field;)Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    const-string v0, " and "

    .line 437
    .line 438
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-static {v3}, Ln1/c;->c(Ljava/lang/reflect/Field;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    throw v1

    .line 456
    :cond_13
    invoke-virtual {v14}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    invoke-virtual {v15}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    new-instance v2, Ljava/util/HashMap;

    .line 465
    .line 466
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 467
    .line 468
    .line 469
    invoke-static {v0, v15, v1, v2}, Lk1/d;->j(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/HashMap;)Ljava/lang/reflect/Type;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    invoke-static {v0}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 474
    .line 475
    .line 476
    move-result-object v14

    .line 477
    invoke-virtual {v14}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 478
    .line 479
    .line 480
    move-result-object v15

    .line 481
    move-object/from16 v0, p0

    .line 482
    .line 483
    move-object/from16 v9, p1

    .line 484
    .line 485
    goto/16 :goto_0

    .line 486
    .line 487
    :cond_14
    :goto_c
    return-object v13
.end method

.method public final c(Ljava/lang/reflect/Field;Z)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Ll1/n;->d:Lk1/g;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lk1/g;->c(Ljava/lang/Class;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_6

    .line 15
    .line 16
    invoke-virtual {v1, p2}, Lk1/g;->b(Z)V

    .line 17
    .line 18
    .line 19
    const/16 v0, 0x88

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    and-int/2addr v0, v2

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Lk1/g;->c(Ljava/lang/Class;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    if-eqz p2, :cond_3

    .line 48
    .line 49
    iget-object p1, v1, Lk1/g;->b:Ljava/util/List;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    iget-object p1, v1, Lk1/g;->c:Ljava/util/List;

    .line 53
    .line 54
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-nez p2, :cond_5

    .line 59
    .line 60
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    if-nez p2, :cond_4

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_4
    invoke-static {p1}, LE/b;->g(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    throw p1

    .line 76
    :cond_5
    :goto_1
    const/4 p1, 0x1

    .line 77
    return p1

    .line 78
    :cond_6
    :goto_2
    const/4 p1, 0x0

    .line 79
    return p1
.end method
