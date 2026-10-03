.class public final synthetic LC1/D;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/io/Serializable;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/io/Serializable;Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p4, p0, LC1/D;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LC1/D;->d:Ljava/io/Serializable;

    .line 4
    .line 5
    iput-object p2, p0, LC1/D;->e:Ljava/lang/Object;

    .line 6
    .line 7
    iput p3, p0, LC1/D;->c:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, LC1/D;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LC1/D;->d:Ljava/io/Serializable;

    .line 7
    .line 8
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 9
    .line 10
    iget-object v1, p0, LC1/D;->e:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 13
    .line 14
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Le/g;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Le/D;->dismiss()V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget v0, p0, LC1/D;->c:I

    .line 24
    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 33
    .line 34
    return-object v0

    .line 35
    :pswitch_0
    iget-object v0, p0, LC1/D;->d:Ljava/io/Serializable;

    .line 36
    .line 37
    check-cast v0, Lkotlin/jvm/internal/Ref$IntRef;

    .line 38
    .line 39
    iget-object v1, p0, LC1/D;->e:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 42
    .line 43
    iget v2, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 44
    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    iput v2, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 48
    .line 49
    iget-object v2, v1, Lcom/minhub/gamehub/hub/AddGameActivity;->f:Landroid/os/Handler;

    .line 50
    .line 51
    new-instance v3, LC1/H;

    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    iget v5, p0, LC1/D;->c:I

    .line 55
    .line 56
    invoke-direct {v3, v1, v0, v5, v4}, LC1/H;-><init>(LS1/c;Ljava/lang/Object;II)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    .line 61
    .line 62
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 63
    .line 64
    return-object v0

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
