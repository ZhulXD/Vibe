.class public final Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$DirectoryAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;,
        Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000 \'2\u00020\u0001:\u0002\'(B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\nH\u0016J\u0010\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\nH\u0016J\u0010\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\nH\u0016J\u0010\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\nH\u0016J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0010\u001a\u00020\nH\u0016J\u0008\u0010\u001b\u001a\u00020\nH\u0016J\u0010\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\nH\u0016J\u0010\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u0013H\u0016J\u0008\u0010 \u001a\u00020!H\u0016J\u0018\u0010\"\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\u00132\u0006\u0010$\u001a\u00020\u0013H\u0016J\u0010\u0010%\u001a\u00020\u000f2\u0006\u0010&\u001a\u00020\u0013H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n \u0008*\u0004\u0018\u00010\u00070\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;",
        "Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$DirectoryAccess;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "assetManager",
        "Landroid/content/res/AssetManager;",
        "kotlin.jvm.PlatformType",
        "lastDirId",
        "",
        "dirs",
        "Landroid/util/SparseArray;",
        "Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;",
        "hasDirId",
        "",
        "dirId",
        "dirOpen",
        "path",
        "",
        "dirExists",
        "fileExists",
        "dirIsDir",
        "isCurrentHidden",
        "dirNext",
        "dirClose",
        "",
        "getDriveCount",
        "getDrive",
        "drive",
        "makeDir",
        "dir",
        "getSpaceLeft",
        "",
        "rename",
        "from",
        "to",
        "remove",
        "filename",
        "Companion",
        "AssetDir",
        "lib_templateRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private final context:Landroid/content/Context;

.field private final dirs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;",
            ">;"
        }
    .end annotation
.end field

.field private lastDirId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->Companion:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$Companion;

    .line 8
    .line 9
    const-string v0, "AssetsDirectoryAccess"

    .line 10
    .line 11
    sput-object v0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->context:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->assetManager:Landroid/content/res/AssetManager;

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    iput p1, p0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->lastDirId:I

    .line 19
    .line 20
    new-instance p1, Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->dirs:Landroid/util/SparseArray;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public dirClose(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->dirs:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public dirExists(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->Companion:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$Companion;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$Companion;->getAssetsPath$lib_templateRelease(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 v0, 0x0

    .line 13
    :try_start_0
    iget-object v1, p0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->assetManager:Landroid/content/res/AssetManager;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    return v0

    .line 22
    :cond_0
    array-length p1, p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    const/4 v1, 0x1

    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    move v0, v1

    .line 27
    :cond_1
    xor-int/lit8 p1, v0, 0x1

    .line 28
    .line 29
    return p1

    .line 30
    :catch_0
    move-exception p1

    .line 31
    sget-object v1, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string v2, "Exception on dirExists"

    .line 34
    .line 35
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    return v0
.end method

.method public dirIsDir(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->dirs:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "get(...)"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast p1, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;

    .line 13
    .line 14
    invoke-virtual {p1}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;->getCurrent()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-lez v0, :cond_0

    .line 19
    .line 20
    add-int/lit8 v0, v0, -0x1

    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;->getFiles()[Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    array-length v1, v1

    .line 27
    const/4 v2, 0x0

    .line 28
    if-lt v0, v1, :cond_1

    .line 29
    .line 30
    return v2

    .line 31
    :cond_1
    invoke-virtual {p1}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;->getFiles()[Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    aget-object v0, v1, v0

    .line 36
    .line 37
    invoke-virtual {p1}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;->getPath()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v3, ""

    .line 42
    .line 43
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p1}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;->getPath()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string v1, "/"

    .line 55
    .line 56
    invoke-static {p1, v1, v0}, Lkotlin/collections/unsigned/a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :goto_0
    iget-object p1, p0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->assetManager:Landroid/content/res/AssetManager;

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    array-length p1, p1

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    move p1, v2

    .line 71
    :goto_1
    if-lez p1, :cond_4

    .line 72
    .line 73
    const/4 p1, 0x1

    .line 74
    return p1

    .line 75
    :cond_4
    return v2
.end method

.method public dirNext(I)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->dirs:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "get(...)"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast p1, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;

    .line 13
    .line 14
    invoke-virtual {p1}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;->getCurrent()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p1}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;->getFiles()[Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    array-length v1, v1

    .line 23
    if-lt v0, v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;->getCurrent()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;->setCurrent(I)V

    .line 32
    .line 33
    .line 34
    const-string p1, ""

    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_0
    invoke-virtual {p1}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;->getFiles()[Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p1}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;->getCurrent()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    add-int/lit8 v2, v1, 0x1

    .line 46
    .line 47
    invoke-virtual {p1, v2}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;->setCurrent(I)V

    .line 48
    .line 49
    .line 50
    aget-object p1, v0, v1

    .line 51
    .line 52
    return-object p1
.end method

.method public dirOpen(Ljava/lang/String;)I
    .locals 7

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->Companion:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$Companion;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$Companion;->getAssetsPath$lib_templateRelease(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 p1, -0x1

    .line 13
    :try_start_0
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->assetManager:Landroid/content/res/AssetManager;

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    return p1

    .line 22
    :cond_0
    array-length v0, v3

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    return p1

    .line 26
    :cond_1
    new-instance v1, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;

    .line 27
    .line 28
    const/4 v5, 0x4

    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-direct/range {v1 .. v6}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;-><init>(Ljava/lang/String;[Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->dirs:Landroid/util/SparseArray;

    .line 35
    .line 36
    iget v2, p0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->lastDirId:I

    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    iput v2, p0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->lastDirId:I

    .line 41
    .line 42
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget p1, p0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->lastDirId:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    return p1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    sget-object v1, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->TAG:Ljava/lang/String;

    .line 50
    .line 51
    const-string v2, "Exception on dirOpen"

    .line 52
    .line 53
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .line 55
    .line 56
    return p1
.end method

.method public fileExists(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lorg/godotengine/godot/io/file/AssetData;->Companion:Lorg/godotengine/godot/io/file/AssetData$Companion;

    .line 7
    .line 8
    iget-object v1, p0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->context:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Lorg/godotengine/godot/io/file/AssetData$Companion;->fileExists(Landroid/content/Context;Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public getDrive(I)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p1, ""

    .line 2
    .line 3
    return-object p1
.end method

.method public getDriveCount()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public getSpaceLeft()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    return-wide v0
.end method

.method public hasDirId(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->dirs:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-ltz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    return p1
.end method

.method public isCurrentHidden(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->dirs:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;

    .line 8
    .line 9
    invoke-virtual {p1}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;->getCurrent()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;->getFiles()[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    array-length v1, v1

    .line 22
    if-lt v0, v1, :cond_1

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    return p1

    .line 26
    :cond_1
    invoke-virtual {p1}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;->getFiles()[Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    aget-object p1, p1, v0

    .line 31
    .line 32
    const/16 v0, 0x2e

    .line 33
    .line 34
    invoke-static {v0, p1}, Lkotlin/text/StringsKt;->L(CLjava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1
.end method

.method public makeDir(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "dir"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "filename"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lorg/godotengine/godot/io/file/AssetData;->Companion:Lorg/godotengine/godot/io/file/AssetData$Companion;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lorg/godotengine/godot/io/file/AssetData$Companion;->delete(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "from"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "to"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lorg/godotengine/godot/io/file/AssetData;->Companion:Lorg/godotengine/godot/io/file/AssetData$Companion;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Lorg/godotengine/godot/io/file/AssetData$Companion;->rename(Ljava/lang/String;Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method
