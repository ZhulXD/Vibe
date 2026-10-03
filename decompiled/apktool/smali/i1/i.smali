.class public final Li1/i;
.super Li1/y;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Li1/i;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static c(Lp1/a;I)Li1/o;
    .locals 2

    .line 1
    invoke-static {p1}, Lu/h;->a(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x5

    .line 6
    if-eq v0, v1, :cond_3

    .line 7
    .line 8
    const/4 v1, 0x6

    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    .line 11
    const/4 v1, 0x7

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lp1/a;->r()V

    .line 19
    .line 20
    .line 21
    sget-object p0, Li1/q;->b:Li1/q;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    invoke-static {p1}, Lkotlin/collections/unsigned/a;->q(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v0, "Unexpected token: "

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p0

    .line 40
    :cond_1
    new-instance p1, Li1/s;

    .line 41
    .line 42
    invoke-virtual {p0}, Lp1/a;->l()Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-direct {p1, p0}, Li1/s;-><init>(Ljava/lang/Boolean;)V

    .line 51
    .line 52
    .line 53
    return-object p1

    .line 54
    :cond_2
    invoke-virtual {p0}, Lp1/a;->t()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    new-instance p1, Li1/s;

    .line 59
    .line 60
    new-instance v0, Lk1/i;

    .line 61
    .line 62
    invoke-direct {v0, p0}, Lk1/i;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p1, v0}, Li1/s;-><init>(Ljava/lang/Number;)V

    .line 66
    .line 67
    .line 68
    return-object p1

    .line 69
    :cond_3
    new-instance p1, Li1/s;

    .line 70
    .line 71
    invoke-virtual {p0}, Lp1/a;->t()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-direct {p1, p0}, Li1/s;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-object p1
.end method

.method public static d(Li1/o;Lp1/b;)V
    .locals 3

    .line 1
    if-eqz p0, :cond_8

    .line 2
    .line 3
    instance-of v0, p0, Li1/q;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    instance-of v0, p0, Li1/s;

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    invoke-virtual {p0}, Li1/o;->e()Li1/s;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    iget-object v0, p0, Li1/s;->b:Ljava/io/Serializable;

    .line 18
    .line 19
    instance-of v1, v0, Ljava/lang/Number;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Li1/s;->g()Ljava/lang/Number;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p1, p0}, Lp1/b;->n(Ljava/lang/Number;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    instance-of v0, v0, Ljava/lang/Boolean;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Li1/s;->b()Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    invoke-virtual {p1, p0}, Lp1/b;->p(Z)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    invoke-virtual {p0}, Li1/s;->f()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p1, p0}, Lp1/b;->o(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_3
    instance-of v0, p0, Li1/n;

    .line 52
    .line 53
    if-eqz v0, :cond_5

    .line 54
    .line 55
    invoke-virtual {p1}, Lp1/b;->b()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Li1/o;->c()Li1/n;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    iget-object p0, p0, Li1/n;->b:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    const/4 v1, 0x0

    .line 69
    :goto_0
    if-ge v1, v0, :cond_4

    .line 70
    .line 71
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    add-int/lit8 v1, v1, 0x1

    .line 76
    .line 77
    check-cast v2, Li1/o;

    .line 78
    .line 79
    invoke-static {v2, p1}, Li1/i;->d(Li1/o;Lp1/b;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    invoke-virtual {p1}, Lp1/b;->e()V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_5
    instance-of v0, p0, Li1/r;

    .line 88
    .line 89
    if-eqz v0, :cond_7

    .line 90
    .line 91
    invoke-virtual {p1}, Lp1/b;->c()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Li1/o;->d()Li1/r;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    iget-object p0, p0, Li1/r;->b:Lk1/m;

    .line 99
    .line 100
    invoke-virtual {p0}, Lk1/m;->entrySet()Ljava/util/Set;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    check-cast p0, Lk1/k;

    .line 105
    .line 106
    invoke-virtual {p0}, Lk1/k;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    :goto_1
    move-object v0, p0

    .line 111
    check-cast v0, Lk1/j;

    .line 112
    .line 113
    invoke-virtual {v0}, Lk1/j;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_6

    .line 118
    .line 119
    move-object v0, p0

    .line 120
    check-cast v0, Lk1/j;

    .line 121
    .line 122
    invoke-virtual {v0}, Lk1/j;->b()Lk1/l;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    check-cast v1, Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {p1, v1}, Lp1/b;->g(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Li1/o;

    .line 140
    .line 141
    invoke-static {v0, p1}, Li1/i;->d(Li1/o;Lp1/b;)V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_6
    invoke-virtual {p1}, Lp1/b;->f()V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 150
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string v1, "Couldn\'t write "

    .line 154
    .line 155
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw p1

    .line 173
    :cond_8
    :goto_2
    invoke-virtual {p1}, Lp1/b;->i()Lp1/b;

    .line 174
    .line 175
    .line 176
    return-void
.end method


# virtual methods
.method public final a(Lp1/a;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Li1/i;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lp1/a;->v()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x9

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lp1/a;->r()V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lp1/a;->n()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :goto_0
    return-object p1

    .line 28
    :catch_0
    move-exception v0

    .line 29
    move-object p1, v0

    .line 30
    new-instance v0, Li1/p;

    .line 31
    .line 32
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :pswitch_0
    invoke-virtual {p1}, Lp1/a;->v()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/16 v1, 0x9

    .line 41
    .line 42
    if-ne v0, v1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1}, Lp1/a;->r()V

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lp1/a;->n()I

    .line 50
    .line 51
    .line 52
    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 53
    const v1, 0xffff

    .line 54
    .line 55
    .line 56
    if-gt v0, v1, :cond_2

    .line 57
    .line 58
    const/16 v1, -0x8000

    .line 59
    .line 60
    if-lt v0, v1, :cond_2

    .line 61
    .line 62
    int-to-short p1, v0

    .line 63
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    :goto_1
    return-object p1

    .line 68
    :cond_2
    new-instance v1, Li1/p;

    .line 69
    .line 70
    const-string v2, "Lossy conversion from "

    .line 71
    .line 72
    const-string v3, " to short; at path "

    .line 73
    .line 74
    invoke-static {v0, v2, v3}, LE/b;->o(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const/4 v2, 0x1

    .line 79
    invoke-virtual {p1, v2}, Lp1/a;->h(Z)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v1

    .line 94
    :catch_1
    move-exception v0

    .line 95
    move-object p1, v0

    .line 96
    new-instance v0, Li1/p;

    .line 97
    .line 98
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    throw v0

    .line 102
    :pswitch_1
    invoke-virtual {p1}, Lp1/a;->v()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    const/16 v1, 0x9

    .line 107
    .line 108
    if-ne v0, v1, :cond_3

    .line 109
    .line 110
    invoke-virtual {p1}, Lp1/a;->r()V

    .line 111
    .line 112
    .line 113
    const/4 p1, 0x0

    .line 114
    goto :goto_2

    .line 115
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Lp1/a;->n()I

    .line 116
    .line 117
    .line 118
    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 119
    const/16 v1, 0xff

    .line 120
    .line 121
    if-gt v0, v1, :cond_4

    .line 122
    .line 123
    const/16 v1, -0x80

    .line 124
    .line 125
    if-lt v0, v1, :cond_4

    .line 126
    .line 127
    int-to-byte p1, v0

    .line 128
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    :goto_2
    return-object p1

    .line 133
    :cond_4
    new-instance v1, Li1/p;

    .line 134
    .line 135
    const-string v2, "Lossy conversion from "

    .line 136
    .line 137
    const-string v3, " to byte; at path "

    .line 138
    .line 139
    invoke-static {v0, v2, v3}, LE/b;->o(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    const/4 v2, 0x1

    .line 144
    invoke-virtual {p1, v2}, Lp1/a;->h(Z)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw v1

    .line 159
    :catch_2
    move-exception v0

    .line 160
    move-object p1, v0

    .line 161
    new-instance v0, Li1/p;

    .line 162
    .line 163
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 164
    .line 165
    .line 166
    throw v0

    .line 167
    :pswitch_2
    invoke-virtual {p1}, Lp1/a;->v()I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    const/16 v1, 0x9

    .line 172
    .line 173
    if-ne v0, v1, :cond_5

    .line 174
    .line 175
    invoke-virtual {p1}, Lp1/a;->r()V

    .line 176
    .line 177
    .line 178
    const/4 p1, 0x0

    .line 179
    goto :goto_3

    .line 180
    :cond_5
    invoke-virtual {p1}, Lp1/a;->t()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    :goto_3
    return-object p1

    .line 189
    :pswitch_3
    invoke-virtual {p1}, Lp1/a;->v()I

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    const/16 v1, 0x9

    .line 194
    .line 195
    if-ne v0, v1, :cond_6

    .line 196
    .line 197
    invoke-virtual {p1}, Lp1/a;->r()V

    .line 198
    .line 199
    .line 200
    const/4 p1, 0x0

    .line 201
    goto :goto_4

    .line 202
    :cond_6
    const/4 v1, 0x6

    .line 203
    if-ne v0, v1, :cond_7

    .line 204
    .line 205
    invoke-virtual {p1}, Lp1/a;->t()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    goto :goto_4

    .line 218
    :cond_7
    invoke-virtual {p1}, Lp1/a;->l()Z

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    :goto_4
    return-object p1

    .line 227
    :pswitch_4
    new-instance v0, Ljava/util/BitSet;

    .line 228
    .line 229
    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1}, Lp1/a;->a()V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1}, Lp1/a;->v()I

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    const/4 v2, 0x0

    .line 240
    move v3, v2

    .line 241
    :goto_5
    const/4 v4, 0x2

    .line 242
    if-eq v1, v4, :cond_d

    .line 243
    .line 244
    invoke-static {v1}, Lu/h;->a(I)I

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    const/4 v5, 0x5

    .line 249
    if-eq v4, v5, :cond_9

    .line 250
    .line 251
    const/4 v5, 0x6

    .line 252
    if-eq v4, v5, :cond_9

    .line 253
    .line 254
    const/4 v5, 0x7

    .line 255
    if-ne v4, v5, :cond_8

    .line 256
    .line 257
    invoke-virtual {p1}, Lp1/a;->l()Z

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    goto :goto_6

    .line 262
    :cond_8
    new-instance v0, Li1/p;

    .line 263
    .line 264
    new-instance v3, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    const-string v4, "Invalid bitset value type: "

    .line 267
    .line 268
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-static {v1}, Lkotlin/collections/unsigned/a;->q(I)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    const-string v1, "; at path "

    .line 279
    .line 280
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {p1, v2}, Lp1/a;->h(Z)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    throw v0

    .line 298
    :cond_9
    invoke-virtual {p1}, Lp1/a;->n()I

    .line 299
    .line 300
    .line 301
    move-result v1

    .line 302
    if-nez v1, :cond_a

    .line 303
    .line 304
    move v1, v2

    .line 305
    goto :goto_6

    .line 306
    :cond_a
    const/4 v4, 0x1

    .line 307
    if-ne v1, v4, :cond_c

    .line 308
    .line 309
    move v1, v4

    .line 310
    :goto_6
    if-eqz v1, :cond_b

    .line 311
    .line 312
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 313
    .line 314
    .line 315
    :cond_b
    add-int/lit8 v3, v3, 0x1

    .line 316
    .line 317
    invoke-virtual {p1}, Lp1/a;->v()I

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    goto :goto_5

    .line 322
    :cond_c
    new-instance v0, Li1/p;

    .line 323
    .line 324
    const-string v2, "Invalid bitset value "

    .line 325
    .line 326
    const-string v3, ", expected 0 or 1; at path "

    .line 327
    .line 328
    invoke-static {v1, v2, v3}, LE/b;->o(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    invoke-virtual {p1, v4}, Lp1/a;->h(Z)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    throw v0

    .line 347
    :cond_d
    invoke-virtual {p1}, Lp1/a;->e()V

    .line 348
    .line 349
    .line 350
    return-object v0

    .line 351
    :pswitch_5
    invoke-virtual {p1}, Lp1/a;->v()I

    .line 352
    .line 353
    .line 354
    move-result v0

    .line 355
    invoke-static {v0}, Lu/h;->a(I)I

    .line 356
    .line 357
    .line 358
    move-result v1

    .line 359
    const/4 v2, 0x2

    .line 360
    const/4 v3, 0x0

    .line 361
    if-eqz v1, :cond_f

    .line 362
    .line 363
    if-eq v1, v2, :cond_e

    .line 364
    .line 365
    move-object v1, v3

    .line 366
    goto :goto_7

    .line 367
    :cond_e
    invoke-virtual {p1}, Lp1/a;->b()V

    .line 368
    .line 369
    .line 370
    new-instance v1, Li1/r;

    .line 371
    .line 372
    invoke-direct {v1}, Li1/r;-><init>()V

    .line 373
    .line 374
    .line 375
    goto :goto_7

    .line 376
    :cond_f
    invoke-virtual {p1}, Lp1/a;->a()V

    .line 377
    .line 378
    .line 379
    new-instance v1, Li1/n;

    .line 380
    .line 381
    invoke-direct {v1}, Li1/n;-><init>()V

    .line 382
    .line 383
    .line 384
    :goto_7
    if-nez v1, :cond_10

    .line 385
    .line 386
    invoke-static {p1, v0}, Li1/i;->c(Lp1/a;I)Li1/o;

    .line 387
    .line 388
    .line 389
    move-result-object p1

    .line 390
    goto/16 :goto_e

    .line 391
    .line 392
    :cond_10
    new-instance v0, Ljava/util/ArrayDeque;

    .line 393
    .line 394
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 395
    .line 396
    .line 397
    :cond_11
    :goto_8
    invoke-virtual {p1}, Lp1/a;->i()Z

    .line 398
    .line 399
    .line 400
    move-result v4

    .line 401
    if-eqz v4, :cond_18

    .line 402
    .line 403
    instance-of v4, v1, Li1/r;

    .line 404
    .line 405
    if-eqz v4, :cond_12

    .line 406
    .line 407
    invoke-virtual {p1}, Lp1/a;->p()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v4

    .line 411
    goto :goto_9

    .line 412
    :cond_12
    move-object v4, v3

    .line 413
    :goto_9
    invoke-virtual {p1}, Lp1/a;->v()I

    .line 414
    .line 415
    .line 416
    move-result v5

    .line 417
    invoke-static {v5}, Lu/h;->a(I)I

    .line 418
    .line 419
    .line 420
    move-result v6

    .line 421
    if-eqz v6, :cond_14

    .line 422
    .line 423
    if-eq v6, v2, :cond_13

    .line 424
    .line 425
    move-object v6, v3

    .line 426
    goto :goto_a

    .line 427
    :cond_13
    invoke-virtual {p1}, Lp1/a;->b()V

    .line 428
    .line 429
    .line 430
    new-instance v6, Li1/r;

    .line 431
    .line 432
    invoke-direct {v6}, Li1/r;-><init>()V

    .line 433
    .line 434
    .line 435
    goto :goto_a

    .line 436
    :cond_14
    invoke-virtual {p1}, Lp1/a;->a()V

    .line 437
    .line 438
    .line 439
    new-instance v6, Li1/n;

    .line 440
    .line 441
    invoke-direct {v6}, Li1/n;-><init>()V

    .line 442
    .line 443
    .line 444
    :goto_a
    if-eqz v6, :cond_15

    .line 445
    .line 446
    const/4 v7, 0x1

    .line 447
    goto :goto_b

    .line 448
    :cond_15
    const/4 v7, 0x0

    .line 449
    :goto_b
    if-nez v6, :cond_16

    .line 450
    .line 451
    invoke-static {p1, v5}, Li1/i;->c(Lp1/a;I)Li1/o;

    .line 452
    .line 453
    .line 454
    move-result-object v6

    .line 455
    :cond_16
    instance-of v5, v1, Li1/n;

    .line 456
    .line 457
    if-eqz v5, :cond_17

    .line 458
    .line 459
    move-object v4, v1

    .line 460
    check-cast v4, Li1/n;

    .line 461
    .line 462
    invoke-virtual {v4, v6}, Li1/n;->g(Li1/o;)V

    .line 463
    .line 464
    .line 465
    goto :goto_c

    .line 466
    :cond_17
    move-object v5, v1

    .line 467
    check-cast v5, Li1/r;

    .line 468
    .line 469
    invoke-virtual {v5, v4, v6}, Li1/r;->g(Ljava/lang/String;Li1/o;)V

    .line 470
    .line 471
    .line 472
    :goto_c
    if-eqz v7, :cond_11

    .line 473
    .line 474
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 475
    .line 476
    .line 477
    move-object v1, v6

    .line 478
    goto :goto_8

    .line 479
    :cond_18
    instance-of v4, v1, Li1/n;

    .line 480
    .line 481
    if-eqz v4, :cond_19

    .line 482
    .line 483
    invoke-virtual {p1}, Lp1/a;->e()V

    .line 484
    .line 485
    .line 486
    goto :goto_d

    .line 487
    :cond_19
    invoke-virtual {p1}, Lp1/a;->f()V

    .line 488
    .line 489
    .line 490
    :goto_d
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 491
    .line 492
    .line 493
    move-result v4

    .line 494
    if-eqz v4, :cond_1a

    .line 495
    .line 496
    move-object p1, v1

    .line 497
    :goto_e
    return-object p1

    .line 498
    :cond_1a
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    check-cast v1, Li1/o;

    .line 503
    .line 504
    goto :goto_8

    .line 505
    :pswitch_6
    invoke-virtual {p1}, Lp1/a;->v()I

    .line 506
    .line 507
    .line 508
    move-result v0

    .line 509
    const/16 v1, 0x9

    .line 510
    .line 511
    const/4 v2, 0x0

    .line 512
    if-ne v0, v1, :cond_1b

    .line 513
    .line 514
    invoke-virtual {p1}, Lp1/a;->r()V

    .line 515
    .line 516
    .line 517
    goto :goto_11

    .line 518
    :cond_1b
    invoke-virtual {p1}, Lp1/a;->t()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object p1

    .line 522
    new-instance v0, Ljava/util/StringTokenizer;

    .line 523
    .line 524
    const-string v1, "_"

    .line 525
    .line 526
    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    .line 530
    .line 531
    .line 532
    move-result p1

    .line 533
    if-eqz p1, :cond_1c

    .line 534
    .line 535
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object p1

    .line 539
    goto :goto_f

    .line 540
    :cond_1c
    move-object p1, v2

    .line 541
    :goto_f
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    .line 542
    .line 543
    .line 544
    move-result v1

    .line 545
    if-eqz v1, :cond_1d

    .line 546
    .line 547
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v1

    .line 551
    goto :goto_10

    .line 552
    :cond_1d
    move-object v1, v2

    .line 553
    :goto_10
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    .line 554
    .line 555
    .line 556
    move-result v3

    .line 557
    if-eqz v3, :cond_1e

    .line 558
    .line 559
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v2

    .line 563
    :cond_1e
    if-nez v1, :cond_1f

    .line 564
    .line 565
    if-nez v2, :cond_1f

    .line 566
    .line 567
    new-instance v2, Ljava/util/Locale;

    .line 568
    .line 569
    invoke-direct {v2, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    goto :goto_11

    .line 573
    :cond_1f
    if-nez v2, :cond_20

    .line 574
    .line 575
    new-instance v2, Ljava/util/Locale;

    .line 576
    .line 577
    invoke-direct {v2, p1, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    goto :goto_11

    .line 581
    :cond_20
    new-instance v0, Ljava/util/Locale;

    .line 582
    .line 583
    invoke-direct {v0, p1, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    .line 585
    .line 586
    move-object v2, v0

    .line 587
    :goto_11
    return-object v2

    .line 588
    :pswitch_7
    invoke-virtual {p1}, Lp1/a;->v()I

    .line 589
    .line 590
    .line 591
    move-result v0

    .line 592
    const/16 v1, 0x9

    .line 593
    .line 594
    if-ne v0, v1, :cond_21

    .line 595
    .line 596
    invoke-virtual {p1}, Lp1/a;->r()V

    .line 597
    .line 598
    .line 599
    const/4 p1, 0x0

    .line 600
    goto/16 :goto_13

    .line 601
    .line 602
    :cond_21
    invoke-virtual {p1}, Lp1/a;->b()V

    .line 603
    .line 604
    .line 605
    const/4 v0, 0x0

    .line 606
    move v2, v0

    .line 607
    move v3, v2

    .line 608
    move v4, v3

    .line 609
    move v5, v4

    .line 610
    move v6, v5

    .line 611
    move v7, v6

    .line 612
    :cond_22
    :goto_12
    invoke-virtual {p1}, Lp1/a;->v()I

    .line 613
    .line 614
    .line 615
    move-result v0

    .line 616
    const/4 v1, 0x4

    .line 617
    if-eq v0, v1, :cond_28

    .line 618
    .line 619
    invoke-virtual {p1}, Lp1/a;->p()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    invoke-virtual {p1}, Lp1/a;->n()I

    .line 624
    .line 625
    .line 626
    move-result v1

    .line 627
    const-string v8, "year"

    .line 628
    .line 629
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 630
    .line 631
    .line 632
    move-result v8

    .line 633
    if-eqz v8, :cond_23

    .line 634
    .line 635
    move v2, v1

    .line 636
    goto :goto_12

    .line 637
    :cond_23
    const-string v8, "month"

    .line 638
    .line 639
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 640
    .line 641
    .line 642
    move-result v8

    .line 643
    if-eqz v8, :cond_24

    .line 644
    .line 645
    move v3, v1

    .line 646
    goto :goto_12

    .line 647
    :cond_24
    const-string v8, "dayOfMonth"

    .line 648
    .line 649
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 650
    .line 651
    .line 652
    move-result v8

    .line 653
    if-eqz v8, :cond_25

    .line 654
    .line 655
    move v4, v1

    .line 656
    goto :goto_12

    .line 657
    :cond_25
    const-string v8, "hourOfDay"

    .line 658
    .line 659
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 660
    .line 661
    .line 662
    move-result v8

    .line 663
    if-eqz v8, :cond_26

    .line 664
    .line 665
    move v5, v1

    .line 666
    goto :goto_12

    .line 667
    :cond_26
    const-string v8, "minute"

    .line 668
    .line 669
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 670
    .line 671
    .line 672
    move-result v8

    .line 673
    if-eqz v8, :cond_27

    .line 674
    .line 675
    move v6, v1

    .line 676
    goto :goto_12

    .line 677
    :cond_27
    const-string v8, "second"

    .line 678
    .line 679
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 680
    .line 681
    .line 682
    move-result v0

    .line 683
    if-eqz v0, :cond_22

    .line 684
    .line 685
    move v7, v1

    .line 686
    goto :goto_12

    .line 687
    :cond_28
    invoke-virtual {p1}, Lp1/a;->f()V

    .line 688
    .line 689
    .line 690
    new-instance v1, Ljava/util/GregorianCalendar;

    .line 691
    .line 692
    invoke-direct/range {v1 .. v7}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 693
    .line 694
    .line 695
    move-object p1, v1

    .line 696
    :goto_13
    return-object p1

    .line 697
    :pswitch_8
    invoke-virtual {p1}, Lp1/a;->t()Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v1

    .line 701
    :try_start_3
    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    .line 702
    .line 703
    .line 704
    move-result-object p1
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 705
    return-object p1

    .line 706
    :catch_3
    move-exception v0

    .line 707
    new-instance v2, Li1/p;

    .line 708
    .line 709
    const-string v3, "Failed parsing \'"

    .line 710
    .line 711
    const-string v4, "\' as Currency; at path "

    .line 712
    .line 713
    invoke-static {v3, v1, v4}, LE/b;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    .line 715
    .line 716
    move-result-object v1

    .line 717
    const/4 v3, 0x1

    .line 718
    invoke-virtual {p1, v3}, Lp1/a;->h(Z)Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object p1

    .line 722
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    .line 724
    .line 725
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object p1

    .line 729
    invoke-direct {v2, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 730
    .line 731
    .line 732
    throw v2

    .line 733
    :pswitch_9
    invoke-virtual {p1}, Lp1/a;->v()I

    .line 734
    .line 735
    .line 736
    move-result v0

    .line 737
    const/16 v1, 0x9

    .line 738
    .line 739
    if-ne v0, v1, :cond_29

    .line 740
    .line 741
    invoke-virtual {p1}, Lp1/a;->r()V

    .line 742
    .line 743
    .line 744
    const/4 p1, 0x0

    .line 745
    goto :goto_14

    .line 746
    :cond_29
    invoke-virtual {p1}, Lp1/a;->t()Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v1

    .line 750
    :try_start_4
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 751
    .line 752
    .line 753
    move-result-object p1
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    .line 754
    :goto_14
    return-object p1

    .line 755
    :catch_4
    move-exception v0

    .line 756
    new-instance v2, Li1/p;

    .line 757
    .line 758
    const-string v3, "Failed parsing \'"

    .line 759
    .line 760
    const-string v4, "\' as UUID; at path "

    .line 761
    .line 762
    invoke-static {v3, v1, v4}, LE/b;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    .line 764
    .line 765
    move-result-object v1

    .line 766
    const/4 v3, 0x1

    .line 767
    invoke-virtual {p1, v3}, Lp1/a;->h(Z)Ljava/lang/String;

    .line 768
    .line 769
    .line 770
    move-result-object p1

    .line 771
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    .line 773
    .line 774
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    move-result-object p1

    .line 778
    invoke-direct {v2, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 779
    .line 780
    .line 781
    throw v2

    .line 782
    :pswitch_a
    invoke-virtual {p1}, Lp1/a;->v()I

    .line 783
    .line 784
    .line 785
    move-result v0

    .line 786
    const/16 v1, 0x9

    .line 787
    .line 788
    if-ne v0, v1, :cond_2a

    .line 789
    .line 790
    invoke-virtual {p1}, Lp1/a;->r()V

    .line 791
    .line 792
    .line 793
    const/4 p1, 0x0

    .line 794
    goto :goto_15

    .line 795
    :cond_2a
    invoke-virtual {p1}, Lp1/a;->t()Ljava/lang/String;

    .line 796
    .line 797
    .line 798
    move-result-object p1

    .line 799
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 800
    .line 801
    .line 802
    move-result-object p1

    .line 803
    :goto_15
    return-object p1

    .line 804
    :pswitch_b
    invoke-virtual {p1}, Lp1/a;->v()I

    .line 805
    .line 806
    .line 807
    move-result v0

    .line 808
    const/16 v1, 0x9

    .line 809
    .line 810
    const/4 v2, 0x0

    .line 811
    if-ne v0, v1, :cond_2b

    .line 812
    .line 813
    invoke-virtual {p1}, Lp1/a;->r()V

    .line 814
    .line 815
    .line 816
    goto :goto_16

    .line 817
    :cond_2b
    :try_start_5
    invoke-virtual {p1}, Lp1/a;->t()Ljava/lang/String;

    .line 818
    .line 819
    .line 820
    move-result-object p1

    .line 821
    const-string v0, "null"

    .line 822
    .line 823
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 824
    .line 825
    .line 826
    move-result v0

    .line 827
    if-eqz v0, :cond_2c

    .line 828
    .line 829
    goto :goto_16

    .line 830
    :cond_2c
    new-instance v2, Ljava/net/URI;

    .line 831
    .line 832
    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_5

    .line 833
    .line 834
    .line 835
    :goto_16
    return-object v2

    .line 836
    :catch_5
    move-exception v0

    .line 837
    move-object p1, v0

    .line 838
    new-instance v0, Li1/p;

    .line 839
    .line 840
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 841
    .line 842
    .line 843
    throw v0

    .line 844
    :pswitch_c
    invoke-virtual {p1}, Lp1/a;->v()I

    .line 845
    .line 846
    .line 847
    move-result v0

    .line 848
    const/16 v1, 0x9

    .line 849
    .line 850
    const/4 v2, 0x0

    .line 851
    if-ne v0, v1, :cond_2d

    .line 852
    .line 853
    invoke-virtual {p1}, Lp1/a;->r()V

    .line 854
    .line 855
    .line 856
    goto :goto_17

    .line 857
    :cond_2d
    invoke-virtual {p1}, Lp1/a;->t()Ljava/lang/String;

    .line 858
    .line 859
    .line 860
    move-result-object p1

    .line 861
    const-string v0, "null"

    .line 862
    .line 863
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 864
    .line 865
    .line 866
    move-result v0

    .line 867
    if-eqz v0, :cond_2e

    .line 868
    .line 869
    goto :goto_17

    .line 870
    :cond_2e
    new-instance v2, Ljava/net/URL;

    .line 871
    .line 872
    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 873
    .line 874
    .line 875
    :goto_17
    return-object v2

    .line 876
    :pswitch_d
    invoke-virtual {p1}, Lp1/a;->v()I

    .line 877
    .line 878
    .line 879
    move-result v0

    .line 880
    const/16 v1, 0x9

    .line 881
    .line 882
    if-ne v0, v1, :cond_2f

    .line 883
    .line 884
    invoke-virtual {p1}, Lp1/a;->r()V

    .line 885
    .line 886
    .line 887
    const/4 p1, 0x0

    .line 888
    goto :goto_18

    .line 889
    :cond_2f
    new-instance v0, Ljava/lang/StringBuffer;

    .line 890
    .line 891
    invoke-virtual {p1}, Lp1/a;->t()Ljava/lang/String;

    .line 892
    .line 893
    .line 894
    move-result-object p1

    .line 895
    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 896
    .line 897
    .line 898
    move-object p1, v0

    .line 899
    :goto_18
    return-object p1

    .line 900
    :pswitch_e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 901
    .line 902
    const-string v0, "Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?"

    .line 903
    .line 904
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 905
    .line 906
    .line 907
    throw p1

    .line 908
    :pswitch_f
    invoke-virtual {p1}, Lp1/a;->v()I

    .line 909
    .line 910
    .line 911
    move-result v0

    .line 912
    const/16 v1, 0x9

    .line 913
    .line 914
    if-ne v0, v1, :cond_30

    .line 915
    .line 916
    invoke-virtual {p1}, Lp1/a;->r()V

    .line 917
    .line 918
    .line 919
    const/4 p1, 0x0

    .line 920
    goto :goto_19

    .line 921
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 922
    .line 923
    invoke-virtual {p1}, Lp1/a;->t()Ljava/lang/String;

    .line 924
    .line 925
    .line 926
    move-result-object p1

    .line 927
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 928
    .line 929
    .line 930
    move-object p1, v0

    .line 931
    :goto_19
    return-object p1

    .line 932
    :pswitch_10
    invoke-virtual {p1}, Lp1/a;->v()I

    .line 933
    .line 934
    .line 935
    move-result v0

    .line 936
    const/16 v1, 0x9

    .line 937
    .line 938
    if-ne v0, v1, :cond_31

    .line 939
    .line 940
    invoke-virtual {p1}, Lp1/a;->r()V

    .line 941
    .line 942
    .line 943
    const/4 p1, 0x0

    .line 944
    goto :goto_1a

    .line 945
    :cond_31
    new-instance v0, Lk1/i;

    .line 946
    .line 947
    invoke-virtual {p1}, Lp1/a;->t()Ljava/lang/String;

    .line 948
    .line 949
    .line 950
    move-result-object p1

    .line 951
    invoke-direct {v0, p1}, Lk1/i;-><init>(Ljava/lang/String;)V

    .line 952
    .line 953
    .line 954
    move-object p1, v0

    .line 955
    :goto_1a
    return-object p1

    .line 956
    :pswitch_11
    invoke-virtual {p1}, Lp1/a;->v()I

    .line 957
    .line 958
    .line 959
    move-result v0

    .line 960
    const/16 v1, 0x9

    .line 961
    .line 962
    if-ne v0, v1, :cond_32

    .line 963
    .line 964
    invoke-virtual {p1}, Lp1/a;->r()V

    .line 965
    .line 966
    .line 967
    const/4 p1, 0x0

    .line 968
    goto :goto_1b

    .line 969
    :cond_32
    invoke-virtual {p1}, Lp1/a;->t()Ljava/lang/String;

    .line 970
    .line 971
    .line 972
    move-result-object v1

    .line 973
    :try_start_6
    new-instance v0, Ljava/math/BigInteger;

    .line 974
    .line 975
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    .line 976
    .line 977
    .line 978
    move-object p1, v0

    .line 979
    :goto_1b
    return-object p1

    .line 980
    :catch_6
    move-exception v0

    .line 981
    new-instance v2, Li1/p;

    .line 982
    .line 983
    const-string v3, "Failed parsing \'"

    .line 984
    .line 985
    const-string v4, "\' as BigInteger; at path "

    .line 986
    .line 987
    invoke-static {v3, v1, v4}, LE/b;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    .line 989
    .line 990
    move-result-object v1

    .line 991
    const/4 v3, 0x1

    .line 992
    invoke-virtual {p1, v3}, Lp1/a;->h(Z)Ljava/lang/String;

    .line 993
    .line 994
    .line 995
    move-result-object p1

    .line 996
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    .line 998
    .line 999
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1000
    .line 1001
    .line 1002
    move-result-object p1

    .line 1003
    invoke-direct {v2, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1004
    .line 1005
    .line 1006
    throw v2

    .line 1007
    :pswitch_12
    invoke-virtual {p1}, Lp1/a;->v()I

    .line 1008
    .line 1009
    .line 1010
    move-result v0

    .line 1011
    const/16 v1, 0x9

    .line 1012
    .line 1013
    if-ne v0, v1, :cond_33

    .line 1014
    .line 1015
    invoke-virtual {p1}, Lp1/a;->r()V

    .line 1016
    .line 1017
    .line 1018
    const/4 p1, 0x0

    .line 1019
    goto :goto_1c

    .line 1020
    :cond_33
    invoke-virtual {p1}, Lp1/a;->t()Ljava/lang/String;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v1

    .line 1024
    :try_start_7
    new-instance v0, Ljava/math/BigDecimal;

    .line 1025
    .line 1026
    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_7

    .line 1027
    .line 1028
    .line 1029
    move-object p1, v0

    .line 1030
    :goto_1c
    return-object p1

    .line 1031
    :catch_7
    move-exception v0

    .line 1032
    new-instance v2, Li1/p;

    .line 1033
    .line 1034
    const-string v3, "Failed parsing \'"

    .line 1035
    .line 1036
    const-string v4, "\' as BigDecimal; at path "

    .line 1037
    .line 1038
    invoke-static {v3, v1, v4}, LE/b;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v1

    .line 1042
    const/4 v3, 0x1

    .line 1043
    invoke-virtual {p1, v3}, Lp1/a;->h(Z)Ljava/lang/String;

    .line 1044
    .line 1045
    .line 1046
    move-result-object p1

    .line 1047
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1048
    .line 1049
    .line 1050
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1051
    .line 1052
    .line 1053
    move-result-object p1

    .line 1054
    invoke-direct {v2, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1055
    .line 1056
    .line 1057
    throw v2

    .line 1058
    :pswitch_13
    invoke-virtual {p1}, Lp1/a;->v()I

    .line 1059
    .line 1060
    .line 1061
    move-result v0

    .line 1062
    const/16 v1, 0x9

    .line 1063
    .line 1064
    if-ne v0, v1, :cond_34

    .line 1065
    .line 1066
    invoke-virtual {p1}, Lp1/a;->r()V

    .line 1067
    .line 1068
    .line 1069
    const/4 p1, 0x0

    .line 1070
    goto :goto_1d

    .line 1071
    :cond_34
    const/16 v1, 0x8

    .line 1072
    .line 1073
    if-ne v0, v1, :cond_35

    .line 1074
    .line 1075
    invoke-virtual {p1}, Lp1/a;->l()Z

    .line 1076
    .line 1077
    .line 1078
    move-result p1

    .line 1079
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 1080
    .line 1081
    .line 1082
    move-result-object p1

    .line 1083
    goto :goto_1d

    .line 1084
    :cond_35
    invoke-virtual {p1}, Lp1/a;->t()Ljava/lang/String;

    .line 1085
    .line 1086
    .line 1087
    move-result-object p1

    .line 1088
    :goto_1d
    return-object p1

    .line 1089
    :pswitch_14
    invoke-virtual {p1}, Lp1/a;->v()I

    .line 1090
    .line 1091
    .line 1092
    move-result v0

    .line 1093
    const/16 v1, 0x9

    .line 1094
    .line 1095
    if-ne v0, v1, :cond_36

    .line 1096
    .line 1097
    invoke-virtual {p1}, Lp1/a;->r()V

    .line 1098
    .line 1099
    .line 1100
    const/4 p1, 0x0

    .line 1101
    goto :goto_1e

    .line 1102
    :cond_36
    invoke-virtual {p1}, Lp1/a;->t()Ljava/lang/String;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v0

    .line 1106
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1107
    .line 1108
    .line 1109
    move-result v1

    .line 1110
    const/4 v2, 0x1

    .line 1111
    if-ne v1, v2, :cond_37

    .line 1112
    .line 1113
    const/4 p1, 0x0

    .line 1114
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    .line 1115
    .line 1116
    .line 1117
    move-result p1

    .line 1118
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 1119
    .line 1120
    .line 1121
    move-result-object p1

    .line 1122
    :goto_1e
    return-object p1

    .line 1123
    :cond_37
    new-instance v1, Li1/p;

    .line 1124
    .line 1125
    const-string v3, "Expecting character, got: "

    .line 1126
    .line 1127
    const-string v4, "; at "

    .line 1128
    .line 1129
    invoke-static {v3, v0, v4}, LE/b;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v0

    .line 1133
    invoke-virtual {p1, v2}, Lp1/a;->h(Z)Ljava/lang/String;

    .line 1134
    .line 1135
    .line 1136
    move-result-object p1

    .line 1137
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1138
    .line 1139
    .line 1140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1141
    .line 1142
    .line 1143
    move-result-object p1

    .line 1144
    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1145
    .line 1146
    .line 1147
    throw v1

    .line 1148
    :pswitch_15
    invoke-virtual {p1}, Lp1/a;->v()I

    .line 1149
    .line 1150
    .line 1151
    move-result v0

    .line 1152
    const/16 v1, 0x9

    .line 1153
    .line 1154
    if-ne v0, v1, :cond_38

    .line 1155
    .line 1156
    invoke-virtual {p1}, Lp1/a;->r()V

    .line 1157
    .line 1158
    .line 1159
    const/4 p1, 0x0

    .line 1160
    goto :goto_1f

    .line 1161
    :cond_38
    invoke-virtual {p1}, Lp1/a;->m()D

    .line 1162
    .line 1163
    .line 1164
    move-result-wide v0

    .line 1165
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1166
    .line 1167
    .line 1168
    move-result-object p1

    .line 1169
    :goto_1f
    return-object p1

    .line 1170
    :pswitch_16
    invoke-virtual {p1}, Lp1/a;->v()I

    .line 1171
    .line 1172
    .line 1173
    move-result v0

    .line 1174
    const/16 v1, 0x9

    .line 1175
    .line 1176
    if-ne v0, v1, :cond_39

    .line 1177
    .line 1178
    invoke-virtual {p1}, Lp1/a;->r()V

    .line 1179
    .line 1180
    .line 1181
    const/4 p1, 0x0

    .line 1182
    goto :goto_20

    .line 1183
    :cond_39
    invoke-virtual {p1}, Lp1/a;->m()D

    .line 1184
    .line 1185
    .line 1186
    move-result-wide v0

    .line 1187
    double-to-float p1, v0

    .line 1188
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1189
    .line 1190
    .line 1191
    move-result-object p1

    .line 1192
    :goto_20
    return-object p1

    .line 1193
    :pswitch_17
    invoke-virtual {p1}, Lp1/a;->v()I

    .line 1194
    .line 1195
    .line 1196
    move-result v0

    .line 1197
    const/16 v1, 0x9

    .line 1198
    .line 1199
    if-ne v0, v1, :cond_3a

    .line 1200
    .line 1201
    invoke-virtual {p1}, Lp1/a;->r()V

    .line 1202
    .line 1203
    .line 1204
    const/4 p1, 0x0

    .line 1205
    goto :goto_21

    .line 1206
    :cond_3a
    :try_start_8
    invoke-virtual {p1}, Lp1/a;->o()J

    .line 1207
    .line 1208
    .line 1209
    move-result-wide v0

    .line 1210
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1211
    .line 1212
    .line 1213
    move-result-object p1
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_8

    .line 1214
    :goto_21
    return-object p1

    .line 1215
    :catch_8
    move-exception v0

    .line 1216
    move-object p1, v0

    .line 1217
    new-instance v0, Li1/p;

    .line 1218
    .line 1219
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 1220
    .line 1221
    .line 1222
    throw v0

    .line 1223
    :pswitch_18
    new-instance v0, Ljava/util/ArrayList;

    .line 1224
    .line 1225
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1226
    .line 1227
    .line 1228
    invoke-virtual {p1}, Lp1/a;->a()V

    .line 1229
    .line 1230
    .line 1231
    :goto_22
    invoke-virtual {p1}, Lp1/a;->i()Z

    .line 1232
    .line 1233
    .line 1234
    move-result v1

    .line 1235
    if-eqz v1, :cond_3b

    .line 1236
    .line 1237
    :try_start_9
    invoke-virtual {p1}, Lp1/a;->n()I

    .line 1238
    .line 1239
    .line 1240
    move-result v1

    .line 1241
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v1

    .line 1245
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_9

    .line 1246
    .line 1247
    .line 1248
    goto :goto_22

    .line 1249
    :catch_9
    move-exception v0

    .line 1250
    move-object p1, v0

    .line 1251
    new-instance v0, Li1/p;

    .line 1252
    .line 1253
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 1254
    .line 1255
    .line 1256
    throw v0

    .line 1257
    :cond_3b
    invoke-virtual {p1}, Lp1/a;->e()V

    .line 1258
    .line 1259
    .line 1260
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1261
    .line 1262
    .line 1263
    move-result p1

    .line 1264
    new-instance v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 1265
    .line 1266
    invoke-direct {v1, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>(I)V

    .line 1267
    .line 1268
    .line 1269
    const/4 v2, 0x0

    .line 1270
    :goto_23
    if-ge v2, p1, :cond_3c

    .line 1271
    .line 1272
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v3

    .line 1276
    check-cast v3, Ljava/lang/Integer;

    .line 1277
    .line 1278
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1279
    .line 1280
    .line 1281
    move-result v3

    .line 1282
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->set(II)V

    .line 1283
    .line 1284
    .line 1285
    add-int/lit8 v2, v2, 0x1

    .line 1286
    .line 1287
    goto :goto_23

    .line 1288
    :cond_3c
    return-object v1

    .line 1289
    :pswitch_19
    invoke-virtual {p1}, Lp1/a;->v()I

    .line 1290
    .line 1291
    .line 1292
    move-result v0

    .line 1293
    const/16 v1, 0x9

    .line 1294
    .line 1295
    if-ne v0, v1, :cond_3d

    .line 1296
    .line 1297
    invoke-virtual {p1}, Lp1/a;->r()V

    .line 1298
    .line 1299
    .line 1300
    const/4 p1, 0x0

    .line 1301
    goto :goto_24

    .line 1302
    :cond_3d
    invoke-virtual {p1}, Lp1/a;->o()J

    .line 1303
    .line 1304
    .line 1305
    move-result-wide v0

    .line 1306
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1307
    .line 1308
    .line 1309
    move-result-object p1

    .line 1310
    :goto_24
    return-object p1

    .line 1311
    :pswitch_1a
    invoke-virtual {p1}, Lp1/a;->v()I

    .line 1312
    .line 1313
    .line 1314
    move-result v0

    .line 1315
    const/16 v1, 0x9

    .line 1316
    .line 1317
    if-ne v0, v1, :cond_3e

    .line 1318
    .line 1319
    invoke-virtual {p1}, Lp1/a;->r()V

    .line 1320
    .line 1321
    .line 1322
    const/4 p1, 0x0

    .line 1323
    goto :goto_25

    .line 1324
    :cond_3e
    invoke-virtual {p1}, Lp1/a;->m()D

    .line 1325
    .line 1326
    .line 1327
    move-result-wide v0

    .line 1328
    double-to-float p1, v0

    .line 1329
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1330
    .line 1331
    .line 1332
    move-result-object p1

    .line 1333
    :goto_25
    return-object p1

    .line 1334
    :pswitch_1b
    invoke-virtual {p1}, Lp1/a;->v()I

    .line 1335
    .line 1336
    .line 1337
    move-result v0

    .line 1338
    const/16 v1, 0x9

    .line 1339
    .line 1340
    if-ne v0, v1, :cond_3f

    .line 1341
    .line 1342
    invoke-virtual {p1}, Lp1/a;->r()V

    .line 1343
    .line 1344
    .line 1345
    const/4 p1, 0x0

    .line 1346
    goto :goto_26

    .line 1347
    :cond_3f
    invoke-virtual {p1}, Lp1/a;->m()D

    .line 1348
    .line 1349
    .line 1350
    move-result-wide v0

    .line 1351
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1352
    .line 1353
    .line 1354
    move-result-object p1

    .line 1355
    :goto_26
    return-object p1

    .line 1356
    nop

    .line 1357
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lp1/b;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Li1/i;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p2, Ljava/lang/Number;

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lp1/b;->i()Lp1/b;

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    int-to-long v0, p2

    .line 19
    invoke-virtual {p1, v0, v1}, Lp1/b;->m(J)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :pswitch_0
    check-cast p2, Ljava/lang/Number;

    .line 24
    .line 25
    if-nez p2, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1}, Lp1/b;->i()Lp1/b;

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Number;->shortValue()S

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    int-to-long v0, p2

    .line 36
    invoke-virtual {p1, v0, v1}, Lp1/b;->m(J)V

    .line 37
    .line 38
    .line 39
    :goto_1
    return-void

    .line 40
    :pswitch_1
    check-cast p2, Ljava/lang/Number;

    .line 41
    .line 42
    if-nez p2, :cond_2

    .line 43
    .line 44
    invoke-virtual {p1}, Lp1/b;->i()Lp1/b;

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Number;->byteValue()B

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    int-to-long v0, p2

    .line 53
    invoke-virtual {p1, v0, v1}, Lp1/b;->m(J)V

    .line 54
    .line 55
    .line 56
    :goto_2
    return-void

    .line 57
    :pswitch_2
    check-cast p2, Ljava/lang/Boolean;

    .line 58
    .line 59
    if-nez p2, :cond_3

    .line 60
    .line 61
    const-string p2, "null"

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    :goto_3
    invoke-virtual {p1, p2}, Lp1/b;->o(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :pswitch_3
    check-cast p2, Ljava/lang/Boolean;

    .line 73
    .line 74
    if-nez p2, :cond_4

    .line 75
    .line 76
    invoke-virtual {p1}, Lp1/b;->i()Lp1/b;

    .line 77
    .line 78
    .line 79
    goto :goto_5

    .line 80
    :cond_4
    invoke-virtual {p1}, Lp1/b;->q()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lp1/b;->a()V

    .line 84
    .line 85
    .line 86
    iget-object p1, p1, Lp1/b;->b:Ljava/io/Writer;

    .line 87
    .line 88
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    if-eqz p2, :cond_5

    .line 93
    .line 94
    const-string p2, "true"

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_5
    const-string p2, "false"

    .line 98
    .line 99
    :goto_4
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :goto_5
    return-void

    .line 103
    :pswitch_4
    check-cast p2, Ljava/util/BitSet;

    .line 104
    .line 105
    invoke-virtual {p1}, Lp1/b;->b()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2}, Ljava/util/BitSet;->length()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    const/4 v1, 0x0

    .line 113
    :goto_6
    if-ge v1, v0, :cond_6

    .line 114
    .line 115
    invoke-virtual {p2, v1}, Ljava/util/BitSet;->get(I)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    int-to-long v2, v2

    .line 120
    invoke-virtual {p1, v2, v3}, Lp1/b;->m(J)V

    .line 121
    .line 122
    .line 123
    add-int/lit8 v1, v1, 0x1

    .line 124
    .line 125
    goto :goto_6

    .line 126
    :cond_6
    invoke-virtual {p1}, Lp1/b;->e()V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :pswitch_5
    check-cast p2, Li1/o;

    .line 131
    .line 132
    invoke-static {p2, p1}, Li1/i;->d(Li1/o;Lp1/b;)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :pswitch_6
    check-cast p2, Ljava/util/Locale;

    .line 137
    .line 138
    if-nez p2, :cond_7

    .line 139
    .line 140
    const/4 p2, 0x0

    .line 141
    goto :goto_7

    .line 142
    :cond_7
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    :goto_7
    invoke-virtual {p1, p2}, Lp1/b;->o(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :pswitch_7
    check-cast p2, Ljava/util/Calendar;

    .line 151
    .line 152
    if-nez p2, :cond_8

    .line 153
    .line 154
    invoke-virtual {p1}, Lp1/b;->i()Lp1/b;

    .line 155
    .line 156
    .line 157
    goto :goto_8

    .line 158
    :cond_8
    invoke-virtual {p1}, Lp1/b;->c()V

    .line 159
    .line 160
    .line 161
    const-string v0, "year"

    .line 162
    .line 163
    invoke-virtual {p1, v0}, Lp1/b;->g(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    const/4 v0, 0x1

    .line 167
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    int-to-long v0, v0

    .line 172
    invoke-virtual {p1, v0, v1}, Lp1/b;->m(J)V

    .line 173
    .line 174
    .line 175
    const-string v0, "month"

    .line 176
    .line 177
    invoke-virtual {p1, v0}, Lp1/b;->g(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    const/4 v0, 0x2

    .line 181
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    int-to-long v0, v0

    .line 186
    invoke-virtual {p1, v0, v1}, Lp1/b;->m(J)V

    .line 187
    .line 188
    .line 189
    const-string v0, "dayOfMonth"

    .line 190
    .line 191
    invoke-virtual {p1, v0}, Lp1/b;->g(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    const/4 v0, 0x5

    .line 195
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    int-to-long v0, v0

    .line 200
    invoke-virtual {p1, v0, v1}, Lp1/b;->m(J)V

    .line 201
    .line 202
    .line 203
    const-string v0, "hourOfDay"

    .line 204
    .line 205
    invoke-virtual {p1, v0}, Lp1/b;->g(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    const/16 v0, 0xb

    .line 209
    .line 210
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    int-to-long v0, v0

    .line 215
    invoke-virtual {p1, v0, v1}, Lp1/b;->m(J)V

    .line 216
    .line 217
    .line 218
    const-string v0, "minute"

    .line 219
    .line 220
    invoke-virtual {p1, v0}, Lp1/b;->g(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    const/16 v0, 0xc

    .line 224
    .line 225
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    int-to-long v0, v0

    .line 230
    invoke-virtual {p1, v0, v1}, Lp1/b;->m(J)V

    .line 231
    .line 232
    .line 233
    const-string v0, "second"

    .line 234
    .line 235
    invoke-virtual {p1, v0}, Lp1/b;->g(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    const/16 v0, 0xd

    .line 239
    .line 240
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 241
    .line 242
    .line 243
    move-result p2

    .line 244
    int-to-long v0, p2

    .line 245
    invoke-virtual {p1, v0, v1}, Lp1/b;->m(J)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1}, Lp1/b;->f()V

    .line 249
    .line 250
    .line 251
    :goto_8
    return-void

    .line 252
    :pswitch_8
    check-cast p2, Ljava/util/Currency;

    .line 253
    .line 254
    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p2

    .line 258
    invoke-virtual {p1, p2}, Lp1/b;->o(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    return-void

    .line 262
    :pswitch_9
    check-cast p2, Ljava/util/UUID;

    .line 263
    .line 264
    if-nez p2, :cond_9

    .line 265
    .line 266
    const/4 p2, 0x0

    .line 267
    goto :goto_9

    .line 268
    :cond_9
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p2

    .line 272
    :goto_9
    invoke-virtual {p1, p2}, Lp1/b;->o(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    return-void

    .line 276
    :pswitch_a
    check-cast p2, Ljava/net/InetAddress;

    .line 277
    .line 278
    if-nez p2, :cond_a

    .line 279
    .line 280
    const/4 p2, 0x0

    .line 281
    goto :goto_a

    .line 282
    :cond_a
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p2

    .line 286
    :goto_a
    invoke-virtual {p1, p2}, Lp1/b;->o(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    return-void

    .line 290
    :pswitch_b
    check-cast p2, Ljava/net/URI;

    .line 291
    .line 292
    if-nez p2, :cond_b

    .line 293
    .line 294
    const/4 p2, 0x0

    .line 295
    goto :goto_b

    .line 296
    :cond_b
    invoke-virtual {p2}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p2

    .line 300
    :goto_b
    invoke-virtual {p1, p2}, Lp1/b;->o(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    return-void

    .line 304
    :pswitch_c
    check-cast p2, Ljava/net/URL;

    .line 305
    .line 306
    if-nez p2, :cond_c

    .line 307
    .line 308
    const/4 p2, 0x0

    .line 309
    goto :goto_c

    .line 310
    :cond_c
    invoke-virtual {p2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object p2

    .line 314
    :goto_c
    invoke-virtual {p1, p2}, Lp1/b;->o(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    return-void

    .line 318
    :pswitch_d
    check-cast p2, Ljava/lang/StringBuffer;

    .line 319
    .line 320
    if-nez p2, :cond_d

    .line 321
    .line 322
    const/4 p2, 0x0

    .line 323
    goto :goto_d

    .line 324
    :cond_d
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object p2

    .line 328
    :goto_d
    invoke-virtual {p1, p2}, Lp1/b;->o(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    return-void

    .line 332
    :pswitch_e
    check-cast p2, Ljava/lang/Class;

    .line 333
    .line 334
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 335
    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    .line 337
    .line 338
    const-string v1, "Attempted to serialize java.lang.Class: "

    .line 339
    .line 340
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object p2

    .line 347
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    const-string p2, ". Forgot to register a type adapter?"

    .line 351
    .line 352
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object p2

    .line 359
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    throw p1

    .line 363
    :pswitch_f
    check-cast p2, Ljava/lang/StringBuilder;

    .line 364
    .line 365
    if-nez p2, :cond_e

    .line 366
    .line 367
    const/4 p2, 0x0

    .line 368
    goto :goto_e

    .line 369
    :cond_e
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object p2

    .line 373
    :goto_e
    invoke-virtual {p1, p2}, Lp1/b;->o(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    return-void

    .line 377
    :pswitch_10
    check-cast p2, Lk1/i;

    .line 378
    .line 379
    invoke-virtual {p1, p2}, Lp1/b;->n(Ljava/lang/Number;)V

    .line 380
    .line 381
    .line 382
    return-void

    .line 383
    :pswitch_11
    check-cast p2, Ljava/math/BigInteger;

    .line 384
    .line 385
    invoke-virtual {p1, p2}, Lp1/b;->n(Ljava/lang/Number;)V

    .line 386
    .line 387
    .line 388
    return-void

    .line 389
    :pswitch_12
    check-cast p2, Ljava/math/BigDecimal;

    .line 390
    .line 391
    invoke-virtual {p1, p2}, Lp1/b;->n(Ljava/lang/Number;)V

    .line 392
    .line 393
    .line 394
    return-void

    .line 395
    :pswitch_13
    check-cast p2, Ljava/lang/String;

    .line 396
    .line 397
    invoke-virtual {p1, p2}, Lp1/b;->o(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    return-void

    .line 401
    :pswitch_14
    check-cast p2, Ljava/lang/Character;

    .line 402
    .line 403
    if-nez p2, :cond_f

    .line 404
    .line 405
    const/4 p2, 0x0

    .line 406
    goto :goto_f

    .line 407
    :cond_f
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object p2

    .line 411
    :goto_f
    invoke-virtual {p1, p2}, Lp1/b;->o(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    return-void

    .line 415
    :pswitch_15
    check-cast p2, Ljava/lang/Number;

    .line 416
    .line 417
    if-nez p2, :cond_10

    .line 418
    .line 419
    invoke-virtual {p1}, Lp1/b;->i()Lp1/b;

    .line 420
    .line 421
    .line 422
    goto :goto_10

    .line 423
    :cond_10
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    .line 424
    .line 425
    .line 426
    move-result-wide v0

    .line 427
    invoke-virtual {p1, v0, v1}, Lp1/b;->l(D)V

    .line 428
    .line 429
    .line 430
    :goto_10
    return-void

    .line 431
    :pswitch_16
    check-cast p2, Ljava/lang/Number;

    .line 432
    .line 433
    if-nez p2, :cond_11

    .line 434
    .line 435
    invoke-virtual {p1}, Lp1/b;->i()Lp1/b;

    .line 436
    .line 437
    .line 438
    goto :goto_12

    .line 439
    :cond_11
    instance-of v0, p2, Ljava/lang/Float;

    .line 440
    .line 441
    if-eqz v0, :cond_12

    .line 442
    .line 443
    goto :goto_11

    .line 444
    :cond_12
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 445
    .line 446
    .line 447
    move-result p2

    .line 448
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 449
    .line 450
    .line 451
    move-result-object p2

    .line 452
    :goto_11
    invoke-virtual {p1, p2}, Lp1/b;->n(Ljava/lang/Number;)V

    .line 453
    .line 454
    .line 455
    :goto_12
    return-void

    .line 456
    :pswitch_17
    check-cast p2, Ljava/lang/Number;

    .line 457
    .line 458
    if-nez p2, :cond_13

    .line 459
    .line 460
    invoke-virtual {p1}, Lp1/b;->i()Lp1/b;

    .line 461
    .line 462
    .line 463
    goto :goto_13

    .line 464
    :cond_13
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    .line 465
    .line 466
    .line 467
    move-result-wide v0

    .line 468
    invoke-virtual {p1, v0, v1}, Lp1/b;->m(J)V

    .line 469
    .line 470
    .line 471
    :goto_13
    return-void

    .line 472
    :pswitch_18
    check-cast p2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 473
    .line 474
    invoke-virtual {p1}, Lp1/b;->b()V

    .line 475
    .line 476
    .line 477
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->length()I

    .line 478
    .line 479
    .line 480
    move-result v0

    .line 481
    const/4 v1, 0x0

    .line 482
    :goto_14
    if-ge v1, v0, :cond_14

    .line 483
    .line 484
    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    .line 485
    .line 486
    .line 487
    move-result v2

    .line 488
    int-to-long v2, v2

    .line 489
    invoke-virtual {p1, v2, v3}, Lp1/b;->m(J)V

    .line 490
    .line 491
    .line 492
    add-int/lit8 v1, v1, 0x1

    .line 493
    .line 494
    goto :goto_14

    .line 495
    :cond_14
    invoke-virtual {p1}, Lp1/b;->e()V

    .line 496
    .line 497
    .line 498
    return-void

    .line 499
    :pswitch_19
    check-cast p2, Ljava/lang/Number;

    .line 500
    .line 501
    if-nez p2, :cond_15

    .line 502
    .line 503
    invoke-virtual {p1}, Lp1/b;->i()Lp1/b;

    .line 504
    .line 505
    .line 506
    goto :goto_15

    .line 507
    :cond_15
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object p2

    .line 511
    invoke-virtual {p1, p2}, Lp1/b;->o(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    :goto_15
    return-void

    .line 515
    :pswitch_1a
    check-cast p2, Ljava/lang/Number;

    .line 516
    .line 517
    if-nez p2, :cond_16

    .line 518
    .line 519
    invoke-virtual {p1}, Lp1/b;->i()Lp1/b;

    .line 520
    .line 521
    .line 522
    goto :goto_17

    .line 523
    :cond_16
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 524
    .line 525
    .line 526
    move-result v0

    .line 527
    float-to-double v1, v0

    .line 528
    invoke-static {v1, v2}, Li1/l;->a(D)V

    .line 529
    .line 530
    .line 531
    instance-of v1, p2, Ljava/lang/Float;

    .line 532
    .line 533
    if-eqz v1, :cond_17

    .line 534
    .line 535
    goto :goto_16

    .line 536
    :cond_17
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 537
    .line 538
    .line 539
    move-result-object p2

    .line 540
    :goto_16
    invoke-virtual {p1, p2}, Lp1/b;->n(Ljava/lang/Number;)V

    .line 541
    .line 542
    .line 543
    :goto_17
    return-void

    .line 544
    :pswitch_1b
    check-cast p2, Ljava/lang/Number;

    .line 545
    .line 546
    if-nez p2, :cond_18

    .line 547
    .line 548
    invoke-virtual {p1}, Lp1/b;->i()Lp1/b;

    .line 549
    .line 550
    .line 551
    goto :goto_18

    .line 552
    :cond_18
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    .line 553
    .line 554
    .line 555
    move-result-wide v0

    .line 556
    invoke-static {v0, v1}, Li1/l;->a(D)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {p1, v0, v1}, Lp1/b;->l(D)V

    .line 560
    .line 561
    .line 562
    :goto_18
    return-void

    .line 563
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
