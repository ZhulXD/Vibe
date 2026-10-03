.class public final LC1/Y0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:LC1/Z0;

.field public final synthetic d:Lcom/minhub/gamehub/data/Game;


# direct methods
.method public synthetic constructor <init>(LC1/Z0;Lcom/minhub/gamehub/data/Game;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p4, p0, LC1/Y0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LC1/Y0;->c:LC1/Z0;

    .line 4
    .line 5
    iput-object p2, p0, LC1/Y0;->d:Lcom/minhub/gamehub/data/Game;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    iget p1, p0, LC1/Y0;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, LC1/Y0;

    .line 7
    .line 8
    iget-object v0, p0, LC1/Y0;->d:Lcom/minhub/gamehub/data/Game;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    iget-object v2, p0, LC1/Y0;->c:LC1/Z0;

    .line 12
    .line 13
    invoke-direct {p1, v2, v0, p2, v1}, LC1/Y0;-><init>(LC1/Z0;Lcom/minhub/gamehub/data/Game;Lkotlin/coroutines/Continuation;I)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :pswitch_0
    new-instance p1, LC1/Y0;

    .line 18
    .line 19
    iget-object v0, p0, LC1/Y0;->d:Lcom/minhub/gamehub/data/Game;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    iget-object v2, p0, LC1/Y0;->c:LC1/Z0;

    .line 23
    .line 24
    invoke-direct {p1, v2, v0, p2, v1}, LC1/Y0;-><init>(LC1/Z0;Lcom/minhub/gamehub/data/Game;Lkotlin/coroutines/Continuation;I)V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :pswitch_1
    new-instance p1, LC1/Y0;

    .line 29
    .line 30
    iget-object v0, p0, LC1/Y0;->d:Lcom/minhub/gamehub/data/Game;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    iget-object v2, p0, LC1/Y0;->c:LC1/Z0;

    .line 34
    .line 35
    invoke-direct {p1, v2, v0, p2, v1}, LC1/Y0;-><init>(LC1/Z0;Lcom/minhub/gamehub/data/Game;Lkotlin/coroutines/Continuation;I)V

    .line 36
    .line 37
    .line 38
    return-object p1

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, LC1/Y0;->b:I

    .line 2
    .line 3
    check-cast p1, LV1/x;

    .line 4
    .line 5
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, LC1/Y0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, LC1/Y0;

    .line 15
    .line 16
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, LC1/Y0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, LC1/Y0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, LC1/Y0;

    .line 28
    .line 29
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, LC1/Y0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    :pswitch_1
    invoke-virtual {p0, p1, p2}, LC1/Y0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, LC1/Y0;

    .line 41
    .line 42
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 43
    .line 44
    invoke-virtual {p1, p2}, LC1/Y0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, LC1/Y0;->b:I

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, LC1/Y0;->c:LC1/Z0;

    .line 13
    .line 14
    iget-object p1, p1, LC1/Z0;->a:Lcom/minhub/gamehub/data/GameRepository;

    .line 15
    .line 16
    iget-object v0, p0, LC1/Y0;->d:Lcom/minhub/gamehub/data/Game;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/minhub/gamehub/data/GameRepository;->update(Lcom/minhub/gamehub/data/Game;)V

    .line 19
    .line 20
    .line 21
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p1

    .line 24
    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, LC1/Y0;->c:LC1/Z0;

    .line 28
    .line 29
    iget-object p1, p1, LC1/Z0;->a:Lcom/minhub/gamehub/data/GameRepository;

    .line 30
    .line 31
    iget-object v0, p0, LC1/Y0;->d:Lcom/minhub/gamehub/data/Game;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/minhub/gamehub/data/GameRepository;->toggleFavorite(Lcom/minhub/gamehub/data/Game;)V

    .line 34
    .line 35
    .line 36
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 37
    .line 38
    return-object p1

    .line 39
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, LC1/Y0;->c:LC1/Z0;

    .line 43
    .line 44
    iget-object p1, p1, LC1/Z0;->a:Lcom/minhub/gamehub/data/GameRepository;

    .line 45
    .line 46
    iget-object v0, p0, LC1/Y0;->d:Lcom/minhub/gamehub/data/Game;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/minhub/gamehub/data/GameRepository;->delete(Lcom/minhub/gamehub/data/Game;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 52
    .line 53
    return-object p1

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
