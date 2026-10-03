.class public final LX1/a;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements LV1/w0;


# instance fields
.field public b:Ljava/lang/Object;

.field public c:LV1/e;

.field public final synthetic d:LX1/b;


# direct methods
.method public constructor <init>(LX1/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LX1/a;->d:LX1/b;

    .line 5
    .line 6
    sget-object p1, LX1/d;->p:La2/w;

    .line 7
    .line 8
    iput-object p1, p0, LX1/a;->b:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method

.method public static final b(LX1/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, LX1/a;->c:LV1/e;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, LX1/a;->c:LV1/e;

    .line 8
    .line 9
    sget-object v1, LX1/d;->l:La2/w;

    .line 10
    .line 11
    iput-object v1, p0, LX1/a;->b:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object p0, p0, LX1/a;->d:LX1/b;

    .line 14
    .line 15
    invoke-virtual {p0}, LX1/b;->l()Ljava/lang/Throwable;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 22
    .line 23
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v0, p0}, LV1/e;->resumeWith(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 34
    .line 35
    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {v0, p0}, LV1/e;->resumeWith(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final a(La2/u;I)V
    .locals 1

    .line 1
    iget-object v0, p0, LX1/a;->c:LV1/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, LV1/e;->a(La2/u;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final c(LY1/d;)Ljava/lang/Object;
    .locals 15

    .line 1
    sget-object v0, LX1/b;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    iget-object v1, p0, LX1/a;->d:LX1/b;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, LX1/j;

    .line 10
    .line 11
    :goto_0
    sget-object v2, LX1/b;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    const/4 v7, 0x1

    .line 18
    invoke-virtual {v1, v2, v3, v7}, LX1/b;->p(JZ)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    sget-object v0, LX1/d;->l:La2/w;

    .line 25
    .line 26
    iput-object v0, p0, LX1/a;->b:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-virtual {v1}, LX1/b;->l()Ljava/lang/Throwable;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0

    .line 40
    :cond_0
    sget v1, La2/v;->a:I

    .line 41
    .line 42
    throw v0

    .line 43
    :cond_1
    sget-object v2, LX1/b;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 44
    .line 45
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    sget v2, LX1/d;->b:I

    .line 50
    .line 51
    int-to-long v2, v2

    .line 52
    div-long v8, v4, v2

    .line 53
    .line 54
    rem-long v2, v4, v2

    .line 55
    .line 56
    long-to-int v3, v2

    .line 57
    iget-wide v10, v0, La2/u;->d:J

    .line 58
    .line 59
    cmp-long v2, v10, v8

    .line 60
    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    invoke-virtual {v1, v8, v9, v0}, LX1/b;->k(JLX1/j;)LX1/j;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    if-nez v2, :cond_3

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    move-object v2, v0

    .line 71
    :cond_3
    const/4 v6, 0x0

    .line 72
    invoke-virtual/range {v1 .. v6}, LX1/b;->x(LX1/j;IJLX1/a;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    sget-object v8, LX1/d;->m:La2/w;

    .line 77
    .line 78
    if-eq v0, v8, :cond_12

    .line 79
    .line 80
    sget-object v9, LX1/d;->o:La2/w;

    .line 81
    .line 82
    if-ne v0, v9, :cond_5

    .line 83
    .line 84
    invoke-virtual {v1}, LX1/b;->n()J

    .line 85
    .line 86
    .line 87
    move-result-wide v6

    .line 88
    cmp-long v0, v4, v6

    .line 89
    .line 90
    if-gez v0, :cond_4

    .line 91
    .line 92
    invoke-virtual {v2}, La2/d;->a()V

    .line 93
    .line 94
    .line 95
    :cond_4
    move-object v0, v2

    .line 96
    goto :goto_0

    .line 97
    :cond_5
    sget-object v6, LX1/d;->n:La2/w;

    .line 98
    .line 99
    if-ne v0, v6, :cond_11

    .line 100
    .line 101
    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {v0}, LV1/A;->b(Lkotlin/coroutines/Continuation;)LV1/e;

    .line 106
    .line 107
    .line 108
    move-result-object v10

    .line 109
    :try_start_0
    iput-object v10, p0, LX1/a;->c:LV1/e;

    .line 110
    .line 111
    move-object v6, p0

    .line 112
    invoke-virtual/range {v1 .. v6}, LX1/b;->x(LX1/j;IJLX1/a;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    if-ne v0, v8, :cond_6

    .line 117
    .line 118
    invoke-virtual {p0, v2, v3}, LX1/a;->a(La2/u;I)V

    .line 119
    .line 120
    .line 121
    goto/16 :goto_6

    .line 122
    .line 123
    :catchall_0
    move-exception v0

    .line 124
    goto/16 :goto_7

    .line 125
    .line 126
    :cond_6
    const/4 v8, 0x0

    .line 127
    if-ne v0, v9, :cond_f

    .line 128
    .line 129
    invoke-virtual {v1}, LX1/b;->n()J

    .line 130
    .line 131
    .line 132
    move-result-wide v11

    .line 133
    cmp-long v0, v4, v11

    .line 134
    .line 135
    if-gez v0, :cond_7

    .line 136
    .line 137
    invoke-virtual {v2}, La2/d;->a()V

    .line 138
    .line 139
    .line 140
    :cond_7
    sget-object v0, LX1/b;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    check-cast v0, LX1/j;

    .line 147
    .line 148
    :goto_1
    sget-object v2, LX1/b;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 149
    .line 150
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 151
    .line 152
    .line 153
    move-result-wide v2

    .line 154
    invoke-virtual {v1, v2, v3, v7}, LX1/b;->p(JZ)Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-eqz v2, :cond_8

    .line 159
    .line 160
    invoke-static {p0}, LX1/a;->b(LX1/a;)V

    .line 161
    .line 162
    .line 163
    goto :goto_6

    .line 164
    :cond_8
    sget-object v2, LX1/b;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 165
    .line 166
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 167
    .line 168
    .line 169
    move-result-wide v4

    .line 170
    sget v2, LX1/d;->b:I

    .line 171
    .line 172
    int-to-long v2, v2

    .line 173
    div-long v11, v4, v2

    .line 174
    .line 175
    rem-long v2, v4, v2

    .line 176
    .line 177
    long-to-int v3, v2

    .line 178
    iget-wide v13, v0, La2/u;->d:J

    .line 179
    .line 180
    cmp-long v2, v13, v11

    .line 181
    .line 182
    if-eqz v2, :cond_a

    .line 183
    .line 184
    invoke-virtual {v1, v11, v12, v0}, LX1/b;->k(JLX1/j;)LX1/j;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    if-nez v2, :cond_9

    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_9
    :goto_2
    move-object v6, p0

    .line 192
    goto :goto_3

    .line 193
    :cond_a
    move-object v2, v0

    .line 194
    goto :goto_2

    .line 195
    :goto_3
    invoke-virtual/range {v1 .. v6}, LX1/b;->x(LX1/j;IJLX1/a;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    sget-object v9, LX1/d;->m:La2/w;

    .line 200
    .line 201
    if-ne v0, v9, :cond_b

    .line 202
    .line 203
    invoke-virtual {p0, v2, v3}, LX1/a;->a(La2/u;I)V

    .line 204
    .line 205
    .line 206
    goto :goto_6

    .line 207
    :cond_b
    sget-object v3, LX1/d;->o:La2/w;

    .line 208
    .line 209
    if-ne v0, v3, :cond_d

    .line 210
    .line 211
    invoke-virtual {v1}, LX1/b;->n()J

    .line 212
    .line 213
    .line 214
    move-result-wide v11

    .line 215
    cmp-long v0, v4, v11

    .line 216
    .line 217
    if-gez v0, :cond_c

    .line 218
    .line 219
    invoke-virtual {v2}, La2/d;->a()V

    .line 220
    .line 221
    .line 222
    :cond_c
    move-object v0, v2

    .line 223
    goto :goto_1

    .line 224
    :cond_d
    sget-object v1, LX1/d;->n:La2/w;

    .line 225
    .line 226
    if-eq v0, v1, :cond_e

    .line 227
    .line 228
    invoke-virtual {v2}, La2/d;->a()V

    .line 229
    .line 230
    .line 231
    iput-object v0, p0, LX1/a;->b:Ljava/lang/Object;

    .line 232
    .line 233
    iput-object v8, p0, LX1/a;->c:LV1/e;

    .line 234
    .line 235
    goto :goto_5

    .line 236
    :goto_4
    invoke-virtual {v10, v0, v8}, LV1/e;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 237
    .line 238
    .line 239
    goto :goto_6

    .line 240
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 241
    .line 242
    const-string v1, "unexpected"

    .line 243
    .line 244
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    throw v0

    .line 248
    :cond_f
    invoke-virtual {v2}, La2/d;->a()V

    .line 249
    .line 250
    .line 251
    iput-object v0, p0, LX1/a;->b:Ljava/lang/Object;

    .line 252
    .line 253
    iput-object v8, p0, LX1/a;->c:LV1/e;

    .line 254
    .line 255
    :goto_5
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 256
    .line 257
    .line 258
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    goto :goto_4

    .line 260
    :goto_6
    invoke-virtual {v10}, LV1/e;->q()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    if-ne v0, v1, :cond_10

    .line 269
    .line 270
    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 271
    .line 272
    .line 273
    :cond_10
    return-object v0

    .line 274
    :goto_7
    invoke-virtual {v10}, LV1/e;->x()V

    .line 275
    .line 276
    .line 277
    throw v0

    .line 278
    :cond_11
    invoke-virtual {v2}, La2/d;->a()V

    .line 279
    .line 280
    .line 281
    iput-object v0, p0, LX1/a;->b:Ljava/lang/Object;

    .line 282
    .line 283
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    return-object v0

    .line 288
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 289
    .line 290
    const-string v1, "unreachable"

    .line 291
    .line 292
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    throw v0
.end method
