.class public final LX1/o;
.super LX1/g;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements LX1/p;


# virtual methods
.method public final J(Ljava/lang/Throwable;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, LX1/g;->e:LX1/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, LX1/b;->h(Ljava/lang/Throwable;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    iget-object p2, p0, LV1/a;->d:Lkotlin/coroutines/CoroutineContext;

    .line 13
    .line 14
    invoke-static {p2, p1}, LV1/w;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final K(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lkotlin/Unit;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x0

    .line 5
    iget-object v1, p0, LX1/g;->e:LX1/b;

    .line 6
    .line 7
    invoke-virtual {v1, p1, v0}, LX1/b;->h(Ljava/lang/Throwable;Z)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method
