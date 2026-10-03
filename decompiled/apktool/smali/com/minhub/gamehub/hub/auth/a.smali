.class public final synthetic Lcom/minhub/gamehub/hub/auth/a;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Le/g;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Le/g;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/minhub/gamehub/hub/auth/a;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/minhub/gamehub/hub/auth/a;->c:Le/g;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/minhub/gamehub/hub/auth/a;->d:Lkotlin/jvm/functions/Function0;

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
    iget v0, p0, Lcom/minhub/gamehub/hub/auth/a;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/minhub/gamehub/hub/auth/a;->c:Le/g;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/minhub/gamehub/hub/auth/a;->d:Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    invoke-static {v0, v1, p1}, Lcom/minhub/gamehub/hub/auth/LoginAlertDialog;->c(Le/g;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, Lcom/minhub/gamehub/hub/auth/a;->c:Le/g;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/minhub/gamehub/hub/auth/a;->d:Lkotlin/jvm/functions/Function0;

    .line 17
    .line 18
    invoke-static {v0, v1, p1}, Lcom/minhub/gamehub/hub/auth/LoginAlertDialog;->d(Le/g;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
