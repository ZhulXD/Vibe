.class public abstract LB1/k;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 1
    new-instance v0, Lkotlin/Pair;

    .line 2
    .line 3
    const v1, 0x3e051eb8    # 0.13f

    .line 4
    .line 5
    .line 6
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const v2, 0x3f4ccccd    # 0.8f

    .line 11
    .line 12
    .line 13
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const-string v3, "dpad"

    .line 21
    .line 22
    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    new-instance v0, Lkotlin/Pair;

    .line 27
    .line 28
    const v3, 0x3df5c28f    # 0.12f

    .line 29
    .line 30
    .line 31
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const v5, 0x3f47ae14    # 0.78f

    .line 36
    .line 37
    .line 38
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-direct {v0, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    const-string v6, "gdpad"

    .line 46
    .line 47
    invoke-static {v6, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v6, Lkotlin/Pair;

    .line 52
    .line 53
    invoke-direct {v6, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    const-string v1, "joystick"

    .line 57
    .line 58
    invoke-static {v1, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    new-instance v1, Lkotlin/Pair;

    .line 63
    .line 64
    const/high16 v2, 0x3f400000    # 0.75f

    .line 65
    .line 66
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    const v7, 0x3f666666    # 0.9f

    .line 71
    .line 72
    .line 73
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    invoke-direct {v1, v2, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    const-string v8, "btn_mouse_left"

    .line 81
    .line 82
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    new-instance v9, Lkotlin/Pair;

    .line 87
    .line 88
    const v10, 0x3f570a3d    # 0.84f

    .line 89
    .line 90
    .line 91
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 92
    .line 93
    .line 94
    move-result-object v10

    .line 95
    const v11, 0x3f3d70a4    # 0.74f

    .line 96
    .line 97
    .line 98
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 99
    .line 100
    .line 101
    move-result-object v11

    .line 102
    invoke-direct {v9, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    const-string v11, "btn_a"

    .line 106
    .line 107
    invoke-static {v11, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    new-instance v11, Lkotlin/Pair;

    .line 112
    .line 113
    const v12, 0x3f6b851f    # 0.92f

    .line 114
    .line 115
    .line 116
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 117
    .line 118
    .line 119
    move-result-object v12

    .line 120
    const v13, 0x3f23d70a    # 0.64f

    .line 121
    .line 122
    .line 123
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 124
    .line 125
    .line 126
    move-result-object v13

    .line 127
    invoke-direct {v11, v12, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    const-string v12, "btn_b"

    .line 131
    .line 132
    invoke-static {v12, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 133
    .line 134
    .line 135
    move-result-object v11

    .line 136
    new-instance v12, Lkotlin/Pair;

    .line 137
    .line 138
    const v14, 0x3f428f5c    # 0.76f

    .line 139
    .line 140
    .line 141
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 142
    .line 143
    .line 144
    move-result-object v14

    .line 145
    invoke-direct {v12, v14, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    const-string v14, "btn_x"

    .line 149
    .line 150
    invoke-static {v14, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 151
    .line 152
    .line 153
    move-result-object v12

    .line 154
    new-instance v14, Lkotlin/Pair;

    .line 155
    .line 156
    const v15, 0x3f0a3d71    # 0.54f

    .line 157
    .line 158
    .line 159
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 160
    .line 161
    .line 162
    move-result-object v15

    .line 163
    invoke-direct {v14, v10, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    const-string v10, "btn_y"

    .line 167
    .line 168
    invoke-static {v10, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 169
    .line 170
    .line 171
    move-result-object v10

    .line 172
    new-instance v14, Lkotlin/Pair;

    .line 173
    .line 174
    invoke-direct {v14, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    const-string v2, "btn_lb"

    .line 178
    .line 179
    invoke-static {v2, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    new-instance v14, Lkotlin/Pair;

    .line 184
    .line 185
    invoke-direct {v14, v13, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    const-string v13, "btn_lt"

    .line 189
    .line 190
    invoke-static {v13, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 191
    .line 192
    .line 193
    move-result-object v13

    .line 194
    new-instance v14, Lkotlin/Pair;

    .line 195
    .line 196
    const v15, 0x3f68f5c3    # 0.91f

    .line 197
    .line 198
    .line 199
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 200
    .line 201
    .line 202
    move-result-object v15

    .line 203
    invoke-direct {v14, v15, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    const-string v15, "btn_rb"

    .line 207
    .line 208
    invoke-static {v15, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 209
    .line 210
    .line 211
    move-result-object v14

    .line 212
    new-instance v15, Lkotlin/Pair;

    .line 213
    .line 214
    const v16, 0x3f7d70a4    # 0.99f

    .line 215
    .line 216
    .line 217
    move-object/from16 v17, v0

    .line 218
    .line 219
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-direct {v15, v0, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    const-string v0, "btn_rt"

    .line 227
    .line 228
    invoke-static {v0, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 229
    .line 230
    .line 231
    move-result-object v15

    .line 232
    new-instance v0, Lkotlin/Pair;

    .line 233
    .line 234
    const v3, 0x3f6147ae    # 0.88f

    .line 235
    .line 236
    .line 237
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    invoke-direct {v0, v5, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    move-object/from16 v16, v1

    .line 245
    .line 246
    const-string v1, "btn_sel"

    .line 247
    .line 248
    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    new-instance v1, Lkotlin/Pair;

    .line 253
    .line 254
    invoke-direct {v1, v7, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    move-object/from16 v18, v0

    .line 258
    .line 259
    const-string v0, "btn_sta"

    .line 260
    .line 261
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    new-instance v1, Lkotlin/Pair;

    .line 266
    .line 267
    invoke-direct {v1, v5, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    const-string v5, "btn_select"

    .line 271
    .line 272
    invoke-static {v5, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    new-instance v5, Lkotlin/Pair;

    .line 277
    .line 278
    invoke-direct {v5, v7, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    const-string v7, "btn_start"

    .line 282
    .line 283
    invoke-static {v7, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 284
    .line 285
    .line 286
    move-result-object v19

    .line 287
    new-instance v5, Lkotlin/Pair;

    .line 288
    .line 289
    const v7, 0x3ec28f5c    # 0.38f

    .line 290
    .line 291
    .line 292
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 293
    .line 294
    .line 295
    move-result-object v7

    .line 296
    invoke-direct {v5, v7, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    invoke-static {v8, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 300
    .line 301
    .line 302
    move-result-object v20

    .line 303
    new-instance v5, Lkotlin/Pair;

    .line 304
    .line 305
    const/high16 v8, 0x3f000000    # 0.5f

    .line 306
    .line 307
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 308
    .line 309
    .line 310
    move-result-object v8

    .line 311
    invoke-direct {v5, v8, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    const-string v3, "btn_mouse_right"

    .line 315
    .line 316
    invoke-static {v3, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 317
    .line 318
    .line 319
    move-result-object v21

    .line 320
    new-instance v3, Lkotlin/Pair;

    .line 321
    .line 322
    const v5, 0x3f451eb8    # 0.77f

    .line 323
    .line 324
    .line 325
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 326
    .line 327
    .line 328
    move-result-object v5

    .line 329
    invoke-direct {v3, v7, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    const-string v7, "btn_scroll_up"

    .line 333
    .line 334
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 335
    .line 336
    .line 337
    move-result-object v22

    .line 338
    new-instance v3, Lkotlin/Pair;

    .line 339
    .line 340
    invoke-direct {v3, v8, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    const-string v5, "btn_scroll_down"

    .line 344
    .line 345
    invoke-static {v5, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 346
    .line 347
    .line 348
    move-result-object v23

    .line 349
    move-object v8, v9

    .line 350
    move-object v9, v11

    .line 351
    move-object/from16 v7, v16

    .line 352
    .line 353
    move-object/from16 v5, v17

    .line 354
    .line 355
    move-object/from16 v16, v18

    .line 356
    .line 357
    move-object/from16 v17, v0

    .line 358
    .line 359
    move-object/from16 v18, v1

    .line 360
    .line 361
    move-object v11, v10

    .line 362
    move-object v10, v12

    .line 363
    move-object v12, v2

    .line 364
    filled-new-array/range {v4 .. v23}, [Lkotlin/Pair;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    sput-object v0, LB1/k;->a:Ljava/util/Map;

    .line 373
    .line 374
    return-void
.end method

.method public static a(FFLjava/util/List;)Z
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lx1/a;

    .line 25
    .line 26
    iget v1, v0, Lx1/a;->d:F

    .line 27
    .line 28
    sub-float/2addr v1, p0

    .line 29
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const v2, 0x3d8f5c29    # 0.07f

    .line 34
    .line 35
    .line 36
    cmpg-float v1, v1, v2

    .line 37
    .line 38
    if-gez v1, :cond_1

    .line 39
    .line 40
    iget v0, v0, Lx1/a;->e:F

    .line 41
    .line 42
    sub-float/2addr v0, p1

    .line 43
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    cmpg-float v0, v0, v2

    .line 48
    .line 49
    if-gez v0, :cond_1

    .line 50
    .line 51
    const/4 p0, 0x1

    .line 52
    return p0

    .line 53
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 54
    return p0
.end method

.method public static b(Ljava/util/List;Ljava/lang/String;)Lkotlin/Pair;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/high16 v2, 0x3f000000    # 0.5f

    .line 6
    .line 7
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "buttonId"

    .line 12
    .line 13
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v3, "existing"

    .line 17
    .line 18
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v3, LB1/k;->a:Ljava/util/Map;

    .line 22
    .line 23
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lkotlin/Pair;

    .line 28
    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    new-instance v1, Lkotlin/Pair;

    .line 32
    .line 33
    invoke-direct {v1, v2, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    new-instance v2, Lkotlin/Pair;

    .line 37
    .line 38
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Ljava/lang/Number;

    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    const v4, 0x3d75c28f    # 0.06f

    .line 49
    .line 50
    .line 51
    const v5, 0x3f70a3d7    # 0.94f

    .line 52
    .line 53
    .line 54
    invoke-static {v3, v4, v5}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Ljava/lang/Number;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    const v6, 0x3dcccccd    # 0.1f

    .line 73
    .line 74
    .line 75
    const v7, 0x3f666666    # 0.9f

    .line 76
    .line 77
    .line 78
    invoke-static {v1, v6, v7}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-direct {v2, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Ljava/lang/Number;

    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    check-cast v3, Ljava/lang/Number;

    .line 104
    .line 105
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    invoke-static {v1, v3, v0}, LB1/k;->a(FFLjava/util/List;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-nez v1, :cond_1

    .line 114
    .line 115
    goto/16 :goto_3

    .line 116
    .line 117
    :cond_1
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    const v8, 0x3e0f5c29    # 0.14f

    .line 126
    .line 127
    .line 128
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    const v9, 0x3e3851ec    # 0.18f

    .line 133
    .line 134
    .line 135
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 136
    .line 137
    .line 138
    move-result-object v9

    .line 139
    filled-new-array {v1, v3, v8, v9}, [Ljava/lang/Float;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    if-eqz v3, :cond_6

    .line 156
    .line 157
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    check-cast v3, Ljava/lang/Number;

    .line 162
    .line 163
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    new-instance v8, Lkotlin/Pair;

    .line 168
    .line 169
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v9

    .line 173
    check-cast v9, Ljava/lang/Number;

    .line 174
    .line 175
    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    .line 176
    .line 177
    .line 178
    move-result v9

    .line 179
    add-float/2addr v9, v3

    .line 180
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 181
    .line 182
    .line 183
    move-result-object v9

    .line 184
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v10

    .line 188
    invoke-direct {v8, v9, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    new-instance v9, Lkotlin/Pair;

    .line 192
    .line 193
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v10

    .line 197
    check-cast v10, Ljava/lang/Number;

    .line 198
    .line 199
    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    .line 200
    .line 201
    .line 202
    move-result v10

    .line 203
    sub-float/2addr v10, v3

    .line 204
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 205
    .line 206
    .line 207
    move-result-object v10

    .line 208
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v11

    .line 212
    invoke-direct {v9, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    new-instance v10, Lkotlin/Pair;

    .line 216
    .line 217
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v11

    .line 221
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v12

    .line 225
    check-cast v12, Ljava/lang/Number;

    .line 226
    .line 227
    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    .line 228
    .line 229
    .line 230
    move-result v12

    .line 231
    add-float/2addr v12, v3

    .line 232
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 233
    .line 234
    .line 235
    move-result-object v12

    .line 236
    invoke-direct {v10, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    new-instance v11, Lkotlin/Pair;

    .line 240
    .line 241
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v12

    .line 245
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v13

    .line 249
    check-cast v13, Ljava/lang/Number;

    .line 250
    .line 251
    invoke-virtual {v13}, Ljava/lang/Number;->floatValue()F

    .line 252
    .line 253
    .line 254
    move-result v13

    .line 255
    sub-float/2addr v13, v3

    .line 256
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 257
    .line 258
    .line 259
    move-result-object v13

    .line 260
    invoke-direct {v11, v12, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    new-instance v12, Lkotlin/Pair;

    .line 264
    .line 265
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v13

    .line 269
    check-cast v13, Ljava/lang/Number;

    .line 270
    .line 271
    invoke-virtual {v13}, Ljava/lang/Number;->floatValue()F

    .line 272
    .line 273
    .line 274
    move-result v13

    .line 275
    add-float/2addr v13, v3

    .line 276
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 277
    .line 278
    .line 279
    move-result-object v13

    .line 280
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v14

    .line 284
    check-cast v14, Ljava/lang/Number;

    .line 285
    .line 286
    invoke-virtual {v14}, Ljava/lang/Number;->floatValue()F

    .line 287
    .line 288
    .line 289
    move-result v14

    .line 290
    add-float/2addr v14, v3

    .line 291
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 292
    .line 293
    .line 294
    move-result-object v14

    .line 295
    invoke-direct {v12, v13, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    new-instance v13, Lkotlin/Pair;

    .line 299
    .line 300
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v14

    .line 304
    check-cast v14, Ljava/lang/Number;

    .line 305
    .line 306
    invoke-virtual {v14}, Ljava/lang/Number;->floatValue()F

    .line 307
    .line 308
    .line 309
    move-result v14

    .line 310
    sub-float/2addr v14, v3

    .line 311
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 312
    .line 313
    .line 314
    move-result-object v14

    .line 315
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v15

    .line 319
    check-cast v15, Ljava/lang/Number;

    .line 320
    .line 321
    invoke-virtual {v15}, Ljava/lang/Number;->floatValue()F

    .line 322
    .line 323
    .line 324
    move-result v15

    .line 325
    add-float/2addr v15, v3

    .line 326
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 327
    .line 328
    .line 329
    move-result-object v15

    .line 330
    invoke-direct {v13, v14, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    new-instance v14, Lkotlin/Pair;

    .line 334
    .line 335
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v15

    .line 339
    check-cast v15, Ljava/lang/Number;

    .line 340
    .line 341
    invoke-virtual {v15}, Ljava/lang/Number;->floatValue()F

    .line 342
    .line 343
    .line 344
    move-result v15

    .line 345
    add-float/2addr v15, v3

    .line 346
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 347
    .line 348
    .line 349
    move-result-object v15

    .line 350
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v16

    .line 354
    check-cast v16, Ljava/lang/Number;

    .line 355
    .line 356
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->floatValue()F

    .line 357
    .line 358
    .line 359
    move-result v16

    .line 360
    sub-float v16, v16, v3

    .line 361
    .line 362
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 363
    .line 364
    .line 365
    move-result-object v6

    .line 366
    invoke-direct {v14, v15, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    new-instance v15, Lkotlin/Pair;

    .line 370
    .line 371
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v6

    .line 375
    check-cast v6, Ljava/lang/Number;

    .line 376
    .line 377
    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    .line 378
    .line 379
    .line 380
    move-result v6

    .line 381
    sub-float/2addr v6, v3

    .line 382
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 383
    .line 384
    .line 385
    move-result-object v6

    .line 386
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v16

    .line 390
    check-cast v16, Ljava/lang/Number;

    .line 391
    .line 392
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->floatValue()F

    .line 393
    .line 394
    .line 395
    move-result v16

    .line 396
    sub-float v16, v16, v3

    .line 397
    .line 398
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    invoke-direct {v15, v6, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 403
    .line 404
    .line 405
    filled-new-array/range {v8 .. v15}, [Lkotlin/Pair;

    .line 406
    .line 407
    .line 408
    move-result-object v3

    .line 409
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 410
    .line 411
    .line 412
    move-result-object v3

    .line 413
    new-instance v6, Ljava/util/ArrayList;

    .line 414
    .line 415
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 416
    .line 417
    .line 418
    move-result v8

    .line 419
    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 420
    .line 421
    .line 422
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 423
    .line 424
    .line 425
    move-result-object v3

    .line 426
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 427
    .line 428
    .line 429
    move-result v8

    .line 430
    if-eqz v8, :cond_2

    .line 431
    .line 432
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v8

    .line 436
    check-cast v8, Lkotlin/Pair;

    .line 437
    .line 438
    new-instance v9, Lkotlin/Pair;

    .line 439
    .line 440
    invoke-virtual {v8}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v10

    .line 444
    check-cast v10, Ljava/lang/Number;

    .line 445
    .line 446
    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    .line 447
    .line 448
    .line 449
    move-result v10

    .line 450
    invoke-static {v10, v4, v5}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    .line 451
    .line 452
    .line 453
    move-result v10

    .line 454
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 455
    .line 456
    .line 457
    move-result-object v10

    .line 458
    invoke-virtual {v8}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v8

    .line 462
    check-cast v8, Ljava/lang/Number;

    .line 463
    .line 464
    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    .line 465
    .line 466
    .line 467
    move-result v8

    .line 468
    const v11, 0x3dcccccd    # 0.1f

    .line 469
    .line 470
    .line 471
    invoke-static {v8, v11, v7}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    .line 472
    .line 473
    .line 474
    move-result v8

    .line 475
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 476
    .line 477
    .line 478
    move-result-object v8

    .line 479
    invoke-direct {v9, v10, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    goto :goto_1

    .line 486
    :cond_2
    const v11, 0x3dcccccd    # 0.1f

    .line 487
    .line 488
    .line 489
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 490
    .line 491
    .line 492
    move-result v3

    .line 493
    const/4 v8, 0x0

    .line 494
    :cond_3
    if-ge v8, v3, :cond_4

    .line 495
    .line 496
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v9

    .line 500
    add-int/lit8 v8, v8, 0x1

    .line 501
    .line 502
    move-object v10, v9

    .line 503
    check-cast v10, Lkotlin/Pair;

    .line 504
    .line 505
    invoke-virtual {v10}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v12

    .line 509
    check-cast v12, Ljava/lang/Number;

    .line 510
    .line 511
    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    .line 512
    .line 513
    .line 514
    move-result v12

    .line 515
    invoke-virtual {v10}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v10

    .line 519
    check-cast v10, Ljava/lang/Number;

    .line 520
    .line 521
    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    .line 522
    .line 523
    .line 524
    move-result v10

    .line 525
    invoke-static {v12, v10, v0}, LB1/k;->a(FFLjava/util/List;)Z

    .line 526
    .line 527
    .line 528
    move-result v10

    .line 529
    if-nez v10, :cond_3

    .line 530
    .line 531
    goto :goto_2

    .line 532
    :cond_4
    const/4 v9, 0x0

    .line 533
    :goto_2
    check-cast v9, Lkotlin/Pair;

    .line 534
    .line 535
    if-eqz v9, :cond_5

    .line 536
    .line 537
    return-object v9

    .line 538
    :cond_5
    move v6, v11

    .line 539
    goto/16 :goto_0

    .line 540
    .line 541
    :cond_6
    :goto_3
    return-object v2
.end method
