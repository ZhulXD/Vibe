.class public final synthetic LC1/z;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Le/g;


# direct methods
.method public synthetic constructor <init>(Le/g;I)V
    .locals 0

    .line 1
    iput p2, p0, LC1/z;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LC1/z;->c:Le/g;

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
    iget v0, p0, LC1/z;->b:I

    .line 2
    .line 3
    iget-object v1, p0, LC1/z;->c:Le/g;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Le/D;->dismiss()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    invoke-virtual {v1}, Le/D;->dismiss()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_1
    invoke-static {v1, p1}, Lcom/minhub/gamehub/hub/auth/LoginAlertDialog;->e(Le/g;Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_2
    invoke-virtual {v1}, Le/D;->dismiss()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_3
    invoke-virtual {v1}, Le/D;->dismiss()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_4
    sget p1, Lcom/minhub/gamehub/hub/HubActivity;->j:I

    .line 29
    .line 30
    invoke-virtual {v1}, Le/D;->dismiss()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_5
    invoke-virtual {v1}, Le/D;->dismiss()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_6
    sget p1, Lcom/minhub/gamehub/hub/GameDetailActivity;->w:I

    .line 39
    .line 40
    invoke-virtual {v1}, Le/D;->dismiss()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_7
    sget p1, Lcom/minhub/gamehub/hub/GameDetailActivity;->w:I

    .line 45
    .line 46
    invoke-virtual {v1}, Le/D;->dismiss()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_8
    invoke-virtual {v1}, Le/D;->dismiss()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
