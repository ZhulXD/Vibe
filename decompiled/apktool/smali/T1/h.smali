.class public final LT1/h;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a(JJJ)J
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
    cmp-long p4, p0, p4

    .line 13
    .line 14
    if-gtz p4, :cond_0

    .line 15
    .line 16
    add-long/2addr p0, p2

    .line 17
    return-wide p0

    .line 18
    :cond_0
    new-instance p0, LT1/m;

    .line 19
    .line 20
    const-string p1, "message"

    .line 21
    .line 22
    const-string p2, "XP3 output exceeds size limit"

    .line 23
    .line 24
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method public static b(Ljava/nio/channels/FileChannel;LT1/c;Ljava/io/File;Lkotlin/jvm/functions/Function0;J)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-wide v1, 0x80000000L

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    move-wide/from16 v3, p4

    .line 9
    .line 10
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    new-instance v3, Ljava/io/BufferedOutputStream;

    .line 15
    .line 16
    new-instance v4, Ljava/io/FileOutputStream;

    .line 17
    .line 18
    move-object/from16 v5, p2

    .line 19
    .line 20
    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 21
    .line 22
    .line 23
    const/high16 v5, 0x40000

    .line 24
    .line 25
    invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 26
    .line 27
    .line 28
    :try_start_0
    new-instance v11, LT1/d;

    .line 29
    .line 30
    invoke-direct {v11, v3, v1, v2}, LT1/d;-><init>(Ljava/io/BufferedOutputStream;J)V

    .line 31
    .line 32
    .line 33
    move-object/from16 v1, p1

    .line 34
    .line 35
    iget-object v1, v1, LT1/c;->e:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const/4 v6, 0x0

    .line 42
    :goto_0
    if-ge v6, v2, :cond_5

    .line 43
    .line 44
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    add-int/lit8 v14, v6, 0x1

    .line 49
    .line 50
    check-cast v7, LT1/n;

    .line 51
    .line 52
    iget-wide v8, v7, LT1/n;->b:J

    .line 53
    .line 54
    move/from16 p2, v14

    .line 55
    .line 56
    iget-wide v13, v7, LT1/n;->d:J

    .line 57
    .line 58
    invoke-static {v0, v8, v9, v13, v14}, LT1/h;->d(Ljava/nio/channels/FileChannel;JJ)V

    .line 59
    .line 60
    .line 61
    iget-wide v8, v7, LT1/n;->b:J

    .line 62
    .line 63
    invoke-virtual {v0, v8, v9}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-static {v6}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    new-instance v8, LT1/f;

    .line 72
    .line 73
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {v8, v6, v13, v14}, LT1/f;-><init>(Ljava/io/InputStream;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 77
    .line 78
    .line 79
    :try_start_1
    iget-boolean v6, v7, LT1/n;->a:Z

    .line 80
    .line 81
    if-eqz v6, :cond_0

    .line 82
    .line 83
    iget-wide v9, v7, LT1/n;->d:J

    .line 84
    .line 85
    move-wide v12, v9

    .line 86
    iget-wide v9, v7, LT1/n;->c:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 87
    .line 88
    move-object v6, v8

    .line 89
    move-wide v7, v12

    .line 90
    move-object/from16 v12, p3

    .line 91
    .line 92
    :try_start_2
    invoke-static/range {v6 .. v12}, LT1/h;->f(Ljava/io/InputStream;JJLT1/d;Lkotlin/jvm/functions/Function0;)V

    .line 93
    .line 94
    .line 95
    const/4 v5, 0x0

    .line 96
    :goto_1
    const/4 v4, 0x0

    .line 97
    goto :goto_4

    .line 98
    :catchall_0
    move-exception v0

    .line 99
    :goto_2
    move-object v1, v0

    .line 100
    goto :goto_5

    .line 101
    :catchall_1
    move-exception v0

    .line 102
    move-object v6, v8

    .line 103
    goto :goto_2

    .line 104
    :cond_0
    move-object v6, v8

    .line 105
    iget-wide v7, v7, LT1/n;->c:J

    .line 106
    .line 107
    cmp-long v9, v13, v7

    .line 108
    .line 109
    if-nez v9, :cond_4

    .line 110
    .line 111
    new-array v9, v5, [B

    .line 112
    .line 113
    const-wide/16 v12, 0x0

    .line 114
    .line 115
    :goto_3
    cmp-long v10, v12, v7

    .line 116
    .line 117
    if-gez v10, :cond_2

    .line 118
    .line 119
    invoke-static/range {p3 .. p3}, LT1/h;->c(Lkotlin/jvm/functions/Function0;)V

    .line 120
    .line 121
    .line 122
    int-to-long v14, v5

    .line 123
    sub-long v4, v7, v12

    .line 124
    .line 125
    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 126
    .line 127
    .line 128
    move-result-wide v4

    .line 129
    long-to-int v4, v4

    .line 130
    const/4 v5, 0x0

    .line 131
    invoke-virtual {v6, v9, v5, v4}, LT1/f;->read([BII)I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-ltz v4, :cond_1

    .line 136
    .line 137
    invoke-virtual {v11, v9, v5, v4}, LT1/d;->write([BII)V

    .line 138
    .line 139
    .line 140
    int-to-long v14, v4

    .line 141
    add-long/2addr v12, v14

    .line 142
    const/high16 v5, 0x40000

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_1
    new-instance v0, LT1/i;

    .line 146
    .line 147
    const-string v1, "Truncated segment"

    .line 148
    .line 149
    const/4 v2, 0x0

    .line 150
    invoke-direct {v0, v1, v2}, LT1/i;-><init>(Ljava/lang/String;Ljava/util/zip/DataFormatException;)V

    .line 151
    .line 152
    .line 153
    throw v0

    .line 154
    :cond_2
    const/4 v5, 0x0

    .line 155
    invoke-virtual {v6}, LT1/f;->read()I

    .line 156
    .line 157
    .line 158
    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    const/4 v7, -0x1

    .line 160
    if-ne v4, v7, :cond_3

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :goto_4
    :try_start_3
    invoke-static {v6, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 164
    .line 165
    .line 166
    move/from16 v6, p2

    .line 167
    .line 168
    const/high16 v5, 0x40000

    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :catchall_2
    move-exception v0

    .line 173
    move-object v1, v0

    .line 174
    goto :goto_6

    .line 175
    :cond_3
    const/4 v4, 0x0

    .line 176
    :try_start_4
    new-instance v0, LT1/i;

    .line 177
    .line 178
    const-string v1, "Segment has trailing data"

    .line 179
    .line 180
    invoke-direct {v0, v1, v4}, LT1/i;-><init>(Ljava/lang/String;Ljava/util/zip/DataFormatException;)V

    .line 181
    .line 182
    .line 183
    throw v0

    .line 184
    :cond_4
    new-instance v0, LT1/i;

    .line 185
    .line 186
    const-string v1, "Raw segment size mismatch"

    .line 187
    .line 188
    const/4 v2, 0x0

    .line 189
    invoke-direct {v0, v1, v2}, LT1/i;-><init>(Ljava/lang/String;Ljava/util/zip/DataFormatException;)V

    .line 190
    .line 191
    .line 192
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 193
    :goto_5
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 194
    :catchall_3
    move-exception v0

    .line 195
    :try_start_6
    invoke-static {v6, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 196
    .line 197
    .line 198
    throw v0

    .line 199
    :cond_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 200
    .line 201
    const/4 v2, 0x0

    .line 202
    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :goto_6
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 207
    :catchall_4
    move-exception v0

    .line 208
    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 209
    .line 210
    .line 211
    throw v0
.end method

.method public static c(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p0, LT1/b;

    .line 15
    .line 16
    invoke-direct {p0}, LT1/b;-><init>()V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static d(Ljava/nio/channels/FileChannel;JJ)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-ltz v2, :cond_0

    .line 6
    .line 7
    cmp-long v0, p3, v0

    .line 8
    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    sub-long/2addr v0, p3

    .line 16
    cmp-long p0, p1, v0

    .line 17
    .line 18
    if-gtz p0, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance p0, LT1/i;

    .line 22
    .line 23
    const-string p1, "Segment outside archive"

    .line 24
    .line 25
    const/4 p2, 0x0

    .line 26
    invoke-direct {p0, p1, p2}, LT1/i;-><init>(Ljava/lang/String;Ljava/util/zip/DataFormatException;)V

    .line 27
    .line 28
    .line 29
    throw p0
.end method

.method public static e(Ljava/nio/channels/FileChannel;Ljava/util/ArrayList;)Lkotlin/jvm/functions/Function1;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    new-instance v2, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const/4 v4, 0x0

    .line 13
    move v0, v4

    .line 14
    :goto_0
    const/4 v6, 0x3

    .line 15
    if-ge v0, v3, :cond_f

    .line 16
    .line 17
    move-object/from16 v7, p1

    .line 18
    .line 19
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v8

    .line 23
    add-int/lit8 v9, v0, 0x1

    .line 24
    .line 25
    check-cast v8, LT1/c;

    .line 26
    .line 27
    iget-object v0, v8, LT1/c;->e:Ljava/util/ArrayList;

    .line 28
    .line 29
    iget-object v10, v8, LT1/c;->a:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, LT1/n;

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    :cond_0
    move v0, v9

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-wide v11, v0, LT1/n;->d:J

    .line 42
    .line 43
    const-string v13, ".png"

    .line 44
    .line 45
    invoke-static {v10, v13}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v13

    .line 49
    const/4 v14, 0x4

    .line 50
    const/4 v15, 0x1

    .line 51
    if-eqz v13, :cond_2

    .line 52
    .line 53
    new-array v10, v14, [B

    .line 54
    .line 55
    const/16 v13, -0x77

    .line 56
    .line 57
    aput-byte v13, v10, v4

    .line 58
    .line 59
    const/16 v13, 0x50

    .line 60
    .line 61
    aput-byte v13, v10, v15

    .line 62
    .line 63
    const/4 v13, 0x2

    .line 64
    const/16 v16, 0x4e

    .line 65
    .line 66
    aput-byte v16, v10, v13

    .line 67
    .line 68
    const/16 v13, 0x47

    .line 69
    .line 70
    aput-byte v13, v10, v6

    .line 71
    .line 72
    :goto_1
    move v13, v4

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    const-string v13, ".ogg"

    .line 75
    .line 76
    invoke-static {v10, v13}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v13

    .line 80
    const-string v5, "getBytes(...)"

    .line 81
    .line 82
    if-eqz v13, :cond_3

    .line 83
    .line 84
    const-string v10, "OggS"

    .line 85
    .line 86
    sget-object v13, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 87
    .line 88
    invoke-virtual {v10, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 89
    .line 90
    .line 91
    move-result-object v10

    .line 92
    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    const-string v13, ".tlg"

    .line 97
    .line 98
    invoke-static {v10, v13}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v10

    .line 102
    if-eqz v10, :cond_0

    .line 103
    .line 104
    const-string v10, "TLG0"

    .line 105
    .line 106
    sget-object v13, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 107
    .line 108
    invoke-virtual {v10, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :goto_2
    iget-wide v4, v0, LT1/n;->b:J

    .line 117
    .line 118
    const-wide/16 v17, 0x4

    .line 119
    .line 120
    cmp-long v17, v11, v17

    .line 121
    .line 122
    if-gez v17, :cond_5

    .line 123
    .line 124
    :catch_0
    :cond_4
    :goto_3
    const/4 v0, 0x0

    .line 125
    goto :goto_5

    .line 126
    :cond_5
    iget-boolean v0, v0, LT1/n;->a:Z

    .line 127
    .line 128
    if-nez v0, :cond_6

    .line 129
    .line 130
    new-array v0, v14, [B

    .line 131
    .line 132
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 133
    .line 134
    .line 135
    move-result-object v11

    .line 136
    invoke-virtual {v1, v11, v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-ne v4, v14, :cond_4

    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_6
    const-wide/32 v17, 0x100000

    .line 144
    .line 145
    .line 146
    cmp-long v0, v11, v17

    .line 147
    .line 148
    if-lez v0, :cond_7

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_7
    :try_start_0
    invoke-static {v1, v4, v5, v11, v12}, LT1/h;->d(Ljava/nio/channels/FileChannel;JJ)V

    .line 152
    .line 153
    .line 154
    long-to-int v0, v11

    .line 155
    new-array v11, v0, [B

    .line 156
    .line 157
    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 158
    .line 159
    .line 160
    move-result-object v12

    .line 161
    invoke-virtual {v1, v12, v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    if-eq v4, v0, :cond_8

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_8
    new-instance v4, Ljava/util/zip/Inflater;

    .line 169
    .line 170
    invoke-direct {v4}, Ljava/util/zip/Inflater;-><init>()V

    .line 171
    .line 172
    .line 173
    new-array v0, v14, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .line 175
    :try_start_1
    invoke-virtual {v4, v11}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4, v0}, Ljava/util/zip/Inflater;->inflate([B)I

    .line 179
    .line 180
    .line 181
    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    if-ne v5, v14, :cond_9

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_9
    const/4 v0, 0x0

    .line 186
    :goto_4
    :try_start_2
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    .line 187
    .line 188
    .line 189
    goto :goto_5

    .line 190
    :catchall_0
    move-exception v0

    .line 191
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    .line 192
    .line 193
    .line 194
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 195
    :goto_5
    if-nez v0, :cond_b

    .line 196
    .line 197
    :cond_a
    move v0, v9

    .line 198
    move v4, v13

    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :cond_b
    aget-byte v4, v0, v13

    .line 202
    .line 203
    and-int/lit16 v4, v4, 0xff

    .line 204
    .line 205
    aget-byte v5, v10, v13

    .line 206
    .line 207
    and-int/lit16 v5, v5, 0xff

    .line 208
    .line 209
    xor-int/2addr v4, v5

    .line 210
    new-instance v5, Lkotlin/ranges/IntRange;

    .line 211
    .line 212
    invoke-direct {v5, v15, v6}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 213
    .line 214
    .line 215
    instance-of v11, v5, Ljava/util/Collection;

    .line 216
    .line 217
    if-eqz v11, :cond_c

    .line 218
    .line 219
    move-object v11, v5

    .line 220
    check-cast v11, Ljava/util/Collection;

    .line 221
    .line 222
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    .line 223
    .line 224
    .line 225
    move-result v11

    .line 226
    if-eqz v11, :cond_c

    .line 227
    .line 228
    goto :goto_7

    .line 229
    :cond_c
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 234
    .line 235
    .line 236
    move-result v11

    .line 237
    if-eqz v11, :cond_d

    .line 238
    .line 239
    move-object v11, v5

    .line 240
    check-cast v11, Lkotlin/collections/IntIterator;

    .line 241
    .line 242
    invoke-virtual {v11}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 243
    .line 244
    .line 245
    move-result v11

    .line 246
    aget-byte v12, v0, v11

    .line 247
    .line 248
    and-int/lit16 v12, v12, 0xff

    .line 249
    .line 250
    xor-int/2addr v12, v4

    .line 251
    aget-byte v11, v10, v11

    .line 252
    .line 253
    and-int/lit16 v11, v11, 0xff

    .line 254
    .line 255
    if-ne v12, v11, :cond_e

    .line 256
    .line 257
    goto :goto_6

    .line 258
    :cond_d
    :goto_7
    iget-wide v10, v8, LT1/c;->d:J

    .line 259
    .line 260
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    invoke-static {v0, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    :cond_e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    const/16 v4, 0x8

    .line 280
    .line 281
    if-ne v0, v4, :cond_a

    .line 282
    .line 283
    goto :goto_8

    .line 284
    :cond_f
    move v13, v4

    .line 285
    :goto_8
    sget-object v0, LT1/l;->a:Ljava/util/List;

    .line 286
    .line 287
    const-string v0, "probes"

    .line 288
    .line 289
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-eqz v0, :cond_11

    .line 297
    .line 298
    :cond_10
    :goto_9
    const/4 v5, 0x0

    .line 299
    goto/16 :goto_12

    .line 300
    .line 301
    :cond_11
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    if-eqz v0, :cond_12

    .line 306
    .line 307
    goto/16 :goto_11

    .line 308
    .line 309
    :cond_12
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    move v1, v13

    .line 314
    :goto_a
    if-ge v1, v0, :cond_1e

    .line 315
    .line 316
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    add-int/lit8 v1, v1, 0x1

    .line 321
    .line 322
    check-cast v3, Lkotlin/Pair;

    .line 323
    .line 324
    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    check-cast v3, Ljava/lang/Number;

    .line 329
    .line 330
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 331
    .line 332
    .line 333
    move-result v3

    .line 334
    if-nez v3, :cond_13

    .line 335
    .line 336
    goto :goto_a

    .line 337
    :cond_13
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 338
    .line 339
    .line 340
    move-result v0

    .line 341
    if-eqz v0, :cond_14

    .line 342
    .line 343
    goto/16 :goto_10

    .line 344
    .line 345
    :cond_14
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    move v1, v13

    .line 350
    :goto_b
    if-ge v1, v0, :cond_1d

    .line 351
    .line 352
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v3

    .line 356
    add-int/lit8 v1, v1, 0x1

    .line 357
    .line 358
    check-cast v3, Lkotlin/Pair;

    .line 359
    .line 360
    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v4

    .line 364
    check-cast v4, Ljava/lang/Number;

    .line 365
    .line 366
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 367
    .line 368
    .line 369
    move-result v4

    .line 370
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v3

    .line 374
    check-cast v3, Ljava/lang/Number;

    .line 375
    .line 376
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 377
    .line 378
    .line 379
    move-result-wide v7

    .line 380
    ushr-long/2addr v7, v6

    .line 381
    const-wide/16 v9, 0xff

    .line 382
    .line 383
    and-long/2addr v7, v9

    .line 384
    long-to-int v3, v7

    .line 385
    if-ne v4, v3, :cond_15

    .line 386
    .line 387
    goto :goto_b

    .line 388
    :cond_15
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    if-eqz v0, :cond_16

    .line 393
    .line 394
    goto/16 :goto_f

    .line 395
    .line 396
    :cond_16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 397
    .line 398
    .line 399
    move-result v0

    .line 400
    move v1, v13

    .line 401
    :goto_c
    if-ge v1, v0, :cond_1c

    .line 402
    .line 403
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    add-int/lit8 v1, v1, 0x1

    .line 408
    .line 409
    check-cast v3, Lkotlin/Pair;

    .line 410
    .line 411
    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v4

    .line 415
    check-cast v4, Ljava/lang/Number;

    .line 416
    .line 417
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 418
    .line 419
    .line 420
    move-result v4

    .line 421
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v3

    .line 425
    check-cast v3, Ljava/lang/Number;

    .line 426
    .line 427
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 428
    .line 429
    .line 430
    move-result-wide v5

    .line 431
    and-long/2addr v5, v9

    .line 432
    long-to-int v3, v5

    .line 433
    if-ne v4, v3, :cond_17

    .line 434
    .line 435
    goto :goto_c

    .line 436
    :cond_17
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    check-cast v0, Lkotlin/Pair;

    .line 441
    .line 442
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    check-cast v0, Ljava/lang/Number;

    .line 447
    .line 448
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 449
    .line 450
    .line 451
    move-result v0

    .line 452
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 453
    .line 454
    .line 455
    move-result v1

    .line 456
    if-eqz v1, :cond_18

    .line 457
    .line 458
    goto :goto_e

    .line 459
    :cond_18
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 460
    .line 461
    .line 462
    move-result v1

    .line 463
    move v3, v13

    .line 464
    :goto_d
    if-ge v3, v1, :cond_19

    .line 465
    .line 466
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v4

    .line 470
    add-int/lit8 v3, v3, 0x1

    .line 471
    .line 472
    check-cast v4, Lkotlin/Pair;

    .line 473
    .line 474
    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object v4

    .line 478
    check-cast v4, Ljava/lang/Number;

    .line 479
    .line 480
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 481
    .line 482
    .line 483
    move-result v4

    .line 484
    if-ne v4, v0, :cond_10

    .line 485
    .line 486
    goto :goto_d

    .line 487
    :cond_19
    :goto_e
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 488
    .line 489
    .line 490
    move-result v1

    .line 491
    if-eqz v1, :cond_1a

    .line 492
    .line 493
    goto/16 :goto_9

    .line 494
    .line 495
    :cond_1a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 496
    .line 497
    .line 498
    move-result v1

    .line 499
    move v3, v13

    .line 500
    :cond_1b
    if-ge v3, v1, :cond_10

    .line 501
    .line 502
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v4

    .line 506
    add-int/lit8 v3, v3, 0x1

    .line 507
    .line 508
    check-cast v4, Lkotlin/Pair;

    .line 509
    .line 510
    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v4

    .line 514
    check-cast v4, Ljava/lang/Number;

    .line 515
    .line 516
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 517
    .line 518
    .line 519
    move-result-wide v4

    .line 520
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v6

    .line 524
    check-cast v6, Lkotlin/Pair;

    .line 525
    .line 526
    invoke-virtual {v6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object v6

    .line 530
    check-cast v6, Ljava/lang/Number;

    .line 531
    .line 532
    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    .line 533
    .line 534
    .line 535
    move-result-wide v6

    .line 536
    cmp-long v4, v4, v6

    .line 537
    .line 538
    if-eqz v4, :cond_1b

    .line 539
    .line 540
    new-instance v5, LT1/k;

    .line 541
    .line 542
    invoke-direct {v5, v0, v13}, LT1/k;-><init>(II)V

    .line 543
    .line 544
    .line 545
    goto :goto_12

    .line 546
    :cond_1c
    :goto_f
    new-instance v5, LL1/d;

    .line 547
    .line 548
    const/16 v0, 0xc

    .line 549
    .line 550
    invoke-direct {v5, v0}, LL1/d;-><init>(I)V

    .line 551
    .line 552
    .line 553
    goto :goto_12

    .line 554
    :cond_1d
    :goto_10
    new-instance v5, LL1/d;

    .line 555
    .line 556
    const/16 v0, 0xb

    .line 557
    .line 558
    invoke-direct {v5, v0}, LL1/d;-><init>(I)V

    .line 559
    .line 560
    .line 561
    goto :goto_12

    .line 562
    :cond_1e
    :goto_11
    new-instance v5, LL1/d;

    .line 563
    .line 564
    const/16 v0, 0xa

    .line 565
    .line 566
    invoke-direct {v5, v0}, LL1/d;-><init>(I)V

    .line 567
    .line 568
    .line 569
    :goto_12
    return-object v5
.end method

.method public static f(Ljava/io/InputStream;JJLT1/d;Lkotlin/jvm/functions/Function0;)V
    .locals 16

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    if-ltz v2, :cond_b

    .line 7
    .line 8
    cmp-long v2, p3, v0

    .line 9
    .line 10
    if-ltz v2, :cond_b

    .line 11
    .line 12
    new-instance v2, Ljava/util/zip/Inflater;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/util/zip/Inflater;-><init>()V

    .line 15
    .line 16
    .line 17
    const/high16 v4, 0x10000

    .line 18
    .line 19
    new-array v5, v4, [B

    .line 20
    .line 21
    new-array v6, v4, [B

    .line 22
    .line 23
    move-wide v7, v0

    .line 24
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->finished()Z

    .line 25
    .line 26
    .line 27
    move-result v9

    .line 28
    if-nez v9, :cond_8

    .line 29
    .line 30
    invoke-static/range {p6 .. p6}, LT1/h;->c(Lkotlin/jvm/functions/Function0;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->needsInput()Z

    .line 34
    .line 35
    .line 36
    move-result v9

    .line 37
    const/4 v10, 0x0

    .line 38
    if-eqz v9, :cond_3

    .line 39
    .line 40
    cmp-long v9, v7, p1

    .line 41
    .line 42
    if-eqz v9, :cond_2

    .line 43
    .line 44
    int-to-long v11, v4

    .line 45
    sub-long v13, p1, v7

    .line 46
    .line 47
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    .line 48
    .line 49
    .line 50
    move-result-wide v11

    .line 51
    long-to-int v9, v11

    .line 52
    move-object/from16 v11, p0

    .line 53
    .line 54
    invoke-virtual {v11, v5, v10, v9}, Ljava/io/InputStream;->read([BII)I

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    if-ltz v9, :cond_1

    .line 59
    .line 60
    invoke-virtual {v2, v5, v10, v9}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 61
    .line 62
    .line 63
    int-to-long v12, v9

    .line 64
    add-long/2addr v7, v12

    .line 65
    goto :goto_1

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    goto/16 :goto_2

    .line 68
    .line 69
    :cond_1
    new-instance v0, LT1/i;

    .line 70
    .line 71
    const-string v1, "Truncated zlib stream"

    .line 72
    .line 73
    invoke-direct {v0, v1, v3}, LT1/i;-><init>(Ljava/lang/String;Ljava/util/zip/DataFormatException;)V

    .line 74
    .line 75
    .line 76
    throw v0

    .line 77
    :cond_2
    new-instance v0, LT1/i;

    .line 78
    .line 79
    const-string v1, "Unfinished zlib stream"

    .line 80
    .line 81
    invoke-direct {v0, v1, v3}, LT1/i;-><init>(Ljava/lang/String;Ljava/util/zip/DataFormatException;)V

    .line 82
    .line 83
    .line 84
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_3
    move-object/from16 v11, p0

    .line 86
    .line 87
    :goto_1
    :try_start_1
    invoke-virtual {v2, v6}, Ljava/util/zip/Inflater;->inflate([B)I

    .line 88
    .line 89
    .line 90
    move-result v9
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    if-lez v9, :cond_5

    .line 92
    .line 93
    int-to-long v12, v9

    .line 94
    sub-long v14, p3, v12

    .line 95
    .line 96
    cmp-long v14, v0, v14

    .line 97
    .line 98
    if-gtz v14, :cond_4

    .line 99
    .line 100
    move-object/from16 v14, p5

    .line 101
    .line 102
    :try_start_2
    invoke-virtual {v14, v6, v10, v9}, LT1/d;->write([BII)V

    .line 103
    .line 104
    .line 105
    add-long/2addr v0, v12

    .line 106
    goto :goto_0

    .line 107
    :cond_4
    new-instance v0, LT1/i;

    .line 108
    .line 109
    const-string v1, "Zlib output exceeds declared size"

    .line 110
    .line 111
    invoke-direct {v0, v1, v3}, LT1/i;-><init>(Ljava/lang/String;Ljava/util/zip/DataFormatException;)V

    .line 112
    .line 113
    .line 114
    throw v0

    .line 115
    :cond_5
    move-object/from16 v14, p5

    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->needsDictionary()Z

    .line 118
    .line 119
    .line 120
    move-result v9

    .line 121
    if-nez v9, :cond_7

    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->needsInput()Z

    .line 124
    .line 125
    .line 126
    move-result v9

    .line 127
    if-nez v9, :cond_0

    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->finished()Z

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    if-eqz v9, :cond_6

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_6
    new-instance v0, LT1/i;

    .line 137
    .line 138
    const-string v1, "Stalled zlib stream"

    .line 139
    .line 140
    invoke-direct {v0, v1, v3}, LT1/i;-><init>(Ljava/lang/String;Ljava/util/zip/DataFormatException;)V

    .line 141
    .line 142
    .line 143
    throw v0

    .line 144
    :cond_7
    new-instance v0, LT1/i;

    .line 145
    .line 146
    const-string v1, "Zlib dictionary unsupported"

    .line 147
    .line 148
    invoke-direct {v0, v1, v3}, LT1/i;-><init>(Ljava/lang/String;Ljava/util/zip/DataFormatException;)V

    .line 149
    .line 150
    .line 151
    throw v0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    new-instance v1, LT1/i;

    .line 154
    .line 155
    const-string v3, "Invalid zlib stream"

    .line 156
    .line 157
    const-string v4, "message"

    .line 158
    .line 159
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-direct {v1, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    .line 164
    .line 165
    throw v1

    .line 166
    :cond_8
    cmp-long v0, v0, p3

    .line 167
    .line 168
    if-nez v0, :cond_a

    .line 169
    .line 170
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getRemaining()I

    .line 171
    .line 172
    .line 173
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    if-nez v0, :cond_9

    .line 175
    .line 176
    cmp-long v0, v7, p1

    .line 177
    .line 178
    if-nez v0, :cond_9

    .line 179
    .line 180
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->end()V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :cond_9
    :try_start_3
    new-instance v0, LT1/i;

    .line 185
    .line 186
    const-string v1, "Trailing zlib data"

    .line 187
    .line 188
    invoke-direct {v0, v1, v3}, LT1/i;-><init>(Ljava/lang/String;Ljava/util/zip/DataFormatException;)V

    .line 189
    .line 190
    .line 191
    throw v0

    .line 192
    :cond_a
    new-instance v0, LT1/i;

    .line 193
    .line 194
    const-string v1, "Zlib output size mismatch"

    .line 195
    .line 196
    invoke-direct {v0, v1, v3}, LT1/i;-><init>(Ljava/lang/String;Ljava/util/zip/DataFormatException;)V

    .line 197
    .line 198
    .line 199
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 200
    :goto_2
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->end()V

    .line 201
    .line 202
    .line 203
    throw v0

    .line 204
    :cond_b
    new-instance v0, LT1/i;

    .line 205
    .line 206
    const-string v1, "Invalid zlib lengths"

    .line 207
    .line 208
    invoke-direct {v0, v1, v3}, LT1/i;-><init>(Ljava/lang/String;Ljava/util/zip/DataFormatException;)V

    .line 209
    .line 210
    .line 211
    throw v0
.end method

.method public static g(Ljava/io/File;)[B
    .locals 5

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    const-wide/32 v3, 0x10000

    .line 11
    .line 12
    .line 13
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    long-to-int p0, v1

    .line 18
    new-array v1, p0, [B

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, p0, :cond_0

    .line 22
    .line 23
    sub-int v3, p0, v2

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileInputStream;->read([BII)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-ltz v3, :cond_0

    .line 30
    .line 31
    add-int/2addr v2, v3

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string v1, "copyOf(...)"

    .line 40
    .line 41
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    return-object p0

    .line 49
    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    :catchall_1
    move-exception v1

    .line 51
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    throw v1
.end method

.method public static h(IIILT1/d;)V
    .locals 1

    .line 1
    if-nez p2, :cond_1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x20

    .line 6
    .line 7
    if-lt p0, v0, :cond_1

    .line 8
    .line 9
    :cond_0
    xor-int/lit8 p2, p0, 0x1

    .line 10
    .line 11
    invoke-virtual {p3, p2}, LT1/d;->write(I)V

    .line 12
    .line 13
    .line 14
    and-int/lit16 p0, p0, 0xfe

    .line 15
    .line 16
    xor-int/2addr p0, p1

    .line 17
    invoke-virtual {p3, p0}, LT1/d;->write(I)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    if-nez p2, :cond_2

    .line 22
    .line 23
    invoke-virtual {p3, p0}, LT1/d;->write(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3, p1}, LT1/d;->write(I)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    shl-int/lit8 p1, p1, 0x8

    .line 31
    .line 32
    or-int/2addr p0, p1

    .line 33
    const p1, 0xaaaa

    .line 34
    .line 35
    .line 36
    and-int/2addr p1, p0

    .line 37
    ushr-int/lit8 p1, p1, 0x1

    .line 38
    .line 39
    and-int/lit16 p0, p0, 0x5555

    .line 40
    .line 41
    shl-int/lit8 p0, p0, 0x1

    .line 42
    .line 43
    or-int/2addr p0, p1

    .line 44
    and-int/lit16 p1, p0, 0xff

    .line 45
    .line 46
    invoke-virtual {p3, p1}, LT1/d;->write(I)V

    .line 47
    .line 48
    .line 49
    ushr-int/lit8 p0, p0, 0x8

    .line 50
    .line 51
    invoke-virtual {p3, p0}, LT1/d;->write(I)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public static i([BI)J
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
    const-string p1, "Unsigned length too large"

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

.method public static j(Ljava/util/ArrayList;)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "entries"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const v2, 0x30d40

    .line 13
    .line 14
    .line 15
    if-gt v1, v2, :cond_5

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const-wide/16 v3, 0x0

    .line 22
    .line 23
    move-wide v5, v3

    .line 24
    const/4 v7, 0x0

    .line 25
    :goto_0
    if-ge v7, v1, :cond_4

    .line 26
    .line 27
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    add-int/lit8 v11, v7, 0x1

    .line 32
    .line 33
    move-object v12, v8

    .line 34
    check-cast v12, LT1/c;

    .line 35
    .line 36
    iget-wide v7, v12, LT1/c;->b:J

    .line 37
    .line 38
    iget-object v13, v12, LT1/c;->a:Ljava/lang/String;

    .line 39
    .line 40
    cmp-long v9, v7, v3

    .line 41
    .line 42
    if-ltz v9, :cond_3

    .line 43
    .line 44
    const-wide v14, 0x80000000L

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    cmp-long v9, v7, v14

    .line 50
    .line 51
    if-gtz v9, :cond_3

    .line 52
    .line 53
    const-wide v9, 0x200000000L

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    invoke-static/range {v5 .. v10}, LT1/h;->a(JJJ)J

    .line 59
    .line 60
    .line 61
    move-result-wide v5

    .line 62
    iget-object v7, v12, LT1/c;->e:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    move-wide v9, v3

    .line 69
    move-wide/from16 v16, v9

    .line 70
    .line 71
    const/4 v2, 0x0

    .line 72
    :goto_1
    if-ge v2, v8, :cond_1

    .line 73
    .line 74
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v18

    .line 78
    add-int/lit8 v2, v2, 0x1

    .line 79
    .line 80
    move-wide/from16 v24, v3

    .line 81
    .line 82
    move-object/from16 v3, v18

    .line 83
    .line 84
    check-cast v3, LT1/n;

    .line 85
    .line 86
    move-wide/from16 v26, v14

    .line 87
    .line 88
    iget-wide v14, v3, LT1/n;->c:J

    .line 89
    .line 90
    cmp-long v4, v14, v24

    .line 91
    .line 92
    if-ltz v4, :cond_0

    .line 93
    .line 94
    move v4, v1

    .line 95
    iget-wide v0, v3, LT1/n;->d:J

    .line 96
    .line 97
    cmp-long v18, v0, v24

    .line 98
    .line 99
    if-ltz v18, :cond_0

    .line 100
    .line 101
    cmp-long v18, v14, v26

    .line 102
    .line 103
    if-gtz v18, :cond_0

    .line 104
    .line 105
    cmp-long v0, v0, v26

    .line 106
    .line 107
    if-gtz v0, :cond_0

    .line 108
    .line 109
    const-wide v20, 0x80000000L

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    move-wide/from16 v18, v14

    .line 115
    .line 116
    invoke-static/range {v16 .. v21}, LT1/h;->a(JJJ)J

    .line 117
    .line 118
    .line 119
    move-result-wide v16

    .line 120
    iget-wide v0, v3, LT1/n;->d:J

    .line 121
    .line 122
    const-wide v22, 0x80000000L

    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    move-wide/from16 v20, v0

    .line 128
    .line 129
    move-wide/from16 v18, v9

    .line 130
    .line 131
    invoke-static/range {v18 .. v23}, LT1/h;->a(JJJ)J

    .line 132
    .line 133
    .line 134
    move-result-wide v9

    .line 135
    move-object/from16 v0, p0

    .line 136
    .line 137
    move v1, v4

    .line 138
    move-wide/from16 v3, v24

    .line 139
    .line 140
    move-wide/from16 v14, v26

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_0
    new-instance v0, LT1/m;

    .line 144
    .line 145
    const-string v1, "Segment size limit: "

    .line 146
    .line 147
    invoke-static {v1, v13}, Lkotlin/collections/unsigned/a;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-direct {v0, v1}, LT1/m;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw v0

    .line 155
    :cond_1
    move-wide/from16 v24, v3

    .line 156
    .line 157
    move v4, v1

    .line 158
    iget-wide v0, v12, LT1/c;->b:J

    .line 159
    .line 160
    cmp-long v0, v16, v0

    .line 161
    .line 162
    if-nez v0, :cond_2

    .line 163
    .line 164
    move-object/from16 v0, p0

    .line 165
    .line 166
    move v1, v4

    .line 167
    move v7, v11

    .line 168
    move-wide/from16 v3, v24

    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :cond_2
    new-instance v0, LT1/m;

    .line 173
    .line 174
    const-string v1, "Segment size mismatch: "

    .line 175
    .line 176
    invoke-static {v1, v13}, Lkotlin/collections/unsigned/a;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-direct {v0, v1}, LT1/m;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw v0

    .line 184
    :cond_3
    new-instance v0, LT1/m;

    .line 185
    .line 186
    const-string v1, "Entry size limit: "

    .line 187
    .line 188
    invoke-static {v1, v13}, Lkotlin/collections/unsigned/a;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-direct {v0, v1}, LT1/m;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw v0

    .line 196
    :cond_4
    return-void

    .line 197
    :cond_5
    new-instance v0, LT1/m;

    .line 198
    .line 199
    const-string v1, "message"

    .line 200
    .line 201
    const-string v2, "XP3 contains too many entries"

    .line 202
    .line 203
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    throw v0
.end method

.method public static k(Ljava/io/File;Ljava/io/File;[B[BLkotlin/jvm/functions/Function0;J)J
    .locals 20

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-wide/from16 v2, p5

    .line 6
    .line 7
    new-instance v4, Ljava/io/BufferedInputStream;

    .line 8
    .line 9
    new-instance v5, Ljava/io/FileInputStream;

    .line 10
    .line 11
    move-object/from16 v6, p0

    .line 12
    .line 13
    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 14
    .line 15
    .line 16
    const/high16 v7, 0x40000

    .line 17
    .line 18
    invoke-direct {v4, v5, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 19
    .line 20
    .line 21
    :try_start_0
    new-instance v5, Ljava/io/BufferedOutputStream;

    .line 22
    .line 23
    new-instance v8, Ljava/io/FileOutputStream;

    .line 24
    .line 25
    move-object/from16 v9, p1

    .line 26
    .line 27
    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v5, v8, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    .line 32
    .line 33
    :try_start_1
    new-instance v14, LT1/d;

    .line 34
    .line 35
    const-wide v8, 0x80000000L

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 41
    .line 42
    .line 43
    move-result-wide v10

    .line 44
    invoke-direct {v14, v5, v10, v11}, LT1/d;-><init>(Ljava/io/BufferedOutputStream;J)V

    .line 45
    .line 46
    .line 47
    const-string v10, "data"

    .line 48
    .line 49
    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    array-length v10, v1

    .line 53
    const-wide/16 v11, 0x0

    .line 54
    .line 55
    const/4 v13, 0x5

    .line 56
    const/4 v15, 0x0

    .line 57
    move-wide/from16 v16, v8

    .line 58
    .line 59
    const/4 v8, 0x0

    .line 60
    if-lt v10, v13, :cond_f

    .line 61
    .line 62
    aget-byte v9, v1, v15

    .line 63
    .line 64
    const/4 v10, -0x2

    .line 65
    if-ne v9, v10, :cond_f

    .line 66
    .line 67
    const/4 v9, 0x1

    .line 68
    aget-byte v7, v1, v9

    .line 69
    .line 70
    if-ne v7, v10, :cond_f

    .line 71
    .line 72
    const/4 v7, 0x3

    .line 73
    aget-byte v15, v1, v7

    .line 74
    .line 75
    const/4 v9, -0x1

    .line 76
    if-ne v15, v9, :cond_f

    .line 77
    .line 78
    const/4 v15, 0x4

    .line 79
    aget-byte v1, v1, v15

    .line 80
    .line 81
    if-ne v1, v10, :cond_f

    .line 82
    .line 83
    new-array v1, v13, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .line 85
    const/4 v10, 0x0

    .line 86
    :goto_0
    const-string v15, "Truncated scrambled file"

    .line 87
    .line 88
    if-ge v10, v13, :cond_1

    .line 89
    .line 90
    rsub-int/lit8 v9, v10, 0x5

    .line 91
    .line 92
    :try_start_2
    invoke-virtual {v4, v1, v10, v9}, Ljava/io/InputStream;->read([BII)I

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    if-ltz v9, :cond_0

    .line 97
    .line 98
    add-int/2addr v10, v9

    .line 99
    const/4 v9, -0x1

    .line 100
    goto :goto_0

    .line 101
    :cond_0
    new-instance v0, LT1/i;

    .line 102
    .line 103
    invoke-direct {v0, v15, v8}, LT1/i;-><init>(Ljava/lang/String;Ljava/util/zip/DataFormatException;)V

    .line 104
    .line 105
    .line 106
    throw v0

    .line 107
    :goto_1
    move-object v1, v0

    .line 108
    goto/16 :goto_9

    .line 109
    .line 110
    :cond_1
    invoke-static {v1, v0, v11, v12, v13}, LT1/h;->l([B[BJI)V

    .line 111
    .line 112
    .line 113
    const/4 v9, 0x2

    .line 114
    aget-byte v10, v1, v9

    .line 115
    .line 116
    and-int/lit16 v10, v10, 0xff

    .line 117
    .line 118
    move-wide/from16 v18, v11

    .line 119
    .line 120
    const-wide/16 v11, 0x5

    .line 121
    .line 122
    if-ltz v10, :cond_d

    .line 123
    .line 124
    if-ge v10, v7, :cond_d

    .line 125
    .line 126
    new-array v1, v9, [B

    .line 127
    .line 128
    fill-array-data v1, :array_0

    .line 129
    .line 130
    .line 131
    invoke-virtual {v14, v1}, Ljava/io/OutputStream;->write([B)V

    .line 132
    .line 133
    .line 134
    const/4 v1, 0x1

    .line 135
    if-eqz v10, :cond_7

    .line 136
    .line 137
    if-eq v10, v1, :cond_7

    .line 138
    .line 139
    if-eq v10, v9, :cond_2

    .line 140
    .line 141
    goto/16 :goto_6

    .line 142
    .line 143
    :cond_2
    const/16 v1, 0x10

    .line 144
    .line 145
    new-array v7, v1, [B

    .line 146
    .line 147
    const/4 v10, 0x0

    .line 148
    :goto_2
    if-ge v10, v1, :cond_4

    .line 149
    .line 150
    rsub-int/lit8 v13, v10, 0x10

    .line 151
    .line 152
    invoke-virtual {v4, v7, v10, v13}, Ljava/io/InputStream;->read([BII)I

    .line 153
    .line 154
    .line 155
    move-result v13

    .line 156
    if-ltz v13, :cond_3

    .line 157
    .line 158
    add-int/2addr v10, v13

    .line 159
    goto :goto_2

    .line 160
    :cond_3
    new-instance v0, LT1/i;

    .line 161
    .line 162
    invoke-direct {v0, v15, v8}, LT1/i;-><init>(Ljava/lang/String;Ljava/util/zip/DataFormatException;)V

    .line 163
    .line 164
    .line 165
    throw v0

    .line 166
    :cond_4
    invoke-static {v7, v0, v11, v12, v1}, LT1/h;->l([B[BJI)V

    .line 167
    .line 168
    .line 169
    const/4 v1, 0x0

    .line 170
    invoke-static {v7, v1}, LT1/h;->i([BI)J

    .line 171
    .line 172
    .line 173
    move-result-wide v10

    .line 174
    const/16 v1, 0x8

    .line 175
    .line 176
    invoke-static {v7, v1}, LT1/h;->i([BI)J

    .line 177
    .line 178
    .line 179
    move-result-wide v12

    .line 180
    cmp-long v1, v10, v18

    .line 181
    .line 182
    if-ltz v1, :cond_6

    .line 183
    .line 184
    cmp-long v1, v12, v18

    .line 185
    .line 186
    if-ltz v1, :cond_6

    .line 187
    .line 188
    cmp-long v1, v12, v16

    .line 189
    .line 190
    if-gtz v1, :cond_6

    .line 191
    .line 192
    int-to-long v8, v9

    .line 193
    sub-long v1, v2, v8

    .line 194
    .line 195
    cmp-long v1, v12, v1

    .line 196
    .line 197
    if-gtz v1, :cond_6

    .line 198
    .line 199
    invoke-virtual {v6}, Ljava/io/File;->length()J

    .line 200
    .line 201
    .line 202
    move-result-wide v1

    .line 203
    const/16 v3, 0x15

    .line 204
    .line 205
    int-to-long v8, v3

    .line 206
    sub-long/2addr v1, v8

    .line 207
    cmp-long v1, v10, v1

    .line 208
    .line 209
    if-nez v1, :cond_6

    .line 210
    .line 211
    new-instance v9, LT1/g;

    .line 212
    .line 213
    move-object/from16 v15, p4

    .line 214
    .line 215
    invoke-direct {v9, v4, v0, v15}, LT1/g;-><init>(Ljava/io/BufferedInputStream;[BLkotlin/jvm/functions/Function0;)V

    .line 216
    .line 217
    .line 218
    const/4 v2, -0x1

    .line 219
    invoke-static/range {v9 .. v15}, LT1/h;->f(Ljava/io/InputStream;JJLT1/d;Lkotlin/jvm/functions/Function0;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->read()I

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-ne v0, v2, :cond_5

    .line 227
    .line 228
    goto :goto_6

    .line 229
    :cond_5
    new-instance v0, LT1/i;

    .line 230
    .line 231
    const-string v1, "Trailing mode-2 data"

    .line 232
    .line 233
    const/4 v7, 0x0

    .line 234
    invoke-direct {v0, v1, v7}, LT1/i;-><init>(Ljava/lang/String;Ljava/util/zip/DataFormatException;)V

    .line 235
    .line 236
    .line 237
    throw v0

    .line 238
    :catchall_0
    move-exception v0

    .line 239
    goto/16 :goto_1

    .line 240
    .line 241
    :cond_6
    new-instance v0, LT1/i;

    .line 242
    .line 243
    const-string v1, "Invalid mode-2 lengths"

    .line 244
    .line 245
    const/4 v7, 0x0

    .line 246
    invoke-direct {v0, v1, v7}, LT1/i;-><init>(Ljava/lang/String;Ljava/util/zip/DataFormatException;)V

    .line 247
    .line 248
    .line 249
    throw v0

    .line 250
    :cond_7
    const/4 v2, -0x1

    .line 251
    const/high16 v3, 0x40000

    .line 252
    .line 253
    new-array v3, v3, [B

    .line 254
    .line 255
    move v9, v2

    .line 256
    :goto_3
    invoke-static/range {p4 .. p4}, LT1/h;->c(Lkotlin/jvm/functions/Function0;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    .line 260
    .line 261
    .line 262
    move-result v6

    .line 263
    if-ltz v6, :cond_b

    .line 264
    .line 265
    invoke-static {v3, v0, v11, v12, v6}, LT1/h;->l([B[BJI)V

    .line 266
    .line 267
    .line 268
    if-ltz v9, :cond_8

    .line 269
    .line 270
    const/4 v8, 0x0

    .line 271
    aget-byte v13, v3, v8

    .line 272
    .line 273
    and-int/lit16 v8, v13, 0xff

    .line 274
    .line 275
    invoke-static {v9, v8, v10, v14}, LT1/h;->h(IIILT1/d;)V

    .line 276
    .line 277
    .line 278
    move v8, v1

    .line 279
    goto :goto_4

    .line 280
    :cond_8
    const/4 v8, 0x0

    .line 281
    :goto_4
    add-int/lit8 v9, v8, 0x1

    .line 282
    .line 283
    if-ge v9, v6, :cond_9

    .line 284
    .line 285
    aget-byte v13, v3, v8

    .line 286
    .line 287
    and-int/lit16 v13, v13, 0xff

    .line 288
    .line 289
    aget-byte v9, v3, v9

    .line 290
    .line 291
    and-int/lit16 v9, v9, 0xff

    .line 292
    .line 293
    invoke-static {v13, v9, v10, v14}, LT1/h;->h(IIILT1/d;)V

    .line 294
    .line 295
    .line 296
    add-int/lit8 v8, v8, 0x2

    .line 297
    .line 298
    goto :goto_4

    .line 299
    :cond_9
    if-ge v8, v6, :cond_a

    .line 300
    .line 301
    aget-byte v8, v3, v8

    .line 302
    .line 303
    and-int/lit16 v8, v8, 0xff

    .line 304
    .line 305
    move v9, v8

    .line 306
    goto :goto_5

    .line 307
    :cond_a
    move v9, v2

    .line 308
    :goto_5
    int-to-long v1, v6

    .line 309
    add-long/2addr v11, v1

    .line 310
    const/4 v1, 0x1

    .line 311
    const/4 v2, -0x1

    .line 312
    goto :goto_3

    .line 313
    :cond_b
    if-ltz v9, :cond_c

    .line 314
    .line 315
    invoke-virtual {v14, v9}, LT1/d;->write(I)V

    .line 316
    .line 317
    .line 318
    :cond_c
    :goto_6
    iget-wide v0, v14, LT1/d;->d:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 319
    .line 320
    const/4 v7, 0x0

    .line 321
    :try_start_3
    invoke-static {v5, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 322
    .line 323
    .line 324
    invoke-static {v4, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 325
    .line 326
    .line 327
    return-wide v0

    .line 328
    :catchall_1
    move-exception v0

    .line 329
    move-object v1, v0

    .line 330
    goto :goto_a

    .line 331
    :cond_d
    :try_start_4
    invoke-virtual {v14, v1}, Ljava/io/OutputStream;->write([B)V

    .line 332
    .line 333
    .line 334
    const/high16 v3, 0x40000

    .line 335
    .line 336
    new-array v1, v3, [B

    .line 337
    .line 338
    :goto_7
    invoke-static/range {p4 .. p4}, LT1/h;->c(Lkotlin/jvm/functions/Function0;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    .line 342
    .line 343
    .line 344
    move-result v2

    .line 345
    if-ltz v2, :cond_e

    .line 346
    .line 347
    invoke-static {v1, v0, v11, v12, v2}, LT1/h;->l([B[BJI)V

    .line 348
    .line 349
    .line 350
    const/4 v8, 0x0

    .line 351
    invoke-virtual {v14, v1, v8, v2}, LT1/d;->write([BII)V

    .line 352
    .line 353
    .line 354
    int-to-long v2, v2

    .line 355
    add-long/2addr v11, v2

    .line 356
    goto :goto_7

    .line 357
    :cond_e
    iget-wide v0, v14, LT1/d;->d:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 358
    .line 359
    const/4 v7, 0x0

    .line 360
    :try_start_5
    invoke-static {v5, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 361
    .line 362
    .line 363
    invoke-static {v4, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 364
    .line 365
    .line 366
    return-wide v0

    .line 367
    :cond_f
    move-wide/from16 v18, v11

    .line 368
    .line 369
    const/high16 v3, 0x40000

    .line 370
    .line 371
    :try_start_6
    new-array v1, v3, [B

    .line 372
    .line 373
    move-wide/from16 v11, v18

    .line 374
    .line 375
    :goto_8
    invoke-static/range {p4 .. p4}, LT1/h;->c(Lkotlin/jvm/functions/Function0;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    .line 379
    .line 380
    .line 381
    move-result v2

    .line 382
    if-ltz v2, :cond_10

    .line 383
    .line 384
    invoke-static {v1, v0, v11, v12, v2}, LT1/h;->l([B[BJI)V

    .line 385
    .line 386
    .line 387
    const/4 v8, 0x0

    .line 388
    invoke-virtual {v14, v1, v8, v2}, LT1/d;->write([BII)V

    .line 389
    .line 390
    .line 391
    int-to-long v2, v2

    .line 392
    add-long/2addr v11, v2

    .line 393
    goto :goto_8

    .line 394
    :cond_10
    iget-wide v0, v14, LT1/d;->d:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 395
    .line 396
    const/4 v7, 0x0

    .line 397
    :try_start_7
    invoke-static {v5, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 398
    .line 399
    .line 400
    invoke-static {v4, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 401
    .line 402
    .line 403
    return-wide v0

    .line 404
    :goto_9
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 405
    :catchall_2
    move-exception v0

    .line 406
    :try_start_9
    invoke-static {v5, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 407
    .line 408
    .line 409
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 410
    :goto_a
    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 411
    :catchall_3
    move-exception v0

    .line 412
    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 413
    .line 414
    .line 415
    throw v0

    .line 416
    nop

    :array_0
    .array-data 1
        -0x1t
        -0x2t
    .end array-data
.end method

.method public static l([B[BJI)V
    .locals 6

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-ge v0, p4, :cond_1

    .line 9
    .line 10
    aget-byte v1, p0, v0

    .line 11
    .line 12
    int-to-long v2, v0

    .line 13
    add-long/2addr v2, p2

    .line 14
    array-length v4, p1

    .line 15
    int-to-long v4, v4

    .line 16
    rem-long/2addr v2, v4

    .line 17
    long-to-int v2, v2

    .line 18
    aget-byte v2, p1, v2

    .line 19
    .line 20
    xor-int/2addr v1, v2

    .line 21
    int-to-byte v1, v1

    .line 22
    aput-byte v1, p0, v0

    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    :goto_1
    return-void
.end method
