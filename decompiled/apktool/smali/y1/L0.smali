.class public final synthetic Ly1/L0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:LI1/j;


# direct methods
.method public synthetic constructor <init>(LI1/j;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly1/L0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ly1/L0;->c:LI1/j;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget p1, p0, Ly1/L0;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p1, "keyboard"

    .line 7
    .line 8
    iget-object v0, p0, Ly1/L0;->c:LI1/j;

    .line 9
    .line 10
    iput-object p1, v0, LI1/j;->c:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {v0}, LI1/j;->c()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    const-string p1, "gamepad"

    .line 17
    .line 18
    iget-object v0, p0, Ly1/L0;->c:LI1/j;

    .line 19
    .line 20
    iput-object p1, v0, LI1/j;->c:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {v0}, LI1/j;->c()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_1
    iget-object p1, p0, Ly1/L0;->c:LI1/j;

    .line 27
    .line 28
    iget-object v0, p1, LI1/j;->f:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Landroid/view/View;

    .line 31
    .line 32
    const/16 v1, 0x8

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object p1, p1, LI1/j;->b:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Landroid/widget/FrameLayout;

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_2
    iget-object p1, p0, Ly1/L0;->c:LI1/j;

    .line 48
    .line 49
    iget-object v0, p1, LI1/j;->f:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Landroid/view/View;

    .line 52
    .line 53
    const/16 v1, 0x8

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    :cond_1
    iget-object p1, p1, LI1/j;->b:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p1, Landroid/widget/FrameLayout;

    .line 63
    .line 64
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
