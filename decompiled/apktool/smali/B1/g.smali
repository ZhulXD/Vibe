.class public final LB1/g;
.super LP/y0;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final u:LI1/j;

.field public final synthetic v:LB1/h;


# direct methods
.method public constructor <init>(LB1/h;LI1/j;)V
    .locals 1

    .line 1
    const-string v0, "b"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, LB1/g;->v:LB1/h;

    .line 7
    .line 8
    iget-object p1, p2, LI1/j;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Landroid/widget/LinearLayout;

    .line 11
    .line 12
    invoke-direct {p0, p1}, LP/y0;-><init>(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, LB1/g;->u:LI1/j;

    .line 16
    .line 17
    return-void
.end method
