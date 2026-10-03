.class public abstract LB1/t;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final a:Ljava/util/List;

.field public static final b:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 38

    .line 1
    new-instance v0, LB1/u;

    .line 2
    .line 3
    sget-object v4, LB1/v;->c:LB1/v;

    .line 4
    .line 5
    const v12, 0x3f333333    # 0.7f

    .line 6
    .line 7
    .line 8
    const/16 v13, 0x2000

    .line 9
    .line 10
    const-string v1, "gdpad"

    .line 11
    .line 12
    const-string v2, "D-Pad"

    .line 13
    .line 14
    const-string v3, "\u0110i\u1ec1u h\u01b0\u1edbng (axis 0/1)"

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    const v6, 0x3df5c28f    # 0.12f

    .line 18
    .line 19
    .line 20
    const v7, 0x3f47ae14    # 0.78f

    .line 21
    .line 22
    .line 23
    const/16 v8, 0x78

    .line 24
    .line 25
    const/16 v9, 0x78

    .line 26
    .line 27
    const-string v10, "#888888"

    .line 28
    .line 29
    const-string v11, "CIRCLE"

    .line 30
    .line 31
    invoke-direct/range {v0 .. v13}, LB1/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LB1/v;IFFIILjava/lang/String;Ljava/lang/String;FI)V

    .line 32
    .line 33
    .line 34
    new-instance v1, LB1/u;

    .line 35
    .line 36
    sget-object v5, LB1/v;->e:LB1/v;

    .line 37
    .line 38
    const v13, 0x3f266666    # 0.65f

    .line 39
    .line 40
    .line 41
    const/16 v14, 0x2030

    .line 42
    .line 43
    const-string v2, "btn_mouse_left"

    .line 44
    .line 45
    const-string v3, "Tap"

    .line 46
    .line 47
    const-string v4, "Nh\u1ea5n chu\u1ed9t tr\u00e1i / ch\u1ea1m t\u00e2m m\u00e0n h\u00ecnh"

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    const/high16 v7, 0x3f400000    # 0.75f

    .line 51
    .line 52
    const v8, 0x3f666666    # 0.9f

    .line 53
    .line 54
    .line 55
    const/16 v9, 0x80

    .line 56
    .line 57
    const/16 v10, 0x30

    .line 58
    .line 59
    const-string v11, "#888888"

    .line 60
    .line 61
    const-string v12, "ROUNDED"

    .line 62
    .line 63
    invoke-direct/range {v1 .. v14}, LB1/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LB1/v;IFFIILjava/lang/String;Ljava/lang/String;FI)V

    .line 64
    .line 65
    .line 66
    new-instance v2, LB1/u;

    .line 67
    .line 68
    sget-object v7, LB1/v;->b:LB1/v;

    .line 69
    .line 70
    const v14, 0x3f59999a    # 0.85f

    .line 71
    .line 72
    .line 73
    const/16 v15, 0x820

    .line 74
    .line 75
    const-string v3, "btn_a"

    .line 76
    .line 77
    const-string v4, "A"

    .line 78
    .line 79
    const-string v5, "ui_accept (button 0)"

    .line 80
    .line 81
    move-object v6, v7

    .line 82
    const/4 v7, 0x0

    .line 83
    const v8, 0x3f570a3d    # 0.84f

    .line 84
    .line 85
    .line 86
    const v9, 0x3f3d70a4    # 0.74f

    .line 87
    .line 88
    .line 89
    const/16 v10, 0x70

    .line 90
    .line 91
    const/16 v11, 0x70

    .line 92
    .line 93
    const-string v12, "#22C55E"

    .line 94
    .line 95
    const/4 v13, 0x0

    .line 96
    invoke-direct/range {v2 .. v15}, LB1/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LB1/v;IFFIILjava/lang/String;Ljava/lang/String;FI)V

    .line 97
    .line 98
    .line 99
    move-object v7, v6

    .line 100
    new-instance v3, LB1/u;

    .line 101
    .line 102
    const v15, 0x3f59999a    # 0.85f

    .line 103
    .line 104
    .line 105
    const/16 v16, 0x820

    .line 106
    .line 107
    const-string v4, "btn_b"

    .line 108
    .line 109
    const-string v5, "B"

    .line 110
    .line 111
    const-string v6, "ui_cancel (button 1)"

    .line 112
    .line 113
    const/4 v8, 0x1

    .line 114
    const v9, 0x3f428f5c    # 0.76f

    .line 115
    .line 116
    .line 117
    const v10, 0x3f23d70a    # 0.64f

    .line 118
    .line 119
    .line 120
    const/16 v11, 0x68

    .line 121
    .line 122
    const/16 v12, 0x68

    .line 123
    .line 124
    const-string v13, "#EF4444"

    .line 125
    .line 126
    const/4 v14, 0x0

    .line 127
    invoke-direct/range {v3 .. v16}, LB1/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LB1/v;IFFIILjava/lang/String;Ljava/lang/String;FI)V

    .line 128
    .line 129
    .line 130
    move-object/from16 v17, v3

    .line 131
    .line 132
    new-instance v3, LB1/u;

    .line 133
    .line 134
    const-string v4, "btn_x"

    .line 135
    .line 136
    const-string v5, "X"

    .line 137
    .line 138
    const-string v6, "X button (button 2)"

    .line 139
    .line 140
    const/4 v8, 0x2

    .line 141
    const v10, 0x3f570a3d    # 0.84f

    .line 142
    .line 143
    .line 144
    const-string v13, "#3B82F6"

    .line 145
    .line 146
    invoke-direct/range {v3 .. v16}, LB1/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LB1/v;IFFIILjava/lang/String;Ljava/lang/String;FI)V

    .line 147
    .line 148
    .line 149
    move-object/from16 v18, v3

    .line 150
    .line 151
    new-instance v3, LB1/u;

    .line 152
    .line 153
    const-string v4, "btn_y"

    .line 154
    .line 155
    const-string v5, "Y"

    .line 156
    .line 157
    const-string v6, "Y button (button 3)"

    .line 158
    .line 159
    const/4 v8, 0x3

    .line 160
    const v9, 0x3f570a3d    # 0.84f

    .line 161
    .line 162
    .line 163
    const v10, 0x3f0a3d71    # 0.54f

    .line 164
    .line 165
    .line 166
    const-string v13, "#F59E0B"

    .line 167
    .line 168
    invoke-direct/range {v3 .. v16}, LB1/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LB1/v;IFFIILjava/lang/String;Ljava/lang/String;FI)V

    .line 169
    .line 170
    .line 171
    move-object/from16 v19, v3

    .line 172
    .line 173
    new-instance v3, LB1/u;

    .line 174
    .line 175
    const v15, 0x3f333333    # 0.7f

    .line 176
    .line 177
    .line 178
    const/16 v16, 0x20

    .line 179
    .line 180
    const-string v4, "btn_lb"

    .line 181
    .line 182
    const-string v5, "LB"

    .line 183
    .line 184
    const-string v6, "L1 / Left Shoulder (button 9)"

    .line 185
    .line 186
    const/16 v8, 0x9

    .line 187
    .line 188
    const v9, 0x3df5c28f    # 0.12f

    .line 189
    .line 190
    .line 191
    const v10, 0x3f051eb8    # 0.52f

    .line 192
    .line 193
    .line 194
    const/16 v11, 0x80

    .line 195
    .line 196
    const/16 v12, 0x38

    .line 197
    .line 198
    const-string v13, "#888888"

    .line 199
    .line 200
    const-string v14, "ROUNDED"

    .line 201
    .line 202
    invoke-direct/range {v3 .. v16}, LB1/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LB1/v;IFFIILjava/lang/String;Ljava/lang/String;FI)V

    .line 203
    .line 204
    .line 205
    move-object/from16 v20, v3

    .line 206
    .line 207
    new-instance v3, LB1/u;

    .line 208
    .line 209
    const-string v4, "btn_rb"

    .line 210
    .line 211
    const-string v5, "RB"

    .line 212
    .line 213
    const-string v6, "R1 / Right Shoulder (button 10)"

    .line 214
    .line 215
    const/16 v8, 0xa

    .line 216
    .line 217
    const v9, 0x3f6147ae    # 0.88f

    .line 218
    .line 219
    .line 220
    const-string v13, "#888888"

    .line 221
    .line 222
    const-string v14, "ROUNDED"

    .line 223
    .line 224
    invoke-direct/range {v3 .. v16}, LB1/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LB1/v;IFFIILjava/lang/String;Ljava/lang/String;FI)V

    .line 225
    .line 226
    .line 227
    move-object/from16 v21, v3

    .line 228
    .line 229
    new-instance v22, LB1/u;

    .line 230
    .line 231
    sget-object v26, LB1/v;->d:LB1/v;

    .line 232
    .line 233
    const v34, 0x3f333333    # 0.7f

    .line 234
    .line 235
    .line 236
    const/16 v35, 0x20

    .line 237
    .line 238
    const-string v23, "btn_lt"

    .line 239
    .line 240
    const-string v24, "LT"

    .line 241
    .line 242
    const-string v25, "L2 / Left Trigger (axis 4)"

    .line 243
    .line 244
    const/16 v27, 0x4

    .line 245
    .line 246
    const v28, 0x3dcccccd    # 0.1f

    .line 247
    .line 248
    .line 249
    const v29, 0x3ed70a3d    # 0.42f

    .line 250
    .line 251
    .line 252
    const/16 v30, 0x70

    .line 253
    .line 254
    const/16 v31, 0x38

    .line 255
    .line 256
    const-string v32, "#6B7280"

    .line 257
    .line 258
    const-string v33, "ROUNDED"

    .line 259
    .line 260
    invoke-direct/range {v22 .. v35}, LB1/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LB1/v;IFFIILjava/lang/String;Ljava/lang/String;FI)V

    .line 261
    .line 262
    .line 263
    new-instance v23, LB1/u;

    .line 264
    .line 265
    const v35, 0x3f333333    # 0.7f

    .line 266
    .line 267
    .line 268
    const/16 v36, 0x20

    .line 269
    .line 270
    const-string v24, "btn_rt"

    .line 271
    .line 272
    const-string v25, "RT"

    .line 273
    .line 274
    move-object/from16 v27, v26

    .line 275
    .line 276
    const-string v26, "R2 / Right Trigger (axis 5)"

    .line 277
    .line 278
    const/16 v28, 0x5

    .line 279
    .line 280
    const v29, 0x3f666666    # 0.9f

    .line 281
    .line 282
    .line 283
    const v30, 0x3ed70a3d    # 0.42f

    .line 284
    .line 285
    .line 286
    const/16 v31, 0x70

    .line 287
    .line 288
    const/16 v32, 0x38

    .line 289
    .line 290
    const-string v33, "#6B7280"

    .line 291
    .line 292
    const-string v34, "ROUNDED"

    .line 293
    .line 294
    invoke-direct/range {v23 .. v36}, LB1/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LB1/v;IFFIILjava/lang/String;Ljava/lang/String;FI)V

    .line 295
    .line 296
    .line 297
    new-instance v3, LB1/u;

    .line 298
    .line 299
    const v15, 0x3f266666    # 0.65f

    .line 300
    .line 301
    .line 302
    const-string v4, "btn_sta"

    .line 303
    .line 304
    const-string v5, "Start"

    .line 305
    .line 306
    const-string v6, "Start / Menu (button 6)"

    .line 307
    .line 308
    const/4 v8, 0x6

    .line 309
    const v9, 0x3f1eb852    # 0.62f

    .line 310
    .line 311
    .line 312
    const v10, 0x3f666666    # 0.9f

    .line 313
    .line 314
    .line 315
    const/16 v12, 0x30

    .line 316
    .line 317
    const-string v13, "#888888"

    .line 318
    .line 319
    const-string v14, "ROUNDED"

    .line 320
    .line 321
    invoke-direct/range {v3 .. v16}, LB1/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LB1/v;IFFIILjava/lang/String;Ljava/lang/String;FI)V

    .line 322
    .line 323
    .line 324
    new-instance v24, LB1/u;

    .line 325
    .line 326
    sget-object v28, LB1/v;->f:LB1/v;

    .line 327
    .line 328
    const v36, 0x3f266666    # 0.65f

    .line 329
    .line 330
    .line 331
    const/16 v37, 0x20

    .line 332
    .line 333
    const-string v25, "btn_sel"

    .line 334
    .line 335
    const-string v26, "Esc"

    .line 336
    .line 337
    const-string v27, "Ph\u00edm Escape (KEYCODE_ESCAPE) \u2014 m\u1edf menu, \u0111\u00f3ng h\u1ed9p tho\u1ea1i"

    .line 338
    .line 339
    const/16 v29, 0x6f

    .line 340
    .line 341
    const v30, 0x3f6147ae    # 0.88f

    .line 342
    .line 343
    .line 344
    const v31, 0x3f666666    # 0.9f

    .line 345
    .line 346
    .line 347
    const/16 v32, 0x80

    .line 348
    .line 349
    const/16 v33, 0x30

    .line 350
    .line 351
    const-string v34, "#888888"

    .line 352
    .line 353
    const-string v35, "ROUNDED"

    .line 354
    .line 355
    invoke-direct/range {v24 .. v37}, LB1/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LB1/v;IFFIILjava/lang/String;Ljava/lang/String;FI)V

    .line 356
    .line 357
    .line 358
    move-object v10, v3

    .line 359
    move-object/from16 v3, v17

    .line 360
    .line 361
    move-object/from16 v4, v18

    .line 362
    .line 363
    move-object/from16 v5, v19

    .line 364
    .line 365
    move-object/from16 v6, v20

    .line 366
    .line 367
    move-object/from16 v7, v21

    .line 368
    .line 369
    move-object/from16 v8, v22

    .line 370
    .line 371
    move-object/from16 v9, v23

    .line 372
    .line 373
    move-object/from16 v11, v24

    .line 374
    .line 375
    filled-new-array/range {v0 .. v11}, [LB1/u;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    sput-object v0, LB1/t;->a:Ljava/util/List;

    .line 384
    .line 385
    const-string v0, "btn_mouse_left"

    .line 386
    .line 387
    const-string v1, "btn_sel"

    .line 388
    .line 389
    const-string v2, "gdpad"

    .line 390
    .line 391
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    sput-object v0, LB1/t;->b:Ljava/util/Set;

    .line 400
    .line 401
    return-void
.end method

.method public static a()Ljava/util/ArrayList;
    .locals 15

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    sget-object v1, LB1/t;->a:Ljava/util/List;

    .line 4
    .line 5
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, LB1/u;

    .line 27
    .line 28
    new-instance v3, Lx1/a;

    .line 29
    .line 30
    iget-object v4, v2, LB1/u;->a:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v5, v2, LB1/u;->b:Ljava/lang/String;

    .line 33
    .line 34
    iget v7, v2, LB1/u;->g:F

    .line 35
    .line 36
    iget v8, v2, LB1/u;->h:F

    .line 37
    .line 38
    iget v9, v2, LB1/u;->i:I

    .line 39
    .line 40
    iget v10, v2, LB1/u;->j:I

    .line 41
    .line 42
    iget-object v11, v2, LB1/u;->l:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v12, v2, LB1/u;->k:Ljava/lang/String;

    .line 45
    .line 46
    iget v13, v2, LB1/u;->m:F

    .line 47
    .line 48
    iget-boolean v14, v2, LB1/u;->n:Z

    .line 49
    .line 50
    const-string v6, ""

    .line 51
    .line 52
    invoke-direct/range {v3 .. v14}, Lx1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFIILjava/lang/String;Ljava/lang/String;FZ)V

    .line 53
    .line 54
    .line 55
    sget-object v4, LB1/t;->b:Ljava/util/Set;

    .line 56
    .line 57
    iget-object v2, v2, LB1/u;->a:Ljava/lang/String;

    .line 58
    .line 59
    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v12

    .line 63
    const/16 v13, 0x3ff

    .line 64
    .line 65
    const/4 v4, 0x0

    .line 66
    const/4 v5, 0x0

    .line 67
    const/4 v6, 0x0

    .line 68
    const/4 v7, 0x0

    .line 69
    const/4 v8, 0x0

    .line 70
    const/4 v9, 0x0

    .line 71
    const/4 v10, 0x0

    .line 72
    const/4 v11, 0x0

    .line 73
    invoke-static/range {v3 .. v13}, Lx1/a;->a(Lx1/a;Ljava/lang/String;FFIILjava/lang/String;Ljava/lang/String;FZI)Lx1/a;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    return-object v0
.end method

.method public static b(Ljava/lang/String;)LB1/u;
    .locals 3

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, LB1/t;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    move-object v2, v1

    .line 23
    check-cast v2, LB1/u;

    .line 24
    .line 25
    iget-object v2, v2, LB1/u;->a:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v1, 0x0

    .line 35
    :goto_0
    check-cast v1, LB1/u;

    .line 36
    .line 37
    return-object v1
.end method
