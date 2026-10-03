.class public final synthetic Ly1/h;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:LQ1/d;


# direct methods
.method public synthetic constructor <init>(LQ1/d;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly1/h;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ly1/h;->c:LQ1/d;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget p2, p0, Ly1/h;->b:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Ly1/h;->c:LQ1/d;

    .line 7
    .line 8
    invoke-virtual {p2}, LQ1/d;->c()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    iget-object p2, p0, Ly1/h;->c:LQ1/d;

    .line 16
    .line 17
    invoke-virtual {p2}, LQ1/d;->c()V

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    iget-object p2, p0, Ly1/h;->c:LQ1/d;

    .line 25
    .line 26
    invoke-virtual {p2}, LQ1/d;->c()V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
