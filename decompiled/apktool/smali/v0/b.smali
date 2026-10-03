.class public final Lv0/b;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lv0/b;->b:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv0/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lv0/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lv0/b;->b:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lv0/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lv0/g;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lv0/b;->b:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lv0/b;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 9

    .line 1
    iget v0, p0, Lv0/b;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lv0/b;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j(I)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    return v0

    .line 16
    :pswitch_0
    const/4 v0, 0x2

    .line 17
    const-string v1, "ViewTarget"

    .line 18
    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "OnGlobalLayoutListener called attachStateListener="

    .line 28
    .line 29
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Lv0/b;->c:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lv0/g;

    .line 51
    .line 52
    if-eqz v0, :cond_8

    .line 53
    .line 54
    iget-object v1, v0, Lv0/g;->b:Ljava/util/ArrayList;

    .line 55
    .line 56
    iget-object v2, v0, Lv0/g;->a:Landroid/view/View;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_1

    .line 63
    .line 64
    goto/16 :goto_3

    .line 65
    .line 66
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    add-int/2addr v4, v3

    .line 75
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    const/4 v5, 0x0

    .line 80
    if-eqz v3, :cond_2

    .line 81
    .line 82
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    move v3, v5

    .line 86
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    invoke-virtual {v0, v6, v3, v4}, Lv0/g;->a(III)I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    add-int/2addr v6, v4

    .line 103
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    if-eqz v4, :cond_3

    .line 108
    .line 109
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_3
    move v4, v5

    .line 113
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    invoke-virtual {v0, v7, v4, v6}, Lv0/g;->a(III)I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    const/high16 v6, -0x80000000

    .line 122
    .line 123
    if-gtz v3, :cond_4

    .line 124
    .line 125
    if-ne v3, v6, :cond_8

    .line 126
    .line 127
    :cond_4
    if-gtz v4, :cond_5

    .line 128
    .line 129
    if-ne v4, v6, :cond_8

    .line 130
    .line 131
    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    :goto_2
    if-ge v5, v7, :cond_6

    .line 141
    .line 142
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    add-int/lit8 v5, v5, 0x1

    .line 147
    .line 148
    check-cast v8, Lv0/e;

    .line 149
    .line 150
    check-cast v8, Lu0/f;

    .line 151
    .line 152
    invoke-virtual {v8, v3, v4}, Lu0/f;->l(II)V

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    if-eqz v3, :cond_7

    .line 165
    .line 166
    iget-object v3, v0, Lv0/g;->c:Lv0/b;

    .line 167
    .line 168
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 169
    .line 170
    .line 171
    :cond_7
    const/4 v2, 0x0

    .line 172
    iput-object v2, v0, Lv0/g;->c:Lv0/b;

    .line 173
    .line 174
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 175
    .line 176
    .line 177
    :cond_8
    :goto_3
    const/4 v0, 0x1

    .line 178
    return v0

    .line 179
    :pswitch_1
    const/4 v0, 0x2

    .line 180
    const-string v1, "CustomViewTarget"

    .line 181
    .line 182
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_9

    .line 187
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    const-string v2, "OnGlobalLayoutListener called attachStateListener="

    .line 191
    .line 192
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    :cond_9
    iget-object v0, p0, Lv0/b;->c:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    check-cast v0, Lv0/c;

    .line 214
    .line 215
    if-eqz v0, :cond_11

    .line 216
    .line 217
    iget-object v1, v0, Lv0/c;->b:Ljava/util/ArrayList;

    .line 218
    .line 219
    iget-object v2, v0, Lv0/c;->a:Landroid/view/View;

    .line 220
    .line 221
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    if-eqz v3, :cond_a

    .line 226
    .line 227
    goto/16 :goto_7

    .line 228
    .line 229
    :cond_a
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    .line 234
    .line 235
    .line 236
    move-result v4

    .line 237
    add-int/2addr v4, v3

    .line 238
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    const/4 v5, 0x0

    .line 243
    if-eqz v3, :cond_b

    .line 244
    .line 245
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 246
    .line 247
    goto :goto_4

    .line 248
    :cond_b
    move v3, v5

    .line 249
    :goto_4
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 250
    .line 251
    .line 252
    move-result v6

    .line 253
    invoke-virtual {v0, v6, v3, v4}, Lv0/c;->a(III)I

    .line 254
    .line 255
    .line 256
    move-result v3

    .line 257
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    .line 258
    .line 259
    .line 260
    move-result v4

    .line 261
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    .line 262
    .line 263
    .line 264
    move-result v6

    .line 265
    add-int/2addr v6, v4

    .line 266
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    if-eqz v4, :cond_c

    .line 271
    .line 272
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 273
    .line 274
    goto :goto_5

    .line 275
    :cond_c
    move v4, v5

    .line 276
    :goto_5
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 277
    .line 278
    .line 279
    move-result v7

    .line 280
    invoke-virtual {v0, v7, v4, v6}, Lv0/c;->a(III)I

    .line 281
    .line 282
    .line 283
    move-result v4

    .line 284
    const/high16 v6, -0x80000000

    .line 285
    .line 286
    if-gtz v3, :cond_d

    .line 287
    .line 288
    if-ne v3, v6, :cond_11

    .line 289
    .line 290
    :cond_d
    if-gtz v4, :cond_e

    .line 291
    .line 292
    if-ne v4, v6, :cond_11

    .line 293
    .line 294
    :cond_e
    new-instance v6, Ljava/util/ArrayList;

    .line 295
    .line 296
    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 300
    .line 301
    .line 302
    move-result v7

    .line 303
    :goto_6
    if-ge v5, v7, :cond_f

    .line 304
    .line 305
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v8

    .line 309
    add-int/lit8 v5, v5, 0x1

    .line 310
    .line 311
    check-cast v8, Lv0/e;

    .line 312
    .line 313
    check-cast v8, Lu0/f;

    .line 314
    .line 315
    invoke-virtual {v8, v3, v4}, Lu0/f;->l(II)V

    .line 316
    .line 317
    .line 318
    goto :goto_6

    .line 319
    :cond_f
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 324
    .line 325
    .line 326
    move-result v3

    .line 327
    if-eqz v3, :cond_10

    .line 328
    .line 329
    iget-object v3, v0, Lv0/c;->c:Lv0/b;

    .line 330
    .line 331
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 332
    .line 333
    .line 334
    :cond_10
    const/4 v2, 0x0

    .line 335
    iput-object v2, v0, Lv0/c;->c:Lv0/b;

    .line 336
    .line 337
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 338
    .line 339
    .line 340
    :cond_11
    :goto_7
    const/4 v0, 0x1

    .line 341
    return v0

    .line 342
    nop

    .line 343
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
