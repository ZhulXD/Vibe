.class public final LW1/c;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LW1/c;->b:I

    .line 2
    .line 3
    iput-object p2, p0, LW1/c;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, LW1/c;->d:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, LW1/c;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Throwable;

    .line 7
    .line 8
    iget-object p1, p0, LW1/c;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Ld2/e;

    .line 11
    .line 12
    iget-object v0, p0, LW1/c;->d:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ld2/e;->d(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p1

    .line 20
    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    .line 21
    .line 22
    iget-object p1, p0, LW1/c;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p1, LW1/d;

    .line 25
    .line 26
    iget-object p1, p1, LW1/d;->b:Landroid/os/Handler;

    .line 27
    .line 28
    iget-object v0, p0, LW1/c;->d:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, LE0/d;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 36
    .line 37
    return-object p1

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
