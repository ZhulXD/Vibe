.class public final Lorg/godotengine/godot/io/file/FileAccessHandler;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/io/file/FileAccessHandler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0018\u0000 =2\u00020\u0001:\u0001=B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0010H\u0002J\u0010\u0010\u0016\u001a\u00020\u00142\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018J\u0018\u0010\u0019\u001a\u00020\u00102\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u001b\u001a\u00020\u0010J-\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u00100\u001c2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0000\u00a2\u0006\u0002\u0008 J\u000e\u0010!\u001a\u00020\"2\u0006\u0010\u0015\u001a\u00020\u0010J\u0016\u0010#\u001a\u00020$2\u0006\u0010\u0015\u001a\u00020\u00102\u0006\u0010%\u001a\u00020\"J\u0016\u0010&\u001a\u00020$2\u0006\u0010\u0015\u001a\u00020\u00102\u0006\u0010%\u001a\u00020\"J\u0018\u0010\'\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00102\u0008\u0010(\u001a\u0004\u0018\u00010)J\u0018\u0010*\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00102\u0008\u0010(\u001a\u0004\u0018\u00010)J\u000e\u0010+\u001a\u00020$2\u0006\u0010\u0015\u001a\u00020\u0010J\u0012\u0010,\u001a\u0004\u0018\u00010-2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0018J\u0016\u0010.\u001a\u00020\u00142\u0006\u0010/\u001a\u00020\u00182\u0006\u00100\u001a\u00020\u0018J\u0010\u00101\u001a\u00020\u00142\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0018J\u0010\u00102\u001a\u00020\"2\u0008\u00103\u001a\u0004\u0018\u00010\u0018J\u0010\u00104\u001a\u00020\"2\u0008\u00103\u001a\u0004\u0018\u00010\u0018J\u0016\u00105\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00102\u0006\u00106\u001a\u00020\"J\u0010\u00107\u001a\u00020\"2\u0008\u00103\u001a\u0004\u0018\u00010\u0018J\u000e\u00108\u001a\u00020\"2\u0006\u0010\u0015\u001a\u00020\u0010J\u000e\u00109\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0010J\u0016\u0010:\u001a\u00020$2\u0006\u0010\u0015\u001a\u00020\u00102\u0006\u0010;\u001a\u00020\u0014J\u000e\u0010<\u001a\u00020$2\u0006\u0010\u0015\u001a\u00020\u0010R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\tX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006>"
    }
    d2 = {
        "Lorg/godotengine/godot/io/file/FileAccessHandler;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "storageScopeIdentifier",
        "Lorg/godotengine/godot/io/StorageScope$Identifier;",
        "getStorageScopeIdentifier$lib_templateRelease",
        "()Lorg/godotengine/godot/io/StorageScope$Identifier;",
        "files",
        "Landroid/util/SparseArray;",
        "Lorg/godotengine/godot/io/file/DataAccess;",
        "lastFileId",
        "",
        "lock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "hasFileId",
        "",
        "fileId",
        "canAccess",
        "filePath",
        "",
        "fileOpen",
        "path",
        "modeFlags",
        "Lkotlin/Pair;",
        "Lorg/godotengine/godot/error/Error;",
        "accessFlag",
        "Lorg/godotengine/godot/io/file/FileAccessFlags;",
        "fileOpen$lib_templateRelease",
        "fileGetSize",
        "",
        "fileSeek",
        "",
        "position",
        "fileSeekFromEnd",
        "fileRead",
        "byteBuffer",
        "Ljava/nio/ByteBuffer;",
        "fileWrite",
        "fileFlush",
        "getInputStream",
        "Ljava/io/InputStream;",
        "renameFile",
        "from",
        "to",
        "fileExists",
        "fileLastModified",
        "filepath",
        "fileLastAccessed",
        "fileResize",
        "length",
        "fileSize",
        "fileGetPosition",
        "isFileEof",
        "setFileEof",
        "eof",
        "fileClose",
        "Companion",
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
.field public static final Companion:Lorg/godotengine/godot/io/file/FileAccessHandler$Companion;

.field private static final FILE_OPEN_FAILED:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Lorg/godotengine/godot/error/Error;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final INVALID_FILE_ID:I = 0x0

.field private static final STARTING_FILE_ID:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final files:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/godotengine/godot/io/file/DataAccess;",
            ">;"
        }
    .end annotation
.end field

.field private lastFileId:I

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final storageScopeIdentifier:Lorg/godotengine/godot/io/StorageScope$Identifier;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/godotengine/godot/io/file/FileAccessHandler$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/godotengine/godot/io/file/FileAccessHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/godotengine/godot/io/file/FileAccessHandler;->Companion:Lorg/godotengine/godot/io/file/FileAccessHandler$Companion;

    .line 8
    .line 9
    const-string v0, "FileAccessHandler"

    .line 10
    .line 11
    sput-object v0, Lorg/godotengine/godot/io/file/FileAccessHandler;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v0, Lkotlin/Pair;

    .line 14
    .line 15
    sget-object v1, Lorg/godotengine/godot/error/Error;->FAILED:Lorg/godotengine/godot/error/Error;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lorg/godotengine/godot/io/file/FileAccessHandler;->FILE_OPEN_FAILED:Lkotlin/Pair;

    .line 26
    .line 27
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
    iput-object p1, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->context:Landroid/content/Context;

    .line 10
    .line 11
    new-instance v0, Lorg/godotengine/godot/io/StorageScope$Identifier;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lorg/godotengine/godot/io/StorageScope$Identifier;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->storageScopeIdentifier:Lorg/godotengine/godot/io/StorageScope$Identifier;

    .line 17
    .line 18
    new-instance p1, Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->files:Landroid/util/SparseArray;

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    iput p1, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->lastFileId:I

    .line 27
    .line 28
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 34
    .line 35
    return-void
.end method

.method private final hasFileId(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->files:Landroid/util/SparseArray;

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


# virtual methods
.method public final canAccess(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->storageScopeIdentifier:Lorg/godotengine/godot/io/StorageScope$Identifier;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/godotengine/godot/io/StorageScope$Identifier;->canAccess(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final fileClose(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0, p1}, Lorg/godotengine/godot/io/file/FileAccessHandler;->hasFileId(I)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->files:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lorg/godotengine/godot/io/file/DataAccess;

    .line 19
    .line 20
    invoke-virtual {v1}, Lorg/godotengine/godot/io/file/DataAccess;->close()V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->files:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

.method public final fileExists(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lorg/godotengine/godot/io/file/FileAccessHandler;->Companion:Lorg/godotengine/godot/io/file/FileAccessHandler$Companion;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->context:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->storageScopeIdentifier:Lorg/godotengine/godot/io/StorageScope$Identifier;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2, p1}, Lorg/godotengine/godot/io/file/FileAccessHandler$Companion;->fileExists$lib_templateRelease(Landroid/content/Context;Lorg/godotengine/godot/io/StorageScope$Identifier;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public final fileFlush(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0, p1}, Lorg/godotengine/godot/io/file/FileAccessHandler;->hasFileId(I)Z

    .line 7
    .line 8
    .line 9
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->files:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lorg/godotengine/godot/io/file/DataAccess;

    .line 23
    .line 24
    invoke-virtual {p1}, Lorg/godotengine/godot/io/file/DataAccess;->flush()V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method public final fileGetPosition(I)J
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0, p1}, Lorg/godotengine/godot/io/file/FileAccessHandler;->hasFileId(I)Z

    .line 7
    .line 8
    .line 9
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 13
    .line 14
    .line 15
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    return-wide v0

    .line 18
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->files:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lorg/godotengine/godot/io/file/DataAccess;

    .line 25
    .line 26
    invoke-virtual {p1}, Lorg/godotengine/godot/io/file/DataAccess;->position()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 31
    .line 32
    .line 33
    return-wide v1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public final fileGetSize(I)J
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0, p1}, Lorg/godotengine/godot/io/file/FileAccessHandler;->hasFileId(I)Z

    .line 7
    .line 8
    .line 9
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 13
    .line 14
    .line 15
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    return-wide v0

    .line 18
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->files:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lorg/godotengine/godot/io/file/DataAccess;

    .line 25
    .line 26
    invoke-virtual {p1}, Lorg/godotengine/godot/io/file/DataAccess;->size()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 31
    .line 32
    .line 33
    return-wide v1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public final fileLastAccessed(Ljava/lang/String;)J
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->storageScopeIdentifier:Lorg/godotengine/godot/io/StorageScope$Identifier;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/godotengine/godot/io/StorageScope$Identifier;->identifyStorageScope(Ljava/lang/String;)Lorg/godotengine/godot/io/StorageScope;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lorg/godotengine/godot/io/StorageScope;->UNKNOWN:Lorg/godotengine/godot/io/StorageScope;

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    return-wide v2

    .line 14
    :cond_0
    if-eqz p1, :cond_1

    .line 15
    .line 16
    :try_start_0
    sget-object v1, Lorg/godotengine/godot/io/file/DataAccess;->Companion:Lorg/godotengine/godot/io/file/DataAccess$Companion;

    .line 17
    .line 18
    iget-object v4, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->context:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v1, v0, v4, p1}, Lorg/godotengine/godot/io/file/DataAccess$Companion;->fileLastAccessed(Lorg/godotengine/godot/io/StorageScope;Landroid/content/Context;Ljava/lang/String;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-wide v0

    .line 25
    :catch_0
    :cond_1
    return-wide v2
.end method

.method public final fileLastModified(Ljava/lang/String;)J
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->storageScopeIdentifier:Lorg/godotengine/godot/io/StorageScope$Identifier;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/godotengine/godot/io/StorageScope$Identifier;->identifyStorageScope(Ljava/lang/String;)Lorg/godotengine/godot/io/StorageScope;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lorg/godotengine/godot/io/StorageScope;->UNKNOWN:Lorg/godotengine/godot/io/StorageScope;

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    return-wide v2

    .line 14
    :cond_0
    if-eqz p1, :cond_1

    .line 15
    .line 16
    :try_start_0
    sget-object v1, Lorg/godotengine/godot/io/file/DataAccess;->Companion:Lorg/godotengine/godot/io/file/DataAccess$Companion;

    .line 17
    .line 18
    iget-object v4, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->context:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v1, v0, v4, p1}, Lorg/godotengine/godot/io/file/DataAccess$Companion;->fileLastModified(Lorg/godotengine/godot/io/StorageScope;Landroid/content/Context;Ljava/lang/String;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-wide v0

    .line 25
    :catch_0
    :cond_1
    return-wide v2
.end method

.method public final fileOpen(Ljava/lang/String;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v1, Lorg/godotengine/godot/io/file/FileAccessFlags;->Companion:Lorg/godotengine/godot/io/file/FileAccessFlags$Companion;

    .line 7
    .line 8
    invoke-virtual {v1, p2}, Lorg/godotengine/godot/io/file/FileAccessFlags$Companion;->fromNativeModeFlags(I)Lorg/godotengine/godot/io/file/FileAccessFlags;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/godotengine/godot/io/file/FileAccessHandler;->fileOpen$lib_templateRelease(Ljava/lang/String;Lorg/godotengine/godot/io/file/FileAccessFlags;)Lkotlin/Pair;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    check-cast p2, Lorg/godotengine/godot/error/Error;

    .line 21
    .line 22
    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/lang/Number;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    sget-object v1, Lorg/godotengine/godot/error/Error;->OK:Lorg/godotengine/godot/error/Error;

    .line 33
    .line 34
    if-ne p2, v1, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p2}, Lorg/godotengine/godot/error/Error;->toNativeValue()I

    .line 38
    .line 39
    .line 40
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    neg-int p1, p1

    .line 42
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 43
    .line 44
    .line 45
    return p1

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 48
    .line 49
    .line 50
    throw p1
.end method

.method public final fileOpen$lib_templateRelease(Ljava/lang/String;Lorg/godotengine/godot/io/file/FileAccessFlags;)Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/godotengine/godot/io/file/FileAccessFlags;",
            ")",
            "Lkotlin/Pair<",
            "Lorg/godotengine/godot/error/Error;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    sget-object p1, Lorg/godotengine/godot/io/file/FileAccessHandler;->FILE_OPEN_FAILED:Lkotlin/Pair;

    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_0
    iget-object v1, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->storageScopeIdentifier:Lorg/godotengine/godot/io/StorageScope$Identifier;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lorg/godotengine/godot/io/StorageScope$Identifier;->identifyStorageScope(Ljava/lang/String;)Lorg/godotengine/godot/io/StorageScope;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget-object v2, Lorg/godotengine/godot/io/StorageScope;->UNKNOWN:Lorg/godotengine/godot/io/StorageScope;

    .line 18
    .line 19
    if-ne v1, v2, :cond_1

    .line 20
    .line 21
    sget-object p1, Lorg/godotengine/godot/io/file/FileAccessHandler;->FILE_OPEN_FAILED:Lkotlin/Pair;

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_1
    if-eqz p1, :cond_3

    .line 25
    .line 26
    :try_start_0
    sget-object v2, Lorg/godotengine/godot/io/file/DataAccess;->Companion:Lorg/godotengine/godot/io/file/DataAccess$Companion;

    .line 27
    .line 28
    iget-object v3, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->context:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {v2, v1, v3, p1, p2}, Lorg/godotengine/godot/io/file/DataAccess$Companion;->generateDataAccess(Lorg/godotengine/godot/io/StorageScope;Landroid/content/Context;Ljava/lang/String;Lorg/godotengine/godot/io/file/FileAccessFlags;)Lorg/godotengine/godot/io/file/DataAccess;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    if-nez p2, :cond_2

    .line 35
    .line 36
    sget-object p1, Lorg/godotengine/godot/io/file/FileAccessHandler;->FILE_OPEN_FAILED:Lkotlin/Pair;

    .line 37
    .line 38
    return-object p1

    .line 39
    :catch_0
    move-exception p2

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget-object v1, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->files:Landroid/util/SparseArray;

    .line 42
    .line 43
    iget v2, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->lastFileId:I

    .line 44
    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    iput v2, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->lastFileId:I

    .line 48
    .line 49
    invoke-virtual {v1, v2, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    new-instance p2, Lkotlin/Pair;

    .line 53
    .line 54
    sget-object v1, Lorg/godotengine/godot/error/Error;->OK:Lorg/godotengine/godot/error/Error;

    .line 55
    .line 56
    iget v2, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->lastFileId:I

    .line 57
    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-direct {p2, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    return-object p2

    .line 66
    :cond_3
    sget-object p1, Lorg/godotengine/godot/io/file/FileAccessHandler;->FILE_OPEN_FAILED:Lkotlin/Pair;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    return-object p1

    .line 69
    :goto_0
    sget-object v0, Lorg/godotengine/godot/io/file/FileAccessHandler;->TAG:Ljava/lang/String;

    .line 70
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v2, "Error while opening "

    .line 74
    .line 75
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    .line 87
    .line 88
    sget-object p1, Lorg/godotengine/godot/io/file/FileAccessHandler;->FILE_OPEN_FAILED:Lkotlin/Pair;

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :catch_1
    new-instance p1, Lkotlin/Pair;

    .line 92
    .line 93
    sget-object p2, Lorg/godotengine/godot/error/Error;->ERR_UNAVAILABLE:Lorg/godotengine/godot/error/Error;

    .line 94
    .line 95
    invoke-direct {p1, p2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catch_2
    new-instance p1, Lkotlin/Pair;

    .line 100
    .line 101
    sget-object p2, Lorg/godotengine/godot/error/Error;->ERR_FILE_NOT_FOUND:Lorg/godotengine/godot/error/Error;

    .line 102
    .line 103
    invoke-direct {p1, p2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :goto_1
    return-object p1
.end method

.method public final fileRead(ILjava/nio/ByteBuffer;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0, p1}, Lorg/godotengine/godot/io/file/FileAccessHandler;->hasFileId(I)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->files:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lorg/godotengine/godot/io/file/DataAccess;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lorg/godotengine/godot/io/file/DataAccess;->read(Ljava/nio/ByteBuffer;)I

    .line 24
    .line 25
    .line 26
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 28
    .line 29
    .line 30
    return p1

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    return p1

    .line 38
    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 39
    .line 40
    .line 41
    throw p1
.end method

.method public final fileResize(IJ)I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0, p1}, Lorg/godotengine/godot/io/file/FileAccessHandler;->hasFileId(I)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    sget-object p1, Lorg/godotengine/godot/error/Error;->FAILED:Lorg/godotengine/godot/error/Error;

    .line 13
    .line 14
    invoke-virtual {p1}, Lorg/godotengine/godot/error/Error;->toNativeValue()I

    .line 15
    .line 16
    .line 17
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 19
    .line 20
    .line 21
    return p1

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->files:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lorg/godotengine/godot/io/file/DataAccess;

    .line 31
    .line 32
    invoke-virtual {p1, p2, p3}, Lorg/godotengine/godot/io/file/DataAccess;->resize(J)Lorg/godotengine/godot/error/Error;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lorg/godotengine/godot/error/Error;->toNativeValue()I

    .line 37
    .line 38
    .line 39
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 41
    .line 42
    .line 43
    return p1

    .line 44
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 45
    .line 46
    .line 47
    throw p1
.end method

.method public final fileSeek(IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0, p1}, Lorg/godotengine/godot/io/file/FileAccessHandler;->hasFileId(I)Z

    .line 7
    .line 8
    .line 9
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->files:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lorg/godotengine/godot/io/file/DataAccess;

    .line 23
    .line 24
    invoke-virtual {p1, p2, p3}, Lorg/godotengine/godot/io/file/DataAccess;->seek(J)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method public final fileSeekFromEnd(IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0, p1}, Lorg/godotengine/godot/io/file/FileAccessHandler;->hasFileId(I)Z

    .line 7
    .line 8
    .line 9
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->files:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lorg/godotengine/godot/io/file/DataAccess;

    .line 23
    .line 24
    invoke-virtual {p1, p2, p3}, Lorg/godotengine/godot/io/file/DataAccess;->seekFromEnd(J)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method public final fileSize(Ljava/lang/String;)J
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->storageScopeIdentifier:Lorg/godotengine/godot/io/StorageScope$Identifier;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/godotengine/godot/io/StorageScope$Identifier;->identifyStorageScope(Ljava/lang/String;)Lorg/godotengine/godot/io/StorageScope;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lorg/godotengine/godot/io/StorageScope;->UNKNOWN:Lorg/godotengine/godot/io/StorageScope;

    .line 8
    .line 9
    const-wide/16 v2, -0x1

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    return-wide v2

    .line 14
    :cond_0
    if-eqz p1, :cond_1

    .line 15
    .line 16
    :try_start_0
    sget-object v1, Lorg/godotengine/godot/io/file/DataAccess;->Companion:Lorg/godotengine/godot/io/file/DataAccess$Companion;

    .line 17
    .line 18
    iget-object v4, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->context:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v1, v0, v4, p1}, Lorg/godotengine/godot/io/file/DataAccess$Companion;->fileSize(Lorg/godotengine/godot/io/StorageScope;Landroid/content/Context;Ljava/lang/String;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-wide v0

    .line 25
    :catch_0
    :cond_1
    return-wide v2
.end method

.method public final fileWrite(ILjava/nio/ByteBuffer;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0, p1}, Lorg/godotengine/godot/io/file/FileAccessHandler;->hasFileId(I)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->files:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lorg/godotengine/godot/io/file/DataAccess;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lorg/godotengine/godot/io/file/DataAccess;->write(Ljava/nio/ByteBuffer;)Z

    .line 24
    .line 25
    .line 26
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 28
    .line 29
    .line 30
    return p1

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    return p1

    .line 38
    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 39
    .line 40
    .line 41
    throw p1
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    .line 1
    sget-object v0, Lorg/godotengine/godot/io/file/FileAccessHandler;->Companion:Lorg/godotengine/godot/io/file/FileAccessHandler$Companion;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->context:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->storageScopeIdentifier:Lorg/godotengine/godot/io/StorageScope$Identifier;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2, p1}, Lorg/godotengine/godot/io/file/FileAccessHandler$Companion;->getInputStream$lib_templateRelease(Landroid/content/Context;Lorg/godotengine/godot/io/StorageScope$Identifier;Ljava/lang/String;)Ljava/io/InputStream;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final getStorageScopeIdentifier$lib_templateRelease()Lorg/godotengine/godot/io/StorageScope$Identifier;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->storageScopeIdentifier:Lorg/godotengine/godot/io/StorageScope$Identifier;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isFileEof(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0, p1}, Lorg/godotengine/godot/io/file/FileAccessHandler;->hasFileId(I)Z

    .line 7
    .line 8
    .line 9
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->files:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lorg/godotengine/godot/io/file/DataAccess;

    .line 24
    .line 25
    invoke-virtual {p1}, Lorg/godotengine/godot/io/file/DataAccess;->getEndOfFile$lib_templateRelease()Z

    .line 26
    .line 27
    .line 28
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 30
    .line 31
    .line 32
    return p1

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method public final renameFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

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
    sget-object v0, Lorg/godotengine/godot/io/file/FileAccessHandler;->Companion:Lorg/godotengine/godot/io/file/FileAccessHandler$Companion;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->context:Landroid/content/Context;

    .line 14
    .line 15
    iget-object v2, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->storageScopeIdentifier:Lorg/godotengine/godot/io/StorageScope$Identifier;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/godotengine/godot/io/file/FileAccessHandler$Companion;->renameFile$lib_templateRelease(Landroid/content/Context;Lorg/godotengine/godot/io/StorageScope$Identifier;Ljava/lang/String;Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public final setFileEof(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lorg/godotengine/godot/io/file/FileAccessHandler;->files:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lorg/godotengine/godot/io/file/DataAccess;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    :try_start_1
    invoke-virtual {p1, p2}, Lorg/godotengine/godot/io/file/DataAccess;->setEndOfFile$lib_templateRelease(Z)V

    .line 21
    .line 22
    .line 23
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 31
    .line 32
    .line 33
    throw p1
.end method
