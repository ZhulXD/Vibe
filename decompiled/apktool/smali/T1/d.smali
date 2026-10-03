.class public final LT1/d;
.super Ljava/io/OutputStream;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final b:Ljava/io/BufferedOutputStream;

.field public final c:J

.field public d:J


# direct methods
.method public constructor <init>(Ljava/io/BufferedOutputStream;J)V
    .locals 1

    .line 1
    const-string v0, "out"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, LT1/d;->b:Ljava/io/BufferedOutputStream;

    .line 10
    .line 11
    iput-wide p2, p0, LT1/d;->c:J

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final write(I)V
    .locals 6

    .line 1
    iget-wide v0, p0, LT1/d;->d:J

    iget-wide v2, p0, LT1/d;->c:J

    const/4 v4, 0x1

    int-to-long v4, v4

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 2
    iget-object v0, p0, LT1/d;->b:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-wide v0, p0, LT1/d;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, LT1/d;->d:J

    return-void

    .line 3
    :cond_0
    new-instance p1, LT1/m;

    .line 4
    const-string v0, "message"

    const-string v1, "Decoded output exceeds size limit"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 6
    throw p1
.end method

.method public final write([BII)V
    .locals 6

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-wide v0, p0, LT1/d;->d:J

    int-to-long v2, p3

    iget-wide v4, p0, LT1/d;->c:J

    sub-long/2addr v4, v2

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    .line 8
    iget-object v0, p0, LT1/d;->b:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-wide p1, p0, LT1/d;->d:J

    add-long/2addr p1, v2

    iput-wide p1, p0, LT1/d;->d:J

    return-void

    .line 9
    :cond_0
    new-instance p1, LT1/m;

    .line 10
    const-string p2, "message"

    const-string p3, "Decoded output exceeds size limit"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p1, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 12
    throw p1
.end method
