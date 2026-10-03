.class public final Lorg/godotengine/godot/vulkan/VkThread;
.super Ljava/lang/Thread;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/vulkan/VkThread$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000 ,2\u00020\u0001:\u0001,B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\u001f\u001a\u00020 H\u0002J\u000e\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\nJ\u0006\u0010#\u001a\u00020 J\u000e\u0010#\u001a\u00020\u00122\u0006\u0010$\u001a\u00020%J\u0006\u0010&\u001a\u00020 J\u0006\u0010\'\u001a\u00020 J\u0006\u0010(\u001a\u00020 J\u0016\u0010)\u001a\u00020 2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001aJ\u0006\u0010*\u001a\u00020 J\u0008\u0010+\u001a\u00020 H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00020\n`\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n \u0010*\u0004\u0018\u00010\u000f0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u00020\u00128BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006-"
    }
    d2 = {
        "Lorg/godotengine/godot/vulkan/VkThread;",
        "Ljava/lang/Thread;",
        "vkSurfaceView",
        "Lorg/godotengine/godot/vulkan/VkSurfaceView;",
        "vkRenderer",
        "Lorg/godotengine/godot/vulkan/VkRenderer;",
        "<init>",
        "(Lorg/godotengine/godot/vulkan/VkSurfaceView;Lorg/godotengine/godot/vulkan/VkRenderer;)V",
        "eventQueue",
        "Ljava/util/ArrayList;",
        "Ljava/lang/Runnable;",
        "Lkotlin/collections/ArrayList;",
        "lock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "lockCondition",
        "Ljava/util/concurrent/locks/Condition;",
        "kotlin.jvm.PlatformType",
        "shouldExit",
        "",
        "exited",
        "rendererInitialized",
        "rendererResumed",
        "resumed",
        "surfaceChanged",
        "hasSurface",
        "width",
        "",
        "height",
        "readyToDraw",
        "getReadyToDraw",
        "()Z",
        "threadExiting",
        "",
        "queueEvent",
        "event",
        "requestExitAndWait",
        "timeInMs",
        "",
        "onResume",
        "onPause",
        "onSurfaceCreated",
        "onSurfaceChanged",
        "onSurfaceDestroyed",
        "run",
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
.field public static final Companion:Lorg/godotengine/godot/vulkan/VkThread$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final eventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private exited:Z

.field private hasSurface:Z

.field private height:I

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final lockCondition:Ljava/util/concurrent/locks/Condition;

.field private rendererInitialized:Z

.field private rendererResumed:Z

.field private resumed:Z

.field private shouldExit:Z

.field private surfaceChanged:Z

.field private final vkRenderer:Lorg/godotengine/godot/vulkan/VkRenderer;

.field private final vkSurfaceView:Lorg/godotengine/godot/vulkan/VkSurfaceView;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/godotengine/godot/vulkan/VkThread$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/godotengine/godot/vulkan/VkThread$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/godotengine/godot/vulkan/VkThread;->Companion:Lorg/godotengine/godot/vulkan/VkThread$Companion;

    .line 8
    .line 9
    const-string v0, "VkThread"

    .line 10
    .line 11
    sput-object v0, Lorg/godotengine/godot/vulkan/VkThread;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lorg/godotengine/godot/vulkan/VkSurfaceView;Lorg/godotengine/godot/vulkan/VkRenderer;)V
    .locals 1

    .line 1
    const-string v0, "vkSurfaceView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "vkRenderer"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lorg/godotengine/godot/vulkan/VkThread;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lorg/godotengine/godot/vulkan/VkThread;->vkSurfaceView:Lorg/godotengine/godot/vulkan/VkSurfaceView;

    .line 17
    .line 18
    iput-object p2, p0, Lorg/godotengine/godot/vulkan/VkThread;->vkRenderer:Lorg/godotengine/godot/vulkan/VkRenderer;

    .line 19
    .line 20
    new-instance p1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lorg/godotengine/godot/vulkan/VkThread;->eventQueue:Ljava/util/ArrayList;

    .line 26
    .line 27
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lorg/godotengine/godot/vulkan/VkThread;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lorg/godotengine/godot/vulkan/VkThread;->lockCondition:Ljava/util/concurrent/locks/Condition;

    .line 39
    .line 40
    return-void
.end method

.method private final getReadyToDraw()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/godotengine/godot/vulkan/VkThread;->hasSurface:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lorg/godotengine/godot/vulkan/VkThread;->resumed:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method private final threadExiting()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/vulkan/VkThread;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v1, Lorg/godotengine/godot/vulkan/VkThread;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "Exiting render thread"

    .line 9
    .line 10
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lorg/godotengine/godot/vulkan/VkThread;->vkRenderer:Lorg/godotengine/godot/vulkan/VkRenderer;

    .line 14
    .line 15
    invoke-virtual {v1}, Lorg/godotengine/godot/vulkan/VkRenderer;->onRenderThreadExiting()V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    iput-boolean v1, p0, Lorg/godotengine/godot/vulkan/VkThread;->exited:Z

    .line 20
    .line 21
    iget-object v1, p0, Lorg/godotengine/godot/vulkan/VkThread;->lockCondition:Ljava/util/concurrent/locks/Condition;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 24
    .line 25
    .line 26
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 34
    .line 35
    .line 36
    throw v1
.end method


# virtual methods
.method public final onPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/vulkan/VkThread;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    iput-boolean v1, p0, Lorg/godotengine/godot/vulkan/VkThread;->resumed:Z

    .line 8
    .line 9
    iget-object v1, p0, Lorg/godotengine/godot/vulkan/VkThread;->lockCondition:Ljava/util/concurrent/locks/Condition;

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 12
    .line 13
    .line 14
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 22
    .line 23
    .line 24
    throw v1
.end method

.method public final onResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/vulkan/VkThread;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    :try_start_0
    iput-boolean v1, p0, Lorg/godotengine/godot/vulkan/VkThread;->resumed:Z

    .line 8
    .line 9
    iget-object v1, p0, Lorg/godotengine/godot/vulkan/VkThread;->lockCondition:Ljava/util/concurrent/locks/Condition;

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 12
    .line 13
    .line 14
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 22
    .line 23
    .line 24
    throw v1
.end method

.method public final onSurfaceChanged(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/vulkan/VkThread;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    :try_start_0
    iput-boolean v1, p0, Lorg/godotengine/godot/vulkan/VkThread;->hasSurface:Z

    .line 8
    .line 9
    iput-boolean v1, p0, Lorg/godotengine/godot/vulkan/VkThread;->surfaceChanged:Z

    .line 10
    .line 11
    iput p1, p0, Lorg/godotengine/godot/vulkan/VkThread;->width:I

    .line 12
    .line 13
    iput p2, p0, Lorg/godotengine/godot/vulkan/VkThread;->height:I

    .line 14
    .line 15
    iget-object p1, p0, Lorg/godotengine/godot/vulkan/VkThread;->lockCondition:Ljava/util/concurrent/locks/Condition;

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 18
    .line 19
    .line 20
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public final onSurfaceCreated()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSurfaceDestroyed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/vulkan/VkThread;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    iput-boolean v1, p0, Lorg/godotengine/godot/vulkan/VkThread;->hasSurface:Z

    .line 8
    .line 9
    iget-object v1, p0, Lorg/godotengine/godot/vulkan/VkThread;->lockCondition:Ljava/util/concurrent/locks/Condition;

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 12
    .line 13
    .line 14
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 22
    .line 23
    .line 24
    throw v1
.end method

.method public final queueEvent(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/godotengine/godot/vulkan/VkThread;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v1, p0, Lorg/godotengine/godot/vulkan/VkThread;->eventQueue:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lorg/godotengine/godot/vulkan/VkThread;->lockCondition:Ljava/util/concurrent/locks/Condition;

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 19
    .line 20
    .line 21
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public final requestExitAndWait()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/vulkan/VkThread;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lorg/godotengine/godot/vulkan/VkThread;->shouldExit:Z

    .line 3
    iget-object v1, p0, Lorg/godotengine/godot/vulkan/VkThread;->lockCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 4
    :goto_0
    iget-boolean v1, p0, Lorg/godotengine/godot/vulkan/VkThread;->exited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 5
    :try_start_1
    sget-object v1, Lorg/godotengine/godot/vulkan/VkThread;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waiting on exit for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v1, p0, Lorg/godotengine/godot/vulkan/VkThread;->lockCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 7
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 8
    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final requestExitAndWait(J)Z
    .locals 5

    .line 10
    iget-object v0, p0, Lorg/godotengine/godot/vulkan/VkThread;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x1

    .line 11
    :try_start_0
    iput-boolean v1, p0, Lorg/godotengine/godot/vulkan/VkThread;->shouldExit:Z

    .line 12
    iget-object v1, p0, Lorg/godotengine/godot/vulkan/VkThread;->lockCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 13
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    .line 14
    :goto_0
    iget-boolean v1, p0, Lorg/godotengine/godot/vulkan/VkThread;->exited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 15
    :try_start_1
    sget-object v1, Lorg/godotengine/godot/vulkan/VkThread;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waiting on exit for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object v1, p0, Lorg/godotengine/godot/vulkan/VkThread;->lockCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1, p1, p2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 17
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public run()V
    .locals 7

    .line 1
    :cond_0
    :goto_0
    :try_start_0
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/godotengine/godot/vulkan/VkThread;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    :goto_1
    :try_start_1
    iget-boolean v2, p0, Lorg/godotengine/godot/vulkan/VkThread;->shouldExit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    :try_start_2
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lorg/godotengine/godot/vulkan/VkThread;->threadExiting()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto/16 :goto_8

    .line 24
    .line 25
    :catch_0
    move-exception v0

    .line 26
    goto/16 :goto_4

    .line 27
    .line 28
    :catch_1
    move-exception v0

    .line 29
    goto/16 :goto_6

    .line 30
    .line 31
    :cond_1
    :try_start_3
    iget-object v2, p0, Lorg/godotengine/godot/vulkan/VkThread;->eventQueue:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v3, 0x0

    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    iget-object v2, p0, Lorg/godotengine/godot/vulkan/VkThread;->eventQueue:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :catchall_1
    move-exception v0

    .line 50
    goto/16 :goto_3

    .line 51
    .line 52
    :cond_2
    invoke-direct {p0}, Lorg/godotengine/godot/vulkan/VkThread;->getReadyToDraw()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_6

    .line 57
    .line 58
    iget-boolean v2, p0, Lorg/godotengine/godot/vulkan/VkThread;->rendererResumed:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 59
    .line 60
    const-string v4, "getSurface(...)"

    .line 61
    .line 62
    if-nez v2, :cond_3

    .line 63
    .line 64
    const/4 v2, 0x1

    .line 65
    :try_start_4
    iput-boolean v2, p0, Lorg/godotengine/godot/vulkan/VkThread;->rendererResumed:Z

    .line 66
    .line 67
    iget-object v5, p0, Lorg/godotengine/godot/vulkan/VkThread;->vkRenderer:Lorg/godotengine/godot/vulkan/VkRenderer;

    .line 68
    .line 69
    invoke-virtual {v5}, Lorg/godotengine/godot/vulkan/VkRenderer;->onVkResume()V

    .line 70
    .line 71
    .line 72
    iget-boolean v5, p0, Lorg/godotengine/godot/vulkan/VkThread;->rendererInitialized:Z

    .line 73
    .line 74
    if-nez v5, :cond_3

    .line 75
    .line 76
    iput-boolean v2, p0, Lorg/godotengine/godot/vulkan/VkThread;->rendererInitialized:Z

    .line 77
    .line 78
    iget-object v2, p0, Lorg/godotengine/godot/vulkan/VkThread;->vkRenderer:Lorg/godotengine/godot/vulkan/VkRenderer;

    .line 79
    .line 80
    iget-object v5, p0, Lorg/godotengine/godot/vulkan/VkThread;->vkSurfaceView:Lorg/godotengine/godot/vulkan/VkSurfaceView;

    .line 81
    .line 82
    invoke-virtual {v5}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v5}, Lorg/godotengine/godot/vulkan/VkRenderer;->onVkSurfaceCreated(Landroid/view/Surface;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    iget-boolean v2, p0, Lorg/godotengine/godot/vulkan/VkThread;->surfaceChanged:Z

    .line 97
    .line 98
    if-eqz v2, :cond_4

    .line 99
    .line 100
    iget-object v2, p0, Lorg/godotengine/godot/vulkan/VkThread;->vkRenderer:Lorg/godotengine/godot/vulkan/VkRenderer;

    .line 101
    .line 102
    iget-object v5, p0, Lorg/godotengine/godot/vulkan/VkThread;->vkSurfaceView:Lorg/godotengine/godot/vulkan/VkSurfaceView;

    .line 103
    .line 104
    invoke-virtual {v5}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget v4, p0, Lorg/godotengine/godot/vulkan/VkThread;->width:I

    .line 116
    .line 117
    iget v6, p0, Lorg/godotengine/godot/vulkan/VkThread;->height:I

    .line 118
    .line 119
    invoke-virtual {v2, v5, v4, v6}, Lorg/godotengine/godot/vulkan/VkRenderer;->onVkSurfaceChanged(Landroid/view/Surface;II)V

    .line 120
    .line 121
    .line 122
    iput-boolean v3, p0, Lorg/godotengine/godot/vulkan/VkThread;->surfaceChanged:Z

    .line 123
    .line 124
    :cond_4
    :goto_2
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 125
    .line 126
    :try_start_5
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 127
    .line 128
    .line 129
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 130
    .line 131
    if-eqz v0, :cond_5

    .line 132
    .line 133
    check-cast v0, Ljava/lang/Runnable;

    .line 134
    .line 135
    if-eqz v0, :cond_0

    .line 136
    .line 137
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 138
    .line 139
    .line 140
    goto/16 :goto_0

    .line 141
    .line 142
    :cond_5
    iget-object v0, p0, Lorg/godotengine/godot/vulkan/VkThread;->vkRenderer:Lorg/godotengine/godot/vulkan/VkRenderer;

    .line 143
    .line 144
    invoke-virtual {v0}, Lorg/godotengine/godot/vulkan/VkRenderer;->onVkDrawFrame()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 145
    .line 146
    .line 147
    goto/16 :goto_0

    .line 148
    .line 149
    :cond_6
    :try_start_6
    iget-boolean v2, p0, Lorg/godotengine/godot/vulkan/VkThread;->rendererResumed:Z

    .line 150
    .line 151
    if-eqz v2, :cond_7

    .line 152
    .line 153
    iput-boolean v3, p0, Lorg/godotengine/godot/vulkan/VkThread;->rendererResumed:Z

    .line 154
    .line 155
    iget-object v2, p0, Lorg/godotengine/godot/vulkan/VkThread;->vkRenderer:Lorg/godotengine/godot/vulkan/VkRenderer;

    .line 156
    .line 157
    invoke-virtual {v2}, Lorg/godotengine/godot/vulkan/VkRenderer;->onVkPause()V

    .line 158
    .line 159
    .line 160
    :cond_7
    iget-object v2, p0, Lorg/godotengine/godot/vulkan/VkThread;->lockCondition:Ljava/util/concurrent/locks/Condition;

    .line 161
    .line 162
    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 163
    .line 164
    .line 165
    goto/16 :goto_1

    .line 166
    .line 167
    :goto_3
    :try_start_7
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 168
    .line 169
    .line 170
    throw v0
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 171
    :goto_4
    :try_start_8
    sget-object v1, Lorg/godotengine/godot/vulkan/VkThread;->TAG:Ljava/lang/String;

    .line 172
    .line 173
    const-string v2, "IllegalStateException"

    .line 174
    .line 175
    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 176
    .line 177
    .line 178
    :goto_5
    invoke-direct {p0}, Lorg/godotengine/godot/vulkan/VkThread;->threadExiting()V

    .line 179
    .line 180
    .line 181
    goto :goto_7

    .line 182
    :goto_6
    :try_start_9
    sget-object v1, Lorg/godotengine/godot/vulkan/VkThread;->TAG:Ljava/lang/String;

    .line 183
    .line 184
    const-string v2, "InterruptedException"

    .line 185
    .line 186
    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 187
    .line 188
    .line 189
    goto :goto_5

    .line 190
    :goto_7
    return-void

    .line 191
    :goto_8
    invoke-direct {p0}, Lorg/godotengine/godot/vulkan/VkThread;->threadExiting()V

    .line 192
    .line 193
    .line 194
    throw v0
.end method
