.class final Lorg/renpy/android/RenpyPrivateArchive;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/renpy/android/RenpyPrivateArchive$Result;
    }
.end annotation


# static fields
.field static final ATTEMPTS:I = 0x2

.field private static final GNU_LONG_NAME:B = 0x4ct

.field static final INTEGRITY_NAME:Ljava/lang/String; = ".renpy7-integrity"

.field static final MAX_ARCHIVE_BYTES:J = 0x40000000L

.field static final MAX_EXTRACTED_BYTES:J = 0x20000000L

.field static final MAX_EXTRACTED_FILES:I = 0x186a0

.field static final MAX_HEADER_BYTES:I = 0x10000

.field static final MAX_TAR_ENTRIES:I = 0x186a0

.field static final NOMEDIA_NAME:Ljava/lang/String; = ".nomedia"

.field private static final PAX_EXTENDED:B = 0x78t

.field private static final PAX_GLOBAL:B = 0x67t


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static collectFiles(Ljava/io/File;Ljava/io/File;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    array-length v1, v0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_4

    .line 11
    .line 12
    aget-object v3, v0, v2

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {p1, p0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-eqz v5, :cond_1

    .line 23
    .line 24
    const-string v5, ".renpy7-integrity"

    .line 25
    .line 26
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-nez v5, :cond_3

    .line 31
    .line 32
    const-string v5, ".nomedia"

    .line 33
    .line 34
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_2

    .line 46
    .line 47
    invoke-static {p0, v3, p2}, Lorg/renpy/android/RenpyPrivateArchive;->collectFiles(Ljava/io/File;Ljava/io/File;Ljava/util/List;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_3

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/io/File;->toURI()Ljava/net/URI;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v3}, Ljava/io/File;->toURI()Ljava/net/URI;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v4, v5}, Ljava/net/URI;->relativize(Ljava/net/URI;)Ljava/net/URI;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v4, "="

    .line 82
    .line 83
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-static {v3}, Lorg/renpy/android/RenpyPrivateArchive;->sha256(Ljava/io/File;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_4
    :goto_2
    return-void
.end method

.method private static containsRegularFile(Ljava/io/File;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    array-length v1, p0

    .line 10
    move v2, v0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_3

    .line 12
    .line 13
    aget-object v3, p0, v2

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-nez v4, :cond_2

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    invoke-static {v3}, Lorg/renpy/android/RenpyPrivateArchive;->containsRegularFile(Ljava/io/File;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    :goto_1
    const/4 p0, 0x1

    .line 38
    return p0

    .line 39
    :cond_3
    return v0
.end method

.method public static deleteRecursively(Ljava/io/File;)V
    .locals 4

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    array-length v1, v0

    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_0
    if-ge v2, v1, :cond_1

    .line 25
    .line 26
    aget-object v3, v0, v2

    .line 27
    .line 28
    invoke-static {v3}, Lorg/renpy/android/RenpyPrivateArchive;->deleteRecursively(Ljava/io/File;)V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 35
    .line 36
    .line 37
    :cond_2
    :goto_1
    return-void
.end method

.method public static extract(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .locals 22

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0x40000000

    .line 6
    .line 7
    .line 8
    cmp-long v0, v0, v2

    .line 9
    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    const-string v0, "archive exceeds size limit"

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    const/high16 v0, 0x10000

    .line 16
    .line 17
    new-array v1, v0, [B

    .line 18
    .line 19
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-instance v3, Li2/b;

    .line 24
    .line 25
    new-instance v4, Ljava/io/BufferedInputStream;

    .line 26
    .line 27
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    .line 28
    .line 29
    new-instance v6, Ljava/io/BufferedInputStream;

    .line 30
    .line 31
    new-instance v7, Ljava/io/FileInputStream;

    .line 32
    .line 33
    move-object/from16 v8, p0

    .line 34
    .line 35
    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {v6, v7, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v5, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {v4, v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 45
    .line 46
    .line 47
    invoke-direct {v3, v4}, Li2/b;-><init>(Ljava/io/BufferedInputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    const/4 v8, 0x0

    .line 51
    const/4 v9, 0x0

    .line 52
    const/4 v10, 0x0

    .line 53
    const-wide/16 v11, 0x0

    .line 54
    .line 55
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Li2/b;->a()LA1/b;

    .line 56
    .line 57
    .line 58
    move-result-object v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    if-eqz v13, :cond_18

    .line 60
    .line 61
    iget-object v14, v13, LA1/b;->b:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v14, Li2/a;

    .line 64
    .line 65
    const/4 v15, 0x1

    .line 66
    add-int/2addr v8, v15

    .line 67
    const/16 p0, 0x0

    .line 68
    .line 69
    const v4, 0x186a0

    .line 70
    .line 71
    .line 72
    if-le v8, v4, :cond_1

    .line 73
    .line 74
    :try_start_2
    const-string v0, "too many entries"

    .line 75
    .line 76
    goto/16 :goto_c

    .line 77
    .line 78
    :catchall_0
    move-exception v0

    .line 79
    goto/16 :goto_d

    .line 80
    .line 81
    :cond_1
    const-wide/16 v16, 0x0

    .line 82
    .line 83
    iget-byte v5, v14, Li2/a;->c:B

    .line 84
    .line 85
    const/16 v6, 0x4c

    .line 86
    .line 87
    const/16 v15, 0x78

    .line 88
    .line 89
    if-eq v5, v15, :cond_12

    .line 90
    .line 91
    const/16 v15, 0x67

    .line 92
    .line 93
    if-eq v5, v15, :cond_12

    .line 94
    .line 95
    if-ne v5, v6, :cond_2

    .line 96
    .line 97
    move-object/from16 v13, p1

    .line 98
    .line 99
    move v0, v8

    .line 100
    const/4 v15, 0x0

    .line 101
    goto/16 :goto_9

    .line 102
    .line 103
    :cond_2
    if-eqz v9, :cond_3

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_3
    invoke-virtual {v13}, LA1/b;->m()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    :goto_1
    const/16 v6, 0x35

    .line 111
    .line 112
    if-eq v5, v6, :cond_5

    .line 113
    .line 114
    const-string v13, "/"

    .line 115
    .line 116
    invoke-virtual {v9, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    move-result v13

    .line 120
    if-eqz v13, :cond_4

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_4
    const/4 v15, 0x0

    .line 124
    goto :goto_3

    .line 125
    :cond_5
    :goto_2
    const/4 v15, 0x1

    .line 126
    :goto_3
    if-eqz v5, :cond_6

    .line 127
    .line 128
    const/16 v13, 0x30

    .line 129
    .line 130
    if-eq v5, v13, :cond_6

    .line 131
    .line 132
    if-eq v5, v6, :cond_6

    .line 133
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    const-string v1, "unsupported entry type \'"

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    int-to-char v1, v5

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v1, "\' for "

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    goto/16 :goto_c

    .line 161
    .line 162
    :cond_6
    invoke-static {v9, v15}, Lorg/renpy/android/RenpyPrivateArchive;->normalizeEntryName(Ljava/lang/String;Z)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    if-nez v5, :cond_7

    .line 167
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    const-string v1, "unsafe path "

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    goto/16 :goto_c

    .line 186
    .line 187
    :cond_7
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    if-eqz v6, :cond_8

    .line 192
    .line 193
    move-object/from16 v13, p1

    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_8
    new-instance v6, Ljava/io/File;

    .line 197
    .line 198
    move-object/from16 v13, p1

    .line 199
    .line 200
    invoke-direct {v6, v13, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v6}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    if-nez v0, :cond_9

    .line 237
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .line 242
    .line 243
    const-string v1, "path escapes the target: "

    .line 244
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    goto/16 :goto_c

    .line 256
    .line 257
    :cond_9
    if-eqz v15, :cond_b

    .line 258
    .line 259
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-nez v0, :cond_a

    .line 264
    .line 265
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    if-nez v0, :cond_a

    .line 270
    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .line 275
    .line 276
    const-string v1, "could not create "

    .line 277
    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    goto/16 :goto_c

    .line 289
    .line 290
    :cond_a
    :goto_4
    move-object/from16 v9, p0

    .line 291
    .line 292
    :goto_5
    const/high16 v0, 0x10000

    .line 293
    .line 294
    goto/16 :goto_0

    .line 295
    .line 296
    :cond_b
    add-int/lit8 v10, v10, 0x1

    .line 297
    .line 298
    const v0, 0x186a0

    .line 299
    .line 300
    .line 301
    if-le v10, v0, :cond_c

    .line 302
    .line 303
    const-string v0, "too many files"

    .line 304
    .line 305
    goto/16 :goto_c

    .line 306
    .line 307
    :cond_c
    iget-wide v14, v14, Li2/a;->b:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 308
    .line 309
    cmp-long v0, v14, v16

    .line 310
    .line 311
    const-string v4, "extracted size limit"

    .line 312
    .line 313
    if-ltz v0, :cond_11

    .line 314
    .line 315
    const-wide/32 v18, 0x20000000

    .line 316
    .line 317
    .line 318
    sub-long v20, v18, v11

    .line 319
    .line 320
    cmp-long v0, v14, v20

    .line 321
    .line 322
    if-lez v0, :cond_d

    .line 323
    .line 324
    goto :goto_8

    .line 325
    :cond_d
    :try_start_3
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    if-eqz v0, :cond_e

    .line 330
    .line 331
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 332
    .line 333
    .line 334
    move-result v7

    .line 335
    if-nez v7, :cond_e

    .line 336
    .line 337
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 338
    .line 339
    .line 340
    move-result v0

    .line 341
    if-nez v0, :cond_e

    .line 342
    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .line 347
    .line 348
    const-string v1, "could not create folder for "

    .line 349
    .line 350
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    goto/16 :goto_c

    .line 361
    .line 362
    :cond_e
    new-instance v5, Ljava/io/BufferedOutputStream;

    .line 363
    .line 364
    new-instance v0, Ljava/io/FileOutputStream;

    .line 365
    .line 366
    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 367
    .line 368
    .line 369
    const/high16 v7, 0x10000

    .line 370
    .line 371
    invoke-direct {v5, v0, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 372
    .line 373
    .line 374
    :goto_6
    :try_start_4
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    .line 375
    .line 376
    .line 377
    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 378
    const/4 v6, -0x1

    .line 379
    if-eq v0, v6, :cond_10

    .line 380
    .line 381
    int-to-long v14, v0

    .line 382
    add-long/2addr v11, v14

    .line 383
    cmp-long v6, v11, v18

    .line 384
    .line 385
    if-lez v6, :cond_f

    .line 386
    .line 387
    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 388
    .line 389
    .line 390
    goto :goto_8

    .line 391
    :cond_f
    const/4 v15, 0x0

    .line 392
    :try_start_6
    invoke-virtual {v5, v1, v15, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 393
    .line 394
    .line 395
    goto :goto_6

    .line 396
    :catchall_1
    move-exception v0

    .line 397
    goto :goto_7

    .line 398
    :cond_10
    const/4 v15, 0x0

    .line 399
    :try_start_7
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 400
    .line 401
    .line 402
    move-object/from16 v9, p0

    .line 403
    .line 404
    move v0, v7

    .line 405
    goto/16 :goto_0

    .line 406
    .line 407
    :goto_7
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 408
    .line 409
    .line 410
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 411
    :cond_11
    :goto_8
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 412
    .line 413
    .line 414
    return-object v4

    .line 415
    :cond_12
    move-object/from16 v13, p1

    .line 416
    .line 417
    const/4 v15, 0x0

    .line 418
    move v0, v8

    .line 419
    :goto_9
    :try_start_9
    iget-wide v7, v14, Li2/a;->b:J

    .line 420
    .line 421
    cmp-long v4, v7, v16

    .line 422
    .line 423
    if-ltz v4, :cond_17

    .line 424
    .line 425
    const-wide/32 v18, 0x10000

    .line 426
    .line 427
    .line 428
    cmp-long v4, v7, v18

    .line 429
    .line 430
    if-lez v4, :cond_13

    .line 431
    .line 432
    goto :goto_b

    .line 433
    :cond_13
    long-to-int v4, v7

    .line 434
    invoke-static {v3, v4}, Lorg/renpy/android/RenpyPrivateArchive;->readFully(Ljava/io/InputStream;I)[B

    .line 435
    .line 436
    .line 437
    move-result-object v4

    .line 438
    if-nez v4, :cond_14

    .line 439
    .line 440
    const-string v0, "truncated header entry"

    .line 441
    .line 442
    goto :goto_c

    .line 443
    :cond_14
    const/16 v7, 0x78

    .line 444
    .line 445
    if-ne v5, v7, :cond_16

    .line 446
    .line 447
    invoke-static {v4}, Lorg/renpy/android/RenpyPrivateArchive;->paxPath([B)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v4

    .line 451
    if-eqz v4, :cond_15

    .line 452
    .line 453
    move-object v9, v4

    .line 454
    :cond_15
    :goto_a
    move v8, v0

    .line 455
    goto/16 :goto_5

    .line 456
    .line 457
    :cond_16
    if-ne v5, v6, :cond_15

    .line 458
    .line 459
    invoke-static {v4}, Lorg/renpy/android/RenpyPrivateArchive;->gnuLongName([B)Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v9

    .line 463
    goto :goto_a

    .line 464
    :cond_17
    :goto_b
    const-string v0, "oversized header entry"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 465
    .line 466
    :goto_c
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 467
    .line 468
    .line 469
    return-object v0

    .line 470
    :cond_18
    const/16 p0, 0x0

    .line 471
    .line 472
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 473
    .line 474
    .line 475
    if-eqz v9, :cond_19

    .line 476
    .line 477
    const-string v0, "header entry with no member after it"

    .line 478
    .line 479
    return-object v0

    .line 480
    :cond_19
    return-object p0

    .line 481
    :goto_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 482
    .line 483
    .line 484
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 485
    :catch_0
    move-exception v0

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    .line 487
    .line 488
    const-string v2, "I/O error: "

    .line 489
    .line 490
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    return-object v0
.end method

.method private static extractAndPublish(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "could not publish the new tree, and the previous one stays at "

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Ljava/io/File;

    .line 12
    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v4, ".staging"

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v3, Ljava/io/File;

    .line 38
    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v5, ".previous"

    .line 52
    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v2}, Lorg/renpy/android/RenpyPrivateArchive;->deleteRecursively(Ljava/io/File;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_0

    .line 71
    .line 72
    new-instance p0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string p1, "could not create "

    .line 75
    .line 76
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0

    .line 91
    :cond_0
    :try_start_0
    invoke-static {p0, v2}, Lorg/renpy/android/RenpyPrivateArchive;->extract(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    if-eqz p0, :cond_1

    .line 96
    .line 97
    invoke-static {v2}, Lorg/renpy/android/RenpyPrivateArchive;->deleteRecursively(Ljava/io/File;)V

    .line 98
    .line 99
    .line 100
    return-object p0

    .line 101
    :cond_1
    :try_start_1
    invoke-static {v2}, Lorg/renpy/android/RenpyPrivateArchive;->hasRequiredContent(Ljava/io/File;)Z

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-nez p0, :cond_2

    .line 106
    .line 107
    const-string p0, "archive lacks main.py, lib/ or renpy/"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    .line 109
    invoke-static {v2}, Lorg/renpy/android/RenpyPrivateArchive;->deleteRecursively(Ljava/io/File;)V

    .line 110
    .line 111
    .line 112
    return-object p0

    .line 113
    :catchall_0
    move-exception p0

    .line 114
    goto :goto_1

    .line 115
    :cond_2
    :try_start_2
    invoke-static {v2}, Lorg/renpy/android/RenpyPrivateArchive;->treeSha256(Ljava/io/File;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-nez v1, :cond_7

    .line 124
    .line 125
    new-instance v1, Ljava/io/File;

    .line 126
    .line 127
    const-string v4, ".renpy7-integrity"

    .line 128
    .line 129
    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-static {v1, p0}, Lorg/renpy/android/RenpyPrivateArchive;->writeSmall(Ljava/io/File;Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    if-nez p0, :cond_3

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_3
    :try_start_3
    new-instance p0, Ljava/io/File;

    .line 140
    .line 141
    const-string v1, ".nomedia"

    .line 142
    .line 143
    invoke-direct {p0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 147
    .line 148
    .line 149
    :catch_0
    :try_start_4
    invoke-static {v3}, Lorg/renpy/android/RenpyPrivateArchive;->deleteRecursively(Ljava/io/File;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 153
    .line 154
    .line 155
    move-result p0

    .line 156
    if-eqz p0, :cond_4

    .line 157
    .line 158
    invoke-virtual {p1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-nez v1, :cond_4

    .line 163
    .line 164
    const-string p0, "could not move the previous tree aside"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 165
    .line 166
    invoke-static {v2}, Lorg/renpy/android/RenpyPrivateArchive;->deleteRecursively(Ljava/io/File;)V

    .line 167
    .line 168
    .line 169
    return-object p0

    .line 170
    :cond_4
    :try_start_5
    invoke-virtual {v2, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-nez v1, :cond_6

    .line 175
    .line 176
    if-eqz p0, :cond_5

    .line 177
    .line 178
    invoke-virtual {v3, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 179
    .line 180
    .line 181
    move-result p0

    .line 182
    if-nez p0, :cond_5

    .line 183
    .line 184
    new-instance p0, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 200
    invoke-static {v2}, Lorg/renpy/android/RenpyPrivateArchive;->deleteRecursively(Ljava/io/File;)V

    .line 201
    .line 202
    .line 203
    return-object p0

    .line 204
    :cond_5
    :try_start_6
    const-string p0, "could not publish the new tree"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 205
    .line 206
    invoke-static {v2}, Lorg/renpy/android/RenpyPrivateArchive;->deleteRecursively(Ljava/io/File;)V

    .line 207
    .line 208
    .line 209
    return-object p0

    .line 210
    :cond_6
    :try_start_7
    invoke-static {v3}, Lorg/renpy/android/RenpyPrivateArchive;->deleteRecursively(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 211
    .line 212
    .line 213
    invoke-static {v2}, Lorg/renpy/android/RenpyPrivateArchive;->deleteRecursively(Ljava/io/File;)V

    .line 214
    .line 215
    .line 216
    const/4 p0, 0x0

    .line 217
    return-object p0

    .line 218
    :cond_7
    :goto_0
    :try_start_8
    const-string p0, "could not record the extracted tree"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 219
    .line 220
    invoke-static {v2}, Lorg/renpy/android/RenpyPrivateArchive;->deleteRecursively(Ljava/io/File;)V

    .line 221
    .line 222
    .line 223
    return-object p0

    .line 224
    :goto_1
    invoke-static {v2}, Lorg/renpy/android/RenpyPrivateArchive;->deleteRecursively(Ljava/io/File;)V

    .line 225
    .line 226
    .line 227
    throw p0
.end method

.method public static gnuLongName([B)Ljava/lang/String;
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    :goto_0
    if-lez v0, :cond_0

    .line 3
    .line 4
    add-int/lit8 v1, v0, -0x1

    .line 5
    .line 6
    aget-byte v1, p0, v1

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    add-int/lit8 v0, v0, -0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    .line 14
    .line 15
    const-string v2, "UTF-8"

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v1, p0, v3, v0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :catch_0
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method

.method public static hasRequiredContent(Ljava/io/File;)Z
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/io/File;

    .line 4
    .line 5
    const-string v1, "main.py"

    .line 6
    .line 7
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Ljava/io/File;

    .line 17
    .line 18
    const-string v1, "lib"

    .line 19
    .line 20
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    new-instance v0, Ljava/io/File;

    .line 30
    .line 31
    const-string v1, "renpy"

    .line 32
    .line 33
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lorg/renpy/android/RenpyPrivateArchive;->containsRegularFile(Ljava/io/File;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_0

    .line 41
    .line 42
    const/4 p0, 0x1

    .line 43
    return p0

    .line 44
    :cond_0
    const/4 p0, 0x0

    .line 45
    return p0
.end method

.method private static hex([B)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    array-length v1, p0

    .line 4
    mul-int/lit8 v1, v1, 0x2

    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7
    .line 8
    .line 9
    array-length v1, p0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_0

    .line 12
    .line 13
    aget-byte v3, p0, v2

    .line 14
    .line 15
    and-int/lit16 v3, v3, 0xff

    .line 16
    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-string v4, "%02x"

    .line 26
    .line 27
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public static isIntact(Ljava/io/File;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lorg/renpy/android/RenpyPrivateArchive;->hasRequiredContent(Ljava/io/File;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 10
    .line 11
    const-string v2, ".renpy7-integrity"

    .line 12
    .line 13
    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lorg/renpy/android/RenpyPrivateArchive;->readSmall(Ljava/io/File;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    invoke-static {p0}, Lorg/renpy/android/RenpyPrivateArchive;->treeSha256(Ljava/io/File;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    return p0

    .line 38
    :cond_1
    return v1
.end method

.method public static normalizeEntryName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    :goto_0
    const-string v1, "./"

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x2

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const-string v1, "."

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    const/4 v4, 0x0

    .line 23
    const-string v5, "/"

    .line 24
    .line 25
    if-eqz p1, :cond_4

    .line 26
    .line 27
    :goto_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    sub-int/2addr p1, v3

    .line 38
    invoke-virtual {p0, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const-string v6, ""

    .line 48
    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    move-object p0, v6

    .line 52
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_4

    .line 57
    .line 58
    return-object v6

    .line 59
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_9

    .line 64
    .line 65
    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-nez p1, :cond_9

    .line 70
    .line 71
    const/16 p1, 0x5c

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-gez p1, :cond_9

    .line 78
    .line 79
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-gez p1, :cond_9

    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-lt p1, v2, :cond_5

    .line 90
    .line 91
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    const/16 v2, 0x3a

    .line 96
    .line 97
    if-ne p1, v2, :cond_5

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_5
    const/4 p1, -0x1

    .line 101
    invoke-virtual {p0, v5, p1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    array-length v2, p1

    .line 106
    :goto_2
    if-ge v4, v2, :cond_8

    .line 107
    .line 108
    aget-object v3, p1, v4

    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-nez v5, :cond_7

    .line 115
    .line 116
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-nez v5, :cond_7

    .line 121
    .line 122
    const-string v5, ".."

    .line 123
    .line 124
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-eqz v3, :cond_6

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_7
    :goto_3
    return-object v0

    .line 135
    :cond_8
    return-object p0

    .line 136
    :cond_9
    :goto_4
    return-object v0
.end method

.method public static paxPath([B)Ljava/lang/String;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    move-object v3, v0

    .line 4
    move v2, v1

    .line 5
    :cond_0
    :goto_0
    array-length v4, p0

    .line 6
    if-ge v2, v4, :cond_5

    .line 7
    .line 8
    move v4, v2

    .line 9
    :goto_1
    array-length v5, p0

    .line 10
    if-ge v4, v5, :cond_1

    .line 11
    .line 12
    aget-byte v5, p0, v4

    .line 13
    .line 14
    const/16 v6, 0x20

    .line 15
    .line 16
    if-eq v5, v6, :cond_1

    .line 17
    .line 18
    add-int/lit8 v4, v4, 0x1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    array-length v5, p0

    .line 22
    if-lt v4, v5, :cond_2

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_2
    :try_start_0
    new-instance v5, Ljava/lang/String;

    .line 26
    .line 27
    sub-int v6, v4, v2

    .line 28
    .line 29
    const-string v7, "US-ASCII"

    .line 30
    .line 31
    invoke-direct {v5, p0, v2, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    if-le v5, v6, :cond_4

    .line 39
    .line 40
    add-int/2addr v2, v5

    .line 41
    array-length v5, p0

    .line 42
    if-le v2, v5, :cond_3

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_3
    :try_start_1
    new-instance v5, Ljava/lang/String;

    .line 46
    .line 47
    add-int/lit8 v6, v4, 0x1

    .line 48
    .line 49
    sub-int v4, v2, v4

    .line 50
    .line 51
    add-int/lit8 v4, v4, -0x2

    .line 52
    .line 53
    const-string v7, "UTF-8"

    .line 54
    .line 55
    invoke-direct {v5, p0, v6, v4, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 56
    .line 57
    .line 58
    const/16 v4, 0x3d

    .line 59
    .line 60
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-lez v4, :cond_0

    .line 65
    .line 66
    invoke-virtual {v5, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    const-string v7, "path"

    .line 71
    .line 72
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-eqz v6, :cond_0

    .line 77
    .line 78
    add-int/lit8 v4, v4, 0x1

    .line 79
    .line 80
    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    goto :goto_0

    .line 85
    :catch_0
    :cond_4
    :goto_2
    return-object v0

    .line 86
    :cond_5
    return-object v3
.end method

.method public static prepare(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Lorg/renpy/android/RenpyPrivateArchive$Result;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_6

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-static {p0}, Lorg/renpy/android/RenpyPrivateArchive;->sha256(Ljava/io/File;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    new-instance p0, Lorg/renpy/android/RenpyPrivateArchive$Result;

    .line 22
    .line 23
    const-string p1, "could not read private.mp3"

    .line 24
    .line 25
    invoke-direct {p0, v0, p1, v0}, Lorg/renpy/android/RenpyPrivateArchive$Result;-><init>(ILjava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_1
    invoke-static {p2}, Lorg/renpy/android/RenpyPrivateArchive;->readSmall(Ljava/io/File;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v3, 0x0

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    invoke-static {p1}, Lorg/renpy/android/RenpyPrivateArchive;->isIntact(Ljava/io/File;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    new-instance p0, Lorg/renpy/android/RenpyPrivateArchive$Result;

    .line 47
    .line 48
    invoke-direct {p0, v0, v3, v0}, Lorg/renpy/android/RenpyPrivateArchive$Result;-><init>(ILjava/lang/String;Z)V

    .line 49
    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_2
    const/4 v2, 0x1

    .line 53
    move v4, v2

    .line 54
    move-object v5, v3

    .line 55
    :goto_0
    const/4 v6, 0x2

    .line 56
    if-gt v4, v6, :cond_5

    .line 57
    .line 58
    invoke-static {p0, p1}, Lorg/renpy/android/RenpyPrivateArchive;->extractAndPublish(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    if-nez v5, :cond_4

    .line 63
    .line 64
    invoke-static {p2, v1}, Lorg/renpy/android/RenpyPrivateArchive;->writeSmall(Ljava/io/File;Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-nez p0, :cond_3

    .line 69
    .line 70
    new-instance p0, Lorg/renpy/android/RenpyPrivateArchive$Result;

    .line 71
    .line 72
    const-string p1, "could not record the archive digest"

    .line 73
    .line 74
    invoke-direct {p0, v0, p1, v2}, Lorg/renpy/android/RenpyPrivateArchive$Result;-><init>(ILjava/lang/String;Z)V

    .line 75
    .line 76
    .line 77
    return-object p0

    .line 78
    :cond_3
    new-instance p0, Lorg/renpy/android/RenpyPrivateArchive$Result;

    .line 79
    .line 80
    invoke-direct {p0, v0, v3, v2}, Lorg/renpy/android/RenpyPrivateArchive$Result;-><init>(ILjava/lang/String;Z)V

    .line 81
    .line 82
    .line 83
    return-object p0

    .line 84
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_5
    new-instance p0, Lorg/renpy/android/RenpyPrivateArchive$Result;

    .line 88
    .line 89
    invoke-direct {p0, v0, v5, v0}, Lorg/renpy/android/RenpyPrivateArchive$Result;-><init>(ILjava/lang/String;Z)V

    .line 90
    .line 91
    .line 92
    return-object p0

    .line 93
    :cond_6
    :goto_1
    new-instance p0, Lorg/renpy/android/RenpyPrivateArchive$Result;

    .line 94
    .line 95
    const-string p1, "private.mp3 is missing"

    .line 96
    .line 97
    invoke-direct {p0, v0, p1, v0}, Lorg/renpy/android/RenpyPrivateArchive$Result;-><init>(ILjava/lang/String;Z)V

    .line 98
    .line 99
    .line 100
    return-object p0
.end method

.method private static readFully(Ljava/io/InputStream;I)[B
    .locals 6

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x2000

    .line 7
    .line 8
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    new-array v2, v1, [B

    .line 18
    .line 19
    :goto_0
    if-lez p1, :cond_1

    .line 20
    .line 21
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-virtual {p0, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v5, -0x1

    .line 31
    if-ne v3, v5, :cond_0

    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return-object p0

    .line 35
    :cond_0
    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 36
    .line 37
    .line 38
    sub-int/2addr p1, v3

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method public static readSmall(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    const-wide/16 v3, 0x100

    .line 16
    .line 17
    cmp-long v1, v1, v3

    .line 18
    .line 19
    if-lez v1, :cond_0

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    long-to-int v1, v1

    .line 27
    new-array v1, v1, [B

    .line 28
    .line 29
    new-instance v2, Ljava/io/FileInputStream;

    .line 30
    .line 31
    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-lez p0, :cond_1

    .line 39
    .line 40
    new-instance v3, Ljava/lang/String;

    .line 41
    .line 42
    const-string v4, "UTF-8"

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    invoke-direct {v3, v1, v5, p0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move-object p0, v0

    .line 56
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 57
    .line 58
    .line 59
    return-object p0

    .line 60
    :goto_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 61
    .line 62
    .line 63
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 64
    :catch_0
    :cond_2
    :goto_2
    return-object v0
.end method

.method public static sha256(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    const-string v0, "SHA-256"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/io/FileInputStream;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    const/high16 p0, 0x10000

    .line 13
    .line 14
    :try_start_1
    new-array p0, p0, [B

    .line 15
    .line 16
    :goto_0
    invoke-virtual {v1, p0}, Ljava/io/InputStream;->read([B)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, -0x1

    .line 21
    if-eq v2, v3, :cond_0

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {v0, p0, v3, v2}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Lorg/renpy/android/RenpyPrivateArchive;->hex([B)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :goto_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 43
    .line 44
    .line 45
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 46
    :catch_0
    const-string p0, ""

    .line 47
    .line 48
    return-object p0
.end method

.method public static treeSha256(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p0, v1}, Lorg/renpy/android/RenpyPrivateArchive;->collectFiles(Ljava/io/File;Ljava/io/File;Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 19
    .line 20
    .line 21
    const-string p0, "SHA-256"

    .line 22
    .line 23
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x0

    .line 32
    :goto_0
    if-ge v3, v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    check-cast v4, Ljava/lang/String;

    .line 41
    .line 42
    const-string v5, "UTF-8"

    .line 43
    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {p0, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 49
    .line 50
    .line 51
    const/16 v4, 0xa

    .line 52
    .line 53
    invoke-virtual {p0, v4}, Ljava/security/MessageDigest;->update(B)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {p0}, Lorg/renpy/android/RenpyPrivateArchive;->hex([B)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    return-object p0

    .line 66
    :catch_0
    return-object v0
.end method

.method public static writeSmall(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :try_start_1
    const-string p0, "UTF-8"

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 17
    .line 18
    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 22
    .line 23
    .line 24
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 25
    :catch_0
    const/4 p0, 0x0

    .line 26
    return p0
.end method
