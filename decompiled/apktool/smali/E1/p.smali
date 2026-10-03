.class public final synthetic LE1/p;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:LL1/a;

.field public final synthetic e:Landroid/widget/TextView;

.field public final synthetic f:LE1/w;

.field public final synthetic g:Landroid/widget/Button;

.field public final synthetic h:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(ILE1/w;LL1/a;Landroid/content/Context;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput p1, p0, LE1/p;->b:I

    .line 2
    .line 3
    iput-object p4, p0, LE1/p;->c:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, LE1/p;->d:LL1/a;

    .line 6
    .line 7
    iput-object p7, p0, LE1/p;->e:Landroid/widget/TextView;

    .line 8
    .line 9
    iput-object p2, p0, LE1/p;->f:LE1/w;

    .line 10
    .line 11
    iput-object p5, p0, LE1/p;->g:Landroid/widget/Button;

    .line 12
    .line 13
    iput-object p6, p0, LE1/p;->h:Landroid/widget/Button;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, LE1/p;->b:I

    .line 2
    .line 3
    iget-object v5, p0, LE1/p;->g:Landroid/widget/Button;

    .line 4
    .line 5
    iget-object v6, p0, LE1/p;->h:Landroid/widget/Button;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, LE1/p;->c:Landroid/content/Context;

    .line 11
    .line 12
    iget-object v2, p0, LE1/p;->d:LL1/a;

    .line 13
    .line 14
    iget-object v3, p0, LE1/p;->e:Landroid/widget/TextView;

    .line 15
    .line 16
    iget-object v4, p0, LE1/p;->f:LE1/w;

    .line 17
    .line 18
    invoke-static/range {v1 .. v6}, LE1/w;->e(Landroid/content/Context;LL1/a;Landroid/widget/TextView;LE1/w;Landroid/widget/Button;Landroid/widget/Button;)V

    .line 19
    .line 20
    .line 21
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 22
    .line 23
    return-object v0

    .line 24
    :pswitch_0
    iget-object v1, p0, LE1/p;->c:Landroid/content/Context;

    .line 25
    .line 26
    iget-object v2, p0, LE1/p;->d:LL1/a;

    .line 27
    .line 28
    iget-object v3, p0, LE1/p;->e:Landroid/widget/TextView;

    .line 29
    .line 30
    iget-object v4, p0, LE1/p;->f:LE1/w;

    .line 31
    .line 32
    invoke-static/range {v1 .. v6}, LE1/w;->d(Landroid/content/Context;LL1/a;Landroid/widget/TextView;LE1/w;Landroid/widget/Button;Landroid/widget/Button;)V

    .line 33
    .line 34
    .line 35
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 36
    .line 37
    return-object v0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
