.class public final LN1/b;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final d:[B

.field public static final e:[B


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[B

.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "RPGHUB-OTA-V2-CIPHERTEXT-SHA256\u0000"

    .line 2
    .line 3
    sget-object v1, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "getBytes(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, LN1/b;->d:[B

    .line 15
    .line 16
    const/16 v0, 0xc

    .line 17
    .line 18
    new-array v0, v0, [B

    .line 19
    .line 20
    fill-array-data v0, :array_0

    .line 21
    .line 22
    .line 23
    sput-object v0, LN1/b;->e:[B

    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :array_0
    .array-data 1
        0x30t
        0x2at
        0x30t
        0x5t
        0x6t
        0x3t
        0x2bt
        0x65t
        0x70t
        0x3t
        0x21t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    new-instance v0, LN1/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "engine"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v0, "GyqoKzP180cOF6RMqbGfMIjDw/h+nxwC4UZkfoTUb2k="

    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    :cond_0
    move-object v0, v1

    .line 34
    :cond_1
    iput-object v0, p0, LN1/b;->a:Ljava/lang/String;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-static {v0}, LN1/a;->a(Ljava/lang/String;)[B

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    if-eqz v3, :cond_3

    .line 44
    .line 45
    array-length v4, v3

    .line 46
    const/16 v5, 0x20

    .line 47
    .line 48
    sget-object v6, LN1/b;->e:[B

    .line 49
    .line 50
    if-ne v4, v5, :cond_2

    .line 51
    .line 52
    invoke-static {v6, v3}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const/16 v5, 0x2c

    .line 58
    .line 59
    if-gt v5, v4, :cond_3

    .line 60
    .line 61
    const/16 v5, 0x41

    .line 62
    .line 63
    if-ge v4, v5, :cond_3

    .line 64
    .line 65
    array-length v4, v6

    .line 66
    invoke-static {v3, v2, v4}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-static {v4, v6}, Ljava/util/Arrays;->equals([B[B)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_3

    .line 75
    .line 76
    move-object v1, v3

    .line 77
    :cond_3
    :goto_0
    iput-object v1, p0, LN1/b;->b:[B

    .line 78
    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    if-nez v1, :cond_4

    .line 82
    .line 83
    const/4 v2, 0x1

    .line 84
    :cond_4
    iput-boolean v2, p0, LN1/b;->c:Z

    .line 85
    .line 86
    return-void
.end method


# virtual methods
.method public final a(LN1/n;[B)LN1/y;
    .locals 9

    .line 1
    const-string v0, "invalid Ed25519 public key"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const-string v2, "manifest"

    .line 6
    .line 7
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "ciphertext"

    .line 11
    .line 12
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, LN1/b;->a:Ljava/lang/String;

    .line 16
    .line 17
    const-string v3, "message"

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    const-string p1, "signature verifier unavailable"

    .line 22
    .line 23
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance p2, LN1/y;

    .line 27
    .line 28
    sget-object v0, LN1/z;->g:LN1/z;

    .line 29
    .line 30
    invoke-direct {p2, v0, p1}, LN1/y;-><init>(LN1/z;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object p2

    .line 34
    :cond_0
    iget-boolean v2, p0, LN1/b;->c:Z

    .line 35
    .line 36
    if-nez v2, :cond_9

    .line 37
    .line 38
    iget-object v2, p0, LN1/b;->b:[B

    .line 39
    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    goto/16 :goto_8

    .line 43
    .line 44
    :cond_1
    :try_start_0
    invoke-static {p1}, LN1/m;->a(LN1/n;)[B

    .line 45
    .line 46
    .line 47
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 48
    const-string v5, "SHA-256"

    .line 49
    .line 50
    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v5, p2}, Ljava/security/MessageDigest;->digest([B)[B

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    .line 59
    .line 60
    array-length v6, v4

    .line 61
    array-length v7, p2

    .line 62
    add-int/2addr v6, v7

    .line 63
    sget-object v7, LN1/b;->d:[B

    .line 64
    .line 65
    array-length v8, v7

    .line 66
    add-int/2addr v6, v8

    .line 67
    invoke-direct {v5, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write([B)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write([B)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5, p2}, Ljava/io/OutputStream;->write([B)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    iget-object p1, p1, LN1/n;->d:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {p1}, LN1/a;->a(Ljava/lang/String;)[B

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-nez p1, :cond_2

    .line 90
    .line 91
    new-instance p1, LN1/y;

    .line 92
    .line 93
    sget-object p2, LN1/z;->e:LN1/z;

    .line 94
    .line 95
    const-string v0, "invalid Base64 signature"

    .line 96
    .line 97
    invoke-direct {p1, p2, v0}, LN1/y;-><init>(LN1/z;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-object p1

    .line 101
    :cond_2
    array-length v4, p1

    .line 102
    const/16 v5, 0x40

    .line 103
    .line 104
    if-eq v4, v5, :cond_3

    .line 105
    .line 106
    new-instance p1, LN1/y;

    .line 107
    .line 108
    sget-object p2, LN1/z;->e:LN1/z;

    .line 109
    .line 110
    const-string v0, "invalid Ed25519 signature length"

    .line 111
    .line 112
    invoke-direct {p1, p2, v0}, LN1/y;-><init>(LN1/z;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-object p1

    .line 116
    :cond_3
    :try_start_1
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-static {v2, p2, p1}, LN1/a;->f([B[B[B)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_4

    .line 124
    .line 125
    new-instance p1, LN1/y;

    .line 126
    .line 127
    sget-object p2, LN1/z;->b:LN1/z;

    .line 128
    .line 129
    invoke-direct {p1, p2, v1}, LN1/y;-><init>(LN1/z;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    return-object p1

    .line 133
    :cond_4
    new-instance p1, LN1/y;

    .line 134
    .line 135
    sget-object p2, LN1/z;->c:LN1/z;

    .line 136
    .line 137
    const-string v2, "signature mismatch"

    .line 138
    .line 139
    invoke-direct {p1, p2, v2}, LN1/y;-><init>(LN1/z;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 140
    .line 141
    .line 142
    return-object p1

    .line 143
    :catch_0
    move-exception p1

    .line 144
    goto :goto_0

    .line 145
    :catch_1
    move-exception p1

    .line 146
    goto :goto_2

    .line 147
    :catch_2
    move-exception p1

    .line 148
    goto :goto_4

    .line 149
    :catch_3
    new-instance p1, LN1/y;

    .line 150
    .line 151
    sget-object p2, LN1/z;->c:LN1/z;

    .line 152
    .line 153
    const-string v0, "signature verification failed"

    .line 154
    .line 155
    invoke-direct {p1, p2, v0}, LN1/y;-><init>(LN1/z;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    goto :goto_6

    .line 159
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    if-nez p1, :cond_5

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_5
    move-object v1, p1

    .line 167
    :goto_1
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    new-instance p1, LN1/y;

    .line 171
    .line 172
    sget-object p2, LN1/z;->g:LN1/z;

    .line 173
    .line 174
    invoke-direct {p1, p2, v1}, LN1/y;-><init>(LN1/z;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    goto :goto_6

    .line 178
    :catch_4
    new-instance p1, LN1/y;

    .line 179
    .line 180
    sget-object p2, LN1/z;->e:LN1/z;

    .line 181
    .line 182
    const-string v0, "malformed Ed25519 signature"

    .line 183
    .line 184
    invoke-direct {p1, p2, v0}, LN1/y;-><init>(LN1/z;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    goto :goto_6

    .line 188
    :catch_5
    new-instance p1, LN1/y;

    .line 189
    .line 190
    sget-object p2, LN1/z;->d:LN1/z;

    .line 191
    .line 192
    invoke-direct {p1, p2, v0}, LN1/y;-><init>(LN1/z;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    goto :goto_6

    .line 196
    :catch_6
    new-instance p1, LN1/y;

    .line 197
    .line 198
    sget-object p2, LN1/z;->d:LN1/z;

    .line 199
    .line 200
    invoke-direct {p1, p2, v0}, LN1/y;-><init>(LN1/z;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    goto :goto_6

    .line 204
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    if-nez p1, :cond_6

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_6
    move-object v1, p1

    .line 212
    :goto_3
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    new-instance p1, LN1/y;

    .line 216
    .line 217
    sget-object p2, LN1/z;->g:LN1/z;

    .line 218
    .line 219
    invoke-direct {p1, p2, v1}, LN1/y;-><init>(LN1/z;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    goto :goto_6

    .line 223
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    if-nez p1, :cond_7

    .line 228
    .line 229
    goto :goto_5

    .line 230
    :cond_7
    move-object v1, p1

    .line 231
    :goto_5
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    new-instance p1, LN1/y;

    .line 235
    .line 236
    sget-object p2, LN1/z;->g:LN1/z;

    .line 237
    .line 238
    invoke-direct {p1, p2, v1}, LN1/y;-><init>(LN1/z;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    :goto_6
    return-object p1

    .line 242
    :catch_7
    move-exception p1

    .line 243
    new-instance p2, LN1/y;

    .line 244
    .line 245
    sget-object v0, LN1/z;->f:LN1/z;

    .line 246
    .line 247
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    if-nez p1, :cond_8

    .line 252
    .line 253
    goto :goto_7

    .line 254
    :cond_8
    move-object v1, p1

    .line 255
    :goto_7
    invoke-direct {p2, v0, v1}, LN1/y;-><init>(LN1/z;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    return-object p2

    .line 259
    :cond_9
    :goto_8
    new-instance p1, LN1/y;

    .line 260
    .line 261
    sget-object p2, LN1/z;->d:LN1/z;

    .line 262
    .line 263
    const-string v0, "invalid Base64 public key"

    .line 264
    .line 265
    invoke-direct {p1, p2, v0}, LN1/y;-><init>(LN1/z;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    return-object p1
.end method
