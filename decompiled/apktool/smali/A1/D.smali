.class public final LA1/D;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final a:LA1/D;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LA1/D;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LA1/D;->a:LA1/D;

    .line 7
    .line 8
    return-void
.end method

.method public static a(JJ)Z
    .locals 7

    .line 1
    const-wide v0, -0x7fffffffffffd8f0L    # -4.9407E-320

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmp-long v0, p2, v0

    .line 7
    .line 8
    const-wide/16 v1, 0x2710

    .line 9
    .line 10
    if-gez v0, :cond_0

    .line 11
    .line 12
    const-wide/high16 v3, -0x8000000000000000L

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sub-long v3, p2, v1

    .line 16
    .line 17
    :goto_0
    const-wide v5, 0x7fffffffffffd8efL

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    cmp-long v0, p2, v5

    .line 23
    .line 24
    if-lez v0, :cond_1

    .line 25
    .line 26
    const-wide p2, 0x7fffffffffffffffL

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    add-long/2addr p2, v1

    .line 33
    :goto_1
    cmp-long v0, v3, p0

    .line 34
    .line 35
    if-gtz v0, :cond_2

    .line 36
    .line 37
    cmp-long p0, p0, p2

    .line 38
    .line 39
    if-gtz p0, :cond_2

    .line 40
    .line 41
    const/4 p0, 0x1

    .line 42
    return p0

    .line 43
    :cond_2
    const/4 p0, 0x0

    .line 44
    return p0
.end method

.method public static final b(Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of p1, p0, Ljava/lang/String;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    check-cast p0, Ljava/lang/String;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p0, v0

    .line 14
    :goto_0
    if-eqz p0, :cond_1

    .line 15
    .line 16
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    return-object v0
.end method
