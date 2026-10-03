.class public final Lc2/l;
.super LV1/t;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final b:Lc2/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc2/l;

    .line 2
    .line 3
    invoke-direct {v0}, LV1/t;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lc2/l;->b:Lc2/l;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    sget-object p1, Lc2/d;->c:Lc2/d;

    .line 2
    .line 3
    sget-object v0, Lc2/k;->h:Lc2/i;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object p1, p1, Lc2/g;->b:Lc2/b;

    .line 7
    .line 8
    invoke-virtual {p1, p2, v0, v1}, Lc2/b;->b(Ljava/lang/Runnable;Lc2/i;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final dispatchYield(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    sget-object p1, Lc2/d;->c:Lc2/d;

    .line 2
    .line 3
    sget-object v0, Lc2/k;->h:Lc2/i;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iget-object p1, p1, Lc2/g;->b:Lc2/b;

    .line 7
    .line 8
    invoke-virtual {p1, p2, v0, v1}, Lc2/b;->b(Ljava/lang/Runnable;Lc2/i;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final limitedParallelism(I)LV1/t;
    .locals 1

    .line 1
    invoke-static {p1}, La2/a;->a(I)V

    .line 2
    .line 3
    .line 4
    sget v0, Lc2/k;->d:I

    .line 5
    .line 6
    if-lt p1, v0, :cond_0

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-super {p0, p1}, LV1/t;->limitedParallelism(I)LV1/t;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
