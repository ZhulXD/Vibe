.class public final Lg0/f;
.super Lg0/a;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lg0/f;->c:I

    .line 2
    .line 3
    invoke-direct {p0}, Lg0/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b()Lg0/i;
    .locals 1

    .line 1
    iget v0, p0, Lg0/f;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lg0/k;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lg0/k;-><init>(Lg0/f;)V

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :pswitch_0
    new-instance v0, Lg0/e;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lg0/e;-><init>(Lg0/f;)V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
