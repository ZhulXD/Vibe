.class public final Lf0/r;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lf0/w;
.implements Lf0/y;


# static fields
.field public static final h:Z


# instance fields
.field public final a:Lcom/bumptech/glide/f;

.field public final b:Lcom/google/android/material/datepicker/c;

.field public final c:Lh0/e;

.field public final d:Lf0/p;

.field public final e:Lf0/I;

.field public final f:Lf0/n;

.field public final g:LF/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "Engine"

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
    sput-boolean v0, Lf0/r;->h:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lh0/e;LA1/b;Li0/e;Li0/e;Li0/e;Li0/e;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf0/r;->c:Lh0/e;

    .line 5
    .line 6
    new-instance v0, Lf0/q;

    .line 7
    .line 8
    invoke-direct {v0, p2}, Lf0/q;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance p2, LF/b;

    .line 12
    .line 13
    const/4 v1, 0x6

    .line 14
    invoke-direct {p2, v1}, LF/b;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lf0/r;->g:LF/b;

    .line 18
    .line 19
    monitor-enter p0

    .line 20
    :try_start_0
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :try_start_1
    iput-object p0, p2, LF/b;->e:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    new-instance p2, Lcom/google/android/material/datepicker/c;

    .line 26
    .line 27
    const/4 v1, 0x4

    .line 28
    invoke-direct {p2, v1}, Lcom/google/android/material/datepicker/c;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iput-object p2, p0, Lf0/r;->b:Lcom/google/android/material/datepicker/c;

    .line 32
    .line 33
    new-instance p2, Lcom/bumptech/glide/f;

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-direct {p2, v1}, Lcom/bumptech/glide/f;-><init>(I)V

    .line 37
    .line 38
    .line 39
    iput-object p2, p0, Lf0/r;->a:Lcom/bumptech/glide/f;

    .line 40
    .line 41
    new-instance v2, Lf0/p;

    .line 42
    .line 43
    move-object v8, p0

    .line 44
    move-object v7, p0

    .line 45
    move-object v3, p3

    .line 46
    move-object v4, p4

    .line 47
    move-object v5, p5

    .line 48
    move-object v6, p6

    .line 49
    invoke-direct/range {v2 .. v8}, Lf0/p;-><init>(Li0/e;Li0/e;Li0/e;Li0/e;Lf0/r;Lf0/r;)V

    .line 50
    .line 51
    .line 52
    iput-object v2, v7, Lf0/r;->d:Lf0/p;

    .line 53
    .line 54
    new-instance p2, Lf0/n;

    .line 55
    .line 56
    invoke-direct {p2, v0}, Lf0/n;-><init>(Lf0/q;)V

    .line 57
    .line 58
    .line 59
    iput-object p2, v7, Lf0/r;->f:Lf0/n;

    .line 60
    .line 61
    new-instance p2, Lf0/I;

    .line 62
    .line 63
    invoke-direct {p2}, Lf0/I;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object p2, v7, Lf0/r;->e:Lf0/I;

    .line 67
    .line 68
    iput-object v7, p1, Lh0/e;->d:Lf0/r;

    .line 69
    .line 70
    return-void

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    move-object v7, p0

    .line 73
    :goto_0
    move-object p1, v0

    .line 74
    goto :goto_2

    .line 75
    :catchall_1
    move-exception v0

    .line 76
    move-object v7, p0

    .line 77
    :goto_1
    move-object p1, v0

    .line 78
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 79
    :try_start_4
    throw p1

    .line 80
    :catchall_2
    move-exception v0

    .line 81
    goto :goto_0

    .line 82
    :catchall_3
    move-exception v0

    .line 83
    goto :goto_1

    .line 84
    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 85
    throw p1
.end method

.method public static c(Ljava/lang/String;JLf0/x;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p0, " in "

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Ly0/h;->a(J)D

    .line 15
    .line 16
    .line 17
    move-result-wide p0

    .line 18
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p0, "ms, key: "

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string p1, "Engine"

    .line 34
    .line 35
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static f(Lf0/F;)V
    .locals 1

    .line 1
    instance-of v0, p0, Lf0/z;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lf0/z;

    .line 6
    .line 7
    invoke-virtual {p0}, Lf0/z;->b()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string v0, "Cannot release anything but an EngineResource"

    .line 14
    .line 15
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p0
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/e;Ljava/lang/Object;Ld0/f;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/g;Lf0/l;Ly0/c;ZZLd0/i;ZZLu0/f;Le/o;)LF/b;
    .locals 23

    move-object/from16 v2, p0

    .line 1
    sget-boolean v0, Lf0/r;->h:Z

    if-eqz v0, :cond_0

    sget v0, Ly0/h;->b:I

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 3
    :goto_0
    iget-object v3, v2, Lf0/r;->b:Lcom/google/android/material/datepicker/c;

    .line 4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    new-instance v4, Lf0/x;

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v9, p10

    move-object/from16 v12, p13

    invoke-direct/range {v4 .. v12}, Lf0/x;-><init>(Ljava/lang/Object;Ld0/f;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Ld0/i;)V

    .line 6
    monitor-enter p0

    move/from16 v3, p14

    .line 7
    :try_start_0
    invoke-virtual {v2, v4, v3, v0, v1}, Lf0/r;->b(Lf0/x;ZJ)Lf0/z;

    move-result-object v5

    if-nez v5, :cond_1

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    move/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move-wide/from16 v21, v0

    move/from16 v16, v3

    move-object/from16 v20, v4

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 8
    invoke-virtual/range {v2 .. v22}, Lf0/r;->g(Lcom/bumptech/glide/e;Ljava/lang/Object;Ld0/f;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/g;Lf0/l;Ljava/util/Map;ZZLd0/i;ZZLu0/f;Ljava/util/concurrent/Executor;Lf0/x;J)LF/b;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    move-object v0, v5

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x5

    const/4 v2, 0x0

    move-object/from16 v3, p16

    .line 10
    invoke-virtual {v3, v0, v1, v2}, Lu0/f;->j(Lf0/F;IZ)V

    const/4 v0, 0x0

    return-object v0

    .line 11
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b(Lf0/x;ZJ)Lf0/z;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    move-object v6, p0

    .line 5
    goto/16 :goto_4

    .line 6
    .line 7
    :cond_0
    iget-object p2, p0, Lf0/r;->g:LF/b;

    .line 8
    .line 9
    monitor-enter p2

    .line 10
    :try_start_0
    iget-object v1, p2, LF/b;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lf0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    monitor-exit p2

    .line 23
    move-object v2, v0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lf0/z;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 30
    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    :try_start_2
    invoke-virtual {p2, v1}, LF/b;->e(Lf0/b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    move-object p1, v0

    .line 39
    move-object v6, p0

    .line 40
    goto/16 :goto_7

    .line 41
    .line 42
    :cond_2
    :goto_0
    monitor-exit p2

    .line 43
    :goto_1
    if-eqz v2, :cond_3

    .line 44
    .line 45
    invoke-virtual {v2}, Lf0/z;->a()V

    .line 46
    .line 47
    .line 48
    :cond_3
    if-eqz v2, :cond_5

    .line 49
    .line 50
    sget-boolean p2, Lf0/r;->h:Z

    .line 51
    .line 52
    if-eqz p2, :cond_4

    .line 53
    .line 54
    const-string p2, "Loaded resource from active resources"

    .line 55
    .line 56
    invoke-static {p2, p3, p4, p1}, Lf0/r;->c(Ljava/lang/String;JLf0/x;)V

    .line 57
    .line 58
    .line 59
    :cond_4
    return-object v2

    .line 60
    :cond_5
    iget-object v1, p0, Lf0/r;->c:Lh0/e;

    .line 61
    .line 62
    monitor-enter v1

    .line 63
    :try_start_3
    iget-object p2, v1, Ly0/j;->a:Ljava/util/LinkedHashMap;

    .line 64
    .line 65
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    check-cast p2, Ly0/i;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 70
    .line 71
    if-nez p2, :cond_6

    .line 72
    .line 73
    monitor-exit v1

    .line 74
    move-object p2, v0

    .line 75
    goto :goto_2

    .line 76
    :cond_6
    :try_start_4
    iget-wide v2, v1, Ly0/j;->c:J

    .line 77
    .line 78
    iget v4, p2, Ly0/i;->b:I

    .line 79
    .line 80
    int-to-long v4, v4

    .line 81
    sub-long/2addr v2, v4

    .line 82
    iput-wide v2, v1, Ly0/j;->c:J

    .line 83
    .line 84
    iget-object p2, p2, Ly0/i;->a:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 85
    .line 86
    monitor-exit v1

    .line 87
    :goto_2
    move-object v2, p2

    .line 88
    check-cast v2, Lf0/F;

    .line 89
    .line 90
    if-nez v2, :cond_7

    .line 91
    .line 92
    move-object v6, p0

    .line 93
    move-object v5, p1

    .line 94
    move-object v2, v0

    .line 95
    goto :goto_3

    .line 96
    :cond_7
    instance-of p2, v2, Lf0/z;

    .line 97
    .line 98
    if-eqz p2, :cond_8

    .line 99
    .line 100
    check-cast v2, Lf0/z;

    .line 101
    .line 102
    move-object v6, p0

    .line 103
    move-object v5, p1

    .line 104
    goto :goto_3

    .line 105
    :cond_8
    new-instance v1, Lf0/z;

    .line 106
    .line 107
    const/4 v3, 0x1

    .line 108
    const/4 v4, 0x1

    .line 109
    move-object v6, p0

    .line 110
    move-object v5, p1

    .line 111
    invoke-direct/range {v1 .. v6}, Lf0/z;-><init>(Lf0/F;ZZLd0/f;Lf0/y;)V

    .line 112
    .line 113
    .line 114
    move-object v2, v1

    .line 115
    :goto_3
    if-eqz v2, :cond_9

    .line 116
    .line 117
    invoke-virtual {v2}, Lf0/z;->a()V

    .line 118
    .line 119
    .line 120
    iget-object p1, v6, Lf0/r;->g:LF/b;

    .line 121
    .line 122
    invoke-virtual {p1, v5, v2}, LF/b;->b(Ld0/f;Lf0/z;)V

    .line 123
    .line 124
    .line 125
    :cond_9
    if-eqz v2, :cond_b

    .line 126
    .line 127
    sget-boolean p1, Lf0/r;->h:Z

    .line 128
    .line 129
    if-eqz p1, :cond_a

    .line 130
    .line 131
    const-string p1, "Loaded resource from cache"

    .line 132
    .line 133
    invoke-static {p1, p3, p4, v5}, Lf0/r;->c(Ljava/lang/String;JLf0/x;)V

    .line 134
    .line 135
    .line 136
    :cond_a
    return-object v2

    .line 137
    :cond_b
    :goto_4
    return-object v0

    .line 138
    :catchall_1
    move-exception v0

    .line 139
    move-object v6, p0

    .line 140
    :goto_5
    move-object p1, v0

    .line 141
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 142
    throw p1

    .line 143
    :catchall_2
    move-exception v0

    .line 144
    goto :goto_5

    .line 145
    :catchall_3
    move-exception v0

    .line 146
    move-object v6, p0

    .line 147
    :goto_6
    move-object p1, v0

    .line 148
    :goto_7
    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 149
    throw p1

    .line 150
    :catchall_4
    move-exception v0

    .line 151
    goto :goto_6
.end method

.method public final declared-synchronized d(Lf0/v;Ld0/f;Lf0/z;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p3, :cond_0

    .line 3
    .line 4
    :try_start_0
    iget-boolean v0, p3, Lf0/z;->b:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lf0/r;->g:LF/b;

    .line 9
    .line 10
    invoke-virtual {v0, p2, p3}, LF/b;->b(Ld0/f;Lf0/z;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    iget-object p3, p0, Lf0/r;->a:Lcom/bumptech/glide/f;

    .line 17
    .line 18
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object p3, p3, Lcom/bumptech/glide/f;->a:Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    :cond_1
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw p1
.end method

.method public final e(Ld0/f;Lf0/z;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf0/r;->g:LF/b;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, v0, LF/b;->c:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lf0/b;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    iput-object v2, v1, Lf0/b;->c:Lf0/F;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    :cond_0
    monitor-exit v0

    .line 23
    iget-boolean v0, p2, Lf0/z;->b:Z

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lf0/r;->c:Lh0/e;

    .line 28
    .line 29
    invoke-virtual {v0, p1, p2}, Ly0/j;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lf0/F;

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    iget-object p1, p0, Lf0/r;->e:Lf0/I;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, p2, v0}, Lf0/I;->a(Lf0/F;Z)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    throw p1
.end method

.method public final g(Lcom/bumptech/glide/e;Ljava/lang/Object;Ld0/f;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/g;Lf0/l;Ljava/util/Map;ZZLd0/i;ZZLu0/f;Ljava/util/concurrent/Executor;Lf0/x;J)LF/b;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p13

    move-object/from16 v9, p16

    move-object/from16 v10, p17

    move-object/from16 v11, p18

    move-wide/from16 v12, p19

    .line 1
    iget-object v14, v1, Lf0/r;->a:Lcom/bumptech/glide/f;

    .line 2
    iget-object v14, v14, Lcom/bumptech/glide/f;->a:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v14, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lf0/v;

    if-eqz v14, :cond_1

    .line 4
    invoke-virtual {v14, v9, v10}, Lf0/v;->a(Lu0/f;Ljava/util/concurrent/Executor;)V

    .line 5
    sget-boolean v0, Lf0/r;->h:Z

    if-eqz v0, :cond_0

    .line 6
    const-string v0, "Added to existing load"

    invoke-static {v0, v12, v13, v11}, Lf0/r;->c(Ljava/lang/String;JLf0/x;)V

    .line 7
    :cond_0
    new-instance v0, LF/b;

    invoke-direct {v0, v1, v9, v14}, LF/b;-><init>(Lf0/r;Lu0/f;Lf0/v;)V

    return-object v0

    .line 8
    :cond_1
    iget-object v14, v1, Lf0/r;->d:Lf0/p;

    .line 9
    iget-object v14, v14, Lf0/p;->g:Lz0/d;

    .line 10
    invoke-virtual {v14}, Lz0/d;->acquire()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lf0/v;

    .line 11
    monitor-enter v14

    .line 12
    :try_start_0
    iput-object v11, v14, Lf0/v;->l:Lf0/x;

    move/from16 v15, p14

    .line 13
    iput-boolean v15, v14, Lf0/v;->m:Z

    move/from16 v15, p15

    .line 14
    iput-boolean v15, v14, Lf0/v;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    monitor-exit v14

    .line 16
    iget-object v15, v1, Lf0/r;->f:Lf0/n;

    .line 17
    iget-object v12, v15, Lf0/n;->b:Lz0/d;

    .line 18
    invoke-virtual {v12}, Lz0/d;->acquire()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lf0/j;

    .line 19
    iget v13, v15, Lf0/n;->c:I

    add-int/lit8 v9, v13, 0x1

    iput v9, v15, Lf0/n;->c:I

    .line 20
    iget-object v9, v12, Lf0/j;->b:Lf0/h;

    iget-object v15, v12, Lf0/j;->e:Lf0/q;

    .line 21
    iput-object v0, v9, Lf0/h;->c:Lcom/bumptech/glide/e;

    .line 22
    iput-object v2, v9, Lf0/h;->d:Ljava/lang/Object;

    .line 23
    iput-object v3, v9, Lf0/h;->n:Ld0/f;

    .line 24
    iput v4, v9, Lf0/h;->e:I

    .line 25
    iput v5, v9, Lf0/h;->f:I

    .line 26
    iput-object v7, v9, Lf0/h;->p:Lf0/l;

    move-object/from16 v10, p6

    .line 27
    iput-object v10, v9, Lf0/h;->g:Ljava/lang/Class;

    .line 28
    iput-object v15, v9, Lf0/h;->h:Lf0/q;

    move-object/from16 v10, p7

    .line 29
    iput-object v10, v9, Lf0/h;->k:Ljava/lang/Class;

    .line 30
    iput-object v6, v9, Lf0/h;->o:Lcom/bumptech/glide/g;

    .line 31
    iput-object v8, v9, Lf0/h;->i:Ld0/i;

    move-object/from16 v10, p10

    .line 32
    iput-object v10, v9, Lf0/h;->j:Ljava/util/Map;

    move/from16 v10, p11

    .line 33
    iput-boolean v10, v9, Lf0/h;->q:Z

    move/from16 v10, p12

    .line 34
    iput-boolean v10, v9, Lf0/h;->r:Z

    .line 35
    iput-object v0, v12, Lf0/j;->i:Lcom/bumptech/glide/e;

    .line 36
    iput-object v3, v12, Lf0/j;->j:Ld0/f;

    .line 37
    iput-object v6, v12, Lf0/j;->k:Lcom/bumptech/glide/g;

    .line 38
    iput-object v11, v12, Lf0/j;->l:Lf0/x;

    .line 39
    iput v4, v12, Lf0/j;->m:I

    .line 40
    iput v5, v12, Lf0/j;->n:I

    .line 41
    iput-object v7, v12, Lf0/j;->o:Lf0/l;

    .line 42
    iput-object v8, v12, Lf0/j;->p:Ld0/i;

    .line 43
    iput-object v14, v12, Lf0/j;->q:Lf0/v;

    .line 44
    iput v13, v12, Lf0/j;->r:I

    const/4 v0, 0x1

    .line 45
    iput v0, v12, Lf0/j;->E:I

    .line 46
    iput-object v2, v12, Lf0/j;->t:Ljava/lang/Object;

    .line 47
    iget-object v2, v1, Lf0/r;->a:Lcom/bumptech/glide/f;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    iget-object v2, v2, Lcom/bumptech/glide/f;->a:Ljava/util/HashMap;

    .line 49
    invoke-virtual {v2, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, p16

    move-object/from16 v10, p17

    .line 50
    invoke-virtual {v14, v9, v10}, Lf0/v;->a(Lu0/f;Ljava/util/concurrent/Executor;)V

    .line 51
    monitor-enter v14

    .line 52
    :try_start_1
    iput-object v12, v14, Lf0/v;->u:Lf0/j;

    .line 53
    invoke-virtual {v12, v0}, Lf0/j;->h(I)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 54
    :cond_2
    iget-boolean v0, v14, Lf0/v;->n:Z

    if-eqz v0, :cond_3

    iget-object v0, v14, Lf0/v;->j:Li0/e;

    goto :goto_1

    :cond_3
    iget-object v0, v14, Lf0/v;->i:Li0/e;

    goto :goto_1

    .line 55
    :cond_4
    :goto_0
    iget-object v0, v14, Lf0/v;->h:Li0/e;

    .line 56
    :goto_1
    invoke-virtual {v0, v12}, Li0/e;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    monitor-exit v14

    .line 58
    sget-boolean v0, Lf0/r;->h:Z

    if-eqz v0, :cond_5

    .line 59
    const-string v0, "Started new load"

    move-wide/from16 v12, p19

    invoke-static {v0, v12, v13, v11}, Lf0/r;->c(Ljava/lang/String;JLf0/x;)V

    .line 60
    :cond_5
    new-instance v0, LF/b;

    invoke-direct {v0, v1, v9, v14}, LF/b;-><init>(Lf0/r;Lu0/f;Lf0/v;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 61
    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 62
    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
