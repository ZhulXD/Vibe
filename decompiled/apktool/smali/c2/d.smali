.class public final Lc2/d;
.super Lc2/g;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final c:Lc2/d;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lc2/d;

    .line 2
    .line 3
    sget v2, Lc2/k;->c:I

    .line 4
    .line 5
    sget v3, Lc2/k;->d:I

    .line 6
    .line 7
    sget-wide v4, Lc2/k;->e:J

    .line 8
    .line 9
    sget-object v6, Lc2/k;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v0}, LV1/t;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lc2/b;

    .line 15
    .line 16
    invoke-direct/range {v1 .. v6}, Lc2/b;-><init>(IIJLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, v0, Lc2/g;->b:Lc2/b;

    .line 20
    .line 21
    sput-object v0, Lc2/d;->c:Lc2/d;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, "Dispatchers.Default cannot be closed"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public final limitedParallelism(I)LV1/t;
    .locals 1

    .line 1
    invoke-static {p1}, La2/a;->a(I)V

    .line 2
    .line 3
    .line 4
    sget v0, Lc2/k;->c:I

    .line 5
    .line 6
    if-lt p1, v0, :cond_0

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-super {p0, p1}, LV1/t;->limitedParallelism(I)LV1/t;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Dispatchers.Default"

    .line 2
    .line 3
    return-object v0
.end method
