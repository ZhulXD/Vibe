.class public final synthetic Ly1/D;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/minhub/gamehub/game/GameActivity;

.field public final synthetic c:LQ1/d;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Landroid/webkit/WebView;

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/game/GameActivity;LQ1/d;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebView;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly1/D;->b:Lcom/minhub/gamehub/game/GameActivity;

    .line 5
    .line 6
    iput-object p2, p0, Ly1/D;->c:LQ1/d;

    .line 7
    .line 8
    iput-object p3, p0, Ly1/D;->d:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Ly1/D;->e:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Ly1/D;->f:Landroid/webkit/WebView;

    .line 13
    .line 14
    iput p6, p0, Ly1/D;->g:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    sget v0, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 2
    .line 3
    iget-object v2, p0, Ly1/D;->b:Lcom/minhub/gamehub/game/GameActivity;

    .line 4
    .line 5
    iget-object v3, p0, Ly1/D;->c:LQ1/d;

    .line 6
    .line 7
    invoke-virtual {v2, v3}, Lcom/minhub/gamehub/game/GameActivity;->y(LQ1/d;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-boolean v0, v2, Lcom/minhub/gamehub/game/GameActivity;->l:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, v2, Lcom/minhub/gamehub/game/GameActivity;->l:Z

    .line 20
    .line 21
    new-instance v4, Landroid/widget/EditText;

    .line 22
    .line 23
    invoke-direct {v4, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Ly1/D;->e:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 40
    .line 41
    .line 42
    new-instance v0, LO0/b;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-direct {v0, v2, v1}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 46
    .line 47
    .line 48
    iget-object v1, v0, Le/f;->c:Ljava/lang/Object;

    .line 49
    .line 50
    move-object v7, v1

    .line 51
    check-cast v7, Le/b;

    .line 52
    .line 53
    iget-object v1, p0, Ly1/D;->d:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_1

    .line 60
    .line 61
    const-string v1, "Input"

    .line 62
    .line 63
    :cond_1
    iput-object v1, v7, Le/b;->d:Ljava/lang/CharSequence;

    .line 64
    .line 65
    iput-object v4, v7, Le/b;->t:Landroid/view/View;

    .line 66
    .line 67
    new-instance v1, Ly1/E;

    .line 68
    .line 69
    iget-object v5, p0, Ly1/D;->f:Landroid/webkit/WebView;

    .line 70
    .line 71
    iget v6, p0, Ly1/D;->g:I

    .line 72
    .line 73
    invoke-direct/range {v1 .. v6}, Ly1/E;-><init>(Lcom/minhub/gamehub/game/GameActivity;LQ1/d;Landroid/widget/EditText;Landroid/webkit/WebView;I)V

    .line 74
    .line 75
    .line 76
    const v3, 0x104000a

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v3, v1}, LO0/b;->h(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 80
    .line 81
    .line 82
    const/high16 v1, 0x1040000

    .line 83
    .line 84
    const/4 v3, 0x0

    .line 85
    invoke-virtual {v0, v1, v3}, LO0/b;->f(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 86
    .line 87
    .line 88
    new-instance v1, LC1/x;

    .line 89
    .line 90
    const/4 v3, 0x2

    .line 91
    invoke-direct {v1, v3, v2}, LC1/x;-><init>(ILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    iput-object v1, v7, Le/b;->o:Landroid/content/DialogInterface$OnDismissListener;

    .line 95
    .line 96
    invoke-virtual {v0}, Le/f;->e()Le/g;

    .line 97
    .line 98
    .line 99
    :cond_2
    :goto_0
    return-void
.end method
