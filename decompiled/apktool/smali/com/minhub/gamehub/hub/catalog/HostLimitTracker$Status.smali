.class public final Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/minhub/gamehub/hub/catalog/HostLimitTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Status"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u000f\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\'\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00032\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000c\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;",
        "",
        "limited",
        "",
        "sinceMillis",
        "",
        "resetsAtMillis",
        "<init>",
        "(ZJJ)V",
        "getLimited",
        "()Z",
        "getSinceMillis",
        "()J",
        "getResetsAtMillis",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final limited:Z

.field private final resetsAtMillis:J

.field private final sinceMillis:J


# direct methods
.method public constructor <init>(ZJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;->limited:Z

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;->sinceMillis:J

    .line 7
    .line 8
    iput-wide p4, p0, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;->resetsAtMillis:J

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic copy$default(Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;ZJJILjava/lang/Object;)Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;
    .locals 0

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;->limited:Z

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 8
    .line 9
    if-eqz p7, :cond_1

    .line 10
    .line 11
    iget-wide p2, p0, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;->sinceMillis:J

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p6, p6, 0x4

    .line 14
    .line 15
    if-eqz p6, :cond_2

    .line 16
    .line 17
    iget-wide p4, p0, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;->resetsAtMillis:J

    .line 18
    .line 19
    :cond_2
    move-wide p6, p4

    .line 20
    move-wide p4, p2

    .line 21
    move-object p2, p0

    .line 22
    move p3, p1

    .line 23
    invoke-virtual/range {p2 .. p7}, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;->copy(ZJJ)Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;->limited:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;->sinceMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component3()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;->resetsAtMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final copy(ZJJ)Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;
    .locals 6

    .line 1
    new-instance v0, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;

    .line 2
    .line 3
    move v1, p1

    .line 4
    move-wide v2, p2

    .line 5
    move-wide v4, p4

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;-><init>(ZJJ)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;->limited:Z

    .line 14
    .line 15
    iget-boolean v3, p1, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;->limited:Z

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-wide v3, p0, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;->sinceMillis:J

    .line 21
    .line 22
    iget-wide v5, p1, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;->sinceMillis:J

    .line 23
    .line 24
    cmp-long v1, v3, v5

    .line 25
    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    return v2

    .line 29
    :cond_3
    iget-wide v3, p0, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;->resetsAtMillis:J

    .line 30
    .line 31
    iget-wide v5, p1, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;->resetsAtMillis:J

    .line 32
    .line 33
    cmp-long p1, v3, v5

    .line 34
    .line 35
    if-eqz p1, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    return v0
.end method

.method public final getLimited()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;->limited:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getResetsAtMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;->resetsAtMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getSinceMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;->sinceMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;->limited:Z

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

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
    iget-wide v2, p0, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;->sinceMillis:J

    .line 11
    .line 12
    invoke-static {v2, v3, v0, v1}, LE/b;->c(JII)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-wide v1, p0, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;->resetsAtMillis:J

    .line 17
    .line 18
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    add-int/2addr v1, v0

    .line 23
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;->limited:Z

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;->sinceMillis:J

    .line 4
    .line 5
    iget-wide v3, p0, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;->resetsAtMillis:J

    .line 6
    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v6, "Status(limited="

    .line 10
    .line 11
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, ", sinceMillis="

    .line 18
    .line 19
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, ", resetsAtMillis="

    .line 26
    .line 27
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, ")"

    .line 34
    .line 35
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method
