.class public final Li1/l;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final a:Ljava/lang/ThreadLocal;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;

.field public final c:Lcom/bumptech/glide/manager/q;

.field public final d:Ll1/c;

.field public final e:Ljava/util/List;

.field public final f:Ljava/util/Map;

.field public final g:Z

.field public final h:Z

.field public final i:Ljava/util/List;

.field public final j:Ljava/util/List;

.field public final k:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 14

    .line 1
    sget-object v1, Lk1/g;->d:Lk1/g;

    .line 2
    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 3
    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 4
    sget-object v11, Li1/x;->b:Li1/t;

    sget-object v12, Li1/x;->c:Li1/u;

    .line 5
    sget-object v2, Li1/h;->b:Li1/a;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v9, v8

    move-object v10, v8

    move-object v13, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Li1/l;-><init>(Lk1/g;Li1/a;Ljava/util/Map;ZZZILjava/util/List;Ljava/util/List;Ljava/util/List;Li1/t;Li1/u;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lk1/g;Li1/a;Ljava/util/Map;ZZZILjava/util/List;Ljava/util/List;Ljava/util/List;Li1/t;Li1/u;Ljava/util/List;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Li1/l;->a:Ljava/lang/ThreadLocal;

    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Li1/l;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    iput-object p3, p0, Li1/l;->f:Ljava/util/Map;

    move-object v0, p3

    move-object p3, p2

    .line 10
    new-instance p2, Lcom/bumptech/glide/manager/q;

    invoke-direct {p2, v0, p6, p13}, Lcom/bumptech/glide/manager/q;-><init>(Ljava/util/Map;ZLjava/util/List;)V

    iput-object p2, p0, Li1/l;->c:Lcom/bumptech/glide/manager/q;

    .line 11
    iput-boolean p4, p0, Li1/l;->g:Z

    .line 12
    iput-boolean p5, p0, Li1/l;->h:Z

    .line 13
    iput-object p8, p0, Li1/l;->i:Ljava/util/List;

    .line 14
    iput-object p9, p0, Li1/l;->j:Ljava/util/List;

    .line 15
    iput-object p13, p0, Li1/l;->k:Ljava/util/List;

    .line 16
    new-instance p8, Ljava/util/ArrayList;

    invoke-direct {p8}, Ljava/util/ArrayList;-><init>()V

    .line 17
    sget-object p4, Ll1/s;->A:Ll1/o;

    invoke-virtual {p8, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object p4, Li1/x;->b:Li1/t;

    if-ne p11, p4, :cond_0

    .line 19
    sget-object p4, Ll1/i;->c:Ll1/h;

    goto :goto_0

    .line 20
    :cond_0
    new-instance p4, Ll1/h;

    const/4 p5, 0x1

    invoke-direct {p4, p5, p11}, Ll1/h;-><init>(ILjava/lang/Object;)V

    .line 21
    :goto_0
    invoke-virtual {p8, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-virtual {p8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-virtual {p8, p10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 24
    sget-object p4, Ll1/s;->p:Ll1/o;

    invoke-virtual {p8, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object p4, Ll1/s;->g:Ll1/p;

    invoke-virtual {p8, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object p4, Ll1/s;->d:Ll1/p;

    invoke-virtual {p8, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object p4, Ll1/s;->e:Ll1/p;

    invoke-virtual {p8, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object p4, Ll1/s;->f:Ll1/p;

    invoke-virtual {p8, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p4, 0x1

    if-ne p7, p4, :cond_1

    .line 29
    sget-object p4, Ll1/s;->k:Li1/i;

    goto :goto_1

    .line 30
    :cond_1
    new-instance p4, Li1/i;

    const/4 p5, 0x2

    .line 31
    invoke-direct {p4, p5}, Li1/i;-><init>(I)V

    .line 32
    :goto_1
    new-instance p5, Ll1/p;

    sget-object p6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class p7, Ljava/lang/Long;

    invoke-direct {p5, p6, p7, p4}, Ll1/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;Li1/y;)V

    .line 33
    invoke-virtual {p8, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance p5, Li1/i;

    const/4 p6, 0x0

    .line 35
    invoke-direct {p5, p6}, Li1/i;-><init>(I)V

    .line 36
    new-instance p6, Ll1/p;

    sget-object p7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class p9, Ljava/lang/Double;

    invoke-direct {p6, p7, p9, p5}, Ll1/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;Li1/y;)V

    .line 37
    invoke-virtual {p8, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance p5, Li1/i;

    const/4 p6, 0x1

    .line 39
    invoke-direct {p5, p6}, Li1/i;-><init>(I)V

    .line 40
    new-instance p6, Ll1/p;

    sget-object p7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class p9, Ljava/lang/Float;

    invoke-direct {p6, p7, p9, p5}, Ll1/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;Li1/y;)V

    .line 41
    invoke-virtual {p8, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object p5, Li1/x;->c:Li1/u;

    if-ne p12, p5, :cond_2

    .line 43
    sget-object p5, Ll1/d;->d:Ll1/h;

    goto :goto_2

    .line 44
    :cond_2
    new-instance p5, Ll1/d;

    invoke-direct {p5, p12}, Ll1/d;-><init>(Li1/x;)V

    .line 45
    new-instance p6, Ll1/h;

    const/4 p7, 0x0

    invoke-direct {p6, p7, p5}, Ll1/h;-><init>(ILjava/lang/Object;)V

    move-object p5, p6

    .line 46
    :goto_2
    invoke-virtual {p8, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object p5, Ll1/s;->h:Ll1/o;

    invoke-virtual {p8, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object p5, Ll1/s;->i:Ll1/o;

    invoke-virtual {p8, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance p5, Li1/j;

    const/4 p6, 0x0

    invoke-direct {p5, p4, p6}, Li1/j;-><init>(Li1/y;I)V

    .line 50
    new-instance p6, Li1/j;

    const/4 p7, 0x2

    invoke-direct {p6, p5, p7}, Li1/j;-><init>(Li1/y;I)V

    .line 51
    new-instance p5, Ll1/o;

    const/4 p7, 0x0

    const-class p9, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p5, p9, p6, p7}, Ll1/o;-><init>(Ljava/lang/Class;Li1/y;I)V

    .line 52
    invoke-virtual {p8, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance p5, Li1/j;

    const/4 p6, 0x1

    invoke-direct {p5, p4, p6}, Li1/j;-><init>(Li1/y;I)V

    .line 54
    new-instance p4, Li1/j;

    const/4 p6, 0x2

    invoke-direct {p4, p5, p6}, Li1/j;-><init>(Li1/y;I)V

    .line 55
    new-instance p5, Ll1/o;

    const/4 p6, 0x0

    const-class p7, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-direct {p5, p7, p4, p6}, Ll1/o;-><init>(Ljava/lang/Class;Li1/y;I)V

    .line 56
    invoke-virtual {p8, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object p4, Ll1/s;->j:Ll1/o;

    invoke-virtual {p8, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object p4, Ll1/s;->l:Ll1/p;

    invoke-virtual {p8, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object p4, Ll1/s;->q:Ll1/o;

    invoke-virtual {p8, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object p4, Ll1/s;->r:Ll1/o;

    invoke-virtual {p8, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object p4, Ll1/s;->m:Li1/i;

    .line 62
    new-instance p5, Ll1/o;

    const-class p7, Ljava/math/BigDecimal;

    invoke-direct {p5, p7, p4, p6}, Ll1/o;-><init>(Ljava/lang/Class;Li1/y;I)V

    .line 63
    invoke-virtual {p8, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object p4, Ll1/s;->n:Li1/i;

    .line 65
    new-instance p5, Ll1/o;

    const-class p7, Ljava/math/BigInteger;

    invoke-direct {p5, p7, p4, p6}, Ll1/o;-><init>(Ljava/lang/Class;Li1/y;I)V

    .line 66
    invoke-virtual {p8, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object p4, Ll1/s;->o:Li1/i;

    .line 68
    new-instance p5, Ll1/o;

    const-class p7, Lk1/i;

    invoke-direct {p5, p7, p4, p6}, Ll1/o;-><init>(Ljava/lang/Class;Li1/y;I)V

    .line 69
    invoke-virtual {p8, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object p4, Ll1/s;->s:Ll1/o;

    invoke-virtual {p8, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object p4, Ll1/s;->t:Ll1/o;

    invoke-virtual {p8, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object p4, Ll1/s;->v:Ll1/o;

    invoke-virtual {p8, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object p4, Ll1/s;->w:Ll1/o;

    invoke-virtual {p8, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object p4, Ll1/s;->y:Ll1/o;

    invoke-virtual {p8, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object p4, Ll1/s;->u:Ll1/o;

    invoke-virtual {p8, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object p4, Ll1/s;->b:Ll1/o;

    invoke-virtual {p8, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object p4, Ll1/d;->c:Ll1/a;

    invoke-virtual {p8, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object p4, Ll1/s;->x:Ll1/h;

    invoke-virtual {p8, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    sget-boolean p4, Lo1/c;->a:Z

    if-eqz p4, :cond_3

    .line 80
    sget-object p4, Lo1/c;->e:Ll1/a;

    invoke-virtual {p8, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object p4, Lo1/c;->d:Ll1/a;

    invoke-virtual {p8, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object p4, Lo1/c;->f:Ll1/a;

    invoke-virtual {p8, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_3
    sget-object p4, Ll1/b;->d:Ll1/a;

    invoke-virtual {p8, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object p4, Ll1/s;->a:Ll1/o;

    invoke-virtual {p8, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance p4, Ll1/c;

    const/4 p5, 0x0

    invoke-direct {p4, p2, p5}, Ll1/c;-><init>(Lcom/bumptech/glide/manager/q;I)V

    invoke-virtual {p8, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance p4, Ll1/c;

    const/4 p5, 0x2

    invoke-direct {p4, p2, p5}, Ll1/c;-><init>(Lcom/bumptech/glide/manager/q;I)V

    invoke-virtual {p8, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance p5, Ll1/c;

    const/4 p4, 0x1

    invoke-direct {p5, p2, p4}, Ll1/c;-><init>(Lcom/bumptech/glide/manager/q;I)V

    iput-object p5, p0, Li1/l;->d:Ll1/c;

    .line 88
    invoke-virtual {p8, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object p4, Ll1/s;->B:Ll1/a;

    invoke-virtual {p8, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p4, p1

    .line 90
    new-instance p1, Ll1/n;

    move-object p6, p13

    invoke-direct/range {p1 .. p6}, Ll1/n;-><init>(Lcom/bumptech/glide/manager/q;Li1/h;Lk1/g;Ll1/c;Ljava/util/List;)V

    invoke-virtual {p8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-static {p8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Li1/l;->e:Ljava/util/List;

    return-void
.end method

.method public static a(D)V
    .locals 2

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p0, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    .line 25
    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v1, Ljava/io/StringReader;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Lp1/a;

    .line 11
    .line 12
    invoke-direct {p1, v1}, Lp1/a;-><init>(Ljava/io/StringReader;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "AssertionError (GSON 2.10.1): "

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    iput-boolean v2, p1, Lp1/a;->c:Z

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    :try_start_0
    invoke-virtual {p1}, Lp1/a;->v()I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    :try_start_1
    invoke-virtual {p0, p2}, Li1/l;->d(Lcom/google/gson/reflect/TypeToken;)Li1/y;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p2, p1}, Li1/y;->a(Lp1/a;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :goto_0
    iput-boolean v3, p1, Lp1/a;->c:Z

    .line 33
    .line 34
    goto :goto_5

    .line 35
    :catchall_0
    move-exception p2

    .line 36
    goto :goto_9

    .line 37
    :catch_0
    move-exception p2

    .line 38
    goto :goto_1

    .line 39
    :catch_1
    move-exception p2

    .line 40
    goto :goto_2

    .line 41
    :catch_2
    move-exception p2

    .line 42
    goto :goto_3

    .line 43
    :catch_3
    move-exception p2

    .line 44
    move v2, v3

    .line 45
    goto :goto_4

    .line 46
    :goto_1
    :try_start_2
    new-instance v0, Ljava/lang/AssertionError;

    .line 47
    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-direct {v0, v1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    throw v0

    .line 68
    :goto_2
    new-instance v0, Li1/p;

    .line 69
    .line 70
    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    throw v0

    .line 74
    :goto_3
    new-instance v0, Li1/p;

    .line 75
    .line 76
    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    :catch_4
    move-exception p2

    .line 81
    :goto_4
    if-eqz v2, :cond_3

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :goto_5
    if-eqz v0, :cond_2

    .line 85
    .line 86
    :try_start_3
    invoke-virtual {p1}, Lp1/a;->v()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    const/16 p2, 0xa

    .line 91
    .line 92
    if-ne p1, p2, :cond_1

    .line 93
    .line 94
    goto :goto_8

    .line 95
    :cond_1
    new-instance p1, Li1/p;

    .line 96
    .line 97
    const-string p2, "JSON document was not fully consumed."

    .line 98
    .line 99
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p1
    :try_end_3
    .catch Lp1/c; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 103
    :catch_5
    move-exception p1

    .line 104
    goto :goto_6

    .line 105
    :catch_6
    move-exception p1

    .line 106
    goto :goto_7

    .line 107
    :goto_6
    new-instance p2, Li1/p;

    .line 108
    .line 109
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    throw p2

    .line 113
    :goto_7
    new-instance p2, Li1/p;

    .line 114
    .line 115
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    throw p2

    .line 119
    :cond_2
    :goto_8
    return-object v0

    .line 120
    :cond_3
    :try_start_4
    new-instance v0, Li1/p;

    .line 121
    .line 122
    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 123
    .line 124
    .line 125
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 126
    :goto_9
    iput-boolean v3, p1, Lp1/a;->c:Z

    .line 127
    .line 128
    throw p2
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, v0}, Li1/l;->b(Ljava/lang/String;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 10
    .line 11
    if-ne p2, v0, :cond_0

    .line 12
    .line 13
    const-class p2, Ljava/lang/Integer;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 17
    .line 18
    if-ne p2, v0, :cond_1

    .line 19
    .line 20
    const-class p2, Ljava/lang/Float;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 24
    .line 25
    if-ne p2, v0, :cond_2

    .line 26
    .line 27
    const-class p2, Ljava/lang/Byte;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 31
    .line 32
    if-ne p2, v0, :cond_3

    .line 33
    .line 34
    const-class p2, Ljava/lang/Double;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 38
    .line 39
    if-ne p2, v0, :cond_4

    .line 40
    .line 41
    const-class p2, Ljava/lang/Long;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 45
    .line 46
    if-ne p2, v0, :cond_5

    .line 47
    .line 48
    const-class p2, Ljava/lang/Character;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 52
    .line 53
    if-ne p2, v0, :cond_6

    .line 54
    .line 55
    const-class p2, Ljava/lang/Boolean;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_6
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 59
    .line 60
    if-ne p2, v0, :cond_7

    .line 61
    .line 62
    const-class p2, Ljava/lang/Short;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_7
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 66
    .line 67
    if-ne p2, v0, :cond_8

    .line 68
    .line 69
    const-class p2, Ljava/lang/Void;

    .line 70
    .line 71
    :cond_8
    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    return-object p1
.end method

.method public final d(Lcom/google/gson/reflect/TypeToken;)Li1/y;
    .locals 8

    .line 1
    const-string v0, "type must not be null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Li1/l;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Li1/y;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    return-object v1

    .line 17
    :cond_0
    iget-object v1, p0, Li1/l;->a:Ljava/lang/ThreadLocal;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/util/Map;

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    new-instance v2, Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Li1/y;

    .line 42
    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    return-object v3

    .line 46
    :cond_2
    const/4 v3, 0x0

    .line 47
    :goto_0
    :try_start_0
    new-instance v4, Li1/k;

    .line 48
    .line 49
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 50
    .line 51
    .line 52
    const/4 v5, 0x0

    .line 53
    iput-object v5, v4, Li1/k;->a:Li1/y;

    .line 54
    .line 55
    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    iget-object v6, p0, Li1/l;->e:Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-eqz v7, :cond_5

    .line 69
    .line 70
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    check-cast v5, Li1/z;

    .line 75
    .line 76
    invoke-interface {v5, p0, p1}, Li1/z;->a(Li1/l;Lcom/google/gson/reflect/TypeToken;)Li1/y;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    if-eqz v5, :cond_3

    .line 81
    .line 82
    iget-object v6, v4, Li1/k;->a:Li1/y;

    .line 83
    .line 84
    if-nez v6, :cond_4

    .line 85
    .line 86
    iput-object v5, v4, Li1/k;->a:Li1/y;

    .line 87
    .line 88
    invoke-interface {v2, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :catchall_0
    move-exception p1

    .line 93
    goto :goto_2

    .line 94
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    .line 95
    .line 96
    const-string v0, "Delegate is already set"

    .line 97
    .line 98
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_5
    :goto_1
    if-eqz v3, :cond_6

    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 105
    .line 106
    .line 107
    :cond_6
    if-eqz v5, :cond_8

    .line 108
    .line 109
    if-eqz v3, :cond_7

    .line 110
    .line 111
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 112
    .line 113
    .line 114
    :cond_7
    return-object v5

    .line 115
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 116
    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v2, "GSON (2.10.1) cannot handle "

    .line 120
    .line 121
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw v0

    .line 135
    :goto_2
    if-eqz v3, :cond_9

    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 138
    .line 139
    .line 140
    :cond_9
    throw p1
.end method

.method public final e(Ljava/io/Writer;)Lp1/b;
    .locals 1

    .line 1
    new-instance v0, Lp1/b;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lp1/b;-><init>(Ljava/io/Writer;)V

    .line 4
    .line 5
    .line 6
    iget-boolean p1, p0, Li1/l;->h:Z

    .line 7
    .line 8
    iput-boolean p1, v0, Lp1/b;->g:Z

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, v0, Lp1/b;->f:Z

    .line 12
    .line 13
    iget-boolean p1, p0, Li1/l;->g:Z

    .line 14
    .line 15
    iput-boolean p1, v0, Lp1/b;->i:Z

    .line 16
    .line 17
    return-object v0
.end method

.method public final f(Li1/o;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0, v0}, Li1/l;->e(Ljava/io/Writer;)Lp1/b;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0, p1, v1}, Li1/l;->h(Li1/o;Lp1/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :catch_0
    move-exception p1

    .line 19
    new-instance v0, Li1/p;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method

.method public final g(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Li1/q;->b:Li1/q;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Li1/l;->f(Li1/o;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/io/StringWriter;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 17
    .line 18
    .line 19
    :try_start_0
    invoke-virtual {p0, v1}, Li1/l;->e(Ljava/io/Writer;)Lp1/b;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p0, p1, v0, v2}, Li1/l;->i(Ljava/lang/Object;Ljava/lang/Class;Lp1/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :catch_0
    move-exception p1

    .line 32
    new-instance v0, Li1/p;

    .line 33
    .line 34
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method

.method public final h(Li1/o;Lp1/b;)V
    .locals 6

    .line 1
    const-string v0, "AssertionError (GSON 2.10.1): "

    .line 2
    .line 3
    iget-boolean v1, p2, Lp1/b;->f:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iput-boolean v2, p2, Lp1/b;->f:Z

    .line 7
    .line 8
    iget-boolean v2, p2, Lp1/b;->g:Z

    .line 9
    .line 10
    iget-boolean v3, p0, Li1/l;->h:Z

    .line 11
    .line 12
    iput-boolean v3, p2, Lp1/b;->g:Z

    .line 13
    .line 14
    iget-boolean v3, p2, Lp1/b;->i:Z

    .line 15
    .line 16
    iget-boolean v4, p0, Li1/l;->g:Z

    .line 17
    .line 18
    iput-boolean v4, p2, Lp1/b;->i:Z

    .line 19
    .line 20
    :try_start_0
    sget-object v4, Ll1/s;->a:Ll1/o;

    .line 21
    .line 22
    invoke-static {p1, p2}, Li1/i;->d(Li1/o;Lp1/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    iput-boolean v1, p2, Lp1/b;->f:Z

    .line 26
    .line 27
    iput-boolean v2, p2, Lp1/b;->g:Z

    .line 28
    .line 29
    iput-boolean v3, p2, Lp1/b;->i:Z

    .line 30
    .line 31
    return-void

    .line 32
    :catch_0
    move-exception p1

    .line 33
    goto :goto_0

    .line 34
    :catch_1
    move-exception p1

    .line 35
    goto :goto_1

    .line 36
    :goto_0
    :try_start_1
    new-instance v4, Ljava/lang/AssertionError;

    .line 37
    .line 38
    new-instance v5, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-direct {v4, v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    throw v4

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    goto :goto_2

    .line 60
    :goto_1
    new-instance v0, Li1/p;

    .line 61
    .line 62
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    :goto_2
    iput-boolean v1, p2, Lp1/b;->f:Z

    .line 67
    .line 68
    iput-boolean v2, p2, Lp1/b;->g:Z

    .line 69
    .line 70
    iput-boolean v3, p2, Lp1/b;->i:Z

    .line 71
    .line 72
    throw p1
.end method

.method public final i(Ljava/lang/Object;Ljava/lang/Class;Lp1/b;)V
    .locals 5

    .line 1
    const-string v0, "AssertionError (GSON 2.10.1): "

    .line 2
    .line 3
    invoke-static {p2}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p0, p2}, Li1/l;->d(Lcom/google/gson/reflect/TypeToken;)Li1/y;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iget-boolean v1, p3, Lp1/b;->f:Z

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    iput-boolean v2, p3, Lp1/b;->f:Z

    .line 15
    .line 16
    iget-boolean v2, p3, Lp1/b;->g:Z

    .line 17
    .line 18
    iget-boolean v3, p0, Li1/l;->h:Z

    .line 19
    .line 20
    iput-boolean v3, p3, Lp1/b;->g:Z

    .line 21
    .line 22
    iget-boolean v3, p3, Lp1/b;->i:Z

    .line 23
    .line 24
    iget-boolean v4, p0, Li1/l;->g:Z

    .line 25
    .line 26
    iput-boolean v4, p3, Lp1/b;->i:Z

    .line 27
    .line 28
    :try_start_0
    invoke-virtual {p2, p3, p1}, Li1/y;->b(Lp1/b;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    iput-boolean v1, p3, Lp1/b;->f:Z

    .line 32
    .line 33
    iput-boolean v2, p3, Lp1/b;->g:Z

    .line 34
    .line 35
    iput-boolean v3, p3, Lp1/b;->i:Z

    .line 36
    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p1

    .line 41
    :try_start_1
    new-instance p2, Ljava/lang/AssertionError;

    .line 42
    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-direct {p2, v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    throw p2

    .line 63
    :catch_1
    move-exception p1

    .line 64
    new-instance p2, Li1/p;

    .line 65
    .line 66
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :goto_0
    iput-boolean v1, p3, Lp1/b;->f:Z

    .line 71
    .line 72
    iput-boolean v2, p3, Lp1/b;->g:Z

    .line 73
    .line 74
    iput-boolean v3, p3, Lp1/b;->i:Z

    .line 75
    .line 76
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "{serializeNulls:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Li1/l;->g:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ",factories:"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Li1/l;->e:Ljava/util/List;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ",instanceCreators:"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Li1/l;->c:Lcom/bumptech/glide/manager/q;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "}"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method
