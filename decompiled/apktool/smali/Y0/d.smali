.class public final LY0/d;
.super La/a;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# virtual methods
.method public final i(LY0/w;FF)V
    .locals 5

    .line 1
    mul-float v0, p3, p2

    .line 2
    .line 3
    const/high16 v1, 0x43340000    # 180.0f

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/high16 v3, 0x42b40000    # 90.0f

    .line 7
    .line 8
    invoke-virtual {p1, v2, v0, v1, v3}, LY0/w;->d(FFFF)V

    .line 9
    .line 10
    .line 11
    float-to-double v0, v3

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    float-to-double v3, p3

    .line 21
    mul-double/2addr v0, v3

    .line 22
    float-to-double p2, p2

    .line 23
    mul-double/2addr v0, p2

    .line 24
    double-to-float v0, v0

    .line 25
    float-to-double v1, v2

    .line 26
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    mul-double/2addr v1, v3

    .line 35
    mul-double/2addr v1, p2

    .line 36
    double-to-float p2, v1

    .line 37
    invoke-virtual {p1, v0, p2}, LY0/w;->c(FF)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
