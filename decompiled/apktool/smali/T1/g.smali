.class public final LT1/g;
.super Ljava/io/InputStream;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final b:Ljava/io/BufferedInputStream;

.field public final c:[B

.field public d:J

.field public final e:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Ljava/io/BufferedInputStream;[BLkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    const-string v0, "input"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "cancel"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, LT1/g;->b:Ljava/io/BufferedInputStream;

    .line 15
    .line 16
    iput-object p2, p0, LT1/g;->c:[B

    .line 17
    .line 18
    const-wide/16 p1, 0x15

    .line 19
    .line 20
    iput-wide p1, p0, LT1/g;->d:J

    .line 21
    .line 22
    iput-object p3, p0, LT1/g;->e:Lkotlin/jvm/functions/Function0;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final read()I
    .locals 2

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final read([BII)I
    .locals 8

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, LT1/g;->e:Lkotlin/jvm/functions/Function0;

    .line 3
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, LT1/g;->b:Ljava/io/BufferedInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    if-lez p3, :cond_0

    iget-object v0, p0, LT1/g;->c:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    add-int v2, p2, v1

    aget-byte v3, p1, v2

    iget-wide v4, p0, LT1/g;->d:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    array-length v6, v0

    int-to-long v6, v6

    rem-long/2addr v4, v6

    long-to-int v4, v4

    aget-byte v4, v0, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-lez p3, :cond_1

    iget-wide p1, p0, LT1/g;->d:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, LT1/g;->d:J

    :cond_1
    return p3

    .line 5
    :cond_2
    new-instance p1, LT1/b;

    invoke-direct {p1}, LT1/b;-><init>()V

    throw p1
.end method
