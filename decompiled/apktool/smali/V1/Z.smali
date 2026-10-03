.class public abstract LV1/Z;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# direct methods
.method public static a(LV1/b0;LV1/f0;I)LV1/I;
    .locals 9

    .line 1
    and-int/lit8 v0, p2, 0x1

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    and-int/lit8 p2, p2, 0x2

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move v1, v2

    .line 16
    :goto_1
    check-cast p0, LV1/j0;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    instance-of v2, p1, LV1/d0;

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    move-object v2, p1

    .line 29
    check-cast v2, LV1/d0;

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    move-object v2, p2

    .line 33
    :goto_2
    if-nez v2, :cond_4

    .line 34
    .line 35
    new-instance v2, LV1/Y;

    .line 36
    .line 37
    invoke-direct {v2, p1}, LV1/Y;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 38
    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_3
    move-object v2, p1

    .line 42
    :cond_4
    :goto_3
    iput-object p0, v2, LV1/f0;->e:LV1/j0;

    .line 43
    .line 44
    :cond_5
    :goto_4
    invoke-virtual {p0}, LV1/j0;->w()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    instance-of v4, v3, LV1/K;

    .line 49
    .line 50
    if-eqz v4, :cond_c

    .line 51
    .line 52
    move-object v4, v3

    .line 53
    check-cast v4, LV1/K;

    .line 54
    .line 55
    iget-boolean v5, v4, LV1/K;->b:Z

    .line 56
    .line 57
    if-eqz v5, :cond_8

    .line 58
    .line 59
    sget-object v5, LV1/j0;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 60
    .line 61
    :cond_6
    invoke-virtual {v5, p0, v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_7

    .line 66
    .line 67
    goto/16 :goto_9

    .line 68
    .line 69
    :cond_7
    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    if-eq v4, v3, :cond_6

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_8
    new-instance v3, LV1/l0;

    .line 77
    .line 78
    invoke-direct {v3}, La2/l;-><init>()V

    .line 79
    .line 80
    .line 81
    iget-boolean v5, v4, LV1/K;->b:Z

    .line 82
    .line 83
    if-eqz v5, :cond_9

    .line 84
    .line 85
    move-object v5, v3

    .line 86
    goto :goto_5

    .line 87
    :cond_9
    new-instance v5, LV1/V;

    .line 88
    .line 89
    invoke-direct {v5, v3}, LV1/V;-><init>(LV1/l0;)V

    .line 90
    .line 91
    .line 92
    :goto_5
    sget-object v6, LV1/j0;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 93
    .line 94
    :cond_a
    invoke-virtual {v6, p0, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_b

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_b
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    if-eq v3, v4, :cond_a

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_c
    instance-of v4, v3, LV1/W;

    .line 109
    .line 110
    if-eqz v4, :cond_15

    .line 111
    .line 112
    move-object v4, v3

    .line 113
    check-cast v4, LV1/W;

    .line 114
    .line 115
    invoke-interface {v4}, LV1/W;->d()LV1/l0;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    if-nez v5, :cond_d

    .line 120
    .line 121
    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.JobNode"

    .line 122
    .line 123
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    check-cast v3, LV1/f0;

    .line 127
    .line 128
    invoke-virtual {p0, v3}, LV1/j0;->G(LV1/f0;)V

    .line 129
    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_d
    sget-object v6, LV1/m0;->b:LV1/m0;

    .line 133
    .line 134
    if-eqz v0, :cond_12

    .line 135
    .line 136
    instance-of v7, v3, LV1/h0;

    .line 137
    .line 138
    if-eqz v7, :cond_12

    .line 139
    .line 140
    monitor-enter v3

    .line 141
    :try_start_0
    move-object v7, v3

    .line 142
    check-cast v7, LV1/h0;

    .line 143
    .line 144
    invoke-virtual {v7}, LV1/h0;->c()Ljava/lang/Throwable;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    if-eqz v7, :cond_e

    .line 149
    .line 150
    instance-of v8, p1, LV1/i;

    .line 151
    .line 152
    if-eqz v8, :cond_11

    .line 153
    .line 154
    move-object v8, v3

    .line 155
    check-cast v8, LV1/h0;

    .line 156
    .line 157
    invoke-virtual {v8}, LV1/h0;->f()Z

    .line 158
    .line 159
    .line 160
    move-result v8

    .line 161
    if-nez v8, :cond_11

    .line 162
    .line 163
    goto :goto_6

    .line 164
    :catchall_0
    move-exception p0

    .line 165
    goto :goto_7

    .line 166
    :cond_e
    :goto_6
    move-object v6, v3

    .line 167
    check-cast v6, LV1/W;

    .line 168
    .line 169
    invoke-virtual {p0, v6, v5, v2}, LV1/j0;->h(LV1/W;LV1/l0;LV1/f0;)Z

    .line 170
    .line 171
    .line 172
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    if-nez v6, :cond_f

    .line 174
    .line 175
    monitor-exit v3

    .line 176
    goto/16 :goto_4

    .line 177
    .line 178
    :cond_f
    if-nez v7, :cond_10

    .line 179
    .line 180
    monitor-exit v3

    .line 181
    return-object v2

    .line 182
    :cond_10
    move-object v6, v2

    .line 183
    :cond_11
    :try_start_1
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    .line 185
    monitor-exit v3

    .line 186
    goto :goto_8

    .line 187
    :goto_7
    monitor-exit v3

    .line 188
    throw p0

    .line 189
    :cond_12
    move-object v7, p2

    .line 190
    :goto_8
    if-eqz v7, :cond_14

    .line 191
    .line 192
    if-eqz v1, :cond_13

    .line 193
    .line 194
    invoke-interface {p1, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    :cond_13
    return-object v6

    .line 198
    :cond_14
    invoke-virtual {p0, v4, v5, v2}, LV1/j0;->h(LV1/W;LV1/l0;LV1/f0;)Z

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    if-eqz v3, :cond_5

    .line 203
    .line 204
    :goto_9
    return-object v2

    .line 205
    :cond_15
    if-eqz v1, :cond_18

    .line 206
    .line 207
    instance-of p0, v3, LV1/k;

    .line 208
    .line 209
    if-eqz p0, :cond_16

    .line 210
    .line 211
    check-cast v3, LV1/k;

    .line 212
    .line 213
    goto :goto_a

    .line 214
    :cond_16
    move-object v3, p2

    .line 215
    :goto_a
    if-eqz v3, :cond_17

    .line 216
    .line 217
    iget-object p2, v3, LV1/k;->a:Ljava/lang/Throwable;

    .line 218
    .line 219
    :cond_17
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    :cond_18
    sget-object p0, LV1/m0;->b:LV1/m0;

    .line 223
    .line 224
    return-object p0
.end method
