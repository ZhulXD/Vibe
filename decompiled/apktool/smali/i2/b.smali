.class public final Li2/b;
.super Ljava/io/FilterInputStream;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public b:LA1/b;

.field public c:J

.field public d:J


# direct methods
.method public constructor <init>(Ljava/io/BufferedInputStream;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Li2/b;->c:J

    .line 7
    .line 8
    iput-wide v0, p0, Li2/b;->d:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()LA1/b;
    .locals 12

    .line 1
    iget-object v0, p0, Li2/b;->b:LA1/b;

    .line 2
    .line 3
    const/16 v1, 0x200

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-object v0, v0, LA1/b;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Li2/a;

    .line 10
    .line 11
    iget-wide v2, v0, Li2/a;->b:J

    .line 12
    .line 13
    iget-wide v4, p0, Li2/b;->c:J

    .line 14
    .line 15
    cmp-long v0, v2, v4

    .line 16
    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    if-lez v0, :cond_2

    .line 20
    .line 21
    move-wide v4, v2

    .line 22
    :goto_0
    iget-object v0, p0, Li2/b;->b:LA1/b;

    .line 23
    .line 24
    iget-object v0, v0, LA1/b;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Li2/a;

    .line 27
    .line 28
    iget-wide v6, v0, Li2/a;->b:J

    .line 29
    .line 30
    iget-wide v8, p0, Li2/b;->c:J

    .line 31
    .line 32
    sub-long/2addr v6, v8

    .line 33
    cmp-long v0, v4, v6

    .line 34
    .line 35
    if-gez v0, :cond_2

    .line 36
    .line 37
    sub-long/2addr v6, v4

    .line 38
    invoke-virtual {p0, v6, v7}, Li2/b;->skip(J)J

    .line 39
    .line 40
    .line 41
    move-result-wide v6

    .line 42
    cmp-long v0, v6, v2

    .line 43
    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    iget-object v0, p0, Li2/b;->b:LA1/b;

    .line 47
    .line 48
    iget-object v0, v0, LA1/b;->b:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Li2/a;

    .line 51
    .line 52
    iget-wide v8, v0, Li2/a;->b:J

    .line 53
    .line 54
    iget-wide v10, p0, Li2/b;->c:J

    .line 55
    .line 56
    sub-long/2addr v8, v10

    .line 57
    cmp-long v0, v8, v2

    .line 58
    .line 59
    if-gtz v0, :cond_0

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 63
    .line 64
    const-string v1, "Possible tar file corruption"

    .line 65
    .line 66
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v0

    .line 70
    :cond_1
    :goto_1
    add-long/2addr v4, v6

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Li2/b;->b:LA1/b;

    .line 74
    .line 75
    iput-wide v2, p0, Li2/b;->c:J

    .line 76
    .line 77
    iget-wide v4, p0, Li2/b;->d:J

    .line 78
    .line 79
    cmp-long v0, v4, v2

    .line 80
    .line 81
    if-lez v0, :cond_3

    .line 82
    .line 83
    const-wide/16 v6, 0x200

    .line 84
    .line 85
    rem-long/2addr v4, v6

    .line 86
    long-to-int v0, v4

    .line 87
    if-lez v0, :cond_3

    .line 88
    .line 89
    :goto_2
    rsub-int v4, v0, 0x200

    .line 90
    .line 91
    int-to-long v4, v4

    .line 92
    cmp-long v6, v2, v4

    .line 93
    .line 94
    if-gez v6, :cond_3

    .line 95
    .line 96
    sub-long/2addr v4, v2

    .line 97
    invoke-virtual {p0, v4, v5}, Li2/b;->skip(J)J

    .line 98
    .line 99
    .line 100
    move-result-wide v4

    .line 101
    add-long/2addr v2, v4

    .line 102
    goto :goto_2

    .line 103
    :cond_3
    new-array v0, v1, [B

    .line 104
    .line 105
    new-array v2, v1, [B

    .line 106
    .line 107
    const/4 v3, 0x0

    .line 108
    move v4, v3

    .line 109
    :goto_3
    if-ge v4, v1, :cond_5

    .line 110
    .line 111
    rsub-int v5, v4, 0x200

    .line 112
    .line 113
    invoke-virtual {p0, v2, v3, v5}, Li2/b;->read([BII)I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-gez v5, :cond_4

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_4
    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    .line 122
    .line 123
    add-int/2addr v4, v5

    .line 124
    goto :goto_3

    .line 125
    :cond_5
    :goto_4
    move v2, v3

    .line 126
    :goto_5
    if-ge v2, v1, :cond_8

    .line 127
    .line 128
    aget-byte v4, v0, v2

    .line 129
    .line 130
    if-eqz v4, :cond_7

    .line 131
    .line 132
    new-instance v1, LA1/b;

    .line 133
    .line 134
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 135
    .line 136
    .line 137
    new-instance v2, Li2/a;

    .line 138
    .line 139
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 140
    .line 141
    .line 142
    new-instance v4, Ljava/lang/StringBuffer;

    .line 143
    .line 144
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 145
    .line 146
    .line 147
    iput-object v4, v2, Li2/a;->a:Ljava/lang/StringBuffer;

    .line 148
    .line 149
    const-string v4, "user.name"

    .line 150
    .line 151
    const-string v5, ""

    .line 152
    .line 153
    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    const/16 v6, 0x1f

    .line 162
    .line 163
    if-le v5, v6, :cond_6

    .line 164
    .line 165
    invoke-virtual {v4, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    :cond_6
    new-instance v5, Ljava/lang/StringBuffer;

    .line 170
    .line 171
    invoke-direct {v5, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    new-instance v4, Ljava/lang/StringBuffer;

    .line 175
    .line 176
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 177
    .line 178
    .line 179
    iput-object v4, v2, Li2/a;->d:Ljava/lang/StringBuffer;

    .line 180
    .line 181
    iput-object v2, v1, LA1/b;->b:Ljava/lang/Object;

    .line 182
    .line 183
    const/16 v4, 0x64

    .line 184
    .line 185
    invoke-static {v3, v4, v0}, Li2/a;->a(II[B)Ljava/lang/StringBuffer;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    iput-object v3, v2, Li2/a;->a:Ljava/lang/StringBuffer;

    .line 190
    .line 191
    const/16 v3, 0x8

    .line 192
    .line 193
    invoke-static {v4, v3, v0}, Lcom/bumptech/glide/c;->E(II[B)J

    .line 194
    .line 195
    .line 196
    const/16 v5, 0x6c

    .line 197
    .line 198
    invoke-static {v5, v3, v0}, Lcom/bumptech/glide/c;->E(II[B)J

    .line 199
    .line 200
    .line 201
    const/16 v5, 0x74

    .line 202
    .line 203
    invoke-static {v5, v3, v0}, Lcom/bumptech/glide/c;->E(II[B)J

    .line 204
    .line 205
    .line 206
    const/16 v5, 0x7c

    .line 207
    .line 208
    const/16 v6, 0xc

    .line 209
    .line 210
    invoke-static {v5, v6, v0}, Lcom/bumptech/glide/c;->E(II[B)J

    .line 211
    .line 212
    .line 213
    move-result-wide v7

    .line 214
    iput-wide v7, v2, Li2/a;->b:J

    .line 215
    .line 216
    const/16 v5, 0x88

    .line 217
    .line 218
    invoke-static {v5, v6, v0}, Lcom/bumptech/glide/c;->E(II[B)J

    .line 219
    .line 220
    .line 221
    const/16 v5, 0x94

    .line 222
    .line 223
    invoke-static {v5, v3, v0}, Lcom/bumptech/glide/c;->E(II[B)J

    .line 224
    .line 225
    .line 226
    const/16 v5, 0x9c

    .line 227
    .line 228
    aget-byte v5, v0, v5

    .line 229
    .line 230
    iput-byte v5, v2, Li2/a;->c:B

    .line 231
    .line 232
    const/16 v5, 0x9d

    .line 233
    .line 234
    invoke-static {v5, v4, v0}, Li2/a;->a(II[B)Ljava/lang/StringBuffer;

    .line 235
    .line 236
    .line 237
    const/16 v4, 0x101

    .line 238
    .line 239
    invoke-static {v4, v3, v0}, Li2/a;->a(II[B)Ljava/lang/StringBuffer;

    .line 240
    .line 241
    .line 242
    const/16 v4, 0x109

    .line 243
    .line 244
    const/16 v5, 0x20

    .line 245
    .line 246
    invoke-static {v4, v5, v0}, Li2/a;->a(II[B)Ljava/lang/StringBuffer;

    .line 247
    .line 248
    .line 249
    const/16 v4, 0x129

    .line 250
    .line 251
    invoke-static {v4, v5, v0}, Li2/a;->a(II[B)Ljava/lang/StringBuffer;

    .line 252
    .line 253
    .line 254
    const/16 v4, 0x149

    .line 255
    .line 256
    invoke-static {v4, v3, v0}, Lcom/bumptech/glide/c;->E(II[B)J

    .line 257
    .line 258
    .line 259
    const/16 v4, 0x151

    .line 260
    .line 261
    invoke-static {v4, v3, v0}, Lcom/bumptech/glide/c;->E(II[B)J

    .line 262
    .line 263
    .line 264
    const/16 v3, 0x159

    .line 265
    .line 266
    const/16 v4, 0x9b

    .line 267
    .line 268
    invoke-static {v3, v4, v0}, Li2/a;->a(II[B)Ljava/lang/StringBuffer;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    iput-object v0, v2, Li2/a;->d:Ljava/lang/StringBuffer;

    .line 273
    .line 274
    iput-object v1, p0, Li2/b;->b:LA1/b;

    .line 275
    .line 276
    goto :goto_6

    .line 277
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 278
    .line 279
    goto/16 :goto_5

    .line 280
    .line 281
    :cond_8
    :goto_6
    iget-object v0, p0, Li2/b;->b:LA1/b;

    .line 282
    .line 283
    return-object v0
.end method

.method public final declared-synchronized mark(I)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    return-void
.end method

.method public final markSupported()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final read()I
    .locals 4

    const/4 v0, 0x1

    .line 1
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, v1, v2, v0}, Li2/b;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 3
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    :cond_0
    return v0
.end method

.method public final read([BII)I
    .locals 10

    .line 4
    iget-object v0, p0, Li2/b;->b:LA1/b;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 5
    iget-wide v2, p0, Li2/b;->c:J

    .line 6
    iget-object v0, v0, LA1/b;->b:Ljava/lang/Object;

    check-cast v0, Li2/a;

    .line 7
    iget-wide v4, v0, Li2/a;->b:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    return v1

    :cond_0
    sub-long v6, v4, v2

    int-to-long v8, p3

    cmp-long v0, v6, v8

    if-gez v0, :cond_1

    sub-long/2addr v4, v2

    long-to-int p3, v4

    .line 8
    :cond_1
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    if-eq p1, v1, :cond_3

    .line 9
    iget-object p2, p0, Li2/b;->b:LA1/b;

    if-eqz p2, :cond_2

    .line 10
    iget-wide p2, p0, Li2/b;->c:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Li2/b;->c:J

    .line 11
    :cond_2
    iget-wide p2, p0, Li2/b;->d:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Li2/b;->d:J

    :cond_3
    return p1
.end method

.method public final declared-synchronized reset()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/IOException;

    .line 3
    .line 4
    const-string v1, "mark/reset not supported"

    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    throw v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw v0
.end method

.method public final skip(J)J
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-gtz v2, :cond_0

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    const/16 v2, 0x800

    .line 9
    .line 10
    new-array v2, v2, [B

    .line 11
    .line 12
    move-wide v3, p1

    .line 13
    :goto_0
    cmp-long v5, v3, v0

    .line 14
    .line 15
    if-lez v5, :cond_3

    .line 16
    .line 17
    const-wide/16 v5, 0x800

    .line 18
    .line 19
    cmp-long v7, v3, v5

    .line 20
    .line 21
    if-gez v7, :cond_1

    .line 22
    .line 23
    move-wide v5, v3

    .line 24
    :cond_1
    long-to-int v5, v5

    .line 25
    const/4 v6, 0x0

    .line 26
    invoke-virtual {p0, v2, v6, v5}, Li2/b;->read([BII)I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-gez v5, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    int-to-long v5, v5

    .line 34
    sub-long/2addr v3, v5

    .line 35
    goto :goto_0

    .line 36
    :cond_3
    :goto_1
    sub-long/2addr p1, v3

    .line 37
    return-wide p1
.end method
