.class public final LC1/r;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lcom/minhub/gamehub/hub/AddGameActivity;


# direct methods
.method public constructor <init>(Lcom/minhub/gamehub/hub/AddGameActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, LC1/r;->b:Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, LC1/r;->b:Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
