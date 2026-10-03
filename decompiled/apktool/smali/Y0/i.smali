.class public final LY0/i;
.super LY0/e;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final d:LY0/f;

.field public final e:F


# direct methods
.method public constructor <init>(LY0/f;F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, LY0/e;-><init>(I)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, LY0/i;->d:LY0/f;

    .line 6
    .line 7
    iput p2, p0, LY0/i;->e:F

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final i()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final j(FFFLY0/w;)V
    .locals 1

    .line 1
    iget v0, p0, LY0/i;->e:F

    .line 2
    .line 3
    sub-float/2addr p2, v0

    .line 4
    iget-object v0, p0, LY0/i;->d:LY0/f;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2, p3, p4}, LY0/f;->j(FFFLY0/w;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
