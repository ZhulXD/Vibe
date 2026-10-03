.class public abstract Lz0/g;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final a:Lr/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lr/b;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lz0/g;->a:Lr/b;

    .line 7
    .line 8
    return-void
.end method

.method public static a(ILz0/c;)Lz0/d;
    .locals 2

    .line 1
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Lz0/d;

    .line 7
    .line 8
    sget-object v1, Lz0/g;->a:Lr/b;

    .line 9
    .line 10
    invoke-direct {p0, v0, p1, v1}, Lz0/d;-><init>(Landroidx/core/util/Pools$SynchronizedPool;Lz0/c;Lz0/f;)V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method
