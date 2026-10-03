.class public abstract LR0/e;
.super Landroid/view/ViewGroup;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public b:I

.field public c:I

.field public d:Z

.field public e:I


# virtual methods
.method public getItemSpacing()I
    .locals 1

    .line 1
    iget v0, p0, LR0/e;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public getLineSpacing()I
    .locals 1

    .line 1
    iget v0, p0, LR0/e;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public getRowCount()I
    .locals 1

    .line 1
    iget v0, p0, LR0/e;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public final onLayout(ZIIII)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p3, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iput p3, p0, LR0/e;->e:I

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 p1, 0x1

    .line 12
    iput p1, p0, LR0/e;->e:I

    .line 13
    .line 14
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    .line 15
    .line 16
    .line 17
    move-result p5

    .line 18
    if-ne p5, p1, :cond_1

    .line 19
    .line 20
    move p5, p1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move p5, p3

    .line 23
    :goto_0
    if-eqz p5, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    :goto_1
    if-eqz p5, :cond_3

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    goto :goto_2

    .line 41
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    sub-int/2addr p4, p2

    .line 50
    sub-int/2addr p4, v1

    .line 51
    move v1, p3

    .line 52
    move v3, v0

    .line 53
    move p2, v2

    .line 54
    :goto_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-ge v1, v4, :cond_8

    .line 59
    .line 60
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    const/16 v6, 0x8

    .line 69
    .line 70
    const v7, 0x7f09027e

    .line 71
    .line 72
    .line 73
    if-ne v5, v6, :cond_4

    .line 74
    .line 75
    const/4 v5, -0x1

    .line 76
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {v4, v7, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    goto :goto_6

    .line 84
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    instance-of v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 89
    .line 90
    if-eqz v6, :cond_5

    .line 91
    .line 92
    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 93
    .line 94
    invoke-static {v5}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    invoke-static {v5}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    goto :goto_4

    .line 103
    :cond_5
    move v5, p3

    .line 104
    move v6, v5

    .line 105
    :goto_4
    add-int v8, v3, v6

    .line 106
    .line 107
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    add-int/2addr v9, v8

    .line 112
    iget-boolean v8, p0, LR0/e;->d:Z

    .line 113
    .line 114
    if-nez v8, :cond_6

    .line 115
    .line 116
    if-le v9, p4, :cond_6

    .line 117
    .line 118
    iget p2, p0, LR0/e;->b:I

    .line 119
    .line 120
    add-int/2addr p2, v2

    .line 121
    iget v2, p0, LR0/e;->e:I

    .line 122
    .line 123
    add-int/2addr v2, p1

    .line 124
    iput v2, p0, LR0/e;->e:I

    .line 125
    .line 126
    move v3, v0

    .line 127
    :cond_6
    iget v2, p0, LR0/e;->e:I

    .line 128
    .line 129
    sub-int/2addr v2, p1

    .line 130
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v4, v7, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    add-int v2, v3, v6

    .line 138
    .line 139
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    add-int/2addr v7, v2

    .line 144
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 145
    .line 146
    .line 147
    move-result v8

    .line 148
    add-int/2addr v8, p2

    .line 149
    if-eqz p5, :cond_7

    .line 150
    .line 151
    sub-int v2, p4, v7

    .line 152
    .line 153
    sub-int v7, p4, v3

    .line 154
    .line 155
    sub-int/2addr v7, v6

    .line 156
    invoke-virtual {v4, v2, p2, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 157
    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_7
    invoke-virtual {v4, v2, p2, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 161
    .line 162
    .line 163
    :goto_5
    add-int/2addr v6, v5

    .line 164
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    add-int/2addr v2, v6

    .line 169
    iget v4, p0, LR0/e;->c:I

    .line 170
    .line 171
    add-int/2addr v2, v4

    .line 172
    add-int/2addr v3, v2

    .line 173
    move v2, v8

    .line 174
    :goto_6
    add-int/lit8 v1, v1, 0x1

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_8
    return-void
.end method

.method public final onMeasure(II)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/high16 v5, 0x40000000    # 2.0f

    .line 20
    .line 21
    const/high16 v6, -0x80000000

    .line 22
    .line 23
    if-eq v2, v6, :cond_1

    .line 24
    .line 25
    if-ne v2, v5, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const v7, 0x7fffffff

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    move v7, v1

    .line 33
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 38
    .line 39
    .line 40
    move-result v9

    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 42
    .line 43
    .line 44
    move-result v10

    .line 45
    sub-int/2addr v7, v10

    .line 46
    move v11, v9

    .line 47
    const/4 v12, 0x0

    .line 48
    const/4 v13, 0x0

    .line 49
    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 50
    .line 51
    .line 52
    move-result v14

    .line 53
    if-ge v12, v14, :cond_7

    .line 54
    .line 55
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v14

    .line 59
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    .line 60
    .line 61
    .line 62
    move-result v15

    .line 63
    const/16 v10, 0x8

    .line 64
    .line 65
    if-ne v15, v10, :cond_2

    .line 66
    .line 67
    move/from16 v10, p1

    .line 68
    .line 69
    move/from16 v15, p2

    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_2
    move/from16 v10, p1

    .line 73
    .line 74
    move/from16 v15, p2

    .line 75
    .line 76
    invoke-virtual {v0, v14, v10, v15}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    instance-of v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 84
    .line 85
    if-eqz v6, :cond_3

    .line 86
    .line 87
    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 88
    .line 89
    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 90
    .line 91
    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_3
    const/4 v5, 0x0

    .line 95
    const/4 v6, 0x0

    .line 96
    :goto_3
    add-int v16, v8, v6

    .line 97
    .line 98
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 99
    .line 100
    .line 101
    move-result v17

    .line 102
    move/from16 v18, v5

    .line 103
    .line 104
    add-int v5, v17, v16

    .line 105
    .line 106
    if-le v5, v7, :cond_4

    .line 107
    .line 108
    move-object v5, v0

    .line 109
    check-cast v5, Lcom/google/android/material/chip/ChipGroup;

    .line 110
    .line 111
    iget-boolean v5, v5, LR0/e;->d:Z

    .line 112
    .line 113
    if-nez v5, :cond_4

    .line 114
    .line 115
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    iget v5, v0, LR0/e;->b:I

    .line 120
    .line 121
    add-int v11, v9, v5

    .line 122
    .line 123
    :cond_4
    add-int v5, v8, v6

    .line 124
    .line 125
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    add-int/2addr v9, v5

    .line 130
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    add-int/2addr v5, v11

    .line 135
    if-le v9, v13, :cond_5

    .line 136
    .line 137
    move v13, v9

    .line 138
    :cond_5
    add-int v6, v6, v18

    .line 139
    .line 140
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 141
    .line 142
    .line 143
    move-result v9

    .line 144
    add-int/2addr v9, v6

    .line 145
    iget v6, v0, LR0/e;->c:I

    .line 146
    .line 147
    add-int/2addr v9, v6

    .line 148
    add-int/2addr v9, v8

    .line 149
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    add-int/lit8 v6, v6, -0x1

    .line 154
    .line 155
    if-ne v12, v6, :cond_6

    .line 156
    .line 157
    add-int v13, v13, v18

    .line 158
    .line 159
    :cond_6
    move v8, v9

    .line 160
    move v9, v5

    .line 161
    :goto_4
    add-int/lit8 v12, v12, 0x1

    .line 162
    .line 163
    const/high16 v5, 0x40000000    # 2.0f

    .line 164
    .line 165
    const/high16 v6, -0x80000000

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    add-int/2addr v5, v13

    .line 173
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    add-int/2addr v6, v9

    .line 178
    const/high16 v7, -0x80000000

    .line 179
    .line 180
    if-eq v2, v7, :cond_8

    .line 181
    .line 182
    const/high16 v8, 0x40000000    # 2.0f

    .line 183
    .line 184
    if-eq v2, v8, :cond_9

    .line 185
    .line 186
    move v1, v5

    .line 187
    goto :goto_5

    .line 188
    :cond_8
    const/high16 v8, 0x40000000    # 2.0f

    .line 189
    .line 190
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    :cond_9
    :goto_5
    if-eq v4, v7, :cond_a

    .line 195
    .line 196
    if-eq v4, v8, :cond_b

    .line 197
    .line 198
    move v3, v6

    .line 199
    goto :goto_6

    .line 200
    :cond_a
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    :cond_b
    :goto_6
    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 205
    .line 206
    .line 207
    return-void
.end method

.method public setItemSpacing(I)V
    .locals 0

    .line 1
    iput p1, p0, LR0/e;->c:I

    .line 2
    .line 3
    return-void
.end method

.method public setLineSpacing(I)V
    .locals 0

    .line 1
    iput p1, p0, LR0/e;->b:I

    .line 2
    .line 3
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, LR0/e;->d:Z

    .line 2
    .line 3
    return-void
.end method
