.class public final LC1/N0;
.super LP/E;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final synthetic d:Lcom/minhub/gamehub/hub/GameDetailActivity;


# direct methods
.method public constructor <init>(Lcom/minhub/gamehub/hub/GameDetailActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LC1/N0;->d:Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, LP/E;->a:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final f(Landroidx/recyclerview/widget/RecyclerView;LP/y0;)I
    .locals 1

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "viewHolder"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, LC1/N0;->d:Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/minhub/gamehub/hub/GameDetailActivity;->r:LC1/b2;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string p1, "pluginManagerAdapter"

    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    :goto_0
    iget-boolean p1, p1, LC1/b2;->j:Z

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    const p1, 0x30003

    .line 29
    .line 30
    .line 31
    return p1

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    return p1
.end method
