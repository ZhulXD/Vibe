.class public LS/B;
.super LS/v;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public F:Ljava/util/ArrayList;

.field public G:Z

.field public H:I

.field public I:Z

.field public J:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LS/v;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, LS/B;->G:Z

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, LS/B;->I:Z

    .line 16
    .line 17
    iput v0, p0, LS/B;->J:I

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, LS/v;->y:J

    .line 4
    .line 5
    new-instance v0, LS/A;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, LS/A;-><init>(LS/v;I)V

    .line 9
    .line 10
    .line 11
    :goto_0
    iget-object v2, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ge v1, v2, :cond_1

    .line 18
    .line 19
    iget-object v2, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, LS/v;

    .line 26
    .line 27
    invoke-virtual {v2, v0}, LS/v;->a(LS/t;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, LS/v;->A()V

    .line 31
    .line 32
    .line 33
    iget-wide v3, v2, LS/v;->y:J

    .line 34
    .line 35
    iget-boolean v5, p0, LS/B;->G:Z

    .line 36
    .line 37
    if-eqz v5, :cond_0

    .line 38
    .line 39
    iget-wide v5, p0, LS/v;->y:J

    .line 40
    .line 41
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    iput-wide v2, p0, LS/v;->y:J

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    iget-wide v5, p0, LS/v;->y:J

    .line 49
    .line 50
    iput-wide v5, v2, LS/v;->A:J

    .line 51
    .line 52
    add-long/2addr v5, v3

    .line 53
    iput-wide v5, p0, LS/v;->y:J

    .line 54
    .line 55
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    return-void
.end method

.method public final B(LS/t;)LS/v;
    .locals 0

    .line 1
    invoke-super {p0, p1}, LS/v;->B(LS/t;)LS/v;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final C(Landroid/view/View;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, LS/v;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, LS/v;->C(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, LS/v;->g:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final D(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, LS/v;->D(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, LS/v;

    .line 20
    .line 21
    invoke-virtual {v2, p1}, LS/v;->D(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public final E()V
    .locals 6

    .line 1
    iget-object v0, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, LS/v;->M()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, LS/v;->n()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, LS/A;

    .line 17
    .line 18
    invoke-direct {v0}, LS/A;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p0, v0, LS/A;->b:LS/v;

    .line 22
    .line 23
    iget-object v1, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x0

    .line 30
    move v4, v3

    .line 31
    :goto_0
    if-ge v4, v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    add-int/lit8 v4, v4, 0x1

    .line 38
    .line 39
    check-cast v5, LS/v;

    .line 40
    .line 41
    invoke-virtual {v5, v0}, LS/v;->a(LS/t;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iput v0, p0, LS/B;->H:I

    .line 52
    .line 53
    iget-boolean v0, p0, LS/B;->G:Z

    .line 54
    .line 55
    if-nez v0, :cond_3

    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    :goto_1
    iget-object v1, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-ge v0, v1, :cond_2

    .line 65
    .line 66
    iget-object v1, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 67
    .line 68
    add-int/lit8 v2, v0, -0x1

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, LS/v;

    .line 75
    .line 76
    iget-object v2, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, LS/v;

    .line 83
    .line 84
    new-instance v4, LS/A;

    .line 85
    .line 86
    const/4 v5, 0x2

    .line 87
    invoke-direct {v4, v2, v5}, LS/A;-><init>(LS/v;I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v4}, LS/v;->a(LS/t;)V

    .line 91
    .line 92
    .line 93
    add-int/lit8 v0, v0, 0x1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    iget-object v0, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, LS/v;

    .line 103
    .line 104
    if-eqz v0, :cond_4

    .line 105
    .line 106
    invoke-virtual {v0}, LS/v;->E()V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_3
    iget-object v0, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    :goto_2
    if-ge v3, v1, :cond_4

    .line 117
    .line 118
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    add-int/lit8 v3, v3, 0x1

    .line 123
    .line 124
    check-cast v2, LS/v;

    .line 125
    .line 126
    invoke-virtual {v2}, LS/v;->E()V

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_4
    return-void
.end method

.method public final F(JJ)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v3, p3

    .line 6
    .line 7
    iget-wide v5, v0, LS/v;->y:J

    .line 8
    .line 9
    iget-object v7, v0, LS/v;->j:LS/B;

    .line 10
    .line 11
    const-wide/16 v8, 0x0

    .line 12
    .line 13
    if-eqz v7, :cond_1

    .line 14
    .line 15
    cmp-long v7, v1, v8

    .line 16
    .line 17
    if-gez v7, :cond_0

    .line 18
    .line 19
    cmp-long v7, v3, v8

    .line 20
    .line 21
    if-ltz v7, :cond_11

    .line 22
    .line 23
    :cond_0
    cmp-long v7, v1, v5

    .line 24
    .line 25
    if-lez v7, :cond_1

    .line 26
    .line 27
    cmp-long v7, v3, v5

    .line 28
    .line 29
    if-lez v7, :cond_1

    .line 30
    .line 31
    goto/16 :goto_8

    .line 32
    .line 33
    :cond_1
    cmp-long v7, v1, v3

    .line 34
    .line 35
    const/4 v10, 0x0

    .line 36
    const/4 v11, 0x1

    .line 37
    if-gez v7, :cond_2

    .line 38
    .line 39
    move v12, v11

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    move v12, v10

    .line 42
    :goto_0
    cmp-long v13, v1, v8

    .line 43
    .line 44
    if-ltz v13, :cond_3

    .line 45
    .line 46
    cmp-long v14, v3, v8

    .line 47
    .line 48
    if-ltz v14, :cond_4

    .line 49
    .line 50
    :cond_3
    cmp-long v14, v1, v5

    .line 51
    .line 52
    if-gtz v14, :cond_5

    .line 53
    .line 54
    cmp-long v14, v3, v5

    .line 55
    .line 56
    if-lez v14, :cond_5

    .line 57
    .line 58
    :cond_4
    iput-boolean v10, v0, LS/v;->s:Z

    .line 59
    .line 60
    sget-object v14, LS/u;->b:LS/u;

    .line 61
    .line 62
    invoke-virtual {v0, v0, v14, v12}, LS/v;->y(LS/v;LS/u;Z)V

    .line 63
    .line 64
    .line 65
    :cond_5
    iget-boolean v14, v0, LS/B;->G:Z

    .line 66
    .line 67
    if-eqz v14, :cond_7

    .line 68
    .line 69
    :goto_1
    iget-object v7, v0, LS/B;->F:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-ge v10, v7, :cond_6

    .line 76
    .line 77
    iget-object v7, v0, LS/B;->F:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    check-cast v7, LS/v;

    .line 84
    .line 85
    invoke-virtual {v7, v1, v2, v3, v4}, LS/v;->F(JJ)V

    .line 86
    .line 87
    .line 88
    add-int/lit8 v10, v10, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_6
    move-wide/from16 v16, v8

    .line 92
    .line 93
    goto/16 :goto_7

    .line 94
    .line 95
    :cond_7
    move v10, v11

    .line 96
    :goto_2
    iget-object v14, v0, LS/B;->F:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 99
    .line 100
    .line 101
    move-result v14

    .line 102
    if-ge v10, v14, :cond_9

    .line 103
    .line 104
    iget-object v14, v0, LS/B;->F:Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v14

    .line 110
    check-cast v14, LS/v;

    .line 111
    .line 112
    iget-wide v14, v14, LS/v;->A:J

    .line 113
    .line 114
    cmp-long v14, v14, v3

    .line 115
    .line 116
    if-lez v14, :cond_8

    .line 117
    .line 118
    :goto_3
    sub-int/2addr v10, v11

    .line 119
    goto :goto_4

    .line 120
    :cond_8
    add-int/lit8 v10, v10, 0x1

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_9
    iget-object v10, v0, LS/B;->F:Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 126
    .line 127
    .line 128
    move-result v10

    .line 129
    goto :goto_3

    .line 130
    :goto_4
    if-ltz v7, :cond_b

    .line 131
    .line 132
    :goto_5
    iget-object v7, v0, LS/B;->F:Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    if-ge v10, v7, :cond_6

    .line 139
    .line 140
    iget-object v7, v0, LS/B;->F:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    check-cast v7, LS/v;

    .line 147
    .line 148
    iget-wide v14, v7, LS/v;->A:J

    .line 149
    .line 150
    move-wide/from16 v16, v8

    .line 151
    .line 152
    sub-long v8, v1, v14

    .line 153
    .line 154
    cmp-long v18, v8, v16

    .line 155
    .line 156
    if-gez v18, :cond_a

    .line 157
    .line 158
    goto :goto_7

    .line 159
    :cond_a
    sub-long v14, v3, v14

    .line 160
    .line 161
    invoke-virtual {v7, v8, v9, v14, v15}, LS/v;->F(JJ)V

    .line 162
    .line 163
    .line 164
    add-int/lit8 v10, v10, 0x1

    .line 165
    .line 166
    move-wide/from16 v8, v16

    .line 167
    .line 168
    goto :goto_5

    .line 169
    :cond_b
    move-wide/from16 v16, v8

    .line 170
    .line 171
    :goto_6
    if-ltz v10, :cond_d

    .line 172
    .line 173
    iget-object v7, v0, LS/B;->F:Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    check-cast v7, LS/v;

    .line 180
    .line 181
    iget-wide v8, v7, LS/v;->A:J

    .line 182
    .line 183
    sub-long v14, v1, v8

    .line 184
    .line 185
    sub-long v8, v3, v8

    .line 186
    .line 187
    invoke-virtual {v7, v14, v15, v8, v9}, LS/v;->F(JJ)V

    .line 188
    .line 189
    .line 190
    cmp-long v7, v14, v16

    .line 191
    .line 192
    if-ltz v7, :cond_c

    .line 193
    .line 194
    goto :goto_7

    .line 195
    :cond_c
    add-int/lit8 v10, v10, -0x1

    .line 196
    .line 197
    goto :goto_6

    .line 198
    :cond_d
    :goto_7
    iget-object v7, v0, LS/v;->j:LS/B;

    .line 199
    .line 200
    if-eqz v7, :cond_11

    .line 201
    .line 202
    cmp-long v1, v1, v5

    .line 203
    .line 204
    if-lez v1, :cond_e

    .line 205
    .line 206
    cmp-long v2, v3, v5

    .line 207
    .line 208
    if-lez v2, :cond_f

    .line 209
    .line 210
    :cond_e
    if-gez v13, :cond_11

    .line 211
    .line 212
    cmp-long v2, v3, v16

    .line 213
    .line 214
    if-ltz v2, :cond_11

    .line 215
    .line 216
    :cond_f
    if-lez v1, :cond_10

    .line 217
    .line 218
    iput-boolean v11, v0, LS/v;->s:Z

    .line 219
    .line 220
    :cond_10
    sget-object v1, LS/u;->c:LS/u;

    .line 221
    .line 222
    invoke-virtual {v0, v0, v1, v12}, LS/v;->y(LS/v;LS/u;Z)V

    .line 223
    .line 224
    .line 225
    :cond_11
    :goto_8
    return-void
.end method

.method public final bridge synthetic G(J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LS/B;->Q(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final H(Lcom/bumptech/glide/c;)V
    .locals 3

    .line 1
    iput-object p1, p0, LS/v;->w:Lcom/bumptech/glide/c;

    .line 2
    .line 3
    iget v0, p0, LS/B;->J:I

    .line 4
    .line 5
    or-int/lit8 v0, v0, 0x8

    .line 6
    .line 7
    iput v0, p0, LS/B;->J:I

    .line 8
    .line 9
    iget-object v0, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    if-ge v1, v0, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, LS/v;

    .line 25
    .line 26
    invoke-virtual {v2, p1}, LS/v;->H(Lcom/bumptech/glide/c;)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public final bridge synthetic I(Landroid/animation/TimeInterpolator;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LS/B;->R(Landroid/animation/TimeInterpolator;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final J(LY0/e;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, LS/v;->J(LY0/e;)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, LS/B;->J:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x4

    .line 7
    .line 8
    iput v0, p0, LS/B;->J:I

    .line 9
    .line 10
    iget-object v0, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget-object v1, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-ge v0, v1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, LS/v;

    .line 30
    .line 31
    invoke-virtual {v1, p1}, LS/v;->J(LY0/e;)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method public final K()V
    .locals 3

    .line 1
    iget v0, p0, LS/B;->J:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, LS/B;->J:I

    .line 6
    .line 7
    iget-object v0, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, v0, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, LS/v;

    .line 23
    .line 24
    invoke-virtual {v2}, LS/v;->K()V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method public final L(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, LS/v;->c:J

    .line 2
    .line 3
    return-void
.end method

.method public final N(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-super {p0, p1}, LS/v;->N(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-ge v1, v2, :cond_0

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, "\n"

    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, LS/v;

    .line 34
    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v4, "  "

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v0, v3}, LS/v;->N(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    add-int/lit8 v1, v1, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    return-object v0
.end method

.method public final O(LS/v;)V
    .locals 4

    .line 1
    iget-object v0, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iput-object p0, p1, LS/v;->j:LS/B;

    .line 7
    .line 8
    iget-wide v0, p0, LS/v;->d:J

    .line 9
    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    cmp-long v2, v0, v2

    .line 13
    .line 14
    if-ltz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, LS/v;->G(J)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget v0, p0, LS/B;->J:I

    .line 20
    .line 21
    and-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, LS/v;->e:Landroid/animation/TimeInterpolator;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, LS/v;->I(Landroid/animation/TimeInterpolator;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget v0, p0, LS/B;->J:I

    .line 31
    .line 32
    and-int/lit8 v0, v0, 0x2

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1}, LS/v;->K()V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget v0, p0, LS/B;->J:I

    .line 40
    .line 41
    and-int/lit8 v0, v0, 0x4

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    iget-object v0, p0, LS/v;->x:LY0/e;

    .line 46
    .line 47
    invoke-virtual {p1, v0}, LS/v;->J(LY0/e;)V

    .line 48
    .line 49
    .line 50
    :cond_3
    iget v0, p0, LS/B;->J:I

    .line 51
    .line 52
    and-int/lit8 v0, v0, 0x8

    .line 53
    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    iget-object v0, p0, LS/v;->w:Lcom/bumptech/glide/c;

    .line 57
    .line 58
    invoke-virtual {p1, v0}, LS/v;->H(Lcom/bumptech/glide/c;)V

    .line 59
    .line 60
    .line 61
    :cond_4
    return-void
.end method

.method public final P(I)LS/v;
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lt p1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, LS/v;

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 22
    return-object p1
.end method

.method public final Q(J)V
    .locals 3

    .line 1
    iput-wide p1, p0, LS/v;->d:J

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    cmp-long v0, p1, v0

    .line 6
    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    if-ge v1, v0, :cond_0

    .line 19
    .line 20
    iget-object v2, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, LS/v;

    .line 27
    .line 28
    invoke-virtual {v2, p1, p2}, LS/v;->G(J)V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method public final R(Landroid/animation/TimeInterpolator;)V
    .locals 3

    .line 1
    iget v0, p0, LS/B;->J:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, LS/B;->J:I

    .line 6
    .line 7
    iget-object v0, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    if-ge v1, v0, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, LS/v;

    .line 25
    .line 26
    invoke-virtual {v2, p1}, LS/v;->I(Landroid/animation/TimeInterpolator;)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iput-object p1, p0, LS/v;->e:Landroid/animation/TimeInterpolator;

    .line 33
    .line 34
    return-void
.end method

.method public final S(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, LS/B;->G:Z

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    .line 11
    .line 12
    const-string v1, "Invalid parameter for TransitionSet ordering: "

    .line 13
    .line 14
    invoke-static {p1, v1}, LE/b;->i(ILjava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {v0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    :cond_1
    iput-boolean v0, p0, LS/B;->G:Z

    .line 23
    .line 24
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, LS/v;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, LS/v;->b(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, LS/v;->g:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, LS/B;->k()LS/v;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final d()V
    .locals 3

    .line 1
    invoke-super {p0}, LS/v;->d()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, LS/v;

    .line 20
    .line 21
    invoke-virtual {v2}, LS/v;->d()V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public final e(LS/E;)V
    .locals 6

    .line 1
    iget-object v0, p1, LS/E;->b:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, LS/v;->w(Landroid/view/View;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    check-cast v4, LS/v;

    .line 25
    .line 26
    invoke-virtual {v4, v0}, LS/v;->w(Landroid/view/View;)Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    invoke-virtual {v4, p1}, LS/v;->e(LS/E;)V

    .line 33
    .line 34
    .line 35
    iget-object v5, p1, LS/E;->c:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method

.method public final g(LS/E;)V
    .locals 3

    .line 1
    iget-object v0, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, LS/v;

    .line 17
    .line 18
    invoke-virtual {v2, p1}, LS/v;->g(LS/E;)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method public final h(LS/E;)V
    .locals 6

    .line 1
    iget-object v0, p1, LS/E;->b:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, LS/v;->w(Landroid/view/View;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    check-cast v4, LS/v;

    .line 25
    .line 26
    invoke-virtual {v4, v0}, LS/v;->w(Landroid/view/View;)Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    invoke-virtual {v4, p1}, LS/v;->h(LS/E;)V

    .line 33
    .line 34
    .line 35
    iget-object v5, p1, LS/E;->c:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method

.method public final k()LS/v;
    .locals 5

    .line 1
    invoke-super {p0}, LS/v;->k()LS/v;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, LS/B;

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, v0, LS/B;->F:Ljava/util/ArrayList;

    .line 13
    .line 14
    iget-object v1, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, v1, :cond_0

    .line 22
    .line 23
    iget-object v3, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, LS/v;

    .line 30
    .line 31
    invoke-virtual {v3}, LS/v;->k()LS/v;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget-object v4, v0, LS/B;->F:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    iput-object v0, v3, LS/v;->j:LS/B;

    .line 41
    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    return-object v0
.end method

.method public final m(Landroid/view/ViewGroup;LN1/w;LN1/w;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 11

    .line 1
    iget-wide v0, p0, LS/v;->c:J

    .line 2
    .line 3
    iget-object v2, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ge v3, v2, :cond_3

    .line 11
    .line 12
    iget-object v4, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    move-object v5, v4

    .line 19
    check-cast v5, LS/v;

    .line 20
    .line 21
    const-wide/16 v6, 0x0

    .line 22
    .line 23
    cmp-long v4, v0, v6

    .line 24
    .line 25
    if-lez v4, :cond_0

    .line 26
    .line 27
    iget-boolean v4, p0, LS/B;->G:Z

    .line 28
    .line 29
    if-nez v4, :cond_1

    .line 30
    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_0
    :goto_1
    move-object v6, p1

    .line 35
    move-object v7, p2

    .line 36
    move-object v8, p3

    .line 37
    move-object v9, p4

    .line 38
    move-object/from16 v10, p5

    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_1
    :goto_2
    iget-wide v8, v5, LS/v;->c:J

    .line 42
    .line 43
    cmp-long v4, v8, v6

    .line 44
    .line 45
    if-lez v4, :cond_2

    .line 46
    .line 47
    add-long/2addr v8, v0

    .line 48
    invoke-virtual {v5, v8, v9}, LS/v;->L(J)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    invoke-virtual {v5, v0, v1}, LS/v;->L(J)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :goto_3
    invoke-virtual/range {v5 .. v10}, LS/v;->m(Landroid/view/ViewGroup;LN1/w;LN1/w;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 57
    .line 58
    .line 59
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    return-void
.end method

.method public final t()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, LS/v;

    .line 18
    .line 19
    invoke-virtual {v2}, LS/v;->t()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    return v0

    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return v0
.end method

.method public final u()Z
    .locals 4

    .line 1
    iget-object v0, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    iget-object v3, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, LS/v;

    .line 18
    .line 19
    invoke-virtual {v3}, LS/v;->u()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    return v1

    .line 26
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x1

    .line 30
    return v0
.end method

.method public final z(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, LS/v;->z(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, LS/B;->F:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, LS/v;

    .line 20
    .line 21
    invoke-virtual {v2, p1}, LS/v;->z(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method
