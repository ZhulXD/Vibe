.class public final Lf0/m;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lz0/c;


# instance fields
.field public final synthetic b:Lf0/n;


# direct methods
.method public constructor <init>(Lf0/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf0/m;->b:Lf0/n;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final g()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lf0/j;

    .line 2
    .line 3
    iget-object v1, p0, Lf0/m;->b:Lf0/n;

    .line 4
    .line 5
    iget-object v2, v1, Lf0/n;->a:Lf0/q;

    .line 6
    .line 7
    iget-object v1, v1, Lf0/n;->b:Lz0/d;

    .line 8
    .line 9
    invoke-direct {v0, v2, v1}, Lf0/j;-><init>(Lf0/q;Lz0/d;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
