.class public final Ly1/y1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final a:Ly1/y1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ly1/y1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ly1/y1;->a:Ly1/y1;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static final a(LL1/a;Landroid/content/Context;Ly1/v1;)V
    .locals 10

    .line 1
    invoke-static {p0, p1, p2}, Ly1/y1;->o(LL1/a;Landroid/content/Context;Ly1/v1;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_3

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    array-length v1, p1

    .line 24
    const/4 v2, 0x0

    .line 25
    move v3, v2

    .line 26
    :goto_0
    if-ge v3, v1, :cond_2

    .line 27
    .line 28
    aget-object v4, p1, v3

    .line 29
    .line 30
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    const-string v6, "getName(...)"

    .line 35
    .line 36
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p2, p0}, Ly1/y1;->l(Ly1/v1;LL1/a;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    new-instance v8, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v9, "."

    .line 46
    .line 47
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    invoke-static {v5, v7}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_1

    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string v6, ".staging"

    .line 74
    .line 75
    invoke-static {v5, v6}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_1

    .line 80
    .line 81
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    :goto_1
    if-ge v2, p0, :cond_3

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    add-int/lit8 v2, v2, 0x1

    .line 98
    .line 99
    check-cast p1, Ljava/io/File;

    .line 100
    .line 101
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-static {p1}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    :goto_2
    return-void
.end method

.method public static final b(Ljava/lang/String;Ljava/io/File;Lkotlin/jvm/functions/Function1;)V
    .locals 19

    .line 1
    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-static/range {p0 .. p0}, Ly1/y1;->n(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    .line 3
    .line 4
    .line 5
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 6
    :try_start_1
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLengthLong()J

    .line 7
    .line 8
    .line 9
    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    const-wide/32 v5, 0x40000000

    .line 11
    .line 12
    .line 13
    cmp-long v0, v3, v5

    .line 14
    .line 15
    const-string v7, "Download exceeds byte limit"

    .line 16
    .line 17
    if-gtz v0, :cond_5

    .line 18
    .line 19
    :try_start_2
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 20
    .line 21
    .line 22
    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 23
    :try_start_3
    new-instance v9, Ljava/io/FileOutputStream;

    .line 24
    .line 25
    move-object/from16 v0, p1

    .line 26
    .line 27
    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 28
    .line 29
    .line 30
    const/16 v0, 0x2000

    .line 31
    .line 32
    :try_start_4
    new-array v0, v0, [B

    .line 33
    .line 34
    const/4 v10, -0x1

    .line 35
    move-wide v15, v5

    .line 36
    move v14, v10

    .line 37
    const-wide/16 v12, 0x0

    .line 38
    .line 39
    :goto_0
    invoke-virtual {v8, v0}, Ljava/io/InputStream;->read([B)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eq v5, v10, :cond_2

    .line 44
    .line 45
    const-wide/16 v17, 0x0

    .line 46
    .line 47
    int-to-long v10, v5

    .line 48
    add-long/2addr v12, v10

    .line 49
    cmp-long v6, v12, v15

    .line 50
    .line 51
    if-gtz v6, :cond_1

    .line 52
    .line 53
    const/4 v6, 0x0

    .line 54
    invoke-virtual {v9, v0, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 55
    .line 56
    .line 57
    cmp-long v5, v3, v17

    .line 58
    .line 59
    if-lez v5, :cond_0

    .line 60
    .line 61
    const/16 v5, 0x64

    .line 62
    .line 63
    int-to-long v5, v5

    .line 64
    mul-long/2addr v5, v12

    .line 65
    div-long/2addr v5, v3

    .line 66
    long-to-int v5, v5

    .line 67
    if-eq v5, v14, :cond_0

    .line 68
    .line 69
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    move-object/from16 v10, p2

    .line 74
    .line 75
    invoke-interface {v10, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move v14, v5

    .line 79
    :goto_1
    const/4 v10, -0x1

    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    move-object v1, v0

    .line 83
    goto :goto_3

    .line 84
    :cond_0
    move-object/from16 v10, p2

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 88
    .line 89
    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw v0

    .line 93
    :cond_2
    const-wide/16 v17, 0x0

    .line 94
    .line 95
    cmp-long v0, v3, v17

    .line 96
    .line 97
    if-ltz v0, :cond_4

    .line 98
    .line 99
    cmp-long v0, v12, v3

    .line 100
    .line 101
    if-nez v0, :cond_3

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 105
    .line 106
    const-string v1, "Downloaded size mismatch"

    .line 107
    .line 108
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw v0

    .line 112
    :cond_4
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 113
    .line 114
    :try_start_5
    invoke-static {v9, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 115
    .line 116
    .line 117
    :try_start_6
    invoke-static {v8, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :catchall_1
    move-exception v0

    .line 125
    move-object v1, v2

    .line 126
    goto :goto_5

    .line 127
    :catchall_2
    move-exception v0

    .line 128
    move-object v1, v0

    .line 129
    goto :goto_4

    .line 130
    :goto_3
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 131
    :catchall_3
    move-exception v0

    .line 132
    :try_start_8
    invoke-static {v9, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 136
    :goto_4
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 137
    :catchall_4
    move-exception v0

    .line 138
    :try_start_a
    invoke-static {v8, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 139
    .line 140
    .line 141
    throw v0

    .line 142
    :cond_5
    new-instance v0, Ljava/io/IOException;

    .line 143
    .line 144
    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 148
    :catchall_5
    move-exception v0

    .line 149
    :goto_5
    if-eqz v1, :cond_6

    .line 150
    .line 151
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 152
    .line 153
    .line 154
    :cond_6
    throw v0
.end method

.method public static final c(Ljava/io/File;Ljava/io/File;)V
    .locals 16

    .line 1
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipInputStream;

    .line 2
    .line 3
    new-instance v0, Ljava/io/FileInputStream;

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 8
    .line 9
    .line 10
    const/16 v2, 0x2000

    .line 11
    .line 12
    new-instance v3, Ljava/io/BufferedInputStream;

    .line 13
    .line 14
    invoke-direct {v3, v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const-wide/16 v6, 0x0

    .line 34
    .line 35
    const/4 v8, 0x0

    .line 36
    const/4 v9, 0x0

    .line 37
    :goto_0
    if-eqz v4, :cond_e

    .line 38
    .line 39
    add-int/lit8 v8, v8, 0x1

    .line 40
    .line 41
    const v11, 0x186a0

    .line 42
    .line 43
    .line 44
    if-gt v8, v11, :cond_d

    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v12

    .line 50
    const-string v13, "getName(...)"

    .line 51
    .line 52
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v12}, Ly1/y1;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v12

    .line 59
    if-eqz v12, :cond_c

    .line 60
    .line 61
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 62
    .line 63
    .line 64
    move-result v13

    .line 65
    if-nez v13, :cond_0

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    move-object v2, v0

    .line 77
    goto/16 :goto_6

    .line 78
    .line 79
    :cond_0
    invoke-virtual {v0, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v13

    .line 83
    if-eqz v13, :cond_b

    .line 84
    .line 85
    new-instance v13, Ljava/io/File;

    .line 86
    .line 87
    move-object/from16 v14, p1

    .line 88
    .line 89
    invoke-direct {v13, v14, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v13}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 93
    .line 94
    .line 95
    move-result-object v12

    .line 96
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v13

    .line 100
    const-string v15, "getPath(...)"

    .line 101
    .line 102
    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v15

    .line 109
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    .line 110
    .line 111
    new-instance v5, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-static {v13, v5}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-eqz v5, :cond_a

    .line 131
    .line 132
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-nez v4, :cond_8

    .line 137
    .line 138
    add-int/lit8 v9, v9, 0x1

    .line 139
    .line 140
    if-gt v9, v11, :cond_7

    .line 141
    .line 142
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    :goto_1
    if-eqz v4, :cond_3

    .line 147
    .line 148
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-nez v5, :cond_3

    .line 153
    .line 154
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-eqz v5, :cond_2

    .line 159
    .line 160
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    if-eqz v5, :cond_1

    .line 165
    .line 166
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    if-eqz v5, :cond_1

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 182
    .line 183
    const-string v2, "Unsafe ZIP directory"

    .line 184
    .line 185
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw v0

    .line 189
    :cond_2
    :goto_2
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    goto :goto_1

    .line 194
    :cond_3
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    if-eqz v4, :cond_4

    .line 199
    .line 200
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 201
    .line 202
    .line 203
    :cond_4
    new-instance v4, Ljava/io/FileOutputStream;

    .line 204
    .line 205
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    invoke-direct {v4, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    .line 210
    .line 211
    :try_start_2
    new-array v5, v2, [B

    .line 212
    .line 213
    :goto_3
    invoke-virtual {v1, v5}, Ljava/io/InputStream;->read([B)I

    .line 214
    .line 215
    .line 216
    move-result v10

    .line 217
    const/4 v11, -0x1

    .line 218
    if-eq v10, v11, :cond_6

    .line 219
    .line 220
    int-to-long v11, v10

    .line 221
    add-long/2addr v6, v11

    .line 222
    const-wide/32 v11, 0x20000000

    .line 223
    .line 224
    .line 225
    cmp-long v11, v6, v11

    .line 226
    .line 227
    if-gtz v11, :cond_5

    .line 228
    .line 229
    const/4 v11, 0x0

    .line 230
    invoke-virtual {v4, v5, v11, v10}, Ljava/io/FileOutputStream;->write([BII)V

    .line 231
    .line 232
    .line 233
    goto :goto_3

    .line 234
    :catchall_1
    move-exception v0

    .line 235
    move-object v2, v0

    .line 236
    goto :goto_4

    .line 237
    :cond_5
    new-instance v0, Ljava/io/IOException;

    .line 238
    .line 239
    const-string v2, "ZIP byte limit exceeded"

    .line 240
    .line 241
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    throw v0

    .line 245
    :cond_6
    const/4 v11, 0x0

    .line 246
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 247
    .line 248
    const/4 v5, 0x0

    .line 249
    :try_start_3
    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 250
    .line 251
    .line 252
    goto :goto_5

    .line 253
    :goto_4
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 254
    :catchall_2
    move-exception v0

    .line 255
    :try_start_5
    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 256
    .line 257
    .line 258
    throw v0

    .line 259
    :cond_7
    new-instance v0, Ljava/io/IOException;

    .line 260
    .line 261
    const-string v2, "ZIP file limit exceeded"

    .line 262
    .line 263
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    throw v0

    .line 267
    :cond_8
    const/4 v11, 0x0

    .line 268
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    .line 269
    .line 270
    .line 271
    move-result v4

    .line 272
    if-nez v4, :cond_9

    .line 273
    .line 274
    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 275
    .line 276
    .line 277
    :cond_9
    :goto_5
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    goto/16 :goto_0

    .line 285
    .line 286
    :cond_a
    new-instance v0, Ljava/io/IOException;

    .line 287
    .line 288
    const-string v2, "ZIP path escapes staging"

    .line 289
    .line 290
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    throw v0

    .line 294
    :cond_b
    new-instance v0, Ljava/io/IOException;

    .line 295
    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .line 300
    .line 301
    const-string v3, "Duplicate ZIP entry: "

    .line 302
    .line 303
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    throw v0

    .line 317
    :cond_c
    new-instance v0, Ljava/io/IOException;

    .line 318
    .line 319
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    new-instance v3, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .line 327
    .line 328
    const-string v4, "Unsafe ZIP path: "

    .line 329
    .line 330
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    throw v0

    .line 344
    :cond_d
    new-instance v0, Ljava/io/IOException;

    .line 345
    .line 346
    const-string v2, "ZIP entry limit exceeded"

    .line 347
    .line 348
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    throw v0

    .line 352
    :cond_e
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 353
    .line 354
    const/4 v5, 0x0

    .line 355
    :try_start_6
    invoke-static {v1, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/util/zip/ZipException; {:try_start_6 .. :try_end_6} :catch_0

    .line 356
    .line 357
    .line 358
    return-void

    .line 359
    :goto_6
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 360
    :catchall_3
    move-exception v0

    .line 361
    :try_start_8
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 362
    .line 363
    .line 364
    throw v0
    :try_end_8
    .catch Ljava/util/zip/ZipException; {:try_start_8 .. :try_end_8} :catch_0

    .line 365
    :catch_0
    move-exception v0

    .line 366
    new-instance v1, Ljava/io/IOException;

    .line 367
    .line 368
    const-string v2, "Invalid ZIP archive"

    .line 369
    .line 370
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 371
    .line 372
    .line 373
    throw v1
.end method

.method public static final d(Ljava/io/File;Ljava/io/File;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "."

    .line 12
    .line 13
    const-string v4, ".previous"

    .line 14
    .line 15
    invoke-static {v3, v2, v4}, LE/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 39
    .line 40
    const-string p1, "Could not stage previous plugin"

    .line 41
    .line 42
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0

    .line 46
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-nez p0, :cond_3

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 55
    .line 56
    .line 57
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 58
    .line 59
    const-string p1, "Could not publish plugin"

    .line 60
    .line 61
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0

    .line 65
    :cond_3
    invoke-static {v0}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public static final e(LL1/a;Landroid/content/Context;Ly1/v1;)V
    .locals 8

    .line 1
    invoke-static {p0, p1, p2}, Ly1/y1;->o(LL1/a;Landroid/content/Context;Ly1/v1;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {v0}, LM1/e;->a(Ljava/io/File;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/4 v6, 0x0

    .line 19
    const/16 v7, 0x3e

    .line 20
    .line 21
    const-string v3, "\n"

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-static/range {v2 .. v7}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Ljava/io/File;

    .line 30
    .line 31
    invoke-static {p0, p1, p2}, Ly1/y1;->o(LL1/a;Landroid/content/Context;Ly1/v1;)Ljava/io/File;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string p2, ".install-trust"

    .line 36
    .line 37
    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, LL1/a;->g:Ljava/lang/String;

    .line 41
    .line 42
    iget-object p2, p0, LL1/a;->e:Ljava/lang/String;

    .line 43
    .line 44
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 45
    .line 46
    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    const-string v3, "toLowerCase(...)"

    .line 51
    .line 52
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, LL1/a;->f:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v3, "VERIFIED\n"

    .line 67
    .line 68
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p1, "\n"

    .line 75
    .line 76
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v3, "\nCATALOG\ntrue\n"

    .line 80
    .line 81
    invoke-static {v2, p2, p1, p0, v3}, Lkotlin/collections/unsigned/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-static {v1, p0}, Lkotlin/io/FilesKt;->g(Ljava/io/File;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public static final f(LL1/a;Landroid/content/Context;Ly1/v1;)V
    .locals 10

    .line 1
    invoke-static {p0, p1, p2}, Ly1/y1;->o(LL1/a;Landroid/content/Context;Ly1/v1;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p2}, Ly1/v1;->a()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    invoke-virtual {p2}, Ly1/v1;->b()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    new-instance v3, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Ljava/lang/String;

    .line 49
    .line 50
    new-instance v5, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v6, "/"

    .line 59
    .line 60
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    sget-object v1, Ly1/v1;->i:Ly1/v1;

    .line 75
    .line 76
    if-ne p2, v1, :cond_3

    .line 77
    .line 78
    const-string v1, "private.mp3"

    .line 79
    .line 80
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    goto :goto_1

    .line 85
    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    :goto_1
    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-static {p2, p0}, Ly1/y1;->j(Ly1/v1;LL1/a;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    invoke-static {v0, v4}, LM1/e;->d(Ljava/io/File;Ljava/util/List;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    new-instance v8, LM1/d;

    .line 100
    .line 101
    const/4 v1, 0x2

    .line 102
    invoke-direct {v8, v0, v1}, LM1/d;-><init>(Ljava/io/File;I)V

    .line 103
    .line 104
    .line 105
    const/16 v9, 0x1e

    .line 106
    .line 107
    const-string v5, "\n"

    .line 108
    .line 109
    const/4 v6, 0x0

    .line 110
    const/4 v7, 0x0

    .line 111
    invoke-static/range {v4 .. v9}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    new-instance v0, Ljava/io/File;

    .line 115
    .line 116
    invoke-static {p0, p1, p2}, Ly1/y1;->o(LL1/a;Landroid/content/Context;Ly1/v1;)Ljava/io/File;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    const-string p1, ".install-trust"

    .line 121
    .line 122
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const/4 p0, 0x0

    .line 126
    throw p0
.end method

.method public static final g(Ly1/v1;Ljava/io/File;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ly1/v1;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 9
    .line 10
    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ly1/v1;->b()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-instance v3, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_2

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    move-object v5, v4

    .line 37
    check-cast v5, Ljava/lang/String;

    .line 38
    .line 39
    new-instance v6, Ljava/io/File;

    .line 40
    .line 41
    invoke-direct {v6, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-nez v5, :cond_1

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_7

    .line 59
    .line 60
    sget-object v0, Ly1/v1;->i:Ly1/v1;

    .line 61
    .line 62
    if-ne p0, v0, :cond_4

    .line 63
    .line 64
    new-instance v0, Ljava/io/File;

    .line 65
    .line 66
    const-string v2, "private.mp3"

    .line 67
    .line 68
    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    new-instance v0, Ljava/io/File;

    .line 78
    .line 79
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_3

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    new-instance p0, Ljava/io/IOException;

    .line 90
    .line 91
    const-string p1, "Ren\'Py 7 private.mp3 must be at plugin root"

    .line 92
    .line 93
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p0

    .line 97
    :cond_4
    :goto_1
    sget-object v0, Ly1/v1;->j:Ly1/v1;

    .line 98
    .line 99
    if-ne p0, v0, :cond_6

    .line 100
    .line 101
    new-instance v0, Ljava/io/File;

    .line 102
    .line 103
    const-string v1, "godot-lib.jar"

    .line 104
    .line 105
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-eqz p1, :cond_5

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_5
    new-instance p0, Ljava/io/IOException;

    .line 116
    .line 117
    const-string p1, "Godot plugin ZIP must include godot-lib.jar (Java half matching the .so)"

    .line 118
    .line 119
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p0

    .line 123
    :cond_6
    :goto_2
    iget-object p0, p0, Ly1/v1;->c:Ljava/lang/String;

    .line 124
    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v0, "Plugin "

    .line 128
    .line 129
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string p0, " \u0111\u00e3 c\u00e0i xong, t\u1ea5t c\u1ea3 .so \u0111\u1ec1u c\u00f3 m\u1eb7t."

    .line 136
    .line 137
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    const-string p1, "NativePluginManager"

    .line 145
    .line 146
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_7
    new-instance p0, Ljava/io/IOException;

    .line 151
    .line 152
    const/4 v7, 0x0

    .line 153
    const/16 v8, 0x3f

    .line 154
    .line 155
    const/4 v4, 0x0

    .line 156
    const/4 v5, 0x0

    .line 157
    const/4 v6, 0x0

    .line 158
    invoke-static/range {v3 .. v8}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string v2, "ZIP kh\u00f4ng ch\u1ee9a th\u01b0 vi\u1ec7n c\u1ea7n thi\u1ebft cho "

    .line 165
    .line 166
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v0, ": "

    .line 173
    .line 174
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw p0
.end method

.method public static final h(Ljava/io/File;Ly1/v1;LL1/a;)V
    .locals 4

    .line 1
    sget-object v0, Ly1/v1;->j:Ly1/v1;

    .line 2
    .line 3
    const-string v1, "\n"

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object v0, p2, LL1/a;->e:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, ""

    .line 17
    .line 18
    :goto_0
    new-instance v2, Ljava/io/File;

    .line 19
    .line 20
    const-string v3, ".install-commit"

    .line 21
    .line 22
    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p2}, Ly1/y1;->j(Ly1/v1;LL1/a;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    iget p1, p2, LL1/a;->d:I

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    iget p1, p1, Ly1/v1;->e:I

    .line 35
    .line 36
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v3, "COMMITTED\n"

    .line 39
    .line 40
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {v2, p0}, Lkotlin/io/FilesKt;->g(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public static j(Ly1/v1;LL1/a;)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Ly1/v1;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p1, p1, LL1/a;->b:LL1/e;

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p0, ":"

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_0
    sget-object p1, Ly1/v1;->i:Ly1/v1;

    .line 29
    .line 30
    if-ne p0, p1, :cond_1

    .line 31
    .line 32
    const-string p0, "renpy7:7.8.7"

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_1
    const-string p0, "renpy8:8.5.3"

    .line 36
    .line 37
    return-object p0
.end method

.method public static k(LL1/a;Landroid/content/Context;Ly1/v1;)Z
    .locals 11

    .line 1
    const-string v0, "plugin"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "context"

    .line 7
    .line 8
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ly1/v1;->a()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto/16 :goto_4

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p2}, Ly1/v1;->b()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    sget-object v5, Ly1/v1;->j:Ly1/v1;

    .line 25
    .line 26
    const/4 v6, 0x1

    .line 27
    if-ne p2, v5, :cond_2

    .line 28
    .line 29
    if-eqz p0, :cond_2

    .line 30
    .line 31
    :try_start_0
    new-instance v7, Ljava/io/File;

    .line 32
    .line 33
    invoke-static {p0, p1, p2}, Ly1/y1;->o(LL1/a;Landroid/content/Context;Ly1/v1;)Ljava/io/File;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    const-string v9, ".install-commit"

    .line 38
    .line 39
    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v7}, Lkotlin/io/FilesKt;->e(Ljava/io/File;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 46
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    const/4 v9, 0x3

    .line 51
    if-lt v8, v9, :cond_c

    .line 52
    .line 53
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    const-string v10, "COMMITTED"

    .line 58
    .line 59
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    if-eqz v8, :cond_c

    .line 64
    .line 65
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    invoke-static {p2, p0}, Ly1/y1;->j(Ly1/v1;LL1/a;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v10

    .line 73
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    if-eqz v8, :cond_c

    .line 78
    .line 79
    const/4 v8, 0x2

    .line 80
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    iget v10, p0, LL1/a;->d:I

    .line 85
    .line 86
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    if-nez v8, :cond_1

    .line 95
    .line 96
    goto/16 :goto_4

    .line 97
    .line 98
    :cond_1
    if-ne p2, v5, :cond_2

    .line 99
    .line 100
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    const/4 v8, 0x4

    .line 105
    if-lt v5, v8, :cond_c

    .line 106
    .line 107
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    check-cast v5, Ljava/lang/String;

    .line 112
    .line 113
    iget-object v7, p0, LL1/a;->e:Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {v5, v7, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-eqz v5, :cond_c

    .line 120
    .line 121
    :cond_2
    invoke-static {p0, p1, p2}, Ly1/y1;->o(LL1/a;Landroid/content/Context;Ly1/v1;)Ljava/io/File;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    new-instance v7, Ljava/io/File;

    .line 126
    .line 127
    invoke-direct {v7, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-nez v2, :cond_c

    .line 135
    .line 136
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-eqz v2, :cond_3

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_3
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-eqz v4, :cond_5

    .line 152
    .line 153
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    check-cast v4, Ljava/lang/String;

    .line 158
    .line 159
    new-instance v8, Ljava/io/File;

    .line 160
    .line 161
    invoke-direct {v8, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    if-nez v4, :cond_4

    .line 169
    .line 170
    goto/16 :goto_4

    .line 171
    .line 172
    :cond_5
    :goto_0
    sget-object v2, Ly1/v1;->i:Ly1/v1;

    .line 173
    .line 174
    if-ne p2, v2, :cond_6

    .line 175
    .line 176
    new-instance v2, Ljava/io/File;

    .line 177
    .line 178
    const-string v4, "private.mp3"

    .line 179
    .line 180
    invoke-direct {v2, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    if-eqz v2, :cond_c

    .line 188
    .line 189
    new-instance v2, Ljava/io/File;

    .line 190
    .line 191
    invoke-direct {v2, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-eqz v2, :cond_6

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_6
    sget-object v2, Ly1/v1;->j:Ly1/v1;

    .line 202
    .line 203
    if-ne p2, v2, :cond_7

    .line 204
    .line 205
    new-instance v2, Ljava/io/File;

    .line 206
    .line 207
    const-string v4, "godot-lib.jar"

    .line 208
    .line 209
    invoke-direct {v2, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    if-nez v2, :cond_7

    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_7
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    :try_start_1
    new-instance v0, Ljava/io/File;

    .line 226
    .line 227
    invoke-static {p0, p1, p2}, Ly1/y1;->o(LL1/a;Landroid/content/Context;Ly1/v1;)Ljava/io/File;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    const-string v1, ".artifact-version"

    .line 232
    .line 233
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 237
    .line 238
    .line 239
    move-result p1

    .line 240
    if-eqz p1, :cond_8

    .line 241
    .line 242
    goto :goto_1

    .line 243
    :cond_8
    const/4 v0, 0x0

    .line 244
    :goto_1
    if-eqz v0, :cond_9

    .line 245
    .line 246
    invoke-static {v0}, Lkotlin/io/FilesKt;->f(Ljava/io/File;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    if-eqz p1, :cond_9

    .line 251
    .line 252
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    if-eqz p1, :cond_9

    .line 261
    .line 262
    invoke-static {p1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    if-eqz p1, :cond_9

    .line 267
    .line 268
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 269
    .line 270
    .line 271
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 272
    goto :goto_2

    .line 273
    :catch_0
    :cond_9
    move p1, v6

    .line 274
    :goto_2
    if-eqz p0, :cond_a

    .line 275
    .line 276
    iget p0, p0, LL1/a;->d:I

    .line 277
    .line 278
    goto :goto_3

    .line 279
    :cond_a
    iget p0, p2, Ly1/v1;->e:I

    .line 280
    .line 281
    :goto_3
    if-eq p1, p0, :cond_b

    .line 282
    .line 283
    goto :goto_4

    .line 284
    :cond_b
    return v6

    .line 285
    :catch_1
    :cond_c
    :goto_4
    return v3
.end method

.method public static l(Ly1/v1;LL1/a;)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, LL1/a;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    return-object p1

    .line 11
    :cond_1
    :goto_0
    iget-object p0, p0, Ly1/v1;->b:Ljava/lang/String;

    .line 12
    .line 13
    return-object p0
.end method

.method public static m(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_1

    .line 8
    .line 9
    :cond_0
    const/16 v0, 0x2f

    .line 10
    .line 11
    invoke-static {v0, p0}, Lkotlin/text/StringsKt;->L(CLjava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_a

    .line 16
    .line 17
    const/16 v1, 0x5c

    .line 18
    .line 19
    invoke-static {p0, v1}, Lkotlin/text/StringsKt;->o(Ljava/lang/CharSequence;C)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_a

    .line 24
    .line 25
    new-instance v1, Lkotlin/text/Regex;

    .line 26
    .line 27
    const-string v2, "^[A-Za-z]:"

    .line 28
    .line 29
    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p0}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :cond_1
    const/4 v1, 0x1

    .line 41
    new-array v2, v1, [C

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    aput-char v0, v2, v3

    .line 45
    .line 46
    invoke-static {p0, v2}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/String;[C)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-nez v4, :cond_2

    .line 55
    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    :cond_2
    new-array v4, v1, [C

    .line 59
    .line 60
    aput-char v0, v4, v3

    .line 61
    .line 62
    invoke-static {v2, v4}, Lkotlin/text/StringsKt;->I(Ljava/lang/CharSequence;[C)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    if-eqz v5, :cond_3

    .line 67
    .line 68
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_3

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_6

    .line 84
    .line 85
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    check-cast v4, Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    if-nez v6, :cond_5

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_5
    const-string v6, "."

    .line 99
    .line 100
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    if-nez v6, :cond_a

    .line 105
    .line 106
    const-string v6, ".."

    .line 107
    .line 108
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_4

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_6
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-ne v2, v1, :cond_8

    .line 120
    .line 121
    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->s(Ljava/lang/CharSequence;C)Z

    .line 122
    .line 123
    .line 124
    move-result p0

    .line 125
    if-eqz p0, :cond_7

    .line 126
    .line 127
    const-string p0, ""

    .line 128
    .line 129
    return-object p0

    .line 130
    :cond_7
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    check-cast p0, Ljava/lang/String;

    .line 135
    .line 136
    return-object p0

    .line 137
    :cond_8
    const-string p0, "x86_64"

    .line 138
    .line 139
    const-string v0, "x86"

    .line 140
    .line 141
    const-string v2, "arm64-v8a"

    .line 142
    .line 143
    const-string v4, "armeabi-v7a"

    .line 144
    .line 145
    filled-new-array {v2, v4, p0, v0}, [Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-static {p0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result p0

    .line 161
    if-eqz p0, :cond_9

    .line 162
    .line 163
    const/4 v9, 0x0

    .line 164
    const/16 v10, 0x3e

    .line 165
    .line 166
    const-string v6, "/"

    .line 167
    .line 168
    const/4 v7, 0x0

    .line 169
    const/4 v8, 0x0

    .line 170
    invoke-static/range {v5 .. v10}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    return-object p0

    .line 175
    :cond_9
    invoke-static {v5, v1}, Lkotlin/collections/CollectionsKt;->i(Ljava/util/List;I)Ljava/util/List;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    const/4 v10, 0x0

    .line 180
    const/16 v11, 0x3e

    .line 181
    .line 182
    const-string v7, "/"

    .line 183
    .line 184
    const/4 v8, 0x0

    .line 185
    const/4 v9, 0x0

    .line 186
    invoke-static/range {v6 .. v11}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    return-object p0

    .line 191
    :cond_a
    :goto_1
    const/4 p0, 0x0

    .line 192
    return-object p0
.end method

.method public static n(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 8

    .line 1
    new-instance v0, Ljava/net/URL;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string v1, "https"

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-static {p0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_8

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-nez p0, :cond_7

    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    move v3, p0

    .line 27
    :goto_0
    const/16 v4, 0x9

    .line 28
    .line 29
    if-ge v3, v4, :cond_6

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const-string v5, "null cannot be cast to non-null type java.net.HttpURLConnection"

    .line 36
    .line 37
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    check-cast v4, Ljava/net/HttpURLConnection;

    .line 41
    .line 42
    const/16 v5, 0x3a98

    .line 43
    .line 44
    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 45
    .line 46
    .line 47
    const v5, 0x15f90

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, p0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 54
    .line 55
    .line 56
    const-string v5, "User-Agent"

    .line 57
    .line 58
    const-string v6, "Mozilla/5.0 (Android; Mobile)"

    .line 59
    .line 60
    invoke-virtual {v4, v5, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/net/URLConnection;->connect()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    const/16 v6, 0xc8

    .line 71
    .line 72
    const/16 v7, 0x12c

    .line 73
    .line 74
    if-gt v6, v5, :cond_0

    .line 75
    .line 76
    if-ge v5, v7, :cond_0

    .line 77
    .line 78
    return-object v4

    .line 79
    :cond_0
    if-gt v7, v5, :cond_5

    .line 80
    .line 81
    const/16 v6, 0x190

    .line 82
    .line 83
    if-ge v5, v6, :cond_5

    .line 84
    .line 85
    const/16 v5, 0x8

    .line 86
    .line 87
    if-eq v3, v5, :cond_4

    .line 88
    .line 89
    const-string v5, "Location"

    .line 90
    .line 91
    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    if-eqz v5, :cond_3

    .line 96
    .line 97
    new-instance v6, Ljava/net/URL;

    .line 98
    .line 99
    invoke-direct {v6, v0, v5}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_2

    .line 114
    .line 115
    invoke-virtual {v6}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    if-nez v0, :cond_1

    .line 120
    .line 121
    add-int/lit8 v3, v3, 0x1

    .line 122
    .line 123
    move-object v0, v6

    .line 124
    goto :goto_0

    .line 125
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 126
    .line 127
    const-string v0, "Redirect credentials are forbidden"

    .line 128
    .line 129
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p0

    .line 133
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 134
    .line 135
    const-string v0, "Redirect must remain HTTPS"

    .line 136
    .line 137
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw p0

    .line 141
    :cond_3
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 142
    .line 143
    .line 144
    new-instance p0, Ljava/io/IOException;

    .line 145
    .line 146
    const-string v0, "Redirect without Location"

    .line 147
    .line 148
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw p0

    .line 152
    :cond_4
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 153
    .line 154
    .line 155
    new-instance p0, Ljava/io/IOException;

    .line 156
    .line 157
    const-string v0, "Too many redirects"

    .line 158
    .line 159
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw p0

    .line 163
    :cond_5
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 164
    .line 165
    .line 166
    new-instance p0, Ljava/io/IOException;

    .line 167
    .line 168
    const-string v0, "HTTP response is not successful: "

    .line 169
    .line 170
    invoke-static {v5, v0}, LE/b;->i(ILjava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw p0

    .line 178
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 179
    .line 180
    const-string v0, "Unreachable"

    .line 181
    .line 182
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw p0

    .line 186
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 187
    .line 188
    const-string v0, "URL credentials are forbidden"

    .line 189
    .line 190
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw p0

    .line 194
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 195
    .line 196
    const-string v0, "Initial URL must use HTTPS"

    .line 197
    .line 198
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw p0
.end method

.method public static o(LL1/a;Landroid/content/Context;Ly1/v1;)Ljava/io/File;
    .locals 1

    .line 1
    const-string v0, "plugin"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "context"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/io/File;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p2, p0}, Ly1/y1;->l(Ly1/v1;LL1/a;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string p2, "engine-plugins/"

    .line 22
    .line 23
    invoke-static {p2, p0}, Lkotlin/collections/unsigned/a;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public static p(LL1/a;Landroid/content/Context;Ly1/v1;)V
    .locals 2

    .line 1
    const-string v0, "plugin"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "context"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-static {p0, p1, p2}, Ly1/y1;->o(LL1/a;Landroid/content/Context;Ly1/v1;)Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto :goto_2

    .line 27
    :cond_0
    :goto_0
    new-instance v0, Ljava/io/File;

    .line 28
    .line 29
    invoke-static {p0, p1, p2}, Ly1/y1;->o(LL1/a;Landroid/content/Context;Ly1/v1;)Ljava/io/File;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v1, ".artifact-version"

    .line 34
    .line 35
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    iget p1, p0, LL1/a;->d:I

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    iget p1, p2, Ly1/v1;->e:I

    .line 44
    .line 45
    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {v0, p1}, Lkotlin/io/FilesKt;->g(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :goto_2
    invoke-static {p2, p0}, Ly1/y1;->l(Ly1/v1;LL1/a;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    new-instance p2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v0, "Could not record artifact version for "

    .line 64
    .line 65
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p0, ": "

    .line 72
    .line 73
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    const-string p1, "NativePluginManager"

    .line 84
    .line 85
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public static q(LL1/a;Landroid/content/Context;Ly1/v1;)Z
    .locals 5

    .line 1
    const-string v0, "NativePluginManager"

    .line 2
    .line 3
    const-string v1, "Cleared "

    .line 4
    .line 5
    const-string v2, "plugin"

    .line 6
    .line 7
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "context"

    .line 11
    .line 12
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    :try_start_0
    invoke-static {p0, p1, p2}, Ly1/y1;->o(LL1/a;Landroid/content/Context;Ly1/v1;)Ljava/io/File;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    invoke-static {p1}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move p1, v2

    .line 34
    goto :goto_1

    .line 35
    :catch_0
    move-exception p1

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 38
    :goto_1
    invoke-static {p2, p0}, Ly1/y1;->l(Ly1/v1;LL1/a;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, " install for re-download (success="

    .line 51
    .line 52
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v1, ")"

    .line 59
    .line 60
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    return p1

    .line 71
    :goto_2
    invoke-static {p2, p0}, Ly1/y1;->l(Ly1/v1;LL1/a;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    new-instance p2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v1, "Could not clear "

    .line 82
    .line 83
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string p0, " install: "

    .line 90
    .line 91
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    return v2
.end method

.method public static r(LL1/a;Landroid/content/Context;Ly1/v1;)LM1/k;
    .locals 18

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    const-string v1, "context"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "plugin"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static/range {p0 .. p2}, Ly1/y1;->k(LL1/a;Landroid/content/Context;Ly1/v1;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/16 v3, 0xc

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    new-instance v0, LM1/k;

    .line 25
    .line 26
    sget-object v1, LM1/j;->d:LM1/j;

    .line 27
    .line 28
    invoke-direct {v0, v4, v1, v4, v3}, LM1/k;-><init>(ZLM1/j;ZI)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_0
    sget-object v1, Ly1/v1;->i:Ly1/v1;

    .line 33
    .line 34
    if-ne v0, v1, :cond_1

    .line 35
    .line 36
    sget-object v1, LM1/h;->b:LM1/g;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    sget-object v1, LM1/h;->c:LM1/g;

    .line 40
    .line 41
    :goto_0
    invoke-virtual {v0}, Ly1/v1;->a()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    if-nez v5, :cond_2

    .line 46
    .line 47
    new-instance v0, LM1/k;

    .line 48
    .line 49
    sget-object v1, LM1/j;->c:LM1/j;

    .line 50
    .line 51
    invoke-direct {v0, v4, v1, v4, v3}, LM1/k;-><init>(ZLM1/j;ZI)V

    .line 52
    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_2
    invoke-static/range {p0 .. p2}, Ly1/y1;->o(LL1/a;Landroid/content/Context;Ly1/v1;)Ljava/io/File;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    const-string v7, "artifact"

    .line 60
    .line 61
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v8, "root"

    .line 65
    .line 66
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v8, "abi"

    .line 70
    .line 71
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string v9, "validator"

    .line 75
    .line 76
    sget-object v10, LM1/a;->a:LM1/a;

    .line 77
    .line 78
    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    new-instance v9, LA1/b;

    .line 82
    .line 83
    new-instance v10, Ljava/util/LinkedHashSet;

    .line 84
    .line 85
    invoke-direct {v10}, Ljava/util/LinkedHashSet;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v5}, LM1/g;->a(Ljava/lang/String;)Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v11

    .line 92
    iget-object v12, v1, LM1/g;->e:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v12, LM1/b;

    .line 95
    .line 96
    iget-object v13, v1, LM1/g;->c:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v13, Ljava/lang/String;

    .line 99
    .line 100
    iget-object v14, v1, LM1/g;->d:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v14, LM1/f;

    .line 103
    .line 104
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v11

    .line 108
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v15

    .line 112
    const-string v3, "/"

    .line 113
    .line 114
    if-eqz v15, :cond_4

    .line 115
    .line 116
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v15

    .line 120
    check-cast v15, Ljava/lang/String;

    .line 121
    .line 122
    move/from16 v16, v4

    .line 123
    .line 124
    new-instance v4, Ljava/io/File;

    .line 125
    .line 126
    invoke-static {v5, v3, v15}, Lkotlin/collections/unsigned/a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-direct {v4, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-eqz v2, :cond_3

    .line 138
    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-interface {v10, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    :cond_3
    move-object/from16 v2, p1

    .line 161
    .line 162
    move/from16 v4, v16

    .line 163
    .line 164
    const/16 v3, 0xc

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_4
    move/from16 v16, v4

    .line 168
    .line 169
    sget-object v2, LM1/f;->b:LM1/f;

    .line 170
    .line 171
    const-string v4, "private.mp3"

    .line 172
    .line 173
    if-ne v14, v2, :cond_5

    .line 174
    .line 175
    new-instance v2, Ljava/io/File;

    .line 176
    .line 177
    invoke-direct {v2, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-eqz v2, :cond_5

    .line 185
    .line 186
    invoke-interface {v10, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    :cond_5
    const-string v2, "files"

    .line 190
    .line 191
    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    const-string v6, "unmodifiableSet(...)"

    .line 206
    .line 207
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    iput-object v2, v9, LA1/b;->b:Ljava/lang/Object;

    .line 211
    .line 212
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    const-string v2, "tree"

    .line 216
    .line 217
    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    iget-object v2, v1, LM1/g;->f:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast v2, Ljava/util/Set;

    .line 229
    .line 230
    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    const/4 v7, 0x3

    .line 235
    const/4 v10, 0x1

    .line 236
    if-eqz v2, :cond_1c

    .line 237
    .line 238
    iget-object v2, v1, LM1/g;->h:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v2, Ljava/util/Map;

    .line 241
    .line 242
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    if-eqz v2, :cond_1c

    .line 247
    .line 248
    iget-object v2, v9, LA1/b;->b:Ljava/lang/Object;

    .line 249
    .line 250
    check-cast v2, Ljava/util/Set;

    .line 251
    .line 252
    const/16 v9, 0x2f

    .line 253
    .line 254
    if-eqz v2, :cond_7

    .line 255
    .line 256
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 257
    .line 258
    .line 259
    move-result v11

    .line 260
    if-eqz v11, :cond_7

    .line 261
    .line 262
    :cond_6
    move/from16 v6, v16

    .line 263
    .line 264
    goto/16 :goto_4

    .line 265
    .line 266
    :cond_7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 267
    .line 268
    .line 269
    move-result-object v11

    .line 270
    :cond_8
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 271
    .line 272
    .line 273
    move-result v15

    .line 274
    if-eqz v15, :cond_6

    .line 275
    .line 276
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v15

    .line 280
    check-cast v15, Ljava/lang/String;

    .line 281
    .line 282
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 283
    .line 284
    .line 285
    move-result v17

    .line 286
    if-lez v17, :cond_d

    .line 287
    .line 288
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 289
    .line 290
    .line 291
    move-result v6

    .line 292
    const/16 v8, 0x1000

    .line 293
    .line 294
    if-gt v6, v8, :cond_d

    .line 295
    .line 296
    invoke-static {v9, v15}, Lkotlin/text/StringsKt;->L(CLjava/lang/String;)Z

    .line 297
    .line 298
    .line 299
    move-result v6

    .line 300
    if-nez v6, :cond_d

    .line 301
    .line 302
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 303
    .line 304
    .line 305
    move-result v6

    .line 306
    if-lt v6, v7, :cond_9

    .line 307
    .line 308
    invoke-virtual {v15, v10}, Ljava/lang/String;->charAt(I)C

    .line 309
    .line 310
    .line 311
    move-result v6

    .line 312
    const/16 v8, 0x3a

    .line 313
    .line 314
    if-ne v6, v8, :cond_9

    .line 315
    .line 316
    const/4 v6, 0x2

    .line 317
    invoke-virtual {v15, v6}, Ljava/lang/String;->charAt(I)C

    .line 318
    .line 319
    .line 320
    move-result v8

    .line 321
    if-eq v8, v9, :cond_d

    .line 322
    .line 323
    :cond_9
    const/16 v6, 0x5c

    .line 324
    .line 325
    invoke-static {v15, v6}, Lkotlin/text/StringsKt;->o(Ljava/lang/CharSequence;C)Z

    .line 326
    .line 327
    .line 328
    move-result v6

    .line 329
    if-nez v6, :cond_d

    .line 330
    .line 331
    new-array v6, v10, [C

    .line 332
    .line 333
    aput-char v9, v6, v16

    .line 334
    .line 335
    invoke-static {v15, v6}, Lkotlin/text/StringsKt;->I(Ljava/lang/CharSequence;[C)Ljava/util/List;

    .line 336
    .line 337
    .line 338
    move-result-object v6

    .line 339
    if-eqz v6, :cond_a

    .line 340
    .line 341
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 342
    .line 343
    .line 344
    move-result v8

    .line 345
    if-eqz v8, :cond_a

    .line 346
    .line 347
    goto :goto_2

    .line 348
    :cond_a
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 349
    .line 350
    .line 351
    move-result-object v6

    .line 352
    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 353
    .line 354
    .line 355
    move-result v8

    .line 356
    if-eqz v8, :cond_8

    .line 357
    .line 358
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v8

    .line 362
    check-cast v8, Ljava/lang/String;

    .line 363
    .line 364
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 365
    .line 366
    .line 367
    move-result v15

    .line 368
    if-nez v15, :cond_c

    .line 369
    .line 370
    goto :goto_3

    .line 371
    :cond_c
    const-string v15, "."

    .line 372
    .line 373
    invoke-static {v8, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result v15

    .line 377
    if-nez v15, :cond_d

    .line 378
    .line 379
    const-string v15, ".."

    .line 380
    .line 381
    invoke-static {v8, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    move-result v8

    .line 385
    if-eqz v8, :cond_b

    .line 386
    .line 387
    :cond_d
    :goto_3
    new-instance v1, LM1/k;

    .line 388
    .line 389
    sget-object v2, LM1/j;->h:LM1/j;

    .line 390
    .line 391
    move/from16 v6, v16

    .line 392
    .line 393
    const/16 v3, 0xc

    .line 394
    .line 395
    invoke-direct {v1, v6, v2, v6, v3}, LM1/k;-><init>(ZLM1/j;ZI)V

    .line 396
    .line 397
    .line 398
    goto/16 :goto_a

    .line 399
    .line 400
    :goto_4
    new-array v8, v10, [C

    .line 401
    .line 402
    aput-char v9, v8, v6

    .line 403
    .line 404
    invoke-static {v13, v8}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/String;[C)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v6

    .line 408
    invoke-static {v6, v3}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v6

    .line 412
    if-eqz v2, :cond_e

    .line 413
    .line 414
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 415
    .line 416
    .line 417
    move-result v8

    .line 418
    if-eqz v8, :cond_e

    .line 419
    .line 420
    goto :goto_5

    .line 421
    :cond_e
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 422
    .line 423
    .line 424
    move-result-object v8

    .line 425
    :cond_f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 426
    .line 427
    .line 428
    move-result v9

    .line 429
    if-eqz v9, :cond_10

    .line 430
    .line 431
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v9

    .line 435
    check-cast v9, Ljava/lang/String;

    .line 436
    .line 437
    invoke-static {v9, v6}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 438
    .line 439
    .line 440
    move-result v9

    .line 441
    if-eqz v9, :cond_f

    .line 442
    .line 443
    new-instance v1, LM1/k;

    .line 444
    .line 445
    sget-object v2, LM1/j;->f:LM1/j;

    .line 446
    .line 447
    const/16 v3, 0xc

    .line 448
    .line 449
    const/4 v6, 0x0

    .line 450
    invoke-direct {v1, v6, v2, v6, v3}, LM1/k;-><init>(ZLM1/j;ZI)V

    .line 451
    .line 452
    .line 453
    goto/16 :goto_a

    .line 454
    .line 455
    :cond_10
    :goto_5
    iget-object v8, v1, LM1/g;->g:Ljava/lang/Object;

    .line 456
    .line 457
    check-cast v8, Ljava/util/List;

    .line 458
    .line 459
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 460
    .line 461
    .line 462
    move-result-object v8

    .line 463
    if-eqz v2, :cond_11

    .line 464
    .line 465
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 466
    .line 467
    .line 468
    move-result v9

    .line 469
    if-eqz v9, :cond_11

    .line 470
    .line 471
    goto :goto_6

    .line 472
    :cond_11
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 473
    .line 474
    .line 475
    move-result-object v9

    .line 476
    :cond_12
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 477
    .line 478
    .line 479
    move-result v11

    .line 480
    if-eqz v11, :cond_13

    .line 481
    .line 482
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v11

    .line 486
    check-cast v11, Ljava/lang/String;

    .line 487
    .line 488
    invoke-interface {v8, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 489
    .line 490
    .line 491
    move-result v11

    .line 492
    if-nez v11, :cond_12

    .line 493
    .line 494
    new-instance v1, LM1/k;

    .line 495
    .line 496
    sget-object v2, LM1/j;->i:LM1/j;

    .line 497
    .line 498
    const/16 v3, 0xc

    .line 499
    .line 500
    const/4 v6, 0x0

    .line 501
    invoke-direct {v1, v6, v2, v6, v3}, LM1/k;-><init>(ZLM1/j;ZI)V

    .line 502
    .line 503
    .line 504
    goto/16 :goto_a

    .line 505
    .line 506
    :cond_13
    :goto_6
    invoke-virtual {v1, v5}, LM1/g;->a(Ljava/lang/String;)Ljava/util/List;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    new-instance v8, Ljava/util/ArrayList;

    .line 511
    .line 512
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 513
    .line 514
    .line 515
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    :cond_14
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 520
    .line 521
    .line 522
    move-result v9

    .line 523
    if-eqz v9, :cond_15

    .line 524
    .line 525
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v9

    .line 529
    move-object v11, v9

    .line 530
    check-cast v11, Ljava/lang/String;

    .line 531
    .line 532
    new-instance v13, Ljava/lang/StringBuilder;

    .line 533
    .line 534
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v11

    .line 550
    invoke-interface {v2, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 551
    .line 552
    .line 553
    move-result v11

    .line 554
    if-nez v11, :cond_14

    .line 555
    .line 556
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    .line 558
    .line 559
    goto :goto_7

    .line 560
    :cond_15
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 561
    .line 562
    .line 563
    move-result v1

    .line 564
    if-nez v1, :cond_16

    .line 565
    .line 566
    new-instance v1, LM1/k;

    .line 567
    .line 568
    sget-object v2, LM1/j;->d:LM1/j;

    .line 569
    .line 570
    const/16 v3, 0xc

    .line 571
    .line 572
    const/4 v5, 0x0

    .line 573
    invoke-direct {v1, v5, v2, v5, v3}, LM1/k;-><init>(ZLM1/j;ZI)V

    .line 574
    .line 575
    .line 576
    :goto_8
    move v6, v5

    .line 577
    goto/16 :goto_a

    .line 578
    .line 579
    :cond_16
    const/16 v3, 0xc

    .line 580
    .line 581
    const/4 v5, 0x0

    .line 582
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    .line 583
    .line 584
    .line 585
    move-result v1

    .line 586
    if-eqz v1, :cond_1a

    .line 587
    .line 588
    if-eq v1, v10, :cond_19

    .line 589
    .line 590
    const/4 v6, 0x2

    .line 591
    if-ne v1, v6, :cond_18

    .line 592
    .line 593
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 594
    .line 595
    .line 596
    move-result v1

    .line 597
    if-eqz v1, :cond_17

    .line 598
    .line 599
    new-instance v1, LM1/k;

    .line 600
    .line 601
    sget-object v2, LM1/j;->g:LM1/j;

    .line 602
    .line 603
    invoke-direct {v1, v5, v2, v5, v3}, LM1/k;-><init>(ZLM1/j;ZI)V

    .line 604
    .line 605
    .line 606
    goto :goto_8

    .line 607
    :cond_17
    move v6, v5

    .line 608
    goto :goto_9

    .line 609
    :cond_18
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 610
    .line 611
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 612
    .line 613
    .line 614
    throw v0

    .line 615
    :cond_19
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 616
    .line 617
    .line 618
    move-result v1

    .line 619
    if-nez v1, :cond_17

    .line 620
    .line 621
    new-instance v1, LM1/k;

    .line 622
    .line 623
    sget-object v2, LM1/j;->e:LM1/j;

    .line 624
    .line 625
    invoke-direct {v1, v5, v2, v5, v3}, LM1/k;-><init>(ZLM1/j;ZI)V

    .line 626
    .line 627
    .line 628
    goto :goto_8

    .line 629
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 630
    .line 631
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 632
    .line 633
    .line 634
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v1

    .line 644
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 645
    .line 646
    .line 647
    move-result v1

    .line 648
    if-nez v1, :cond_1b

    .line 649
    .line 650
    new-instance v1, LM1/k;

    .line 651
    .line 652
    sget-object v2, LM1/j;->e:LM1/j;

    .line 653
    .line 654
    const/16 v3, 0xc

    .line 655
    .line 656
    const/4 v6, 0x0

    .line 657
    invoke-direct {v1, v6, v2, v6, v3}, LM1/k;-><init>(ZLM1/j;ZI)V

    .line 658
    .line 659
    .line 660
    goto :goto_a

    .line 661
    :cond_1b
    const/4 v6, 0x0

    .line 662
    :goto_9
    sget-object v1, LM1/c;->b:LM1/c;

    .line 663
    .line 664
    const-string v1, "<this>"

    .line 665
    .line 666
    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 667
    .line 668
    .line 669
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 670
    .line 671
    .line 672
    new-instance v1, LM1/k;

    .line 673
    .line 674
    const/4 v2, 0x0

    .line 675
    const/4 v3, 0x6

    .line 676
    invoke-direct {v1, v10, v2, v6, v3}, LM1/k;-><init>(ZLM1/j;ZI)V

    .line 677
    .line 678
    .line 679
    goto :goto_a

    .line 680
    :cond_1c
    move/from16 v6, v16

    .line 681
    .line 682
    new-instance v1, LM1/k;

    .line 683
    .line 684
    sget-object v2, LM1/j;->c:LM1/j;

    .line 685
    .line 686
    const/16 v3, 0xc

    .line 687
    .line 688
    invoke-direct {v1, v6, v2, v6, v3}, LM1/k;-><init>(ZLM1/j;ZI)V

    .line 689
    .line 690
    .line 691
    :goto_a
    iget-boolean v2, v1, LM1/k;->a:Z

    .line 692
    .line 693
    const/4 v3, 0x7

    .line 694
    if-nez v2, :cond_1d

    .line 695
    .line 696
    goto :goto_b

    .line 697
    :cond_1d
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 698
    .line 699
    .line 700
    invoke-static {v1, v6, v3}, LM1/k;->a(LM1/k;ZI)LM1/k;

    .line 701
    .line 702
    .line 703
    move-result-object v1

    .line 704
    :goto_b
    iget-boolean v2, v1, LM1/k;->a:Z

    .line 705
    .line 706
    if-nez v2, :cond_1e

    .line 707
    .line 708
    return-object v1

    .line 709
    :cond_1e
    new-instance v2, Ljava/io/File;

    .line 710
    .line 711
    invoke-static/range {p0 .. p2}, Ly1/y1;->o(LL1/a;Landroid/content/Context;Ly1/v1;)Ljava/io/File;

    .line 712
    .line 713
    .line 714
    move-result-object v4

    .line 715
    const-string v5, ".install-trust"

    .line 716
    .line 717
    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 718
    .line 719
    .line 720
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    .line 721
    .line 722
    .line 723
    move-result v4

    .line 724
    const-string v6, "UNVERIFIED_LEGACY\n"

    .line 725
    .line 726
    if-nez v4, :cond_20

    .line 727
    .line 728
    const-string v2, "NativePluginManager"

    .line 729
    .line 730
    const-string v3, "Legacy Ren\'Py install is UNVERIFIED_LEGACY; launching without trust"

    .line 731
    .line 732
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    .line 734
    .line 735
    invoke-static/range {p0 .. p2}, Ly1/y1;->o(LL1/a;Landroid/content/Context;Ly1/v1;)Ljava/io/File;

    .line 736
    .line 737
    .line 738
    move-result-object v2

    .line 739
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 740
    .line 741
    .line 742
    move-result v3

    .line 743
    if-nez v3, :cond_1f

    .line 744
    .line 745
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 746
    .line 747
    .line 748
    :cond_1f
    new-instance v2, Ljava/io/File;

    .line 749
    .line 750
    invoke-static/range {p0 .. p2}, Ly1/y1;->o(LL1/a;Landroid/content/Context;Ly1/v1;)Ljava/io/File;

    .line 751
    .line 752
    .line 753
    move-result-object v0

    .line 754
    invoke-direct {v2, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 755
    .line 756
    .line 757
    invoke-static {v2, v6}, Lkotlin/io/FilesKt;->g(Ljava/io/File;Ljava/lang/String;)V

    .line 758
    .line 759
    .line 760
    const/4 v3, 0x6

    .line 761
    const/4 v6, 0x0

    .line 762
    invoke-static {v1, v6, v3}, LM1/k;->a(LM1/k;ZI)LM1/k;

    .line 763
    .line 764
    .line 765
    move-result-object v0

    .line 766
    return-object v0

    .line 767
    :cond_20
    :try_start_0
    invoke-static {v2}, Lkotlin/io/FilesKt;->e(Ljava/io/File;)Ljava/util/List;

    .line 768
    .line 769
    .line 770
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 771
    goto :goto_c

    .line 772
    :catch_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 773
    .line 774
    .line 775
    move-result-object v2

    .line 776
    :goto_c
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 777
    .line 778
    .line 779
    move-result-object v4

    .line 780
    invoke-static {v6}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 781
    .line 782
    .line 783
    move-result-object v5

    .line 784
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    move-result-object v5

    .line 788
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 789
    .line 790
    .line 791
    move-result v4

    .line 792
    if-eqz v4, :cond_21

    .line 793
    .line 794
    const/4 v4, 0x6

    .line 795
    const/4 v6, 0x0

    .line 796
    invoke-static {v1, v6, v4}, LM1/k;->a(LM1/k;ZI)LM1/k;

    .line 797
    .line 798
    .line 799
    move-result-object v0

    .line 800
    return-object v0

    .line 801
    :cond_21
    move-object/from16 v1, p0

    .line 802
    .line 803
    invoke-static {v0, v1}, Ly1/y1;->j(Ly1/v1;LL1/a;)Ljava/lang/String;

    .line 804
    .line 805
    .line 806
    move-result-object v0

    .line 807
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 808
    .line 809
    .line 810
    move-result-object v1

    .line 811
    const-string v4, "VERIFIED"

    .line 812
    .line 813
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 814
    .line 815
    .line 816
    move-result v1

    .line 817
    if-eqz v1, :cond_22

    .line 818
    .line 819
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 820
    .line 821
    .line 822
    move-result v1

    .line 823
    if-lt v1, v3, :cond_22

    .line 824
    .line 825
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 826
    .line 827
    .line 828
    move-result-object v1

    .line 829
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 830
    .line 831
    .line 832
    move-result v0

    .line 833
    if-eqz v0, :cond_22

    .line 834
    .line 835
    const/4 v6, 0x2

    .line 836
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 837
    .line 838
    .line 839
    move-result-object v0

    .line 840
    const-string v1, "get(...)"

    .line 841
    .line 842
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 843
    .line 844
    .line 845
    check-cast v0, Ljava/lang/CharSequence;

    .line 846
    .line 847
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 848
    .line 849
    .line 850
    move-result v0

    .line 851
    if-nez v0, :cond_22

    .line 852
    .line 853
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 854
    .line 855
    .line 856
    move-result-object v0

    .line 857
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 858
    .line 859
    .line 860
    check-cast v0, Ljava/lang/CharSequence;

    .line 861
    .line 862
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 863
    .line 864
    .line 865
    move-result v0

    .line 866
    if-nez v0, :cond_22

    .line 867
    .line 868
    const/4 v0, 0x4

    .line 869
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 870
    .line 871
    .line 872
    move-result-object v0

    .line 873
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 874
    .line 875
    .line 876
    check-cast v0, Ljava/lang/CharSequence;

    .line 877
    .line 878
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 879
    .line 880
    .line 881
    move-result v0

    .line 882
    if-nez v0, :cond_22

    .line 883
    .line 884
    const/4 v0, 0x5

    .line 885
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 886
    .line 887
    .line 888
    move-result-object v0

    .line 889
    const-string v1, "true"

    .line 890
    .line 891
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 892
    .line 893
    .line 894
    move-result v0

    .line 895
    if-nez v0, :cond_23

    .line 896
    .line 897
    :cond_22
    const/16 v3, 0xc

    .line 898
    .line 899
    const/4 v6, 0x0

    .line 900
    goto :goto_d

    .line 901
    :cond_23
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 902
    .line 903
    .line 904
    new-instance v0, LM1/k;

    .line 905
    .line 906
    sget-object v1, LM1/j;->j:LM1/j;

    .line 907
    .line 908
    const/16 v3, 0xc

    .line 909
    .line 910
    const/4 v6, 0x0

    .line 911
    invoke-direct {v0, v6, v1, v6, v3}, LM1/k;-><init>(ZLM1/j;ZI)V

    .line 912
    .line 913
    .line 914
    return-object v0

    .line 915
    :goto_d
    new-instance v0, LM1/k;

    .line 916
    .line 917
    sget-object v1, LM1/j;->j:LM1/j;

    .line 918
    .line 919
    invoke-direct {v0, v6, v1, v6, v3}, LM1/k;-><init>(ZLM1/j;ZI)V

    .line 920
    .line 921
    .line 922
    return-object v0
.end method


# virtual methods
.method public final i(Ly1/v1;Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;LL1/a;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 12

    .line 1
    move-object/from16 v0, p6

    .line 2
    .line 3
    instance-of v1, v0, Ly1/w1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Ly1/w1;

    .line 9
    .line 10
    iget v2, v1, Ly1/w1;->k:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Ly1/w1;->k:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Ly1/w1;

    .line 23
    .line 24
    invoke-direct {v1, p0, v0}, Ly1/w1;-><init>(Ly1/y1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object v0, v1, Ly1/w1;->i:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget v3, v1, Ly1/w1;->k:I

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    if-ne v3, v4, :cond_1

    .line 39
    .line 40
    iget-object p1, v1, Ly1/w1;->h:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, LL1/a;

    .line 43
    .line 44
    iget-object p1, v1, Ly1/w1;->g:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Ljava/lang/String;

    .line 47
    .line 48
    iget-object p1, v1, Ly1/w1;->f:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p1, LM1/b;

    .line 51
    .line 52
    iget-object p1, v1, Ly1/w1;->e:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 55
    .line 56
    iget-object p1, v1, Ly1/w1;->d:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p1, Landroid/content/Context;

    .line 59
    .line 60
    iget-object p1, v1, Ly1/w1;->c:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p1, Ljava/lang/String;

    .line 63
    .line 64
    iget-object p1, v1, Ly1/w1;->b:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p1, Ly1/v1;

    .line 67
    .line 68
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 73
    .line 74
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 75
    .line 76
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1

    .line 80
    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    sget-object v0, LV1/H;->b:Lc2/c;

    .line 84
    .line 85
    new-instance v5, Ly1/x1;

    .line 86
    .line 87
    const/4 v11, 0x0

    .line 88
    move-object v6, p1

    .line 89
    move-object v8, p2

    .line 90
    move-object v9, p3

    .line 91
    move-object/from16 v10, p4

    .line 92
    .line 93
    move-object/from16 v7, p5

    .line 94
    .line 95
    invoke-direct/range {v5 .. v11}, Ly1/x1;-><init>(Ly1/v1;LL1/a;Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 96
    .line 97
    .line 98
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iput-object p1, v1, Ly1/w1;->b:Ljava/lang/Object;

    .line 103
    .line 104
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iput-object p1, v1, Ly1/w1;->c:Ljava/lang/Object;

    .line 109
    .line 110
    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iput-object p1, v1, Ly1/w1;->d:Ljava/lang/Object;

    .line 115
    .line 116
    invoke-static/range {p4 .. p4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iput-object p1, v1, Ly1/w1;->e:Ljava/lang/Object;

    .line 121
    .line 122
    const/4 p1, 0x0

    .line 123
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    iput-object p2, v1, Ly1/w1;->f:Ljava/lang/Object;

    .line 128
    .line 129
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    iput-object p1, v1, Ly1/w1;->g:Ljava/lang/Object;

    .line 134
    .line 135
    invoke-static/range {p5 .. p5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    iput-object p1, v1, Ly1/w1;->h:Ljava/lang/Object;

    .line 140
    .line 141
    iput v4, v1, Ly1/w1;->k:I

    .line 142
    .line 143
    invoke-static {v0, v5, v1}, LV1/A;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    if-ne v0, v2, :cond_3

    .line 148
    .line 149
    return-object v2

    .line 150
    :cond_3
    :goto_1
    check-cast v0, Lkotlin/Result;

    .line 151
    .line 152
    invoke-virtual {v0}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    return-object p1
.end method
