.class public final LC1/Z0;
.super Landroidx/lifecycle/AndroidViewModel;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final a:Lcom/minhub/gamehub/data/GameRepository;

.field public final b:Landroidx/lifecycle/LiveData;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 1
    const-string v0, "app"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/minhub/gamehub/data/GameRepository;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Lcom/minhub/gamehub/data/GameRepository;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, LC1/Z0;->a:Lcom/minhub/gamehub/data/GameRepository;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/minhub/gamehub/data/GameRepository;->getGames()Landroidx/lifecycle/LiveData;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, LC1/Z0;->b:Landroidx/lifecycle/LiveData;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a(Lcom/minhub/gamehub/data/Game;)V
    .locals 5

    .line 1
    const-string v0, "g"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)LV1/x;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, LV1/H;->b:Lc2/c;

    .line 11
    .line 12
    new-instance v2, LC1/Y0;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x2

    .line 16
    invoke-direct {v2, p0, p1, v3, v4}, LC1/Y0;-><init>(LC1/Z0;Lcom/minhub/gamehub/data/Game;Lkotlin/coroutines/Continuation;I)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x2

    .line 20
    invoke-static {v0, v1, v2, p1}, LV1/A;->c(LV1/x;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)LV1/p0;

    .line 21
    .line 22
    .line 23
    return-void
.end method
