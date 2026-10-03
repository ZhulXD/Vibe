.class public final Le/L;
.super Li/a;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lj/n;


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:Lj/p;

.field public f:LA1/d;

.field public g:Ljava/lang/ref/WeakReference;

.field public final synthetic h:Le/M;


# direct methods
.method public constructor <init>(Le/M;Landroid/content/Context;LA1/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le/L;->h:Le/M;

    .line 5
    .line 6
    iput-object p2, p0, Le/L;->d:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Le/L;->f:LA1/d;

    .line 9
    .line 10
    new-instance p1, Lj/p;

    .line 11
    .line 12
    invoke-direct {p1, p2}, Lj/p;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    iput p2, p1, Lj/p;->l:I

    .line 17
    .line 18
    iput-object p1, p0, Le/L;->e:Lj/p;

    .line 19
    .line 20
    iput-object p0, p1, Lj/p;->e:Lj/n;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/L;->h:Le/M;

    .line 2
    .line 3
    iget-object v1, v0, Le/M;->j:Le/L;

    .line 4
    .line 5
    if-eq v1, p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v1, v0, Le/M;->q:Z

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iput-object p0, v0, Le/M;->k:Le/L;

    .line 13
    .line 14
    iget-object v1, p0, Le/L;->f:LA1/d;

    .line 15
    .line 16
    iput-object v1, v0, Le/M;->l:LA1/d;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v1, p0, Le/L;->f:LA1/d;

    .line 20
    .line 21
    invoke-virtual {v1, p0}, LA1/d;->w(Li/a;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    const/4 v1, 0x0

    .line 25
    iput-object v1, p0, Le/L;->f:LA1/d;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v0, v2}, Le/M;->e0(Z)V

    .line 29
    .line 30
    .line 31
    iget-object v2, v0, Le/M;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 32
    .line 33
    iget-object v3, v2, Landroidx/appcompat/widget/ActionBarContextView;->l:Landroid/view/View;

    .line 34
    .line 35
    if-nez v3, :cond_2

    .line 36
    .line 37
    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-object v2, v0, Le/M;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 41
    .line 42
    iget-boolean v3, v0, Le/M;->v:Z

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 45
    .line 46
    .line 47
    iput-object v1, v0, Le/M;->j:Le/L;

    .line 48
    .line 49
    return-void
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Le/L;->g:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/View;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public final c(Lj/p;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/L;->f:LA1/d;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Le/L;->i()V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Le/L;->h:Le/M;

    .line 10
    .line 11
    iget-object p1, p1, Le/M;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 12
    .line 13
    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarContextView;->e:Lk/l;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lk/l;->n()Z

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method public final d()Lj/p;
    .locals 1

    .line 1
    iget-object v0, p0, Le/L;->e:Lj/p;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Landroid/view/MenuInflater;
    .locals 2

    .line 1
    new-instance v0, Li/h;

    .line 2
    .line 3
    iget-object v1, p0, Le/L;->d:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Li/h;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Le/L;->h:Le/M;

    .line 2
    .line 3
    iget-object v0, v0, Le/M;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final g()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Le/L;->h:Le/M;

    .line 2
    .line 3
    iget-object v0, v0, Le/M;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final h(Lj/p;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Le/L;->f:LA1/d;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p1, LA1/d;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, LN1/w;

    .line 8
    .line 9
    invoke-virtual {p1, p0, p2}, LN1/w;->c(Li/a;Landroid/view/MenuItem;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method public final i()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/L;->h:Le/M;

    .line 2
    .line 3
    iget-object v0, v0, Le/M;->j:Le/L;

    .line 4
    .line 5
    if-eq v0, p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Le/L;->e:Lj/p;

    .line 9
    .line 10
    invoke-virtual {v0}, Lj/p;->w()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object v1, p0, Le/L;->f:LA1/d;

    .line 14
    .line 15
    invoke-virtual {v1, p0, v0}, LA1/d;->x(Li/a;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lj/p;->v()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    invoke-virtual {v0}, Lj/p;->v()V

    .line 24
    .line 25
    .line 26
    throw v1
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/L;->h:Le/M;

    .line 2
    .line 3
    iget-object v0, v0, Le/M;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 4
    .line 5
    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionBarContextView;->t:Z

    .line 6
    .line 7
    return v0
.end method

.method public final k(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/L;->h:Le/M;

    .line 2
    .line 3
    iget-object v0, v0, Le/M;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Le/L;->g:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    return-void
.end method

.method public final l(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/L;->h:Le/M;

    .line 2
    .line 3
    iget-object v0, v0, Le/M;->b:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Le/L;->m(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final m(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/L;->h:Le/M;

    .line 2
    .line 3
    iget-object v0, v0, Le/M;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final n(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/L;->h:Le/M;

    .line 2
    .line 3
    iget-object v0, v0, Le/M;->b:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Le/L;->o(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final o(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/L;->h:Le/M;

    .line 2
    .line 3
    iget-object v0, v0, Le/M;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final p(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Li/a;->c:Z

    .line 2
    .line 3
    iget-object v0, p0, Le/L;->h:Le/M;

    .line 4
    .line 5
    iget-object v0, v0, Le/M;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
