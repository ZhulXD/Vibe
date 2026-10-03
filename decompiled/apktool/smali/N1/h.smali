.class public final synthetic LN1/h;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:LN1/i;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(LN1/i;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LN1/h;->b:LN1/i;

    .line 5
    .line 6
    iput-object p2, p0, LN1/h;->c:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p3, p0, LN1/h;->d:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, LN1/h;->b:LN1/i;

    .line 2
    .line 3
    invoke-virtual {v0}, LN1/i;->g()LN1/q;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v3, v1, LN1/q;->a:LN1/r;

    .line 8
    .line 9
    iget-object v2, v1, LN1/q;->d:Ljava/lang/String;

    .line 10
    .line 11
    if-nez v2, :cond_8

    .line 12
    .line 13
    iget-object v1, v3, LN1/r;->f:Ljava/util/Map;

    .line 14
    .line 15
    iget-object v2, p0, LN1/h;->c:Ljava/lang/String;

    .line 16
    .line 17
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    move-object v6, v1

    .line 22
    check-cast v6, LN1/f;

    .line 23
    .line 24
    const-string v8, "message"

    .line 25
    .line 26
    const-string v9, "state"

    .line 27
    .line 28
    if-nez v6, :cond_0

    .line 29
    .line 30
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v6, "unknown artifact"

    .line 34
    .line 35
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance v2, LN1/q;

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    const/4 v7, 0x6

    .line 42
    const/4 v4, 0x0

    .line 43
    invoke-direct/range {v2 .. v7}, LN1/q;-><init>(LN1/r;LN1/f;[BLjava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    return-object v2

    .line 47
    :cond_0
    iget-object v1, v6, LN1/f;->e:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v4, v3, LN1/r;->d:Ljava/util/Set;

    .line 50
    .line 51
    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_1

    .line 56
    .line 57
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v6, "artifact revoked"

    .line 61
    .line 62
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance v2, LN1/q;

    .line 66
    .line 67
    const/4 v5, 0x0

    .line 68
    const/4 v7, 0x6

    .line 69
    const/4 v4, 0x0

    .line 70
    invoke-direct/range {v2 .. v7}, LN1/q;-><init>(LN1/r;LN1/f;[BLjava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    return-object v2

    .line 74
    :cond_1
    invoke-static {v2}, LN1/i;->p(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_7

    .line 79
    .line 80
    iget-object v2, v6, LN1/f;->a:Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {v2, v1}, LN1/i;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-nez v2, :cond_2

    .line 87
    .line 88
    goto/16 :goto_2

    .line 89
    .line 90
    :cond_2
    move-object v2, v1

    .line 91
    new-instance v1, Ljava/io/File;

    .line 92
    .line 93
    iget-object v4, v0, LN1/i;->a:Ljava/io/File;

    .line 94
    .line 95
    invoke-direct {v1, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, LN1/i;->j(Ljava/io/File;)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-nez v2, :cond_3

    .line 103
    .line 104
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const-string v6, "unsafe artifact path"

    .line 108
    .line 109
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    new-instance v2, LN1/q;

    .line 113
    .line 114
    const/4 v5, 0x0

    .line 115
    const/4 v7, 0x6

    .line 116
    const/4 v4, 0x0

    .line 117
    invoke-direct/range {v2 .. v7}, LN1/q;-><init>(LN1/r;LN1/f;[BLjava/lang/String;I)V

    .line 118
    .line 119
    .line 120
    return-object v2

    .line 121
    :cond_3
    move-object v7, v3

    .line 122
    iget-wide v2, v6, LN1/f;->c:J

    .line 123
    .line 124
    const-wide/16 v4, 0x0

    .line 125
    .line 126
    cmp-long v4, v2, v4

    .line 127
    .line 128
    if-ltz v4, :cond_4

    .line 129
    .line 130
    iget-wide v4, p0, LN1/h;->d:J

    .line 131
    .line 132
    cmp-long v10, v2, v4

    .line 133
    .line 134
    if-gtz v10, :cond_4

    .line 135
    .line 136
    iget-wide v10, v0, LN1/i;->b:J

    .line 137
    .line 138
    cmp-long v10, v2, v10

    .line 139
    .line 140
    if-lez v10, :cond_5

    .line 141
    .line 142
    :cond_4
    move-object v3, v7

    .line 143
    goto :goto_1

    .line 144
    :cond_5
    :try_start_0
    invoke-virtual/range {v0 .. v5}, LN1/i;->c(Ljava/io/File;JJ)[B

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-static {v5}, LN1/i;->m([B)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    iget-object v1, v6, LN1/f;->d:Ljava/lang/String;

    .line 153
    .line 154
    const/4 v2, 0x1

    .line 155
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-nez v0, :cond_6

    .line 160
    .line 161
    const-string v6, "artifact hash mismatch"

    .line 162
    .line 163
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    new-instance v2, LN1/q;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .line 171
    const/4 v5, 0x0

    .line 172
    move-object v3, v7

    .line 173
    const/4 v7, 0x6

    .line 174
    const/4 v4, 0x0

    .line 175
    :try_start_1
    invoke-direct/range {v2 .. v7}, LN1/q;-><init>(LN1/r;LN1/f;[BLjava/lang/String;I)V

    .line 176
    .line 177
    .line 178
    return-object v2

    .line 179
    :catch_0
    move-object v3, v7

    .line 180
    goto :goto_0

    .line 181
    :cond_6
    move-object v3, v7

    .line 182
    new-instance v2, LN1/q;

    .line 183
    .line 184
    move-object v4, v6

    .line 185
    const/4 v6, 0x0

    .line 186
    const/16 v7, 0x8

    .line 187
    .line 188
    invoke-direct/range {v2 .. v7}, LN1/q;-><init>(LN1/r;LN1/f;[BLjava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 189
    .line 190
    .line 191
    return-object v2

    .line 192
    :catch_1
    :goto_0
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    const-string v6, "artifact unreadable"

    .line 196
    .line 197
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    new-instance v2, LN1/q;

    .line 201
    .line 202
    const/4 v5, 0x0

    .line 203
    const/4 v7, 0x6

    .line 204
    const/4 v4, 0x0

    .line 205
    invoke-direct/range {v2 .. v7}, LN1/q;-><init>(LN1/r;LN1/f;[BLjava/lang/String;I)V

    .line 206
    .line 207
    .line 208
    return-object v2

    .line 209
    :goto_1
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    const-string v6, "artifact too large"

    .line 213
    .line 214
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    new-instance v2, LN1/q;

    .line 218
    .line 219
    const/4 v5, 0x0

    .line 220
    const/4 v7, 0x6

    .line 221
    const/4 v4, 0x0

    .line 222
    invoke-direct/range {v2 .. v7}, LN1/q;-><init>(LN1/r;LN1/f;[BLjava/lang/String;I)V

    .line 223
    .line 224
    .line 225
    return-object v2

    .line 226
    :cond_7
    :goto_2
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    const-string v6, "unsafe artifact path"

    .line 230
    .line 231
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    new-instance v2, LN1/q;

    .line 235
    .line 236
    const/4 v5, 0x0

    .line 237
    const/4 v7, 0x6

    .line 238
    const/4 v4, 0x0

    .line 239
    invoke-direct/range {v2 .. v7}, LN1/q;-><init>(LN1/r;LN1/f;[BLjava/lang/String;I)V

    .line 240
    .line 241
    .line 242
    return-object v2

    .line 243
    :cond_8
    return-object v1
.end method
