.class public final Ls/c;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final d:Ls/c;


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Ljava/util/concurrent/Executor;

.field public c:Ls/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ls/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, v1}, Ls/c;-><init>(Landroidx/core/content/e;Ljava/util/concurrent/ExecutorService;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ls/c;->d:Ls/c;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroidx/core/content/e;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls/c;->a:Ljava/lang/Runnable;

    .line 5
    .line 6
    iput-object p2, p0, Ls/c;->b:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    return-void
.end method
