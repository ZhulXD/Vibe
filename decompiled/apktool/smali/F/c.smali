.class public final LF/c;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final f:Ljava/lang/ThreadLocal;


# instance fields
.field public final a:Lq/j;

.field public final b:Ljava/util/ArrayList;

.field public final c:LA1/b;

.field public d:LF/b;

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LF/c;->f:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lq/j;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lq/j;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, LF/c;->a:Lq/j;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, LF/c;->b:Ljava/util/ArrayList;

    .line 18
    .line 19
    new-instance v0, LA1/b;

    .line 20
    .line 21
    invoke-direct {v0, p0}, LA1/b;-><init>(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, LF/c;->c:LA1/b;

    .line 25
    .line 26
    iput-boolean v1, p0, LF/c;->e:Z

    .line 27
    .line 28
    return-void
.end method
