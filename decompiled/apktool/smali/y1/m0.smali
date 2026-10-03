.class public final synthetic Ly1/m0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ly1/x0;


# direct methods
.method public synthetic constructor <init>(Ly1/x0;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly1/m0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ly1/m0;->c:Ly1/x0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget p1, p0, Ly1/m0;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Ly1/m0;->c:Ly1/x0;

    .line 7
    .line 8
    iget-object p1, p1, Ly1/x0;->c:Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object p1, p0, Ly1/m0;->c:Ly1/x0;

    .line 15
    .line 16
    iget-object p1, p1, Ly1/x0;->c:Lkotlin/jvm/functions/Function0;

    .line 17
    .line 18
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_1
    iget-object p1, p0, Ly1/m0;->c:Ly1/x0;

    .line 23
    .line 24
    iget-object p1, p1, Ly1/x0;->c:Lkotlin/jvm/functions/Function0;

    .line 25
    .line 26
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_2
    iget-object p1, p0, Ly1/m0;->c:Ly1/x0;

    .line 31
    .line 32
    iget-object p1, p1, Ly1/x0;->c:Lkotlin/jvm/functions/Function0;

    .line 33
    .line 34
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
