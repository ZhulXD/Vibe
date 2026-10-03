.class public final LV1/B;
.super LV1/P;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static volatile _thread:Ljava/lang/Thread;

.field private static volatile debugStatus:I

.field public static final h:LV1/B;

.field public static final i:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, LV1/B;

    .line 2
    .line 3
    invoke-direct {v0}, LV1/P;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LV1/B;->h:LV1/B;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, LV1/L;->e(Z)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13
    .line 14
    const-wide/16 v1, 0x3e8

    .line 15
    .line 16
    :try_start_0
    const-string v3, "kotlinx.coroutines.DefaultExecutor.keepAlive"

    .line 17
    .line 18
    invoke-static {v3, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    sput-wide v0, LV1/B;->i:J

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final g()Ljava/lang/Thread;
    .locals 2

    .line 1
    sget-object v0, LV1/B;->_thread:Ljava/lang/Thread;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    sget-object v0, LV1/B;->_thread:Ljava/lang/Thread;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/Thread;

    .line 11
    .line 12
    const-string v1, "kotlinx.coroutines.DefaultExecutor"

    .line 13
    .line 14
    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, LV1/B;->_thread:Ljava/lang/Thread;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit p0

    .line 30
    return-object v0

    .line 31
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw v0

    .line 33
    :cond_1
    return-object v0
.end method

.method public final h(JLV1/N;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    .line 2
    .line 3
    const-string p2, "DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details"

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public final i(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    sget v0, LV1/B;->debugStatus:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    invoke-super {p0, p1}, LV1/P;->i(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    .line 11
    .line 12
    const-string v0, "DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details"

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public final declared-synchronized n()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget v0, LV1/B;->debugStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    const/4 v2, 0x3

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    if-ne v0, v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 14
    :goto_1
    if-nez v0, :cond_2

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :cond_2
    :try_start_1
    sput v2, LV1/B;->debugStatus:I

    .line 19
    .line 20
    sget-object v0, LV1/P;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    sget-object v0, LV1/P;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 27
    .line 28
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "null cannot be cast to non-null type java.lang.Object"

    .line 32
    .line 33
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    .line 39
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    throw v0
.end method

.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    sget-object v0, LV1/s0;->a:Ljava/lang/ThreadLocal;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    sget v0, LV1/B;->debugStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 11
    .line 12
    const/4 v4, 0x3

    .line 13
    const/4 v5, 0x2

    .line 14
    const/4 v6, 0x1

    .line 15
    if-eq v0, v5, :cond_1

    .line 16
    .line 17
    if-ne v0, v4, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    move v0, v6

    .line 23
    :goto_1
    if-eqz v0, :cond_2

    .line 24
    .line 25
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    sput-object v2, LV1/B;->_thread:Ljava/lang/Thread;

    .line 27
    .line 28
    invoke-virtual {v1}, LV1/B;->n()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, LV1/P;->k()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_8

    .line 36
    .line 37
    invoke-virtual {v1}, LV1/B;->g()Ljava/lang/Thread;

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    :try_start_3
    sput v6, LV1/B;->debugStatus:I

    .line 42
    .line 43
    const-string v0, "null cannot be cast to non-null type java.lang.Object"

    .line 44
    .line 45
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 49
    .line 50
    .line 51
    :try_start_4
    monitor-exit p0

    .line 52
    const-wide v7, 0x7fffffffffffffffL

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    move-wide v9, v7

    .line 58
    :goto_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, LV1/P;->l()J

    .line 62
    .line 63
    .line 64
    move-result-wide v11

    .line 65
    cmp-long v0, v11, v7

    .line 66
    .line 67
    const-wide/16 v13, 0x0

    .line 68
    .line 69
    if-nez v0, :cond_5

    .line 70
    .line 71
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 72
    .line 73
    .line 74
    move-result-wide v15

    .line 75
    cmp-long v0, v9, v7

    .line 76
    .line 77
    if-nez v0, :cond_3

    .line 78
    .line 79
    sget-wide v9, LV1/B;->i:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 80
    .line 81
    add-long/2addr v9, v15

    .line 82
    :cond_3
    move-object/from16 v17, v2

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    move-object/from16 v17, v2

    .line 87
    .line 88
    goto :goto_8

    .line 89
    :goto_3
    sub-long v2, v9, v15

    .line 90
    .line 91
    cmp-long v15, v2, v13

    .line 92
    .line 93
    if-gtz v15, :cond_4

    .line 94
    .line 95
    sput-object v17, LV1/B;->_thread:Ljava/lang/Thread;

    .line 96
    .line 97
    invoke-virtual {v1}, LV1/B;->n()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, LV1/P;->k()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-nez v0, :cond_8

    .line 105
    .line 106
    invoke-virtual {v1}, LV1/B;->g()Ljava/lang/Thread;

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_4
    :try_start_5
    invoke-static {v11, v12, v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    .line 111
    .line 112
    .line 113
    move-result-wide v11

    .line 114
    goto :goto_4

    .line 115
    :catchall_1
    move-exception v0

    .line 116
    goto :goto_8

    .line 117
    :cond_5
    move-object/from16 v17, v2

    .line 118
    .line 119
    move-wide v9, v7

    .line 120
    :goto_4
    cmp-long v2, v11, v13

    .line 121
    .line 122
    if-lez v2, :cond_a

    .line 123
    .line 124
    sget v2, LV1/B;->debugStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 125
    .line 126
    if-eq v2, v5, :cond_7

    .line 127
    .line 128
    if-ne v2, v4, :cond_6

    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_6
    const/4 v2, 0x0

    .line 132
    goto :goto_6

    .line 133
    :cond_7
    :goto_5
    move v2, v6

    .line 134
    :goto_6
    if-eqz v2, :cond_9

    .line 135
    .line 136
    sput-object v17, LV1/B;->_thread:Ljava/lang/Thread;

    .line 137
    .line 138
    invoke-virtual {v1}, LV1/B;->n()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1}, LV1/P;->k()Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-nez v0, :cond_8

    .line 146
    .line 147
    invoke-virtual {v1}, LV1/B;->g()Ljava/lang/Thread;

    .line 148
    .line 149
    .line 150
    :cond_8
    return-void

    .line 151
    :cond_9
    :try_start_6
    invoke-static {v1, v11, v12}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 152
    .line 153
    .line 154
    :cond_a
    move-object/from16 v2, v17

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :catchall_2
    move-exception v0

    .line 158
    move-object/from16 v17, v2

    .line 159
    .line 160
    :goto_7
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 161
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 162
    :catchall_3
    move-exception v0

    .line 163
    goto :goto_7

    .line 164
    :goto_8
    sput-object v17, LV1/B;->_thread:Ljava/lang/Thread;

    .line 165
    .line 166
    invoke-virtual {v1}, LV1/B;->n()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1}, LV1/P;->k()Z

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    if-nez v2, :cond_b

    .line 174
    .line 175
    invoke-virtual {v1}, LV1/B;->g()Ljava/lang/Thread;

    .line 176
    .line 177
    .line 178
    :cond_b
    throw v0
.end method

.method public final shutdown()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    sput v0, LV1/B;->debugStatus:I

    .line 3
    .line 4
    invoke-super {p0}, LV1/P;->shutdown()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
