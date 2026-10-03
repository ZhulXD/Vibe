.class public abstract Ly1/f0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final a:La2/e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, LV1/q0;

    .line 2
    .line 3
    invoke-direct {v0}, LV1/e0;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, LV1/H;->b:Lc2/c;

    .line 7
    .line 8
    invoke-static {v0, v1}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, La2/e;

    .line 13
    .line 14
    sget-object v2, LV1/a0;->b:LV1/a0;

    .line 15
    .line 16
    invoke-interface {v0, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v2, LV1/e0;

    .line 24
    .line 25
    invoke-direct {v2}, LV1/e0;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :goto_0
    invoke-direct {v1, v0}, La2/e;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    .line 33
    .line 34
    .line 35
    sput-object v1, Ly1/f0;->a:La2/e;

    .line 36
    .line 37
    return-void
.end method

.method public static a(Landroid/app/Activity;IJ)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-ltz p1, :cond_2

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    cmp-long v0, p2, v0

    .line 11
    .line 12
    if-gtz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    sub-long/2addr v0, p2

    .line 20
    const-wide/32 p2, 0xea60

    .line 21
    .line 22
    .line 23
    div-long/2addr v0, p2

    .line 24
    long-to-int p2, v0

    .line 25
    if-gtz p2, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    new-instance p3, Lcom/minhub/gamehub/data/GameRepository;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string v0, "getApplicationContext(...)"

    .line 35
    .line 36
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p3, p0}, Lcom/minhub/gamehub/data/GameRepository;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3, p1, p2}, Lcom/minhub/gamehub/data/GameRepository;->addPlaytime(II)V

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_0
    return-void
.end method
