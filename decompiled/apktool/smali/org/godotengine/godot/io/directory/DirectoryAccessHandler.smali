.class public final Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;,
        Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$Companion;,
        Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$DirectoryAccess;,
        Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0010\t\n\u0002\u0008\t\u0018\u0000 /2\u00020\u0001:\u0003/01B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0011J\u0018\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0018\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u00182\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0011J\u000e\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u0018J\u000e\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001c\u001a\u00020\u0018J\u000e\u0010\u001f\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u0018J\u000e\u0010 \u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u0018J\u0018\u0010!\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u00182\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0011J\u0018\u0010\"\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u00182\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0011J\u000e\u0010#\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0018J\u0016\u0010$\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u00182\u0006\u0010%\u001a\u00020\u0018J\u0018\u0010&\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u00182\u0008\u0010\'\u001a\u0004\u0018\u00010\u0011J\u000e\u0010(\u001a\u00020)2\u0006\u0010\u001a\u001a\u00020\u0018J\u001e\u0010*\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u00182\u0006\u0010+\u001a\u00020\u00112\u0006\u0010,\u001a\u00020\u0011J\u0018\u0010-\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u00182\u0008\u0010.\u001a\u0004\u0018\u00010\u0011R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00062"
    }
    d2 = {
        "Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "storageScopeIdentifier",
        "Lorg/godotengine/godot/io/StorageScope$Identifier;",
        "assetsDirAccess",
        "Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;",
        "fileSystemDirAccess",
        "Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;",
        "lock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "assetsFileExists",
        "",
        "assetsPath",
        "",
        "filesystemFileExists",
        "path",
        "hasDirId",
        "accessType",
        "Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;",
        "dirId",
        "",
        "dirOpen",
        "nativeAccessType",
        "dirNext",
        "dirAccessId",
        "dirClose",
        "",
        "dirIsDir",
        "isCurrentHidden",
        "dirExists",
        "fileExists",
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
        "AccessType",
        "DirectoryAccess",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDirectoryAccessHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DirectoryAccessHandler.kt\norg/godotengine/godot/io/directory/DirectoryAccessHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,321:1\n1#2:322\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$Companion;

.field public static final INVALID_DIR_ID:I = -0x1

.field public static final STARTING_DIR_ID:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final assetsDirAccess:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;

.field private final fileSystemDirAccess:Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final storageScopeIdentifier:Lorg/godotengine/godot/io/StorageScope$Identifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->Companion:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$Companion;

    .line 8
    .line 9
    const-string v0, "DirectoryAccessHandler"

    .line 10
    .line 11
    sput-object v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

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
    new-instance v0, Lorg/godotengine/godot/io/StorageScope$Identifier;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Lorg/godotengine/godot/io/StorageScope$Identifier;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->storageScopeIdentifier:Lorg/godotengine/godot/io/StorageScope$Identifier;

    .line 15
    .line 16
    new-instance v1, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;

    .line 17
    .line 18
    invoke-direct {v1, p1}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->assetsDirAccess:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;

    .line 22
    .line 23
    new-instance v1, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;

    .line 24
    .line 25
    invoke-direct {v1, p1, v0}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;-><init>(Landroid/content/Context;Lorg/godotengine/godot/io/StorageScope$Identifier;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->fileSystemDirAccess:Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;

    .line 29
    .line 30
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 36
    .line 37
    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private final hasDirId(Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;I)Z
    .locals 1

    .line 1
    sget-object v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->assetsDirAccess:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->hasDirId(I)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :cond_0
    iget-object p1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->fileSystemDirAccess:Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->hasDirId(I)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
.end method


# virtual methods
.method public final assetsFileExists(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const-string v0, "assetsPath"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->assetsDirAccess:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->fileExists(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 18
    .line 19
    .line 20
    return p1

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method public final dirClose(I)V
    .locals 4

    .line 1
    const-string v0, "dirClose: Invalid dir id: "

    .line 2
    .line 3
    iget-object v1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    sget-object v2, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->Companion:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;

    .line 9
    .line 10
    invoke-virtual {v2, p1}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;->fromDirAccessId(I)Lkotlin/Pair;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    .line 19
    .line 20
    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Ljava/lang/Number;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    invoke-direct {p0, v2, p1}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->hasDirId(Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;I)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    sget-object v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    aget v0, v0, v2

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    if-ne v0, v2, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->assetsDirAccess:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->dirClose(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    goto :goto_2

    .line 58
    :cond_1
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->fileSystemDirAccess:Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->dirClose(I)V

    .line 61
    .line 62
    .line 63
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    :goto_1
    :try_start_1
    sget-object v2, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->TAG:Ljava/lang/String;

    .line 70
    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .line 85
    .line 86
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :goto_2
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 91
    .line 92
    .line 93
    throw p1
.end method

.method public final dirExists(ILjava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 10
    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->storageScopeIdentifier:Lorg/godotengine/godot/io/StorageScope$Identifier;

    .line 14
    .line 15
    invoke-virtual {v2, p2}, Lorg/godotengine/godot/io/StorageScope$Identifier;->identifyStorageScope(Ljava/lang/String;)Lorg/godotengine/godot/io/StorageScope;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    sget-object v3, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->Companion:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;

    .line 20
    .line 21
    invoke-virtual {v3, p1, v2}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;->fromNative(ILorg/godotengine/godot/io/StorageScope;)Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    .line 22
    .line 23
    .line 24
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 28
    .line 29
    .line 30
    return v1

    .line 31
    :cond_1
    :try_start_1
    sget-object v1, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    aget p1, v1, p1

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    if-ne p1, v1, :cond_2

    .line 41
    .line 42
    iget-object p1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->assetsDirAccess:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->dirExists(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    iget-object p1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->fileSystemDirAccess:Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->dirExists(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 58
    .line 59
    .line 60
    return p1

    .line 61
    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 62
    .line 63
    .line 64
    throw p1
.end method

.method public final dirIsDir(I)Z
    .locals 4

    .line 1
    const-string v0, "dirIsDir: Invalid dir id: "

    .line 2
    .line 3
    iget-object v1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    sget-object v2, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->Companion:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;

    .line 9
    .line 10
    invoke-virtual {v2, p1}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;->fromDirAccessId(I)Lkotlin/Pair;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    .line 19
    .line 20
    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Ljava/lang/Number;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    invoke-direct {p0, v2, p1}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->hasDirId(Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;I)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    sget-object v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    aget v0, v0, v2

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    if-ne v0, v2, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->assetsDirAccess:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->dirIsDir(I)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    goto :goto_2

    .line 59
    :cond_1
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->fileSystemDirAccess:Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->dirIsDir(I)Z

    .line 62
    .line 63
    .line 64
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :goto_0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 66
    .line 67
    .line 68
    return p1

    .line 69
    :cond_2
    :goto_1
    :try_start_1
    sget-object v2, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->TAG:Ljava/lang/String;

    .line 70
    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .line 85
    .line 86
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 87
    .line 88
    .line 89
    const/4 p1, 0x0

    .line 90
    return p1

    .line 91
    :goto_2
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 92
    .line 93
    .line 94
    throw p1
.end method

.method public final dirNext(I)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "dirNext: Invalid dir id: "

    .line 2
    .line 3
    iget-object v1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    sget-object v2, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->Companion:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;

    .line 9
    .line 10
    invoke-virtual {v2, p1}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;->fromDirAccessId(I)Lkotlin/Pair;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    .line 19
    .line 20
    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Ljava/lang/Number;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    invoke-direct {p0, v2, p1}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->hasDirId(Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;I)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    sget-object v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    aget v0, v0, v2

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    if-ne v0, v2, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->assetsDirAccess:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->dirNext(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    goto :goto_2

    .line 59
    :cond_1
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->fileSystemDirAccess:Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->dirNext(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :goto_0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 66
    .line 67
    .line 68
    return-object p1

    .line 69
    :cond_2
    :goto_1
    :try_start_1
    sget-object v2, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->TAG:Ljava/lang/String;

    .line 70
    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    const-string p1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .line 88
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 89
    .line 90
    .line 91
    return-object p1

    .line 92
    :goto_2
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 93
    .line 94
    .line 95
    throw p1
.end method

.method public final dirOpen(ILjava/lang/String;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 10
    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->storageScopeIdentifier:Lorg/godotengine/godot/io/StorageScope$Identifier;

    .line 14
    .line 15
    invoke-virtual {v2, p2}, Lorg/godotengine/godot/io/StorageScope$Identifier;->identifyStorageScope(Ljava/lang/String;)Lorg/godotengine/godot/io/StorageScope;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    sget-object v3, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->Companion:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;

    .line 20
    .line 21
    invoke-virtual {v3, p1, v2}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;->fromNative(ILorg/godotengine/godot/io/StorageScope;)Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    .line 22
    .line 23
    .line 24
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 28
    .line 29
    .line 30
    return v1

    .line 31
    :cond_1
    :try_start_1
    sget-object v2, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    aget v2, v2, v3

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    if-ne v2, v3, :cond_2

    .line 41
    .line 42
    iget-object v2, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->assetsDirAccess:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;

    .line 43
    .line 44
    invoke-virtual {v2, p2}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->dirOpen(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    iget-object v2, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->fileSystemDirAccess:Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;

    .line 52
    .line 53
    invoke-virtual {v2, p2}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->dirOpen(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :goto_0
    if-ne p2, v1, :cond_3

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 60
    .line 61
    .line 62
    return v1

    .line 63
    :cond_3
    :try_start_2
    invoke-virtual {p1, p2}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->generateDirAccessId(I)I

    .line 64
    .line 65
    .line 66
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 68
    .line 69
    .line 70
    return p1

    .line 71
    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 72
    .line 73
    .line 74
    throw p1
.end method

.method public final fileExists(ILjava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 10
    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->storageScopeIdentifier:Lorg/godotengine/godot/io/StorageScope$Identifier;

    .line 14
    .line 15
    invoke-virtual {v2, p2}, Lorg/godotengine/godot/io/StorageScope$Identifier;->identifyStorageScope(Ljava/lang/String;)Lorg/godotengine/godot/io/StorageScope;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    sget-object v3, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->Companion:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;

    .line 20
    .line 21
    invoke-virtual {v3, p1, v2}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;->fromNative(ILorg/godotengine/godot/io/StorageScope;)Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    .line 22
    .line 23
    .line 24
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 28
    .line 29
    .line 30
    return v1

    .line 31
    :cond_1
    :try_start_1
    sget-object v1, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    aget p1, v1, p1

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    if-ne p1, v1, :cond_2

    .line 41
    .line 42
    iget-object p1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->assetsDirAccess:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->fileExists(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    iget-object p1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->fileSystemDirAccess:Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->fileExists(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 58
    .line 59
    .line 60
    return p1

    .line 61
    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 62
    .line 63
    .line 64
    throw p1
.end method

.method public final filesystemFileExists(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->fileSystemDirAccess:Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->fileExists(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 18
    .line 19
    .line 20
    return p1

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method public final getDrive(II)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v1, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->Companion:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static {v1, p1, v3, v2, v3}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;->fromNative$default(Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;ILorg/godotengine/godot/io/StorageScope;ILjava/lang/Object;)Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const-string p1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :try_start_1
    sget-object v1, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    aget p1, v1, p1

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    if-ne p1, v1, :cond_1

    .line 34
    .line 35
    iget-object p1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->assetsDirAccess:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->getDrive(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object p1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->fileSystemDirAccess:Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->getDrive(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 49
    .line 50
    .line 51
    return-object p1

    .line 52
    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 53
    .line 54
    .line 55
    throw p1
.end method

.method public final getDriveCount(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v1, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->Companion:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static {v1, p1, v3, v2, v3}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;->fromNative$default(Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;ILorg/godotengine/godot/io/StorageScope;ILjava/lang/Object;)Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    .line 11
    .line 12
    .line 13
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return p1

    .line 21
    :cond_0
    :try_start_1
    sget-object v1, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    aget p1, v1, p1

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    if-ne p1, v1, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->assetsDirAccess:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;

    .line 33
    .line 34
    invoke-virtual {p1}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->getDriveCount()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    iget-object p1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->fileSystemDirAccess:Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;

    .line 42
    .line 43
    invoke-virtual {p1}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->getDriveCount()I

    .line 44
    .line 45
    .line 46
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 48
    .line 49
    .line 50
    return p1

    .line 51
    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 52
    .line 53
    .line 54
    throw p1
.end method

.method public final getSpaceLeft(I)J
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v1, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->Companion:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static {v1, p1, v3, v2, v3}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;->fromNative$default(Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;ILorg/godotengine/godot/io/StorageScope;ILjava/lang/Object;)Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    .line 11
    .line 12
    .line 13
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17
    .line 18
    .line 19
    const-wide/16 v0, 0x0

    .line 20
    .line 21
    return-wide v0

    .line 22
    :cond_0
    :try_start_1
    sget-object v1, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    aget p1, v1, p1

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    if-ne p1, v1, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->assetsDirAccess:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;

    .line 34
    .line 35
    invoke-virtual {p1}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->getSpaceLeft()J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    iget-object p1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->fileSystemDirAccess:Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;

    .line 43
    .line 44
    invoke-virtual {p1}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->getSpaceLeft()J

    .line 45
    .line 46
    .line 47
    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 49
    .line 50
    .line 51
    return-wide v1

    .line 52
    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 53
    .line 54
    .line 55
    throw p1
.end method

.method public final isCurrentHidden(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v1, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->Companion:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;->fromDirAccessId(I)Lkotlin/Pair;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    .line 17
    .line 18
    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Ljava/lang/Number;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-direct {p0, v1, p1}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->hasDirId(Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;I)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    sget-object v2, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    aget v1, v2, v1

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    if-ne v1, v2, :cond_1

    .line 47
    .line 48
    iget-object v1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->assetsDirAccess:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;

    .line 49
    .line 50
    invoke-virtual {v1, p1}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->isCurrentHidden(I)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    goto :goto_2

    .line 57
    :cond_1
    iget-object v1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->fileSystemDirAccess:Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;

    .line 58
    .line 59
    invoke-virtual {v1, p1}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->isCurrentHidden(I)Z

    .line 60
    .line 61
    .line 62
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 64
    .line 65
    .line 66
    return p1

    .line 67
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 68
    .line 69
    .line 70
    const/4 p1, 0x0

    .line 71
    return p1

    .line 72
    :goto_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 73
    .line 74
    .line 75
    throw p1
.end method

.method public final makeDir(ILjava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 10
    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->storageScopeIdentifier:Lorg/godotengine/godot/io/StorageScope$Identifier;

    .line 14
    .line 15
    invoke-virtual {v2, p2}, Lorg/godotengine/godot/io/StorageScope$Identifier;->identifyStorageScope(Ljava/lang/String;)Lorg/godotengine/godot/io/StorageScope;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    sget-object v3, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->Companion:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;

    .line 20
    .line 21
    invoke-virtual {v3, p1, v2}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;->fromNative(ILorg/godotengine/godot/io/StorageScope;)Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    .line 22
    .line 23
    .line 24
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 28
    .line 29
    .line 30
    return v1

    .line 31
    :cond_1
    :try_start_1
    sget-object v1, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    aget p1, v1, p1

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    if-ne p1, v1, :cond_2

    .line 41
    .line 42
    iget-object p1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->assetsDirAccess:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->makeDir(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    iget-object p1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->fileSystemDirAccess:Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->makeDir(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 58
    .line 59
    .line 60
    return p1

    .line 61
    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 62
    .line 63
    .line 64
    throw p1
.end method

.method public final remove(ILjava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 10
    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->storageScopeIdentifier:Lorg/godotengine/godot/io/StorageScope$Identifier;

    .line 14
    .line 15
    invoke-virtual {v2, p2}, Lorg/godotengine/godot/io/StorageScope$Identifier;->identifyStorageScope(Ljava/lang/String;)Lorg/godotengine/godot/io/StorageScope;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    sget-object v3, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->Companion:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;

    .line 20
    .line 21
    invoke-virtual {v3, p1, v2}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;->fromNative(ILorg/godotengine/godot/io/StorageScope;)Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    .line 22
    .line 23
    .line 24
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 28
    .line 29
    .line 30
    return v1

    .line 31
    :cond_1
    :try_start_1
    sget-object v1, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    aget p1, v1, p1

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    if-ne p1, v1, :cond_2

    .line 41
    .line 42
    iget-object p1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->assetsDirAccess:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->remove(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    iget-object p1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->fileSystemDirAccess:Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->remove(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 58
    .line 59
    .line 60
    return p1

    .line 61
    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 62
    .line 63
    .line 64
    throw p1
.end method

.method public final rename(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "from"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "to"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    sget-object v1, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->Companion:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static {v1, p1, v3, v2, v3}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;->fromNative$default(Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;ILorg/godotengine/godot/io/StorageScope;ILjava/lang/Object;)Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    .line 21
    .line 22
    .line 23
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    return p1

    .line 31
    :cond_0
    :try_start_1
    sget-object v1, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    aget p1, v1, p1

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    if-ne p1, v1, :cond_1

    .line 41
    .line 42
    iget-object p1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->assetsDirAccess:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;

    .line 43
    .line 44
    invoke-virtual {p1, p2, p3}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->rename(Ljava/lang/String;Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    iget-object p1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->fileSystemDirAccess:Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;

    .line 52
    .line 53
    invoke-virtual {p1, p2, p3}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->rename(Ljava/lang/String;Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 58
    .line 59
    .line 60
    return p1

    .line 61
    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 62
    .line 63
    .line 64
    throw p1
.end method
