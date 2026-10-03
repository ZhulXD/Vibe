.class public final synthetic LC1/I;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic c:Lcom/minhub/gamehub/hub/AddGameActivity;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/io/File;

.field public final synthetic f:LD1/b;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/minhub/gamehub/hub/AddGameActivity;Ljava/lang/String;Ljava/io/File;LD1/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LC1/I;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    iput-object p2, p0, LC1/I;->c:Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 7
    .line 8
    iput-object p3, p0, LC1/I;->d:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, LC1/I;->e:Ljava/io/File;

    .line 11
    .line 12
    iput-object p5, p0, LC1/I;->f:LD1/b;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    move-object v4, p1

    .line 2
    check-cast v4, LD1/l;

    .line 3
    .line 4
    const-string p1, "candidate"

    .line 5
    .line 6
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    const/4 v0, 0x1

    .line 11
    iget-object v1, p0, LC1/I;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    sget-object p1, LC1/Q;->c:LC1/Q;

    .line 20
    .line 21
    iget-object v1, p0, LC1/I;->c:Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Lcom/minhub/gamehub/hub/AddGameActivity;->B(LC1/Q;)V

    .line 24
    .line 25
    .line 26
    const/16 p1, 0x60

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Lcom/minhub/gamehub/hub/AddGameActivity;->D(I)V

    .line 29
    .line 30
    .line 31
    new-instance p1, Ljava/lang/Thread;

    .line 32
    .line 33
    new-instance v0, LC1/E;

    .line 34
    .line 35
    const/4 v6, 0x1

    .line 36
    iget-object v2, p0, LC1/I;->d:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v3, p0, LC1/I;->e:Ljava/io/File;

    .line 39
    .line 40
    iget-object v5, p0, LC1/I;->f:LD1/b;

    .line 41
    .line 42
    invoke-direct/range {v0 .. v6}, LC1/E;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 49
    .line 50
    .line 51
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 52
    .line 53
    return-object p1
.end method
