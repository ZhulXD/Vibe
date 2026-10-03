.class public final LP/r;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:[I

.field public final c:[I

.field public final d:LA1/b;

.field public final e:I

.field public final f:I

.field public final g:Z


# direct methods
.method public constructor <init>(LA1/b;Ljava/util/ArrayList;[I[I)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, LP/r;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p3, p0, LP/r;->b:[I

    .line 7
    .line 8
    iput-object p4, p0, LP/r;->c:[I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([II)V

    .line 12
    .line 13
    .line 14
    invoke-static {p4, v0}, Ljava/util/Arrays;->fill([II)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, LP/r;->d:LA1/b;

    .line 18
    .line 19
    iget-object v1, p1, LA1/b;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, LP/d;

    .line 22
    .line 23
    iget-object v2, v1, LP/d;->b:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iput v2, p0, LP/r;->e:I

    .line 30
    .line 31
    iget-object v1, v1, LP/d;->c:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    iput v1, p0, LP/r;->f:I

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    iput-boolean v3, p0, LP/r;->g:Z

    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, LP/q;

    .line 55
    .line 56
    :goto_0
    if-eqz v4, :cond_1

    .line 57
    .line 58
    iget v5, v4, LP/q;->a:I

    .line 59
    .line 60
    if-nez v5, :cond_1

    .line 61
    .line 62
    iget v4, v4, LP/q;->b:I

    .line 63
    .line 64
    if-eqz v4, :cond_2

    .line 65
    .line 66
    :cond_1
    new-instance v4, LP/q;

    .line 67
    .line 68
    invoke-direct {v4, v0, v0, v0}, LP/q;-><init>(III)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    new-instance v4, LP/q;

    .line 75
    .line 76
    invoke-direct {v4, v2, v1, v0}, LP/q;-><init>(III)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    move v2, v0

    .line 87
    :cond_3
    if-ge v2, v1, :cond_5

    .line 88
    .line 89
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    add-int/lit8 v2, v2, 0x1

    .line 94
    .line 95
    check-cast v4, LP/q;

    .line 96
    .line 97
    move v5, v0

    .line 98
    :goto_1
    iget v6, v4, LP/q;->c:I

    .line 99
    .line 100
    if-ge v5, v6, :cond_3

    .line 101
    .line 102
    iget v6, v4, LP/q;->a:I

    .line 103
    .line 104
    add-int/2addr v6, v5

    .line 105
    iget v7, v4, LP/q;->b:I

    .line 106
    .line 107
    add-int/2addr v7, v5

    .line 108
    invoke-virtual {p1, v6, v7}, LA1/b;->j(II)Z

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    if-eqz v8, :cond_4

    .line 113
    .line 114
    move v8, v3

    .line 115
    goto :goto_2

    .line 116
    :cond_4
    const/4 v8, 0x2

    .line 117
    :goto_2
    shl-int/lit8 v9, v7, 0x4

    .line 118
    .line 119
    or-int/2addr v9, v8

    .line 120
    aput v9, p3, v6

    .line 121
    .line 122
    shl-int/lit8 v6, v6, 0x4

    .line 123
    .line 124
    or-int/2addr v6, v8

    .line 125
    aput v6, p4, v7

    .line 126
    .line 127
    add-int/lit8 v5, v5, 0x1

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_5
    iget-boolean v1, p0, LP/r;->g:Z

    .line 131
    .line 132
    if-eqz v1, :cond_b

    .line 133
    .line 134
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    move v2, v0

    .line 139
    move v3, v2

    .line 140
    :goto_3
    if-ge v3, v1, :cond_b

    .line 141
    .line 142
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    add-int/lit8 v3, v3, 0x1

    .line 147
    .line 148
    check-cast v4, LP/q;

    .line 149
    .line 150
    :goto_4
    iget v5, v4, LP/q;->a:I

    .line 151
    .line 152
    if-ge v2, v5, :cond_a

    .line 153
    .line 154
    aget v5, p3, v2

    .line 155
    .line 156
    if-nez v5, :cond_9

    .line 157
    .line 158
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    move v6, v0

    .line 163
    move v7, v6

    .line 164
    :goto_5
    if-ge v6, v5, :cond_9

    .line 165
    .line 166
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    check-cast v8, LP/q;

    .line 171
    .line 172
    :goto_6
    iget v9, v8, LP/q;->b:I

    .line 173
    .line 174
    if-ge v7, v9, :cond_8

    .line 175
    .line 176
    aget v9, p4, v7

    .line 177
    .line 178
    if-nez v9, :cond_7

    .line 179
    .line 180
    invoke-virtual {p1, v2, v7}, LA1/b;->k(II)Z

    .line 181
    .line 182
    .line 183
    move-result v9

    .line 184
    if-eqz v9, :cond_7

    .line 185
    .line 186
    invoke-virtual {p1, v2, v7}, LA1/b;->j(II)Z

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    if-eqz v5, :cond_6

    .line 191
    .line 192
    const/16 v5, 0x8

    .line 193
    .line 194
    goto :goto_7

    .line 195
    :cond_6
    const/4 v5, 0x4

    .line 196
    :goto_7
    shl-int/lit8 v6, v7, 0x4

    .line 197
    .line 198
    or-int/2addr v6, v5

    .line 199
    aput v6, p3, v2

    .line 200
    .line 201
    shl-int/lit8 v6, v2, 0x4

    .line 202
    .line 203
    or-int/2addr v5, v6

    .line 204
    aput v5, p4, v7

    .line 205
    .line 206
    goto :goto_8

    .line 207
    :cond_7
    add-int/lit8 v7, v7, 0x1

    .line 208
    .line 209
    goto :goto_6

    .line 210
    :cond_8
    iget v7, v8, LP/q;->c:I

    .line 211
    .line 212
    add-int/2addr v7, v9

    .line 213
    add-int/lit8 v6, v6, 0x1

    .line 214
    .line 215
    goto :goto_5

    .line 216
    :cond_9
    :goto_8
    add-int/lit8 v2, v2, 0x1

    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_a
    iget v2, v4, LP/q;->c:I

    .line 220
    .line 221
    add-int/2addr v2, v5

    .line 222
    goto :goto_3

    .line 223
    :cond_b
    return-void
.end method

.method public static a(Ljava/util/ArrayDeque;IZ)LP/s;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, LP/s;

    .line 16
    .line 17
    iget v1, v0, LP/s;->a:I

    .line 18
    .line 19
    if-ne v1, p1, :cond_0

    .line 20
    .line 21
    iget-boolean v1, v0, LP/s;->c:Z

    .line 22
    .line 23
    if-ne v1, p2, :cond_0

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, LP/s;

    .line 41
    .line 42
    if-eqz p2, :cond_2

    .line 43
    .line 44
    iget v1, p1, LP/s;->b:I

    .line 45
    .line 46
    add-int/lit8 v1, v1, -0x1

    .line 47
    .line 48
    iput v1, p1, LP/s;->b:I

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget v1, p1, LP/s;->b:I

    .line 52
    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    iput v1, p1, LP/s;->b:I

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    return-object v0
.end method
