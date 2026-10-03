.class public final Li2/a;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public a:Ljava/lang/StringBuffer;

.field public b:J

.field public c:B

.field public d:Ljava/lang/StringBuffer;


# direct methods
.method public static a(II[B)Ljava/lang/StringBuffer;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 4
    .line 5
    .line 6
    add-int/2addr p1, p0

    .line 7
    :goto_0
    if-ge p0, p1, :cond_1

    .line 8
    .line 9
    aget-byte v1, p2, p0

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    int-to-char v1, v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 16
    .line 17
    .line 18
    add-int/lit8 p0, p0, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    :goto_1
    return-object v0
.end method
