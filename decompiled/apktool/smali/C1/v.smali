.class public final synthetic LC1/v;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:LH0/o;


# direct methods
.method public synthetic constructor <init>(LH0/o;I)V
    .locals 0

    .line 1
    iput p2, p0, LC1/v;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LC1/v;->c:LH0/o;

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
    .locals 0

    .line 1
    iget p1, p0, LC1/v;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, LC1/v;->c:LH0/o;

    .line 7
    .line 8
    invoke-virtual {p1}, Le/D;->dismiss()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object p1, p0, LC1/v;->c:LH0/o;

    .line 13
    .line 14
    invoke-virtual {p1}, Le/D;->dismiss()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    iget-object p1, p0, LC1/v;->c:LH0/o;

    .line 19
    .line 20
    invoke-virtual {p1}, Le/D;->dismiss()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_2
    iget-object p1, p0, LC1/v;->c:LH0/o;

    .line 25
    .line 26
    invoke-virtual {p1}, Le/D;->dismiss()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_3
    iget-object p1, p0, LC1/v;->c:LH0/o;

    .line 31
    .line 32
    invoke-virtual {p1}, Le/D;->dismiss()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
