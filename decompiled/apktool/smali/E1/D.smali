.class public final synthetic LE1/D;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:LE1/C;


# direct methods
.method public synthetic constructor <init>(LE1/C;I)V
    .locals 0

    .line 1
    iput p2, p0, LE1/D;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LE1/D;->c:LE1/C;

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
    iget p1, p0, LE1/D;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, LE1/D;->c:LE1/C;

    .line 7
    .line 8
    invoke-virtual {p1}, LE1/C;->invoke()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object p1, p0, LE1/D;->c:LE1/C;

    .line 13
    .line 14
    invoke-virtual {p1}, LE1/C;->invoke()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
