.class public final LP/f;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final h:LP/e;


# instance fields
.field public final a:LA1/b;

.field public final b:LA1/b;

.field public final c:LP/e;

.field public final d:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public e:Ljava/util/List;

.field public f:Ljava/util/List;

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LP/e;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, LP/e;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, LP/f;->h:LP/e;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(LA1/b;LA1/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LP/f;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 12
    .line 13
    iput-object v0, p0, LP/f;->f:Ljava/util/List;

    .line 14
    .line 15
    iput-object p1, p0, LP/f;->a:LA1/b;

    .line 16
    .line 17
    iput-object p2, p0, LP/f;->b:LA1/b;

    .line 18
    .line 19
    sget-object p1, LP/f;->h:LP/e;

    .line 20
    .line 21
    iput-object p1, p0, LP/f;->c:LP/e;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, LP/f;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, LP/N;

    .line 18
    .line 19
    iget-object v1, v1, LP/N;->a:LC1/j0;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method
