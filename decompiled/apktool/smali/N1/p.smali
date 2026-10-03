.class public final LN1/p;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "allowedHost"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "allowedPathPrefix"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "authorizedRollbackMarker"

    .line 12
    .line 13
    const-string v1, "AUTHORIZED_ROLLBACK_V2"

    .line 14
    .line 15
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, LN1/p;->a:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p2, p0, LN1/p;->b:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const-string v0, "Failed requirement."

    .line 30
    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    const-string p1, "/"

    .line 34
    .line 35
    invoke-static {p2, p1}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, LN1/p;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, LN1/p;

    .line 10
    .line 11
    iget-object v0, p0, LN1/p;->a:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p1, LN1/p;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, LN1/p;->b:Ljava/lang/String;

    .line 23
    .line 24
    iget-object p1, p1, LN1/p;->b:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    const-string p1, "AUTHORIZED_ROLLBACK_V2"

    .line 34
    .line 35
    invoke-static {p1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_4

    .line 40
    .line 41
    :goto_0
    const/4 p1, 0x0

    .line 42
    return p1

    .line 43
    :cond_4
    :goto_1
    const/4 p1, 0x1

    .line 44
    return p1
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, LN1/p;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object v2, p0, LN1/p;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v2, v0, v1}, LE/b;->d(Ljava/lang/String;II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const-wide/32 v2, 0x40000

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v3, v0, v1}, LE/b;->c(JII)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const-wide/32 v2, 0x2000000

    .line 24
    .line 25
    .line 26
    invoke-static {v2, v3, v0, v1}, LE/b;->c(JII)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-static {v2, v3, v0, v1}, LE/b;->c(JII)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/16 v2, 0x80

    .line 35
    .line 36
    invoke-static {v2, v0, v1}, LE/b;->a(III)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const-wide v2, 0x7fffffffffffffffL

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    invoke-static {v2, v3, v0, v1}, LE/b;->c(JII)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const-wide v2, 0x3bb2cc3d800L

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    invoke-static {v2, v3, v0, v1}, LE/b;->c(JII)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const-wide v2, 0x1cf7c5800L

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    add-int/2addr v2, v0

    .line 68
    mul-int/2addr v2, v1

    .line 69
    const v0, -0x4b61eacd

    .line 70
    .line 71
    .line 72
    add-int/2addr v2, v0

    .line 73
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ", allowedPathPrefix="

    .line 2
    .line 3
    const-string v1, ", maxManifestBytes=262144, maxBundleBytes=33554432, maxPlaintextBytes=33554432, maxVersionLength=128, maxSequence=9223372036854775807, maxTimestampMillis=4102444800000, maxFreshnessMillis=7776000000, authorizedRollbackMarker=AUTHORIZED_ROLLBACK_V2)"

    .line 4
    .line 5
    const-string v2, "OtaSecurityPolicy(allowedHost="

    .line 6
    .line 7
    iget-object v3, p0, LN1/p;->a:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, LN1/p;->b:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v2, v3, v0, v4, v1}, LE/b;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method
