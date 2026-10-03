.class public final synthetic LC1/Z1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:LC1/b2;

.field public final synthetic d:LC1/a2;


# direct methods
.method public synthetic constructor <init>(ZLC1/b2;LC1/a2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, LC1/Z1;->b:Z

    .line 5
    .line 6
    iput-object p2, p0, LC1/Z1;->c:LC1/b2;

    .line 7
    .line 8
    iput-object p3, p0, LC1/Z1;->d:LC1/a2;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-boolean p1, p0, LC1/Z1;->b:Z

    .line 2
    .line 3
    if-eqz p1, :cond_4

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_4

    .line 10
    .line 11
    iget-object p1, p0, LC1/Z1;->c:LC1/b2;

    .line 12
    .line 13
    iget-object p2, p1, LC1/b2;->f:LC1/H0;

    .line 14
    .line 15
    invoke-virtual {p2}, LC1/H0;->invoke()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    sget-object v0, LC1/X0;->a:Li1/l;

    .line 26
    .line 27
    if-nez p2, :cond_0

    .line 28
    .line 29
    iget-object p1, p1, LC1/b2;->g:LC1/H0;

    .line 30
    .line 31
    invoke-virtual {p1}, LC1/H0;->invoke()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    return p1

    .line 36
    :cond_0
    iget-object p1, p1, LC1/b2;->h:LC1/H0;

    .line 37
    .line 38
    invoke-virtual {p1}, LC1/H0;->invoke()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, LP/G;

    .line 43
    .line 44
    iget-object p2, p1, LP/G;->m:LC1/N0;

    .line 45
    .line 46
    iget-object v0, p1, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 47
    .line 48
    iget-object v1, p0, LC1/Z1;->d:LC1/a2;

    .line 49
    .line 50
    invoke-virtual {p2, v0, v1}, LC1/N0;->f(Landroidx/recyclerview/widget/RecyclerView;LP/y0;)I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-static {p2, v0}, LP/E;->b(II)I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    const/high16 v0, 0xff0000

    .line 63
    .line 64
    and-int/2addr p2, v0

    .line 65
    const-string v0, "ItemTouchHelper"

    .line 66
    .line 67
    if-eqz p2, :cond_3

    .line 68
    .line 69
    iget-object p2, v1, LP/y0;->a:Landroid/view/View;

    .line 70
    .line 71
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    iget-object v2, p1, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 76
    .line 77
    if-eq p2, v2, :cond_1

    .line 78
    .line 79
    const-string p1, "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper."

    .line 80
    .line 81
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    iget-object p2, p1, LP/G;->t:Landroid/view/VelocityTracker;

    .line 86
    .line 87
    if-eqz p2, :cond_2

    .line 88
    .line 89
    invoke-virtual {p2}, Landroid/view/VelocityTracker;->recycle()V

    .line 90
    .line 91
    .line 92
    :cond_2
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    iput-object p2, p1, LP/G;->t:Landroid/view/VelocityTracker;

    .line 97
    .line 98
    const/4 p2, 0x0

    .line 99
    iput p2, p1, LP/G;->i:F

    .line 100
    .line 101
    iput p2, p1, LP/G;->h:F

    .line 102
    .line 103
    const/4 p2, 0x2

    .line 104
    invoke-virtual {p1, v1, p2}, LP/G;->r(LP/y0;I)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_3
    const-string p1, "Start drag has been called but dragging is not enabled"

    .line 109
    .line 110
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    :cond_4
    :goto_0
    const/4 p1, 0x0

    .line 114
    return p1
.end method
