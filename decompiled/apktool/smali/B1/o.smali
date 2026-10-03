.class public final LB1/o;
.super Landroid/view/View;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public b:Lkotlin/jvm/functions/Function1;

.field public c:LB1/n;

.field public final d:Landroid/graphics/Paint;

.field public final e:Landroid/graphics/Paint;

.field public final f:Landroid/graphics/Paint;

.field public final g:Landroid/graphics/Paint;

.field public final h:Landroid/graphics/Paint;

.field public final i:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    const-string v0, "ctx"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    .line 9
    .line 10
    sget-object p1, LB1/n;->b:LB1/n;

    .line 11
    .line 12
    iput-object p1, p0, LB1/o;->c:LB1/n;

    .line 13
    .line 14
    new-instance p1, Landroid/graphics/Paint;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 18
    .line 19
    .line 20
    const/16 v1, 0x44

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, LB1/o;->d:Landroid/graphics/Paint;

    .line 31
    .line 32
    new-instance p1, Landroid/graphics/Paint;

    .line 33
    .line 34
    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 35
    .line 36
    .line 37
    const/16 v1, 0x66

    .line 38
    .line 39
    const/16 v2, 0xff

    .line 40
    .line 41
    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, LB1/o;->e:Landroid/graphics/Paint;

    .line 49
    .line 50
    new-instance p1, Landroid/graphics/Paint;

    .line 51
    .line 52
    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 53
    .line 54
    .line 55
    const/16 v1, 0xaa

    .line 56
    .line 57
    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    .line 63
    .line 64
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 67
    .line 68
    .line 69
    const/high16 v3, 0x41b00000    # 22.0f

    .line 70
    .line 71
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, LB1/o;->f:Landroid/graphics/Paint;

    .line 75
    .line 76
    new-instance p1, Landroid/graphics/Paint;

    .line 77
    .line 78
    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 79
    .line 80
    .line 81
    const/16 v3, 0x55

    .line 82
    .line 83
    invoke-static {v3, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 91
    .line 92
    .line 93
    const/high16 v1, 0x41700000    # 15.0f

    .line 94
    .line 95
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 96
    .line 97
    .line 98
    iput-object p1, p0, LB1/o;->g:Landroid/graphics/Paint;

    .line 99
    .line 100
    new-instance p1, Landroid/graphics/Paint;

    .line 101
    .line 102
    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 103
    .line 104
    .line 105
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 106
    .line 107
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    .line 109
    .line 110
    const/high16 v3, 0x3fc00000    # 1.5f

    .line 111
    .line 112
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 113
    .line 114
    .line 115
    const/16 v3, 0x22

    .line 116
    .line 117
    invoke-static {v3, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    .line 123
    .line 124
    iput-object p1, p0, LB1/o;->h:Landroid/graphics/Paint;

    .line 125
    .line 126
    new-instance p1, Landroid/graphics/Paint;

    .line 127
    .line 128
    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 132
    .line 133
    .line 134
    const v0, 0x3f4ccccd    # 0.8f

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 138
    .line 139
    .line 140
    const/16 v0, 0x18

    .line 141
    .line 142
    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    .line 148
    .line 149
    iput-object p1, p0, LB1/o;->i:Landroid/graphics/Paint;

    .line 150
    .line 151
    return-void
.end method


# virtual methods
.method public final getOnDir()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "LB1/n;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LB1/o;->b:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    move-object v0, p1

    .line 2
    const-string v1, "c"

    .line 3
    .line 4
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    int-to-float v1, v1

    .line 12
    const/high16 v2, 0x40000000    # 2.0f

    .line 13
    .line 14
    div-float v6, v1, v2

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    int-to-float v1, v1

    .line 21
    div-float v7, v1, v2

    .line 22
    .line 23
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    .line 24
    .line 25
    .line 26
    move-result v8

    .line 27
    new-instance v9, Landroid/graphics/RectF;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    int-to-float v1, v1

    .line 34
    sub-float/2addr v1, v2

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    int-to-float v3, v3

    .line 40
    sub-float/2addr v3, v2

    .line 41
    invoke-direct {v9, v2, v2, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x2

    .line 45
    int-to-float v1, v1

    .line 46
    sub-float v10, v8, v1

    .line 47
    .line 48
    iget-object v1, p0, LB1/o;->d:Landroid/graphics/Paint;

    .line 49
    .line 50
    invoke-virtual {p1, v6, v7, v10, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, LB1/o;->h:Landroid/graphics/Paint;

    .line 54
    .line 55
    invoke-virtual {p1, v6, v7, v10, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 56
    .line 57
    .line 58
    const v1, 0x3e6147ae    # 0.22f

    .line 59
    .line 60
    .line 61
    mul-float v11, v8, v1

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    move v12, v1

    .line 65
    :goto_0
    const/16 v1, 0x8

    .line 66
    .line 67
    if-ge v12, v1, :cond_0

    .line 68
    .line 69
    int-to-double v1, v12

    .line 70
    const-wide v3, 0x4046800000000000L    # 45.0

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    mul-double/2addr v1, v3

    .line 76
    const-wide v3, 0x4036800000000000L    # 22.5

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    add-double/2addr v1, v3

    .line 82
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    .line 83
    .line 84
    .line 85
    move-result-wide v1

    .line 86
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    .line 87
    .line 88
    .line 89
    move-result-wide v3

    .line 90
    double-to-float v3, v3

    .line 91
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 92
    .line 93
    .line 94
    move-result-wide v1

    .line 95
    double-to-float v1, v1

    .line 96
    mul-float v2, v11, v3

    .line 97
    .line 98
    add-float/2addr v2, v6

    .line 99
    mul-float v4, v11, v1

    .line 100
    .line 101
    add-float/2addr v4, v7

    .line 102
    mul-float/2addr v3, v10

    .line 103
    add-float/2addr v3, v6

    .line 104
    mul-float/2addr v1, v10

    .line 105
    add-float/2addr v1, v7

    .line 106
    iget-object v5, p0, LB1/o;->i:Landroid/graphics/Paint;

    .line 107
    .line 108
    move v13, v4

    .line 109
    move v4, v1

    .line 110
    move v1, v2

    .line 111
    move v2, v13

    .line 112
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 113
    .line 114
    .line 115
    add-int/lit8 v12, v12, 0x1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_0
    new-instance v1, Landroid/graphics/Paint;

    .line 119
    .line 120
    const/4 v2, 0x1

    .line 121
    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 122
    .line 123
    .line 124
    const/16 v2, 0x22

    .line 125
    .line 126
    const/16 v3, 0xff

    .line 127
    .line 128
    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    .line 134
    .line 135
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 136
    .line 137
    invoke-virtual {p1, v6, v7, v11, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 138
    .line 139
    .line 140
    iget-object v1, p0, LB1/o;->c:LB1/n;

    .line 141
    .line 142
    sget-object v2, LB1/n;->b:LB1/n;

    .line 143
    .line 144
    if-eq v1, v2, :cond_1

    .line 145
    .line 146
    new-instance v1, Landroid/graphics/Path;

    .line 147
    .line 148
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 152
    .line 153
    .line 154
    iget-object v2, p0, LB1/o;->c:LB1/n;

    .line 155
    .line 156
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    packed-switch v2, :pswitch_data_0

    .line 161
    .line 162
    .line 163
    const/4 v2, 0x0

    .line 164
    goto :goto_1

    .line 165
    :pswitch_0
    const/high16 v2, 0x41b40000    # 22.5f

    .line 166
    .line 167
    goto :goto_1

    .line 168
    :pswitch_1
    const/high16 v2, 0x42e10000    # 112.5f

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :pswitch_2
    const v2, 0x43924000    # 292.5f

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :pswitch_3
    const v2, 0x434a8000    # 202.5f

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :pswitch_4
    const/high16 v2, -0x3e4c0000    # -22.5f

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :pswitch_5
    const v2, 0x431d8000    # 157.5f

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :pswitch_6
    const/high16 v2, 0x42870000    # 67.5f

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :pswitch_7
    const v2, 0x43778000    # 247.5f

    .line 190
    .line 191
    .line 192
    :goto_1
    const/high16 v3, 0x42340000    # 45.0f

    .line 193
    .line 194
    invoke-virtual {v1, v9, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 198
    .line 199
    .line 200
    iget-object v2, p0, LB1/o;->e:Landroid/graphics/Paint;

    .line 201
    .line 202
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 203
    .line 204
    .line 205
    :cond_1
    const v1, 0x3f1eb852    # 0.62f

    .line 206
    .line 207
    .line 208
    mul-float/2addr v8, v1

    .line 209
    sub-float v1, v7, v8

    .line 210
    .line 211
    iget-object v2, p0, LB1/o;->f:Landroid/graphics/Paint;

    .line 212
    .line 213
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    .line 214
    .line 215
    .line 216
    move-result v3

    .line 217
    const v4, 0x3ec28f5c    # 0.38f

    .line 218
    .line 219
    .line 220
    mul-float/2addr v3, v4

    .line 221
    add-float/2addr v3, v1

    .line 222
    const-string v1, "\u2191"

    .line 223
    .line 224
    invoke-virtual {p1, v1, v6, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 225
    .line 226
    .line 227
    add-float v1, v7, v8

    .line 228
    .line 229
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    mul-float/2addr v3, v4

    .line 234
    add-float/2addr v3, v1

    .line 235
    const-string v1, "\u2193"

    .line 236
    .line 237
    invoke-virtual {p1, v1, v6, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 238
    .line 239
    .line 240
    sub-float v1, v6, v8

    .line 241
    .line 242
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    mul-float/2addr v3, v4

    .line 247
    add-float/2addr v3, v7

    .line 248
    const-string v5, "\u2190"

    .line 249
    .line 250
    invoke-virtual {p1, v5, v1, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 251
    .line 252
    .line 253
    add-float v1, v6, v8

    .line 254
    .line 255
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    .line 256
    .line 257
    .line 258
    move-result v3

    .line 259
    mul-float/2addr v3, v4

    .line 260
    add-float/2addr v3, v7

    .line 261
    const-string v5, "\u2192"

    .line 262
    .line 263
    invoke-virtual {p1, v5, v1, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 264
    .line 265
    .line 266
    const v1, 0x3f333333    # 0.7f

    .line 267
    .line 268
    .line 269
    mul-float/2addr v8, v1

    .line 270
    sub-float v1, v6, v8

    .line 271
    .line 272
    sub-float v2, v7, v8

    .line 273
    .line 274
    iget-object v3, p0, LB1/o;->g:Landroid/graphics/Paint;

    .line 275
    .line 276
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    .line 277
    .line 278
    .line 279
    move-result v5

    .line 280
    mul-float/2addr v5, v4

    .line 281
    add-float/2addr v5, v2

    .line 282
    const-string v9, "\u2196"

    .line 283
    .line 284
    invoke-virtual {p1, v9, v1, v5, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 285
    .line 286
    .line 287
    add-float/2addr v6, v8

    .line 288
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    mul-float/2addr v5, v4

    .line 293
    add-float/2addr v5, v2

    .line 294
    const-string v2, "\u2197"

    .line 295
    .line 296
    invoke-virtual {p1, v2, v6, v5, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 297
    .line 298
    .line 299
    add-float/2addr v7, v8

    .line 300
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    mul-float/2addr v2, v4

    .line 305
    add-float/2addr v2, v7

    .line 306
    const-string v5, "\u2199"

    .line 307
    .line 308
    invoke-virtual {p1, v5, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    mul-float/2addr v1, v4

    .line 316
    add-float/2addr v1, v7

    .line 317
    const-string v2, "\u2198"

    .line 318
    .line 319
    invoke-virtual {p1, v2, v6, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 320
    .line 321
    .line 322
    return-void

    .line 323
    :pswitch_data_0
    .packed-switch 0x1
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

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    int-to-float v0, v0

    .line 11
    const/high16 v1, 0x40000000    # 2.0f

    .line 12
    .line 13
    div-float/2addr v0, v1

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    int-to-float v2, v2

    .line 19
    div-float/2addr v2, v1

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    sub-float/2addr v1, v0

    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    sub-float/2addr v3, v2

    .line 30
    mul-float v4, v1, v1

    .line 31
    .line 32
    mul-float v5, v3, v3

    .line 33
    .line 34
    add-float/2addr v5, v4

    .line 35
    float-to-double v4, v5

    .line 36
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    double-to-float v4, v4

    .line 41
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const v2, 0x3e3851ec    # 0.18f

    .line 46
    .line 47
    .line 48
    mul-float/2addr v0, v2

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    const/4 v5, 0x1

    .line 54
    if-eq v2, v5, :cond_2

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    const/4 v2, 0x3

    .line 61
    if-ne p1, v2, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    cmpg-float p1, v4, v0

    .line 65
    .line 66
    if-gez p1, :cond_1

    .line 67
    .line 68
    sget-object p1, LB1/n;->b:LB1/n;

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    float-to-double v2, v3

    .line 72
    float-to-double v0, v1

    .line 73
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    .line 74
    .line 75
    .line 76
    move-result-wide v0

    .line 77
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    .line 78
    .line 79
    .line 80
    move-result-wide v0

    .line 81
    double-to-float p1, v0

    .line 82
    const/16 v0, 0x168

    .line 83
    .line 84
    int-to-float v1, v0

    .line 85
    add-float/2addr p1, v1

    .line 86
    float-to-double v1, p1

    .line 87
    const-wide v3, 0x4036800000000000L    # 22.5

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    add-double/2addr v1, v3

    .line 93
    int-to-double v3, v0

    .line 94
    rem-double/2addr v1, v3

    .line 95
    const/16 p1, 0x2d

    .line 96
    .line 97
    int-to-double v3, p1

    .line 98
    div-double/2addr v1, v3

    .line 99
    double-to-int p1, v1

    .line 100
    packed-switch p1, :pswitch_data_0

    .line 101
    .line 102
    .line 103
    sget-object p1, LB1/n;->b:LB1/n;

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :pswitch_0
    sget-object p1, LB1/n;->h:LB1/n;

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :pswitch_1
    sget-object p1, LB1/n;->c:LB1/n;

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :pswitch_2
    sget-object p1, LB1/n;->g:LB1/n;

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :pswitch_3
    sget-object p1, LB1/n;->e:LB1/n;

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :pswitch_4
    sget-object p1, LB1/n;->i:LB1/n;

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :pswitch_5
    sget-object p1, LB1/n;->d:LB1/n;

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :pswitch_6
    sget-object p1, LB1/n;->j:LB1/n;

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :pswitch_7
    sget-object p1, LB1/n;->f:LB1/n;

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_2
    :goto_0
    sget-object p1, LB1/n;->b:LB1/n;

    .line 131
    .line 132
    :goto_1
    iget-object v0, p0, LB1/o;->c:LB1/n;

    .line 133
    .line 134
    if-eq p1, v0, :cond_3

    .line 135
    .line 136
    iput-object p1, p0, LB1/o;->c:LB1/n;

    .line 137
    .line 138
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, LB1/o;->b:Lkotlin/jvm/functions/Function1;

    .line 142
    .line 143
    if-eqz v0, :cond_3

    .line 144
    .line 145
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    :cond_3
    return v5

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
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

.method public final setOnDir(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "LB1/n;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, LB1/o;->b:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method
