.class public abstract LT1/l;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    const-string v2, "OggS"

    .line 10
    .line 11
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "getBytes(...)"

    .line 16
    .line 17
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v4, "RIFF"

    .line 21
    .line 22
    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v5, "TLG0"

    .line 30
    .line 31
    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v6, "TLG5"

    .line 39
    .line 40
    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v7, "TLG6"

    .line 48
    .line 49
    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    move-object v3, v4

    .line 57
    move-object v4, v5

    .line 58
    move-object v5, v6

    .line 59
    move-object v6, v0

    .line 60
    filled-new-array/range {v1 .. v6}, [[B

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    sput-object v0, LT1/l;->a:Ljava/util/List;

    .line 69
    .line 70
    return-void

    .line 71
    :array_0
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
    .end array-data
.end method

.method public static a([BJ)I
    .locals 13

    .line 1
    const-string v0, "head"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lkotlin/ranges/IntRange;

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v0, v2, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/16 v4, 0x8

    .line 31
    .line 32
    const-wide/16 v5, 0xff

    .line 33
    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    move-object v3, v0

    .line 37
    check-cast v3, Lkotlin/collections/IntIterator;

    .line 38
    .line 39
    invoke-virtual {v3}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    mul-int/2addr v3, v4

    .line 44
    ushr-long v3, p1, v3

    .line 45
    .line 46
    and-long/2addr v3, v5

    .line 47
    long-to-int v3, v3

    .line 48
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    ushr-long v3, p1, v4

    .line 61
    .line 62
    xor-long v7, p1, v3

    .line 63
    .line 64
    const/16 v1, 0x10

    .line 65
    .line 66
    ushr-long v9, p1, v1

    .line 67
    .line 68
    xor-long/2addr v7, v9

    .line 69
    const/16 v1, 0x18

    .line 70
    .line 71
    ushr-long v11, p1, v1

    .line 72
    .line 73
    xor-long/2addr v7, v11

    .line 74
    and-long/2addr v7, v5

    .line 75
    long-to-int v1, v7

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    add-long/2addr v3, p1

    .line 84
    add-long/2addr v3, v9

    .line 85
    add-long/2addr v3, v11

    .line 86
    and-long/2addr v3, v5

    .line 87
    long-to-int v1, v3

    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    const/4 v1, 0x2

    .line 96
    new-array v3, v1, [B

    .line 97
    .line 98
    fill-array-data v3, :array_0

    .line 99
    .line 100
    .line 101
    new-array v1, v1, [B

    .line 102
    .line 103
    fill-array-data v1, :array_1

    .line 104
    .line 105
    .line 106
    filled-new-array {v3, v1}, [[B

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    sget-object v3, LT1/l;->a:Ljava/util/List;

    .line 115
    .line 116
    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-eqz v4, :cond_6

    .line 129
    .line 130
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    check-cast v4, Ljava/lang/Number;

    .line 135
    .line 136
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-eqz v1, :cond_2

    .line 141
    .line 142
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 143
    .line 144
    .line 145
    move-result v7

    .line 146
    if-eqz v7, :cond_2

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    .line 155
    .line 156
    move-result v8

    .line 157
    if-eqz v8, :cond_1

    .line 158
    .line 159
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    check-cast v8, [B

    .line 164
    .line 165
    array-length v9, p0

    .line 166
    array-length v10, v8

    .line 167
    if-lt v9, v10, :cond_3

    .line 168
    .line 169
    invoke-static {v8}, Lkotlin/collections/ArraysKt;->getIndices([B)Lkotlin/ranges/IntRange;

    .line 170
    .line 171
    .line 172
    move-result-object v9

    .line 173
    instance-of v10, v9, Ljava/util/Collection;

    .line 174
    .line 175
    if-eqz v10, :cond_4

    .line 176
    .line 177
    move-object v10, v9

    .line 178
    check-cast v10, Ljava/util/Collection;

    .line 179
    .line 180
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    .line 181
    .line 182
    .line 183
    move-result v10

    .line 184
    if-eqz v10, :cond_4

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_4
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 192
    .line 193
    .line 194
    move-result v10

    .line 195
    if-eqz v10, :cond_5

    .line 196
    .line 197
    move-object v10, v9

    .line 198
    check-cast v10, Lkotlin/collections/IntIterator;

    .line 199
    .line 200
    invoke-virtual {v10}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 201
    .line 202
    .line 203
    move-result v10

    .line 204
    aget-byte v11, p0, v10

    .line 205
    .line 206
    and-int/lit16 v11, v11, 0xff

    .line 207
    .line 208
    xor-int/2addr v11, v4

    .line 209
    aget-byte v10, v8, v10

    .line 210
    .line 211
    and-int/lit16 v10, v10, 0xff

    .line 212
    .line 213
    if-ne v11, v10, :cond_3

    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_5
    :goto_3
    return v4

    .line 217
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    if-eqz v1, :cond_a

    .line 226
    .line 227
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    check-cast v1, Ljava/lang/Number;

    .line 232
    .line 233
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    array-length v3, p0

    .line 238
    if-nez v3, :cond_8

    .line 239
    .line 240
    goto :goto_4

    .line 241
    :cond_8
    aget-byte v3, p0, v2

    .line 242
    .line 243
    and-int/lit16 v3, v3, 0xff

    .line 244
    .line 245
    xor-int/2addr v3, v1

    .line 246
    const/16 v4, 0x3b

    .line 247
    .line 248
    if-eq v3, v4, :cond_9

    .line 249
    .line 250
    const/16 v4, 0x5b

    .line 251
    .line 252
    if-ne v3, v4, :cond_7

    .line 253
    .line 254
    :cond_9
    return v1

    .line 255
    :cond_a
    and-long p0, p1, v5

    .line 256
    .line 257
    long-to-int p0, p0

    .line 258
    return p0

    .line 259
    :array_0
    .array-data 1
        -0x1t
        -0x2t
    .end array-data

    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    nop

    .line 265
    :array_1
    .array-data 1
        0x2ft
        0x2ft
    .end array-data
.end method

.method public static b([B)Ljava/lang/Integer;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "head"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    array-length v1, v0

    .line 9
    const/4 v2, 0x3

    .line 10
    const/4 v3, 0x0

    .line 11
    const/16 v4, 0xff

    .line 12
    .line 13
    const/4 v5, 0x4

    .line 14
    if-lt v1, v5, :cond_3

    .line 15
    .line 16
    sget-object v1, LT1/l;->a:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    if-eqz v6, :cond_3

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    check-cast v6, [B

    .line 33
    .line 34
    aget-byte v7, v0, v3

    .line 35
    .line 36
    and-int/2addr v7, v4

    .line 37
    aget-byte v8, v6, v3

    .line 38
    .line 39
    and-int/2addr v8, v4

    .line 40
    xor-int/2addr v7, v8

    .line 41
    new-instance v8, Lkotlin/ranges/IntRange;

    .line 42
    .line 43
    invoke-direct {v8, v3, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 44
    .line 45
    .line 46
    instance-of v9, v8, Ljava/util/Collection;

    .line 47
    .line 48
    if-eqz v9, :cond_1

    .line 49
    .line 50
    move-object v9, v8

    .line 51
    check-cast v9, Ljava/util/Collection;

    .line 52
    .line 53
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    if-eqz v9, :cond_1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    if-eqz v9, :cond_2

    .line 69
    .line 70
    move-object v9, v8

    .line 71
    check-cast v9, Lkotlin/collections/IntIterator;

    .line 72
    .line 73
    invoke-virtual {v9}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    aget-byte v10, v0, v9

    .line 78
    .line 79
    and-int/2addr v10, v4

    .line 80
    xor-int/2addr v10, v7

    .line 81
    aget-byte v9, v6, v9

    .line 82
    .line 83
    and-int/2addr v9, v4

    .line 84
    if-ne v10, v9, :cond_0

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    return-object v0

    .line 92
    :cond_3
    const-string v1, "data"

    .line 93
    .line 94
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    array-length v1, v0

    .line 98
    const/4 v6, 0x5

    .line 99
    const/16 v7, 0xfe

    .line 100
    .line 101
    const/4 v9, 0x1

    .line 102
    if-ge v1, v6, :cond_5

    .line 103
    .line 104
    :cond_4
    const/4 v6, 0x0

    .line 105
    goto :goto_2

    .line 106
    :cond_5
    aget-byte v1, v0, v3

    .line 107
    .line 108
    and-int/2addr v1, v4

    .line 109
    xor-int/2addr v1, v7

    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    aget-byte v10, v0, v9

    .line 115
    .line 116
    and-int/2addr v10, v4

    .line 117
    xor-int/2addr v10, v1

    .line 118
    if-ne v10, v7, :cond_4

    .line 119
    .line 120
    aget-byte v2, v0, v2

    .line 121
    .line 122
    and-int/2addr v2, v4

    .line 123
    xor-int/2addr v2, v1

    .line 124
    if-ne v2, v4, :cond_4

    .line 125
    .line 126
    aget-byte v2, v0, v5

    .line 127
    .line 128
    and-int/2addr v2, v4

    .line 129
    xor-int/2addr v1, v2

    .line 130
    if-ne v1, v7, :cond_4

    .line 131
    .line 132
    :goto_2
    if-eqz v6, :cond_6

    .line 133
    .line 134
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    return-object v0

    .line 143
    :cond_6
    array-length v1, v0

    .line 144
    const/16 v2, 0x8

    .line 145
    .line 146
    if-lt v1, v2, :cond_12

    .line 147
    .line 148
    aget-byte v1, v0, v3

    .line 149
    .line 150
    and-int/2addr v1, v4

    .line 151
    xor-int/2addr v1, v4

    .line 152
    aget-byte v5, v0, v9

    .line 153
    .line 154
    and-int/2addr v5, v4

    .line 155
    xor-int/2addr v5, v1

    .line 156
    const/16 v6, 0x7f

    .line 157
    .line 158
    const/16 v11, 0x20

    .line 159
    .line 160
    const/16 v12, 0xd

    .line 161
    .line 162
    const/16 v13, 0xa

    .line 163
    .line 164
    const/16 v14, 0x9

    .line 165
    .line 166
    move v15, v2

    .line 167
    const/4 v2, 0x2

    .line 168
    if-ne v5, v7, :cond_d

    .line 169
    .line 170
    array-length v5, v0

    .line 171
    and-int/lit8 v5, v5, -0x2

    .line 172
    .line 173
    const/16 v7, 0x40

    .line 174
    .line 175
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    move v7, v2

    .line 180
    move v8, v3

    .line 181
    move/from16 v16, v8

    .line 182
    .line 183
    const/16 v17, 0x0

    .line 184
    .line 185
    :goto_3
    move/from16 v18, v9

    .line 186
    .line 187
    add-int/lit8 v9, v7, 0x1

    .line 188
    .line 189
    if-ge v9, v5, :cond_c

    .line 190
    .line 191
    const-wide v19, 0x3feccccccccccccdL    # 0.9

    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    aget-byte v10, v0, v7

    .line 197
    .line 198
    and-int/2addr v10, v4

    .line 199
    xor-int/2addr v10, v1

    .line 200
    aget-byte v9, v0, v9

    .line 201
    .line 202
    and-int/2addr v9, v4

    .line 203
    xor-int/2addr v9, v1

    .line 204
    shl-int/2addr v9, v15

    .line 205
    or-int/2addr v9, v10

    .line 206
    add-int/lit8 v3, v3, 0x1

    .line 207
    .line 208
    if-eq v9, v14, :cond_a

    .line 209
    .line 210
    if-eq v9, v13, :cond_a

    .line 211
    .line 212
    if-eq v9, v12, :cond_a

    .line 213
    .line 214
    if-gt v11, v9, :cond_7

    .line 215
    .line 216
    if-ge v9, v6, :cond_7

    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_7
    const/16 v10, 0x3040

    .line 220
    .line 221
    if-gt v10, v9, :cond_8

    .line 222
    .line 223
    const/16 v10, 0x3100

    .line 224
    .line 225
    if-ge v9, v10, :cond_8

    .line 226
    .line 227
    goto :goto_4

    .line 228
    :cond_8
    const/16 v10, 0x4e00

    .line 229
    .line 230
    if-gt v10, v9, :cond_9

    .line 231
    .line 232
    const v10, 0xa000

    .line 233
    .line 234
    .line 235
    if-ge v9, v10, :cond_9

    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_9
    const v10, 0xff00

    .line 239
    .line 240
    .line 241
    if-gt v10, v9, :cond_b

    .line 242
    .line 243
    const v10, 0xfff0

    .line 244
    .line 245
    .line 246
    if-ge v9, v10, :cond_b

    .line 247
    .line 248
    :cond_a
    :goto_4
    add-int/lit8 v8, v8, 0x1

    .line 249
    .line 250
    :cond_b
    add-int/lit8 v7, v7, 0x2

    .line 251
    .line 252
    move/from16 v9, v18

    .line 253
    .line 254
    goto :goto_3

    .line 255
    :cond_c
    const-wide v19, 0x3feccccccccccccdL    # 0.9

    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    if-lez v3, :cond_e

    .line 261
    .line 262
    int-to-double v7, v8

    .line 263
    int-to-double v9, v3

    .line 264
    div-double/2addr v7, v9

    .line 265
    cmpl-double v3, v7, v19

    .line 266
    .line 267
    if-ltz v3, :cond_e

    .line 268
    .line 269
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    return-object v0

    .line 274
    :cond_d
    move/from16 v16, v3

    .line 275
    .line 276
    move/from16 v18, v9

    .line 277
    .line 278
    const/16 v17, 0x0

    .line 279
    .line 280
    const-wide v19, 0x3feccccccccccccdL    # 0.9

    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    :cond_e
    aget-byte v1, v0, v16

    .line 286
    .line 287
    and-int/2addr v1, v4

    .line 288
    const/16 v3, 0x2f

    .line 289
    .line 290
    xor-int/2addr v1, v3

    .line 291
    aget-byte v5, v0, v18

    .line 292
    .line 293
    and-int/2addr v5, v4

    .line 294
    xor-int/2addr v5, v1

    .line 295
    if-ne v5, v3, :cond_13

    .line 296
    .line 297
    array-length v3, v0

    .line 298
    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    .line 299
    .line 300
    .line 301
    move-result v3

    .line 302
    move v7, v2

    .line 303
    move/from16 v5, v16

    .line 304
    .line 305
    :goto_5
    if-ge v7, v3, :cond_11

    .line 306
    .line 307
    aget-byte v8, v0, v7

    .line 308
    .line 309
    and-int/2addr v8, v4

    .line 310
    xor-int/2addr v8, v1

    .line 311
    if-eq v8, v14, :cond_f

    .line 312
    .line 313
    if-eq v8, v13, :cond_f

    .line 314
    .line 315
    if-eq v8, v12, :cond_f

    .line 316
    .line 317
    if-gt v11, v8, :cond_10

    .line 318
    .line 319
    if-ge v8, v6, :cond_10

    .line 320
    .line 321
    :cond_f
    add-int/lit8 v5, v5, 0x1

    .line 322
    .line 323
    :cond_10
    add-int/lit8 v7, v7, 0x1

    .line 324
    .line 325
    goto :goto_5

    .line 326
    :cond_11
    if-le v3, v2, :cond_13

    .line 327
    .line 328
    int-to-double v4, v5

    .line 329
    sub-int/2addr v3, v2

    .line 330
    int-to-double v2, v3

    .line 331
    div-double/2addr v4, v2

    .line 332
    cmpl-double v0, v4, v19

    .line 333
    .line 334
    if-ltz v0, :cond_13

    .line 335
    .line 336
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    return-object v0

    .line 341
    :cond_12
    const/16 v17, 0x0

    .line 342
    .line 343
    :cond_13
    return-object v17
.end method
