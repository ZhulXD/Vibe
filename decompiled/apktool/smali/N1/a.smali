.class public final LN1/a;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final a:LN1/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LN1/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LN1/a;->a:LN1/a;

    .line 7
    .line 8
    return-void
.end method

.method public static final a(Ljava/lang/String;)[B
    .locals 11

    .line 1
    sget-object v0, LN1/b;->d:[B

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    rem-int/lit8 v0, v0, 0x4

    .line 16
    .line 17
    if-nez v0, :cond_a

    .line 18
    .line 19
    new-instance v0, Lkotlin/text/Regex;

    .line 20
    .line 21
    const-string v1, "[A-Za-z0-9+/]*={0,2}"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    goto/16 :goto_3

    .line 33
    .line 34
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    mul-int/lit8 v1, v1, 0x3

    .line 41
    .line 42
    div-int/lit8 v1, v1, 0x4

    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 45
    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    move v2, v1

    .line 49
    :cond_2
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-ge v2, v3, :cond_9

    .line 54
    .line 55
    add-int/lit8 v3, v2, 0x1

    .line 56
    .line 57
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    invoke-static {v4}, LN1/a;->b(C)I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    add-int/lit8 v5, v2, 0x2

    .line 66
    .line 67
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    invoke-static {v3}, LN1/a;->b(C)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    add-int/lit8 v6, v2, 0x3

    .line 76
    .line 77
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    add-int/lit8 v2, v2, 0x4

    .line 82
    .line 83
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    const/16 v7, 0x3d

    .line 88
    .line 89
    if-ne v5, v7, :cond_3

    .line 90
    .line 91
    move v8, v1

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    invoke-static {v5}, LN1/a;->b(C)I

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    :goto_1
    if-ne v6, v7, :cond_4

    .line 98
    .line 99
    move v9, v1

    .line 100
    goto :goto_2

    .line 101
    :cond_4
    invoke-static {v6}, LN1/a;->b(C)I

    .line 102
    .line 103
    .line 104
    move-result v9

    .line 105
    :goto_2
    if-ltz v4, :cond_a

    .line 106
    .line 107
    if-ltz v3, :cond_a

    .line 108
    .line 109
    if-ltz v8, :cond_a

    .line 110
    .line 111
    if-ltz v9, :cond_a

    .line 112
    .line 113
    if-ne v5, v7, :cond_5

    .line 114
    .line 115
    if-ne v6, v7, :cond_a

    .line 116
    .line 117
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 118
    .line 119
    .line 120
    move-result v10

    .line 121
    if-ne v2, v10, :cond_6

    .line 122
    .line 123
    if-ne v5, v7, :cond_6

    .line 124
    .line 125
    and-int/lit8 v10, v3, 0xf

    .line 126
    .line 127
    if-nez v10, :cond_a

    .line 128
    .line 129
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 130
    .line 131
    .line 132
    move-result v10

    .line 133
    if-ne v2, v10, :cond_7

    .line 134
    .line 135
    if-ne v6, v7, :cond_7

    .line 136
    .line 137
    and-int/lit8 v10, v8, 0x3

    .line 138
    .line 139
    if-eqz v10, :cond_7

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_7
    shl-int/lit8 v4, v4, 0x2

    .line 143
    .line 144
    shr-int/lit8 v10, v3, 0x4

    .line 145
    .line 146
    or-int/2addr v4, v10

    .line 147
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 148
    .line 149
    .line 150
    if-eq v5, v7, :cond_8

    .line 151
    .line 152
    shl-int/lit8 v3, v3, 0x4

    .line 153
    .line 154
    shr-int/lit8 v4, v8, 0x2

    .line 155
    .line 156
    or-int/2addr v3, v4

    .line 157
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 158
    .line 159
    .line 160
    :cond_8
    if-eq v6, v7, :cond_2

    .line 161
    .line 162
    shl-int/lit8 v3, v8, 0x6

    .line 163
    .line 164
    or-int/2addr v3, v9

    .line 165
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 166
    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 170
    .line 171
    .line 172
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    return-object p0

    .line 174
    :catch_0
    :cond_a
    :goto_3
    const/4 p0, 0x0

    .line 175
    return-object p0
.end method

.method public static b(C)I
    .locals 2

    .line 1
    const/16 v0, 0x41

    .line 2
    .line 3
    if-gt v0, p0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x5b

    .line 6
    .line 7
    if-ge p0, v1, :cond_0

    .line 8
    .line 9
    sub-int/2addr p0, v0

    .line 10
    return p0

    .line 11
    :cond_0
    const/16 v0, 0x61

    .line 12
    .line 13
    if-gt v0, p0, :cond_1

    .line 14
    .line 15
    const/16 v0, 0x7b

    .line 16
    .line 17
    if-ge p0, v0, :cond_1

    .line 18
    .line 19
    add-int/lit8 p0, p0, -0x47

    .line 20
    .line 21
    return p0

    .line 22
    :cond_1
    const/16 v0, 0x30

    .line 23
    .line 24
    if-gt v0, p0, :cond_2

    .line 25
    .line 26
    const/16 v0, 0x3a

    .line 27
    .line 28
    if-ge p0, v0, :cond_2

    .line 29
    .line 30
    add-int/lit8 p0, p0, 0x4

    .line 31
    .line 32
    return p0

    .line 33
    :cond_2
    const/16 v0, 0x2b

    .line 34
    .line 35
    if-ne p0, v0, :cond_3

    .line 36
    .line 37
    const/16 p0, 0x3e

    .line 38
    .line 39
    return p0

    .line 40
    :cond_3
    const/16 v0, 0x2f

    .line 41
    .line 42
    if-ne p0, v0, :cond_4

    .line 43
    .line 44
    const/16 p0, 0x3f

    .line 45
    .line 46
    return p0

    .line 47
    :cond_4
    const/4 p0, -0x1

    .line 48
    return p0
.end method

.method public static f([B[B[B)Z
    .locals 7

    .line 1
    const-string v0, "Ed25519"

    .line 2
    .line 3
    const-string v1, "publicKey"

    .line 4
    .line 5
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v2, "message"

    .line 9
    .line 10
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v3, "signature"

    .line 14
    .line 15
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    new-instance v5, Ljava/security/spec/X509EncodedKeySpec;

    .line 23
    .line 24
    invoke-direct {v5, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const-string v5, "generatePublic(...)"

    .line 32
    .line 33
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, v4}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p2}, Ljava/security/Signature;->verify([B)Z

    .line 47
    .line 48
    .line 49
    move-result p0
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return p0

    .line 51
    :catch_0
    sget-object v0, LN1/x;->a:Ljava/math/BigInteger;

    .line 52
    .line 53
    array-length v0, p0

    .line 54
    const/16 v4, 0x20

    .line 55
    .line 56
    sub-int/2addr v0, v4

    .line 57
    array-length v5, p0

    .line 58
    invoke-static {p0, v0, v5}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    array-length v0, p0

    .line 72
    const/4 v1, 0x0

    .line 73
    if-ne v0, v4, :cond_4

    .line 74
    .line 75
    array-length v0, p2

    .line 76
    const/16 v2, 0x40

    .line 77
    .line 78
    if-eq v0, v2, :cond_0

    .line 79
    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :cond_0
    invoke-static {p0}, LN1/x;->b([B)LN1/w;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-nez v0, :cond_1

    .line 87
    .line 88
    goto/16 :goto_0

    .line 89
    .line 90
    :cond_1
    invoke-static {p2, v1, v4}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-static {v3}, LN1/x;->b([B)LN1/w;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    if-nez v5, :cond_2

    .line 99
    .line 100
    goto/16 :goto_0

    .line 101
    .line 102
    :cond_2
    invoke-static {p2, v4, v2}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    new-instance v2, Ljava/math/BigInteger;

    .line 107
    .line 108
    invoke-static {p2}, Lkotlin/collections/ArraysKt;->reversedArray([B)[B

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    const/4 v4, 0x1

    .line 113
    invoke-direct {v2, v4, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 114
    .line 115
    .line 116
    sget-object p2, LN1/x;->b:Ljava/math/BigInteger;

    .line 117
    .line 118
    invoke-virtual {v2, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    if-ltz v6, :cond_3

    .line 123
    .line 124
    goto/16 :goto_0

    .line 125
    .line 126
    :cond_3
    const-string v6, "SHA-512"

    .line 127
    .line 128
    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    invoke-virtual {v6, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v6, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v6, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    new-instance p1, Ljava/math/BigInteger;

    .line 149
    .line 150
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->reversedArray([B)[B

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    invoke-direct {p1, v4, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    sget-object p1, LN1/x;->g:LN1/w;

    .line 162
    .line 163
    invoke-static {v2, p1}, LN1/x;->c(Ljava/math/BigInteger;LN1/w;)LN1/w;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    invoke-static {p0, v0}, LN1/x;->c(Ljava/math/BigInteger;LN1/w;)LN1/w;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    invoke-static {v5, p0}, LN1/x;->a(LN1/w;LN1/w;)LN1/w;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    iget-object p2, p0, LN1/w;->c:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast p2, Ljava/math/BigInteger;

    .line 181
    .line 182
    iget-object v0, p1, LN1/w;->a:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v0, Ljava/math/BigInteger;

    .line 185
    .line 186
    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    iget-object v2, p0, LN1/w;->a:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v2, Ljava/math/BigInteger;

    .line 193
    .line 194
    iget-object v3, p1, LN1/w;->c:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v3, Ljava/math/BigInteger;

    .line 197
    .line 198
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    sget-object v2, LN1/x;->a:Ljava/math/BigInteger;

    .line 207
    .line 208
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-nez v0, :cond_4

    .line 217
    .line 218
    iget-object p1, p1, LN1/w;->b:Ljava/lang/Object;

    .line 219
    .line 220
    check-cast p1, Ljava/math/BigInteger;

    .line 221
    .line 222
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    iget-object p0, p0, LN1/w;->b:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast p0, Ljava/math/BigInteger;

    .line 229
    .line 230
    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 239
    .line 240
    .line 241
    move-result-object p0

    .line 242
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    .line 243
    .line 244
    .line 245
    move-result p0

    .line 246
    if-nez p0, :cond_4

    .line 247
    .line 248
    move v1, v4

    .line 249
    :cond_4
    :goto_0
    return v1

    .line 250
    :catch_1
    move-exception p0

    .line 251
    throw p0
.end method


# virtual methods
.method public c(Ljava/lang/String;LN1/d;Z)Ljava/io/FileDescriptor;
    .locals 2

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "access"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_2

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    if-eq p2, v0, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    if-ne p2, v0, :cond_0

    .line 22
    .line 23
    sget p2, Landroid/system/OsConstants;->O_RDWR:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 27
    .line 28
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    sget p2, Landroid/system/OsConstants;->O_WRONLY:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    sget p2, Landroid/system/OsConstants;->O_RDONLY:I

    .line 36
    .line 37
    :goto_0
    if-eqz p3, :cond_3

    .line 38
    .line 39
    sget v0, Landroid/system/OsConstants;->O_CREAT:I

    .line 40
    .line 41
    sget v1, Landroid/system/OsConstants;->O_EXCL:I

    .line 42
    .line 43
    or-int/2addr v0, v1

    .line 44
    goto :goto_1

    .line 45
    :cond_3
    const/4 v0, 0x0

    .line 46
    :goto_1
    or-int/2addr p2, v0

    .line 47
    :try_start_0
    sget v0, Landroid/system/OsConstants;->O_NOFOLLOW:I

    .line 48
    .line 49
    or-int/2addr p2, v0

    .line 50
    const/16 v0, 0x180

    .line 51
    .line 52
    invoke-static {p1, p2, v0}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    .line 53
    .line 54
    .line 55
    move-result-object p1
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    return-object p1

    .line 57
    :catch_0
    move-exception p1

    .line 58
    iget p2, p1, Landroid/system/ErrnoException;->errno:I

    .line 59
    .line 60
    sget v0, Landroid/system/OsConstants;->ENOENT:I

    .line 61
    .line 62
    if-eq p2, v0, :cond_5

    .line 63
    .line 64
    if-eqz p3, :cond_4

    .line 65
    .line 66
    sget p3, Landroid/system/OsConstants;->EEXIST:I

    .line 67
    .line 68
    if-ne p2, p3, :cond_4

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_4
    throw p1

    .line 72
    :cond_5
    :goto_2
    const/4 p1, 0x0

    .line 73
    return-object p1
.end method

.method public d(Ljava/lang/String;)[B
    .locals 9

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, LN1/d;->b:LN1/d;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, p1, v0, v1}, LN1/a;->c(Ljava/lang/String;LN1/d;Z)Ljava/io/FileDescriptor;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x0

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    new-instance v2, Ljava/io/FileInputStream;

    .line 18
    .line 19
    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 25
    .line 26
    .line 27
    const/16 v3, 0x2000

    .line 28
    .line 29
    new-array v3, v3, [B

    .line 30
    .line 31
    move v4, v1

    .line 32
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-ltz v5, :cond_5

    .line 37
    .line 38
    invoke-virtual {p1, v3, v1, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 39
    .line 40
    .line 41
    move v6, v1

    .line 42
    :goto_1
    if-ge v6, v5, :cond_3

    .line 43
    .line 44
    aget-byte v7, v3, v6

    .line 45
    .line 46
    const/16 v8, 0xa

    .line 47
    .line 48
    if-ne v7, v8, :cond_2

    .line 49
    .line 50
    add-int/lit8 v4, v4, 0x1

    .line 51
    .line 52
    const/16 v7, 0x2710

    .line 53
    .line 54
    if-gt v4, v7, :cond_1

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string v0, "metadata lines"

    .line 60
    .line 61
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    goto :goto_3

    .line 67
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    int-to-long v5, v5

    .line 75
    const-wide/32 v7, 0x100000

    .line 76
    .line 77
    .line 78
    cmp-long v5, v5, v7

    .line 79
    .line 80
    if-gtz v5, :cond_4

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 84
    .line 85
    const-string v0, "metadata bytes"

    .line 86
    .line 87
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1

    .line 91
    :cond_5
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 92
    .line 93
    .line 94
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    return-object p1

    .line 99
    :goto_3
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 100
    :catchall_1
    move-exception v0

    .line 101
    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    throw v0
.end method

.method public e(Ljava/lang/String;)LN1/e;
    .locals 6

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {p1}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    iget v0, p1, Landroid/system/StructStat;->st_mode:I

    .line 13
    .line 14
    sget v1, Landroid/system/OsConstants;->S_IFMT:I

    .line 15
    .line 16
    and-int/2addr v0, v1

    .line 17
    new-instance v1, LN1/e;

    .line 18
    .line 19
    sget v2, Landroid/system/OsConstants;->S_IFREG:I

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x1

    .line 23
    if-ne v0, v2, :cond_0

    .line 24
    .line 25
    move v2, v4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v2, v3

    .line 28
    :goto_0
    sget v5, Landroid/system/OsConstants;->S_IFLNK:I

    .line 29
    .line 30
    if-ne v0, v5, :cond_1

    .line 31
    .line 32
    move v3, v4

    .line 33
    :cond_1
    iget-wide v4, p1, Landroid/system/StructStat;->st_size:J

    .line 34
    .line 35
    invoke-direct {v1, v2, v3, v4, v5}, LN1/e;-><init>(ZZJ)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    return-object v1

    .line 39
    :catch_0
    move-exception p1

    .line 40
    iget v0, p1, Landroid/system/ErrnoException;->errno:I

    .line 41
    .line 42
    sget v1, Landroid/system/OsConstants;->ENOENT:I

    .line 43
    .line 44
    if-ne v0, v1, :cond_3

    .line 45
    .line 46
    :cond_2
    const/4 p1, 0x0

    .line 47
    return-object p1

    .line 48
    :cond_3
    throw p1
.end method
