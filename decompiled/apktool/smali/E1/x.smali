.class public final LE1/x;
.super Landroidx/viewpager2/adapter/d;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final m:Lcom/minhub/gamehub/hub/SettingsActivity;

.field public final n:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/minhub/gamehub/hub/SettingsActivity;)V
    .locals 6

    .line 1
    const-string v0, "act"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/d;-><init>(Lcom/minhub/gamehub/hub/SettingsActivity;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, LE1/x;->m:Lcom/minhub/gamehub/hub/SettingsActivity;

    .line 10
    .line 11
    new-instance p1, LE1/n;

    .line 12
    .line 13
    invoke-direct {p1}, LE1/n;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v0, LE1/w;

    .line 17
    .line 18
    invoke-direct {v0}, LE1/w;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v1, LE1/B;

    .line 22
    .line 23
    invoke-direct {v1}, LE1/B;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v2, LE1/g;

    .line 27
    .line 28
    invoke-direct {v2}, LE1/g;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v3, LE1/I;

    .line 32
    .line 33
    invoke-direct {v3}, LE1/I;-><init>()V

    .line 34
    .line 35
    .line 36
    const/4 v4, 0x5

    .line 37
    new-array v4, v4, [Landroidx/fragment/app/Fragment;

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    aput-object p1, v4, v5

    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    aput-object v0, v4, p1

    .line 44
    .line 45
    const/4 p1, 0x2

    .line 46
    aput-object v1, v4, p1

    .line 47
    .line 48
    const/4 p1, 0x3

    .line 49
    aput-object v2, v4, p1

    .line 50
    .line 51
    const/4 p1, 0x4

    .line 52
    aput-object v3, v4, p1

    .line 53
    .line 54
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, LE1/x;->n:Ljava/util/List;

    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget-object v0, p0, LE1/x;->n:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
