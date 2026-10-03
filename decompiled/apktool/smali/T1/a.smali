.class public abstract LT1/a;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, LT1/a;->a:[B

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 1
        0x58t
        0x50t
        0x33t
        0xdt
        0xat
        0x20t
        0xat
        0x1at
        -0x75t
        0x67t
        0x1t
    .end array-data
.end method

.method public static a(IIJLjava/lang/String;)I
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p2, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    const-wide/32 v0, 0x7fffffff

    .line 8
    .line 9
    .line 10
    cmp-long v0, p2, v0

    .line 11
    .line 12
    if-gtz v0, :cond_0

    .line 13
    .line 14
    int-to-long v0, p0

    .line 15
    add-long/2addr v0, p2

    .line 16
    int-to-long v2, p1

    .line 17
    cmp-long p1, v0, v2

    .line 18
    .line 19
    if-gtz p1, :cond_0

    .line 20
    .line 21
    long-to-int p1, p2

    .line 22
    add-int/2addr p0, p1

    .line 23
    return p0

    .line 24
    :cond_0
    new-instance p0, LT1/i;

    .line 25
    .line 26
    const-string p1, "Invalid "

    .line 27
    .line 28
    const-string p2, " bounds"

    .line 29
    .line 30
    invoke-static {p1, p4, p2}, LE/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/4 p2, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, LT1/i;-><init>(Ljava/lang/String;Ljava/util/zip/DataFormatException;)V

    .line 36
    .line 37
    .line 38
    throw p0
.end method

.method public static b([BJ)[B
    .locals 11

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "label"

    .line 7
    .line 8
    const-string v1, "XP3 index"

    .line 9
    .line 10
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmp-long v0, p1, v2

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    if-ltz v0, :cond_7

    .line 19
    .line 20
    const-wide/32 v5, 0x1000000

    .line 21
    .line 22
    .line 23
    cmp-long v0, p1, v5

    .line 24
    .line 25
    if-gtz v0, :cond_7

    .line 26
    .line 27
    const-wide/32 v5, 0x7fffffff

    .line 28
    .line 29
    .line 30
    cmp-long v0, p1, v5

    .line 31
    .line 32
    if-gtz v0, :cond_7

    .line 33
    .line 34
    new-instance v0, Ljava/util/zip/Inflater;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    .line 37
    .line 38
    .line 39
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 40
    .line 41
    .line 42
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    .line 43
    .line 44
    const-wide/32 v5, 0x40000

    .line 45
    .line 46
    .line 47
    invoke-static {p1, p2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 48
    .line 49
    .line 50
    move-result-wide v5

    .line 51
    long-to-int v5, v5

    .line 52
    invoke-direct {p0, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 53
    .line 54
    .line 55
    const/high16 v5, 0x10000

    .line 56
    .line 57
    new-array v5, v5, [B

    .line 58
    .line 59
    :goto_0
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    .line 60
    .line 61
    .line 62
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    const-string v7, " zlib stream"

    .line 64
    .line 65
    if-nez v6, :cond_4

    .line 66
    .line 67
    :try_start_1
    invoke-virtual {v0, v5}, Ljava/util/zip/Inflater;->inflate([B)I

    .line 68
    .line 69
    .line 70
    move-result v6
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    if-nez v6, :cond_2

    .line 72
    .line 73
    :try_start_2
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsDictionary()Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-nez p0, :cond_1

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-eqz p0, :cond_0

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_0
    new-instance p0, LT1/i;

    .line 87
    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string p2, "Stalled "

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-direct {p0, p1, v4}, LT1/i;-><init>(Ljava/lang/String;Ljava/util/zip/DataFormatException;)V

    .line 109
    .line 110
    .line 111
    throw p0

    .line 112
    :catchall_0
    move-exception p0

    .line 113
    goto/16 :goto_2

    .line 114
    .line 115
    :cond_1
    :goto_1
    new-instance p0, LT1/i;

    .line 116
    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string p2, "Unfinished "

    .line 123
    .line 124
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-direct {p0, p1, v4}, LT1/i;-><init>(Ljava/lang/String;Ljava/util/zip/DataFormatException;)V

    .line 138
    .line 139
    .line 140
    throw p0

    .line 141
    :cond_2
    int-to-long v7, v6

    .line 142
    sub-long v9, p1, v7

    .line 143
    .line 144
    cmp-long v9, v2, v9

    .line 145
    .line 146
    if-gtz v9, :cond_3

    .line 147
    .line 148
    const/4 v9, 0x0

    .line 149
    invoke-virtual {p0, v5, v9, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 150
    .line 151
    .line 152
    add-long/2addr v2, v7

    .line 153
    goto :goto_0

    .line 154
    :cond_3
    new-instance p0, LT1/i;

    .line 155
    .line 156
    new-instance p1, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string p2, " expands beyond declared size"

    .line 165
    .line 166
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-direct {p0, p1, v4}, LT1/i;-><init>(Ljava/lang/String;Ljava/util/zip/DataFormatException;)V

    .line 174
    .line 175
    .line 176
    throw p0

    .line 177
    :catch_0
    move-exception p0

    .line 178
    new-instance p1, LT1/i;

    .line 179
    .line 180
    new-instance p2, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    const-string v2, "Invalid "

    .line 186
    .line 187
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    invoke-direct {p1, p2, p0}, LT1/i;-><init>(Ljava/lang/String;Ljava/util/zip/DataFormatException;)V

    .line 201
    .line 202
    .line 203
    throw p1

    .line 204
    :cond_4
    cmp-long p1, v2, p1

    .line 205
    .line 206
    if-nez p1, :cond_6

    .line 207
    .line 208
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getRemaining()I

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    if-nez p1, :cond_5

    .line 213
    .line 214
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    const-string p1, "toByteArray(...)"

    .line 219
    .line 220
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 224
    .line 225
    .line 226
    return-object p0

    .line 227
    :cond_5
    :try_start_3
    new-instance p0, LT1/i;

    .line 228
    .line 229
    new-instance p1, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .line 233
    .line 234
    const-string p2, "Trailing data in "

    .line 235
    .line 236
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-direct {p0, p1, v4}, LT1/i;-><init>(Ljava/lang/String;Ljava/util/zip/DataFormatException;)V

    .line 250
    .line 251
    .line 252
    throw p0

    .line 253
    :cond_6
    new-instance p0, LT1/i;

    .line 254
    .line 255
    new-instance p1, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    const-string p2, " size mismatch"

    .line 264
    .line 265
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-direct {p0, p1, v4}, LT1/i;-><init>(Ljava/lang/String;Ljava/util/zip/DataFormatException;)V

    .line 273
    .line 274
    .line 275
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 276
    :goto_2
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 277
    .line 278
    .line 279
    throw p0

    .line 280
    :cond_7
    new-instance p0, LT1/i;

    .line 281
    .line 282
    const-string p1, "XP3 index size is invalid"

    .line 283
    .line 284
    invoke-direct {p0, p1, v4}, LT1/i;-><init>(Ljava/lang/String;Ljava/util/zip/DataFormatException;)V

    .line 285
    .line 286
    .line 287
    throw p0
.end method

.method public static c(Ljava/io/File;)LT1/j;
    .locals 11

    .line 1
    const-string v0, "file"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 7
    .line 8
    const-string v1, "r"

    .line 9
    .line 10
    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/16 v1, 0xb

    .line 14
    .line 15
    :try_start_0
    new-array v1, v1, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    :try_start_1
    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 24
    .line 25
    .line 26
    sget-object v2, LT1/a;->a:[B

    .line 27
    .line 28
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 29
    .line 30
    .line 31
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move v1, v4

    .line 34
    :goto_0
    const/4 v2, 0x0

    .line 35
    if-eqz v1, :cond_6

    .line 36
    .line 37
    :try_start_2
    invoke-static {v0}, LT1/a;->h(Ljava/io/RandomAccessFile;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v5

    .line 41
    invoke-static {v0, v5, v6}, LT1/a;->g(Ljava/io/RandomAccessFile;J)[B

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    array-length v3, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    const-string v5, "File"

    .line 47
    .line 48
    const/4 v6, 0x4

    .line 49
    const/4 v7, 0x1

    .line 50
    if-lt v3, v6, :cond_0

    .line 51
    .line 52
    :try_start_3
    new-instance v3, Ljava/lang/String;

    .line 53
    .line 54
    sget-object v8, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 55
    .line 56
    invoke-direct {v3, v1, v4, v6, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_0

    .line 64
    .line 65
    move v3, v7

    .line 66
    goto :goto_1

    .line 67
    :cond_0
    move v3, v4

    .line 68
    :goto_1
    if-nez v3, :cond_5

    .line 69
    .line 70
    array-length v3, v1

    .line 71
    if-lt v3, v6, :cond_5

    .line 72
    .line 73
    :goto_2
    const/16 v3, 0x100

    .line 74
    .line 75
    if-ge v7, v3, :cond_5

    .line 76
    .line 77
    new-instance v3, Lkotlin/ranges/IntRange;

    .line 78
    .line 79
    const/4 v6, 0x3

    .line 80
    invoke-direct {v3, v4, v6}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 81
    .line 82
    .line 83
    instance-of v6, v3, Ljava/util/Collection;

    .line 84
    .line 85
    if-eqz v6, :cond_1

    .line 86
    .line 87
    move-object v6, v3

    .line 88
    check-cast v6, Ljava/util/Collection;

    .line 89
    .line 90
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-eqz v6, :cond_1

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    goto :goto_7

    .line 99
    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-eqz v6, :cond_3

    .line 108
    .line 109
    move-object v6, v3

    .line 110
    check-cast v6, Lkotlin/collections/IntIterator;

    .line 111
    .line 112
    invoke-virtual {v6}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    aget-byte v8, v1, v6

    .line 117
    .line 118
    xor-int/2addr v8, v7

    .line 119
    int-to-byte v8, v8

    .line 120
    sget-object v9, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 121
    .line 122
    invoke-virtual {v5, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    const-string v10, "getBytes(...)"

    .line 127
    .line 128
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    aget-byte v6, v9, v6

    .line 132
    .line 133
    if-ne v8, v6, :cond_2

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_3
    :goto_4
    array-length v3, v1

    .line 140
    new-array v5, v3, [B

    .line 141
    .line 142
    :goto_5
    if-ge v4, v3, :cond_4

    .line 143
    .line 144
    aget-byte v6, v1, v4

    .line 145
    .line 146
    xor-int/2addr v6, v7

    .line 147
    int-to-byte v6, v6

    .line 148
    aput-byte v6, v5, v4

    .line 149
    .line 150
    add-int/lit8 v4, v4, 0x1

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    move-object v3, v1

    .line 158
    move-object v1, v5

    .line 159
    goto :goto_6

    .line 160
    :cond_5
    move-object v3, v2

    .line 161
    :goto_6
    invoke-static {v1}, LT1/a;->d([B)Ljava/util/ArrayList;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    new-instance v4, LT1/j;

    .line 166
    .line 167
    invoke-direct {v4, p0, v1, v3}, LT1/j;-><init>(Ljava/io/File;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 168
    .line 169
    .line 170
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 171
    .line 172
    .line 173
    return-object v4

    .line 174
    :cond_6
    :try_start_4
    new-instance p0, LT1/i;

    .line 175
    .line 176
    const-string v1, "Invalid XP3 magic header"

    .line 177
    .line 178
    invoke-direct {p0, v1, v2}, LT1/i;-><init>(Ljava/lang/String;Ljava/util/zip/DataFormatException;)V

    .line 179
    .line 180
    .line 181
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 182
    :goto_7
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 183
    :catchall_1
    move-exception v1

    .line 184
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 185
    .line 186
    .line 187
    throw v1
.end method

.method public static d([B)Ljava/util/ArrayList;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    array-length v4, v0

    .line 10
    if-ge v3, v4, :cond_10

    .line 11
    .line 12
    array-length v4, v0

    .line 13
    sub-int/2addr v4, v3

    .line 14
    const/16 v5, 0xc

    .line 15
    .line 16
    if-lt v4, v5, :cond_f

    .line 17
    .line 18
    new-instance v4, Ljava/lang/String;

    .line 19
    .line 20
    sget-object v7, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 21
    .line 22
    const/4 v8, 0x4

    .line 23
    invoke-direct {v4, v0, v3, v8, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v7, v3, 0x4

    .line 27
    .line 28
    invoke-static {v0, v7}, LT1/a;->j([BI)J

    .line 29
    .line 30
    .line 31
    move-result-wide v9

    .line 32
    add-int/lit8 v3, v3, 0xc

    .line 33
    .line 34
    array-length v7, v0

    .line 35
    const-string v11, "index chunk"

    .line 36
    .line 37
    invoke-static {v3, v7, v9, v10, v11}, LT1/a;->a(IIJLjava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    const-string v9, "File"

    .line 42
    .line 43
    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_e

    .line 48
    .line 49
    new-instance v4, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    const/4 v11, 0x0

    .line 55
    const/4 v12, 0x0

    .line 56
    const/4 v13, 0x0

    .line 57
    const-wide/16 v14, 0x0

    .line 58
    .line 59
    const/16 v17, 0x0

    .line 60
    .line 61
    :goto_1
    if-ge v3, v7, :cond_c

    .line 62
    .line 63
    const-wide/16 v18, 0x0

    .line 64
    .line 65
    sub-int v9, v7, v3

    .line 66
    .line 67
    if-lt v9, v5, :cond_b

    .line 68
    .line 69
    new-instance v9, Ljava/lang/String;

    .line 70
    .line 71
    sget-object v10, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 72
    .line 73
    invoke-direct {v9, v0, v3, v8, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 74
    .line 75
    .line 76
    add-int/lit8 v10, v3, 0x4

    .line 77
    .line 78
    move/from16 v16, v3

    .line 79
    .line 80
    invoke-static {v0, v10}, LT1/a;->j([BI)J

    .line 81
    .line 82
    .line 83
    move-result-wide v2

    .line 84
    add-int/lit8 v10, v16, 0xc

    .line 85
    .line 86
    const-string v5, "File subchunk"

    .line 87
    .line 88
    invoke-static {v10, v7, v2, v3, v5}, LT1/a;->a(IIJLjava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    const v6, 0x2d9ce9

    .line 97
    .line 98
    .line 99
    if-eq v8, v6, :cond_7

    .line 100
    .line 101
    const v6, 0x3164ae

    .line 102
    .line 103
    .line 104
    if-eq v8, v6, :cond_4

    .line 105
    .line 106
    const v6, 0x35ceb8

    .line 107
    .line 108
    .line 109
    if-eq v8, v6, :cond_0

    .line 110
    .line 111
    goto/16 :goto_4

    .line 112
    .line 113
    :cond_0
    const-string v6, "segm"

    .line 114
    .line 115
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    if-nez v6, :cond_1

    .line 120
    .line 121
    goto/16 :goto_4

    .line 122
    .line 123
    :cond_1
    const/16 v6, 0x1c

    .line 124
    .line 125
    int-to-long v8, v6

    .line 126
    rem-long/2addr v2, v8

    .line 127
    cmp-long v2, v2, v18

    .line 128
    .line 129
    if-nez v2, :cond_3

    .line 130
    .line 131
    :goto_2
    if-ge v10, v5, :cond_9

    .line 132
    .line 133
    invoke-static {v0, v10}, LT1/a;->i([BI)J

    .line 134
    .line 135
    .line 136
    move-result-wide v2

    .line 137
    new-instance v20, LT1/n;

    .line 138
    .line 139
    const-wide/16 v8, 0x7

    .line 140
    .line 141
    and-long/2addr v2, v8

    .line 142
    cmp-long v2, v2, v18

    .line 143
    .line 144
    if-eqz v2, :cond_2

    .line 145
    .line 146
    const/16 v21, 0x1

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_2
    move/from16 v21, v17

    .line 150
    .line 151
    :goto_3
    add-int/lit8 v2, v10, 0x4

    .line 152
    .line 153
    invoke-static {v0, v2}, LT1/a;->j([BI)J

    .line 154
    .line 155
    .line 156
    move-result-wide v22

    .line 157
    add-int/lit8 v2, v10, 0xc

    .line 158
    .line 159
    invoke-static {v0, v2}, LT1/a;->j([BI)J

    .line 160
    .line 161
    .line 162
    move-result-wide v24

    .line 163
    add-int/lit8 v2, v10, 0x14

    .line 164
    .line 165
    invoke-static {v0, v2}, LT1/a;->j([BI)J

    .line 166
    .line 167
    .line 168
    move-result-wide v26

    .line 169
    invoke-direct/range {v20 .. v27}, LT1/n;-><init>(ZJJJ)V

    .line 170
    .line 171
    .line 172
    move-object/from16 v2, v20

    .line 173
    .line 174
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    add-int/lit8 v10, v10, 0x1c

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_3
    new-instance v0, LT1/i;

    .line 181
    .line 182
    const-string v1, "Invalid segm length"

    .line 183
    .line 184
    const/4 v2, 0x0

    .line 185
    invoke-direct {v0, v1, v2}, LT1/i;-><init>(Ljava/lang/String;Ljava/util/zip/DataFormatException;)V

    .line 186
    .line 187
    .line 188
    throw v0

    .line 189
    :cond_4
    const-string v6, "info"

    .line 190
    .line 191
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    if-eqz v6, :cond_9

    .line 196
    .line 197
    const-wide/16 v8, 0x16

    .line 198
    .line 199
    cmp-long v6, v2, v8

    .line 200
    .line 201
    if-ltz v6, :cond_6

    .line 202
    .line 203
    invoke-static {v0, v10}, LT1/a;->i([BI)J

    .line 204
    .line 205
    .line 206
    move-result-wide v8

    .line 207
    long-to-int v13, v8

    .line 208
    add-int/lit8 v6, v16, 0x10

    .line 209
    .line 210
    invoke-static {v0, v6}, LT1/a;->j([BI)J

    .line 211
    .line 212
    .line 213
    move-result-wide v8

    .line 214
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 215
    .line 216
    .line 217
    move-result-object v12

    .line 218
    add-int/lit8 v6, v16, 0x20

    .line 219
    .line 220
    aget-byte v6, v0, v6

    .line 221
    .line 222
    and-int/lit16 v6, v6, 0xff

    .line 223
    .line 224
    add-int/lit8 v8, v16, 0x21

    .line 225
    .line 226
    aget-byte v8, v0, v8

    .line 227
    .line 228
    and-int/lit16 v8, v8, 0xff

    .line 229
    .line 230
    shl-int/lit8 v8, v8, 0x8

    .line 231
    .line 232
    or-int/2addr v6, v8

    .line 233
    int-to-long v8, v6

    .line 234
    const/4 v10, 0x2

    .line 235
    int-to-long v10, v10

    .line 236
    mul-long/2addr v8, v10

    .line 237
    const/16 v10, 0x16

    .line 238
    .line 239
    int-to-long v10, v10

    .line 240
    sub-long/2addr v2, v10

    .line 241
    cmp-long v2, v8, v2

    .line 242
    .line 243
    if-nez v2, :cond_5

    .line 244
    .line 245
    new-instance v11, Ljava/lang/String;

    .line 246
    .line 247
    add-int/lit8 v3, v16, 0x22

    .line 248
    .line 249
    mul-int/lit8 v6, v6, 0x2

    .line 250
    .line 251
    sget-object v2, Lkotlin/text/Charsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 252
    .line 253
    invoke-direct {v11, v0, v3, v6, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 254
    .line 255
    .line 256
    goto :goto_4

    .line 257
    :cond_5
    new-instance v0, LT1/i;

    .line 258
    .line 259
    const-string v1, "Invalid info name length"

    .line 260
    .line 261
    const/4 v2, 0x0

    .line 262
    invoke-direct {v0, v1, v2}, LT1/i;-><init>(Ljava/lang/String;Ljava/util/zip/DataFormatException;)V

    .line 263
    .line 264
    .line 265
    throw v0

    .line 266
    :cond_6
    const/4 v2, 0x0

    .line 267
    new-instance v0, LT1/i;

    .line 268
    .line 269
    const-string v1, "Short info chunk"

    .line 270
    .line 271
    invoke-direct {v0, v1, v2}, LT1/i;-><init>(Ljava/lang/String;Ljava/util/zip/DataFormatException;)V

    .line 272
    .line 273
    .line 274
    throw v0

    .line 275
    :cond_7
    const-string v6, "adlr"

    .line 276
    .line 277
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v6

    .line 281
    if-nez v6, :cond_8

    .line 282
    .line 283
    goto :goto_4

    .line 284
    :cond_8
    const-wide/16 v8, 0x4

    .line 285
    .line 286
    cmp-long v2, v2, v8

    .line 287
    .line 288
    if-ltz v2, :cond_a

    .line 289
    .line 290
    invoke-static {v0, v10}, LT1/a;->i([BI)J

    .line 291
    .line 292
    .line 293
    move-result-wide v14

    .line 294
    :cond_9
    :goto_4
    move v3, v5

    .line 295
    const/16 v5, 0xc

    .line 296
    .line 297
    const/4 v8, 0x4

    .line 298
    goto/16 :goto_1

    .line 299
    .line 300
    :cond_a
    new-instance v0, LT1/i;

    .line 301
    .line 302
    const-string v1, "Short adlr chunk"

    .line 303
    .line 304
    const/4 v2, 0x0

    .line 305
    invoke-direct {v0, v1, v2}, LT1/i;-><init>(Ljava/lang/String;Ljava/util/zip/DataFormatException;)V

    .line 306
    .line 307
    .line 308
    throw v0

    .line 309
    :cond_b
    const/4 v2, 0x0

    .line 310
    new-instance v0, LT1/i;

    .line 311
    .line 312
    const-string v1, "Truncated File subchunk"

    .line 313
    .line 314
    invoke-direct {v0, v1, v2}, LT1/i;-><init>(Ljava/lang/String;Ljava/util/zip/DataFormatException;)V

    .line 315
    .line 316
    .line 317
    throw v0

    .line 318
    :cond_c
    if-eqz v11, :cond_d

    .line 319
    .line 320
    new-instance v9, LT1/c;

    .line 321
    .line 322
    const/16 v2, 0x5c

    .line 323
    .line 324
    const/16 v3, 0x2f

    .line 325
    .line 326
    invoke-static {v11, v2, v3}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;CC)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    const/4 v5, 0x1

    .line 331
    new-array v5, v5, [C

    .line 332
    .line 333
    aput-char v3, v5, v17

    .line 334
    .line 335
    invoke-static {v2, v5}, Lkotlin/text/StringsKt;->trimStart(Ljava/lang/String;[C)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v10

    .line 339
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    .line 343
    .line 344
    .line 345
    move-result-wide v11

    .line 346
    move-object/from16 v16, v4

    .line 347
    .line 348
    invoke-direct/range {v9 .. v16}, LT1/c;-><init>(Ljava/lang/String;JIJLjava/util/ArrayList;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    goto :goto_5

    .line 355
    :cond_d
    new-instance v0, LT1/i;

    .line 356
    .line 357
    const-string v1, "File entry has no info"

    .line 358
    .line 359
    const/4 v2, 0x0

    .line 360
    invoke-direct {v0, v1, v2}, LT1/i;-><init>(Ljava/lang/String;Ljava/util/zip/DataFormatException;)V

    .line 361
    .line 362
    .line 363
    throw v0

    .line 364
    :cond_e
    const/16 v17, 0x0

    .line 365
    .line 366
    :goto_5
    move v3, v7

    .line 367
    goto/16 :goto_0

    .line 368
    .line 369
    :cond_f
    const/4 v2, 0x0

    .line 370
    new-instance v0, LT1/i;

    .line 371
    .line 372
    const-string v1, "Truncated index chunk"

    .line 373
    .line 374
    invoke-direct {v0, v1, v2}, LT1/i;-><init>(Ljava/lang/String;Ljava/util/zip/DataFormatException;)V

    .line 375
    .line 376
    .line 377
    throw v0

    .line 378
    :cond_10
    return-object v1
.end method

.method public static e(JJJ)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p0, v0

    .line 4
    .line 5
    if-ltz v2, :cond_0

    .line 6
    .line 7
    cmp-long v0, p2, v0

    .line 8
    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    sub-long/2addr p4, p2

    .line 12
    cmp-long p0, p0, p4

    .line 13
    .line 14
    if-gtz p0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance p0, LT1/i;

    .line 18
    .line 19
    const-string p1, "Invalid XP3 offset"

    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    invoke-direct {p0, p1, p2}, LT1/i;-><init>(Ljava/lang/String;Ljava/util/zip/DataFormatException;)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public static f(Ljava/io/RandomAccessFile;J)[B
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    const-wide/32 v0, 0x1000000

    .line 8
    .line 9
    .line 10
    cmp-long v0, p1, v0

    .line 11
    .line 12
    if-gtz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    sub-long/2addr v2, p1

    .line 23
    cmp-long v0, v0, v2

    .line 24
    .line 25
    if-gtz v0, :cond_0

    .line 26
    .line 27
    long-to-int p1, p1

    .line 28
    new-array p1, p1, [B

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 31
    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_0
    new-instance p0, LT1/i;

    .line 35
    .line 36
    const-string p1, "Invalid index bounds"

    .line 37
    .line 38
    const/4 p2, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, LT1/i;-><init>(Ljava/lang/String;Ljava/util/zip/DataFormatException;)V

    .line 40
    .line 41
    .line 42
    throw p0
.end method

.method public static g(Ljava/io/RandomAccessFile;J)[B
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-wide/16 v3, 0x1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    .line 6
    .line 7
    .line 8
    move-result-wide v5

    .line 9
    move-wide/from16 v1, p1

    .line 10
    .line 11
    invoke-static/range {v1 .. v6}, LT1/a;->e(JJJ)V

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p0 .. p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_4

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    if-eq v1, v2, :cond_3

    .line 25
    .line 26
    const/16 v3, 0x80

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    if-ne v1, v3, :cond_2

    .line 30
    .line 31
    const-wide/16 v5, 0x1

    .line 32
    .line 33
    add-long v7, p1, v5

    .line 34
    .line 35
    const-wide/16 v9, 0x10

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    .line 38
    .line 39
    .line 40
    move-result-wide v11

    .line 41
    invoke-static/range {v7 .. v12}, LT1/a;->e(JJJ)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, LT1/a;->h(Ljava/io/RandomAccessFile;)J

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, LT1/a;->h(Ljava/io/RandomAccessFile;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v13

    .line 51
    const-wide/16 v15, 0x1

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    .line 54
    .line 55
    .line 56
    move-result-wide v17

    .line 57
    invoke-static/range {v13 .. v18}, LT1/a;->e(JJJ)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    if-ne v1, v2, :cond_0

    .line 70
    .line 71
    invoke-static {v0}, LT1/a;->h(Ljava/io/RandomAccessFile;)J

    .line 72
    .line 73
    .line 74
    move-result-wide v1

    .line 75
    invoke-static {v0}, LT1/a;->h(Ljava/io/RandomAccessFile;)J

    .line 76
    .line 77
    .line 78
    move-result-wide v3

    .line 79
    invoke-static {v0, v1, v2}, LT1/a;->f(Ljava/io/RandomAccessFile;J)[B

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0, v3, v4}, LT1/a;->b([BJ)[B

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    return-object v0

    .line 88
    :cond_0
    new-instance v0, LT1/i;

    .line 89
    .line 90
    const-string v1, "Invalid nested index"

    .line 91
    .line 92
    invoke-direct {v0, v1, v4}, LT1/i;-><init>(Ljava/lang/String;Ljava/util/zip/DataFormatException;)V

    .line 93
    .line 94
    .line 95
    throw v0

    .line 96
    :cond_1
    invoke-static {v0}, LT1/a;->h(Ljava/io/RandomAccessFile;)J

    .line 97
    .line 98
    .line 99
    move-result-wide v1

    .line 100
    invoke-static {v0, v1, v2}, LT1/a;->f(Ljava/io/RandomAccessFile;J)[B

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    return-object v0

    .line 105
    :cond_2
    new-instance v0, LT1/i;

    .line 106
    .line 107
    const-string v2, "Unknown XP3 index flag: "

    .line 108
    .line 109
    invoke-static {v1, v2}, LE/b;->i(ILjava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-direct {v0, v1, v4}, LT1/i;-><init>(Ljava/lang/String;Ljava/util/zip/DataFormatException;)V

    .line 114
    .line 115
    .line 116
    throw v0

    .line 117
    :cond_3
    invoke-static {v0}, LT1/a;->h(Ljava/io/RandomAccessFile;)J

    .line 118
    .line 119
    .line 120
    move-result-wide v1

    .line 121
    invoke-static {v0}, LT1/a;->h(Ljava/io/RandomAccessFile;)J

    .line 122
    .line 123
    .line 124
    move-result-wide v3

    .line 125
    invoke-static {v0, v1, v2}, LT1/a;->f(Ljava/io/RandomAccessFile;J)[B

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {v0, v3, v4}, LT1/a;->b([BJ)[B

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    return-object v0

    .line 134
    :cond_4
    invoke-static {v0}, LT1/a;->h(Ljava/io/RandomAccessFile;)J

    .line 135
    .line 136
    .line 137
    move-result-wide v1

    .line 138
    invoke-static {v0, v1, v2}, LT1/a;->f(Ljava/io/RandomAccessFile;J)[B

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    return-object v0
.end method

.method public static h(Ljava/io/RandomAccessFile;)J
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    const/16 v3, 0x8

    .line 5
    .line 6
    if-ge v2, v3, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const/4 v4, 0x0

    .line 13
    if-ltz v3, :cond_2

    .line 14
    .line 15
    const/4 v5, 0x7

    .line 16
    if-ne v2, v5, :cond_1

    .line 17
    .line 18
    const/16 v5, 0x7f

    .line 19
    .line 20
    if-gt v3, v5, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    new-instance p0, LT1/i;

    .line 24
    .line 25
    const-string v0, "Unsigned value too large"

    .line 26
    .line 27
    invoke-direct {p0, v0, v4}, LT1/i;-><init>(Ljava/lang/String;Ljava/util/zip/DataFormatException;)V

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :cond_1
    :goto_1
    int-to-long v3, v3

    .line 32
    mul-int/lit8 v5, v2, 0x8

    .line 33
    .line 34
    shl-long/2addr v3, v5

    .line 35
    or-long/2addr v0, v3

    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    new-instance p0, LT1/i;

    .line 40
    .line 41
    const-string v0, "Truncated XP3"

    .line 42
    .line 43
    invoke-direct {p0, v0, v4}, LT1/i;-><init>(Ljava/lang/String;Ljava/util/zip/DataFormatException;)V

    .line 44
    .line 45
    .line 46
    throw p0

    .line 47
    :cond_3
    return-wide v0
.end method

.method public static i([BI)J
    .locals 8

    .line 1
    new-instance v0, Lkotlin/ranges/IntRange;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x3

    .line 5
    invoke-direct {v0, v1, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-wide/16 v1, 0x0

    .line 13
    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    move-object v3, v0

    .line 21
    check-cast v3, Lkotlin/collections/IntIterator;

    .line 22
    .line 23
    invoke-virtual {v3}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    add-int v4, p1, v3

    .line 28
    .line 29
    aget-byte v4, p0, v4

    .line 30
    .line 31
    int-to-long v4, v4

    .line 32
    const-wide/16 v6, 0xff

    .line 33
    .line 34
    and-long/2addr v4, v6

    .line 35
    mul-int/lit8 v3, v3, 0x8

    .line 36
    .line 37
    shl-long v3, v4, v3

    .line 38
    .line 39
    or-long/2addr v1, v3

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-wide v1
.end method

.method public static j([BI)J
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    const/16 v3, 0x8

    .line 5
    .line 6
    if-ge v2, v3, :cond_2

    .line 7
    .line 8
    add-int v3, p1, v2

    .line 9
    .line 10
    aget-byte v3, p0, v3

    .line 11
    .line 12
    and-int/lit16 v3, v3, 0xff

    .line 13
    .line 14
    const/4 v4, 0x7

    .line 15
    if-ne v2, v4, :cond_1

    .line 16
    .line 17
    const/16 v4, 0x7f

    .line 18
    .line 19
    if-gt v3, v4, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    new-instance p0, LT1/i;

    .line 23
    .line 24
    const-string p1, "Unsigned value too large"

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, LT1/i;-><init>(Ljava/lang/String;Ljava/util/zip/DataFormatException;)V

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :cond_1
    :goto_1
    int-to-long v3, v3

    .line 32
    mul-int/lit8 v5, v2, 0x8

    .line 33
    .line 34
    shl-long/2addr v3, v5

    .line 35
    or-long/2addr v0, v3

    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    return-wide v0
.end method
