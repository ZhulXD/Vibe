.class public final Le/K;
.super Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Le/M;


# direct methods
.method public synthetic constructor <init>(Le/M;I)V
    .locals 0

    .line 1
    iput p2, p0, Le/K;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Le/K;->b:Le/M;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 3

    .line 1
    iget p1, p0, Le/K;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iget-object v0, p0, Le/K;->b:Le/M;

    .line 8
    .line 9
    iput-object p1, v0, Le/M;->t:Li/j;

    .line 10
    .line 11
    iget-object p1, v0, Le/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    iget-object p1, p0, Le/K;->b:Le/M;

    .line 18
    .line 19
    iget-boolean v0, p1, Le/M;->p:Z

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p1, Le/M;->h:Landroid/view/View;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p1, Le/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v0, p1, Le/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 37
    .line 38
    const/16 v1, 0x8

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p1, Le/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 47
    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    iput-object v0, p1, Le/M;->t:Li/j;

    .line 51
    .line 52
    iget-object v1, p1, Le/M;->l:LA1/d;

    .line 53
    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    iget-object v2, p1, Le/M;->k:Le/L;

    .line 57
    .line 58
    invoke-virtual {v1, v2}, LA1/d;->w(Li/a;)V

    .line 59
    .line 60
    .line 61
    iput-object v0, p1, Le/M;->k:Le/L;

    .line 62
    .line 63
    iput-object v0, p1, Le/M;->l:LA1/d;

    .line 64
    .line 65
    :cond_1
    iget-object p1, p1, Le/M;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 66
    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    return-void

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
