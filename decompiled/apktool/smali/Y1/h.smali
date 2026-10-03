.class public final LY1/h;
.super LZ1/a;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements LY1/e;
.implements LY1/b;


# static fields
.field public static final f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _state:Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Ljava/lang/Object;

    .line 2
    .line 3
    const-string v1, "_state"

    .line 4
    .line 5
    const-class v2, LY1/h;

    .line 6
    .line 7
    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, LY1/h;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LY1/h;->_state:Ljava/lang/Object;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 9

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, LZ1/c;->a:La2/w;

    .line 4
    .line 5
    :cond_0
    monitor-enter p0

    .line 6
    :try_start_0
    sget-object v0, LY1/h;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :cond_1
    :try_start_1
    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget p1, p0, LY1/h;->e:I

    .line 24
    .line 25
    and-int/lit8 v0, p1, 0x1

    .line 26
    .line 27
    if-nez v0, :cond_b

    .line 28
    .line 29
    add-int/lit8 p1, p1, 0x1

    .line 30
    .line 31
    iput p1, p0, LY1/h;->e:I

    .line 32
    .line 33
    iget-object v0, p0, LZ1/a;->b:[LZ1/b;

    .line 34
    .line 35
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36
    .line 37
    monitor-exit p0

    .line 38
    :goto_0
    check-cast v0, [LY1/j;

    .line 39
    .line 40
    if-eqz v0, :cond_9

    .line 41
    .line 42
    array-length v1, v0

    .line 43
    const/4 v2, 0x0

    .line 44
    :goto_1
    if-ge v2, v1, :cond_9

    .line 45
    .line 46
    aget-object v3, v0, v2

    .line 47
    .line 48
    if-eqz v3, :cond_8

    .line 49
    .line 50
    sget-object v4, LY1/j;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 51
    .line 52
    :goto_2
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    if-nez v5, :cond_2

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_2
    sget-object v6, LY1/i;->b:La2/w;

    .line 60
    .line 61
    if-ne v5, v6, :cond_3

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_3
    sget-object v7, LY1/i;->a:La2/w;

    .line 65
    .line 66
    if-ne v5, v7, :cond_6

    .line 67
    .line 68
    :cond_4
    invoke-virtual {v4, v3, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-eqz v7, :cond_5

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_5
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    if-eq v7, v5, :cond_4

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_6
    invoke-virtual {v4, v3, v5, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    if-eqz v6, :cond_7

    .line 87
    .line 88
    check-cast v5, LV1/e;

    .line 89
    .line 90
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 91
    .line 92
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 93
    .line 94
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v5, v3}, LV1/e;->resumeWith(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_7
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    if-eq v6, v5, :cond_6

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_8
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_9
    monitor-enter p0

    .line 113
    :try_start_2
    iget v0, p0, LY1/h;->e:I

    .line 114
    .line 115
    if-ne v0, p1, :cond_a

    .line 116
    .line 117
    add-int/lit8 p1, p1, 0x1

    .line 118
    .line 119
    iput p1, p0, LY1/h;->e:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    .line 121
    monitor-exit p0

    .line 122
    return-void

    .line 123
    :catchall_0
    move-exception p1

    .line 124
    goto :goto_4

    .line 125
    :cond_a
    :try_start_3
    iget-object p1, p0, LZ1/a;->b:[LZ1/b;

    .line 126
    .line 127
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 128
    .line 129
    monitor-exit p0

    .line 130
    move v8, v0

    .line 131
    move-object v0, p1

    .line 132
    move p1, v8

    .line 133
    goto :goto_0

    .line 134
    :goto_4
    monitor-exit p0

    .line 135
    throw p1

    .line 136
    :catchall_1
    move-exception p1

    .line 137
    goto :goto_5

    .line 138
    :cond_b
    add-int/lit8 p1, p1, 0x2

    .line 139
    .line 140
    :try_start_4
    iput p1, p0, LY1/h;->e:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 141
    .line 142
    monitor-exit p0

    .line 143
    return-void

    .line 144
    :goto_5
    monitor-exit p0

    .line 145
    throw p1
.end method

.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LY1/h;->a(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p1
.end method

.method public final f(LY1/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    .line 1
    instance-of v0, p2, LY1/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, LY1/g;

    .line 7
    .line 8
    iget v1, v0, LY1/g;->i:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, LY1/g;->i:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, LY1/g;

    .line 21
    .line 22
    check-cast p2, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    .line 23
    .line 24
    invoke-direct {v0, p0, p2}, LY1/g;-><init>(LY1/h;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p2, v0, LY1/g;->g:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget v2, v0, LY1/g;->i:I

    .line 34
    .line 35
    const/4 v3, 0x3

    .line 36
    const/4 v4, 0x0

    .line 37
    const/4 v5, 0x0

    .line 38
    const/4 v6, 0x2

    .line 39
    const/4 v7, 0x1

    .line 40
    if-eqz v2, :cond_4

    .line 41
    .line 42
    if-eq v2, v7, :cond_3

    .line 43
    .line 44
    if-eq v2, v6, :cond_2

    .line 45
    .line 46
    if-ne v2, v3, :cond_1

    .line 47
    .line 48
    iget-object p1, v0, LY1/g;->f:Ljava/lang/Object;

    .line 49
    .line 50
    iget-object v2, v0, LY1/g;->e:LV1/b0;

    .line 51
    .line 52
    iget-object v7, v0, LY1/g;->d:LY1/j;

    .line 53
    .line 54
    iget-object v8, v0, LY1/g;->c:LY1/c;

    .line 55
    .line 56
    iget-object v9, v0, LY1/g;->b:LY1/h;

    .line 57
    .line 58
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    goto/16 :goto_4

    .line 62
    .line 63
    :catchall_0
    move-exception p1

    .line 64
    goto/16 :goto_9

    .line 65
    .line 66
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 69
    .line 70
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1

    .line 74
    :cond_2
    iget-object p1, v0, LY1/g;->f:Ljava/lang/Object;

    .line 75
    .line 76
    iget-object v2, v0, LY1/g;->e:LV1/b0;

    .line 77
    .line 78
    iget-object v7, v0, LY1/g;->d:LY1/j;

    .line 79
    .line 80
    iget-object v8, v0, LY1/g;->c:LY1/c;

    .line 81
    .line 82
    iget-object v9, v0, LY1/g;->b:LY1/h;

    .line 83
    .line 84
    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .line 86
    .line 87
    goto/16 :goto_7

    .line 88
    .line 89
    :cond_3
    iget-object v7, v0, LY1/g;->d:LY1/j;

    .line 90
    .line 91
    iget-object p1, v0, LY1/g;->c:LY1/c;

    .line 92
    .line 93
    iget-object v9, v0, LY1/g;->b:LY1/h;

    .line 94
    .line 95
    :try_start_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    monitor-enter p0

    .line 103
    :try_start_3
    iget-object p2, p0, LZ1/a;->b:[LZ1/b;

    .line 104
    .line 105
    if-nez p2, :cond_5

    .line 106
    .line 107
    new-array p2, v6, [LY1/j;

    .line 108
    .line 109
    iput-object p2, p0, LZ1/a;->b:[LZ1/b;

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :catchall_1
    move-exception p1

    .line 113
    goto/16 :goto_c

    .line 114
    .line 115
    :cond_5
    iget v2, p0, LZ1/a;->c:I

    .line 116
    .line 117
    array-length v8, p2

    .line 118
    if-lt v2, v8, :cond_6

    .line 119
    .line 120
    array-length v2, p2

    .line 121
    mul-int/2addr v2, v6

    .line 122
    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    const-string v2, "copyOf(this, newSize)"

    .line 127
    .line 128
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    move-object v2, p2

    .line 132
    check-cast v2, [LZ1/b;

    .line 133
    .line 134
    iput-object v2, p0, LZ1/a;->b:[LZ1/b;

    .line 135
    .line 136
    check-cast p2, [LZ1/b;

    .line 137
    .line 138
    :cond_6
    :goto_1
    iget v2, p0, LZ1/a;->d:I

    .line 139
    .line 140
    :goto_2
    aget-object v8, p2, v2

    .line 141
    .line 142
    if-nez v8, :cond_7

    .line 143
    .line 144
    new-instance v8, LY1/j;

    .line 145
    .line 146
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 147
    .line 148
    .line 149
    aput-object v8, p2, v2

    .line 150
    .line 151
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 152
    .line 153
    array-length v9, p2

    .line 154
    if-lt v2, v9, :cond_8

    .line 155
    .line 156
    move v2, v5

    .line 157
    :cond_8
    const-string v9, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>"

    .line 158
    .line 159
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    move-object v9, v8

    .line 163
    check-cast v9, LY1/j;

    .line 164
    .line 165
    sget-object v10, LY1/j;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 166
    .line 167
    invoke-virtual {v10, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v11

    .line 171
    if-eqz v11, :cond_9

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_9
    sget-object p2, LY1/i;->a:La2/w;

    .line 175
    .line 176
    invoke-virtual {v10, v9, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    iput v2, p0, LZ1/a;->d:I

    .line 180
    .line 181
    iget p2, p0, LZ1/a;->c:I

    .line 182
    .line 183
    add-int/2addr p2, v7

    .line 184
    iput p2, p0, LZ1/a;->c:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 185
    .line 186
    monitor-exit p0

    .line 187
    check-cast v8, LY1/j;

    .line 188
    .line 189
    move-object v9, p0

    .line 190
    move-object v7, v8

    .line 191
    :goto_3
    :try_start_4
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    sget-object v2, LV1/a0;->b:LV1/a0;

    .line 196
    .line 197
    invoke-interface {p2, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    check-cast p2, LV1/b0;

    .line 202
    .line 203
    move-object v8, p1

    .line 204
    move-object v2, p2

    .line 205
    move-object p1, v4

    .line 206
    :cond_a
    :goto_4
    sget-object p2, LY1/h;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 207
    .line 208
    invoke-virtual {p2, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object p2

    .line 212
    if-eqz v2, :cond_c

    .line 213
    .line 214
    invoke-interface {v2}, LV1/b0;->a()Z

    .line 215
    .line 216
    .line 217
    move-result v10

    .line 218
    if-eqz v10, :cond_b

    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_b
    check-cast v2, LV1/j0;

    .line 222
    .line 223
    invoke-virtual {v2}, LV1/j0;->s()Ljava/util/concurrent/CancellationException;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    throw p1

    .line 228
    :cond_c
    :goto_5
    if-eqz p1, :cond_d

    .line 229
    .line 230
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v10

    .line 234
    if-nez v10, :cond_10

    .line 235
    .line 236
    :cond_d
    sget-object p1, LZ1/c;->a:La2/w;

    .line 237
    .line 238
    if-ne p2, p1, :cond_e

    .line 239
    .line 240
    move-object p1, v4

    .line 241
    goto :goto_6

    .line 242
    :cond_e
    move-object p1, p2

    .line 243
    :goto_6
    iput-object v9, v0, LY1/g;->b:LY1/h;

    .line 244
    .line 245
    iput-object v8, v0, LY1/g;->c:LY1/c;

    .line 246
    .line 247
    iput-object v7, v0, LY1/g;->d:LY1/j;

    .line 248
    .line 249
    iput-object v2, v0, LY1/g;->e:LV1/b0;

    .line 250
    .line 251
    iput-object p2, v0, LY1/g;->f:Ljava/lang/Object;

    .line 252
    .line 253
    iput v6, v0, LY1/g;->i:I

    .line 254
    .line 255
    invoke-interface {v8, p1, v0}, LY1/c;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    if-ne p1, v1, :cond_f

    .line 260
    .line 261
    goto :goto_8

    .line 262
    :cond_f
    move-object p1, p2

    .line 263
    :cond_10
    :goto_7
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    .line 265
    .line 266
    sget-object p2, LY1/j;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 267
    .line 268
    sget-object v10, LY1/i;->a:La2/w;

    .line 269
    .line 270
    invoke-virtual {p2, v7, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object p2

    .line 274
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    sget-object v10, LY1/i;->b:La2/w;

    .line 278
    .line 279
    if-ne p2, v10, :cond_11

    .line 280
    .line 281
    goto :goto_4

    .line 282
    :cond_11
    iput-object v9, v0, LY1/g;->b:LY1/h;

    .line 283
    .line 284
    iput-object v8, v0, LY1/g;->c:LY1/c;

    .line 285
    .line 286
    iput-object v7, v0, LY1/g;->d:LY1/j;

    .line 287
    .line 288
    iput-object v2, v0, LY1/g;->e:LV1/b0;

    .line 289
    .line 290
    iput-object p1, v0, LY1/g;->f:Ljava/lang/Object;

    .line 291
    .line 292
    iput v3, v0, LY1/g;->i:I

    .line 293
    .line 294
    invoke-virtual {v7, v0}, LY1/j;->a(LY1/g;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 298
    if-ne p2, v1, :cond_a

    .line 299
    .line 300
    :goto_8
    return-object v1

    .line 301
    :goto_9
    monitor-enter v9

    .line 302
    :try_start_5
    iget p2, v9, LZ1/a;->c:I

    .line 303
    .line 304
    add-int/lit8 p2, p2, -0x1

    .line 305
    .line 306
    iput p2, v9, LZ1/a;->c:I

    .line 307
    .line 308
    if-nez p2, :cond_12

    .line 309
    .line 310
    iput v5, v9, LZ1/a;->d:I

    .line 311
    .line 312
    goto :goto_a

    .line 313
    :catchall_2
    move-exception p1

    .line 314
    goto :goto_b

    .line 315
    :cond_12
    :goto_a
    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>"

    .line 316
    .line 317
    invoke-static {v7, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 321
    .line 322
    .line 323
    sget-object p2, LY1/j;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 324
    .line 325
    invoke-virtual {p2, v7, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 326
    .line 327
    .line 328
    monitor-exit v9

    .line 329
    throw p1

    .line 330
    :goto_b
    monitor-exit v9

    .line 331
    throw p1

    .line 332
    :goto_c
    monitor-exit p0

    .line 333
    throw p1
.end method
