.class public final LG0/b;
.super LT0/f;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final I:I

.field public final J:I

.field public final K:I

.field public final L:I

.field public M:Z

.field public final N:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, LT0/f;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, LG0/b;->N:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 12
    .line 13
    const/4 v0, -0x2

    .line 14
    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 15
    .line 16
    .line 17
    const/16 v0, 0x11

    .line 18
    .line 19
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const v0, 0x7f07006f

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, LG0/b;->I:I

    .line 36
    .line 37
    const v0, 0x7f070070

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput v0, p0, LG0/b;->J:I

    .line 45
    .line 46
    const v0, 0x7f070069

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iput v0, p0, LG0/b;->K:I

    .line 54
    .line 55
    const v0, 0x7f07006a

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    iput p1, p0, LG0/b;->L:I

    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public final onLayout(ZIIII)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    sub-int/2addr p4, p2

    .line 6
    sub-int/2addr p5, p3

    .line 7
    const/4 p2, 0x0

    .line 8
    move p3, p2

    .line 9
    move v0, p3

    .line 10
    :goto_0
    if-ge p3, p1, :cond_2

    .line 11
    .line 12
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/16 v3, 0x8

    .line 21
    .line 22
    if-ne v2, v3, :cond_0

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x1

    .line 30
    if-ne v2, v3, :cond_1

    .line 31
    .line 32
    sub-int v2, p4, v0

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    sub-int v3, v2, v3

    .line 39
    .line 40
    invoke-virtual {v1, v3, p2, v2, p5}, Landroid/view/View;->layout(IIII)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    add-int/2addr v2, v0

    .line 49
    invoke-virtual {v1, v0, p2, v2, p5}, Landroid/view/View;->layout(IIII)V

    .line 50
    .line 51
    .line 52
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    add-int/2addr v0, v1

    .line 57
    :goto_2
    add-int/lit8 p3, p3, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    return-void
.end method

.method public final onMeasure(II)V
    .locals 12

    .line 1
    invoke-virtual {p0}, LT0/f;->getMenu()Lj/p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {v0}, Lj/p;->l()Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v2, p0, LG0/b;->N:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 24
    .line 25
    .line 26
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    const/high16 v3, 0x40000000    # 2.0f

    .line 31
    .line 32
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-virtual {p0}, LT0/f;->getLabelVisibilityMode()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    const/4 v6, -0x1

    .line 41
    iget v7, p0, LG0/b;->K:I

    .line 42
    .line 43
    const/16 v8, 0x8

    .line 44
    .line 45
    const/4 v9, 0x0

    .line 46
    const/4 v10, 0x1

    .line 47
    if-ne v5, v6, :cond_0

    .line 48
    .line 49
    const/4 v5, 0x3

    .line 50
    if-le v0, v5, :cond_7

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    if-nez v5, :cond_7

    .line 54
    .line 55
    :goto_0
    iget-boolean v5, p0, LG0/b;->M:Z

    .line 56
    .line 57
    if-eqz v5, :cond_7

    .line 58
    .line 59
    invoke-virtual {p0}, LT0/f;->getSelectedItemPosition()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    iget v11, p0, LG0/b;->L:I

    .line 72
    .line 73
    if-eq v6, v8, :cond_1

    .line 74
    .line 75
    const/high16 v6, -0x80000000

    .line 76
    .line 77
    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    invoke-virtual {v5, v6, v4}, Landroid/view/View;->measure(II)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    .line 89
    .line 90
    .line 91
    move-result v11

    .line 92
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-eq v5, v8, :cond_2

    .line 97
    .line 98
    move v5, v10

    .line 99
    goto :goto_1

    .line 100
    :cond_2
    move v5, v9

    .line 101
    :goto_1
    sub-int/2addr v0, v5

    .line 102
    iget v5, p0, LG0/b;->J:I

    .line 103
    .line 104
    mul-int/2addr v5, v0

    .line 105
    sub-int v5, p1, v5

    .line 106
    .line 107
    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    sub-int/2addr p1, v5

    .line 116
    if-nez v0, :cond_3

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_3
    move v10, v0

    .line 120
    :goto_2
    div-int v6, p1, v10

    .line 121
    .line 122
    iget v7, p0, LG0/b;->I:I

    .line 123
    .line 124
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    mul-int/2addr v0, v6

    .line 129
    sub-int/2addr p1, v0

    .line 130
    move v0, v9

    .line 131
    :goto_3
    if-ge v0, v1, :cond_b

    .line 132
    .line 133
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 138
    .line 139
    .line 140
    move-result v7

    .line 141
    if-eq v7, v8, :cond_5

    .line 142
    .line 143
    invoke-virtual {p0}, LT0/f;->getSelectedItemPosition()I

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    if-ne v0, v7, :cond_4

    .line 148
    .line 149
    move v7, v5

    .line 150
    goto :goto_4

    .line 151
    :cond_4
    move v7, v6

    .line 152
    :goto_4
    if-lez p1, :cond_6

    .line 153
    .line 154
    add-int/lit8 v7, v7, 0x1

    .line 155
    .line 156
    add-int/lit8 p1, p1, -0x1

    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_5
    move v7, v9

    .line 160
    :cond_6
    :goto_5
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    add-int/lit8 v0, v0, 0x1

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_7
    if-nez v0, :cond_8

    .line 171
    .line 172
    goto :goto_6

    .line 173
    :cond_8
    move v10, v0

    .line 174
    :goto_6
    div-int v5, p1, v10

    .line 175
    .line 176
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    mul-int/2addr v0, v5

    .line 181
    sub-int/2addr p1, v0

    .line 182
    move v0, v9

    .line 183
    :goto_7
    if-ge v0, v1, :cond_b

    .line 184
    .line 185
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    if-eq v6, v8, :cond_a

    .line 194
    .line 195
    if-lez p1, :cond_9

    .line 196
    .line 197
    add-int/lit8 v6, v5, 0x1

    .line 198
    .line 199
    add-int/lit8 p1, p1, -0x1

    .line 200
    .line 201
    goto :goto_8

    .line 202
    :cond_9
    move v6, v5

    .line 203
    goto :goto_8

    .line 204
    :cond_a
    move v6, v9

    .line 205
    :goto_8
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    add-int/lit8 v0, v0, 0x1

    .line 213
    .line 214
    goto :goto_7

    .line 215
    :cond_b
    move p1, v9

    .line 216
    :goto_9
    if-ge v9, v1, :cond_d

    .line 217
    .line 218
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 223
    .line 224
    .line 225
    move-result v5

    .line 226
    if-ne v5, v8, :cond_c

    .line 227
    .line 228
    goto :goto_a

    .line 229
    :cond_c
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    check-cast v5, Ljava/lang/Integer;

    .line 234
    .line 235
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 240
    .line 241
    .line 242
    move-result v5

    .line 243
    invoke-virtual {v0, v5, v4}, Landroid/view/View;->measure(II)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 251
    .line 252
    .line 253
    move-result v6

    .line 254
    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 255
    .line 256
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    add-int/2addr v0, p1

    .line 261
    move p1, v0

    .line 262
    :goto_a
    add-int/lit8 v9, v9, 0x1

    .line 263
    .line 264
    goto :goto_9

    .line 265
    :cond_d
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 266
    .line 267
    .line 268
    return-void
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, LG0/b;->M:Z

    .line 2
    .line 3
    return-void
.end method
