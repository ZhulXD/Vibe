.class public final Lorg/godotengine/godot/input/GodotGestureHandler;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/input/GodotGestureHandler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 32\u00020\u00012\u00020\u0002:\u00013B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0010\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010!\u001a\u00020 2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u000e\u0010\"\u001a\u00020 2\u0006\u0010#\u001a\u00020\u0008J\u000e\u0010$\u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\u001dJ\u0010\u0010%\u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0010\u0010&\u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0010\u0010\'\u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010(\u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J*\u0010)\u001a\u00020\u00082\u0008\u0010*\u001a\u0004\u0018\u00010\u001d2\u0006\u0010+\u001a\u00020\u001d2\u0006\u0010,\u001a\u00020\u00192\u0006\u0010-\u001a\u00020\u0019H\u0016J\u0010\u0010.\u001a\u00020\u00082\u0006\u0010/\u001a\u000200H\u0016J\u0010\u00101\u001a\u00020\u00082\u0006\u0010/\u001a\u000200H\u0016J\u0010\u00102\u001a\u00020 2\u0006\u0010/\u001a\u000200H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\n\"\u0004\u0008\u000f\u0010\u000cR\u001a\u0010\u0010\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\n\"\u0004\u0008\u0012\u0010\u000cR\u000e\u0010\u0013\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00064"
    }
    d2 = {
        "Lorg/godotengine/godot/input/GodotGestureHandler;",
        "Landroid/view/GestureDetector$SimpleOnGestureListener;",
        "Landroid/view/ScaleGestureDetector$OnScaleGestureListener;",
        "inputHandler",
        "Lorg/godotengine/godot/input/GodotInputHandler;",
        "<init>",
        "(Lorg/godotengine/godot/input/GodotInputHandler;)V",
        "panningAndScalingEnabled",
        "",
        "getPanningAndScalingEnabled",
        "()Z",
        "setPanningAndScalingEnabled",
        "(Z)V",
        "scrollDeadzoneDisabled",
        "getScrollDeadzoneDisabled",
        "setScrollDeadzoneDisabled",
        "hapticFeedbackEnabled",
        "getHapticFeedbackEnabled",
        "setHapticFeedbackEnabled",
        "nextDownIsDoubleTap",
        "dragInProgress",
        "scaleInProgress",
        "contextClickInProgress",
        "pointerCaptureInProgress",
        "lastDragX",
        "",
        "lastDragY",
        "onDown",
        "event",
        "Landroid/view/MotionEvent;",
        "onSingleTapUp",
        "onLongPress",
        "",
        "contextClickRouter",
        "onPointerCaptureChange",
        "hasCapture",
        "onMotionEvent",
        "onActionUp",
        "onActionMove",
        "onDoubleTapEvent",
        "onDoubleTap",
        "onScroll",
        "originEvent",
        "terminusEvent",
        "distanceX",
        "distanceY",
        "onScale",
        "detector",
        "Landroid/view/ScaleGestureDetector;",
        "onScaleBegin",
        "onScaleEnd",
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
.field public static final Companion:Lorg/godotengine/godot/input/GodotGestureHandler$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private contextClickInProgress:Z

.field private dragInProgress:Z

.field private hapticFeedbackEnabled:Z

.field private final inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

.field private lastDragX:F

.field private lastDragY:F

.field private nextDownIsDoubleTap:Z

.field private panningAndScalingEnabled:Z

.field private pointerCaptureInProgress:Z

.field private scaleInProgress:Z

.field private scrollDeadzoneDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/godotengine/godot/input/GodotGestureHandler$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/godotengine/godot/input/GodotGestureHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/godotengine/godot/input/GodotGestureHandler;->Companion:Lorg/godotengine/godot/input/GodotGestureHandler$Companion;

    .line 8
    .line 9
    const-string v0, "GodotGestureHandler"

    .line 10
    .line 11
    sput-object v0, Lorg/godotengine/godot/input/GodotGestureHandler;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lorg/godotengine/godot/input/GodotInputHandler;)V
    .locals 1

    .line 1
    const-string v0, "inputHandler"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    .line 10
    .line 11
    return-void
.end method

.method private final contextClickRouter(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->scaleInProgress:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->nextDownIsDoubleTap:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    invoke-virtual {v0, p1, v1}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMotionEvent(Landroid/view/MotionEvent;I)Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, p1, v2, v1, v2}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMouseEvent(Landroid/view/MotionEvent;IIZ)Z

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->contextClickInProgress:Z

    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method private final onActionMove(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->contextClickInProgress:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x2

    .line 14
    invoke-virtual {v0, p1, v3, v4, v2}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMouseEvent(Landroid/view/MotionEvent;IIZ)Z

    .line 15
    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->scrollDeadzoneDisabled:Z

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->scaleInProgress:Z

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    iget v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->lastDragX:F

    .line 27
    .line 28
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    cmpg-float v0, v0, v3

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    iget v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->lastDragY:F

    .line 37
    .line 38
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    cmpg-float v0, v0, v3

    .line 43
    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iput v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->lastDragX:F

    .line 52
    .line 53
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iput v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->lastDragY:F

    .line 58
    .line 59
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    .line 62
    .line 63
    .line 64
    return v1

    .line 65
    :cond_2
    :goto_0
    return v2
.end method

.method private final onActionUp(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->pointerCaptureInProgress:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return v2

    .line 14
    :cond_0
    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->pointerCaptureInProgress:Z

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->dragInProgress:Z

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->contextClickInProgress:Z

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return v1

    .line 29
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->contextClickInProgress:Z

    .line 30
    .line 31
    if-nez v0, :cond_4

    .line 32
    .line 33
    invoke-static {p1}, Lorg/godotengine/godot/input/GodotInputHandler;->isMouseEvent(Landroid/view/MotionEvent;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lorg/godotengine/godot/input/GodotInputHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    .line 47
    .line 48
    invoke-virtual {v0, p1, v2}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMouseEvent(Landroid/view/MotionEvent;I)Z

    .line 49
    .line 50
    .line 51
    :goto_2
    iput-boolean v1, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->pointerCaptureInProgress:Z

    .line 52
    .line 53
    iput-boolean v1, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->dragInProgress:Z

    .line 54
    .line 55
    iput-boolean v1, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->contextClickInProgress:Z

    .line 56
    .line 57
    const/4 p1, 0x0

    .line 58
    iput p1, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->lastDragX:F

    .line 59
    .line 60
    iput p1, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->lastDragY:F

    .line 61
    .line 62
    return v2
.end method


# virtual methods
.method public final getHapticFeedbackEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->hapticFeedbackEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getPanningAndScalingEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->panningAndScalingEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getScrollDeadzoneDisabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->scrollDeadzoneDisabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->nextDownIsDoubleTap:Z

    .line 8
    .line 9
    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->nextDownIsDoubleTap:Z

    .line 15
    .line 16
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v2, 0x2

    .line 27
    if-ne v0, v2, :cond_1

    .line 28
    .line 29
    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->panningAndScalingEnabled:Z

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return v1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    .line 7
    .line 8
    iget-boolean v1, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->nextDownIsDoubleTap:Z

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, p1, v2, v1}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMotionEvent(Landroid/view/MotionEvent;IZ)Z

    .line 12
    .line 13
    .line 14
    iput-boolean v2, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->nextDownIsDoubleTap:Z

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lorg/godotengine/godot/input/GodotInputHandler;->getEventToolType(Landroid/view/MotionEvent;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x3

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->hapticFeedbackEnabled:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    .line 18
    .line 19
    invoke-virtual {v0}, Lorg/godotengine/godot/input/GodotInputHandler;->performHapticFeedback()V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-direct {p0, p1}, Lorg/godotengine/godot/input/GodotGestureHandler;->contextClickRouter(Landroid/view/MotionEvent;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public final onMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    const/16 v1, 0xc

    .line 20
    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    return p1

    .line 25
    :cond_0
    invoke-direct {p0, p1}, Lorg/godotengine/godot/input/GodotGestureHandler;->onActionMove(Landroid/view/MotionEvent;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :cond_1
    invoke-direct {p0, p1}, Lorg/godotengine/godot/input/GodotGestureHandler;->onActionUp(Landroid/view/MotionEvent;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1
.end method

.method public final onPointerCaptureChange(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->pointerCaptureInProgress:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-nez p1, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1, v1}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMouseEvent(IZ)Z

    .line 12
    .line 13
    .line 14
    :cond_1
    iput-boolean p1, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->pointerCaptureInProgress:Z

    .line 15
    .line 16
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 1
    const-string v0, "detector"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->panningAndScalingEnabled:Z

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->pointerCaptureInProgress:Z

    .line 11
    .line 12
    if-nez v0, :cond_3

    .line 13
    .line 14
    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->dragInProgress:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const v1, 0x3f4ccccd    # 0.8f

    .line 24
    .line 25
    .line 26
    cmpl-float v0, v0, v1

    .line 27
    .line 28
    if-ltz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/high16 v1, 0x3f800000    # 1.0f

    .line 35
    .line 36
    cmpg-float v0, v0, v1

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const v1, 0x3f99999a    # 1.2f

    .line 46
    .line 47
    .line 48
    cmpg-float v0, v0, v1

    .line 49
    .line 50
    if-gtz v0, :cond_2

    .line 51
    .line 52
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-virtual {v0, v1, v2, p1}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMagnifyEvent(FFF)V

    .line 67
    .line 68
    .line 69
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 70
    return p1

    .line 71
    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 72
    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    .line 1
    const-string v0, "detector"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean p1, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->panningAndScalingEnabled:Z

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-boolean p1, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->pointerCaptureInProgress:Z

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    iget-boolean p1, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->dragInProgress:Z

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->scaleInProgress:Z

    .line 21
    .line 22
    return p1

    .line 23
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 24
    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    .line 1
    const-string v0, "detector"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->scaleInProgress:Z

    .line 8
    .line 9
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    .line 1
    const-string v0, "terminusEvent"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->scaleInProgress:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->dragInProgress:Z

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->scrollDeadzoneDisabled:Z

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->lastDragX:F

    .line 21
    .line 22
    cmpg-float v0, v0, v2

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    iget v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->lastDragY:F

    .line 27
    .line 28
    cmpg-float v0, v0, v2

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    .line 36
    .line 37
    const/4 v3, 0x3

    .line 38
    invoke-virtual {v0, p1, v3}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMotionEvent(Landroid/view/MotionEvent;I)Z

    .line 39
    .line 40
    .line 41
    :cond_1
    iput-boolean v1, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->dragInProgress:Z

    .line 42
    .line 43
    iput v2, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->lastDragX:F

    .line 44
    .line 45
    iput v2, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->lastDragY:F

    .line 46
    .line 47
    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    const/4 v3, 0x2

    .line 60
    const/4 v4, 0x1

    .line 61
    if-lt v2, v3, :cond_3

    .line 62
    .line 63
    iget-boolean v2, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->panningAndScalingEnabled:Z

    .line 64
    .line 65
    if-eqz v2, :cond_3

    .line 66
    .line 67
    iget-boolean v2, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->pointerCaptureInProgress:Z

    .line 68
    .line 69
    if-nez v2, :cond_3

    .line 70
    .line 71
    iget-boolean v2, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->dragInProgress:Z

    .line 72
    .line 73
    if-nez v2, :cond_3

    .line 74
    .line 75
    iget-object p2, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    .line 76
    .line 77
    const/high16 v1, 0x40a00000    # 5.0f

    .line 78
    .line 79
    div-float/2addr p3, v1

    .line 80
    div-float/2addr p4, v1

    .line 81
    invoke-virtual {p2, p1, v0, p3, p4}, Lorg/godotengine/godot/input/GodotInputHandler;->handlePanEvent(FFFF)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    iget-boolean p1, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->scaleInProgress:Z

    .line 86
    .line 87
    if-nez p1, :cond_4

    .line 88
    .line 89
    iput-boolean v4, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->dragInProgress:Z

    .line 90
    .line 91
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    iput p1, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->lastDragX:F

    .line 96
    .line 97
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    iput p1, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->lastDragY:F

    .line 102
    .line 103
    iget-object p1, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    .line 104
    .line 105
    invoke-virtual {p1, p2}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    .line 106
    .line 107
    .line 108
    :cond_4
    :goto_1
    return v4
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1
.end method

.method public final setHapticFeedbackEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->hapticFeedbackEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setPanningAndScalingEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->panningAndScalingEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setScrollDeadzoneDisabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->scrollDeadzoneDisabled:Z

    .line 2
    .line 3
    return-void
.end method
