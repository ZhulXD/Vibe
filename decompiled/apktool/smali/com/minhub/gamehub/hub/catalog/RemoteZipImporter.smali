.class public final Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0016J\u0016\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u0013J8\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u001c2\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0014\u0008\u0002\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u001a0 J\u0015\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0013H\u0000\u00a2\u0006\u0002\u0008$J\u0010\u0010%\u001a\u0004\u0018\u00010\u00132\u0006\u0010&\u001a\u00020\u0013J\u0010\u0010\'\u001a\u00020\u00132\u0006\u0010(\u001a\u00020\u0013H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00020\u0007X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;",
        "",
        "<init>",
        "()V",
        "DOWNLOAD_BUFFER_SIZE",
        "",
        "MEDIAFIRE_DOWNLOAD_BUTTON_REGEX",
        "Lkotlin/text/Regex;",
        "BUZZHEAVIER_PAGE_REGEX",
        "BUZZHEAVIER_CDN_REGEX",
        "PIXELDRAIN_PAGE_REGEX",
        "PIXELDRAIN_DIR_REGEX",
        "BUZZHEAVIER_HX_REGEX",
        "BUZZHEAVIER_TOKEN_PATH_REGEX",
        "getBUZZHEAVIER_TOKEN_PATH_REGEX$app_release",
        "()Lkotlin/text/Regex;",
        "GOFILE_DIRECT_REGEX",
        "RANOZ_PAGE_REGEX",
        "buildImportDirectoryName",
        "",
        "title",
        "timestampMs",
        "",
        "resolveArchiveFileName",
        "zipUrl",
        "downloadZip",
        "",
        "archiveFile",
        "Ljava/io/File;",
        "appContext",
        "Landroid/content/Context;",
        "onProgress",
        "Lkotlin/Function1;",
        "isSupportedRemoteUrl",
        "",
        "url",
        "isSupportedRemoteUrl$app_release",
        "extractDirectDownloadUrl",
        "pageHtml",
        "sanitize",
        "value",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRemoteZipImporter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteZipImporter.kt\ncom/minhub/gamehub/hub/catalog/RemoteZipImporter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,142:1\n1#2:143\n*E\n"
    }
.end annotation


# static fields
.field private static final BUZZHEAVIER_CDN_REGEX:Lkotlin/text/Regex;

.field private static final BUZZHEAVIER_HX_REGEX:Lkotlin/text/Regex;

.field private static final BUZZHEAVIER_PAGE_REGEX:Lkotlin/text/Regex;

.field private static final BUZZHEAVIER_TOKEN_PATH_REGEX:Lkotlin/text/Regex;

.field public static final DOWNLOAD_BUFFER_SIZE:I = 0x40000

.field private static final GOFILE_DIRECT_REGEX:Lkotlin/text/Regex;

.field public static final INSTANCE:Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;

.field private static final MEDIAFIRE_DOWNLOAD_BUTTON_REGEX:Lkotlin/text/Regex;

.field private static final PIXELDRAIN_DIR_REGEX:Lkotlin/text/Regex;

.field private static final PIXELDRAIN_PAGE_REGEX:Lkotlin/text/Regex;

.field private static final RANOZ_PAGE_REGEX:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->INSTANCE:Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;

    .line 7
    .line 8
    new-instance v0, Lkotlin/text/Regex;

    .line 9
    .line 10
    sget-object v1, Lkotlin/text/RegexOption;->IGNORE_CASE:Lkotlin/text/RegexOption;

    .line 11
    .line 12
    sget-object v2, Lkotlin/text/RegexOption;->DOT_MATCHES_ALL:Lkotlin/text/RegexOption;

    .line 13
    .line 14
    filled-new-array {v1, v2}, [Lkotlin/text/RegexOption;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v3, "href=\"(https://download[^\"]+)\"[^>]*id=\"downloadButton\""

    .line 23
    .line 24
    invoke-direct {v0, v3, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->MEDIAFIRE_DOWNLOAD_BUTTON_REGEX:Lkotlin/text/Regex;

    .line 28
    .line 29
    new-instance v0, Lkotlin/text/Regex;

    .line 30
    .line 31
    const-string v2, "^https?://(?:www\\.)?(?:buzzheavier\\.com|bzzhr\\.to)/([a-zA-Z0-9]+)(?:[?#].*)?$"

    .line 32
    .line 33
    invoke-direct {v0, v2, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Lkotlin/text/RegexOption;)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->BUZZHEAVIER_PAGE_REGEX:Lkotlin/text/Regex;

    .line 37
    .line 38
    new-instance v0, Lkotlin/text/Regex;

    .line 39
    .line 40
    const-string v2, "^https?://ts\\.(?:buzzheavier\\.com|bzzhr\\.to)/d/([a-zA-Z0-9]+)(?:[?#].*)?$"

    .line 41
    .line 42
    invoke-direct {v0, v2, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Lkotlin/text/RegexOption;)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->BUZZHEAVIER_CDN_REGEX:Lkotlin/text/Regex;

    .line 46
    .line 47
    new-instance v0, Lkotlin/text/Regex;

    .line 48
    .line 49
    const-string v2, "^https?://pixeldrain\\.com/u/([a-zA-Z0-9]+)(?:[?#].*)?$"

    .line 50
    .line 51
    invoke-direct {v0, v2, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Lkotlin/text/RegexOption;)V

    .line 52
    .line 53
    .line 54
    sput-object v0, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->PIXELDRAIN_PAGE_REGEX:Lkotlin/text/Regex;

    .line 55
    .line 56
    new-instance v0, Lkotlin/text/Regex;

    .line 57
    .line 58
    const-string v2, "^https?://pixeldrain\\.com/d/(.+?)(?:[?#].*)?$"

    .line 59
    .line 60
    invoke-direct {v0, v2, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Lkotlin/text/RegexOption;)V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->PIXELDRAIN_DIR_REGEX:Lkotlin/text/Regex;

    .line 64
    .line 65
    new-instance v0, Lkotlin/text/Regex;

    .line 66
    .line 67
    const-string v2, "hx-get=\"(/[a-zA-Z0-9]+/download)\""

    .line 68
    .line 69
    invoke-direct {v0, v2, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Lkotlin/text/RegexOption;)V

    .line 70
    .line 71
    .line 72
    sput-object v0, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->BUZZHEAVIER_HX_REGEX:Lkotlin/text/Regex;

    .line 73
    .line 74
    new-instance v0, Lkotlin/text/Regex;

    .line 75
    .line 76
    const-string v2, "hx-get=\"(/[a-zA-Z0-9]+/download\\?t=[^\"]+)\""

    .line 77
    .line 78
    invoke-direct {v0, v2, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Lkotlin/text/RegexOption;)V

    .line 79
    .line 80
    .line 81
    sput-object v0, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->BUZZHEAVIER_TOKEN_PATH_REGEX:Lkotlin/text/Regex;

    .line 82
    .line 83
    new-instance v0, Lkotlin/text/Regex;

    .line 84
    .line 85
    const-string v2, "^https?://store[^.]*\\.gofile\\.io/download/direct/"

    .line 86
    .line 87
    invoke-direct {v0, v2, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Lkotlin/text/RegexOption;)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->GOFILE_DIRECT_REGEX:Lkotlin/text/Regex;

    .line 91
    .line 92
    new-instance v0, Lkotlin/text/Regex;

    .line 93
    .line 94
    const-string v2, "^https?://(?:www\\.)?ranoz\\.gg/file/([a-zA-Z0-9]+)(?:[?#].*)?$"

    .line 95
    .line 96
    invoke-direct {v0, v2, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Lkotlin/text/RegexOption;)V

    .line 97
    .line 98
    .line 99
    sput-object v0, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->RANOZ_PAGE_REGEX:Lkotlin/text/Regex;

    .line 100
    .line 101
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->downloadZip$lambda$2(I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic downloadZip$default(Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;Ljava/lang/String;Ljava/io/File;Landroid/content/Context;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x4

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    and-int/lit8 p5, p5, 0x8

    .line 7
    .line 8
    if-eqz p5, :cond_1

    .line 9
    .line 10
    new-instance p4, Lcom/minhub/gamehub/hub/catalog/h;

    .line 11
    .line 12
    const/4 p5, 0x2

    .line 13
    invoke-direct {p4, p5}, Lcom/minhub/gamehub/hub/catalog/h;-><init>(I)V

    .line 14
    .line 15
    .line 16
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->downloadZip(Ljava/lang/String;Ljava/io/File;Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private static final downloadZip$lambda$2(I)Lkotlin/Unit;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p0
.end method

.method private final sanitize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v0, Lkotlin/text/Regex;

    .line 10
    .line 11
    const-string v1, "[^a-zA-Z0-9_\\-]"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "_"

    .line 17
    .line 18
    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v0, Lkotlin/text/Regex;

    .line 23
    .line 24
    const-string v2, "_+"

    .line 25
    .line 26
    invoke-direct {v0, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 v0, 0x1

    .line 34
    new-array v0, v0, [C

    .line 35
    .line 36
    const/16 v1, 0x5f

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    aput-char v1, v0, v2

    .line 40
    .line 41
    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;[C)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const/16 v0, 0x32

    .line 46
    .line 47
    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1
.end method


# virtual methods
.method public final buildImportDirectoryName(Ljava/lang/String;J)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "title"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p1, "_"

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method public final downloadZip(Ljava/lang/String;Ljava/io/File;Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "zipUrl"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "archiveFile"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "onProgress"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->isSupportedRemoteUrl$app_release(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_9

    .line 21
    .line 22
    sget-object v0, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->PIXELDRAIN_PAGE_REGEX:Lkotlin/text/Regex;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    const/4 v2, 0x2

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static {v0, p1, v1, v2, v3}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v4, 0x1

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ljava/lang/String;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move-object v0, v3

    .line 48
    :goto_0
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-static {p0, v0, p2, p4}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterDownloadKt;->downloadPixeldrainZip(Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;Ljava/lang/String;Ljava/io/File;Lkotlin/jvm/functions/Function1;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    sget-object v0, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->PIXELDRAIN_DIR_REGEX:Lkotlin/text/Regex;

    .line 55
    .line 56
    invoke-static {v0, p1, v1, v2, v3}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Ljava/lang/String;

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    move-object v0, v3

    .line 76
    :goto_1
    if-eqz v0, :cond_3

    .line 77
    .line 78
    invoke-static {p0, v0, p2, p4}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterDownloadKt;->downloadPixeldrainFilesystemZip(Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;Ljava/lang/String;Ljava/io/File;Lkotlin/jvm/functions/Function1;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_3
    sget-object v0, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->BUZZHEAVIER_CDN_REGEX:Lkotlin/text/Regex;

    .line 83
    .line 84
    invoke-static {v0, p1, v1, v2, v3}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-eqz v0, :cond_4

    .line 89
    .line 90
    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-eqz v0, :cond_4

    .line 95
    .line 96
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    move-object v3, v0

    .line 101
    check-cast v3, Ljava/lang/String;

    .line 102
    .line 103
    :cond_4
    if-eqz v3, :cond_5

    .line 104
    .line 105
    invoke-static {p0, p1, p3, p2, p4}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterDownloadKt;->downloadBuzzHeavierCdnZip(Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;Ljava/lang/String;Landroid/content/Context;Ljava/io/File;Lkotlin/jvm/functions/Function1;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_5
    sget-object v0, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->BUZZHEAVIER_PAGE_REGEX:Lkotlin/text/Regex;

    .line 110
    .line 111
    invoke-virtual {v0, p1}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_6

    .line 116
    .line 117
    invoke-static {p0, p3, p1, p2, p4}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterDownloadKt;->downloadBuzzHeavierZip(Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lkotlin/jvm/functions/Function1;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_6
    sget-object v0, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->GOFILE_DIRECT_REGEX:Lkotlin/text/Regex;

    .line 122
    .line 123
    invoke-virtual {v0, p1}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_7

    .line 128
    .line 129
    invoke-static {p0, p1, p2, p4}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterDownloadKt;->downloadGoFileZip(Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;Ljava/lang/String;Ljava/io/File;Lkotlin/jvm/functions/Function1;)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_7
    sget-object v0, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->RANOZ_PAGE_REGEX:Lkotlin/text/Regex;

    .line 134
    .line 135
    invoke-virtual {v0, p1}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_8

    .line 140
    .line 141
    invoke-static {p0, p1, p3, p2, p4}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterDownloadKt;->downloadRanozZip(Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;Ljava/lang/String;Landroid/content/Context;Ljava/io/File;Lkotlin/jvm/functions/Function1;)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_8
    invoke-static {p0, p1, p2, p4, v1}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterDownloadKt;->downloadZipInternal(Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;Ljava/lang/String;Ljava/io/File;Lkotlin/jvm/functions/Function1;I)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 150
    .line 151
    const-string p2, "Only HTTP(S) download URLs are supported"

    .line 152
    .line 153
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw p1
.end method

.method public final extractDirectDownloadUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "pageHtml"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->MEDIAFIRE_DOWNLOAD_BUTTON_REGEX:Lkotlin/text/Regex;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x2

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {v0, p1, v1, v2, v3}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v4, 0x1

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/String;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const-string v5, "&amp;"

    .line 33
    .line 34
    const-string v6, "&"

    .line 35
    .line 36
    invoke-static {v0, v5, v6}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move-object v0, v3

    .line 42
    :goto_0
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->isSupportedRemoteUrl$app_release(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_1

    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_1
    sget-object v0, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->BUZZHEAVIER_HX_REGEX:Lkotlin/text/Regex;

    .line 52
    .line 53
    invoke-static {v0, p1, v1, v2, v3}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    invoke-interface {p1}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    invoke-static {p1, v4}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Ljava/lang/String;

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    move-object p1, v3

    .line 73
    :goto_1
    if-eqz p1, :cond_3

    .line 74
    .line 75
    const-string v0, "https://buzzheavier.com"

    .line 76
    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->isSupportedRemoteUrl$app_release(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    return-object p1

    .line 88
    :cond_3
    return-object v3
.end method

.method public final getBUZZHEAVIER_TOKEN_PATH_REGEX$app_release()Lkotlin/text/Regex;
    .locals 1

    .line 1
    sget-object v0, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->BUZZHEAVIER_TOKEN_PATH_REGEX:Lkotlin/text/Regex;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isSupportedRemoteUrl$app_release(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "url"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 9
    .line 10
    new-instance v1, Ljava/net/URI;

    .line 11
    .line 12
    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v1, "toLowerCase(...)"

    .line 28
    .line 29
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    const/4 p1, 0x0

    .line 36
    :goto_0
    if-nez p1, :cond_1

    .line 37
    .line 38
    move-object p1, v0

    .line 39
    :cond_1
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    goto :goto_2

    .line 44
    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 45
    .line 46
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_2
    move-object v0, p1

    .line 62
    :goto_3
    check-cast v0, Ljava/lang/String;

    .line 63
    .line 64
    const-string p1, "http"

    .line 65
    .line 66
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-nez p1, :cond_4

    .line 71
    .line 72
    const-string p1, "https"

    .line 73
    .line 74
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_3

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_3
    const/4 p1, 0x0

    .line 82
    goto :goto_5

    .line 83
    :cond_4
    :goto_4
    const/4 p1, 0x1

    .line 84
    :goto_5
    return p1
.end method

.method public final resolveArchiveFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "title"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "zipUrl"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 12
    .line 13
    new-instance v0, Ljava/net/URL;

    .line 14
    .line 15
    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const-string v0, "getPath(...)"

    .line 23
    .line 24
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/16 v0, 0x2f

    .line 28
    .line 29
    invoke-static {v0, p2}, Lkotlin/text/StringsKt;->S(CLjava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const/16 v0, 0x3f

    .line 34
    .line 35
    invoke-static {v0, p2}, Lkotlin/text/StringsKt;->U(CLjava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-static {p2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p2

    .line 53
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 54
    .line 55
    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    :goto_0
    invoke-static {p2}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    .line 69
    const/4 p2, 0x0

    .line 70
    :cond_0
    check-cast p2, Ljava/lang/String;

    .line 71
    .line 72
    if-nez p2, :cond_1

    .line 73
    .line 74
    const-string p2, ""

    .line 75
    .line 76
    :cond_1
    const-string v0, ".zip"

    .line 77
    .line 78
    invoke-static {p2, v0}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_2

    .line 83
    .line 84
    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_2

    .line 89
    .line 90
    return-object p2

    .line 91
    :cond_2
    invoke-direct {p0, p1}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    if-eqz p2, :cond_3

    .line 100
    .line 101
    const-string p1, "game"

    .line 102
    .line 103
    :cond_3
    invoke-static {p1, v0}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    return-object p1
.end method
