.class public final LS/x;
.super LS/w;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final synthetic a:Lq/e;

.field public final synthetic b:LS/y;


# direct methods
.method public constructor <init>(LS/y;Lq/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LS/x;->b:LS/y;

    .line 5
    .line 6
    iput-object p2, p0, LS/x;->a:Lq/e;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(LS/v;)V
    .locals 2

    .line 1
    iget-object v0, p0, LS/x;->b:LS/y;

    .line 2
    .line 3
    iget-object v0, v0, LS/y;->c:Landroid/view/ViewGroup;

    .line 4
    .line 5
    iget-object v1, p0, LS/x;->a:Lq/e;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lq/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p0}, LS/v;->B(LS/t;)LS/v;

    .line 17
    .line 18
    .line 19
    return-void
.end method
