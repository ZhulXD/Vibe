.class public final LC1/k2;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final synthetic a:LC1/l2;


# direct methods
.method public constructor <init>(LC1/l2;)V
    .locals 0

    .line 1
    iput-object p1, p0, LC1/k2;->a:LC1/l2;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    .line 1
    const-string v0, "detector"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, LC1/k2;->a:LC1/l2;

    .line 11
    .line 12
    invoke-virtual {v1}, LC1/l2;->e()F

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iget v3, v1, LC1/l2;->f:F

    .line 17
    .line 18
    div-float/2addr v3, v2

    .line 19
    iget v4, v1, LC1/l2;->g:F

    .line 20
    .line 21
    div-float/2addr v4, v2

    .line 22
    invoke-static {v0, v3, v4}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v2, v1, LC1/l2;->e:Landroid/graphics/Matrix;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-virtual {v2, v0, v0, v3, p1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, LC1/l2;->d()V

    .line 40
    .line 41
    .line 42
    iget-object p1, v1, LC1/l2;->e:Landroid/graphics/Matrix;

    .line 43
    .line 44
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    return p1
.end method
