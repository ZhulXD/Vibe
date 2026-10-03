.class public final Ll1/g;
.super Li1/y;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Li1/l;Li1/y;Ljava/lang/reflect/Type;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ll1/g;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ll1/g;->b:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Ll1/g;->c:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Ll1/g;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 11

    const/4 v0, 0x2

    iput v0, p0, Ll1/g;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ll1/g;->b:Ljava/lang/Object;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ll1/g;->c:Ljava/lang/Object;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ll1/g;->d:Ljava/lang/Object;

    .line 9
    :try_start_0
    new-instance v0, Ll1/r;

    invoke-direct {v0, p1}, Ll1/r;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/reflect/Field;

    .line 10
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    const/4 v4, 0x0

    .line 11
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Enum;

    .line 12
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    .line 14
    const-class v7, Lj1/b;

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lj1/b;

    if-eqz v3, :cond_0

    .line 15
    invoke-interface {v3}, Lj1/b;->value()Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-interface {v3}, Lj1/b;->alternate()[Ljava/lang/String;

    move-result-object v3

    array-length v7, v3

    move v8, v1

    :goto_1
    if-ge v8, v7, :cond_0

    aget-object v9, v3, v8

    .line 17
    iget-object v10, p0, Ll1/g;->b:Ljava/lang/Object;

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    .line 18
    :cond_0
    iget-object v3, p0, Ll1/g;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v3, p0, Ll1/g;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v3, p0, Ll1/g;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 21
    :goto_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public constructor <init>(Ll1/c;Li1/l;Ljava/lang/reflect/Type;Li1/y;Ljava/lang/reflect/Type;Li1/y;Lk1/n;)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Ll1/g;->a:I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance p1, Ll1/g;

    invoke-direct {p1, p2, p4, p3}, Ll1/g;-><init>(Li1/l;Li1/y;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Ll1/g;->b:Ljava/lang/Object;

    .line 24
    new-instance p1, Ll1/g;

    invoke-direct {p1, p2, p6, p5}, Ll1/g;-><init>(Li1/l;Li1/y;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Ll1/g;->c:Ljava/lang/Object;

    .line 25
    iput-object p7, p0, Ll1/g;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lp1/a;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Ll1/g;->a:I

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
    invoke-virtual {p1}, Lp1/a;->t()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v0, p0, Ll1/g;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/Enum;

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Ll1/g;->c:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Ljava/lang/Enum;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move-object p1, v0

    .line 47
    :goto_0
    return-object p1

    .line 48
    :pswitch_0
    iget-object v0, p0, Ll1/g;->c:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Li1/y;

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Li1/y;->a(Lp1/a;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    return-object p1

    .line 57
    :pswitch_1
    iget-object v0, p0, Ll1/g;->c:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v0, Ll1/g;

    .line 60
    .line 61
    iget-object v0, v0, Ll1/g;->c:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Li1/y;

    .line 64
    .line 65
    iget-object v1, p0, Ll1/g;->b:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v1, Ll1/g;

    .line 68
    .line 69
    iget-object v1, v1, Ll1/g;->c:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v1, Li1/y;

    .line 72
    .line 73
    invoke-virtual {p1}, Lp1/a;->v()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    const/16 v3, 0x9

    .line 78
    .line 79
    if-ne v2, v3, :cond_2

    .line 80
    .line 81
    invoke-virtual {p1}, Lp1/a;->r()V

    .line 82
    .line 83
    .line 84
    const/4 p1, 0x0

    .line 85
    goto/16 :goto_5

    .line 86
    .line 87
    :cond_2
    iget-object v4, p0, Ll1/g;->d:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v4, Lk1/n;

    .line 90
    .line 91
    invoke-interface {v4}, Lk1/n;->n()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    check-cast v4, Ljava/util/Map;

    .line 96
    .line 97
    const/4 v5, 0x1

    .line 98
    const-string v6, "duplicate key: "

    .line 99
    .line 100
    if-ne v2, v5, :cond_5

    .line 101
    .line 102
    invoke-virtual {p1}, Lp1/a;->a()V

    .line 103
    .line 104
    .line 105
    :goto_1
    invoke-virtual {p1}, Lp1/a;->i()Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_4

    .line 110
    .line 111
    invoke-virtual {p1}, Lp1/a;->a()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, p1}, Li1/y;->a(Lp1/a;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v0, p1}, Li1/y;->a(Lp1/a;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    if-nez v3, :cond_3

    .line 127
    .line 128
    invoke-virtual {p1}, Lp1/a;->e()V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_3
    new-instance p1, Li1/p;

    .line 133
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p1

    .line 150
    :cond_4
    invoke-virtual {p1}, Lp1/a;->e()V

    .line 151
    .line 152
    .line 153
    :goto_2
    move-object p1, v4

    .line 154
    goto/16 :goto_5

    .line 155
    .line 156
    :cond_5
    invoke-virtual {p1}, Lp1/a;->b()V

    .line 157
    .line 158
    .line 159
    :goto_3
    invoke-virtual {p1}, Lp1/a;->i()Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-eqz v2, :cond_b

    .line 164
    .line 165
    sget-object v2, Lcom/google/android/material/datepicker/c;->c:Lcom/google/android/material/datepicker/c;

    .line 166
    .line 167
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    iget v2, p1, Lp1/a;->i:I

    .line 171
    .line 172
    if-nez v2, :cond_6

    .line 173
    .line 174
    invoke-virtual {p1}, Lp1/a;->d()I

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    :cond_6
    const/16 v5, 0xd

    .line 179
    .line 180
    if-ne v2, v5, :cond_7

    .line 181
    .line 182
    iput v3, p1, Lp1/a;->i:I

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_7
    const/16 v5, 0xc

    .line 186
    .line 187
    if-ne v2, v5, :cond_8

    .line 188
    .line 189
    const/16 v2, 0x8

    .line 190
    .line 191
    iput v2, p1, Lp1/a;->i:I

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_8
    const/16 v5, 0xe

    .line 195
    .line 196
    if-ne v2, v5, :cond_a

    .line 197
    .line 198
    const/16 v2, 0xa

    .line 199
    .line 200
    iput v2, p1, Lp1/a;->i:I

    .line 201
    .line 202
    :goto_4
    invoke-virtual {v1, p1}, Li1/y;->a(Lp1/a;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {v0, p1}, Li1/y;->a(Lp1/a;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    if-nez v5, :cond_9

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_9
    new-instance p1, Li1/p;

    .line 218
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw p1

    .line 235
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 236
    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    const-string v2, "Expected a name but was "

    .line 240
    .line 241
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1}, Lp1/a;->v()I

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    invoke-static {v2}, Lkotlin/collections/unsigned/a;->q(I)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1}, Lp1/a;->k()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    throw v0

    .line 270
    :cond_b
    invoke-virtual {p1}, Lp1/a;->f()V

    .line 271
    .line 272
    .line 273
    goto :goto_2

    .line 274
    :goto_5
    return-object p1

    .line 275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lp1/b;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Ll1/g;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p2, Ljava/lang/Enum;

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Ll1/g;->d:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    check-cast p2, Ljava/lang/String;

    .line 21
    .line 22
    :goto_0
    invoke-virtual {p1, p2}, Lp1/b;->o(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    iget-object v0, p0, Ll1/g;->c:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Li1/y;

    .line 29
    .line 30
    iget-object v1, p0, Ll1/g;->d:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, Ljava/lang/reflect/Type;

    .line 33
    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    instance-of v2, v1, Ljava/lang/Class;

    .line 37
    .line 38
    if-nez v2, :cond_1

    .line 39
    .line 40
    instance-of v2, v1, Ljava/lang/reflect/TypeVariable;

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    move-object v2, v1

    .line 50
    :goto_1
    if-eq v2, v1, :cond_8

    .line 51
    .line 52
    iget-object v1, p0, Ll1/g;->b:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v1, Li1/l;

    .line 55
    .line 56
    invoke-static {v2}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v1, v2}, Li1/l;->d(Lcom/google/gson/reflect/TypeToken;)Li1/y;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    instance-of v2, v1, Ll1/k;

    .line 65
    .line 66
    if-nez v2, :cond_3

    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_3
    move-object v2, v0

    .line 70
    :goto_2
    instance-of v3, v2, Li1/k;

    .line 71
    .line 72
    if-eqz v3, :cond_6

    .line 73
    .line 74
    move-object v3, v2

    .line 75
    check-cast v3, Li1/k;

    .line 76
    .line 77
    iget-object v3, v3, Li1/k;->a:Li1/y;

    .line 78
    .line 79
    if-eqz v3, :cond_5

    .line 80
    .line 81
    if-ne v3, v2, :cond_4

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_4
    move-object v2, v3

    .line 85
    goto :goto_2

    .line 86
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 87
    .line 88
    const-string p2, "Adapter for type with cyclic dependency has been used before dependency has been resolved"

    .line 89
    .line 90
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p1

    .line 94
    :cond_6
    :goto_3
    instance-of v2, v2, Ll1/k;

    .line 95
    .line 96
    if-nez v2, :cond_7

    .line 97
    .line 98
    goto :goto_5

    .line 99
    :cond_7
    :goto_4
    move-object v0, v1

    .line 100
    :cond_8
    :goto_5
    invoke-virtual {v0, p1, p2}, Li1/y;->b(Lp1/b;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :pswitch_1
    check-cast p2, Ljava/util/Map;

    .line 105
    .line 106
    iget-object v0, p0, Ll1/g;->c:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v0, Ll1/g;

    .line 109
    .line 110
    if-nez p2, :cond_9

    .line 111
    .line 112
    invoke-virtual {p1}, Lp1/b;->i()Lp1/b;

    .line 113
    .line 114
    .line 115
    goto :goto_7

    .line 116
    :cond_9
    invoke-virtual {p1}, Lp1/b;->c()V

    .line 117
    .line 118
    .line 119
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_a

    .line 132
    .line 133
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    check-cast v1, Ljava/util/Map$Entry;

    .line 138
    .line 139
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {p1, v2}, Lp1/b;->g(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v0, p1, v1}, Ll1/g;->b(Lp1/b;Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    goto :goto_6

    .line 158
    :cond_a
    invoke-virtual {p1}, Lp1/b;->f()V

    .line 159
    .line 160
    .line 161
    :goto_7
    return-void

    .line 162
    nop

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
