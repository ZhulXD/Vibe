.class public final Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$DirectoryAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$Companion;,
        Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000 )2\u00020\u0001:\u0002)*B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0010\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u000bH\u0016J\u0010\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u000bH\u0016J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0014\u001a\u00020\u000bH\u0016J\u0010\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u000bH\u0016J\u0010\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u000bH\u0016J\u0008\u0010\u001d\u001a\u00020\u000bH\u0016J\u0010\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020\u000bH\u0016J\u0010\u0010 \u001a\u00020\u00102\u0006\u0010!\u001a\u00020\u0012H\u0016J\u0008\u0010\"\u001a\u00020#H\u0017J\u0018\u0010$\u001a\u00020\u00102\u0006\u0010%\u001a\u00020\u00122\u0006\u0010&\u001a\u00020\u0012H\u0016J\u0010\u0010\'\u001a\u00020\u00102\u0006\u0010(\u001a\u00020\u0012H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;",
        "Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$DirectoryAccess;",
        "context",
        "Landroid/content/Context;",
        "storageScopeIdentifier",
        "Lorg/godotengine/godot/io/StorageScope$Identifier;",
        "<init>",
        "(Landroid/content/Context;Lorg/godotengine/godot/io/StorageScope$Identifier;)V",
        "storageManager",
        "Landroid/os/storage/StorageManager;",
        "lastDirId",
        "",
        "dirs",
        "Landroid/util/SparseArray;",
        "Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;",
        "inScope",
        "",
        "path",
        "",
        "hasDirId",
        "dirId",
        "dirOpen",
        "dirExists",
        "fileExists",
        "dirNext",
        "dirClose",
        "",
        "dirIsDir",
        "isCurrentHidden",
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
        "DirData",
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
.field public static final Companion:Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final dirs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;",
            ">;"
        }
    .end annotation
.end field

.field private lastDirId:I

.field private final storageManager:Landroid/os/storage/StorageManager;

.field private final storageScopeIdentifier:Lorg/godotengine/godot/io/StorageScope$Identifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->Companion:Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$Companion;

    .line 8
    .line 9
    const-string v0, "FilesystemDirectoryAccess"

    .line 10
    .line 11
    sput-object v0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/godotengine/godot/io/StorageScope$Identifier;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "storageScopeIdentifier"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->context:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->storageScopeIdentifier:Lorg/godotengine/godot/io/StorageScope$Identifier;

    .line 17
    .line 18
    const-string p2, "storage"

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string p2, "null cannot be cast to non-null type android.os.storage.StorageManager"

    .line 25
    .line 26
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    check-cast p1, Landroid/os/storage/StorageManager;

    .line 30
    .line 31
    iput-object p1, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->storageManager:Landroid/os/storage/StorageManager;

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    iput p1, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->lastDirId:I

    .line 35
    .line 36
    new-instance p1, Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->dirs:Landroid/util/SparseArray;

    .line 42
    .line 43
    return-void
.end method

.method private final inScope(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->storageScopeIdentifier:Lorg/godotengine/godot/io/StorageScope$Identifier;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/godotengine/godot/io/StorageScope$Identifier;->identifyStorageScope(Ljava/lang/String;)Lorg/godotengine/godot/io/StorageScope;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Lorg/godotengine/godot/io/StorageScope;->UNKNOWN:Lorg/godotengine/godot/io/StorageScope;

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lorg/godotengine/godot/io/StorageScope;->ASSETS:Lorg/godotengine/godot/io/StorageScope;

    .line 12
    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    return p1
.end method


# virtual methods
.method public dirClose(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->dirs:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public dirExists(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->inScope(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v3, "Path "

    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, " is not accessible."

    .line 26
    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return v1

    .line 38
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 39
    .line 40
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 44
    .line 45
    .line 46
    move-result p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    return p1

    .line 48
    :catch_0
    return v1
.end method

.method public dirIsDir(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->dirs:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;

    .line 8
    .line 9
    invoke-virtual {p1}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->getCurrent()I

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
    invoke-virtual {p1}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->getFiles()[Ljava/io/File;

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
    invoke-virtual {p1}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->getFiles()[Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    aget-object p1, p1, v0

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    return p1
.end method

.method public dirNext(I)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->dirs:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;

    .line 8
    .line 9
    invoke-virtual {p1}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->getCurrent()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->getFiles()[Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    array-length v1, v1

    .line 18
    if-lt v0, v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->getCurrent()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->setCurrent(I)V

    .line 27
    .line 28
    .line 29
    const-string p1, ""

    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_0
    invoke-virtual {p1}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->getFiles()[Ljava/io/File;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->getCurrent()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    add-int/lit8 v2, v1, 0x1

    .line 41
    .line 42
    invoke-virtual {p1, v2}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->setCurrent(I)V

    .line 43
    .line 44
    .line 45
    aget-object p1, v0, v1

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v0, "getName(...)"

    .line 52
    .line 53
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-object p1
.end method

.method public dirOpen(Ljava/lang/String;)I
    .locals 8

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->inScope(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, -0x1

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v3, "Path "

    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, " is not accessible."

    .line 26
    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return v1

    .line 38
    :cond_0
    new-instance v3, Ljava/io/File;

    .line 39
    .line 40
    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_1

    .line 48
    .line 49
    return v1

    .line 50
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    if-nez v4, :cond_2

    .line 55
    .line 56
    return v1

    .line 57
    :cond_2
    new-instance v2, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;

    .line 58
    .line 59
    const/4 v6, 0x4

    .line 60
    const/4 v7, 0x0

    .line 61
    const/4 v5, 0x0

    .line 62
    invoke-direct/range {v2 .. v7}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;-><init>(Ljava/io/File;[Ljava/io/File;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->dirs:Landroid/util/SparseArray;

    .line 66
    .line 67
    iget v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->lastDirId:I

    .line 68
    .line 69
    add-int/lit8 v0, v0, 0x1

    .line 70
    .line 71
    iput v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->lastDirId:I

    .line 72
    .line 73
    invoke-virtual {p1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iget p1, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->lastDirId:I

    .line 77
    .line 78
    return p1
.end method

.method public fileExists(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lorg/godotengine/godot/io/file/FileAccessHandler;->Companion:Lorg/godotengine/godot/io/file/FileAccessHandler$Companion;

    .line 7
    .line 8
    iget-object v1, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->context:Landroid/content/Context;

    .line 9
    .line 10
    iget-object v2, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->storageScopeIdentifier:Lorg/godotengine/godot/io/StorageScope$Identifier;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2, p1}, Lorg/godotengine/godot/io/file/FileAccessHandler$Companion;->fileExists$lib_templateRelease(Landroid/content/Context;Lorg/godotengine/godot/io/StorageScope$Identifier;Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public getDrive(I)Ljava/lang/String;
    .locals 2

    .line 1
    if-ltz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->storageManager:Landroid/os/storage/StorageManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-lt p1, v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->storageManager:Landroid/os/storage/StorageManager;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroid/os/storage/StorageVolume;

    .line 27
    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 29
    .line 30
    const/16 v1, 0x1e

    .line 31
    .line 32
    if-lt v0, v1, :cond_2

    .line 33
    .line 34
    invoke-static {p1}, Landroidx/core/view/o;->h(Landroid/os/storage/StorageVolume;)Ljava/io/File;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    return-object p1

    .line 48
    :cond_2
    :goto_0
    const-string p1, ""

    .line 49
    .line 50
    return-object p1
.end method

.method public getDriveCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->storageManager:Landroid/os/storage/StorageManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getSpaceLeft()J
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UsableSpace"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->context:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0

    .line 15
    :cond_0
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    return-wide v0
.end method

.method public hasDirId(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->dirs:Landroid/util/SparseArray;

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
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->dirs:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;

    .line 8
    .line 9
    invoke-virtual {p1}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->getCurrent()I

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
    invoke-virtual {p1}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->getFiles()[Ljava/io/File;

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
    invoke-virtual {p1}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->getFiles()[Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    aget-object p1, p1, v0

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    return p1
.end method

.method public makeDir(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "dir"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->inScope(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v3, "Directory "

    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, " is not accessible."

    .line 26
    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return v1

    .line 38
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 39
    .line 40
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 50
    .line 51
    .line 52
    move-result p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    return v1

    .line 57
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 58
    return p1

    .line 59
    :catch_0
    return v1
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "filename"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->inScope(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v3, "Filename "

    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, " is not accessible."

    .line 26
    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return v1

    .line 38
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 39
    .line 40
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    return p1

    .line 60
    :cond_1
    sget-object v0, Lorg/godotengine/godot/io/file/FileAccessHandler;->Companion:Lorg/godotengine/godot/io/file/FileAccessHandler$Companion;

    .line 61
    .line 62
    iget-object v2, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->context:Landroid/content/Context;

    .line 63
    .line 64
    iget-object v3, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->storageScopeIdentifier:Lorg/godotengine/godot/io/StorageScope$Identifier;

    .line 65
    .line 66
    invoke-virtual {v0, v2, v3, p1}, Lorg/godotengine/godot/io/file/FileAccessHandler$Companion;->removeFile$lib_templateRelease(Landroid/content/Context;Lorg/godotengine/godot/io/StorageScope$Identifier;Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    return p1

    .line 71
    :cond_2
    const/4 p1, 0x1

    .line 72
    return p1

    .line 73
    :catch_0
    return v1
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

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
    invoke-direct {p0, p1}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->inScope(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-direct {p0, p2}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->inScope(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 26
    .line 27
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    new-instance p1, Ljava/io/File;

    .line 37
    .line 38
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    return p1

    .line 46
    :cond_1
    sget-object v0, Lorg/godotengine/godot/io/file/FileAccessHandler;->Companion:Lorg/godotengine/godot/io/file/FileAccessHandler$Companion;

    .line 47
    .line 48
    iget-object v2, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->context:Landroid/content/Context;

    .line 49
    .line 50
    iget-object v3, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->storageScopeIdentifier:Lorg/godotengine/godot/io/StorageScope$Identifier;

    .line 51
    .line 52
    invoke-virtual {v0, v2, v3, p1, p2}, Lorg/godotengine/godot/io/file/FileAccessHandler$Companion;->renameFile$lib_templateRelease(Landroid/content/Context;Lorg/godotengine/godot/io/StorageScope$Identifier;Ljava/lang/String;Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    return p1

    .line 57
    :catch_0
    return v1

    .line 58
    :cond_2
    :goto_0
    sget-object v0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->TAG:Ljava/lang/String;

    .line 59
    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v3, "Argument filenames are not accessible:\nfrom: "

    .line 63
    .line 64
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p1, "\nto: "

    .line 71
    .line 72
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    return v1
.end method
