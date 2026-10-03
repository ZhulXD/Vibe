.class public final LS/a;
.super LS/B;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, LS/B;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, LS/B;->S(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, LS/h;

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    invoke-direct {v1, v2}, LS/h;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, LS/B;->O(LS/v;)V

    .line 15
    .line 16
    .line 17
    new-instance v1, LS/f;

    .line 18
    .line 19
    invoke-direct {v1}, LS/v;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, LS/B;->O(LS/v;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, LS/h;

    .line 26
    .line 27
    invoke-direct {v1, v0}, LS/h;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1}, LS/B;->O(LS/v;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
