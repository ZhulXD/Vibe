.class public final LP/D;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:LP/y0;

.field public final f:I

.field public final g:Landroid/animation/ValueAnimator;

.field public h:Z

.field public i:F

.field public j:F

.field public k:Z

.field public l:Z

.field public m:F

.field public final synthetic n:I

.field public final synthetic o:LP/y0;

.field public final synthetic p:LP/G;


# direct methods
.method public constructor <init>(LP/G;LP/y0;IFFFFILP/y0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LP/D;->p:LP/G;

    .line 5
    .line 6
    iput p8, p0, LP/D;->n:I

    .line 7
    .line 8
    iput-object p9, p0, LP/D;->o:LP/y0;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, LP/D;->k:Z

    .line 12
    .line 13
    iput-boolean p1, p0, LP/D;->l:Z

    .line 14
    .line 15
    iput p3, p0, LP/D;->f:I

    .line 16
    .line 17
    iput-object p2, p0, LP/D;->e:LP/y0;

    .line 18
    .line 19
    iput p4, p0, LP/D;->a:F

    .line 20
    .line 21
    iput p5, p0, LP/D;->b:F

    .line 22
    .line 23
    iput p6, p0, LP/D;->c:F

    .line 24
    .line 25
    iput p7, p0, LP/D;->d:F

    .line 26
    .line 27
    const/4 p1, 0x2

    .line 28
    new-array p3, p1, [F

    .line 29
    .line 30
    fill-array-data p3, :array_0

    .line 31
    .line 32
    .line 33
    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    iput-object p3, p0, LP/D;->g:Landroid/animation/ValueAnimator;

    .line 38
    .line 39
    new-instance p4, LH0/c;

    .line 40
    .line 41
    invoke-direct {p4, p1, p0}, LH0/c;-><init>(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p2, LP/y0;->a:Landroid/view/View;

    .line 48
    .line 49
    invoke-virtual {p3, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 53
    .line 54
    .line 55
    const/4 p1, 0x0

    .line 56
    iput p1, p0, LP/D;->m:F

    .line 57
    .line 58
    return-void

    .line 59
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final a(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, LP/D;->l:Z

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, LP/D;->e:LP/y0;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, LP/y0;->n(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iput-boolean v0, p0, LP/D;->l:Z

    .line 12
    .line 13
    return-void
.end method

.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    .line 3
    iput p1, p0, LP/D;->m:F

    .line 4
    .line 5
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, LP/D;->a(Landroid/animation/Animator;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, LP/D;->k:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    iget p1, p0, LP/D;->n:I

    .line 10
    .line 11
    iget-object v0, p0, LP/D;->o:LP/y0;

    .line 12
    .line 13
    iget-object v1, p0, LP/D;->p:LP/G;

    .line 14
    .line 15
    if-gtz p1, :cond_1

    .line 16
    .line 17
    iget-object p1, v1, LP/G;->m:LC1/N0;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, LP/E;->a(LP/y0;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v2, v1, LP/G;->a:Ljava/util/ArrayList;

    .line 27
    .line 28
    iget-object v3, v0, LP/y0;->a:Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    iput-boolean v2, p0, LP/D;->h:Z

    .line 35
    .line 36
    if-lez p1, :cond_2

    .line 37
    .line 38
    iget-object v2, v1, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 39
    .line 40
    new-instance v3, LE0/d;

    .line 41
    .line 42
    invoke-direct {v3, v1, p0, p1}, LE0/d;-><init>(LP/G;LP/D;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_0
    iget-object p1, v1, LP/G;->w:Landroid/view/View;

    .line 49
    .line 50
    iget-object v0, v0, LP/y0;->a:Landroid/view/View;

    .line 51
    .line 52
    if-ne p1, v0, :cond_3

    .line 53
    .line 54
    invoke-virtual {v1, v0}, LP/G;->q(Landroid/view/View;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    :goto_1
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method
