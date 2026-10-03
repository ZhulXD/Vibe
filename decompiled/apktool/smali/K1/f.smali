.class public final LK1/f;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:LA1/d;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:LK1/i;

.field public final h:LK1/g;

.field public final i:Ljava/util/List;

.field public final j:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;LK1/g;)V
    .locals 6

    .line 1
    new-instance v0, LA1/d;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, LA1/d;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sget-object v2, LK1/i;->b:LK1/i;

    .line 12
    .line 13
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const-string v4, "id"

    .line 18
    .line 19
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v4, "engine"

    .line 23
    .line 24
    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v4, "match"

    .line 28
    .line 29
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v4, "appliesToCore"

    .line 33
    .line 34
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v4, "url"

    .line 38
    .line 39
    const-string v5, "https://dry-run.invalid/non-downloadable"

    .line 40
    .line 41
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v4, "sha256"

    .line 45
    .line 46
    invoke-static {p4, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v4, "channel"

    .line 50
    .line 51
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v4, "phase"

    .line 55
    .line 56
    invoke-static {p5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v4, "dependencies"

    .line 60
    .line 61
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, LK1/f;->a:Ljava/lang/String;

    .line 68
    .line 69
    iput-object p2, p0, LK1/f;->b:Ljava/lang/String;

    .line 70
    .line 71
    iput p3, p0, LK1/f;->c:I

    .line 72
    .line 73
    iput-object v0, p0, LK1/f;->d:LA1/d;

    .line 74
    .line 75
    iput-object v5, p0, LK1/f;->e:Ljava/lang/String;

    .line 76
    .line 77
    iput-object p4, p0, LK1/f;->f:Ljava/lang/String;

    .line 78
    .line 79
    iput-object v2, p0, LK1/f;->g:LK1/i;

    .line 80
    .line 81
    iput-object p5, p0, LK1/f;->h:LK1/g;

    .line 82
    .line 83
    invoke-static {v1}, LK1/l;->c(Ljava/util/List;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    iput-object p3, p0, LK1/f;->i:Ljava/util/List;

    .line 88
    .line 89
    invoke-static {v3}, LK1/l;->c(Ljava/util/List;)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object p4

    .line 93
    iput-object p4, p0, LK1/f;->j:Ljava/util/List;

    .line 94
    .line 95
    invoke-static {p1}, LK1/l;->b(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-static {p2}, LK1/l;->a(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    const-string p2, "Failed requirement."

    .line 106
    .line 107
    const/16 p4, 0x100

    .line 108
    .line 109
    if-gt p1, p4, :cond_8

    .line 110
    .line 111
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_0

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_0
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result p3

    .line 126
    if-eqz p3, :cond_1

    .line 127
    .line 128
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p3

    .line 132
    check-cast p3, Ljava/lang/String;

    .line 133
    .line 134
    invoke-static {p3}, LK1/l;->b(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_1
    :goto_1
    iget-object p1, p0, LK1/f;->j:Ljava/util/List;

    .line 139
    .line 140
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-gt p1, p4, :cond_7

    .line 145
    .line 146
    iget-object p1, p0, LK1/f;->j:Ljava/util/List;

    .line 147
    .line 148
    if-eqz p1, :cond_2

    .line 149
    .line 150
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 151
    .line 152
    .line 153
    move-result p3

    .line 154
    if-eqz p3, :cond_2

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    .line 163
    .line 164
    move-result p3

    .line 165
    if-eqz p3, :cond_3

    .line 166
    .line 167
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p3

    .line 171
    check-cast p3, Ljava/lang/String;

    .line 172
    .line 173
    invoke-static {p3}, LK1/l;->b(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_3
    :goto_3
    iget-object p1, p0, LK1/f;->j:Ljava/util/List;

    .line 178
    .line 179
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    iget-object p3, p0, LK1/f;->j:Ljava/util/List;

    .line 188
    .line 189
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 190
    .line 191
    .line 192
    move-result p3

    .line 193
    if-ne p1, p3, :cond_6

    .line 194
    .line 195
    iget-object p1, p0, LK1/f;->j:Ljava/util/List;

    .line 196
    .line 197
    iget-object p3, p0, LK1/f;->a:Ljava/lang/String;

    .line 198
    .line 199
    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    if-nez p1, :cond_6

    .line 204
    .line 205
    iget-object p1, p0, LK1/f;->e:Ljava/lang/String;

    .line 206
    .line 207
    :try_start_0
    new-instance p3, Ljava/net/URI;

    .line 208
    .line 209
    invoke-direct {p3, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .line 211
    .line 212
    invoke-virtual {p3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    const-string p4, "https"

    .line 217
    .line 218
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    if-eqz p1, :cond_5

    .line 223
    .line 224
    invoke-virtual {p3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    if-eqz p1, :cond_5

    .line 229
    .line 230
    invoke-virtual {p3}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    if-nez p1, :cond_5

    .line 235
    .line 236
    invoke-virtual {p3}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    if-nez p1, :cond_5

    .line 241
    .line 242
    iget-object p1, p0, LK1/f;->f:Ljava/lang/String;

    .line 243
    .line 244
    sget-object p3, LK1/l;->c:Lkotlin/text/Regex;

    .line 245
    .line 246
    invoke-virtual {p3, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    if-eqz p1, :cond_4

    .line 251
    .line 252
    return-void

    .line 253
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 254
    .line 255
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    throw p1

    .line 259
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 260
    .line 261
    const-string p2, "Failed requirement."

    .line 262
    .line 263
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    throw p1

    .line 267
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 268
    .line 269
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 270
    .line 271
    .line 272
    throw p1

    .line 273
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 274
    .line 275
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    throw p1

    .line 279
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 280
    .line 281
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    throw p1

    .line 285
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 286
    .line 287
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    throw p1
.end method
