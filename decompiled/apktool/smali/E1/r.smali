.class public final synthetic LE1/r;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:LE1/w;

.field public final synthetic d:LL1/a;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Landroid/widget/TextView;

.field public final synthetic g:Landroid/widget/Button;

.field public final synthetic h:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(ILE1/w;LL1/a;Landroid/content/Context;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput p1, p0, LE1/r;->b:I

    .line 2
    .line 3
    iput-object p2, p0, LE1/r;->c:LE1/w;

    .line 4
    .line 5
    iput-object p3, p0, LE1/r;->d:LL1/a;

    .line 6
    .line 7
    iput-object p4, p0, LE1/r;->e:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p7, p0, LE1/r;->f:Landroid/widget/TextView;

    .line 10
    .line 11
    iput-object p5, p0, LE1/r;->g:Landroid/widget/Button;

    .line 12
    .line 13
    iput-object p6, p0, LE1/r;->h:Landroid/widget/Button;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget p1, p0, LE1/r;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object p1, Ly1/v1;->i:Ly1/v1;

    .line 7
    .line 8
    new-instance v0, LE1/p;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iget-object v2, p0, LE1/r;->c:LE1/w;

    .line 12
    .line 13
    iget-object v3, p0, LE1/r;->d:LL1/a;

    .line 14
    .line 15
    iget-object v4, p0, LE1/r;->e:Landroid/content/Context;

    .line 16
    .line 17
    iget-object v5, p0, LE1/r;->g:Landroid/widget/Button;

    .line 18
    .line 19
    iget-object v6, p0, LE1/r;->h:Landroid/widget/Button;

    .line 20
    .line 21
    iget-object v7, p0, LE1/r;->f:Landroid/widget/TextView;

    .line 22
    .line 23
    invoke-direct/range {v0 .. v7}, LE1/p;-><init>(ILE1/w;LL1/a;Landroid/content/Context;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p1, v3, v0}, LE1/w;->f(Ly1/v1;LL1/a;Lkotlin/jvm/functions/Function0;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_0
    sget-object p1, Ly1/v1;->j:Ly1/v1;

    .line 31
    .line 32
    new-instance v0, LE1/p;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    iget-object v2, p0, LE1/r;->c:LE1/w;

    .line 36
    .line 37
    iget-object v3, p0, LE1/r;->d:LL1/a;

    .line 38
    .line 39
    iget-object v4, p0, LE1/r;->e:Landroid/content/Context;

    .line 40
    .line 41
    iget-object v5, p0, LE1/r;->g:Landroid/widget/Button;

    .line 42
    .line 43
    iget-object v6, p0, LE1/r;->h:Landroid/widget/Button;

    .line 44
    .line 45
    iget-object v7, p0, LE1/r;->f:Landroid/widget/TextView;

    .line 46
    .line 47
    invoke-direct/range {v0 .. v7}, LE1/p;-><init>(ILE1/w;LL1/a;Landroid/content/Context;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, p1, v3, v0}, LE1/w;->f(Ly1/v1;LL1/a;Lkotlin/jvm/functions/Function0;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
