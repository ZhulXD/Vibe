.class public final LX1/j;
.super La2/u;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final f:LX1/b;

.field public final g:Ljava/util/concurrent/atomic/AtomicReferenceArray;


# direct methods
.method public constructor <init>(JLX1/j;LX1/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p5}, La2/u;-><init>(JLa2/u;I)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, LX1/j;->f:LX1/b;

    .line 5
    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 7
    .line 8
    sget p2, LX1/d;->b:I

    .line 9
    .line 10
    mul-int/lit8 p2, p2, 0x2

    .line 11
    .line 12
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, LX1/j;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final f()I
    .locals 1

    .line 1
    sget v0, LX1/d;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final g(ILkotlin/coroutines/CoroutineContext;)V
    .locals 4

    .line 1
    sget p2, LX1/d;->b:I

    .line 2
    .line 3
    if-lt p1, p2, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-eqz v0, :cond_1

    .line 9
    .line 10
    sub-int/2addr p1, p2

    .line 11
    :cond_1
    mul-int/lit8 p2, p1, 0x2

    .line 12
    .line 13
    iget-object v1, p0, LX1/j;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 14
    .line 15
    invoke-virtual {v1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, LX1/j;->k(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    instance-of v1, p2, LV1/w0;

    .line 23
    .line 24
    iget-object v2, p0, LX1/j;->f:LX1/b;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    if-nez v1, :cond_9

    .line 28
    .line 29
    instance-of v1, p2, LX1/s;

    .line 30
    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    goto :goto_3

    .line 34
    :cond_3
    sget-object v1, LX1/d;->j:La2/w;

    .line 35
    .line 36
    if-eq p2, v1, :cond_8

    .line 37
    .line 38
    sget-object v1, LX1/d;->k:La2/w;

    .line 39
    .line 40
    if-ne p2, v1, :cond_4

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_4
    sget-object v1, LX1/d;->g:La2/w;

    .line 44
    .line 45
    if-eq p2, v1, :cond_2

    .line 46
    .line 47
    sget-object v1, LX1/d;->f:La2/w;

    .line 48
    .line 49
    if-ne p2, v1, :cond_5

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_5
    sget-object p1, LX1/d;->i:La2/w;

    .line 53
    .line 54
    if-eq p2, p1, :cond_b

    .line 55
    .line 56
    sget-object p1, LX1/d;->d:La2/w;

    .line 57
    .line 58
    if-ne p2, p1, :cond_6

    .line 59
    .line 60
    goto :goto_5

    .line 61
    :cond_6
    sget-object p1, LX1/d;->l:La2/w;

    .line 62
    .line 63
    if-ne p2, p1, :cond_7

    .line 64
    .line 65
    goto :goto_5

    .line 66
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v1, "unexpected state: "

    .line 71
    .line 72
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1

    .line 90
    :cond_8
    :goto_2
    invoke-virtual {p0, p1, v3}, LX1/j;->m(ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    if-eqz v0, :cond_b

    .line 94
    .line 95
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_9
    :goto_3
    if-eqz v0, :cond_a

    .line 103
    .line 104
    sget-object v1, LX1/d;->j:La2/w;

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_a
    sget-object v1, LX1/d;->k:La2/w;

    .line 108
    .line 109
    :goto_4
    invoke-virtual {p0, p1, p2, v1}, LX1/j;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    if-eqz p2, :cond_2

    .line 114
    .line 115
    invoke-virtual {p0, p1, v3}, LX1/j;->m(ILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    xor-int/lit8 p2, v0, 0x1

    .line 119
    .line 120
    invoke-virtual {p0, p1, p2}, LX1/j;->l(IZ)V

    .line 121
    .line 122
    .line 123
    if-eqz v0, :cond_b

    .line 124
    .line 125
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    :cond_b
    :goto_5
    return-void
.end method

.method public final j(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    .line 1
    mul-int/lit8 p1, p1, 0x2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    add-int/2addr p1, v0

    .line 5
    :cond_0
    iget-object v1, p0, LX1/j;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 6
    .line 7
    invoke-virtual {v1, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    return v0

    .line 14
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eq v1, p2, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    return p1
.end method

.method public final k(I)Ljava/lang/Object;
    .locals 1

    .line 1
    mul-int/lit8 p1, p1, 0x2

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    iget-object v0, p0, LX1/j;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final l(IZ)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-eqz p2, :cond_7

    .line 4
    .line 5
    iget-object v2, v0, LX1/j;->f:LX1/b;

    .line 6
    .line 7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget v1, LX1/d;->b:I

    .line 11
    .line 12
    int-to-long v3, v1

    .line 13
    iget-wide v5, v0, La2/u;->d:J

    .line 14
    .line 15
    mul-long/2addr v5, v3

    .line 16
    move/from16 v1, p1

    .line 17
    .line 18
    int-to-long v3, v1

    .line 19
    add-long/2addr v5, v3

    .line 20
    sget-object v1, LX1/b;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 21
    .line 22
    sget-object v7, LX1/b;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 23
    .line 24
    invoke-virtual {v2}, LX1/b;->r()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :cond_0
    invoke-virtual {v7, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    cmp-long v3, v3, v5

    .line 37
    .line 38
    if-lez v3, :cond_0

    .line 39
    .line 40
    sget v3, LX1/d;->c:I

    .line 41
    .line 42
    const/4 v8, 0x0

    .line 43
    move v4, v8

    .line 44
    :goto_0
    const-wide v9, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    if-ge v4, v3, :cond_2

    .line 50
    .line 51
    invoke-virtual {v7, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v5

    .line 55
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 56
    .line 57
    .line 58
    move-result-wide v11

    .line 59
    and-long/2addr v9, v11

    .line 60
    cmp-long v9, v5, v9

    .line 61
    .line 62
    if-nez v9, :cond_1

    .line 63
    .line 64
    invoke-virtual {v7, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 65
    .line 66
    .line 67
    move-result-wide v9

    .line 68
    cmp-long v5, v5, v9

    .line 69
    .line 70
    if-nez v5, :cond_1

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 77
    .line 78
    .line 79
    move-result-wide v3

    .line 80
    and-long v5, v3, v9

    .line 81
    .line 82
    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    .line 83
    .line 84
    add-long/2addr v5, v11

    .line 85
    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_2

    .line 90
    .line 91
    :cond_3
    :goto_1
    invoke-virtual {v7, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 92
    .line 93
    .line 94
    move-result-wide v3

    .line 95
    sget-object v1, LX1/b;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 96
    .line 97
    move-wide v5, v3

    .line 98
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 99
    .line 100
    .line 101
    move-result-wide v3

    .line 102
    and-long v13, v3, v9

    .line 103
    .line 104
    and-long v15, v3, v11

    .line 105
    .line 106
    const-wide/16 v17, 0x0

    .line 107
    .line 108
    cmp-long v15, v15, v17

    .line 109
    .line 110
    if-eqz v15, :cond_4

    .line 111
    .line 112
    const/4 v15, 0x1

    .line 113
    goto :goto_2

    .line 114
    :cond_4
    move v15, v8

    .line 115
    :goto_2
    cmp-long v16, v5, v13

    .line 116
    .line 117
    if-nez v16, :cond_6

    .line 118
    .line 119
    invoke-virtual {v7, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 120
    .line 121
    .line 122
    move-result-wide v16

    .line 123
    cmp-long v5, v5, v16

    .line 124
    .line 125
    if-nez v5, :cond_6

    .line 126
    .line 127
    :cond_5
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 128
    .line 129
    .line 130
    move-result-wide v3

    .line 131
    and-long v5, v3, v9

    .line 132
    .line 133
    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-eqz v3, :cond_5

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_6
    if-nez v15, :cond_3

    .line 141
    .line 142
    add-long v5, v11, v13

    .line 143
    .line 144
    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_7
    :goto_3
    invoke-virtual {v0}, La2/u;->h()V

    .line 149
    .line 150
    .line 151
    return-void
.end method

.method public final m(ILjava/lang/Object;)V
    .locals 1

    .line 1
    mul-int/lit8 p1, p1, 0x2

    .line 2
    .line 3
    iget-object v0, p0, LX1/j;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final n(ILjava/lang/Object;)V
    .locals 1

    .line 1
    mul-int/lit8 p1, p1, 0x2

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    iget-object v0, p0, LX1/j;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
