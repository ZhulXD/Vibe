.class public final synthetic Lorg/renpy/android/f;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:[F

.field public final synthetic d:[F

.field public final synthetic e:[Z

.field public final synthetic f:I

.field public final synthetic g:F


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;[F[F[ZIF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/renpy/android/f;->b:Landroid/view/View;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/renpy/android/f;->c:[F

    .line 7
    .line 8
    iput-object p3, p0, Lorg/renpy/android/f;->d:[F

    .line 9
    .line 10
    iput-object p4, p0, Lorg/renpy/android/f;->e:[Z

    .line 11
    .line 12
    iput p5, p0, Lorg/renpy/android/f;->f:I

    .line 13
    .line 14
    iput p6, p0, Lorg/renpy/android/f;->g:F

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget v4, p0, Lorg/renpy/android/f;->f:I

    .line 2
    .line 3
    iget v5, p0, Lorg/renpy/android/f;->g:F

    .line 4
    .line 5
    iget-object v0, p0, Lorg/renpy/android/f;->b:Landroid/view/View;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/renpy/android/f;->c:[F

    .line 8
    .line 9
    iget-object v2, p0, Lorg/renpy/android/f;->d:[F

    .line 10
    .line 11
    iget-object v3, p0, Lorg/renpy/android/f;->e:[Z

    .line 12
    .line 13
    move-object v6, p1

    .line 14
    move-object v7, p2

    .line 15
    invoke-static/range {v0 .. v7}, Lorg/renpy/android/PythonSDLActivity;->k(Landroid/view/View;[F[F[ZIFLandroid/view/View;Landroid/view/MotionEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method
