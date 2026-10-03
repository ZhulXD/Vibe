.class public final Li1/r;
.super Li1/o;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final b:Lk1/m;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lk1/m;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lk1/m;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Li1/r;->b:Lk1/m;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-eq p1, p0, :cond_1

    .line 2
    .line 3
    instance-of v0, p1, Li1/r;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Li1/r;

    .line 8
    .line 9
    iget-object p1, p1, Li1/r;->b:Lk1/m;

    .line 10
    .line 11
    iget-object v0, p0, Li1/r;->b:Lk1/m;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return p1

    .line 22
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 23
    return p1
.end method

.method public final g(Ljava/lang/String;Li1/o;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object p2, Li1/q;->b:Li1/q;

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Li1/r;->b:Lk1/m;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lk1/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final h(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    new-instance v0, Li1/s;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Li1/s;-><init>(Ljava/lang/Boolean;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Li1/r;->g(Ljava/lang/String;Li1/o;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Li1/r;->b:Lk1/m;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final i(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1

    .line 1
    new-instance v0, Li1/s;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Li1/s;-><init>(Ljava/lang/Number;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Li1/r;->g(Ljava/lang/String;Li1/o;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object p2, Li1/q;->b:Li1/q;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Li1/s;

    .line 7
    .line 8
    invoke-direct {v0, p2}, Li1/s;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object p2, v0

    .line 12
    :goto_0
    invoke-virtual {p0, p1, p2}, Li1/r;->g(Ljava/lang/String;Li1/o;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final k(Ljava/lang/String;)Li1/o;
    .locals 1

    .line 1
    iget-object v0, p0, Li1/r;->b:Lk1/m;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lk1/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Li1/o;

    .line 8
    .line 9
    return-object p1
.end method
