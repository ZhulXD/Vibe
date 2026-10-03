.class public final Ld2/c;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements LV1/d;
.implements LV1/w0;


# instance fields
.field public final b:LV1/e;

.field public final synthetic c:Ld2/e;


# direct methods
.method public constructor <init>(Ld2/e;LV1/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld2/c;->c:Ld2/e;

    .line 5
    .line 6
    iput-object p2, p0, Ld2/c;->b:LV1/e;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(La2/u;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/c;->b:LV1/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, LV1/e;->a(La2/u;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 2

    .line 1
    check-cast p1, Lkotlin/Unit;

    .line 2
    .line 3
    sget-object p2, Ld2/e;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iget-object v1, p0, Ld2/c;->c:Ld2/e;

    .line 7
    .line 8
    invoke-virtual {p2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance p2, Ld2/b;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p2, v1, p0, v0}, Ld2/b;-><init>(Ld2/e;Ld2/c;I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Ld2/c;->b:LV1/e;

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2}, LV1/e;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final d(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)La2/w;
    .locals 2

    .line 1
    check-cast p1, Lkotlin/Unit;

    .line 2
    .line 3
    new-instance p2, Ld2/b;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iget-object v1, p0, Ld2/c;->c:Ld2/e;

    .line 7
    .line 8
    invoke-direct {p2, v1, p0, v0}, Ld2/b;-><init>(Ld2/e;Ld2/c;I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Ld2/c;->b:LV1/e;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, LV1/e;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)La2/w;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    sget-object p2, Ld2/e;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-object p1
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/c;->b:LV1/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LV1/e;->g(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/c;->b:LV1/e;

    .line 2
    .line 3
    iget-object v0, v0, LV1/e;->f:Lkotlin/coroutines/CoroutineContext;

    .line 4
    .line 5
    return-object v0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/c;->b:LV1/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LV1/e;->resumeWith(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
