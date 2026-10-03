.class public final synthetic Lorg/renpy/android/g;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lorg/renpy/android/PythonSDLActivity;

.field public final synthetic d:[F

.field public final synthetic e:[F

.field public final synthetic f:[Z

.field public final synthetic g:I

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Lorg/renpy/android/PythonSDLActivity;[F[F[ZIII)V
    .locals 0

    .line 1
    iput p7, p0, Lorg/renpy/android/g;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/renpy/android/g;->c:Lorg/renpy/android/PythonSDLActivity;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/renpy/android/g;->d:[F

    .line 6
    .line 7
    iput-object p3, p0, Lorg/renpy/android/g;->e:[F

    .line 8
    .line 9
    iput-object p4, p0, Lorg/renpy/android/g;->f:[Z

    .line 10
    .line 11
    iput p5, p0, Lorg/renpy/android/g;->g:I

    .line 12
    .line 13
    iput p6, p0, Lorg/renpy/android/g;->h:I

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    iget v0, p0, Lorg/renpy/android/g;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v5, p0, Lorg/renpy/android/g;->g:I

    .line 7
    .line 8
    iget v6, p0, Lorg/renpy/android/g;->h:I

    .line 9
    .line 10
    iget-object v1, p0, Lorg/renpy/android/g;->c:Lorg/renpy/android/PythonSDLActivity;

    .line 11
    .line 12
    iget-object v2, p0, Lorg/renpy/android/g;->d:[F

    .line 13
    .line 14
    iget-object v3, p0, Lorg/renpy/android/g;->e:[F

    .line 15
    .line 16
    iget-object v4, p0, Lorg/renpy/android/g;->f:[Z

    .line 17
    .line 18
    move-object v7, p1

    .line 19
    move-object v8, p2

    .line 20
    invoke-static/range {v1 .. v8}, Lorg/renpy/android/PythonSDLActivity;->p(Lorg/renpy/android/PythonSDLActivity;[F[F[ZIILandroid/view/View;Landroid/view/MotionEvent;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1

    .line 25
    :pswitch_0
    move-object v6, p1

    .line 26
    move-object v7, p2

    .line 27
    iget v4, p0, Lorg/renpy/android/g;->g:I

    .line 28
    .line 29
    iget v5, p0, Lorg/renpy/android/g;->h:I

    .line 30
    .line 31
    iget-object v0, p0, Lorg/renpy/android/g;->c:Lorg/renpy/android/PythonSDLActivity;

    .line 32
    .line 33
    iget-object v1, p0, Lorg/renpy/android/g;->d:[F

    .line 34
    .line 35
    iget-object v2, p0, Lorg/renpy/android/g;->e:[F

    .line 36
    .line 37
    iget-object v3, p0, Lorg/renpy/android/g;->f:[Z

    .line 38
    .line 39
    invoke-static/range {v0 .. v7}, Lorg/renpy/android/PythonSDLActivity;->l(Lorg/renpy/android/PythonSDLActivity;[F[F[ZIILandroid/view/View;Landroid/view/MotionEvent;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    return p1

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
