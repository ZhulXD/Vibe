.class Lorg/godotengine/godot/input/InputEventRunnable$1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroidx/core/util/Pools$Pool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/input/InputEventRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/util/Pools$Pool<",
        "Lorg/godotengine/godot/input/InputEventRunnable;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0x4b0


# instance fields
.field private final createdCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final queue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lorg/godotengine/godot/input/InputEventRunnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 5
    .line 6
    const/16 v1, 0x4b0

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/godotengine/godot/input/InputEventRunnable$1;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 12
    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lorg/godotengine/godot/input/InputEventRunnable$1;->createdCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public bridge synthetic acquire()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/godotengine/godot/input/InputEventRunnable$1;->acquire()Lorg/godotengine/godot/input/InputEventRunnable;

    move-result-object v0

    return-object v0
.end method

.method public acquire()Lorg/godotengine/godot/input/InputEventRunnable;
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/godotengine/godot/input/InputEventRunnable$1;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/godotengine/godot/input/InputEventRunnable;

    if-nez v0, :cond_0

    .line 3
    iget-object v1, p0, Lorg/godotengine/godot/input/InputEventRunnable$1;->createdCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    const/16 v2, 0x4b0

    if-gt v1, v2, :cond_0

    .line 4
    new-instance v0, Lorg/godotengine/godot/input/InputEventRunnable;

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/godotengine/godot/input/InputEventRunnable;-><init>(II)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic release(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lorg/godotengine/godot/input/InputEventRunnable;

    invoke-virtual {p0, p1}, Lorg/godotengine/godot/input/InputEventRunnable$1;->release(Lorg/godotengine/godot/input/InputEventRunnable;)Z

    move-result p1

    return p1
.end method

.method public release(Lorg/godotengine/godot/input/InputEventRunnable;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/godotengine/godot/input/InputEventRunnable$1;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
