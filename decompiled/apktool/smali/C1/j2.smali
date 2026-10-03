.class public final LC1/j2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final synthetic a:LC1/l2;


# direct methods
.method public constructor <init>(LC1/l2;)V
    .locals 0

    .line 1
    iput-object p1, p0, LC1/j2;->a:LC1/l2;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LC1/j2;->a:LC1/l2;

    .line 7
    .line 8
    invoke-virtual {v0}, LC1/l2;->e()F

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget v2, v0, LC1/l2;->f:F

    .line 13
    .line 14
    const v3, 0x3fa66666    # 1.3f

    .line 15
    .line 16
    .line 17
    mul-float/2addr v3, v2

    .line 18
    cmpl-float v1, v1, v3

    .line 19
    .line 20
    if-lez v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, LC1/l2;->f()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/high16 v1, 0x40200000    # 2.5f

    .line 27
    .line 28
    mul-float/2addr v2, v1

    .line 29
    invoke-virtual {v0}, LC1/l2;->e()F

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    div-float/2addr v2, v1

    .line 34
    iget-object v1, v0, LC1/l2;->e:Landroid/graphics/Matrix;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-virtual {v1, v2, v2, v3, p1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, LC1/l2;->d()V

    .line 48
    .line 49
    .line 50
    iget-object p1, v0, LC1/l2;->e:Landroid/graphics/Matrix;

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    const/4 p1, 0x1

    .line 56
    return p1
.end method
