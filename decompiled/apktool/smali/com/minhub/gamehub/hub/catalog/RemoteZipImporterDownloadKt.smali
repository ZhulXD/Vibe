.class public final Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterDownloadKt;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a:\u0010\u000c\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\r0\u0015H\u0000\u001a0\u0010\u0016\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00132\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\r0\u0015H\u0000\u001a0\u0010\u0018\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00132\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\r0\u0015H\u0000\u001a\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0002\u001a:\u0010\u001b\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u00012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\r0\u0015H\u0000\u001a:\u0010\u001d\u001a\u00020\r*\u00020\u000e2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u000f\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00132\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\r0\u0015H\u0000\u001a8\u0010\u001e\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00132\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\r0\u0015H\u0002\u001a8\u0010\u001f\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010 \u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00132\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\r0\u0015H\u0002\u001a\u0008\u0010#\u001a\u00020\u0001H\u0002\u001a0\u0010$\u001a\u00020\r*\u00020\u000e2\u0006\u0010%\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00132\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\r0\u0015H\u0000\u001a8\u0010&\u001a\u00020\r*\u00020\u000e2\u0006\u0010%\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00132\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\r0\u00152\u0006\u0010\'\u001a\u00020\u0008H\u0000\u001a\u0010\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0002\u001aJ\u0010,\u001a\u00020\n*\u00020\u000e2\u0006\u0010*\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\n2\u0006\u00101\u001a\u00020\n2\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\r0\u00152\u0008\u0008\u0002\u00102\u001a\u00020\nH\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010!\u001a\u00020\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\"\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u00063"
    }
    d2 = {
        "ERR_BANDWIDTH",
        "",
        "ERR_FILE_NOT_FOUND",
        "ERR_NOT_A_ZIP",
        "ERR_AUTH_FAILED",
        "ERR_REDIRECT_LIMIT",
        "ERR_GOFILE_LIMIT",
        "MAX_DOWNLOAD_RETRIES",
        "",
        "RETRY_BACKOFF_MS",
        "",
        "MIN_FREE_SPACE_BYTES",
        "downloadRanozZip",
        "",
        "Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;",
        "pageUrl",
        "appContext",
        "Landroid/content/Context;",
        "archiveFile",
        "Ljava/io/File;",
        "onProgress",
        "Lkotlin/Function1;",
        "downloadPixeldrainZip",
        "fileId",
        "downloadPixeldrainFilesystemZip",
        "filePath",
        "pixeldrainFileIdFromPage",
        "downloadBuzzHeavierCdnZip",
        "cdnUrl",
        "downloadBuzzHeavierZip",
        "downloadBuzzHeavierViaWebView",
        "downloadBuzzHeavierCdnStream",
        "cookieStr",
        "cachedGoFileWt",
        "GOFILE_WT_FALLBACK",
        "goFileWebsiteToken",
        "downloadGoFileZip",
        "zipUrl",
        "downloadZipInternal",
        "redirectDepth",
        "looksLikeZipStream",
        "",
        "input",
        "Ljava/io/BufferedInputStream;",
        "copyStream",
        "Ljava/io/InputStream;",
        "output",
        "Ljava/io/OutputStream;",
        "totalLength",
        "startMs",
        "alreadyDownloaded",
        "app_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRemoteZipImporterDownload.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteZipImporterDownload.kt\ncom/minhub/gamehub/hub/catalog/RemoteZipImporterDownloadKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,695:1\n1#2:696\n*E\n"
    }
.end annotation


# static fields
.field private static final ERR_AUTH_FAILED:Ljava/lang/String; = "Authentication failed (error-token). Please try again."

.field private static final ERR_BANDWIDTH:Ljava/lang/String; = "Pixeldrain bandwidth quota exceeded (6 GB/week). Try again later or use a different link."

.field private static final ERR_FILE_NOT_FOUND:Ljava/lang/String; = "File not found or has been deleted."

.field private static final ERR_GOFILE_LIMIT:Ljava/lang/String; = "GoFile rate-limited (account monthly traffic limit). Please use another host (Pixeldrain / BuzzHeavier)."

.field private static final ERR_NOT_A_ZIP:Ljava/lang/String; = "Server did not return a ZIP archive."

.field private static final ERR_REDIRECT_LIMIT:Ljava/lang/String; = "Too many download redirects while resolving archive."

.field private static final GOFILE_WT_FALLBACK:Ljava/lang/String; = "4fd6sg89d7s6"

.field private static final MAX_DOWNLOAD_RETRIES:I = 0x3

.field private static final MIN_FREE_SPACE_BYTES:J = 0xc800000L

.field private static final RETRY_BACKOFF_MS:J = 0xbb8L

.field private static cachedGoFileWt:Ljava/lang/String; = ""


# direct methods
.method private static final copyStream(Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;Ljava/io/InputStream;Ljava/io/OutputStream;JJLkotlin/jvm/functions/Function1;J)J
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;",
            "Ljava/io/InputStream;",
            "Ljava/io/OutputStream;",
            "JJ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;J)J"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/high16 v1, 0x40000

    .line 4
    .line 5
    new-array v1, v1, [B

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    move-wide v6, v3

    .line 15
    move v8, v5

    .line 16
    move v9, v8

    .line 17
    :goto_0
    if-ltz v2, :cond_4

    .line 18
    .line 19
    move-object/from16 v10, p2

    .line 20
    .line 21
    invoke-virtual {v10, v1, v5, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 22
    .line 23
    .line 24
    int-to-long v11, v2

    .line 25
    add-long/2addr v6, v11

    .line 26
    cmp-long v2, p3, v3

    .line 27
    .line 28
    if-lez v2, :cond_2

    .line 29
    .line 30
    add-long v11, p8, v6

    .line 31
    .line 32
    const/16 v2, 0x64

    .line 33
    .line 34
    int-to-long v13, v2

    .line 35
    mul-long/2addr v13, v11

    .line 36
    div-long v13, v13, p3

    .line 37
    .line 38
    long-to-int v13, v13

    .line 39
    const/4 v14, 0x1

    .line 40
    invoke-static {v13, v14, v2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eq v2, v8, :cond_0

    .line 45
    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    move-object/from16 v13, p7

    .line 51
    .line 52
    invoke-interface {v13, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move v8, v2

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    move-object/from16 v13, p7

    .line 58
    .line 59
    :goto_1
    sub-int v15, v2, v9

    .line 60
    .line 61
    const/16 v3, 0xa

    .line 62
    .line 63
    if-lt v15, v3, :cond_3

    .line 64
    .line 65
    rem-int/lit8 v3, v2, 0xa

    .line 66
    .line 67
    sub-int v9, v2, v3

    .line 68
    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 70
    .line 71
    .line 72
    move-result-wide v3

    .line 73
    sub-long v3, v3, p5

    .line 74
    .line 75
    long-to-double v3, v3

    .line 76
    const-wide v16, 0x408f400000000000L    # 1000.0

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    div-double v3, v3, v16

    .line 82
    .line 83
    const-wide/16 v16, 0x0

    .line 84
    .line 85
    cmpl-double v15, v3, v16

    .line 86
    .line 87
    const/16 v5, 0x400

    .line 88
    .line 89
    if-lez v15, :cond_1

    .line 90
    .line 91
    long-to-double v14, v6

    .line 92
    move-wide/from16 v18, v3

    .line 93
    .line 94
    int-to-double v3, v5

    .line 95
    div-double/2addr v14, v3

    .line 96
    div-double/2addr v14, v3

    .line 97
    div-double v16, v14, v18

    .line 98
    .line 99
    :cond_1
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    const/4 v4, 0x1

    .line 108
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    const-string v4, "%.2f"

    .line 113
    .line 114
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    const-string v4, "format(...)"

    .line 119
    .line 120
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    int-to-long v4, v5

    .line 124
    div-long/2addr v11, v4

    .line 125
    div-long/2addr v11, v4

    .line 126
    div-long v14, p3, v4

    .line 127
    .line 128
    div-long/2addr v14, v4

    .line 129
    new-instance v4, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v2, "% \u2014 "

    .line 138
    .line 139
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v2, " MB/s \u2014 "

    .line 146
    .line 147
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v2, "MB / "

    .line 154
    .line 155
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v2, "MB"

    .line 162
    .line 163
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    const-string v3, "MinHub-DL"

    .line 171
    .line 172
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_2
    move-object/from16 v13, p7

    .line 177
    .line 178
    :cond_3
    :goto_2
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    const-wide/16 v3, 0x0

    .line 183
    .line 184
    const/4 v5, 0x0

    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :cond_4
    return-wide v6
.end method

.method public static synthetic copyStream$default(Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;Ljava/io/InputStream;Ljava/io/OutputStream;JJLkotlin/jvm/functions/Function1;JILjava/lang/Object;)J
    .locals 12

    .line 1
    and-int/lit8 v0, p10, 0x20

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    move-wide v10, v0

    .line 8
    :goto_0
    move-object v2, p0

    .line 9
    move-object v3, p1

    .line 10
    move-object v4, p2

    .line 11
    move-wide v5, p3

    .line 12
    move-wide/from16 v7, p5

    .line 13
    .line 14
    move-object/from16 v9, p7

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    move-wide/from16 v10, p8

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :goto_1
    invoke-static/range {v2 .. v11}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterDownloadKt;->copyStream(Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;Ljava/io/InputStream;Ljava/io/OutputStream;JJLkotlin/jvm/functions/Function1;J)J

    .line 21
    .line 22
    .line 23
    move-result-wide p0

    .line 24
    return-wide p0
.end method

.method private static final downloadBuzzHeavierCdnStream(Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lkotlin/jvm/functions/Function1;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/net/URL;

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "null cannot be cast to non-null type java.net.HttpURLConnection"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    move-object v1, v0

    .line 18
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 19
    .line 20
    const/16 v0, 0x3a98

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 23
    .line 24
    .line 25
    const v0, 0x1d4c0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 29
    .line 30
    .line 31
    const-string v0, "GET"

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 38
    .line 39
    .line 40
    const-string v0, "Accept-Encoding"

    .line 41
    .line 42
    const-string v2, "identity"

    .line 43
    .line 44
    invoke-virtual {v1, v0, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v0, "User-Agent"

    .line 48
    .line 49
    const-string v2, "Mozilla/5.0 (Linux; Android 13; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36"

    .line 50
    .line 51
    invoke-virtual {v1, v0, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static/range {p2 .. p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_0

    .line 59
    .line 60
    const-string v0, "Cookie"

    .line 61
    .line 62
    move-object/from16 v2, p2

    .line 63
    .line 64
    invoke-virtual {v1, v0, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v3, ""

    .line 79
    .line 80
    if-nez v0, :cond_1

    .line 81
    .line 82
    move-object v0, v3

    .line 83
    :cond_1
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLengthLong()J

    .line 84
    .line 85
    .line 86
    move-result-wide v4

    .line 87
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    const-wide/16 v7, 0x0

    .line 92
    .line 93
    cmp-long v4, v4, v7

    .line 94
    .line 95
    const/4 v5, 0x0

    .line 96
    if-lez v4, :cond_2

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    move-object v6, v5

    .line 100
    :goto_0
    if-eqz v6, :cond_3

    .line 101
    .line 102
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 103
    .line 104
    .line 105
    move-result-wide v9

    .line 106
    :goto_1
    move-wide v14, v9

    .line 107
    goto :goto_2

    .line 108
    :cond_3
    const-wide/16 v9, -0x1

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :goto_2
    cmp-long v4, v14, v7

    .line 112
    .line 113
    if-lez v4, :cond_4

    .line 114
    .line 115
    const/16 v4, 0x400

    .line 116
    .line 117
    int-to-long v6, v4

    .line 118
    div-long v8, v14, v6

    .line 119
    .line 120
    div-long/2addr v8, v6

    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v6, " MB"

    .line 130
    .line 131
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    goto :goto_3

    .line 139
    :cond_4
    const-string v4, "unknown"

    .line 140
    .line 141
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v7, "BuzzHeavier CDN stream code="

    .line 144
    .line 145
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v7, " type="

    .line 152
    .line 153
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v7, " size="

    .line 160
    .line 161
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    const-string v6, "MinHub-DL"

    .line 172
    .line 173
    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    const/16 v4, 0x2000

    .line 177
    .line 178
    const/16 v7, 0x12c

    .line 179
    .line 180
    const/16 v8, 0xc8

    .line 181
    .line 182
    if-gt v8, v2, :cond_8

    .line 183
    .line 184
    if-ge v2, v7, :cond_8

    .line 185
    .line 186
    const-string v2, "text/html"

    .line 187
    .line 188
    invoke-static {v0, v2}, Lkotlin/text/StringsKt;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-nez v0, :cond_7

    .line 193
    .line 194
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    if-eqz v0, :cond_5

    .line 199
    .line 200
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 201
    .line 202
    .line 203
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 204
    .line 205
    .line 206
    move-result-wide v16

    .line 207
    new-instance v12, Ljava/io/BufferedInputStream;

    .line 208
    .line 209
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-direct {v12, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 214
    .line 215
    .line 216
    :try_start_0
    invoke-static {v12}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterDownloadKt;->looksLikeZipStream(Ljava/io/BufferedInputStream;)Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-eqz v0, :cond_6

    .line 221
    .line 222
    new-instance v13, Ljava/io/FileOutputStream;

    .line 223
    .line 224
    move-object/from16 v0, p3

    .line 225
    .line 226
    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    .line 228
    .line 229
    const/16 v21, 0x20

    .line 230
    .line 231
    const/16 v22, 0x0

    .line 232
    .line 233
    const-wide/16 v19, 0x0

    .line 234
    .line 235
    move-object/from16 v11, p0

    .line 236
    .line 237
    move-object/from16 v18, p4

    .line 238
    .line 239
    :try_start_1
    invoke-static/range {v11 .. v22}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterDownloadKt;->copyStream$default(Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;Ljava/io/InputStream;Ljava/io/OutputStream;JJLkotlin/jvm/functions/Function1;JILjava/lang/Object;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 240
    .line 241
    .line 242
    :try_start_2
    invoke-static {v13, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 243
    .line 244
    .line 245
    invoke-static {v12, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 246
    .line 247
    .line 248
    const/16 v0, 0x64

    .line 249
    .line 250
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    move-object/from16 v2, p4

    .line 255
    .line 256
    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 260
    .line 261
    .line 262
    return-void

    .line 263
    :catchall_0
    move-exception v0

    .line 264
    move-object v1, v0

    .line 265
    goto :goto_4

    .line 266
    :catchall_1
    move-exception v0

    .line 267
    move-object v1, v0

    .line 268
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 269
    :catchall_2
    move-exception v0

    .line 270
    :try_start_4
    invoke-static {v13, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 271
    .line 272
    .line 273
    throw v0

    .line 274
    :cond_6
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 275
    .line 276
    .line 277
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 278
    .line 279
    const-string v1, "Server did not return a ZIP archive."

    .line 280
    .line 281
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 285
    :goto_4
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 286
    :catchall_3
    move-exception v0

    .line 287
    invoke-static {v12, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 288
    .line 289
    .line 290
    throw v0

    .line 291
    :cond_7
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    const-string v2, "getInputStream(...)"

    .line 296
    .line 297
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 301
    .line 302
    new-instance v3, Ljava/io/InputStreamReader;

    .line 303
    .line 304
    invoke-direct {v3, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 305
    .line 306
    .line 307
    new-instance v2, Ljava/io/BufferedReader;

    .line 308
    .line 309
    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 310
    .line 311
    .line 312
    :try_start_6
    invoke-static {v2}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-static {v0, v8}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 320
    invoke-static {v2, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 324
    .line 325
    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    const-string v2, "BuzzHeavier CDN got HTML: "

    .line 329
    .line 330
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    .line 342
    .line 343
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 344
    .line 345
    const-string v1, "BuzzHeavier: CDN returned HTML instead of file"

    .line 346
    .line 347
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    throw v0

    .line 351
    :catchall_4
    move-exception v0

    .line 352
    move-object v1, v0

    .line 353
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 354
    :catchall_5
    move-exception v0

    .line 355
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 356
    .line 357
    .line 358
    throw v0

    .line 359
    :cond_8
    :try_start_8
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 360
    .line 361
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    if-nez v0, :cond_9

    .line 366
    .line 367
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    goto :goto_5

    .line 372
    :catchall_6
    move-exception v0

    .line 373
    goto :goto_7

    .line 374
    :cond_9
    :goto_5
    if-eqz v0, :cond_a

    .line 375
    .line 376
    sget-object v6, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 377
    .line 378
    new-instance v8, Ljava/io/InputStreamReader;

    .line 379
    .line 380
    invoke-direct {v8, v0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 381
    .line 382
    .line 383
    new-instance v6, Ljava/io/BufferedReader;

    .line 384
    .line 385
    invoke-direct {v6, v8, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 386
    .line 387
    .line 388
    :try_start_9
    invoke-static {v6}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    invoke-static {v0, v7}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 396
    :try_start_a
    invoke-static {v6, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 397
    .line 398
    .line 399
    goto :goto_6

    .line 400
    :catchall_7
    move-exception v0

    .line 401
    move-object v4, v0

    .line 402
    :try_start_b
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 403
    :catchall_8
    move-exception v0

    .line 404
    :try_start_c
    invoke-static {v6, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 405
    .line 406
    .line 407
    throw v0

    .line 408
    :cond_a
    move-object v0, v5

    .line 409
    :goto_6
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 413
    goto :goto_8

    .line 414
    :goto_7
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 415
    .line 416
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    :goto_8
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    move-result v4

    .line 428
    if-eqz v4, :cond_b

    .line 429
    .line 430
    goto :goto_9

    .line 431
    :cond_b
    move-object v5, v0

    .line 432
    :goto_9
    check-cast v5, Ljava/lang/String;

    .line 433
    .line 434
    if-nez v5, :cond_c

    .line 435
    .line 436
    goto :goto_a

    .line 437
    :cond_c
    move-object v3, v5

    .line 438
    :goto_a
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 439
    .line 440
    .line 441
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 442
    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    .line 444
    .line 445
    const-string v4, "BuzzHeavier CDN HTTP "

    .line 446
    .line 447
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    const-string v2, " \u2014 "

    .line 454
    .line 455
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    throw v0
.end method

.method public static final downloadBuzzHeavierCdnZip(Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;Ljava/lang/String;Landroid/content/Context;Ljava/io/File;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "cdnUrl"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "archiveFile"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "onProgress"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "BuzzHeavier CDN direct: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "MinHub-DL"

    .line 36
    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    :try_start_0
    invoke-static {p0, p1, p3, p4, v0}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterDownloadKt;->downloadZipInternal(Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;Ljava/lang/String;Ljava/io/File;Lkotlin/jvm/functions/Function1;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v3, "BuzzHeavier CDN direct failed ("

    .line 53
    .line 54
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, "), trying WebView"

    .line 61
    .line 62
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 73
    .line 74
    .line 75
    if-eqz p2, :cond_0

    .line 76
    .line 77
    invoke-static {p0, p2, p1, p3, p4}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterDownloadKt;->downloadBuzzHeavierViaWebView(Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lkotlin/jvm/functions/Function1;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 82
    .line 83
    const-string p1, "BuzzHeavier: CDN link requires browser authentication and no context available."

    .line 84
    .line 85
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p0
.end method

.method private static final downloadBuzzHeavierViaWebView(Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "BuzzHeavier WebView flow: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "MinHub-DL"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p2}, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt;->resolveBuzzHeavierViaWebView(Landroid/content/Context;Ljava/lang/String;)Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebResult;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebResult;->getCdnUrl()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "BuzzHeavier WebView resolved cdnUrl="

    .line 33
    .line 34
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebResult;->getCdnUrl()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebResult;->getCdnCookies()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p0, p2, p1, p3, p4}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterDownloadKt;->downloadBuzzHeavierCdnStream(Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lkotlin/jvm/functions/Function1;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    const-string p1, "BuzzHeavier: WebView could not resolve the download link (Cloudflare blocked or page timed out). Try a direct link (Pixeldrain, etc.)."

    .line 62
    .line 63
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p0
.end method

.method public static final downloadBuzzHeavierZip(Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "pageUrl"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "archiveFile"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "onProgress"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-static {p0, p1, p2, p3, p4}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterDownloadKt;->downloadBuzzHeavierViaWebView(Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lkotlin/jvm/functions/Function1;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string p1, "BuzzHeavier: Cloudflare-protected page requires WebView but no context is available."

    .line 30
    .line 31
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p0
.end method

.method public static final downloadGoFileZip(Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;Ljava/lang/String;Ljava/io/File;Lkotlin/jvm/functions/Function1;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v8, p3

    .line 8
    .line 9
    const-string v3, "<this>"

    .line 10
    .line 11
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v3, "zipUrl"

    .line 15
    .line 16
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v3, "archiveFile"

    .line 20
    .line 21
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v3, "onProgress"

    .line 25
    .line 26
    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v4, "GoFile zipUrl raw: "

    .line 32
    .line 33
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const-string v4, "MinHub-DL"

    .line 44
    .line 45
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    const-string v3, "%20"

    .line 49
    .line 50
    const-string v5, " "

    .line 51
    .line 52
    invoke-static {v0, v5, v3}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    new-instance v0, Lkotlin/text/Regex;

    .line 57
    .line 58
    const-string v6, "/download/direct/([0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12})/"

    .line 59
    .line 60
    invoke-direct {v0, v6}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/4 v6, 0x0

    .line 64
    const/4 v7, 0x2

    .line 65
    const/4 v13, 0x0

    .line 66
    invoke-static {v0, v3, v6, v7, v13}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const/4 v9, 0x1

    .line 71
    if-eqz v0, :cond_0

    .line 72
    .line 73
    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    .line 78
    .line 79
    invoke-static {v0, v9}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Ljava/lang/String;

    .line 84
    .line 85
    move-object v10, v0

    .line 86
    goto :goto_0

    .line 87
    :cond_0
    move-object v10, v13

    .line 88
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v11, "GoFile contentId: "

    .line 91
    .line 92
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    invoke-static {}, Lcom/minhub/gamehub/NativeKeys;->gofileToken()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 110
    .line 111
    .line 112
    move-result v11

    .line 113
    const-string v12, "getInputStream(...)"

    .line 114
    .line 115
    const-string v14, "...)"

    .line 116
    .line 117
    const-string v15, "Mozilla/5.0 (Linux; Android 10) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36"

    .line 118
    .line 119
    const-string v6, "User-Agent"

    .line 120
    .line 121
    const-string v7, "null cannot be cast to non-null type java.net.HttpURLConnection"

    .line 122
    .line 123
    if-nez v11, :cond_1

    .line 124
    .line 125
    const/4 v11, 0x6

    .line 126
    invoke-static {v0, v11}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v11

    .line 130
    new-instance v9, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v13, "GoFile using configured account token ("

    .line 133
    .line 134
    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    move-object/from16 v16, v3

    .line 151
    .line 152
    :goto_1
    move-object v3, v0

    .line 153
    goto/16 :goto_2

    .line 154
    .line 155
    :cond_1
    new-instance v0, Ljava/net/URL;

    .line 156
    .line 157
    const-string v9, "https://api.gofile.io/accounts"

    .line 158
    .line 159
    invoke-direct {v0, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 170
    .line 171
    const/16 v9, 0x3a98

    .line 172
    .line 173
    invoke-virtual {v0, v9}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v9}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 177
    .line 178
    .line 179
    const-string v9, "POST"

    .line 180
    .line 181
    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v6, v15}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    const-string v9, "Content-Type"

    .line 188
    .line 189
    const-string v11, "application/json"

    .line 190
    .line 191
    invoke-virtual {v0, v9, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    const/4 v9, 0x1

    .line 195
    invoke-virtual {v0, v9}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 199
    .line 200
    .line 201
    move-result-object v9

    .line 202
    sget-object v11, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 203
    .line 204
    const-string v13, "{}"

    .line 205
    .line 206
    invoke-virtual {v13, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 207
    .line 208
    .line 209
    move-result-object v13

    .line 210
    move-object/from16 v16, v0

    .line 211
    .line 212
    const-string v0, "getBytes(...)"

    .line 213
    .line 214
    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v9, v13}, Ljava/io/OutputStream;->write([B)V

    .line 218
    .line 219
    .line 220
    invoke-virtual/range {v16 .. v16}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    new-instance v9, Ljava/io/InputStreamReader;

    .line 228
    .line 229
    invoke-direct {v9, v0, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 230
    .line 231
    .line 232
    new-instance v11, Ljava/io/BufferedReader;

    .line 233
    .line 234
    const/16 v13, 0x2000

    .line 235
    .line 236
    invoke-direct {v11, v9, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 237
    .line 238
    .line 239
    :try_start_0
    invoke-static {v11}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_e

    .line 243
    const/4 v9, 0x0

    .line 244
    invoke-static {v11, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 248
    .line 249
    .line 250
    const/16 v9, 0xc8

    .line 251
    .line 252
    invoke-static {v0, v9}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v11

    .line 256
    new-instance v9, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    const-string v13, "GoFile accounts response: "

    .line 259
    .line 260
    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v9

    .line 270
    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    new-instance v9, Lkotlin/text/Regex;

    .line 274
    .line 275
    const-string v11, "\"token\"\\s*:\\s*\"([^\"]+)\""

    .line 276
    .line 277
    invoke-direct {v9, v11}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    move-object/from16 v16, v3

    .line 281
    .line 282
    const/4 v3, 0x0

    .line 283
    const/4 v11, 0x0

    .line 284
    const/4 v13, 0x2

    .line 285
    invoke-static {v9, v0, v11, v13, v3}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    if-eqz v0, :cond_1c

    .line 290
    .line 291
    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    if-eqz v0, :cond_1c

    .line 296
    .line 297
    const/4 v9, 0x1

    .line 298
    invoke-static {v0, v9}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    check-cast v0, Ljava/lang/String;

    .line 303
    .line 304
    if-eqz v0, :cond_1c

    .line 305
    .line 306
    goto/16 :goto_1

    .line 307
    .line 308
    :goto_2
    const/16 v0, 0x8

    .line 309
    .line 310
    invoke-static {v3, v0}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    new-instance v9, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    const-string v11, "GoFile token acquired ("

    .line 317
    .line 318
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    .line 333
    .line 334
    invoke-static {}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterDownloadKt;->goFileWebsiteToken()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 339
    .line 340
    .line 341
    move-result v9

    .line 342
    if-nez v9, :cond_2

    .line 343
    .line 344
    const-string v9, "<none>"

    .line 345
    .line 346
    goto :goto_3

    .line 347
    :cond_2
    move-object v9, v0

    .line 348
    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    .line 349
    .line 350
    const-string v13, "GoFile wt="

    .line 351
    .line 352
    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v9

    .line 362
    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    .line 364
    .line 365
    const-string v11, "https://gofile.io/"

    .line 366
    .line 367
    const-string v13, "Referer"

    .line 368
    .line 369
    const-string v14, "accountToken="

    .line 370
    .line 371
    const-string v9, "Cookie"

    .line 372
    .line 373
    const-string v8, "GET"

    .line 374
    .line 375
    move-object/from16 v17, v5

    .line 376
    .line 377
    const-string v5, ""

    .line 378
    .line 379
    move-object/from16 v18, v5

    .line 380
    .line 381
    if-eqz v10, :cond_c

    .line 382
    .line 383
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 384
    .line 385
    .line 386
    move-result v19

    .line 387
    if-lez v19, :cond_c

    .line 388
    .line 389
    new-instance v5, Ljava/net/URL;

    .line 390
    .line 391
    move-object/from16 v20, v12

    .line 392
    .line 393
    const-string v12, "?wt="

    .line 394
    .line 395
    const-string v2, "&cache=true"

    .line 396
    .line 397
    const-string v1, "https://api.gofile.io/contents/"

    .line 398
    .line 399
    invoke-static {v1, v10, v12, v0, v2}, LE/b;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    move-object v1, v0

    .line 414
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 415
    .line 416
    const/16 v2, 0x3a98

    .line 417
    .line 418
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v1, v6, v15}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    .line 431
    .line 432
    const-string v2, "Bearer "

    .line 433
    .line 434
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    const-string v2, "Authorization"

    .line 445
    .line 446
    invoke-virtual {v1, v2, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    .line 450
    .line 451
    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    invoke-virtual {v1, v9, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v1, v13, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 468
    .line 469
    .line 470
    move-result v2

    .line 471
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 472
    .line 473
    const/16 v5, 0xc8

    .line 474
    .line 475
    if-gt v5, v2, :cond_3

    .line 476
    .line 477
    const/16 v5, 0x12c

    .line 478
    .line 479
    if-ge v2, v5, :cond_3

    .line 480
    .line 481
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    goto :goto_4

    .line 486
    :catchall_0
    move-exception v0

    .line 487
    move-object/from16 v21, v1

    .line 488
    .line 489
    goto :goto_6

    .line 490
    :cond_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    :goto_4
    if-eqz v0, :cond_4

    .line 495
    .line 496
    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 497
    .line 498
    new-instance v12, Ljava/io/InputStreamReader;

    .line 499
    .line 500
    invoke-direct {v12, v0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 501
    .line 502
    .line 503
    new-instance v5, Ljava/io/BufferedReader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 504
    .line 505
    move-object/from16 v21, v1

    .line 506
    .line 507
    const/16 v1, 0x2000

    .line 508
    .line 509
    :try_start_2
    invoke-direct {v5, v12, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 510
    .line 511
    .line 512
    :try_start_3
    invoke-static {v5}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 516
    const/4 v1, 0x0

    .line 517
    :try_start_4
    invoke-static {v5, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 518
    .line 519
    .line 520
    goto :goto_5

    .line 521
    :catchall_1
    move-exception v0

    .line 522
    goto :goto_6

    .line 523
    :catchall_2
    move-exception v0

    .line 524
    move-object v1, v0

    .line 525
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 526
    :catchall_3
    move-exception v0

    .line 527
    :try_start_6
    invoke-static {v5, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 528
    .line 529
    .line 530
    throw v0

    .line 531
    :cond_4
    move-object/from16 v21, v1

    .line 532
    .line 533
    const/4 v0, 0x0

    .line 534
    :goto_5
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 538
    goto :goto_7

    .line 539
    :goto_6
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 540
    .line 541
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    :goto_7
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 550
    .line 551
    .line 552
    move-result v1

    .line 553
    if-eqz v1, :cond_5

    .line 554
    .line 555
    const/4 v0, 0x0

    .line 556
    :cond_5
    check-cast v0, Ljava/lang/String;

    .line 557
    .line 558
    if-nez v0, :cond_6

    .line 559
    .line 560
    move-object/from16 v0, v18

    .line 561
    .line 562
    :cond_6
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 563
    .line 564
    .line 565
    const/16 v1, 0x190

    .line 566
    .line 567
    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v5

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    .line 572
    .line 573
    const-string v12, "GoFile API code="

    .line 574
    .line 575
    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    const-string v12, " body="

    .line 582
    .line 583
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v1

    .line 593
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    .line 595
    .line 596
    const-string v1, "\"error-notPremium\""

    .line 597
    .line 598
    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 599
    .line 600
    .line 601
    move-result v1

    .line 602
    if-eqz v1, :cond_7

    .line 603
    .line 604
    const-string v0, "GoFile API error-notPremium, attempting direct download anyway"

    .line 605
    .line 606
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    .line 608
    .line 609
    move-object/from16 v1, p0

    .line 610
    .line 611
    goto/16 :goto_9

    .line 612
    .line 613
    :cond_7
    const-string v1, "\"error-token\""

    .line 614
    .line 615
    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 616
    .line 617
    .line 618
    move-result v1

    .line 619
    if-nez v1, :cond_b

    .line 620
    .line 621
    const-string v1, "\"not-found\""

    .line 622
    .line 623
    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 624
    .line 625
    .line 626
    move-result v1

    .line 627
    if-nez v1, :cond_a

    .line 628
    .line 629
    const/16 v1, 0x194

    .line 630
    .line 631
    if-eq v2, v1, :cond_a

    .line 632
    .line 633
    const/16 v5, 0xc8

    .line 634
    .line 635
    if-gt v5, v2, :cond_9

    .line 636
    .line 637
    const/16 v5, 0x12c

    .line 638
    .line 639
    if-ge v2, v5, :cond_9

    .line 640
    .line 641
    new-instance v1, Lkotlin/text/Regex;

    .line 642
    .line 643
    const-string v2, "\"link\"\\s*:\\s*\"([^\"]+)\""

    .line 644
    .line 645
    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    const/4 v2, 0x0

    .line 649
    const/4 v5, 0x2

    .line 650
    const/4 v10, 0x0

    .line 651
    invoke-static {v1, v0, v2, v5, v10}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    if-eqz v0, :cond_8

    .line 656
    .line 657
    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    if-eqz v0, :cond_8

    .line 662
    .line 663
    const/4 v1, 0x1

    .line 664
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 665
    .line 666
    .line 667
    move-result-object v0

    .line 668
    check-cast v0, Ljava/lang/String;

    .line 669
    .line 670
    if-eqz v0, :cond_8

    .line 671
    .line 672
    const-string v1, "\\/"

    .line 673
    .line 674
    const-string v2, "/"

    .line 675
    .line 676
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v0

    .line 680
    goto :goto_8

    .line 681
    :cond_8
    const/4 v0, 0x0

    .line 682
    :goto_8
    move-object/from16 v1, p0

    .line 683
    .line 684
    if-eqz v0, :cond_d

    .line 685
    .line 686
    invoke-virtual {v1, v0}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->isSupportedRemoteUrl$app_release(Ljava/lang/String;)Z

    .line 687
    .line 688
    .line 689
    move-result v2

    .line 690
    if-eqz v2, :cond_d

    .line 691
    .line 692
    const-string v2, "GoFile resolved directLink: "

    .line 693
    .line 694
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v2

    .line 698
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    .line 700
    .line 701
    goto :goto_a

    .line 702
    :cond_9
    move-object/from16 v1, p0

    .line 703
    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    .line 705
    .line 706
    const-string v5, "GoFile API unexpected code="

    .line 707
    .line 708
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 709
    .line 710
    .line 711
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 712
    .line 713
    .line 714
    const-string v2, ", attempting direct download anyway"

    .line 715
    .line 716
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    .line 718
    .line 719
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v0

    .line 723
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    .line 725
    .line 726
    goto :goto_9

    .line 727
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 728
    .line 729
    const-string v1, "GoFile: File not found or has been deleted. (contentId="

    .line 730
    .line 731
    const-string v2, "). Please re-upload and update the link."

    .line 732
    .line 733
    invoke-static {v1, v10, v2}, LE/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object v1

    .line 737
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 738
    .line 739
    .line 740
    throw v0

    .line 741
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 742
    .line 743
    const-string v1, "GoFile: Authentication failed (error-token). Please try again."

    .line 744
    .line 745
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 746
    .line 747
    .line 748
    throw v0

    .line 749
    :cond_c
    move-object/from16 v20, v12

    .line 750
    .line 751
    :cond_d
    :goto_9
    move-object/from16 v0, v16

    .line 752
    .line 753
    :goto_a
    new-instance v2, Ljava/net/URL;

    .line 754
    .line 755
    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 756
    .line 757
    .line 758
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 759
    .line 760
    .line 761
    move-result-object v2

    .line 762
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 763
    .line 764
    .line 765
    check-cast v2, Ljava/net/HttpURLConnection;

    .line 766
    .line 767
    const/16 v5, 0x3a98

    .line 768
    .line 769
    invoke-virtual {v2, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 770
    .line 771
    .line 772
    const v5, 0x1d4c0

    .line 773
    .line 774
    .line 775
    invoke-virtual {v2, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 776
    .line 777
    .line 778
    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 779
    .line 780
    .line 781
    const/4 v5, 0x1

    .line 782
    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 783
    .line 784
    .line 785
    const-string v5, "Accept-Encoding"

    .line 786
    .line 787
    const-string v7, "identity"

    .line 788
    .line 789
    invoke-virtual {v2, v5, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    .line 791
    .line 792
    invoke-virtual {v2, v6, v15}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    .line 794
    .line 795
    new-instance v5, Ljava/lang/StringBuilder;

    .line 796
    .line 797
    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 798
    .line 799
    .line 800
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    .line 802
    .line 803
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 804
    .line 805
    .line 806
    move-result-object v3

    .line 807
    invoke-virtual {v2, v9, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    .line 809
    .line 810
    invoke-virtual {v2, v13, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    .line 812
    .line 813
    const-string v3, "Origin"

    .line 814
    .line 815
    const-string v5, "https://gofile.io"

    .line 816
    .line 817
    invoke-virtual {v2, v3, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    .line 819
    .line 820
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 821
    .line 822
    .line 823
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 824
    .line 825
    .line 826
    move-result v3

    .line 827
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 828
    .line 829
    .line 830
    move-result-object v5

    .line 831
    if-nez v5, :cond_e

    .line 832
    .line 833
    move-object/from16 v5, v18

    .line 834
    .line 835
    :cond_e
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLengthLong()J

    .line 836
    .line 837
    .line 838
    move-result-wide v6

    .line 839
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 840
    .line 841
    .line 842
    move-result-object v8

    .line 843
    const-wide/16 v9, 0x0

    .line 844
    .line 845
    cmp-long v6, v6, v9

    .line 846
    .line 847
    if-lez v6, :cond_f

    .line 848
    .line 849
    goto :goto_b

    .line 850
    :cond_f
    const/4 v8, 0x0

    .line 851
    :goto_b
    if-eqz v8, :cond_10

    .line 852
    .line 853
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 854
    .line 855
    .line 856
    move-result-wide v6

    .line 857
    goto :goto_c

    .line 858
    :cond_10
    const-wide/16 v6, -0x1

    .line 859
    .line 860
    :goto_c
    cmp-long v8, v6, v9

    .line 861
    .line 862
    if-lez v8, :cond_11

    .line 863
    .line 864
    const/16 v8, 0x400

    .line 865
    .line 866
    int-to-long v8, v8

    .line 867
    div-long v10, v6, v8

    .line 868
    .line 869
    div-long/2addr v10, v8

    .line 870
    new-instance v8, Ljava/lang/StringBuilder;

    .line 871
    .line 872
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 873
    .line 874
    .line 875
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 876
    .line 877
    .line 878
    const-string v9, " MB"

    .line 879
    .line 880
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    .line 882
    .line 883
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 884
    .line 885
    .line 886
    move-result-object v8

    .line 887
    goto :goto_d

    .line 888
    :cond_11
    const-string v8, "unknown"

    .line 889
    .line 890
    :goto_d
    new-instance v9, Ljava/lang/StringBuilder;

    .line 891
    .line 892
    const-string v10, "GoFile GET "

    .line 893
    .line 894
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 895
    .line 896
    .line 897
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    .line 899
    .line 900
    const-string v0, " code="

    .line 901
    .line 902
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    .line 904
    .line 905
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 906
    .line 907
    .line 908
    const-string v0, " type="

    .line 909
    .line 910
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    .line 912
    .line 913
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    .line 915
    .line 916
    const-string v0, " size="

    .line 917
    .line 918
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    .line 920
    .line 921
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    .line 923
    .line 924
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 925
    .line 926
    .line 927
    move-result-object v0

    .line 928
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    .line 930
    .line 931
    const-string v8, "GoFile rate-limited (account monthly traffic limit). Please use another host (Pixeldrain / BuzzHeavier)."

    .line 932
    .line 933
    const/16 v9, 0xc8

    .line 934
    .line 935
    if-gt v9, v3, :cond_15

    .line 936
    .line 937
    const/16 v9, 0x12c

    .line 938
    .line 939
    if-ge v3, v9, :cond_15

    .line 940
    .line 941
    const-string v0, "text/html"

    .line 942
    .line 943
    invoke-static {v5, v0}, Lkotlin/text/StringsKt;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 944
    .line 945
    .line 946
    move-result v0

    .line 947
    if-nez v0, :cond_14

    .line 948
    .line 949
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 950
    .line 951
    .line 952
    move-result-object v0

    .line 953
    if-eqz v0, :cond_12

    .line 954
    .line 955
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 956
    .line 957
    .line 958
    :cond_12
    move-wide v4, v6

    .line 959
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 960
    .line 961
    .line 962
    move-result-wide v6

    .line 963
    move-object v3, v2

    .line 964
    new-instance v2, Ljava/io/BufferedInputStream;

    .line 965
    .line 966
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 967
    .line 968
    .line 969
    move-result-object v0

    .line 970
    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 971
    .line 972
    .line 973
    :try_start_7
    invoke-static {v2}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterDownloadKt;->looksLikeZipStream(Ljava/io/BufferedInputStream;)Z

    .line 974
    .line 975
    .line 976
    move-result v0

    .line 977
    if-eqz v0, :cond_13

    .line 978
    .line 979
    move-object v8, v3

    .line 980
    new-instance v3, Ljava/io/FileOutputStream;

    .line 981
    .line 982
    move-object/from16 v9, p2

    .line 983
    .line 984
    invoke-direct {v3, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 985
    .line 986
    .line 987
    const/16 v11, 0x20

    .line 988
    .line 989
    const/4 v12, 0x0

    .line 990
    const-wide/16 v9, 0x0

    .line 991
    .line 992
    move-object v13, v8

    .line 993
    move-object/from16 v8, p3

    .line 994
    .line 995
    :try_start_8
    invoke-static/range {v1 .. v12}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterDownloadKt;->copyStream$default(Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;Ljava/io/InputStream;Ljava/io/OutputStream;JJLkotlin/jvm/functions/Function1;JILjava/lang/Object;)J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 996
    .line 997
    .line 998
    const/4 v1, 0x0

    .line 999
    :try_start_9
    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 1000
    .line 1001
    .line 1002
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1003
    .line 1004
    .line 1005
    const/16 v0, 0x64

    .line 1006
    .line 1007
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v0

    .line 1011
    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1015
    .line 1016
    .line 1017
    return-void

    .line 1018
    :catchall_4
    move-exception v0

    .line 1019
    move-object v1, v0

    .line 1020
    goto :goto_e

    .line 1021
    :catchall_5
    move-exception v0

    .line 1022
    move-object v1, v0

    .line 1023
    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 1024
    :catchall_6
    move-exception v0

    .line 1025
    :try_start_b
    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1026
    .line 1027
    .line 1028
    throw v0

    .line 1029
    :cond_13
    move-object v13, v3

    .line 1030
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1031
    .line 1032
    .line 1033
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1034
    .line 1035
    const-string v1, "GoFile: Server did not return a ZIP archive."

    .line 1036
    .line 1037
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1038
    .line 1039
    .line 1040
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 1041
    :goto_e
    :try_start_c
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 1042
    :catchall_7
    move-exception v0

    .line 1043
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1044
    .line 1045
    .line 1046
    throw v0

    .line 1047
    :cond_14
    move-object v13, v2

    .line 1048
    invoke-virtual {v13}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v0

    .line 1052
    move-object/from16 v1, v20

    .line 1053
    .line 1054
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1055
    .line 1056
    .line 1057
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1058
    .line 1059
    new-instance v2, Ljava/io/InputStreamReader;

    .line 1060
    .line 1061
    invoke-direct {v2, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 1062
    .line 1063
    .line 1064
    new-instance v1, Ljava/io/BufferedReader;

    .line 1065
    .line 1066
    const/16 v3, 0x2000

    .line 1067
    .line 1068
    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 1069
    .line 1070
    .line 1071
    :try_start_d
    invoke-static {v1}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v0

    .line 1075
    const/16 v2, 0x258

    .line 1076
    .line 1077
    invoke-static {v0, v2}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 1081
    const/4 v3, 0x0

    .line 1082
    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1083
    .line 1084
    .line 1085
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1086
    .line 1087
    .line 1088
    const-string v1, "\n"

    .line 1089
    .line 1090
    move-object/from16 v2, v17

    .line 1091
    .line 1092
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v0

    .line 1096
    const-string v1, "\r"

    .line 1097
    .line 1098
    move-object/from16 v2, v18

    .line 1099
    .line 1100
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v0

    .line 1104
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1105
    .line 1106
    const-string v2, "GoFile direct returned HTML: "

    .line 1107
    .line 1108
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1109
    .line 1110
    .line 1111
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    .line 1113
    .line 1114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v0

    .line 1118
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    .line 1120
    .line 1121
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1122
    .line 1123
    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1124
    .line 1125
    .line 1126
    throw v0

    .line 1127
    :catchall_8
    move-exception v0

    .line 1128
    move-object v2, v0

    .line 1129
    :try_start_e
    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 1130
    :catchall_9
    move-exception v0

    .line 1131
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1132
    .line 1133
    .line 1134
    throw v0

    .line 1135
    :cond_15
    move-object v13, v2

    .line 1136
    move-object/from16 v2, v18

    .line 1137
    .line 1138
    :try_start_f
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 1139
    .line 1140
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v0

    .line 1144
    if-nez v0, :cond_16

    .line 1145
    .line 1146
    invoke-virtual {v13}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v0

    .line 1150
    goto :goto_f

    .line 1151
    :catchall_a
    move-exception v0

    .line 1152
    const/4 v10, 0x0

    .line 1153
    goto :goto_11

    .line 1154
    :cond_16
    :goto_f
    if-eqz v0, :cond_17

    .line 1155
    .line 1156
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1157
    .line 1158
    new-instance v5, Ljava/io/InputStreamReader;

    .line 1159
    .line 1160
    invoke-direct {v5, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 1161
    .line 1162
    .line 1163
    new-instance v1, Ljava/io/BufferedReader;

    .line 1164
    .line 1165
    const/16 v6, 0x2000

    .line 1166
    .line 1167
    invoke-direct {v1, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    .line 1168
    .line 1169
    .line 1170
    :try_start_10
    invoke-static {v1}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v0

    .line 1174
    const/16 v5, 0x190

    .line 1175
    .line 1176
    invoke-static {v0, v5}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v9
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    .line 1180
    const/4 v10, 0x0

    .line 1181
    :try_start_11
    invoke-static {v1, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    .line 1182
    .line 1183
    .line 1184
    goto :goto_10

    .line 1185
    :catchall_b
    move-exception v0

    .line 1186
    goto :goto_11

    .line 1187
    :catchall_c
    move-exception v0

    .line 1188
    const/4 v10, 0x0

    .line 1189
    move-object v5, v0

    .line 1190
    :try_start_12
    throw v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_d

    .line 1191
    :catchall_d
    move-exception v0

    .line 1192
    :try_start_13
    invoke-static {v1, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1193
    .line 1194
    .line 1195
    throw v0

    .line 1196
    :cond_17
    const/4 v10, 0x0

    .line 1197
    move-object v9, v10

    .line 1198
    :goto_10
    invoke-static {v9}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    .line 1202
    goto :goto_12

    .line 1203
    :goto_11
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 1204
    .line 1205
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v0

    .line 1209
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v0

    .line 1213
    :goto_12
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 1214
    .line 1215
    .line 1216
    move-result v1

    .line 1217
    if-eqz v1, :cond_18

    .line 1218
    .line 1219
    move-object v0, v10

    .line 1220
    :cond_18
    check-cast v0, Ljava/lang/String;

    .line 1221
    .line 1222
    if-nez v0, :cond_19

    .line 1223
    .line 1224
    move-object v5, v2

    .line 1225
    goto :goto_13

    .line 1226
    :cond_19
    move-object v5, v0

    .line 1227
    :goto_13
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1228
    .line 1229
    .line 1230
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1231
    .line 1232
    const-string v1, "GoFile "

    .line 1233
    .line 1234
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1235
    .line 1236
    .line 1237
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1238
    .line 1239
    .line 1240
    const-string v1, " body: "

    .line 1241
    .line 1242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    .line 1244
    .line 1245
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    .line 1247
    .line 1248
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v0

    .line 1252
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    .line 1254
    .line 1255
    const/16 v0, 0x1ad

    .line 1256
    .line 1257
    if-eq v3, v0, :cond_1b

    .line 1258
    .line 1259
    const-string v0, "traffic limit"

    .line 1260
    .line 1261
    invoke-static {v5, v0}, Lkotlin/text/StringsKt;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 1262
    .line 1263
    .line 1264
    move-result v0

    .line 1265
    if-nez v0, :cond_1b

    .line 1266
    .line 1267
    const-string v0, "limit exceeded"

    .line 1268
    .line 1269
    invoke-static {v5, v0}, Lkotlin/text/StringsKt;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 1270
    .line 1271
    .line 1272
    move-result v0

    .line 1273
    if-eqz v0, :cond_1a

    .line 1274
    .line 1275
    goto :goto_14

    .line 1276
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1277
    .line 1278
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1279
    .line 1280
    const-string v2, "GoFile: HTTP "

    .line 1281
    .line 1282
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1283
    .line 1284
    .line 1285
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1286
    .line 1287
    .line 1288
    const-string v2, " \u2014 "

    .line 1289
    .line 1290
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1291
    .line 1292
    .line 1293
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1294
    .line 1295
    .line 1296
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1297
    .line 1298
    .line 1299
    move-result-object v1

    .line 1300
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1301
    .line 1302
    .line 1303
    throw v0

    .line 1304
    :cond_1b
    :goto_14
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1305
    .line 1306
    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1307
    .line 1308
    .line 1309
    throw v0

    .line 1310
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1311
    .line 1312
    const-string v1, "GoFile: failed to obtain guest token"

    .line 1313
    .line 1314
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1315
    .line 1316
    .line 1317
    throw v0

    .line 1318
    :catchall_e
    move-exception v0

    .line 1319
    move-object v1, v0

    .line 1320
    :try_start_14
    throw v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_f

    .line 1321
    :catchall_f
    move-exception v0

    .line 1322
    invoke-static {v11, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1323
    .line 1324
    .line 1325
    throw v0
.end method

.method public static final downloadPixeldrainFilesystemZip(Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;Ljava/lang/String;Ljava/io/File;Lkotlin/jvm/functions/Function1;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v8, p3

    .line 8
    .line 9
    const-string v0, "<this>"

    .line 10
    .line 11
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "filePath"

    .line 15
    .line 16
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "archiveFile"

    .line 20
    .line 21
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v0, "onProgress"

    .line 25
    .line 26
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v4, "https://pixeldrain.com/api/filesystem/"

    .line 32
    .line 33
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v4, "?download"

    .line 37
    .line 38
    invoke-static {v0, v2, v4}, Lkotlin/collections/unsigned/a;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v5, "Pixeldrain filesystem filePath="

    .line 45
    .line 46
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v5, " \u2192 "

    .line 53
    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    const-string v5, "MinHub-DL"

    .line 65
    .line 66
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lcom/minhub/gamehub/NativeKeys;->pixeldrainKey()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    new-instance v6, Ljava/net/URL;

    .line 74
    .line 75
    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v6, "null cannot be cast to non-null type java.net.HttpURLConnection"

    .line 83
    .line 84
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    move-object v13, v0

    .line 88
    check-cast v13, Ljava/net/HttpURLConnection;

    .line 89
    .line 90
    const/16 v0, 0x3a98

    .line 91
    .line 92
    invoke-virtual {v13, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 93
    .line 94
    .line 95
    const v0, 0x1d4c0

    .line 96
    .line 97
    .line 98
    invoke-virtual {v13, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 99
    .line 100
    .line 101
    const-string v0, "GET"

    .line 102
    .line 103
    invoke-virtual {v13, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const/4 v6, 0x1

    .line 107
    invoke-virtual {v13, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 108
    .line 109
    .line 110
    const-string v0, "Accept-Encoding"

    .line 111
    .line 112
    const-string v7, "identity"

    .line 113
    .line 114
    invoke-virtual {v13, v0, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const-string v0, "User-Agent"

    .line 118
    .line 119
    const-string v7, "Mozilla/5.0 (Linux; Android 10) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36"

    .line 120
    .line 121
    invoke-virtual {v13, v0, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    const/4 v7, 0x2

    .line 129
    if-nez v0, :cond_0

    .line 130
    .line 131
    const-string v0, ":"

    .line 132
    .line 133
    invoke-static {v0, v4}, Lkotlin/collections/unsigned/a;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 138
    .line 139
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    const-string v4, "getBytes(...)"

    .line 144
    .line 145
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-static {v0, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    new-instance v4, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    const-string v9, "Basic "

    .line 155
    .line 156
    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    const-string v4, "Authorization"

    .line 167
    .line 168
    invoke-virtual {v13, v4, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    const-string v0, "Pixeldrain filesystem using API key auth"

    .line 172
    .line 173
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    :cond_0
    invoke-virtual {v13}, Ljava/net/URLConnection;->connect()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    invoke-virtual {v13}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    const-string v9, ""

    .line 188
    .line 189
    if-nez v0, :cond_1

    .line 190
    .line 191
    move-object v0, v9

    .line 192
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    const-string v11, "Pixeldrain filesystem code="

    .line 195
    .line 196
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v11, " type="

    .line 203
    .line 204
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v10

    .line 214
    invoke-static {v5, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    const/16 v10, 0x12c

    .line 218
    .line 219
    const/16 v11, 0xc8

    .line 220
    .line 221
    const/4 v14, 0x0

    .line 222
    if-gt v11, v4, :cond_6

    .line 223
    .line 224
    if-ge v4, v10, :cond_6

    .line 225
    .line 226
    const-string v12, "application/json"

    .line 227
    .line 228
    invoke-static {v0, v12}, Lkotlin/text/StringsKt;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-nez v0, :cond_6

    .line 233
    .line 234
    invoke-virtual {v13}, Ljava/net/URLConnection;->getContentLengthLong()J

    .line 235
    .line 236
    .line 237
    move-result-wide v4

    .line 238
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    const-wide/16 v6, 0x0

    .line 243
    .line 244
    cmp-long v2, v4, v6

    .line 245
    .line 246
    if-lez v2, :cond_2

    .line 247
    .line 248
    goto :goto_0

    .line 249
    :cond_2
    move-object v0, v14

    .line 250
    :goto_0
    if-eqz v0, :cond_3

    .line 251
    .line 252
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 253
    .line 254
    .line 255
    move-result-wide v4

    .line 256
    goto :goto_1

    .line 257
    :cond_3
    const-wide/16 v4, -0x1

    .line 258
    .line 259
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    if-eqz v0, :cond_4

    .line 264
    .line 265
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 266
    .line 267
    .line 268
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 269
    .line 270
    .line 271
    move-result-wide v6

    .line 272
    new-instance v2, Ljava/io/BufferedInputStream;

    .line 273
    .line 274
    invoke-virtual {v13}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 279
    .line 280
    .line 281
    :try_start_0
    invoke-static {v2}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterDownloadKt;->looksLikeZipStream(Ljava/io/BufferedInputStream;)Z

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    if-eqz v0, :cond_5

    .line 286
    .line 287
    new-instance v9, Ljava/io/FileOutputStream;

    .line 288
    .line 289
    invoke-direct {v9, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    .line 291
    .line 292
    const/16 v11, 0x20

    .line 293
    .line 294
    const/4 v12, 0x0

    .line 295
    move-object v3, v9

    .line 296
    const-wide/16 v9, 0x0

    .line 297
    .line 298
    :try_start_1
    invoke-static/range {v1 .. v12}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterDownloadKt;->copyStream$default(Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;Ljava/io/InputStream;Ljava/io/OutputStream;JJLkotlin/jvm/functions/Function1;JILjava/lang/Object;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 299
    .line 300
    .line 301
    :try_start_2
    invoke-static {v3, v14}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 302
    .line 303
    .line 304
    invoke-static {v2, v14}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 305
    .line 306
    .line 307
    const/16 v0, 0x64

    .line 308
    .line 309
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 317
    .line 318
    .line 319
    return-void

    .line 320
    :catchall_0
    move-exception v0

    .line 321
    move-object v1, v0

    .line 322
    goto :goto_2

    .line 323
    :catchall_1
    move-exception v0

    .line 324
    move-object v1, v0

    .line 325
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 326
    :catchall_2
    move-exception v0

    .line 327
    :try_start_4
    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 328
    .line 329
    .line 330
    throw v0

    .line 331
    :cond_5
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 332
    .line 333
    .line 334
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 335
    .line 336
    const-string v1, "Pixeldrain: Server did not return a ZIP archive."

    .line 337
    .line 338
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 342
    :goto_2
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 343
    :catchall_3
    move-exception v0

    .line 344
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 345
    .line 346
    .line 347
    throw v0

    .line 348
    :cond_6
    :try_start_6
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 349
    .line 350
    if-gt v11, v4, :cond_7

    .line 351
    .line 352
    if-ge v4, v10, :cond_7

    .line 353
    .line 354
    invoke-virtual {v13}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    goto :goto_3

    .line 359
    :catchall_4
    move-exception v0

    .line 360
    goto :goto_5

    .line 361
    :cond_7
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    :goto_3
    if-eqz v0, :cond_8

    .line 366
    .line 367
    sget-object v12, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 368
    .line 369
    new-instance v15, Ljava/io/InputStreamReader;

    .line 370
    .line 371
    invoke-direct {v15, v0, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 372
    .line 373
    .line 374
    new-instance v12, Ljava/io/BufferedReader;

    .line 375
    .line 376
    const/16 v0, 0x2000

    .line 377
    .line 378
    invoke-direct {v12, v15, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 379
    .line 380
    .line 381
    :try_start_7
    invoke-static {v12}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 385
    :try_start_8
    invoke-static {v12, v14}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 386
    .line 387
    .line 388
    goto :goto_4

    .line 389
    :catchall_5
    move-exception v0

    .line 390
    move-object v15, v0

    .line 391
    :try_start_9
    throw v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 392
    :catchall_6
    move-exception v0

    .line 393
    :try_start_a
    invoke-static {v12, v15}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 394
    .line 395
    .line 396
    throw v0

    .line 397
    :cond_8
    move-object v0, v14

    .line 398
    :goto_4
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 402
    goto :goto_6

    .line 403
    :goto_5
    sget-object v12, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 404
    .line 405
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    :goto_6
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    move-result v12

    .line 417
    if-eqz v12, :cond_9

    .line 418
    .line 419
    move-object v0, v14

    .line 420
    :cond_9
    check-cast v0, Ljava/lang/String;

    .line 421
    .line 422
    if-nez v0, :cond_a

    .line 423
    .line 424
    move-object v0, v9

    .line 425
    :cond_a
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 426
    .line 427
    .line 428
    invoke-static {v0, v10}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v10

    .line 432
    new-instance v12, Ljava/lang/StringBuilder;

    .line 433
    .line 434
    const-string v13, "Pixeldrain filesystem non-file response code="

    .line 435
    .line 436
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    const-string v13, " body="

    .line 443
    .line 444
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v10

    .line 454
    invoke-static {v5, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    .line 456
    .line 457
    new-instance v10, Lkotlin/text/Regex;

    .line 458
    .line 459
    const-string v12, "\"value\"\\s*:\\s*\"([^\"]+)\""

    .line 460
    .line 461
    invoke-direct {v10, v12}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    const/4 v12, 0x0

    .line 465
    invoke-static {v10, v0, v12, v7, v14}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    .line 466
    .line 467
    .line 468
    move-result-object v7

    .line 469
    if-eqz v7, :cond_b

    .line 470
    .line 471
    invoke-interface {v7}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    .line 472
    .line 473
    .line 474
    move-result-object v7

    .line 475
    if-eqz v7, :cond_b

    .line 476
    .line 477
    invoke-static {v7, v6}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v6

    .line 481
    move-object v14, v6

    .line 482
    check-cast v14, Ljava/lang/String;

    .line 483
    .line 484
    :cond_b
    if-nez v14, :cond_c

    .line 485
    .line 486
    goto :goto_7

    .line 487
    :cond_c
    move-object v9, v14

    .line 488
    :goto_7
    const-string v6, "bandwidth"

    .line 489
    .line 490
    invoke-static {v9, v6}, Lkotlin/text/StringsKt;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 491
    .line 492
    .line 493
    move-result v6

    .line 494
    if-nez v6, :cond_10

    .line 495
    .line 496
    const-string v6, "file_rate_limited"

    .line 497
    .line 498
    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 499
    .line 500
    .line 501
    move-result v6

    .line 502
    if-nez v6, :cond_10

    .line 503
    .line 504
    const/16 v6, 0x191

    .line 505
    .line 506
    if-eq v4, v6, :cond_e

    .line 507
    .line 508
    const/16 v6, 0x193

    .line 509
    .line 510
    if-ne v4, v6, :cond_d

    .line 511
    .line 512
    goto :goto_8

    .line 513
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 514
    .line 515
    invoke-static {v0, v11}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    new-instance v2, Ljava/lang/StringBuilder;

    .line 520
    .line 521
    const-string v3, "Pixeldrain filesystem: HTTP "

    .line 522
    .line 523
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    const-string v3, " \u2014 "

    .line 530
    .line 531
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    throw v1

    .line 545
    :cond_e
    :goto_8
    const-string v0, "https://pixeldrain.com/d/"

    .line 546
    .line 547
    invoke-static {v0, v2}, Lkotlin/collections/unsigned/a;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    invoke-static {v0}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterDownloadKt;->pixeldrainFileIdFromPage(Ljava/lang/String;)Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    if-eqz v0, :cond_f

    .line 556
    .line 557
    new-instance v2, Ljava/lang/StringBuilder;

    .line 558
    .line 559
    const-string v4, "Pixeldrain filesystem resolved fileId="

    .line 560
    .line 561
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    const-string v4, " from page"

    .line 568
    .line 569
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v2

    .line 576
    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    .line 578
    .line 579
    invoke-static {v1, v0, v3, v8}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterDownloadKt;->downloadPixeldrainZip(Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;Ljava/lang/String;Ljava/io/File;Lkotlin/jvm/functions/Function1;)V

    .line 580
    .line 581
    .line 582
    return-void

    .line 583
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 584
    .line 585
    const-string v1, "Pixeldrain: this link requires authentication (HTTP "

    .line 586
    .line 587
    const-string v2, "). Share the file via a public link (pixeldrain.com/u/...) instead."

    .line 588
    .line 589
    invoke-static {v4, v1, v2}, LE/b;->j(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v1

    .line 593
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    throw v0

    .line 597
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 598
    .line 599
    const-string v1, "Pixeldrain bandwidth quota exceeded (6 GB/week). Try again later or use a different link."

    .line 600
    .line 601
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    throw v0
.end method

.method public static final downloadPixeldrainZip(Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;Ljava/lang/String;Ljava/io/File;Lkotlin/jvm/functions/Function1;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v8, p3

    .line 6
    .line 7
    const-string v0, "<this>"

    .line 8
    .line 9
    move-object/from16 v3, p0

    .line 10
    .line 11
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "fileId"

    .line 15
    .line 16
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "archiveFile"

    .line 20
    .line 21
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v0, "onProgress"

    .line 25
    .line 26
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v4, "Pixeldrain fileId="

    .line 32
    .line 33
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v4, "MinHub-DL"

    .line 44
    .line 45
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    new-instance v0, Ljava/net/URL;

    .line 49
    .line 50
    const-string v5, "/info"

    .line 51
    .line 52
    const-string v6, "https://pixeldrain.com/api/file/"

    .line 53
    .line 54
    invoke-static {v6, v1, v5}, LE/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v5, "null cannot be cast to non-null type java.net.HttpURLConnection"

    .line 66
    .line 67
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    move-object v7, v0

    .line 71
    check-cast v7, Ljava/net/HttpURLConnection;

    .line 72
    .line 73
    const/16 v9, 0x3a98

    .line 74
    .line 75
    invoke-virtual {v7, v9}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v7, v9}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 79
    .line 80
    .line 81
    const-string v10, "GET"

    .line 82
    .line 83
    invoke-virtual {v7, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string v11, "Accept-Encoding"

    .line 87
    .line 88
    const-string v12, "identity"

    .line 89
    .line 90
    invoke-virtual {v7, v11, v12}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string v13, "User-Agent"

    .line 94
    .line 95
    const-string v14, "Mozilla/5.0 (Linux; Android 10) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36"

    .line 96
    .line 97
    invoke-virtual {v7, v13, v14}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 101
    .line 102
    .line 103
    move-result v15

    .line 104
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 105
    .line 106
    const/16 v9, 0xc8

    .line 107
    .line 108
    if-gt v9, v15, :cond_0

    .line 109
    .line 110
    const/16 v9, 0x12c

    .line 111
    .line 112
    if-ge v15, v9, :cond_0

    .line 113
    .line 114
    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    .line 120
    move-object/from16 v16, v7

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_0
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    :goto_0
    if-eqz v0, :cond_1

    .line 128
    .line 129
    sget-object v9, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 130
    .line 131
    new-instance v3, Ljava/io/InputStreamReader;

    .line 132
    .line 133
    invoke-direct {v3, v0, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 134
    .line 135
    .line 136
    new-instance v9, Ljava/io/BufferedReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .line 138
    move-object/from16 v16, v7

    .line 139
    .line 140
    const/16 v7, 0x2000

    .line 141
    .line 142
    :try_start_1
    invoke-direct {v9, v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 143
    .line 144
    .line 145
    :try_start_2
    invoke-static {v9}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 149
    const/4 v3, 0x0

    .line 150
    :try_start_3
    invoke-static {v9, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :catchall_1
    move-exception v0

    .line 155
    goto :goto_3

    .line 156
    :catchall_2
    move-exception v0

    .line 157
    move-object v3, v0

    .line 158
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 159
    :catchall_3
    move-exception v0

    .line 160
    :try_start_5
    invoke-static {v9, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 161
    .line 162
    .line 163
    throw v0

    .line 164
    :cond_1
    move-object/from16 v16, v7

    .line 165
    .line 166
    const/4 v0, 0x0

    .line 167
    :goto_1
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 171
    :goto_2
    move-object v3, v0

    .line 172
    goto :goto_4

    .line 173
    :goto_3
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 174
    .line 175
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    goto :goto_2

    .line 184
    :goto_4
    invoke-static {v3}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_2

    .line 189
    .line 190
    const/4 v3, 0x0

    .line 191
    :cond_2
    check-cast v3, Ljava/lang/String;

    .line 192
    .line 193
    const-string v7, ""

    .line 194
    .line 195
    if-nez v3, :cond_3

    .line 196
    .line 197
    move-object v3, v7

    .line 198
    :cond_3
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 199
    .line 200
    .line 201
    const/16 v9, 0xc8

    .line 202
    .line 203
    invoke-static {v3, v9}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    new-instance v9, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    move-object/from16 v16, v7

    .line 210
    .line 211
    const-string v7, "Pixeldrain info code="

    .line 212
    .line 213
    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    const-string v7, " body="

    .line 220
    .line 221
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    invoke-static {v3}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterDownloadKt;->downloadPixeldrainZip$parseErrValue(Ljava/lang/String;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    const/16 v7, 0x1ad

    .line 239
    .line 240
    if-eq v15, v7, :cond_17

    .line 241
    .line 242
    const-string v9, "bandwidth"

    .line 243
    .line 244
    invoke-static {v0, v9}, Lkotlin/text/StringsKt;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 245
    .line 246
    .line 247
    move-result v17

    .line 248
    if-nez v17, :cond_17

    .line 249
    .line 250
    const-string v7, "file_rate_limited"

    .line 251
    .line 252
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v18

    .line 256
    if-nez v18, :cond_17

    .line 257
    .line 258
    const/16 v8, 0x194

    .line 259
    .line 260
    move-object/from16 v18, v7

    .line 261
    .line 262
    const-string v7, ")."

    .line 263
    .line 264
    if-eq v15, v8, :cond_16

    .line 265
    .line 266
    const-string v8, "not_found"

    .line 267
    .line 268
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v19

    .line 272
    if-nez v19, :cond_16

    .line 273
    .line 274
    move-object/from16 v19, v7

    .line 275
    .line 276
    const-string v7, " \u2014 "

    .line 277
    .line 278
    move-object/from16 v20, v7

    .line 279
    .line 280
    const/16 v7, 0xc8

    .line 281
    .line 282
    if-gt v7, v15, :cond_15

    .line 283
    .line 284
    const/16 v7, 0x12c

    .line 285
    .line 286
    if-ge v15, v7, :cond_15

    .line 287
    .line 288
    new-instance v0, Lkotlin/text/Regex;

    .line 289
    .line 290
    const-string v7, "\"size\"\\s*:\\s*(\\d+)"

    .line 291
    .line 292
    invoke-direct {v0, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    const/4 v7, 0x0

    .line 296
    const/4 v15, 0x2

    .line 297
    move-object/from16 v21, v8

    .line 298
    .line 299
    const/4 v8, 0x0

    .line 300
    invoke-static {v0, v3, v7, v15, v8}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    const/4 v3, 0x1

    .line 305
    if-eqz v0, :cond_4

    .line 306
    .line 307
    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    if-eqz v0, :cond_4

    .line 312
    .line 313
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    check-cast v0, Ljava/lang/String;

    .line 318
    .line 319
    if-eqz v0, :cond_4

    .line 320
    .line 321
    invoke-static {v0}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    if-eqz v0, :cond_4

    .line 326
    .line 327
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 328
    .line 329
    .line 330
    move-result-wide v22

    .line 331
    goto :goto_5

    .line 332
    :cond_4
    const-wide/16 v22, -0x1

    .line 333
    .line 334
    :goto_5
    const-wide/16 v24, 0x0

    .line 335
    .line 336
    cmp-long v0, v22, v24

    .line 337
    .line 338
    const-string v7, "unknown"

    .line 339
    .line 340
    const-string v15, " MB"

    .line 341
    .line 342
    const/16 v8, 0x400

    .line 343
    .line 344
    move-object/from16 v26, v4

    .line 345
    .line 346
    if-lez v0, :cond_5

    .line 347
    .line 348
    int-to-long v3, v8

    .line 349
    div-long v27, v22, v3

    .line 350
    .line 351
    div-long v3, v27, v3

    .line 352
    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    goto :goto_6

    .line 369
    :cond_5
    move-object v0, v7

    .line 370
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 371
    .line 372
    const-string v4, "Pixeldrain reported size="

    .line 373
    .line 374
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    move-object/from16 v3, v26

    .line 385
    .line 386
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    .line 388
    .line 389
    new-instance v0, Ljava/net/URL;

    .line 390
    .line 391
    invoke-static {v6, v1}, Lkotlin/collections/unsigned/a;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    move-object v1, v0

    .line 406
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 407
    .line 408
    const/16 v4, 0x3a98

    .line 409
    .line 410
    invoke-virtual {v1, v4}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 411
    .line 412
    .line 413
    const v0, 0x1d4c0

    .line 414
    .line 415
    .line 416
    invoke-virtual {v1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    const/4 v0, 0x1

    .line 423
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v1, v11, v12}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v1, v13, v14}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 436
    .line 437
    .line 438
    move-result v4

    .line 439
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    if-nez v0, :cond_6

    .line 444
    .line 445
    move-object/from16 v0, v16

    .line 446
    .line 447
    :cond_6
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLengthLong()J

    .line 448
    .line 449
    .line 450
    move-result-wide v5

    .line 451
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 452
    .line 453
    .line 454
    move-result-object v10

    .line 455
    cmp-long v5, v5, v24

    .line 456
    .line 457
    if-lez v5, :cond_7

    .line 458
    .line 459
    goto :goto_7

    .line 460
    :cond_7
    const/4 v10, 0x0

    .line 461
    :goto_7
    if-eqz v10, :cond_8

    .line 462
    .line 463
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 464
    .line 465
    .line 466
    move-result-wide v22

    .line 467
    :cond_8
    cmp-long v5, v22, v24

    .line 468
    .line 469
    if-lez v5, :cond_9

    .line 470
    .line 471
    int-to-long v5, v8

    .line 472
    div-long v7, v22, v5

    .line 473
    .line 474
    div-long/2addr v7, v5

    .line 475
    new-instance v5, Ljava/lang/StringBuilder;

    .line 476
    .line 477
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v7

    .line 490
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    .line 491
    .line 492
    const-string v6, "Pixeldrain GET code="

    .line 493
    .line 494
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    const-string v6, " type="

    .line 501
    .line 502
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    const-string v6, " size="

    .line 509
    .line 510
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v5

    .line 520
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    .line 522
    .line 523
    const/16 v3, 0x1ad

    .line 524
    .line 525
    if-eq v4, v3, :cond_14

    .line 526
    .line 527
    const/16 v7, 0xc8

    .line 528
    .line 529
    if-gt v7, v4, :cond_a

    .line 530
    .line 531
    const/16 v7, 0x12c

    .line 532
    .line 533
    if-ge v4, v7, :cond_a

    .line 534
    .line 535
    const-string v3, "application/json"

    .line 536
    .line 537
    invoke-static {v0, v3}, Lkotlin/text/StringsKt;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 538
    .line 539
    .line 540
    move-result v0

    .line 541
    if-eqz v0, :cond_b

    .line 542
    .line 543
    :cond_a
    move-object v14, v1

    .line 544
    const/4 v13, 0x0

    .line 545
    goto/16 :goto_a

    .line 546
    .line 547
    :cond_b
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    if-eqz v0, :cond_c

    .line 552
    .line 553
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 554
    .line 555
    .line 556
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 557
    .line 558
    .line 559
    move-result-wide v6

    .line 560
    new-instance v3, Ljava/io/BufferedInputStream;

    .line 561
    .line 562
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 567
    .line 568
    .line 569
    :try_start_6
    invoke-static {v3}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterDownloadKt;->looksLikeZipStream(Ljava/io/BufferedInputStream;)Z

    .line 570
    .line 571
    .line 572
    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    .line 573
    if-eqz v0, :cond_d

    .line 574
    .line 575
    move-object v4, v3

    .line 576
    :try_start_7
    new-instance v3, Ljava/io/FileOutputStream;

    .line 577
    .line 578
    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 579
    .line 580
    .line 581
    const/16 v11, 0x20

    .line 582
    .line 583
    const/4 v12, 0x0

    .line 584
    const-wide/16 v9, 0x0

    .line 585
    .line 586
    const/4 v13, 0x0

    .line 587
    move-object/from16 v8, p3

    .line 588
    .line 589
    move-object v14, v1

    .line 590
    move-object v2, v4

    .line 591
    move-wide/from16 v4, v22

    .line 592
    .line 593
    move-object/from16 v1, p0

    .line 594
    .line 595
    :try_start_8
    invoke-static/range {v1 .. v12}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterDownloadKt;->copyStream$default(Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;Ljava/io/InputStream;Ljava/io/OutputStream;JJLkotlin/jvm/functions/Function1;JILjava/lang/Object;)J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 596
    .line 597
    .line 598
    :try_start_9
    invoke-static {v3, v13}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 599
    .line 600
    .line 601
    invoke-static {v2, v13}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 602
    .line 603
    .line 604
    const/16 v0, 0x64

    .line 605
    .line 606
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 614
    .line 615
    .line 616
    return-void

    .line 617
    :catchall_4
    move-exception v0

    .line 618
    :goto_8
    move-object v1, v0

    .line 619
    goto :goto_9

    .line 620
    :catchall_5
    move-exception v0

    .line 621
    move-object v1, v0

    .line 622
    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 623
    :catchall_6
    move-exception v0

    .line 624
    :try_start_b
    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 625
    .line 626
    .line 627
    throw v0

    .line 628
    :catchall_7
    move-exception v0

    .line 629
    move-object v2, v4

    .line 630
    goto :goto_8

    .line 631
    :cond_d
    move-object v14, v1

    .line 632
    move-object v2, v3

    .line 633
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 634
    .line 635
    .line 636
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 637
    .line 638
    const-string v1, "Pixeldrain: Server did not return a ZIP archive."

    .line 639
    .line 640
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 644
    :catchall_8
    move-exception v0

    .line 645
    move-object v2, v3

    .line 646
    goto :goto_8

    .line 647
    :goto_9
    :try_start_c
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    .line 648
    :catchall_9
    move-exception v0

    .line 649
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 650
    .line 651
    .line 652
    throw v0

    .line 653
    :goto_a
    :try_start_d
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    if-nez v0, :cond_e

    .line 658
    .line 659
    invoke-virtual {v14}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    goto :goto_b

    .line 664
    :catchall_a
    move-exception v0

    .line 665
    goto :goto_d

    .line 666
    :cond_e
    :goto_b
    if-eqz v0, :cond_f

    .line 667
    .line 668
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 669
    .line 670
    new-instance v2, Ljava/io/InputStreamReader;

    .line 671
    .line 672
    invoke-direct {v2, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 673
    .line 674
    .line 675
    new-instance v1, Ljava/io/BufferedReader;

    .line 676
    .line 677
    const/16 v7, 0x2000

    .line 678
    .line 679
    invoke-direct {v1, v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    .line 680
    .line 681
    .line 682
    :try_start_e
    invoke-static {v1}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    const/16 v7, 0x12c

    .line 687
    .line 688
    invoke-static {v0, v7}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    .line 692
    :try_start_f
    invoke-static {v1, v13}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    .line 693
    .line 694
    .line 695
    goto :goto_c

    .line 696
    :catchall_b
    move-exception v0

    .line 697
    move-object v2, v0

    .line 698
    :try_start_10
    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    .line 699
    :catchall_c
    move-exception v0

    .line 700
    :try_start_11
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 701
    .line 702
    .line 703
    throw v0

    .line 704
    :cond_f
    move-object v0, v13

    .line 705
    :goto_c
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    .line 707
    .line 708
    move-result-object v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    .line 709
    goto :goto_e

    .line 710
    :goto_d
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 711
    .line 712
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 713
    .line 714
    .line 715
    move-result-object v0

    .line 716
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    move-result-object v0

    .line 720
    :goto_e
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 721
    .line 722
    .line 723
    move-result v1

    .line 724
    if-eqz v1, :cond_10

    .line 725
    .line 726
    goto :goto_f

    .line 727
    :cond_10
    move-object v13, v0

    .line 728
    :goto_f
    check-cast v13, Ljava/lang/String;

    .line 729
    .line 730
    if-nez v13, :cond_11

    .line 731
    .line 732
    move-object/from16 v7, v16

    .line 733
    .line 734
    goto :goto_10

    .line 735
    :cond_11
    move-object v7, v13

    .line 736
    :goto_10
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 737
    .line 738
    .line 739
    invoke-static {v7}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterDownloadKt;->downloadPixeldrainZip$parseErrValue(Ljava/lang/String;)Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object v0

    .line 743
    invoke-static {v0, v9}, Lkotlin/text/StringsKt;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 744
    .line 745
    .line 746
    move-result v1

    .line 747
    if-nez v1, :cond_13

    .line 748
    .line 749
    move-object/from16 v1, v18

    .line 750
    .line 751
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 752
    .line 753
    .line 754
    move-result v1

    .line 755
    if-nez v1, :cond_13

    .line 756
    .line 757
    move-object/from16 v1, v21

    .line 758
    .line 759
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 760
    .line 761
    .line 762
    move-result v0

    .line 763
    if-eqz v0, :cond_12

    .line 764
    .line 765
    const-string v0, "File not found or has been deleted."

    .line 766
    .line 767
    goto :goto_11

    .line 768
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 769
    .line 770
    const-string v1, "HTTP "

    .line 771
    .line 772
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 773
    .line 774
    .line 775
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 776
    .line 777
    .line 778
    move-object/from16 v1, v20

    .line 779
    .line 780
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    .line 782
    .line 783
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    .line 785
    .line 786
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 787
    .line 788
    .line 789
    move-result-object v0

    .line 790
    goto :goto_11

    .line 791
    :cond_13
    invoke-static {}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterDownloadKt;->downloadPixeldrainZip$bandwidthMessage()Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v0

    .line 795
    :goto_11
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 796
    .line 797
    const-string v2, "Pixeldrain: "

    .line 798
    .line 799
    invoke-static {v2, v0}, Lkotlin/collections/unsigned/a;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 800
    .line 801
    .line 802
    move-result-object v0

    .line 803
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 804
    .line 805
    .line 806
    throw v1

    .line 807
    :cond_14
    move-object v14, v1

    .line 808
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 809
    .line 810
    .line 811
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 812
    .line 813
    invoke-static {}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterDownloadKt;->downloadPixeldrainZip$bandwidthMessage()Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v1

    .line 817
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 818
    .line 819
    .line 820
    throw v0

    .line 821
    :cond_15
    move-object/from16 v1, v20

    .line 822
    .line 823
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 824
    .line 825
    new-instance v3, Ljava/lang/StringBuilder;

    .line 826
    .line 827
    const-string v4, "Pixeldrain: file info check failed (HTTP "

    .line 828
    .line 829
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 830
    .line 831
    .line 832
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 833
    .line 834
    .line 835
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    .line 837
    .line 838
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    .line 840
    .line 841
    move-object/from16 v0, v19

    .line 842
    .line 843
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    .line 845
    .line 846
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 847
    .line 848
    .line 849
    move-result-object v0

    .line 850
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 851
    .line 852
    .line 853
    throw v2

    .line 854
    :cond_16
    move-object v0, v7

    .line 855
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 856
    .line 857
    const-string v3, "Pixeldrain: File not found or has been deleted. (id="

    .line 858
    .line 859
    invoke-static {v3, v1, v0}, LE/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 860
    .line 861
    .line 862
    move-result-object v0

    .line 863
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 864
    .line 865
    .line 866
    throw v2

    .line 867
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 868
    .line 869
    invoke-static {}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterDownloadKt;->downloadPixeldrainZip$bandwidthMessage()Ljava/lang/String;

    .line 870
    .line 871
    .line 872
    move-result-object v1

    .line 873
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 874
    .line 875
    .line 876
    throw v0
.end method

.method private static final downloadPixeldrainZip$bandwidthMessage()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Pixeldrain bandwidth quota exceeded (6 GB/week). Try again later or use a different link."

    .line 2
    .line 3
    return-object v0
.end method

.method private static final downloadPixeldrainZip$parseErrValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lkotlin/text/Regex;

    .line 2
    .line 3
    const-string v1, "\"value\"\\s*:\\s*\"([^\"]+)\""

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x2

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {v0, p0, v1, v2, v3}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-interface {p0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    move-object v3, p0

    .line 29
    check-cast v3, Ljava/lang/String;

    .line 30
    .line 31
    :cond_0
    if-nez v3, :cond_1

    .line 32
    .line 33
    const-string p0, ""

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_1
    return-object v3
.end method

.method public static final downloadRanozZip(Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;Ljava/lang/String;Landroid/content/Context;Ljava/io/File;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "pageUrl"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "archiveFile"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "onProgress"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "Ranoz page: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "MinHub-DL"

    .line 36
    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    invoke-static {p2, p1}, Lcom/minhub/gamehub/hub/catalog/RanozWebDownloaderKt;->resolveRanozViaWebView(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    const-string p2, "Ranoz direct URL: "

    .line 49
    .line 50
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    const/4 p2, 0x0

    .line 58
    invoke-static {p0, p1, p3, p4, p2}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterDownloadKt;->downloadZipInternal(Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;Ljava/lang/String;Ljava/io/File;Lkotlin/jvm/functions/Function1;I)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    const-string p1, "Ranoz: WebView could not resolve download link (Cloudflare blocked or timeout)"

    .line 65
    .line 66
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0

    .line 70
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    const-string p1, "Ranoz: Cloudflare-protected page requires WebView but no context is available."

    .line 73
    .line 74
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p0
.end method

.method public static final downloadZipInternal(Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;Ljava/lang/String;Ljava/io/File;Lkotlin/jvm/functions/Function1;I)V
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v8, p3

    move/from16 v13, p4

    const-string v14, "Attempt "

    const-string v15, "MB"

    const-string v2, "MinHub-DL"

    const-string v0, "<this>"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "zipUrl"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "archiveFile"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onProgress"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x3

    if-gt v13, v3, :cond_1d

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    move/from16 v0, v16

    move-wide/from16 v4, v17

    :goto_0
    const/4 v6, 0x1

    add-int/lit8 v7, v0, 0x1

    cmp-long v0, v4, v17

    if-lez v0, :cond_0

    .line 1
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v0, v9, v4

    if-nez v0, :cond_0

    move v0, v6

    goto :goto_1

    :cond_0
    move/from16 v0, v16

    .line 2
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 3
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    const-string v6, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/net/HttpURLConnection;

    const/16 v6, 0x3a98

    .line 4
    invoke-virtual {v3, v6}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const v6, 0x1d4c0

    .line 5
    invoke-virtual {v3, v6}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 6
    const-string v6, "GET"

    invoke-virtual {v3, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 7
    invoke-virtual {v3, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 8
    const-string v6, "Accept-Encoding"

    move/from16 v21, v0

    const-string v0, "identity"

    invoke-virtual {v3, v6, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-string v0, "User-Agent"

    const-string v6, "Mozilla/5.0 (Linux; Android 10) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36"

    invoke-virtual {v3, v0, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v21, :cond_1

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "bytes="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "Range"

    invoke-virtual {v3, v6, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_1
    :try_start_0
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    sub-long v9, v23, v9

    .line 13
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d

    const/16 v6, 0xce

    if-ne v0, v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    move-object/from16 v24, v3

    goto :goto_3

    :cond_2
    move/from16 v6, v16

    goto :goto_2

    :goto_3
    const/16 v3, 0xc8

    if-gt v3, v0, :cond_16

    const/16 v3, 0x12c

    if-ge v0, v3, :cond_16

    if-eqz v21, :cond_3

    if-nez v6, :cond_3

    .line 14
    :try_start_1
    const-string v3, "Server ignored Range header (200 vs 206), restarting from 0"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 15
    :try_start_2
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-wide/from16 v4, v17

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v9, v2

    move/from16 v34, v7

    move-object/from16 v19, v14

    move-wide/from16 v4, v17

    goto/16 :goto_1b

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v9, v2

    move/from16 v34, v7

    move-object/from16 v19, v14

    goto/16 :goto_1b

    .line 16
    :cond_3
    :goto_4
    :try_start_3
    invoke-virtual/range {v24 .. v24}, Ljava/net/URLConnection;->getContentLengthLong()J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b

    cmp-long v25, v25, v17

    if-lez v25, :cond_4

    goto :goto_5

    :cond_4
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_5

    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v25
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    :cond_5
    const-wide/16 v25, -0x1

    :goto_6
    if-eqz v6, :cond_6

    cmp-long v3, v25, v17

    if-lez v3, :cond_6

    add-long v25, v4, v25

    :cond_6
    move-wide/from16 v27, v4

    move-wide/from16 v3, v25

    .line 17
    :try_start_5
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    if-eqz v5, :cond_7

    :try_start_6
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    if-nez v5, :cond_8

    goto :goto_9

    :catch_2
    move-exception v0

    :goto_7
    move-object v1, v0

    move-object v9, v2

    move/from16 v34, v7

    move-object/from16 v19, v14

    :goto_8
    move-wide/from16 v4, v27

    goto/16 :goto_1b

    :cond_7
    :goto_9
    :try_start_7
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 18
    :cond_8
    new-instance v13, Landroid/os/StatFs;

    invoke-direct {v13, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v25

    cmp-long v13, v3, v17

    move/from16 v29, v6

    if-lez v13, :cond_9

    long-to-double v5, v3

    const-wide/high16 v32, 0x4004000000000000L    # 2.5

    mul-double v5, v5, v32

    double-to-long v5, v5

    :goto_a
    move-wide/from16 v30, v3

    const-wide/32 v3, 0xc800000

    goto :goto_b

    :cond_9
    const-wide/32 v5, 0xc800000

    goto :goto_a

    .line 19
    :goto_b
    invoke-static {v5, v6, v3, v4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v3

    cmp-long v3, v25, v3

    if-ltz v3, :cond_15

    .line 20
    invoke-virtual/range {v24 .. v24}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    const-string v4, ""

    if-nez v3, :cond_a

    move-object v3, v4

    :cond_a
    if-eqz v21, :cond_b

    move/from16 v21, v13

    const/16 v5, 0x400

    int-to-long v12, v5

    .line 21
    :try_start_8
    div-long v4, v27, v12

    div-long/2addr v4, v12

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " [RESUME "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "MB]"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    :catch_3
    move-exception v0

    move-object/from16 v12, p2

    goto :goto_7

    :cond_b
    move/from16 v21, v13

    :goto_c
    if-lez v21, :cond_c

    const/16 v5, 0x400

    int-to-long v12, v5

    .line 22
    div-long v25, v30, v12

    div-long v12, v25, v12

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_d

    :cond_c
    const/16 v5, 0x400

    :try_start_9
    const-string v6, "unknown"

    :goto_d
    const/16 v12, 0x50

    .line 23
    invoke-static {v11, v12}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " code="

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " connect="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms size="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " url="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const-string v0, "text/html"

    invoke-static {v3, v0}, Lkotlin/text/StringsKt;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    const-string v3, "Server did not return a ZIP archive."

    if-eqz v0, :cond_e

    .line 26
    :try_start_a
    invoke-virtual/range {v24 .. v24}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const-string v4, "getInputStream(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v4, Ljava/io/BufferedReader;

    const/16 v0, 0x2000

    invoke-direct {v4, v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    :try_start_b
    invoke-static {v4}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const/4 v6, 0x0

    :try_start_c
    invoke-static {v4, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const/16 v4, 0x258

    .line 27
    invoke-static {v0, v4}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HTML snippet: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {v1, v0}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->extractDirectDownloadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-virtual/range {v24 .. v24}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v0, :cond_d

    .line 30
    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    if-nez v4, :cond_d

    const/16 v20, 0x1

    add-int/lit8 v3, p4, 0x1

    move-object/from16 v12, p2

    .line 31
    :try_start_d
    invoke-static {v1, v0, v12, v8, v3}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterDownloadKt;->downloadZipInternal(Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;Ljava/lang/String;Ljava/io/File;Lkotlin/jvm/functions/Function1;I)V

    return-void

    :cond_d
    move-object/from16 v12, p2

    .line 32
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    :catchall_0
    move-exception v0

    move-object/from16 v12, p2

    const/4 v6, 0x0

    move-object v3, v0

    .line 33
    :try_start_e
    throw v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_f
    invoke-static {v4, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    :catch_4
    move-exception v0

    move-object/from16 v12, p2

    const/4 v6, 0x0

    goto/16 :goto_7

    :cond_e
    move-object/from16 v12, p2

    const/4 v6, 0x0

    const/16 v20, 0x1

    .line 34
    :try_start_10
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9

    if-eqz v0, :cond_f

    :try_start_11
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    :cond_f
    move-object/from16 v22, v6

    move v4, v7

    .line 35
    :try_start_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8

    move-object v9, v2

    .line 36
    :try_start_13
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual/range {v24 .. v24}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7

    if-nez v29, :cond_11

    .line 37
    :try_start_14
    invoke-static {v2}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterDownloadKt;->looksLikeZipStream(Ljava/io/BufferedInputStream;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_e

    .line 38
    :cond_10
    invoke-virtual/range {v24 .. v24}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 39
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    move/from16 v34, v4

    move-object/from16 v19, v14

    goto/16 :goto_15

    .line 40
    :cond_11
    :goto_e
    :try_start_15
    new-instance v3, Ljava/io/FileOutputStream;

    move/from16 v0, v29

    invoke-direct {v3, v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    move/from16 v34, v4

    move-object/from16 v35, v9

    move-object/from16 v19, v14

    move/from16 v0, v20

    move-wide/from16 v9, v27

    move-wide/from16 v4, v30

    .line 41
    :try_start_16
    invoke-static/range {v1 .. v10}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterDownloadKt;->copyStream(Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;Ljava/io/InputStream;Ljava/io/OutputStream;JJLkotlin/jvm/functions/Function1;J)J

    move-result-wide v13
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    move-wide/from16 v30, v4

    move-wide/from16 v27, v9

    .line 42
    :try_start_17
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    const/4 v1, 0x0

    .line 43
    :try_start_18
    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    .line 44
    :try_start_19
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 45
    invoke-virtual/range {v24 .. v24}, Ljava/net/HttpURLConnection;->disconnect()V

    add-long v4, v27, v13

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    cmp-long v6, v2, v17

    if-lez v6, :cond_12

    cmp-long v6, v13, v17

    if-lez v6, :cond_12

    long-to-double v6, v13

    const/16 v9, 0x400

    int-to-double v13, v9

    div-double/2addr v6, v13

    div-double/2addr v6, v13

    long-to-double v13, v2

    const-wide v22, 0x408f400000000000L    # 1000.0

    div-double v13, v13, v22

    div-double/2addr v6, v13

    goto :goto_f

    :cond_12
    const/16 v9, 0x400

    const-wide/16 v6, 0x0

    :goto_f
    int-to-long v13, v9

    .line 47
    div-long v22, v4, v13

    move-wide/from16 v25, v2

    div-long v1, v22, v13

    div-long v22, v30, v13

    div-long v10, v22, v13

    const/16 v3, 0x3e8

    move-wide/from16 v32, v10

    int-to-long v9, v3

    .line 48
    div-long v9, v25, v9

    const-string v3, "%.2f"

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "format(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DONE received="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "MB expected="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v32

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "MB time="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "s avg="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MB/s"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_6

    move-object/from16 v9, v35

    .line 49
    :try_start_1a
    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v21, :cond_14

    cmp-long v0, v4, v30

    if-ltz v0, :cond_13

    goto :goto_11

    .line 50
    :cond_13
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 51
    new-instance v0, Ljava/lang/IllegalStateException;

    div-long/2addr v4, v13

    div-long/2addr v4, v13

    div-long v1, v30, v13

    div-long/2addr v1, v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Download incomplete: got "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "MB, expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_5
    move-exception v0

    :goto_10
    move-object v1, v0

    goto/16 :goto_8

    :cond_14
    :goto_11
    const/16 v0, 0x64

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_5

    return-void

    :catch_6
    move-exception v0

    move-object/from16 v9, v35

    goto :goto_10

    :catchall_3
    move-exception v0

    move-object/from16 v9, v35

    :goto_12
    move-object v1, v0

    goto :goto_15

    :catchall_4
    move-exception v0

    :goto_13
    move-object/from16 v9, v35

    move-object v1, v0

    goto :goto_14

    :catchall_5
    move-exception v0

    move-wide/from16 v27, v9

    goto :goto_13

    .line 53
    :goto_14
    :try_start_1b
    throw v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    :catchall_6
    move-exception v0

    :try_start_1c
    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    :catchall_7
    move-exception v0

    goto :goto_12

    :catchall_8
    move-exception v0

    move/from16 v34, v4

    move-object/from16 v19, v14

    goto :goto_12

    .line 54
    :goto_15
    :try_start_1d
    throw v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    :catchall_9
    move-exception v0

    :try_start_1e
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :catch_7
    move-exception v0

    :goto_16
    move/from16 v34, v4

    :goto_17
    move-object/from16 v19, v14

    goto :goto_10

    :catch_8
    move-exception v0

    move-object v9, v2

    goto :goto_16

    :catch_9
    move-exception v0

    :goto_18
    move-object v9, v2

    move/from16 v34, v7

    goto :goto_17

    :catch_a
    move-exception v0

    move-object/from16 v12, p2

    goto :goto_18

    :cond_15
    move-object v9, v2

    move/from16 v34, v7

    move-object/from16 v19, v14

    .line 55
    invoke-virtual/range {v24 .. v24}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 56
    new-instance v0, Ljava/io/IOException;

    const/16 v1, 0x400

    int-to-long v2, v1

    .line 57
    div-long/2addr v5, v2

    div-long/2addr v5, v2

    .line 58
    div-long v25, v25, v2

    div-long v1, v25, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Kh\u00f4ng \u0111\u1ee7 dung l\u01b0\u1ee3ng: c\u1ea7n "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " MB, c\u00f2n "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " MB tr\u1ed1ng."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_5

    :catch_b
    move-exception v0

    move-object v9, v2

    move-wide/from16 v27, v4

    :goto_19
    move/from16 v34, v7

    move-object/from16 v19, v14

    :goto_1a
    move-object v1, v0

    goto :goto_1b

    :cond_16
    move-object v9, v2

    move/from16 v34, v7

    move-object/from16 v19, v14

    .line 60
    :try_start_1f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected HTTP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_c

    :catch_c
    move-exception v0

    goto :goto_1a

    :catch_d
    move-exception v0

    move-object v9, v2

    move-object/from16 v24, v3

    goto :goto_19

    .line 61
    :goto_1b
    :try_start_20
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual/range {v24 .. v24}, Ljava/net/HttpURLConnection;->disconnect()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    goto :goto_1c

    :catchall_a
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :goto_1c
    instance-of v0, v1, Ljava/net/SocketTimeoutException;

    if-nez v0, :cond_17

    .line 63
    instance-of v0, v1, Ljava/io/IOException;

    if-eqz v0, :cond_18

    instance-of v0, v1, Ljava/net/MalformedURLException;

    if-nez v0, :cond_18

    :cond_17
    move/from16 v2, v34

    const/4 v3, 0x3

    if-le v2, v3, :cond_1a

    :cond_18
    cmp-long v0, v4, v17

    if-nez v0, :cond_19

    .line 64
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 65
    :cond_19
    throw v1

    .line 66
    :cond_1a
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1b

    move-object v6, v12

    goto :goto_1d

    :cond_1b
    const/4 v6, 0x0

    :goto_1d
    if-eqz v6, :cond_1c

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v4

    goto :goto_1e

    :cond_1c
    move-wide/from16 v4, v17

    .line 67
    :goto_1e
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x400

    int-to-long v6, v6

    .line 68
    div-long v10, v4, v6

    div-long/2addr v10, v6

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v7, v19

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " failed ("

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "), retry in 3s from "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0xbb8

    .line 70
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    move-object/from16 v1, p0

    move-object/from16 v11, p1

    move/from16 v13, p4

    move v0, v2

    move-object v14, v7

    move-object v2, v9

    goto/16 :goto_0

    .line 71
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Too many download redirects while resolving archive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final goFileWebsiteToken()Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, "MinHub-DL"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const-string v2, "GoFile wt fetch: code="

    .line 6
    .line 7
    sget-object v3, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterDownloadKt;->cachedGoFileWt:Ljava/lang/String;

    .line 8
    .line 9
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-lez v3, :cond_0

    .line 14
    .line 15
    sget-object v0, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterDownloadKt;->cachedGoFileWt:Ljava/lang/String;

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 19
    .line 20
    new-instance v3, Ljava/net/URL;

    .line 21
    .line 22
    const-string v4, "https://gofile.io/dist/js/config.js"

    .line 23
    .line 24
    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-string v4, "null cannot be cast to non-null type java.net.HttpURLConnection"

    .line 32
    .line 33
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    check-cast v3, Ljava/net/HttpURLConnection;

    .line 37
    .line 38
    const/16 v4, 0x2710

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 44
    .line 45
    .line 46
    const-string v4, "GET"

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v4, "User-Agent"

    .line 52
    .line 53
    const-string v5, "Mozilla/5.0 (Linux; Android 10) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36"

    .line 54
    .line 55
    invoke-virtual {v3, v4, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    const/16 v5, 0xc8

    .line 63
    .line 64
    if-gt v5, v4, :cond_1

    .line 65
    .line 66
    const/16 v5, 0x12c

    .line 67
    .line 68
    if-ge v4, v5, :cond_1

    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception v2

    .line 76
    goto/16 :goto_2

    .line 77
    .line 78
    :cond_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    :goto_0
    const/4 v6, 0x0

    .line 83
    if-eqz v5, :cond_2

    .line 84
    .line 85
    sget-object v7, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 86
    .line 87
    new-instance v8, Ljava/io/InputStreamReader;

    .line 88
    .line 89
    invoke-direct {v8, v5, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 90
    .line 91
    .line 92
    new-instance v5, Ljava/io/BufferedReader;

    .line 93
    .line 94
    const/16 v7, 0x2000

    .line 95
    .line 96
    invoke-direct {v5, v8, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .line 98
    .line 99
    :try_start_1
    invoke-static {v5}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    :try_start_2
    invoke-static {v5, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :catchall_1
    move-exception v2

    .line 108
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 109
    :catchall_2
    move-exception v3

    .line 110
    :try_start_4
    invoke-static {v5, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    throw v3

    .line 114
    :cond_2
    move-object v7, v6

    .line 115
    :goto_1
    if-nez v7, :cond_3

    .line 116
    .line 117
    move-object v7, v1

    .line 118
    :cond_3
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 119
    .line 120
    .line 121
    new-instance v3, Lkotlin/text/Regex;

    .line 122
    .line 123
    const-string v5, "\\bwt\\s*[:=]\\s*[\"\']([a-zA-Z0-9]{6,})[\"\']"

    .line 124
    .line 125
    invoke-direct {v3, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    const/4 v5, 0x2

    .line 129
    const/4 v8, 0x0

    .line 130
    invoke-static {v3, v7, v8, v5, v6}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    const/4 v5, 0x1

    .line 135
    if-eqz v3, :cond_4

    .line 136
    .line 137
    invoke-interface {v3}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    if-eqz v3, :cond_4

    .line 142
    .line 143
    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    move-object v6, v3

    .line 148
    check-cast v6, Ljava/lang/String;

    .line 149
    .line 150
    :cond_4
    if-nez v6, :cond_5

    .line 151
    .line 152
    move-object v6, v1

    .line 153
    :cond_5
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    if-lez v7, :cond_6

    .line 162
    .line 163
    move v8, v5

    .line 164
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v2, " jsLen="

    .line 173
    .line 174
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v2, " matched="

    .line 181
    .line 182
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    invoke-static {v6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 199
    goto :goto_3

    .line 200
    :goto_2
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 201
    .line 202
    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    :goto_3
    invoke-static {v2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    if-nez v3, :cond_7

    .line 215
    .line 216
    move-object v1, v2

    .line 217
    goto :goto_4

    .line 218
    :cond_7
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    const-string v3, "GoFile wt fetch failed: "

    .line 223
    .line 224
    invoke-static {v3, v2, v0}, LE/b;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    :goto_4
    check-cast v1, Ljava/lang/String;

    .line 228
    .line 229
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    if-nez v0, :cond_8

    .line 234
    .line 235
    const-string v1, "4fd6sg89d7s6"

    .line 236
    .line 237
    :cond_8
    sput-object v1, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterDownloadKt;->cachedGoFileWt:Ljava/lang/String;

    .line 238
    .line 239
    return-object v1
.end method

.method private static final looksLikeZipStream(Ljava/io/BufferedInputStream;)Z
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 3
    .line 4
    .line 5
    new-array v1, v0, [B

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->reset()V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    if-ge v2, v0, :cond_0

    .line 16
    .line 17
    return p0

    .line 18
    :cond_0
    new-array v2, v0, [B

    .line 19
    .line 20
    fill-array-data v2, :array_0

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    new-array v2, v0, [B

    .line 30
    .line 31
    fill-array-data v2, :array_1

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    new-array v0, v0, [B

    .line 41
    .line 42
    fill-array-data v0, :array_2

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    return p0

    .line 53
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 54
    return p0

    .line 55
    :array_0
    .array-data 1
        0x50t
        0x4bt
        0x3t
        0x4t
    .end array-data

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    :array_1
    .array-data 1
        0x50t
        0x4bt
        0x5t
        0x6t
    .end array-data

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    :array_2
    .array-data 1
        0x50t
        0x4bt
        0x7t
        0x8t
    .end array-data
.end method

.method private static final pixeldrainFileIdFromPage(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "MinHub-DL"

    .line 2
    .line 3
    const-string v1, "Pixeldrain page HTML snippet: "

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    new-instance v3, Ljava/net/URL;

    .line 7
    .line 8
    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v3, "null cannot be cast to non-null type java.net.HttpURLConnection"

    .line 16
    .line 17
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    check-cast p0, Ljava/net/HttpURLConnection;

    .line 21
    .line 22
    const/16 v3, 0x2710

    .line 23
    .line 24
    invoke-virtual {p0, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 25
    .line 26
    .line 27
    const/16 v3, 0x3a98

    .line 28
    .line 29
    invoke-virtual {p0, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 30
    .line 31
    .line 32
    const-string v3, "GET"

    .line 33
    .line 34
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v3, "User-Agent"

    .line 38
    .line 39
    const-string v4, "Mozilla/5.0 (Linux; Android 10) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36"

    .line 40
    .line 41
    invoke-virtual {p0, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/net/URLConnection;->connect()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const-string v4, "getInputStream(...)"

    .line 52
    .line 53
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 57
    .line 58
    new-instance v5, Ljava/io/InputStreamReader;

    .line 59
    .line 60
    invoke-direct {v5, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 61
    .line 62
    .line 63
    new-instance v3, Ljava/io/BufferedReader;

    .line 64
    .line 65
    const/16 v4, 0x2000

    .line 66
    .line 67
    invoke-direct {v3, v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    :try_start_1
    invoke-static {v3}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :try_start_2
    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 78
    .line 79
    .line 80
    const/16 p0, 0x1f4

    .line 81
    .line 82
    invoke-static {v4, p0}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    new-instance p0, Lkotlin/text/Regex;

    .line 102
    .line 103
    const-string v1, "\"id\"\\s*:\\s*\"([a-zA-Z0-9]{8})\""

    .line 104
    .line 105
    invoke-direct {p0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    new-instance v1, Lkotlin/text/Regex;

    .line 109
    .line 110
    const-string v3, "/api/file/([a-zA-Z0-9]{8})"

    .line 111
    .line 112
    invoke-direct {v1, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    new-instance v3, Lkotlin/text/Regex;

    .line 116
    .line 117
    const-string v5, "pixeldrain\\.com/u/([a-zA-Z0-9]{8})"

    .line 118
    .line 119
    invoke-direct {v3, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    new-instance v5, Lkotlin/text/Regex;

    .line 123
    .line 124
    const-string v6, "[\"\']([a-zA-Z0-9]{8})[\"\']\\s*,?\\s*[\"\']file"

    .line 125
    .line 126
    invoke-direct {v5, v6}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    filled-new-array {p0, v1, v3, v5}, [Lkotlin/text/Regex;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_2

    .line 146
    .line 147
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    check-cast v1, Lkotlin/text/Regex;

    .line 152
    .line 153
    const/4 v3, 0x0

    .line 154
    const/4 v5, 0x2

    .line 155
    invoke-static {v1, v4, v3, v5, v2}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    if-eqz v1, :cond_1

    .line 160
    .line 161
    invoke-interface {v1}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    if-eqz v1, :cond_1

    .line 166
    .line 167
    const/4 v3, 0x1

    .line 168
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    check-cast v1, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 173
    .line 174
    goto :goto_0

    .line 175
    :catch_0
    move-exception p0

    .line 176
    goto :goto_1

    .line 177
    :cond_1
    move-object v1, v2

    .line 178
    :goto_0
    if-eqz v1, :cond_0

    .line 179
    .line 180
    return-object v1

    .line 181
    :cond_2
    return-object v2

    .line 182
    :catchall_0
    move-exception p0

    .line 183
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 184
    :catchall_1
    move-exception v1

    .line 185
    :try_start_4
    invoke-static {v3, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 186
    .line 187
    .line 188
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 189
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    const-string v1, "Pixeldrain page fetch failed: "

    .line 194
    .line 195
    invoke-static {v1, p0, v0}, LE/b;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    return-object v2
.end method
