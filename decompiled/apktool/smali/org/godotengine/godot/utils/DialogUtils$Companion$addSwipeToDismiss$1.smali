.class public final Lorg/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/godotengine/godot/utils/DialogUtils$Companion;->addSwipeToDismiss(Landroid/view/View;Landroid/widget/PopupWindow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "org/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1",
        "Landroid/view/View$OnTouchListener;",
        "initialX",
        "",
        "dX",
        "threshold",
        "onTouch",
        "",
        "v",
        "Landroid/view/View;",
        "event",
        "Landroid/view/MotionEvent;",
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
.field final synthetic $popupWindow:Landroid/widget/PopupWindow;

.field final synthetic $view:Landroid/view/View;

.field private dX:F

.field private initialX:F

.field private final threshold:F


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/PopupWindow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1;->$view:Landroid/view/View;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1;->$popupWindow:Landroid/widget/PopupWindow;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const/high16 p1, 0x43960000    # 300.0f

    .line 9
    .line 10
    iput p1, p0, Lorg/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1;->threshold:F

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic a(Landroid/widget/PopupWindow;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1;->onTouch$lambda$0(Landroid/widget/PopupWindow;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final onTouch$lambda$0(Landroid/widget/PopupWindow;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    const-string p1, "event"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v0, 0x1

    .line 11
    if-eqz p1, :cond_4

    .line 12
    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-eq p1, v1, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    if-eq p1, v1, :cond_1

    .line 20
    .line 21
    return v0

    .line 22
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iget p2, p0, Lorg/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1;->initialX:F

    .line 27
    .line 28
    sub-float/2addr p1, p2

    .line 29
    iget-object p2, p0, Lorg/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1;->$view:Landroid/view/View;

    .line 30
    .line 31
    iget v1, p0, Lorg/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1;->dX:F

    .line 32
    .line 33
    add-float/2addr v1, p1

    .line 34
    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 35
    .line 36
    .line 37
    return v0

    .line 38
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iget p2, p0, Lorg/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1;->initialX:F

    .line 43
    .line 44
    sub-float/2addr p1, p2

    .line 45
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    iget v1, p0, Lorg/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1;->threshold:F

    .line 50
    .line 51
    cmpl-float p2, p2, v1

    .line 52
    .line 53
    const-wide/16 v1, 0xc8

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    if-lez p2, :cond_3

    .line 57
    .line 58
    iget-object p2, p0, Lorg/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1;->$view:Landroid/view/View;

    .line 59
    .line 60
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    cmpl-float p1, p1, v3

    .line 65
    .line 66
    if-lez p1, :cond_2

    .line 67
    .line 68
    iget-object p1, p0, Lorg/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1;->$view:Landroid/view/View;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    int-to-float p1, p1

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    iget-object p1, p0, Lorg/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1;->$view:Landroid/view/View;

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    int-to-float p1, p1

    .line 83
    neg-float p1, p1

    .line 84
    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iget-object p2, p0, Lorg/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1;->$popupWindow:Landroid/widget/PopupWindow;

    .line 93
    .line 94
    new-instance v1, Lorg/godotengine/godot/utils/a;

    .line 95
    .line 96
    const/4 v2, 0x1

    .line 97
    invoke-direct {v1, p2, v2}, Lorg/godotengine/godot/utils/a;-><init>(Landroid/widget/PopupWindow;I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 105
    .line 106
    .line 107
    return v0

    .line 108
    :cond_3
    iget-object p1, p0, Lorg/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1;->$view:Landroid/view/View;

    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 123
    .line 124
    .line 125
    return v0

    .line 126
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    iput p1, p0, Lorg/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1;->initialX:F

    .line 131
    .line 132
    iget-object p1, p0, Lorg/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1;->$view:Landroid/view/View;

    .line 133
    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    iput p1, p0, Lorg/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1;->dX:F

    .line 139
    .line 140
    return v0
.end method
