.class public abstract LY1/i;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final a:La2/w;

.field public static final b:La2/w;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, La2/w;

    .line 2
    .line 3
    const-string v1, "NONE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, La2/w;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, LY1/i;->a:La2/w;

    .line 10
    .line 11
    new-instance v0, La2/w;

    .line 12
    .line 13
    const-string v1, "PENDING"

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, La2/w;-><init>(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    sput-object v0, LY1/i;->b:La2/w;

    .line 19
    .line 20
    return-void
.end method

.method public static final a(LY1/c;LX1/o;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p3, LY1/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, LY1/d;

    .line 7
    .line 8
    iget v1, v0, LY1/d;->g:I

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
    iput v1, v0, LY1/d;->g:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, LY1/d;

    .line 21
    .line 22
    invoke-direct {v0, p3}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, LY1/d;->f:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, LY1/d;->g:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v2, :cond_4

    .line 37
    .line 38
    if-eq v2, v5, :cond_3

    .line 39
    .line 40
    if-ne v2, v4, :cond_2

    .line 41
    .line 42
    iget-boolean p2, v0, LY1/d;->e:Z

    .line 43
    .line 44
    iget-object p0, v0, LY1/d;->d:LX1/a;

    .line 45
    .line 46
    iget-object p1, v0, LY1/d;->c:LX1/q;

    .line 47
    .line 48
    iget-object v2, v0, LY1/d;->b:LY1/c;

    .line 49
    .line 50
    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    :cond_1
    move-object v7, v2

    .line 54
    move-object v2, p0

    .line 55
    move-object p0, v7

    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto/16 :goto_4

    .line 59
    .line 60
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 63
    .line 64
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :cond_3
    iget-boolean p2, v0, LY1/d;->e:Z

    .line 69
    .line 70
    iget-object p0, v0, LY1/d;->d:LX1/a;

    .line 71
    .line 72
    iget-object p1, v0, LY1/d;->c:LX1/q;

    .line 73
    .line 74
    iget-object v2, v0, LY1/d;->b:LY1/c;

    .line 75
    .line 76
    :try_start_1
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :try_start_2
    iget-object p3, p1, LX1/g;->e:LX1/b;

    .line 84
    .line 85
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    new-instance v2, LX1/a;

    .line 89
    .line 90
    invoke-direct {v2, p3}, LX1/a;-><init>(LX1/b;)V

    .line 91
    .line 92
    .line 93
    :goto_1
    iput-object p0, v0, LY1/d;->b:LY1/c;

    .line 94
    .line 95
    iput-object p1, v0, LY1/d;->c:LX1/q;

    .line 96
    .line 97
    iput-object v2, v0, LY1/d;->d:LX1/a;

    .line 98
    .line 99
    iput-boolean p2, v0, LY1/d;->e:Z

    .line 100
    .line 101
    iput v5, v0, LY1/d;->g:I

    .line 102
    .line 103
    invoke-virtual {v2, v0}, LX1/a;->c(LY1/d;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    if-ne p3, v1, :cond_5

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_5
    move-object v7, v2

    .line 111
    move-object v2, p0

    .line 112
    move-object p0, v7

    .line 113
    :goto_2
    check-cast p3, Ljava/lang/Boolean;

    .line 114
    .line 115
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 116
    .line 117
    .line 118
    move-result p3

    .line 119
    if-eqz p3, :cond_9

    .line 120
    .line 121
    iget-object p3, p0, LX1/a;->b:Ljava/lang/Object;

    .line 122
    .line 123
    sget-object v6, LX1/d;->p:La2/w;

    .line 124
    .line 125
    if-eq p3, v6, :cond_8

    .line 126
    .line 127
    iput-object v6, p0, LX1/a;->b:Ljava/lang/Object;

    .line 128
    .line 129
    sget-object v6, LX1/d;->l:La2/w;

    .line 130
    .line 131
    if-eq p3, v6, :cond_6

    .line 132
    .line 133
    iput-object v2, v0, LY1/d;->b:LY1/c;

    .line 134
    .line 135
    iput-object p1, v0, LY1/d;->c:LX1/q;

    .line 136
    .line 137
    iput-object p0, v0, LY1/d;->d:LX1/a;

    .line 138
    .line 139
    iput-boolean p2, v0, LY1/d;->e:Z

    .line 140
    .line 141
    iput v4, v0, LY1/d;->g:I

    .line 142
    .line 143
    invoke-interface {v2, p3, v0}, LY1/c;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p3

    .line 147
    if-ne p3, v1, :cond_1

    .line 148
    .line 149
    :goto_3
    return-object v1

    .line 150
    :cond_6
    iget-object p0, p0, LX1/a;->d:LX1/b;

    .line 151
    .line 152
    invoke-virtual {p0}, LX1/b;->l()Ljava/lang/Throwable;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    if-nez p0, :cond_7

    .line 157
    .line 158
    new-instance p0, LX1/k;

    .line 159
    .line 160
    const-string p3, "Channel was closed"

    .line 161
    .line 162
    invoke-direct {p0, p3}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :cond_7
    sget p3, La2/v;->a:I

    .line 166
    .line 167
    throw p0

    .line 168
    :cond_8
    const-string p0, "`hasNext()` has not been invoked"

    .line 169
    .line 170
    new-instance p3, Ljava/lang/IllegalStateException;

    .line 171
    .line 172
    invoke-direct {p3, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    :cond_9
    if-eqz p2, :cond_a

    .line 177
    .line 178
    invoke-interface {p1, v3}, LX1/q;->b(Ljava/util/concurrent/CancellationException;)V

    .line 179
    .line 180
    .line 181
    :cond_a
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 182
    .line 183
    return-object p0

    .line 184
    :goto_4
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 185
    :catchall_1
    move-exception p3

    .line 186
    if-eqz p2, :cond_d

    .line 187
    .line 188
    instance-of p2, p0, Ljava/util/concurrent/CancellationException;

    .line 189
    .line 190
    if-eqz p2, :cond_b

    .line 191
    .line 192
    move-object v3, p0

    .line 193
    check-cast v3, Ljava/util/concurrent/CancellationException;

    .line 194
    .line 195
    :cond_b
    if-nez v3, :cond_c

    .line 196
    .line 197
    new-instance v3, Ljava/util/concurrent/CancellationException;

    .line 198
    .line 199
    const-string p2, "Channel was consumed, consumer had failed"

    .line 200
    .line 201
    invoke-direct {v3, p2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 205
    .line 206
    .line 207
    :cond_c
    invoke-interface {p1, v3}, LX1/q;->b(Ljava/util/concurrent/CancellationException;)V

    .line 208
    .line 209
    .line 210
    :cond_d
    throw p3
.end method
