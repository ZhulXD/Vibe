.class public final LV1/i;
.super LV1/d0;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements LV1/h;


# instance fields
.field public final f:LV1/j0;


# direct methods
.method public constructor <init>(LV1/j0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, La2/l;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LV1/i;->f:LV1/j0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, LV1/f0;->j()LV1/j0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, LV1/j0;->o(Ljava/lang/Throwable;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, LV1/i;->k(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p1
.end method

.method public final k(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, LV1/i;->f:LV1/j0;

    .line 2
    .line 3
    invoke-virtual {p0}, LV1/f0;->j()LV1/j0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, LV1/j0;->k(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method
