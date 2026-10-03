.class public Lorg/godotengine/godot/vulkan/VkSurfaceView;
.super Landroid/view/SurfaceView;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/vulkan/VkSurfaceView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0010\u0018\u0000 #2\u00020\u00012\u00020\u0002:\u0001#B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0013J\u0008\u0010\u0014\u001a\u00020\u0010H\u0004J\u0008\u0010\u0015\u001a\u00020\u0010H\u0004J\u0006\u0010\u0016\u001a\u00020\u0010J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019J(\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\u001eH\u0016J\u0010\u0010!\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0010\u0010\"\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u001cH\u0016R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lorg/godotengine/godot/vulkan/VkSurfaceView;",
        "Landroid/view/SurfaceView;",
        "Landroid/view/SurfaceHolder$Callback;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "vkThread",
        "Lorg/godotengine/godot/vulkan/VkThread;",
        "getVkThread",
        "()Lorg/godotengine/godot/vulkan/VkThread;",
        "vkThread$delegate",
        "Lkotlin/Lazy;",
        "renderer",
        "Lorg/godotengine/godot/vulkan/VkRenderer;",
        "startRenderer",
        "",
        "queueOnVkThread",
        "runnable",
        "Ljava/lang/Runnable;",
        "resumeRenderThread",
        "pauseRenderThread",
        "requestRenderThreadExitAndWait",
        "",
        "timeInMs",
        "",
        "surfaceChanged",
        "holder",
        "Landroid/view/SurfaceHolder;",
        "format",
        "",
        "width",
        "height",
        "surfaceDestroyed",
        "surfaceCreated",
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
.field public static final Companion:Lorg/godotengine/godot/vulkan/VkSurfaceView$Companion;


# instance fields
.field private renderer:Lorg/godotengine/godot/vulkan/VkRenderer;

.field private final vkThread$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/godotengine/godot/vulkan/VkSurfaceView$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/godotengine/godot/vulkan/VkSurfaceView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/godotengine/godot/vulkan/VkSurfaceView;->Companion:Lorg/godotengine/godot/vulkan/VkSurfaceView$Companion;

    .line 8
    .line 9
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
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, LA1/n;

    .line 10
    .line 11
    const/16 v0, 0xb

    .line 12
    .line 13
    invoke-direct {p1, v0, p0}, LA1/n;-><init>(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lorg/godotengine/godot/vulkan/VkSurfaceView;->vkThread$delegate:Lkotlin/Lazy;

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static synthetic a(Lorg/godotengine/godot/vulkan/VkSurfaceView;)Lorg/godotengine/godot/vulkan/VkThread;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/godotengine/godot/vulkan/VkSurfaceView;->vkThread_delegate$lambda$0(Lorg/godotengine/godot/vulkan/VkSurfaceView;)Lorg/godotengine/godot/vulkan/VkThread;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final getVkThread()Lorg/godotengine/godot/vulkan/VkThread;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/vulkan/VkSurfaceView;->vkThread$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/godotengine/godot/vulkan/VkThread;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final vkThread_delegate$lambda$0(Lorg/godotengine/godot/vulkan/VkSurfaceView;)Lorg/godotengine/godot/vulkan/VkThread;
    .locals 2

    .line 1
    new-instance v0, Lorg/godotengine/godot/vulkan/VkThread;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/godotengine/godot/vulkan/VkSurfaceView;->renderer:Lorg/godotengine/godot/vulkan/VkRenderer;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-string v1, "renderer"

    .line 8
    .line 9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :cond_0
    invoke-direct {v0, p0, v1}, Lorg/godotengine/godot/vulkan/VkThread;-><init>(Lorg/godotengine/godot/vulkan/VkSurfaceView;Lorg/godotengine/godot/vulkan/VkRenderer;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method


# virtual methods
.method public final pauseRenderThread()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/godotengine/godot/vulkan/VkSurfaceView;->getVkThread()Lorg/godotengine/godot/vulkan/VkThread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/godotengine/godot/vulkan/VkThread;->onPause()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final queueOnVkThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    const-string v0, "runnable"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lorg/godotengine/godot/vulkan/VkSurfaceView;->getVkThread()Lorg/godotengine/godot/vulkan/VkThread;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lorg/godotengine/godot/vulkan/VkThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final requestRenderThreadExitAndWait()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/godotengine/godot/vulkan/VkSurfaceView;->getVkThread()Lorg/godotengine/godot/vulkan/VkThread;

    move-result-object v0

    invoke-virtual {v0}, Lorg/godotengine/godot/vulkan/VkThread;->requestExitAndWait()V

    return-void
.end method

.method public final requestRenderThreadExitAndWait(J)Z
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/godotengine/godot/vulkan/VkSurfaceView;->getVkThread()Lorg/godotengine/godot/vulkan/VkThread;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/godotengine/godot/vulkan/VkThread;->requestExitAndWait(J)Z

    move-result p1

    return p1
.end method

.method public final resumeRenderThread()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/godotengine/godot/vulkan/VkSurfaceView;->getVkThread()Lorg/godotengine/godot/vulkan/VkThread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/godotengine/godot/vulkan/VkThread;->onResume()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final startRenderer(Lorg/godotengine/godot/vulkan/VkRenderer;)V
    .locals 3

    .line 1
    const-string v0, "renderer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lorg/godotengine/godot/vulkan/VkSurfaceView;->Companion:Lorg/godotengine/godot/vulkan/VkSurfaceView$Companion;

    .line 7
    .line 8
    iget-object v1, p0, Lorg/godotengine/godot/vulkan/VkSurfaceView;->renderer:Lorg/godotengine/godot/vulkan/VkRenderer;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    const-string v2, "startRenderer must only be invoked once"

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/godotengine/godot/vulkan/VkSurfaceView$Companion;->checkState(ZLjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lorg/godotengine/godot/vulkan/VkSurfaceView;->renderer:Lorg/godotengine/godot/vulkan/VkRenderer;

    .line 21
    .line 22
    invoke-direct {p0}, Lorg/godotengine/godot/vulkan/VkSurfaceView;->getVkThread()Lorg/godotengine/godot/vulkan/VkThread;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    const-string p2, "holder"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lorg/godotengine/godot/vulkan/VkSurfaceView;->getVkThread()Lorg/godotengine/godot/vulkan/VkThread;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1, p3, p4}, Lorg/godotengine/godot/vulkan/VkThread;->onSurfaceChanged(II)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lorg/godotengine/godot/vulkan/VkSurfaceView;->getVkThread()Lorg/godotengine/godot/vulkan/VkThread;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lorg/godotengine/godot/vulkan/VkThread;->onSurfaceCreated()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lorg/godotengine/godot/vulkan/VkSurfaceView;->getVkThread()Lorg/godotengine/godot/vulkan/VkThread;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lorg/godotengine/godot/vulkan/VkThread;->onSurfaceDestroyed()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
