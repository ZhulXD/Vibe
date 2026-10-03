.class public final synthetic Ly1/n1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:LI1/j;

.field public final synthetic d:LB1/x;


# direct methods
.method public synthetic constructor <init>(LI1/j;LB1/x;I)V
    .locals 0

    .line 1
    iput p3, p0, Ly1/n1;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ly1/n1;->c:LI1/j;

    .line 4
    .line 5
    iput-object p2, p0, Ly1/n1;->d:LB1/x;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget p1, p0, Ly1/n1;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Ly1/n1;->c:LI1/j;

    .line 7
    .line 8
    iget-object v0, p1, LI1/j;->d:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Ly1/e1;

    .line 11
    .line 12
    iget-object v1, p0, Ly1/n1;->d:LB1/x;

    .line 13
    .line 14
    iget-object v1, v1, LB1/x;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ly1/e1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, LI1/j;->c()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    iget-object p1, p0, Ly1/n1;->c:LI1/j;

    .line 24
    .line 25
    iget-object v0, p1, LI1/j;->d:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Ly1/e1;

    .line 28
    .line 29
    iget-object v1, p0, Ly1/n1;->d:LB1/x;

    .line 30
    .line 31
    iget-object v1, v1, LB1/x;->a:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ly1/e1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, LI1/j;->c()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
