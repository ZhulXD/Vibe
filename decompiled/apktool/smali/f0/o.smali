.class public final Lf0/o;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lz0/c;


# instance fields
.field public final synthetic b:Lf0/p;


# direct methods
.method public constructor <init>(Lf0/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf0/o;->b:Lf0/p;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final g()Ljava/lang/Object;
    .locals 8

    .line 1
    new-instance v0, Lf0/v;

    .line 2
    .line 3
    iget-object v1, p0, Lf0/o;->b:Lf0/p;

    .line 4
    .line 5
    move-object v2, v1

    .line 6
    iget-object v1, v2, Lf0/p;->a:Li0/e;

    .line 7
    .line 8
    move-object v3, v2

    .line 9
    iget-object v2, v3, Lf0/p;->b:Li0/e;

    .line 10
    .line 11
    move-object v4, v3

    .line 12
    iget-object v3, v4, Lf0/p;->c:Li0/e;

    .line 13
    .line 14
    move-object v5, v4

    .line 15
    iget-object v4, v5, Lf0/p;->d:Li0/e;

    .line 16
    .line 17
    move-object v6, v5

    .line 18
    iget-object v5, v6, Lf0/p;->e:Lf0/r;

    .line 19
    .line 20
    move-object v7, v6

    .line 21
    iget-object v6, v7, Lf0/p;->f:Lf0/r;

    .line 22
    .line 23
    iget-object v7, v7, Lf0/p;->g:Lz0/d;

    .line 24
    .line 25
    invoke-direct/range {v0 .. v7}, Lf0/v;-><init>(Li0/e;Li0/e;Li0/e;Li0/e;Lf0/r;Lf0/r;Lz0/d;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method
