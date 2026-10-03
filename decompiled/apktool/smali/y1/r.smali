.class public final synthetic Ly1/r;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/minhub/gamehub/game/GameActivity;

.field public final synthetic c:LQ1/d;

.field public final synthetic d:LG1/h;

.field public final synthetic e:Lcom/minhub/gamehub/data/Game;

.field public final synthetic f:LQ1/c;

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/game/GameActivity;LQ1/d;LG1/h;Lcom/minhub/gamehub/data/Game;LQ1/c;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly1/r;->b:Lcom/minhub/gamehub/game/GameActivity;

    .line 5
    .line 6
    iput-object p2, p0, Ly1/r;->c:LQ1/d;

    .line 7
    .line 8
    iput-object p3, p0, Ly1/r;->d:LG1/h;

    .line 9
    .line 10
    iput-object p4, p0, Ly1/r;->e:Lcom/minhub/gamehub/data/Game;

    .line 11
    .line 12
    iput-object p5, p0, Ly1/r;->f:LQ1/c;

    .line 13
    .line 14
    iput-boolean p6, p0, Ly1/r;->g:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Ly1/r;->b:Lcom/minhub/gamehub/game/GameActivity;

    .line 2
    .line 3
    iget-object v1, p0, Ly1/r;->c:LQ1/d;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/minhub/gamehub/game/GameActivity;->y(LQ1/d;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v2, p0, Ly1/r;->d:LG1/h;

    .line 13
    .line 14
    iget-boolean v2, v2, LG1/h;->b:Z

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    new-instance v2, LO0/b;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-direct {v2, v0, v3}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 22
    .line 23
    .line 24
    iget-object v3, v2, Le/f;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v3, Le/b;

    .line 27
    .line 28
    const v4, 0x7f12033d

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v4}, LO0/b;->j(I)V

    .line 32
    .line 33
    .line 34
    const v4, 0x7f12033b

    .line 35
    .line 36
    .line 37
    iget-object v5, v3, Le/b;->a:Landroid/view/ContextThemeWrapper;

    .line 38
    .line 39
    invoke-virtual {v5, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    iput-object v4, v3, Le/b;->f:Ljava/lang/CharSequence;

    .line 44
    .line 45
    const/4 v4, 0x1

    .line 46
    iput-boolean v4, v3, Le/b;->m:Z

    .line 47
    .line 48
    new-instance v4, Ly1/m;

    .line 49
    .line 50
    const/4 v5, 0x1

    .line 51
    invoke-direct {v4, v0, v1, v5}, Ly1/m;-><init>(Lcom/minhub/gamehub/game/GameActivity;LQ1/d;I)V

    .line 52
    .line 53
    .line 54
    const v0, 0x7f12033c

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v0, v4}, LO0/b;->h(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Ly1/h;

    .line 61
    .line 62
    const/4 v4, 0x0

    .line 63
    invoke-direct {v0, v1, v4}, Ly1/h;-><init>(LQ1/d;I)V

    .line 64
    .line 65
    .line 66
    const v4, 0x7f12033a

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v4, v0}, LO0/b;->f(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 70
    .line 71
    .line 72
    new-instance v0, Ly1/i;

    .line 73
    .line 74
    const/4 v4, 0x0

    .line 75
    invoke-direct {v0, v4, v1}, Ly1/i;-><init>(ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iput-object v0, v3, Le/b;->n:Landroid/content/DialogInterface$OnCancelListener;

    .line 79
    .line 80
    invoke-virtual {v2}, Le/f;->e()Le/g;

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_1
    iget-object v2, p0, Ly1/r;->e:Lcom/minhub/gamehub/data/Game;

    .line 85
    .line 86
    iget-object v3, p0, Ly1/r;->f:LQ1/c;

    .line 87
    .line 88
    iget-boolean v4, p0, Ly1/r;->g:Z

    .line 89
    .line 90
    invoke-static {v0, v2, v1, v3, v4}, Ly1/s;->b(Lcom/minhub/gamehub/game/GameActivity;Lcom/minhub/gamehub/data/Game;LQ1/d;LQ1/c;Z)V

    .line 91
    .line 92
    .line 93
    return-void
.end method
