.class public final Lf0/j;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lf0/f;
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lz0/e;


# instance fields
.field public volatile A:Z

.field public volatile B:Z

.field public C:Z

.field public D:I

.field public E:I

.field public F:I

.field public final b:Lf0/h;

.field public final c:Ljava/util/ArrayList;

.field public final d:Lz0/h;

.field public final e:Lf0/q;

.field public final f:Landroidx/core/util/Pools$Pool;

.field public final g:LF/b;

.field public final h:Lf0/i;

.field public i:Lcom/bumptech/glide/e;

.field public j:Ld0/f;

.field public k:Lcom/bumptech/glide/g;

.field public l:Lf0/x;

.field public m:I

.field public n:I

.field public o:Lf0/l;

.field public p:Ld0/i;

.field public q:Lf0/v;

.field public r:I

.field public s:J

.field public t:Ljava/lang/Object;

.field public u:Ljava/lang/Thread;

.field public v:Ld0/f;

.field public w:Ld0/f;

.field public x:Ljava/lang/Object;

.field public y:Lcom/bumptech/glide/load/data/e;

.field public volatile z:Lf0/g;


# direct methods
.method public constructor <init>(Lf0/q;Lz0/d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lf0/h;

    .line 5
    .line 6
    invoke-direct {v0}, Lf0/h;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lf0/j;->b:Lf0/h;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lf0/j;->c:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Lz0/h;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lf0/j;->d:Lz0/h;

    .line 24
    .line 25
    new-instance v0, LF/b;

    .line 26
    .line 27
    const/16 v1, 0x8

    .line 28
    .line 29
    invoke-direct {v0, v1}, LF/b;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lf0/j;->g:LF/b;

    .line 33
    .line 34
    new-instance v0, Lf0/i;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lf0/j;->h:Lf0/i;

    .line 40
    .line 41
    iput-object p1, p0, Lf0/j;->e:Lf0/q;

    .line 42
    .line 43
    iput-object p2, p0, Lf0/j;->f:Landroidx/core/util/Pools$Pool;

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final a(Ld0/f;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/e;I)V
    .locals 2

    .line 1
    invoke-interface {p3}, Lcom/bumptech/glide/load/data/e;->b()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lf0/B;

    .line 5
    .line 6
    const-string v1, "Fetching data failed"

    .line 7
    .line 8
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-direct {v0, p2, v1}, Lf0/B;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p3}, Lcom/bumptech/glide/load/data/e;->a()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    iput-object p1, v0, Lf0/B;->c:Ld0/f;

    .line 20
    .line 21
    iput p4, v0, Lf0/B;->d:I

    .line 22
    .line 23
    iput-object p2, v0, Lf0/B;->e:Ljava/lang/Class;

    .line 24
    .line 25
    iget-object p1, p0, Lf0/j;->c:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p2, p0, Lf0/j;->u:Ljava/lang/Thread;

    .line 35
    .line 36
    if-eq p1, p2, :cond_0

    .line 37
    .line 38
    const/4 p1, 0x2

    .line 39
    invoke-virtual {p0, p1}, Lf0/j;->l(I)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    invoke-virtual {p0}, Lf0/j;->m()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final b()Lz0/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lf0/j;->d:Lz0/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c(Ld0/f;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;ILd0/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf0/j;->v:Ld0/f;

    .line 2
    .line 3
    iput-object p2, p0, Lf0/j;->x:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lf0/j;->y:Lcom/bumptech/glide/load/data/e;

    .line 6
    .line 7
    iput p4, p0, Lf0/j;->F:I

    .line 8
    .line 9
    iput-object p5, p0, Lf0/j;->w:Ld0/f;

    .line 10
    .line 11
    iget-object p2, p0, Lf0/j;->b:Lf0/h;

    .line 12
    .line 13
    invoke-virtual {p2}, Lf0/h;->a()Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const/4 p3, 0x0

    .line 18
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    if-eq p1, p2, :cond_0

    .line 23
    .line 24
    const/4 p3, 0x1

    .line 25
    :cond_0
    iput-boolean p3, p0, Lf0/j;->C:Z

    .line 26
    .line 27
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p2, p0, Lf0/j;->u:Ljava/lang/Thread;

    .line 32
    .line 33
    if-eq p1, p2, :cond_1

    .line 34
    .line 35
    const/4 p1, 0x3

    .line 36
    invoke-virtual {p0, p1}, Lf0/j;->l(I)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    invoke-virtual {p0}, Lf0/j;->f()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lf0/j;

    .line 2
    .line 3
    iget-object v0, p0, Lf0/j;->k:Lcom/bumptech/glide/g;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p1, Lf0/j;->k:Lcom/bumptech/glide/g;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sub-int/2addr v0, v1

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget v0, p0, Lf0/j;->r:I

    .line 19
    .line 20
    iget p1, p1, Lf0/j;->r:I

    .line 21
    .line 22
    sub-int/2addr v0, p1

    .line 23
    :cond_0
    return v0
.end method

.method public final d(Lcom/bumptech/glide/load/data/e;Ljava/lang/Object;I)Lf0/F;
    .locals 5

    .line 1
    const-string v0, "Decoded result "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->b()V

    .line 7
    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    :try_start_0
    sget v2, Ly0/h;->b:I

    .line 11
    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    invoke-virtual {p0, p3, p2}, Lf0/j;->e(ILjava/lang/Object;)Lf0/F;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    const-string p3, "DecodeJob"

    .line 21
    .line 22
    const/4 v4, 0x2

    .line 23
    invoke-static {p3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    if-eqz p3, :cond_1

    .line 28
    .line 29
    new-instance p3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    invoke-virtual {p0, p3, v2, v3, v1}, Lf0/j;->i(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p2

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->b()V

    .line 48
    .line 49
    .line 50
    return-object p2

    .line 51
    :goto_1
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->b()V

    .line 52
    .line 53
    .line 54
    throw p2
.end method

.method public final e(ILjava/lang/Object;)Lf0/F;
    .locals 8

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lf0/j;->b:Lf0/h;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lf0/h;->c(Ljava/lang/Class;)Lf0/D;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v0, p0, Lf0/j;->p:Ld0/i;

    .line 12
    .line 13
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v4, 0x1a

    .line 16
    .line 17
    if-ge v3, v4, :cond_1

    .line 18
    .line 19
    :cond_0
    :goto_0
    move-object v6, v0

    .line 20
    goto :goto_3

    .line 21
    :cond_1
    const/4 v3, 0x4

    .line 22
    if-eq p1, v3, :cond_3

    .line 23
    .line 24
    iget-boolean v1, v1, Lf0/h;->r:Z

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    const/4 v1, 0x0

    .line 30
    goto :goto_2

    .line 31
    :cond_3
    :goto_1
    const/4 v1, 0x1

    .line 32
    :goto_2
    sget-object v3, Lm0/q;->i:Ld0/h;

    .line 33
    .line 34
    invoke-virtual {v0, v3}, Ld0/i;->c(Ld0/h;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Ljava/lang/Boolean;

    .line 39
    .line 40
    if-eqz v4, :cond_4

    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    if-eqz v1, :cond_4

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_4
    new-instance v0, Ld0/i;

    .line 52
    .line 53
    invoke-direct {v0}, Ld0/i;-><init>()V

    .line 54
    .line 55
    .line 56
    iget-object v4, p0, Lf0/j;->p:Ld0/i;

    .line 57
    .line 58
    iget-object v4, v4, Ld0/i;->b:Ly0/c;

    .line 59
    .line 60
    iget-object v5, v0, Ld0/i;->b:Ly0/c;

    .line 61
    .line 62
    invoke-virtual {v5, v4}, Ly0/c;->g(Lq/e;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v5, v3, v1}, Ly0/c;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :goto_3
    iget-object v0, p0, Lf0/j;->i:Lcom/bumptech/glide/e;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/bumptech/glide/e;->a()Lcom/bumptech/glide/i;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/i;->g(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/g;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    :try_start_0
    iget v3, p0, Lf0/j;->m:I

    .line 84
    .line 85
    iget v4, p0, Lf0/j;->n:I

    .line 86
    .line 87
    new-instance v7, Le/f;

    .line 88
    .line 89
    invoke-direct {v7, p0, p1}, Le/f;-><init>(Lf0/j;I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual/range {v2 .. v7}, Lf0/D;->a(IILcom/bumptech/glide/load/data/g;Ld0/i;Le/f;)Lf0/F;

    .line 93
    .line 94
    .line 95
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-interface {v5}, Lcom/bumptech/glide/load/data/g;->b()V

    .line 97
    .line 98
    .line 99
    return-object p1

    .line 100
    :catchall_0
    move-exception v0

    .line 101
    move-object p1, v0

    .line 102
    invoke-interface {v5}, Lcom/bumptech/glide/load/data/g;->b()V

    .line 103
    .line 104
    .line 105
    throw p1
.end method

.method public final f()V
    .locals 13

    .line 1
    const-string v0, "DecodeJob"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "Retrieved data"

    .line 11
    .line 12
    iget-wide v1, p0, Lf0/j;->s:J

    .line 13
    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v4, "data: "

    .line 17
    .line 18
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v4, p0, Lf0/j;->x:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v4, ", cache key: "

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v4, p0, Lf0/j;->v:Ld0/f;

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v4, ", fetcher: "

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v4, p0, Lf0/j;->y:Lcom/bumptech/glide/load/data/e;

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {p0, v0, v1, v2, v3}, Lf0/j;->i(Ljava/lang/String;JLjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    const/4 v1, 0x0

    .line 54
    :try_start_0
    iget-object v0, p0, Lf0/j;->y:Lcom/bumptech/glide/load/data/e;

    .line 55
    .line 56
    iget-object v2, p0, Lf0/j;->x:Ljava/lang/Object;

    .line 57
    .line 58
    iget v3, p0, Lf0/j;->F:I

    .line 59
    .line 60
    invoke-virtual {p0, v0, v2, v3}, Lf0/j;->d(Lcom/bumptech/glide/load/data/e;Ljava/lang/Object;I)Lf0/F;

    .line 61
    .line 62
    .line 63
    move-result-object v0
    :try_end_0
    .catch Lf0/B; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    iget-object v2, p0, Lf0/j;->w:Ld0/f;

    .line 67
    .line 68
    iget v3, p0, Lf0/j;->F:I

    .line 69
    .line 70
    iput-object v2, v0, Lf0/B;->c:Ld0/f;

    .line 71
    .line 72
    iput v3, v0, Lf0/B;->d:I

    .line 73
    .line 74
    iput-object v1, v0, Lf0/B;->e:Ljava/lang/Class;

    .line 75
    .line 76
    iget-object v2, p0, Lf0/j;->c:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-object v0, v1

    .line 82
    :goto_0
    if-eqz v0, :cond_b

    .line 83
    .line 84
    iget v2, p0, Lf0/j;->F:I

    .line 85
    .line 86
    iget-boolean v3, p0, Lf0/j;->C:Z

    .line 87
    .line 88
    instance-of v4, v0, Lf0/C;

    .line 89
    .line 90
    if-eqz v4, :cond_1

    .line 91
    .line 92
    move-object v4, v0

    .line 93
    check-cast v4, Lf0/C;

    .line 94
    .line 95
    invoke-interface {v4}, Lf0/C;->a()V

    .line 96
    .line 97
    .line 98
    :cond_1
    iget-object v4, p0, Lf0/j;->g:LF/b;

    .line 99
    .line 100
    iget-object v4, v4, LF/b;->e:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v4, Lf0/E;

    .line 103
    .line 104
    const/4 v5, 0x0

    .line 105
    const/4 v6, 0x1

    .line 106
    if-eqz v4, :cond_2

    .line 107
    .line 108
    sget-object v1, Lf0/E;->f:Lz0/d;

    .line 109
    .line 110
    invoke-virtual {v1}, Lz0/d;->acquire()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Lf0/E;

    .line 115
    .line 116
    iput-boolean v5, v1, Lf0/E;->e:Z

    .line 117
    .line 118
    iput-boolean v6, v1, Lf0/E;->d:Z

    .line 119
    .line 120
    iput-object v0, v1, Lf0/E;->c:Lf0/F;

    .line 121
    .line 122
    move-object v0, v1

    .line 123
    :cond_2
    invoke-virtual {p0}, Lf0/j;->o()V

    .line 124
    .line 125
    .line 126
    iget-object v4, p0, Lf0/j;->q:Lf0/v;

    .line 127
    .line 128
    monitor-enter v4

    .line 129
    :try_start_1
    iput-object v0, v4, Lf0/v;->o:Lf0/F;

    .line 130
    .line 131
    iput v2, v4, Lf0/v;->p:I

    .line 132
    .line 133
    iput-boolean v3, v4, Lf0/v;->w:Z

    .line 134
    .line 135
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 136
    monitor-enter v4

    .line 137
    :try_start_2
    iget-object v0, v4, Lf0/v;->c:Lz0/h;

    .line 138
    .line 139
    invoke-virtual {v0}, Lz0/h;->a()V

    .line 140
    .line 141
    .line 142
    iget-boolean v0, v4, Lf0/v;->v:Z

    .line 143
    .line 144
    if-eqz v0, :cond_3

    .line 145
    .line 146
    iget-object v0, v4, Lf0/v;->o:Lf0/F;

    .line 147
    .line 148
    invoke-interface {v0}, Lf0/F;->e()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4}, Lf0/v;->g()V

    .line 152
    .line 153
    .line 154
    monitor-exit v4

    .line 155
    goto :goto_2

    .line 156
    :catchall_0
    move-exception v0

    .line 157
    goto/16 :goto_5

    .line 158
    .line 159
    :cond_3
    iget-object v0, v4, Lf0/v;->b:Lf0/u;

    .line 160
    .line 161
    iget-object v0, v0, Lf0/u;->b:Ljava/util/ArrayList;

    .line 162
    .line 163
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-nez v0, :cond_a

    .line 168
    .line 169
    iget-boolean v0, v4, Lf0/v;->q:Z

    .line 170
    .line 171
    if-nez v0, :cond_9

    .line 172
    .line 173
    iget-object v0, v4, Lf0/v;->f:Lcom/google/android/material/datepicker/c;

    .line 174
    .line 175
    iget-object v8, v4, Lf0/v;->o:Lf0/F;

    .line 176
    .line 177
    iget-boolean v9, v4, Lf0/v;->m:Z

    .line 178
    .line 179
    iget-object v11, v4, Lf0/v;->l:Lf0/x;

    .line 180
    .line 181
    iget-object v12, v4, Lf0/v;->d:Lf0/y;

    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    new-instance v7, Lf0/z;

    .line 187
    .line 188
    const/4 v10, 0x1

    .line 189
    invoke-direct/range {v7 .. v12}, Lf0/z;-><init>(Lf0/F;ZZLd0/f;Lf0/y;)V

    .line 190
    .line 191
    .line 192
    iput-object v7, v4, Lf0/v;->t:Lf0/z;

    .line 193
    .line 194
    iput-boolean v6, v4, Lf0/v;->q:Z

    .line 195
    .line 196
    iget-object v0, v4, Lf0/v;->b:Lf0/u;

    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    new-instance v2, Ljava/util/ArrayList;

    .line 202
    .line 203
    iget-object v0, v0, Lf0/u;->b:Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    add-int/2addr v0, v6

    .line 213
    invoke-virtual {v4, v0}, Lf0/v;->e(I)V

    .line 214
    .line 215
    .line 216
    iget-object v0, v4, Lf0/v;->l:Lf0/x;

    .line 217
    .line 218
    iget-object v3, v4, Lf0/v;->t:Lf0/z;

    .line 219
    .line 220
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 221
    iget-object v7, v4, Lf0/v;->g:Lf0/w;

    .line 222
    .line 223
    check-cast v7, Lf0/r;

    .line 224
    .line 225
    invoke-virtual {v7, v4, v0, v3}, Lf0/r;->d(Lf0/v;Ld0/f;Lf0/z;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    move v3, v5

    .line 233
    :goto_1
    if-ge v3, v0, :cond_4

    .line 234
    .line 235
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    add-int/lit8 v3, v3, 0x1

    .line 240
    .line 241
    check-cast v7, Lf0/t;

    .line 242
    .line 243
    iget-object v8, v7, Lf0/t;->b:Ljava/util/concurrent/Executor;

    .line 244
    .line 245
    new-instance v9, Lf0/s;

    .line 246
    .line 247
    iget-object v7, v7, Lf0/t;->a:Lu0/f;

    .line 248
    .line 249
    const/4 v10, 0x1

    .line 250
    invoke-direct {v9, v4, v7, v10}, Lf0/s;-><init>(Lf0/v;Lu0/f;I)V

    .line 251
    .line 252
    .line 253
    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 254
    .line 255
    .line 256
    goto :goto_1

    .line 257
    :cond_4
    invoke-virtual {v4}, Lf0/v;->d()V

    .line 258
    .line 259
    .line 260
    :goto_2
    const/4 v0, 0x5

    .line 261
    iput v0, p0, Lf0/j;->D:I

    .line 262
    .line 263
    :try_start_3
    iget-object v2, p0, Lf0/j;->g:LF/b;

    .line 264
    .line 265
    iget-object v0, v2, LF/b;->e:Ljava/lang/Object;

    .line 266
    .line 267
    check-cast v0, Lf0/E;

    .line 268
    .line 269
    if-eqz v0, :cond_5

    .line 270
    .line 271
    move v5, v6

    .line 272
    :cond_5
    if-eqz v5, :cond_6

    .line 273
    .line 274
    iget-object v0, p0, Lf0/j;->e:Lf0/q;

    .line 275
    .line 276
    iget-object v3, p0, Lf0/j;->p:Ld0/i;

    .line 277
    .line 278
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 279
    .line 280
    .line 281
    :try_start_4
    invoke-virtual {v0}, Lf0/q;->a()Lh0/a;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    iget-object v4, v2, LF/b;->c:Ljava/lang/Object;

    .line 286
    .line 287
    check-cast v4, Ld0/f;

    .line 288
    .line 289
    new-instance v5, LF/b;

    .line 290
    .line 291
    iget-object v7, v2, LF/b;->d:Ljava/lang/Object;

    .line 292
    .line 293
    check-cast v7, Ld0/l;

    .line 294
    .line 295
    iget-object v8, v2, LF/b;->e:Ljava/lang/Object;

    .line 296
    .line 297
    check-cast v8, Lf0/E;

    .line 298
    .line 299
    const/4 v9, 0x7

    .line 300
    invoke-direct {v5, v7, v8, v3, v9}, LF/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 301
    .line 302
    .line 303
    invoke-interface {v0, v4, v5}, Lh0/a;->j(Ld0/f;LF/b;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 304
    .line 305
    .line 306
    :try_start_5
    iget-object v0, v2, LF/b;->e:Ljava/lang/Object;

    .line 307
    .line 308
    check-cast v0, Lf0/E;

    .line 309
    .line 310
    invoke-virtual {v0}, Lf0/E;->a()V

    .line 311
    .line 312
    .line 313
    goto :goto_3

    .line 314
    :catchall_1
    move-exception v0

    .line 315
    iget-object v2, v2, LF/b;->e:Ljava/lang/Object;

    .line 316
    .line 317
    check-cast v2, Lf0/E;

    .line 318
    .line 319
    invoke-virtual {v2}, Lf0/E;->a()V

    .line 320
    .line 321
    .line 322
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 323
    :catchall_2
    move-exception v0

    .line 324
    goto :goto_4

    .line 325
    :cond_6
    :goto_3
    if-eqz v1, :cond_7

    .line 326
    .line 327
    invoke-virtual {v1}, Lf0/E;->a()V

    .line 328
    .line 329
    .line 330
    :cond_7
    iget-object v2, p0, Lf0/j;->h:Lf0/i;

    .line 331
    .line 332
    monitor-enter v2

    .line 333
    :try_start_6
    iput-boolean v6, v2, Lf0/i;->b:Z

    .line 334
    .line 335
    invoke-virtual {v2}, Lf0/i;->a()Z

    .line 336
    .line 337
    .line 338
    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 339
    monitor-exit v2

    .line 340
    if-eqz v0, :cond_c

    .line 341
    .line 342
    invoke-virtual {p0}, Lf0/j;->k()V

    .line 343
    .line 344
    .line 345
    goto :goto_6

    .line 346
    :catchall_3
    move-exception v0

    .line 347
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 348
    throw v0

    .line 349
    :goto_4
    if-eqz v1, :cond_8

    .line 350
    .line 351
    invoke-virtual {v1}, Lf0/E;->a()V

    .line 352
    .line 353
    .line 354
    :cond_8
    throw v0

    .line 355
    :cond_9
    :try_start_8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 356
    .line 357
    const-string v1, "Already have resource"

    .line 358
    .line 359
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    throw v0

    .line 363
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 364
    .line 365
    const-string v1, "Received a resource without any callbacks to notify"

    .line 366
    .line 367
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    throw v0

    .line 371
    :goto_5
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 372
    throw v0

    .line 373
    :catchall_4
    move-exception v0

    .line 374
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 375
    throw v0

    .line 376
    :cond_b
    invoke-virtual {p0}, Lf0/j;->m()V

    .line 377
    .line 378
    .line 379
    :cond_c
    :goto_6
    return-void
.end method

.method public final g()Lf0/g;
    .locals 3

    .line 1
    iget v0, p0, Lf0/j;->D:I

    .line 2
    .line 3
    invoke-static {v0}, Lu/h;->a(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    iget-object v2, p0, Lf0/j;->b:Lf0/h;

    .line 9
    .line 10
    if-eq v0, v1, :cond_3

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x5

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    return-object v0

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    iget v1, p0, Lf0/j;->D:I

    .line 26
    .line 27
    invoke-static {v1}, LE/b;->A(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "Unrecognized stage: "

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :cond_1
    new-instance v0, Lf0/J;

    .line 42
    .line 43
    invoke-direct {v0, v2, p0}, Lf0/J;-><init>(Lf0/h;Lf0/j;)V

    .line 44
    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_2
    new-instance v0, Lf0/d;

    .line 48
    .line 49
    invoke-virtual {v2}, Lf0/h;->a()Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-direct {v0, v1, v2, p0}, Lf0/d;-><init>(Ljava/util/List;Lf0/h;Lf0/f;)V

    .line 54
    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_3
    new-instance v0, Lf0/G;

    .line 58
    .line 59
    invoke-direct {v0, v2, p0}, Lf0/G;-><init>(Lf0/h;Lf0/j;)V

    .line 60
    .line 61
    .line 62
    return-object v0
.end method

.method public final h(I)I
    .locals 4

    .line 1
    invoke-static {p1}, Lu/h;->a(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x3

    .line 10
    if-eq v0, v2, :cond_3

    .line 11
    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    if-eq v0, v3, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x5

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    invoke-static {p1}, LE/b;->A(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v1, "Unrecognized stage: "

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :cond_1
    :goto_0
    const/4 p1, 0x6

    .line 37
    return p1

    .line 38
    :cond_2
    const/4 p1, 0x4

    .line 39
    return p1

    .line 40
    :cond_3
    iget-object p1, p0, Lf0/j;->o:Lf0/l;

    .line 41
    .line 42
    iget p1, p1, Lf0/l;->a:I

    .line 43
    .line 44
    packed-switch p1, :pswitch_data_0

    .line 45
    .line 46
    .line 47
    :pswitch_0
    const/4 p1, 0x1

    .line 48
    goto :goto_1

    .line 49
    :pswitch_1
    const/4 p1, 0x0

    .line 50
    :goto_1
    if-eqz p1, :cond_4

    .line 51
    .line 52
    return v3

    .line 53
    :cond_4
    invoke-virtual {p0, v3}, Lf0/j;->h(I)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    return p1

    .line 58
    :cond_5
    iget-object p1, p0, Lf0/j;->o:Lf0/l;

    .line 59
    .line 60
    iget p1, p1, Lf0/l;->a:I

    .line 61
    .line 62
    packed-switch p1, :pswitch_data_1

    .line 63
    .line 64
    .line 65
    const/4 p1, 0x1

    .line 66
    goto :goto_2

    .line 67
    :pswitch_2
    const/4 p1, 0x0

    .line 68
    :goto_2
    if-eqz p1, :cond_6

    .line 69
    .line 70
    return v1

    .line 71
    :cond_6
    invoke-virtual {p0, v1}, Lf0/j;->h(I)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    return p1

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final i(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p1, " in "

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-static {p2, p3}, Ly0/h;->a(J)D

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, ", load key: "

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lf0/j;->l:Lf0/x;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    if-eqz p4, :cond_0

    .line 32
    .line 33
    const-string p1, ", "

    .line 34
    .line 35
    invoke-virtual {p1, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const-string p1, ""

    .line 41
    .line 42
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p1, ", thread: "

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const-string p2, "DecodeJob"

    .line 66
    .line 67
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final j()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lf0/j;->o()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lf0/B;

    .line 5
    .line 6
    const-string v1, "Failed to load resource"

    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v3, p0, Lf0/j;->c:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v2, v1}, Lf0/B;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lf0/j;->q:Lf0/v;

    .line 19
    .line 20
    monitor-enter v1

    .line 21
    :try_start_0
    iput-object v0, v1, Lf0/v;->r:Lf0/B;

    .line 22
    .line 23
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 24
    monitor-enter v1

    .line 25
    :try_start_1
    iget-object v0, v1, Lf0/v;->c:Lz0/h;

    .line 26
    .line 27
    invoke-virtual {v0}, Lz0/h;->a()V

    .line 28
    .line 29
    .line 30
    iget-boolean v0, v1, Lf0/v;->v:Z

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1}, Lf0/v;->g()V

    .line 36
    .line 37
    .line 38
    monitor-exit v1

    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_2

    .line 42
    :cond_0
    iget-object v0, v1, Lf0/v;->b:Lf0/u;

    .line 43
    .line 44
    iget-object v0, v0, Lf0/u;->b:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_4

    .line 51
    .line 52
    iget-boolean v0, v1, Lf0/v;->s:Z

    .line 53
    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    iput-boolean v2, v1, Lf0/v;->s:Z

    .line 57
    .line 58
    iget-object v0, v1, Lf0/v;->l:Lf0/x;

    .line 59
    .line 60
    iget-object v3, v1, Lf0/v;->b:Lf0/u;

    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    new-instance v4, Ljava/util/ArrayList;

    .line 66
    .line 67
    iget-object v3, v3, Lf0/u;->b:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    add-int/2addr v3, v2

    .line 77
    invoke-virtual {v1, v3}, Lf0/v;->e(I)V

    .line 78
    .line 79
    .line 80
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    iget-object v3, v1, Lf0/v;->g:Lf0/w;

    .line 82
    .line 83
    const/4 v5, 0x0

    .line 84
    check-cast v3, Lf0/r;

    .line 85
    .line 86
    invoke-virtual {v3, v1, v0, v5}, Lf0/r;->d(Lf0/v;Ld0/f;Lf0/z;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    const/4 v3, 0x0

    .line 94
    :goto_0
    if-ge v3, v0, :cond_1

    .line 95
    .line 96
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    add-int/lit8 v3, v3, 0x1

    .line 101
    .line 102
    check-cast v5, Lf0/t;

    .line 103
    .line 104
    iget-object v6, v5, Lf0/t;->b:Ljava/util/concurrent/Executor;

    .line 105
    .line 106
    new-instance v7, Lf0/s;

    .line 107
    .line 108
    iget-object v5, v5, Lf0/t;->a:Lu0/f;

    .line 109
    .line 110
    const/4 v8, 0x0

    .line 111
    invoke-direct {v7, v1, v5, v8}, Lf0/s;-><init>(Lf0/v;Lu0/f;I)V

    .line 112
    .line 113
    .line 114
    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {v1}, Lf0/v;->d()V

    .line 119
    .line 120
    .line 121
    :goto_1
    iget-object v0, p0, Lf0/j;->h:Lf0/i;

    .line 122
    .line 123
    monitor-enter v0

    .line 124
    :try_start_2
    iput-boolean v2, v0, Lf0/i;->c:Z

    .line 125
    .line 126
    invoke-virtual {v0}, Lf0/i;->a()Z

    .line 127
    .line 128
    .line 129
    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 130
    monitor-exit v0

    .line 131
    if-eqz v1, :cond_2

    .line 132
    .line 133
    invoke-virtual {p0}, Lf0/j;->k()V

    .line 134
    .line 135
    .line 136
    :cond_2
    return-void

    .line 137
    :catchall_1
    move-exception v1

    .line 138
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 139
    throw v1

    .line 140
    :cond_3
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 141
    .line 142
    const-string v2, "Already failed once"

    .line 143
    .line 144
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw v0

    .line 148
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 149
    .line 150
    const-string v2, "Received an exception without any callbacks to notify"

    .line 151
    .line 152
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw v0

    .line 156
    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 157
    throw v0

    .line 158
    :catchall_2
    move-exception v0

    .line 159
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 160
    throw v0
.end method

.method public final k()V
    .locals 5

    .line 1
    iget-object v0, p0, Lf0/j;->h:Lf0/i;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-boolean v1, v0, Lf0/i;->b:Z

    .line 6
    .line 7
    iput-boolean v1, v0, Lf0/i;->a:Z

    .line 8
    .line 9
    iput-boolean v1, v0, Lf0/i;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    monitor-exit v0

    .line 12
    iget-object v0, p0, Lf0/j;->g:LF/b;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iput-object v2, v0, LF/b;->c:Ljava/lang/Object;

    .line 16
    .line 17
    iput-object v2, v0, LF/b;->d:Ljava/lang/Object;

    .line 18
    .line 19
    iput-object v2, v0, LF/b;->e:Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v0, p0, Lf0/j;->b:Lf0/h;

    .line 22
    .line 23
    iput-object v2, v0, Lf0/h;->c:Lcom/bumptech/glide/e;

    .line 24
    .line 25
    iput-object v2, v0, Lf0/h;->d:Ljava/lang/Object;

    .line 26
    .line 27
    iput-object v2, v0, Lf0/h;->n:Ld0/f;

    .line 28
    .line 29
    iput-object v2, v0, Lf0/h;->g:Ljava/lang/Class;

    .line 30
    .line 31
    iput-object v2, v0, Lf0/h;->k:Ljava/lang/Class;

    .line 32
    .line 33
    iput-object v2, v0, Lf0/h;->i:Ld0/i;

    .line 34
    .line 35
    iput-object v2, v0, Lf0/h;->o:Lcom/bumptech/glide/g;

    .line 36
    .line 37
    iput-object v2, v0, Lf0/h;->j:Ljava/util/Map;

    .line 38
    .line 39
    iput-object v2, v0, Lf0/h;->p:Lf0/l;

    .line 40
    .line 41
    iget-object v3, v0, Lf0/h;->a:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 44
    .line 45
    .line 46
    iput-boolean v1, v0, Lf0/h;->l:Z

    .line 47
    .line 48
    iget-object v3, v0, Lf0/h;->b:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 51
    .line 52
    .line 53
    iput-boolean v1, v0, Lf0/h;->m:Z

    .line 54
    .line 55
    iput-boolean v1, p0, Lf0/j;->A:Z

    .line 56
    .line 57
    iput-object v2, p0, Lf0/j;->i:Lcom/bumptech/glide/e;

    .line 58
    .line 59
    iput-object v2, p0, Lf0/j;->j:Ld0/f;

    .line 60
    .line 61
    iput-object v2, p0, Lf0/j;->p:Ld0/i;

    .line 62
    .line 63
    iput-object v2, p0, Lf0/j;->k:Lcom/bumptech/glide/g;

    .line 64
    .line 65
    iput-object v2, p0, Lf0/j;->l:Lf0/x;

    .line 66
    .line 67
    iput-object v2, p0, Lf0/j;->q:Lf0/v;

    .line 68
    .line 69
    iput v1, p0, Lf0/j;->D:I

    .line 70
    .line 71
    iput-object v2, p0, Lf0/j;->z:Lf0/g;

    .line 72
    .line 73
    iput-object v2, p0, Lf0/j;->u:Ljava/lang/Thread;

    .line 74
    .line 75
    iput-object v2, p0, Lf0/j;->v:Ld0/f;

    .line 76
    .line 77
    iput-object v2, p0, Lf0/j;->x:Ljava/lang/Object;

    .line 78
    .line 79
    iput v1, p0, Lf0/j;->F:I

    .line 80
    .line 81
    iput-object v2, p0, Lf0/j;->y:Lcom/bumptech/glide/load/data/e;

    .line 82
    .line 83
    const-wide/16 v3, 0x0

    .line 84
    .line 85
    iput-wide v3, p0, Lf0/j;->s:J

    .line 86
    .line 87
    iput-boolean v1, p0, Lf0/j;->B:Z

    .line 88
    .line 89
    iput-object v2, p0, Lf0/j;->t:Ljava/lang/Object;

    .line 90
    .line 91
    iget-object v0, p0, Lf0/j;->c:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lf0/j;->f:Landroidx/core/util/Pools$Pool;

    .line 97
    .line 98
    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :catchall_0
    move-exception v1

    .line 103
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    throw v1
.end method

.method public final l(I)V
    .locals 1

    .line 1
    iput p1, p0, Lf0/j;->E:I

    .line 2
    .line 3
    iget-object p1, p0, Lf0/j;->q:Lf0/v;

    .line 4
    .line 5
    iget-boolean v0, p1, Lf0/v;->n:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p1, Lf0/v;->j:Li0/e;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p1, Lf0/v;->i:Li0/e;

    .line 13
    .line 14
    :goto_0
    invoke-virtual {p1, p0}, Li0/e;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final m()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lf0/j;->u:Ljava/lang/Thread;

    .line 6
    .line 7
    sget v0, Ly0/h;->b:I

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Lf0/j;->s:J

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    :cond_0
    iget-boolean v1, p0, Lf0/j;->B:Z

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lf0/j;->z:Lf0/g;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lf0/j;->z:Lf0/g;

    .line 25
    .line 26
    invoke-interface {v0}, Lf0/g;->b()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    iget v1, p0, Lf0/j;->D:I

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Lf0/j;->h(I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iput v1, p0, Lf0/j;->D:I

    .line 39
    .line 40
    invoke-virtual {p0}, Lf0/j;->g()Lf0/g;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iput-object v1, p0, Lf0/j;->z:Lf0/g;

    .line 45
    .line 46
    iget v1, p0, Lf0/j;->D:I

    .line 47
    .line 48
    const/4 v2, 0x4

    .line 49
    if-ne v1, v2, :cond_0

    .line 50
    .line 51
    const/4 v0, 0x2

    .line 52
    invoke-virtual {p0, v0}, Lf0/j;->l(I)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    iget v1, p0, Lf0/j;->D:I

    .line 57
    .line 58
    const/4 v2, 0x6

    .line 59
    if-eq v1, v2, :cond_2

    .line 60
    .line 61
    iget-boolean v1, p0, Lf0/j;->B:Z

    .line 62
    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    :cond_2
    if-nez v0, :cond_3

    .line 66
    .line 67
    invoke-virtual {p0}, Lf0/j;->j()V

    .line 68
    .line 69
    .line 70
    :cond_3
    return-void
.end method

.method public final n()V
    .locals 3

    .line 1
    iget v0, p0, Lf0/j;->E:I

    .line 2
    .line 3
    invoke-static {v0}, Lu/h;->a(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    if-eq v0, v1, :cond_4

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lf0/j;->f()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    iget v1, p0, Lf0/j;->E:I

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    if-eq v1, v2, :cond_3

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    if-eq v1, v2, :cond_2

    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    if-eq v1, v2, :cond_1

    .line 31
    .line 32
    const-string v1, "null"

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const-string v1, "DECODE_DATA"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const-string v1, "SWITCH_TO_SOURCE_SERVICE"

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    const-string v1, "INITIALIZE"

    .line 42
    .line 43
    :goto_0
    const-string v2, "Unrecognized run reason: "

    .line 44
    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :cond_4
    invoke-virtual {p0}, Lf0/j;->m()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_5
    invoke-virtual {p0, v1}, Lf0/j;->h(I)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iput v0, p0, Lf0/j;->D:I

    .line 62
    .line 63
    invoke-virtual {p0}, Lf0/j;->g()Lf0/g;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lf0/j;->z:Lf0/g;

    .line 68
    .line 69
    invoke-virtual {p0}, Lf0/j;->m()V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf0/j;->d:Lz0/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lz0/h;->a()V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lf0/j;->A:Z

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lf0/j;->c:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lf0/j;->c:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    sub-int/2addr v2, v1

    .line 28
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/Throwable;

    .line 33
    .line 34
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string v2, "Already notified"

    .line 37
    .line 38
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    throw v1

    .line 42
    :cond_1
    iput-boolean v1, p0, Lf0/j;->A:Z

    .line 43
    .line 44
    return-void
.end method

.method public final run()V
    .locals 5

    .line 1
    const-string v0, "DecodeJob"

    .line 2
    .line 3
    const-string v1, "DecodeJob threw unexpectedly, isCancelled: "

    .line 4
    .line 5
    iget-object v2, p0, Lf0/j;->y:Lcom/bumptech/glide/load/data/e;

    .line 6
    .line 7
    :try_start_0
    iget-boolean v3, p0, Lf0/j;->B:Z

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lf0/j;->j()V
    :try_end_0
    .catch Lf0/c; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-interface {v2}, Lcom/bumptech/glide/load/data/e;->b()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v3

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lf0/j;->n()V
    :try_end_1
    .catch Lf0/c; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-interface {v2}, Lcom/bumptech/glide/load/data/e;->b()V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void

    .line 33
    :goto_0
    const/4 v4, 0x3

    .line 34
    :try_start_2
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-boolean v1, p0, Lf0/j;->B:Z

    .line 46
    .line 47
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, ", stage: "

    .line 51
    .line 52
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget v1, p0, Lf0/j;->D:I

    .line 56
    .line 57
    invoke-static {v1}, LE/b;->A(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v0, v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catchall_1
    move-exception v0

    .line 73
    goto :goto_3

    .line 74
    :cond_2
    :goto_1
    iget v0, p0, Lf0/j;->D:I

    .line 75
    .line 76
    const/4 v1, 0x5

    .line 77
    if-eq v0, v1, :cond_3

    .line 78
    .line 79
    iget-object v0, p0, Lf0/j;->c:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lf0/j;->j()V

    .line 85
    .line 86
    .line 87
    :cond_3
    iget-boolean v0, p0, Lf0/j;->B:Z

    .line 88
    .line 89
    if-nez v0, :cond_4

    .line 90
    .line 91
    throw v3

    .line 92
    :cond_4
    throw v3

    .line 93
    :goto_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    :goto_3
    if-eqz v2, :cond_5

    .line 95
    .line 96
    invoke-interface {v2}, Lcom/bumptech/glide/load/data/e;->b()V

    .line 97
    .line 98
    .line 99
    :cond_5
    throw v0
.end method
