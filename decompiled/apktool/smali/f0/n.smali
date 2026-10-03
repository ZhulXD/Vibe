.class public final Lf0/n;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final a:Lf0/q;

.field public final b:Lz0/d;

.field public c:I


# direct methods
.method public constructor <init>(Lf0/q;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lf0/m;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lf0/m;-><init>(Lf0/n;)V

    .line 7
    .line 8
    .line 9
    const/16 v1, 0x96

    .line 10
    .line 11
    invoke-static {v1, v0}, Lz0/g;->a(ILz0/c;)Lz0/d;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lf0/n;->b:Lz0/d;

    .line 16
    .line 17
    iput-object p1, p0, Lf0/n;->a:Lf0/q;

    .line 18
    .line 19
    return-void
.end method
