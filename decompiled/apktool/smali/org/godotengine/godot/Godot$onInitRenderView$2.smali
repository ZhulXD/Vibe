.class public final Lorg/godotengine/godot/Godot$onInitRenderView$2;
.super Landroidx/core/view/WindowInsetsAnimationCompat$Callback;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/godotengine/godot/Godot;->onInitRenderView(Lorg/godotengine/godot/GodotHost;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u001e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00132\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\u0005\"\u0004\u0008\n\u0010\u0007\u00a8\u0006\u0018"
    }
    d2 = {
        "org/godotengine/godot/Godot$onInitRenderView$2",
        "Landroidx/core/view/WindowInsetsAnimationCompat$Callback;",
        "startBottom",
        "",
        "getStartBottom",
        "()I",
        "setStartBottom",
        "(I)V",
        "endBottom",
        "getEndBottom",
        "setEndBottom",
        "onPrepare",
        "",
        "animation",
        "Landroidx/core/view/WindowInsetsAnimationCompat;",
        "onStart",
        "Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;",
        "bounds",
        "onProgress",
        "Landroidx/core/view/WindowInsetsCompat;",
        "windowInsets",
        "animationsList",
        "",
        "onEnd",
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


# instance fields
.field final synthetic $topView:Landroid/view/View;

.field private endBottom:I

.field private startBottom:I

.field final synthetic this$0:Lorg/godotengine/godot/Godot;


# direct methods
.method public constructor <init>(Landroid/view/View;Lorg/godotengine/godot/Godot;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/godotengine/godot/Godot$onInitRenderView$2;->$topView:Landroid/view/View;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/godotengine/godot/Godot$onInitRenderView$2;->this$0:Lorg/godotengine/godot/Godot;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic a(Lorg/godotengine/godot/Godot;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/godotengine/godot/Godot$onInitRenderView$2;->onEnd$lambda$0(Lorg/godotengine/godot/Godot;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final onEnd$lambda$0(Lorg/godotengine/godot/Godot;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, v0}, Lorg/godotengine/godot/Godot;->enableImmersiveMode(ZZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final getEndBottom()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/godotengine/godot/Godot$onInitRenderView$2;->endBottom:I

    .line 2
    .line 3
    return v0
.end method

.method public final getStartBottom()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/godotengine/godot/Godot$onInitRenderView$2;->startBottom:I

    .line 2
    .line 3
    return v0
.end method

.method public onEnd(Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .locals 2

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lorg/godotengine/godot/Godot$onInitRenderView$2;->this$0:Lorg/godotengine/godot/Godot;

    .line 7
    .line 8
    invoke-static {p1}, Lorg/godotengine/godot/Godot;->access$getUseImmersive$p(Lorg/godotengine/godot/Godot;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .line 20
    const/16 v0, 0x1e

    .line 21
    .line 22
    if-ge p1, v0, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lorg/godotengine/godot/Godot$onInitRenderView$2;->this$0:Lorg/godotengine/godot/Godot;

    .line 25
    .line 26
    new-instance v0, Lorg/godotengine/godot/c;

    .line 27
    .line 28
    const/4 v1, 0x3

    .line 29
    invoke-direct {v0, p1, v1}, Lorg/godotengine/godot/c;-><init>(Lorg/godotengine/godot/Godot;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lorg/godotengine/godot/Godot;->runOnHostThread(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public onPrepare(Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .locals 1

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lorg/godotengine/godot/Godot$onInitRenderView$2;->$topView:Landroid/view/View;

    .line 7
    .line 8
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    iput p1, p0, Lorg/godotengine/godot/Godot$onInitRenderView$2;->startBottom:I

    .line 29
    .line 30
    return-void
.end method

.method public onProgress(Landroidx/core/view/WindowInsetsCompat;Ljava/util/List;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/view/WindowInsetsCompat;",
            "Ljava/util/List<",
            "Landroidx/core/view/WindowInsetsAnimationCompat;",
            ">;)",
            "Landroidx/core/view/WindowInsetsCompat;"
        }
    .end annotation

    .line 1
    const-string v0, "windowInsets"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "animationsList"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroidx/core/view/WindowInsetsAnimationCompat;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationCompat;->getTypeMask()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    and-int/2addr v1, v2

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    :goto_0
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationCompat;->getInterpolatedFraction()F

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    iget v0, p0, Lorg/godotengine/godot/Godot$onInitRenderView$2;->startBottom:I

    .line 47
    .line 48
    int-to-float v0, v0

    .line 49
    const/high16 v1, 0x3f800000    # 1.0f

    .line 50
    .line 51
    sub-float/2addr v1, p2

    .line 52
    mul-float/2addr v1, v0

    .line 53
    iget v0, p0, Lorg/godotengine/godot/Godot$onInitRenderView$2;->endBottom:I

    .line 54
    .line 55
    int-to-float v0, v0

    .line 56
    mul-float/2addr v0, p2

    .line 57
    add-float/2addr v0, v1

    .line 58
    float-to-int p2, v0

    .line 59
    iget-object v0, p0, Lorg/godotengine/godot/Godot$onInitRenderView$2;->$topView:Landroid/view/View;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    sub-int/2addr p2, v0

    .line 70
    const/4 v0, 0x0

    .line 71
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    invoke-static {p2}, Lorg/godotengine/godot/GodotLib;->setVirtualKeyboardHeight(I)V

    .line 76
    .line 77
    .line 78
    :cond_2
    return-object p1
.end method

.method public onStart(Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
    .locals 1

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "bounds"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lorg/godotengine/godot/Godot$onInitRenderView$2;->$topView:Landroid/view/View;

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p1, 0x0

    .line 33
    :goto_0
    iput p1, p0, Lorg/godotengine/godot/Godot$onInitRenderView$2;->endBottom:I

    .line 34
    .line 35
    return-object p2
.end method

.method public final setEndBottom(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/godotengine/godot/Godot$onInitRenderView$2;->endBottom:I

    .line 2
    .line 3
    return-void
.end method

.method public final setStartBottom(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/godotengine/godot/Godot$onInitRenderView$2;->startBottom:I

    .line 2
    .line 3
    return-void
.end method
