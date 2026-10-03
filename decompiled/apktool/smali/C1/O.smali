.class public abstract LC1/O;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# direct methods
.method public static final a(Lcom/minhub/gamehub/hub/AddGameActivity;LE/a;Ljava/io/File;LC1/D;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, LE/a;->k()[LE/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    array-length v0, p1

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    if-ge v2, v0, :cond_5

    .line 9
    .line 10
    aget-object v3, p1, v2

    .line 11
    .line 12
    invoke-virtual {v3}, LE/a;->h()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    if-nez v4, :cond_0

    .line 17
    .line 18
    goto/16 :goto_3

    .line 19
    .line 20
    :cond_0
    const/16 v5, 0x2f

    .line 21
    .line 22
    const/16 v6, 0x5f

    .line 23
    .line 24
    invoke-static {v4, v5, v6}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;CC)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    const/16 v5, 0x5c

    .line 29
    .line 30
    invoke-static {v4, v5, v6}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;CC)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    const-string v5, "."

    .line 35
    .line 36
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-nez v5, :cond_4

    .line 41
    .line 42
    const-string v5, ".."

    .line 43
    .line 44
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-nez v5, :cond_4

    .line 49
    .line 50
    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_1

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_1
    invoke-virtual {v3}, LE/a;->j()Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_2

    .line 62
    .line 63
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    new-instance v5, Ljava/io/File;

    .line 67
    .line 68
    invoke-direct {v5, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 72
    .line 73
    .line 74
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 75
    .line 76
    invoke-static {p0, v3, v5, p3}, LC1/O;->a(Lcom/minhub/gamehub/hub/AddGameActivity;LE/a;Ljava/io/File;LC1/D;)V

    .line 77
    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {v3}, LE/a;->i()Landroid/net/Uri;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v5, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    if-eqz v3, :cond_3

    .line 93
    .line 94
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    .line 95
    .line 96
    new-instance v6, Ljava/io/File;

    .line 97
    .line 98
    invoke-direct {v6, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .line 103
    .line 104
    const/4 v4, 0x2

    .line 105
    const/4 v6, 0x0

    .line 106
    :try_start_1
    invoke-static {v3, v5, v1, v4, v6}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    .line 108
    .line 109
    :try_start_2
    invoke-static {v5, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    .line 111
    .line 112
    invoke-static {v3, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :catchall_0
    move-exception p0

    .line 117
    goto :goto_1

    .line 118
    :catchall_1
    move-exception p0

    .line 119
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 120
    :catchall_2
    move-exception p1

    .line 121
    :try_start_4
    invoke-static {v5, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 125
    :goto_1
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 126
    :catchall_3
    move-exception p1

    .line 127
    invoke-static {v3, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 128
    .line 129
    .line 130
    throw p1

    .line 131
    :cond_3
    :goto_2
    invoke-virtual {p3}, LC1/D;->invoke()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 135
    .line 136
    goto/16 :goto_0

    .line 137
    .line 138
    :cond_5
    return-void
.end method

.method public static final b(LE/a;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, LE/a;->k()[LE/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length v0, p0

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    aget-object v3, p0, v1

    .line 11
    .line 12
    invoke-virtual {v3}, LE/a;->j()Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v3}, LC1/O;->b(LE/a;)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const/4 v3, 0x1

    .line 27
    :goto_1
    add-int/2addr v2, v3

    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return v2
.end method

.method public static final c(Lcom/minhub/gamehub/hub/AddGameActivity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;LD1/b;)V
    .locals 9

    .line 1
    iget-object v1, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->f:Landroid/os/Handler;

    .line 2
    .line 3
    const-string v2, "MinHub"

    .line 4
    .line 5
    const/4 v7, 0x4

    .line 6
    const/4 v8, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    const/4 v6, 0x1

    .line 9
    move-object v3, p1

    .line 10
    move-object v4, p3

    .line 11
    :try_start_0
    invoke-static/range {v3 .. v8}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->buildImportedGameFromDirectory$default(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;ZILjava/lang/Object;)Lcom/minhub/gamehub/data/Game;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p0, p4, p2, p1}, LC1/O;->k(Lcom/minhub/gamehub/hub/AddGameActivity;LD1/b;Ljava/io/File;Lcom/minhub/gamehub/data/Game;)Z

    .line 16
    .line 17
    .line 18
    move-result p1
    :try_end_0
    .catch Lcom/minhub/gamehub/hub/catalog/UnsupportedGameImportException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, p4}, Lcom/minhub/gamehub/hub/AddGameActivity;->r(LD1/b;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    :try_start_1
    new-instance p1, LC1/e;

    .line 26
    .line 27
    const/4 p3, 0x6

    .line 28
    invoke-direct {p1, p0, p3}, LC1/e;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Lcom/minhub/gamehub/hub/catalog/UnsupportedGameImportException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p4}, Lcom/minhub/gamehub/hub/AddGameActivity;->r(LD1/b;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    move-object p1, v0

    .line 40
    move-object v4, p0

    .line 41
    move-object v7, p4

    .line 42
    goto/16 :goto_4

    .line 43
    .line 44
    :catch_0
    move-exception v0

    .line 45
    move-object p1, v0

    .line 46
    goto :goto_0

    .line 47
    :catch_1
    move-exception v0

    .line 48
    move-object p1, v0

    .line 49
    goto :goto_1

    .line 50
    :goto_0
    :try_start_2
    const-string p3, "Folder import failed while building/committing game"

    .line 51
    .line 52
    invoke-static {v2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    .line 54
    .line 55
    invoke-virtual {p4}, LD1/b;->a()Z

    .line 56
    .line 57
    .line 58
    move-result p3

    .line 59
    if-eqz p3, :cond_1

    .line 60
    .line 61
    invoke-static {p2}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-static {p0, p1}, LC1/O;->d(Lcom/minhub/gamehub/hub/AddGameActivity;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    new-instance p2, LC1/B;

    .line 69
    .line 70
    const/4 p3, 0x2

    .line 71
    invoke-direct {p2, p0, p1, p3}, LC1/B;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p4}, Lcom/minhub/gamehub/hub/AddGameActivity;->r(LD1/b;)V

    .line 78
    .line 79
    .line 80
    goto :goto_3

    .line 81
    :goto_1
    :try_start_3
    const-string p3, "Folder import unsupported"

    .line 82
    .line 83
    invoke-static {v2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/catalog/UnsupportedGameImportException;->getReason()Lcom/minhub/gamehub/hub/catalog/UnsupportedImportReason;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    sget-object v0, Lcom/minhub/gamehub/hub/catalog/UnsupportedImportReason;->KIRI_NOT_EXTRACTED:Lcom/minhub/gamehub/hub/catalog/UnsupportedImportReason;

    .line 91
    .line 92
    if-ne p3, v0, :cond_2

    .line 93
    .line 94
    move-object v5, v3

    .line 95
    new-instance v3, LC1/G;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 96
    .line 97
    const/4 v8, 0x0

    .line 98
    move-object v4, p0

    .line 99
    move-object v6, p2

    .line 100
    move-object v7, p4

    .line 101
    :try_start_4
    invoke-direct/range {v3 .. v8}, LC1/G;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;Ljava/lang/String;Ljava/io/File;LD1/b;I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, v7}, Lcom/minhub/gamehub/hub/AddGameActivity;->r(LD1/b;)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :catchall_1
    move-exception v0

    .line 112
    :goto_2
    move-object p1, v0

    .line 113
    goto :goto_4

    .line 114
    :catchall_2
    move-exception v0

    .line 115
    move-object v4, p0

    .line 116
    move-object v7, p4

    .line 117
    goto :goto_2

    .line 118
    :cond_2
    move-object v4, p0

    .line 119
    move-object v6, p2

    .line 120
    move-object v7, p4

    .line 121
    :try_start_5
    invoke-virtual {v7}, LD1/b;->a()Z

    .line 122
    .line 123
    .line 124
    move-result p0

    .line 125
    if-eqz p0, :cond_3

    .line 126
    .line 127
    invoke-static {v6}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 128
    .line 129
    .line 130
    :cond_3
    new-instance p0, LC1/k;

    .line 131
    .line 132
    const/4 p2, 0x1

    .line 133
    invoke-direct {p0, p2, v4, p1}, LC1/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4, v7}, Lcom/minhub/gamehub/hub/AddGameActivity;->r(LD1/b;)V

    .line 140
    .line 141
    .line 142
    :goto_3
    return-void

    .line 143
    :goto_4
    invoke-virtual {v4, v7}, Lcom/minhub/gamehub/hub/AddGameActivity;->r(LD1/b;)V

    .line 144
    .line 145
    .line 146
    throw p1
.end method

.method public static final d(Lcom/minhub/gamehub/hub/AddGameActivity;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "error"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    instance-of v0, p1, LC1/h0;

    .line 12
    .line 13
    const-string v1, "getString(...)"

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const p1, 0x7f12010c

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_0
    instance-of v0, p1, Lcom/minhub/gamehub/hub/catalog/UnsupportedGameImportException;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    check-cast p1, Lcom/minhub/gamehub/hub/catalog/UnsupportedGameImportException;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/catalog/UnsupportedGameImportException;->getReason()Lcom/minhub/gamehub/hub/catalog/UnsupportedImportReason;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    sget-object v0, LC1/M;->a:[I

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    aget p1, v0, p1

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    if-eq p1, v0, :cond_2

    .line 48
    .line 49
    const/4 v0, 0x2

    .line 50
    if-ne p1, v0, :cond_1

    .line 51
    .line 52
    const p1, 0x7f12010f

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-object p0

    .line 63
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 64
    .line 65
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 66
    .line 67
    .line 68
    throw p0

    .line 69
    :cond_2
    const p1, 0x7f12010e

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-object p0

    .line 80
    :cond_3
    invoke-static {p0, p1}, LC1/O;->h(Lcom/minhub/gamehub/hub/AddGameActivity;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0
.end method

.method public static final e(J)Ljava/lang/String;
    .locals 2

    .line 1
    const-wide/32 v0, 0x100000

    .line 2
    .line 3
    .line 4
    cmp-long v0, p0, v0

    .line 5
    .line 6
    if-gez v0, :cond_0

    .line 7
    .line 8
    const/16 v0, 0x400

    .line 9
    .line 10
    int-to-long v0, v0

    .line 11
    div-long/2addr p0, v0

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p0, " KB"

    .line 21
    .line 22
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_0
    const/high16 v0, 0x100000

    .line 31
    .line 32
    int-to-long v0, v0

    .line 33
    div-long/2addr p0, v0

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p0, " MB"

    .line 43
    .line 44
    goto :goto_0
.end method

.method public static final f(Lcom/minhub/gamehub/hub/AddGameActivity;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    .line 1
    const-string v1, "-- MB"

    .line 2
    .line 3
    const-string v0, "<this>"

    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "uri"

    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string p0, "_size"

    .line 18
    .line 19
    filled-new-array {p0}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v5, 0x0

    .line 26
    move-object v3, p1

    .line 27
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 28
    .line 29
    .line 30
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    invoke-static {v2, v3}, LC1/O;->e(J)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    move-object p1, v0

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    move-object p1, v1

    .line 53
    :goto_0
    const/4 v0, 0x0

    .line 54
    :try_start_2
    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 55
    .line 56
    .line 57
    if-nez p1, :cond_1

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_1
    return-object p1

    .line 61
    :goto_1
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 62
    :catchall_1
    move-exception v0

    .line 63
    :try_start_4
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 67
    :catch_0
    :cond_2
    :goto_2
    return-object v1
.end method

.method public static final g(Lcom/minhub/gamehub/hub/AddGameActivity;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    .line 1
    const-string v1, "Unknown Game"

    .line 2
    .line 3
    const-string v0, "<this>"

    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "uri"

    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string p0, "_display_name"

    .line 18
    .line 19
    filled-new-array {p0}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v5, 0x0

    .line 26
    move-object v3, p1

    .line 27
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 28
    .line 29
    .line 30
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    move-object p1, v0

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    move-object p1, v1

    .line 49
    :goto_0
    const/4 v0, 0x0

    .line 50
    :try_start_2
    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 51
    .line 52
    .line 53
    if-nez p1, :cond_1

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_1
    return-object p1

    .line 57
    :goto_1
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 58
    :catchall_1
    move-exception v0

    .line 59
    :try_start_4
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 63
    :catch_0
    :cond_2
    :goto_2
    return-object v1
.end method

.method public static h(Lcom/minhub/gamehub/hub/AddGameActivity;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "error"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, p1

    .line 12
    :goto_0
    const-string v1, "getString(...)"

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    const-string v3, "No space left on device"

    .line 23
    .line 24
    invoke-static {v2, v3}, Lkotlin/text/StringsKt;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x1

    .line 29
    if-ne v2, v3, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    instance-of v2, v0, Landroid/system/ErrnoException;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    move-object v2, v0

    .line 37
    check-cast v2, Landroid/system/ErrnoException;

    .line 38
    .line 39
    iget v2, v2, Landroid/system/ErrnoException;->errno:I

    .line 40
    .line 41
    sget v3, Landroid/system/OsConstants;->ENOSPC:I

    .line 42
    .line 43
    if-ne v2, v3, :cond_1

    .line 44
    .line 45
    :goto_1
    const-wide/16 v2, 0x1

    .line 46
    .line 47
    const-wide/16 v4, 0x0

    .line 48
    .line 49
    invoke-static {v4, v5, v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    invoke-static {v2, v3}, LC1/O;->e(J)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const v0, 0x7f1201ad

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-object p0

    .line 72
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    instance-of v0, p1, Lcom/minhub/gamehub/hub/catalog/UncreatableFolderException;

    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    check-cast p1, Lcom/minhub/gamehub/hub/catalog/UncreatableFolderException;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/catalog/UncreatableFolderException;->getFolderName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const v0, 0x7f1201ab

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-object p0

    .line 102
    :cond_3
    instance-of v0, p1, Ljava/util/zip/ZipException;

    .line 103
    .line 104
    if-eqz v0, :cond_4

    .line 105
    .line 106
    const p1, 0x7f1201aa

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return-object p0

    .line 117
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    if-eqz v0, :cond_6

    .line 122
    .line 123
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-nez v2, :cond_5

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_5
    const/4 v0, 0x0

    .line 131
    :goto_2
    if-nez v0, :cond_7

    .line 132
    .line 133
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    :cond_7
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    const v0, 0x7f1201ac

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    return-object p0
.end method

.method public static final i(Lcom/minhub/gamehub/hub/AddGameActivity;Ljava/lang/String;Ljava/io/File;LD1/b;)V
    .locals 9

    .line 1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    :cond_0
    move-object v4, p2

    .line 20
    move-object v6, p3

    .line 21
    move-object v3, v1

    .line 22
    move-object v1, p0

    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_1
    sget-object v2, LC1/Q;->b:LC1/Q;

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Lcom/minhub/gamehub/hub/AddGameActivity;->B(LC1/Q;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const v3, 0x7f0c0044

    .line 35
    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    new-instance v2, LO0/b;

    .line 43
    .line 44
    invoke-direct {v2, p0, v0}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, v2, Le/f;->c:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Le/b;

    .line 50
    .line 51
    iput-object v7, v0, Le/b;->t:Landroid/view/View;

    .line 52
    .line 53
    new-instance v3, LC1/y;

    .line 54
    .line 55
    invoke-direct {v3, v1, p3, p0, p2}, LC1/y;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;LD1/b;Lcom/minhub/gamehub/hub/AddGameActivity;Ljava/io/File;)V

    .line 56
    .line 57
    .line 58
    iput-object v3, v0, Le/b;->n:Landroid/content/DialogInterface$OnCancelListener;

    .line 59
    .line 60
    invoke-virtual {v2}, LO0/b;->c()Le/g;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const-string v0, "create(...)"

    .line 65
    .line 66
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const v0, 0x7f0900ac

    .line 70
    .line 71
    .line 72
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    new-instance v0, LC1/o;

    .line 77
    .line 78
    move-object v3, p1

    .line 79
    move-object v4, p2

    .line 80
    move-object v6, p3

    .line 81
    move-object v5, v2

    .line 82
    move-object v2, p0

    .line 83
    invoke-direct/range {v0 .. v6}, LC1/o;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/minhub/gamehub/hub/AddGameActivity;Ljava/lang/String;Ljava/io/File;Le/g;LD1/b;)V

    .line 84
    .line 85
    .line 86
    move-object v3, v1

    .line 87
    move-object v1, v2

    .line 88
    move-object v2, v5

    .line 89
    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    .line 91
    .line 92
    const p0, 0x7f0900ab

    .line 93
    .line 94
    .line 95
    invoke-virtual {v7, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    new-instance p1, LC1/z;

    .line 100
    .line 101
    const/4 p2, 0x0

    .line 102
    invoke-direct {p1, v2, p2}, LC1/z;-><init>(Le/g;I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    .line 107
    .line 108
    new-instance v0, LC1/A;

    .line 109
    .line 110
    move-object v5, v4

    .line 111
    move-object v4, v6

    .line 112
    invoke-direct/range {v0 .. v5}, LC1/A;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;Le/g;Ljava/util/concurrent/atomic/AtomicBoolean;LD1/b;Ljava/io/File;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 116
    .line 117
    .line 118
    const-string p0, "dialog"

    .line 119
    .line 120
    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-object p0, v1, Lcom/minhub/gamehub/hub/AddGameActivity;->h:Ljava/util/List;

    .line 124
    .line 125
    const-string p1, "importDialogs"

    .line 126
    .line 127
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :goto_0
    invoke-static {v3, v6, v1, v4}, LC1/O;->j(Ljava/util/concurrent/atomic/AtomicBoolean;LD1/b;Lcom/minhub/gamehub/hub/AddGameActivity;Ljava/io/File;)V

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method public static final j(Ljava/util/concurrent/atomic/AtomicBoolean;LD1/b;Lcom/minhub/gamehub/hub/AddGameActivity;Ljava/io/File;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, LD1/b;->b()Z

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p1}, Lcom/minhub/gamehub/hub/AddGameActivity;->r(LD1/b;)V

    .line 13
    .line 14
    .line 15
    new-instance p0, Ljava/lang/Thread;

    .line 16
    .line 17
    new-instance p1, LC1/F;

    .line 18
    .line 19
    const/4 p2, 0x0

    .line 20
    invoke-direct {p1, p3, p2}, LC1/F;-><init>(Ljava/io/File;I)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public static final k(Lcom/minhub/gamehub/hub/AddGameActivity;LD1/b;Ljava/io/File;Lcom/minhub/gamehub/data/Game;)Z
    .locals 4

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "operation"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "destDir"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "importedGame"

    .line 17
    .line 18
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p1, LD1/b;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 22
    .line 23
    sget-object v1, LD1/a;->b:LD1/a;

    .line 24
    .line 25
    sget-object v2, LD1/a;->d:LD1/a;

    .line 26
    .line 27
    :cond_0
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string p1, "getApplicationContext(...)"

    .line 38
    .line 39
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p0, p3}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->commitImportedGame(Landroid/content/Context;Lcom/minhub/gamehub/data/Game;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x1

    .line 46
    return p0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    sget-object p1, LD1/a;->d:LD1/a;

    .line 49
    .line 50
    sget-object p3, LD1/a;->c:LD1/a;

    .line 51
    .line 52
    :goto_0
    invoke-virtual {v0, p1, p3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_1

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-ne v1, p1, :cond_1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-static {p2}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 66
    .line 67
    .line 68
    throw p0

    .line 69
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    if-eq v3, v1, :cond_0

    .line 74
    .line 75
    invoke-virtual {p1}, LD1/b;->a()Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-eqz p0, :cond_3

    .line 80
    .line 81
    invoke-static {p2}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 82
    .line 83
    .line 84
    :cond_3
    const/4 p0, 0x0

    .line 85
    return p0
.end method

.method public static final l(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lkotlin/text/Regex;

    .line 7
    .line 8
    const-string v1, "[^a-zA-Z0-9_\\-]"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "_"

    .line 14
    .line 15
    invoke-virtual {v0, p0, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const/16 v0, 0x32

    .line 20
    .line 21
    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method
