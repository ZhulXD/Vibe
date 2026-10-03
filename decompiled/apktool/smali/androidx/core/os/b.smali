.class public final synthetic Landroidx/core/os/b;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:LX1/p;


# direct methods
.method public synthetic constructor <init>(LX1/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/core/os/b;->b:LX1/p;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/os/b;->b:LX1/p;

    .line 2
    .line 3
    check-cast p1, Landroid/os/ProfilingResult;

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/core/os/Profiling$registerForAllProfilingResults$1;->b(LX1/p;Landroid/os/ProfilingResult;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
