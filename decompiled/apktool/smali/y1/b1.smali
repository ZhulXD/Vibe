.class public abstract Ly1/b1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final a:Lkotlin/text/Regex;

.field public static final b:Lkotlin/text/Regex;

.field public static final c:Ljava/util/Set;

.field public static final d:Ljava/util/List;

.field public static final e:Li1/l;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lkotlin/text/Regex;

    .line 2
    .line 3
    const-string v1, "open_encrypted_with_pass\\s*\\([^,]+,[^,]+,\\s*\"((?:[^\"\\\\]|\\\\.)*)\"\\s*\\)"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Ly1/b1;->a:Lkotlin/text/Regex;

    .line 9
    .line 10
    new-instance v0, Lkotlin/text/Regex;

    .line 11
    .line 12
    const-string v1, "open_encrypted_with_pass\\s*\\([^,]+,[^,]+,\\s*([A-Za-z_][\\w.]*)\\s*\\)"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Ly1/b1;->b:Lkotlin/text/Regex;

    .line 18
    .line 19
    const-string v10, "wav"

    .line 20
    .line 21
    const-string v11, "mp3"

    .line 22
    .line 23
    const-string v2, "png"

    .line 24
    .line 25
    const-string v3, "jpg"

    .line 26
    .line 27
    const-string v4, "jpeg"

    .line 28
    .line 29
    const-string v5, "webp"

    .line 30
    .line 31
    const-string v6, "log"

    .line 32
    .line 33
    const-string v7, "import"

    .line 34
    .line 35
    const-string v8, "tmp"

    .line 36
    .line 37
    const-string v9, "ogg"

    .line 38
    .line 39
    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Ly1/b1;->c:Ljava/util/Set;

    .line 48
    .line 49
    const-string v0, ".min"

    .line 50
    .line 51
    const-string v1, ".minx"

    .line 52
    .line 53
    const-string v2, ".max"

    .line 54
    .line 55
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Ly1/b1;->d:Ljava/util/List;

    .line 64
    .line 65
    new-instance v0, Li1/m;

    .line 66
    .line 67
    invoke-direct {v0}, Li1/m;-><init>()V

    .line 68
    .line 69
    .line 70
    const/4 v1, 0x0

    .line 71
    iput-boolean v1, v0, Li1/m;->j:Z

    .line 72
    .line 73
    const/4 v1, 0x1

    .line 74
    iput-boolean v1, v0, Li1/m;->g:Z

    .line 75
    .line 76
    invoke-virtual {v0}, Li1/m;->a()Li1/l;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    sput-object v0, Ly1/b1;->e:Li1/l;

    .line 81
    .line 82
    return-void
.end method

.method public static a(Ly1/a1;Ljava/util/Map;)I
    .locals 11

    .line 1
    const-string v0, "opened"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "edits"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 v0, 0x0

    .line 20
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_8

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/util/Map$Entry;

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ly1/X0;

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Li1/s;

    .line 43
    .line 44
    iget-object v3, p0, Ly1/a1;->c:Li1/o;

    .line 45
    .line 46
    iget-object v4, v2, Ly1/X0;->a:Ljava/util/List;

    .line 47
    .line 48
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/List;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    const-string v6, "]"

    .line 61
    .line 62
    const-string v7, "["

    .line 63
    .line 64
    if-eqz v5, :cond_5

    .line 65
    .line 66
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    const-string v8, "next(...)"

    .line 71
    .line 72
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    check-cast v5, Ljava/lang/String;

    .line 76
    .line 77
    instance-of v8, v3, Li1/r;

    .line 78
    .line 79
    if-eqz v8, :cond_1

    .line 80
    .line 81
    invoke-virtual {v3}, Li1/o;->d()Li1/r;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    invoke-virtual {v8, v5}, Li1/r;->k(Ljava/lang/String;)Li1/o;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    :goto_2
    move-object v9, v5

    .line 90
    goto :goto_4

    .line 91
    :cond_1
    instance-of v8, v3, Li1/n;

    .line 92
    .line 93
    const/4 v9, 0x0

    .line 94
    if-eqz v8, :cond_3

    .line 95
    .line 96
    invoke-static {v5, v7}, Lkotlin/text/StringsKt;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-static {v5, v6}, Lkotlin/text/StringsKt;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-static {v5}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    if-eqz v5, :cond_3

    .line 109
    .line 110
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    invoke-virtual {v3}, Li1/o;->c()Li1/n;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    if-ltz v5, :cond_2

    .line 119
    .line 120
    iget-object v10, v8, Li1/n;->b:Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 123
    .line 124
    .line 125
    move-result v10

    .line 126
    if-ge v5, v10, :cond_2

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_2
    move-object v8, v9

    .line 130
    :goto_3
    if-eqz v8, :cond_3

    .line 131
    .line 132
    iget-object v8, v8, Li1/n;->b:Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    check-cast v5, Li1/o;

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_3
    :goto_4
    if-nez v9, :cond_4

    .line 142
    .line 143
    goto :goto_5

    .line 144
    :cond_4
    move-object v3, v9

    .line 145
    goto :goto_1

    .line 146
    :cond_5
    :goto_5
    iget-object v2, v2, Ly1/X0;->a:Ljava/util/List;

    .line 147
    .line 148
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    check-cast v2, Ljava/lang/String;

    .line 153
    .line 154
    instance-of v4, v3, Li1/r;

    .line 155
    .line 156
    if-eqz v4, :cond_6

    .line 157
    .line 158
    invoke-virtual {v3}, Li1/o;->d()Li1/r;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-virtual {v4, v2}, Li1/r;->k(Ljava/lang/String;)Li1/o;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    if-nez v4, :cond_0

    .line 171
    .line 172
    invoke-virtual {v3}, Li1/o;->d()Li1/r;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-virtual {v3, v2, v1}, Li1/r;->g(Ljava/lang/String;Li1/o;)V

    .line 177
    .line 178
    .line 179
    :goto_6
    add-int/lit8 v0, v0, 0x1

    .line 180
    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    :cond_6
    instance-of v4, v3, Li1/n;

    .line 184
    .line 185
    if-eqz v4, :cond_0

    .line 186
    .line 187
    invoke-static {v2, v7}, Lkotlin/text/StringsKt;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-static {v2, v6}, Lkotlin/text/StringsKt;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-static {v2}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    if-eqz v2, :cond_0

    .line 200
    .line 201
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    invoke-virtual {v3}, Li1/o;->c()Li1/n;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    iget-object v3, v3, Li1/n;->b:Ljava/util/ArrayList;

    .line 210
    .line 211
    if-ltz v2, :cond_0

    .line 212
    .line 213
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    if-ge v2, v4, :cond_0

    .line 218
    .line 219
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    check-cast v4, Li1/o;

    .line 224
    .line 225
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v4

    .line 229
    if-nez v4, :cond_0

    .line 230
    .line 231
    if-nez v1, :cond_7

    .line 232
    .line 233
    sget-object v1, Li1/q;->b:Li1/q;

    .line 234
    .line 235
    :cond_7
    invoke-virtual {v3, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    check-cast v1, Li1/o;

    .line 240
    .line 241
    goto :goto_6

    .line 242
    :cond_8
    return v0
.end method

.method public static final b(ZLi1/s;)Z
    .locals 2

    .line 1
    iget-object v0, p1, Li1/s;->b:Ljava/io/Serializable;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/Number;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    instance-of v1, v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    instance-of p0, v0, Ljava/lang/String;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Li1/s;->f()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string p1, "getAsString(...)"

    .line 22
    .line 23
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-eqz p0, :cond_0

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 41
    .line 42
    .line 43
    move-result-wide p0

    .line 44
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    .line 45
    .line 46
    .line 47
    move-result-wide p0

    .line 48
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    cmpg-double p0, p0, v0

    .line 54
    .line 55
    if-gtz p0, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/4 p0, 0x0

    .line 59
    return p0

    .line 60
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 61
    return p0
.end method

.method public static final c(Ljava/util/ArrayList;ZLi1/o;Ljava/util/List;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    instance-of v4, v2, Li1/r;

    .line 10
    .line 11
    const-string v5, "getAsString(...)"

    .line 12
    .line 13
    if-eqz v4, :cond_a

    .line 14
    .line 15
    invoke-virtual {v2}, Li1/o;->d()Li1/r;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v4, v2, Li1/r;->b:Lk1/m;

    .line 20
    .line 21
    invoke-virtual {v4}, Lk1/m;->entrySet()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    check-cast v6, Lk1/k;

    .line 26
    .line 27
    invoke-virtual {v6}, Lk1/k;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    :cond_0
    :goto_0
    move-object v7, v6

    .line 32
    check-cast v7, Lk1/j;

    .line 33
    .line 34
    invoke-virtual {v7}, Lk1/j;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    if-eqz v7, :cond_e

    .line 39
    .line 40
    move-object v7, v6

    .line 41
    check-cast v7, Lk1/j;

    .line 42
    .line 43
    invoke-virtual {v7}, Lk1/j;->b()Lk1/l;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    check-cast v8, Ljava/lang/String;

    .line 55
    .line 56
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    check-cast v7, Li1/o;

    .line 61
    .line 62
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    instance-of v9, v7, Li1/s;

    .line 66
    .line 67
    if-eqz v9, :cond_3

    .line 68
    .line 69
    sget-object v10, Ly1/b1;->d:Ljava/util/List;

    .line 70
    .line 71
    if-eqz v10, :cond_1

    .line 72
    .line 73
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v11

    .line 77
    if-eqz v11, :cond_1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v10

    .line 84
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v11

    .line 88
    if-eqz v11, :cond_3

    .line 89
    .line 90
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v11

    .line 94
    check-cast v11, Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-static {v8, v11}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v12

    .line 103
    if-eqz v12, :cond_2

    .line 104
    .line 105
    invoke-static {v8, v11}, Lkotlin/text/StringsKt;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v11

    .line 109
    invoke-virtual {v4, v11}, Lk1/m;->containsKey(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v11

    .line 113
    if-eqz v11, :cond_2

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_3
    :goto_1
    if-eqz v9, :cond_9

    .line 117
    .line 118
    invoke-virtual {v7}, Li1/o;->e()Li1/s;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    iget-object v9, v7, Li1/s;->b:Ljava/io/Serializable;

    .line 123
    .line 124
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-static {v1, v7}, Ly1/b1;->b(ZLi1/s;)Z

    .line 128
    .line 129
    .line 130
    move-result v10

    .line 131
    if-eqz v10, :cond_0

    .line 132
    .line 133
    invoke-static {v3, v8}, Lkotlin/collections/CollectionsKt;->u(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v12

    .line 137
    invoke-virtual {v7}, Li1/s;->f()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v13

    .line 141
    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    instance-of v14, v9, Ljava/lang/Boolean;

    .line 145
    .line 146
    new-instance v7, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v10, ".min"

    .line 155
    .line 156
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    invoke-virtual {v2, v7}, Li1/r;->k(Ljava/lang/String;)Li1/o;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    if-nez v7, :cond_4

    .line 168
    .line 169
    new-instance v7, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v10, ".minx"

    .line 178
    .line 179
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    invoke-virtual {v2, v7}, Li1/r;->k(Ljava/lang/String;)Li1/o;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    :cond_4
    const/4 v10, 0x0

    .line 191
    if-eqz v7, :cond_6

    .line 192
    .line 193
    instance-of v11, v7, Li1/s;

    .line 194
    .line 195
    if-eqz v11, :cond_5

    .line 196
    .line 197
    invoke-virtual {v7}, Li1/o;->e()Li1/s;

    .line 198
    .line 199
    .line 200
    move-result-object v11

    .line 201
    iget-object v11, v11, Li1/s;->b:Ljava/io/Serializable;

    .line 202
    .line 203
    instance-of v11, v11, Ljava/lang/Number;

    .line 204
    .line 205
    if-eqz v11, :cond_5

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_5
    move-object v7, v10

    .line 209
    :goto_2
    if-eqz v7, :cond_6

    .line 210
    .line 211
    invoke-virtual {v7}, Li1/o;->f()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    move-object v15, v7

    .line 216
    goto :goto_3

    .line 217
    :cond_6
    move-object v15, v10

    .line 218
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v8, ".max"

    .line 227
    .line 228
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    invoke-virtual {v2, v7}, Li1/r;->k(Ljava/lang/String;)Li1/o;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    if-eqz v7, :cond_8

    .line 240
    .line 241
    instance-of v8, v7, Li1/s;

    .line 242
    .line 243
    if-eqz v8, :cond_7

    .line 244
    .line 245
    invoke-virtual {v7}, Li1/o;->e()Li1/s;

    .line 246
    .line 247
    .line 248
    move-result-object v8

    .line 249
    iget-object v8, v8, Li1/s;->b:Ljava/io/Serializable;

    .line 250
    .line 251
    instance-of v8, v8, Ljava/lang/Number;

    .line 252
    .line 253
    if-eqz v8, :cond_7

    .line 254
    .line 255
    goto :goto_4

    .line 256
    :cond_7
    move-object v7, v10

    .line 257
    :goto_4
    if-eqz v7, :cond_8

    .line 258
    .line 259
    invoke-virtual {v7}, Li1/o;->f()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v10

    .line 263
    :cond_8
    move-object/from16 v16, v10

    .line 264
    .line 265
    instance-of v7, v9, Ljava/lang/String;

    .line 266
    .line 267
    new-instance v11, Ly1/X0;

    .line 268
    .line 269
    move/from16 v17, v7

    .line 270
    .line 271
    invoke-direct/range {v11 .. v17}, Ly1/X0;-><init>(Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    goto/16 :goto_0

    .line 278
    .line 279
    :cond_9
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    invoke-static {v3, v8}, Lkotlin/collections/CollectionsKt;->u(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    .line 283
    .line 284
    .line 285
    move-result-object v8

    .line 286
    invoke-static {v0, v1, v7, v8}, Ly1/b1;->c(Ljava/util/ArrayList;ZLi1/o;Ljava/util/List;)V

    .line 287
    .line 288
    .line 289
    goto/16 :goto_0

    .line 290
    .line 291
    :cond_a
    instance-of v4, v2, Li1/n;

    .line 292
    .line 293
    if-eqz v4, :cond_e

    .line 294
    .line 295
    invoke-virtual {v2}, Li1/o;->c()Li1/n;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    const-string v4, "getAsJsonArray(...)"

    .line 300
    .line 301
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    iget-object v2, v2, Li1/n;->b:Ljava/util/ArrayList;

    .line 305
    .line 306
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 307
    .line 308
    .line 309
    move-result v4

    .line 310
    const/4 v6, 0x0

    .line 311
    move v7, v6

    .line 312
    :goto_5
    if-ge v7, v4, :cond_e

    .line 313
    .line 314
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v8

    .line 318
    add-int/lit8 v7, v7, 0x1

    .line 319
    .line 320
    add-int/lit8 v9, v6, 0x1

    .line 321
    .line 322
    if-gez v6, :cond_b

    .line 323
    .line 324
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 325
    .line 326
    .line 327
    :cond_b
    check-cast v8, Li1/o;

    .line 328
    .line 329
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    .line 331
    .line 332
    instance-of v10, v8, Li1/s;

    .line 333
    .line 334
    const-string v11, "]"

    .line 335
    .line 336
    const-string v12, "["

    .line 337
    .line 338
    if-eqz v10, :cond_c

    .line 339
    .line 340
    invoke-virtual {v8}, Li1/o;->e()Li1/s;

    .line 341
    .line 342
    .line 343
    move-result-object v13

    .line 344
    const-string v14, "getAsJsonPrimitive(...)"

    .line 345
    .line 346
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    invoke-static {v1, v13}, Ly1/b1;->b(ZLi1/s;)Z

    .line 350
    .line 351
    .line 352
    move-result v13

    .line 353
    if-eqz v13, :cond_c

    .line 354
    .line 355
    new-instance v14, Ly1/X0;

    .line 356
    .line 357
    new-instance v10, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v6

    .line 372
    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt;->u(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    .line 373
    .line 374
    .line 375
    move-result-object v15

    .line 376
    invoke-virtual {v8}, Li1/o;->f()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v6

    .line 380
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v8}, Li1/o;->e()Li1/s;

    .line 384
    .line 385
    .line 386
    move-result-object v10

    .line 387
    iget-object v10, v10, Li1/s;->b:Ljava/io/Serializable;

    .line 388
    .line 389
    instance-of v10, v10, Ljava/lang/Boolean;

    .line 390
    .line 391
    invoke-virtual {v8}, Li1/o;->e()Li1/s;

    .line 392
    .line 393
    .line 394
    move-result-object v8

    .line 395
    iget-object v8, v8, Li1/s;->b:Ljava/io/Serializable;

    .line 396
    .line 397
    instance-of v8, v8, Ljava/lang/String;

    .line 398
    .line 399
    const/16 v18, 0x0

    .line 400
    .line 401
    const/16 v19, 0x0

    .line 402
    .line 403
    move-object/from16 v16, v6

    .line 404
    .line 405
    move/from16 v20, v8

    .line 406
    .line 407
    move/from16 v17, v10

    .line 408
    .line 409
    invoke-direct/range {v14 .. v20}, Ly1/X0;-><init>(Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    goto :goto_6

    .line 416
    :cond_c
    if-nez v10, :cond_d

    .line 417
    .line 418
    instance-of v10, v8, Li1/q;

    .line 419
    .line 420
    if-nez v10, :cond_d

    .line 421
    .line 422
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 423
    .line 424
    .line 425
    new-instance v10, Ljava/lang/StringBuilder;

    .line 426
    .line 427
    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v6

    .line 440
    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt;->u(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    .line 441
    .line 442
    .line 443
    move-result-object v6

    .line 444
    invoke-static {v0, v1, v8, v6}, Ly1/b1;->c(Ljava/util/ArrayList;ZLi1/o;Ljava/util/List;)V

    .line 445
    .line 446
    .line 447
    :cond_d
    :goto_6
    move v6, v9

    .line 448
    goto/16 :goto_5

    .line 449
    .line 450
    :cond_e
    return-void
.end method

.method public static d(Ljava/io/File;)Ljava/util/List;
    .locals 16

    .line 1
    const-string v0, "pack"

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 9
    .line 10
    invoke-static {v1}, Ly1/b1;->i(Ljava/io/File;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    const-string v5, "\\"

    .line 33
    .line 34
    const-string v6, "\\\\"

    .line 35
    .line 36
    const-string v7, "\""

    .line 37
    .line 38
    const-string v8, "\\\""

    .line 39
    .line 40
    const-string v9, "next(...)"

    .line 41
    .line 42
    const-string v10, "get(...)"

    .line 43
    .line 44
    const/4 v11, 0x1

    .line 45
    const/4 v12, 0x0

    .line 46
    const/4 v13, 0x2

    .line 47
    const/4 v14, 0x0

    .line 48
    if-eqz v4, :cond_2

    .line 49
    .line 50
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    check-cast v4, Ljava/lang/String;

    .line 58
    .line 59
    sget-object v9, Ly1/b1;->a:Lkotlin/text/Regex;

    .line 60
    .line 61
    invoke-static {v9, v4, v12, v13, v14}, Lkotlin/text/Regex;->findAll$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/sequences/Sequence;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    invoke-interface {v9}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v9

    .line 69
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v15

    .line 73
    if-eqz v15, :cond_1

    .line 74
    .line 75
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v15

    .line 79
    check-cast v15, Lkotlin/text/MatchResult;

    .line 80
    .line 81
    invoke-interface {v15}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v15

    .line 85
    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v15

    .line 89
    invoke-static {v15, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    check-cast v15, Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v15, v8, v7}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v15

    .line 98
    invoke-static {v15, v6, v5}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v15

    .line 102
    invoke-interface {v1, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_1
    sget-object v5, Ly1/b1;->b:Lkotlin/text/Regex;

    .line 107
    .line 108
    invoke-static {v5, v4, v12, v13, v14}, Lkotlin/text/Regex;->findAll$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/sequences/Sequence;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-interface {v4}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-eqz v5, :cond_0

    .line 121
    .line 122
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    check-cast v5, Lkotlin/text/MatchResult;

    .line 127
    .line 128
    invoke-interface {v5}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    check-cast v5, Ljava/lang/String;

    .line 140
    .line 141
    const/16 v6, 0x2e

    .line 142
    .line 143
    invoke-static {v6, v5}, Lkotlin/text/StringsKt;->S(CLjava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_2
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    const-string v3, "iterator(...)"

    .line 156
    .line 157
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    if-eqz v3, :cond_5

    .line 165
    .line 166
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    check-cast v3, Ljava/lang/String;

    .line 171
    .line 172
    new-instance v4, Lkotlin/text/Regex;

    .line 173
    .line 174
    sget-object v15, Lkotlin/text/Regex;->Companion:Lkotlin/text/Regex$Companion;

    .line 175
    .line 176
    invoke-virtual {v15, v3}, Lkotlin/text/Regex$Companion;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    new-instance v15, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    const-string v11, "(?:const|var)\\s+"

    .line 186
    .line 187
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v3, "\\s*(?::\\s*\\w+\\s*)?:?=\\s*\"((?:[^\"\\\\]|\\\\.)*)\""

    .line 194
    .line 195
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-direct {v4, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 210
    .line 211
    .line 212
    move-result v11

    .line 213
    if-eqz v11, :cond_4

    .line 214
    .line 215
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v11

    .line 219
    invoke-static {v11, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    check-cast v11, Ljava/lang/String;

    .line 223
    .line 224
    invoke-static {v4, v11, v12, v13, v14}, Lkotlin/text/Regex;->findAll$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/sequences/Sequence;

    .line 225
    .line 226
    .line 227
    move-result-object v11

    .line 228
    invoke-interface {v11}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 229
    .line 230
    .line 231
    move-result-object v11

    .line 232
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 233
    .line 234
    .line 235
    move-result v15

    .line 236
    if-eqz v15, :cond_3

    .line 237
    .line 238
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v15

    .line 242
    check-cast v15, Lkotlin/text/MatchResult;

    .line 243
    .line 244
    invoke-interface {v15}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    .line 245
    .line 246
    .line 247
    move-result-object v15

    .line 248
    const/4 v12, 0x1

    .line 249
    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v15

    .line 253
    invoke-static {v15, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    check-cast v15, Ljava/lang/String;

    .line 257
    .line 258
    invoke-static {v15, v8, v7}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v15

    .line 262
    invoke-static {v15, v6, v5}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v15

    .line 266
    invoke-interface {v1, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    const/4 v12, 0x0

    .line 270
    goto :goto_3

    .line 271
    :cond_4
    const/4 v11, 0x1

    .line 272
    goto :goto_2

    .line 273
    :cond_5
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    goto :goto_4

    .line 282
    :catchall_0
    move-exception v0

    .line 283
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 284
    .line 285
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    :goto_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result v2

    .line 301
    if-eqz v2, :cond_6

    .line 302
    .line 303
    move-object v0, v1

    .line 304
    :cond_6
    check-cast v0, Ljava/util/List;

    .line 305
    .line 306
    return-object v0
.end method

.method public static e([B)J
    .locals 8

    .line 1
    array-length v0, p0

    .line 2
    add-int/lit8 v0, v0, -0x1

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    if-ltz v0, :cond_1

    .line 7
    .line 8
    :goto_0
    add-int/lit8 v3, v0, -0x1

    .line 9
    .line 10
    const/16 v4, 0x8

    .line 11
    .line 12
    shl-long/2addr v1, v4

    .line 13
    aget-byte v0, p0, v0

    .line 14
    .line 15
    int-to-long v4, v0

    .line 16
    const-wide/16 v6, 0xff

    .line 17
    .line 18
    and-long/2addr v4, v6

    .line 19
    or-long/2addr v1, v4

    .line 20
    if-gez v3, :cond_0

    .line 21
    .line 22
    return-wide v1

    .line 23
    :cond_0
    move v0, v3

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    return-wide v1
.end method

.method public static f(Ljava/io/File;)Ljava/util/List;
    .locals 3

    .line 1
    const-string v0, "userDir"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_0
    invoke-static {p0}, Lkotlin/io/FilesKt;->walkTopDown(Ljava/io/File;)Lkotlin/io/FileTreeWalk;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, LM1/d;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-direct {v1, p0, v2}, LM1/d;-><init>(Ljava/io/File;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lkotlin/io/FileTreeWalk;->onEnter(Lkotlin/jvm/functions/Function1;)Lkotlin/io/FileTreeWalk;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/4 v0, 0x4

    .line 32
    invoke-virtual {p0, v0}, Lkotlin/io/FileTreeWalk;->maxDepth(I)Lkotlin/io/FileTreeWalk;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    new-instance v0, Lcom/minhub/gamehub/hub/catalog/h;

    .line 37
    .line 38
    const/16 v1, 0x19

    .line 39
    .line 40
    invoke-direct {v0, v1}, Lcom/minhub/gamehub/hub/catalog/h;-><init>(I)V

    .line 41
    .line 42
    .line 43
    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->q(Lkotlin/io/FileTreeWalk;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    new-instance v0, Ly1/M;

    .line 52
    .line 53
    const/4 v1, 0x3

    .line 54
    invoke-direct {v0, v1}, Ly1/M;-><init>(I)V

    .line 55
    .line 56
    .line 57
    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0
.end method

.method public static g(Ljava/io/File;Ljava/util/List;)Ly1/a1;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "file"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "passwords"

    .line 9
    .line 10
    move-object/from16 v2, p1

    .line 11
    .line 12
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 16
    .line 17
    invoke-static {v1}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 28
    .line 29
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const/4 v4, 0x0

    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    move-object v0, v4

    .line 45
    :cond_0
    move-object v3, v0

    .line 46
    check-cast v3, [B

    .line 47
    .line 48
    if-nez v3, :cond_1

    .line 49
    .line 50
    goto/16 :goto_6

    .line 51
    .line 52
    :cond_1
    sget-object v0, Ly1/Y0;->a:[B

    .line 53
    .line 54
    const-string v5, "bytes"

    .line 55
    .line 56
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    array-length v0, v3

    .line 60
    const/16 v6, 0x2c

    .line 61
    .line 62
    if-lt v0, v6, :cond_a

    .line 63
    .line 64
    const/4 v7, 0x0

    .line 65
    const/4 v8, 0x4

    .line 66
    invoke-static {v3, v7, v8}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    sget-object v9, Ly1/Y0;->a:[B

    .line 71
    .line 72
    invoke-static {v0, v9}, Ljava/util/Arrays;->equals([B[B)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_a

    .line 77
    .line 78
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_9

    .line 87
    .line 88
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const-string v9, "next(...)"

    .line 93
    .line 94
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    move-object v9, v0

    .line 98
    check-cast v9, Ljava/lang/String;

    .line 99
    .line 100
    sget-object v0, Ly1/Y0;->a:[B

    .line 101
    .line 102
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const-string v0, "password"

    .line 106
    .line 107
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    array-length v0, v3

    .line 114
    if-lt v0, v6, :cond_5

    .line 115
    .line 116
    invoke-static {v3, v7, v8}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    sget-object v10, Ly1/Y0;->a:[B

    .line 121
    .line 122
    invoke-static {v0, v10}, Ljava/util/Arrays;->equals([B[B)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_5

    .line 127
    .line 128
    const/16 v0, 0x14

    .line 129
    .line 130
    invoke-static {v3, v8, v0}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    .line 131
    .line 132
    .line 133
    move-result-object v10

    .line 134
    const-wide/16 v11, 0x0

    .line 135
    .line 136
    const/4 v0, 0x7

    .line 137
    move-wide v13, v11

    .line 138
    :goto_2
    const/4 v15, -0x1

    .line 139
    if-ge v15, v0, :cond_2

    .line 140
    .line 141
    const/16 v15, 0x8

    .line 142
    .line 143
    shl-long/2addr v13, v15

    .line 144
    add-int/lit8 v15, v0, 0x14

    .line 145
    .line 146
    aget-byte v15, v3, v15

    .line 147
    .line 148
    int-to-long v7, v15

    .line 149
    const-wide/16 v16, 0xff

    .line 150
    .line 151
    and-long v7, v7, v16

    .line 152
    .line 153
    or-long/2addr v13, v7

    .line 154
    add-int/lit8 v0, v0, -0x1

    .line 155
    .line 156
    const/4 v7, 0x0

    .line 157
    const/4 v8, 0x4

    .line 158
    goto :goto_2

    .line 159
    :cond_2
    array-length v0, v3

    .line 160
    sub-int/2addr v0, v6

    .line 161
    cmp-long v7, v13, v11

    .line 162
    .line 163
    if-ltz v7, :cond_5

    .line 164
    .line 165
    int-to-long v7, v0

    .line 166
    cmp-long v7, v13, v7

    .line 167
    .line 168
    if-lez v7, :cond_3

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_3
    const/16 v7, 0x1c

    .line 172
    .line 173
    invoke-static {v3, v7, v6}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    :try_start_1
    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 178
    .line 179
    const/4 v8, 0x2

    .line 180
    invoke-static {v8, v9, v7}, Ly1/Y0;->a(ILjava/lang/String;[B)Ljavax/crypto/Cipher;

    .line 181
    .line 182
    .line 183
    move-result-object v7

    .line 184
    invoke-virtual {v7, v3, v6, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 192
    goto :goto_3

    .line 193
    :catchall_1
    move-exception v0

    .line 194
    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 195
    .line 196
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    :goto_3
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v7

    .line 208
    if-eqz v7, :cond_4

    .line 209
    .line 210
    move-object v0, v4

    .line 211
    :cond_4
    check-cast v0, [B

    .line 212
    .line 213
    if-nez v0, :cond_6

    .line 214
    .line 215
    :cond_5
    :goto_4
    move-object v0, v4

    .line 216
    goto :goto_5

    .line 217
    :cond_6
    long-to-int v7, v13

    .line 218
    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    const-string v7, "copyOf(...)"

    .line 223
    .line 224
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    const-string v7, "MD5"

    .line 228
    .line 229
    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 230
    .line 231
    .line 232
    move-result-object v7

    .line 233
    invoke-virtual {v7, v0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 234
    .line 235
    .line 236
    move-result-object v7

    .line 237
    const-string v8, "digest(...)"

    .line 238
    .line 239
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-static {v7, v10}, Ljava/util/Arrays;->equals([B[B)Z

    .line 243
    .line 244
    .line 245
    move-result v7

    .line 246
    if-eqz v7, :cond_5

    .line 247
    .line 248
    :goto_5
    if-nez v0, :cond_7

    .line 249
    .line 250
    const/4 v7, 0x0

    .line 251
    const/4 v8, 0x4

    .line 252
    goto/16 :goto_1

    .line 253
    .line 254
    :cond_7
    invoke-static {v0}, Ly1/b1;->h([B)Li1/o;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    if-nez v0, :cond_8

    .line 259
    .line 260
    goto :goto_6

    .line 261
    :cond_8
    new-instance v2, Ly1/a1;

    .line 262
    .line 263
    invoke-direct {v2, v1, v9, v0}, Ly1/a1;-><init>(Ljava/io/File;Ljava/lang/String;Li1/o;)V

    .line 264
    .line 265
    .line 266
    return-object v2

    .line 267
    :cond_9
    :goto_6
    return-object v4

    .line 268
    :cond_a
    invoke-static {v3}, Ly1/b1;->h([B)Li1/o;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    if-eqz v0, :cond_b

    .line 273
    .line 274
    new-instance v2, Ly1/a1;

    .line 275
    .line 276
    invoke-direct {v2, v1, v4, v0}, Ly1/a1;-><init>(Ljava/io/File;Ljava/lang/String;Li1/o;)V

    .line 277
    .line 278
    .line 279
    move-object v4, v2

    .line 280
    :cond_b
    return-object v4
.end method

.method public static h([B)Li1/o;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/String;

    .line 5
    .line 6
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 7
    .line 8
    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const/4 v1, 0x1

    .line 20
    new-array v1, v1, [C

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    aput-char v2, v1, v2

    .line 24
    .line 25
    invoke-static {p0, v1}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/String;[C)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v1, "{"

    .line 30
    .line 31
    invoke-static {p0, v1}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    const-string v1, "["

    .line 38
    .line 39
    invoke-static {p0, v1}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_0

    .line 44
    .line 45
    return-object v0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    invoke-static {p0}, La/a;->E(Ljava/lang/String;)Li1/o;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    instance-of v1, p0, Li1/r;

    .line 53
    .line 54
    if-nez v1, :cond_2

    .line 55
    .line 56
    instance-of v1, p0, Li1/n;

    .line 57
    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    move-object p0, v0

    .line 62
    :cond_2
    :goto_0
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    goto :goto_2

    .line 67
    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 68
    .line 69
    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    :goto_2
    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_3
    move-object v0, p0

    .line 85
    :goto_3
    check-cast v0, Li1/o;

    .line 86
    .line 87
    return-object v0
.end method

.method public static i(Ljava/io/File;)Ljava/util/List;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "pack"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/io/RandomAccessFile;

    .line 9
    .line 10
    const-string v2, "r"

    .line 11
    .line 12
    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    :try_start_0
    new-array v2, v0, [B

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Ljava/lang/String;

    .line 22
    .line 23
    sget-object v4, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 24
    .line 25
    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 26
    .line 27
    .line 28
    const-string v2, "GDPC"

    .line 29
    .line 30
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/4 v3, 0x0

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    move-object v2, v0

    .line 47
    goto/16 :goto_3

    .line 48
    .line 49
    :cond_0
    :try_start_1
    new-array v2, v0, [B

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 52
    .line 53
    .line 54
    invoke-static {v2}, Ly1/b1;->e([B)J

    .line 55
    .line 56
    .line 57
    move-result-wide v4

    .line 58
    invoke-static {v1}, Ly1/b1;->j(Ljava/io/RandomAccessFile;)J

    .line 59
    .line 60
    .line 61
    invoke-static {v1}, Ly1/b1;->j(Ljava/io/RandomAccessFile;)J

    .line 62
    .line 63
    .line 64
    invoke-static {v1}, Ly1/b1;->j(Ljava/io/RandomAccessFile;)J

    .line 65
    .line 66
    .line 67
    new-instance v2, Lkotlin/jvm/internal/Ref$LongRef;

    .line 68
    .line 69
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 70
    .line 71
    .line 72
    const-wide/16 v6, 0x2

    .line 73
    .line 74
    cmp-long v4, v4, v6

    .line 75
    .line 76
    const/16 v5, 0x8

    .line 77
    .line 78
    const-wide/16 v6, 0x0

    .line 79
    .line 80
    const-wide/16 v8, 0x1

    .line 81
    .line 82
    if-ltz v4, :cond_1

    .line 83
    .line 84
    new-array v10, v0, [B

    .line 85
    .line 86
    invoke-virtual {v1, v10}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 87
    .line 88
    .line 89
    invoke-static {v10}, Ly1/b1;->e([B)J

    .line 90
    .line 91
    .line 92
    move-result-wide v10

    .line 93
    new-array v12, v5, [B

    .line 94
    .line 95
    invoke-virtual {v1, v12}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 96
    .line 97
    .line 98
    invoke-static {v12}, Ly1/b1;->e([B)J

    .line 99
    .line 100
    .line 101
    move-result-wide v12

    .line 102
    iput-wide v12, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 103
    .line 104
    and-long/2addr v10, v8

    .line 105
    cmp-long v10, v10, v6

    .line 106
    .line 107
    if-eqz v10, :cond_1

    .line 108
    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    return-object v0

    .line 117
    :cond_1
    const/16 v10, 0x40

    .line 118
    .line 119
    :try_start_2
    invoke-virtual {v1, v10}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 120
    .line 121
    .line 122
    new-array v10, v0, [B

    .line 123
    .line 124
    invoke-virtual {v1, v10}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 125
    .line 126
    .line 127
    invoke-static {v10}, Ly1/b1;->e([B)J

    .line 128
    .line 129
    .line 130
    move-result-wide v10

    .line 131
    new-instance v12, Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .line 135
    .line 136
    long-to-int v10, v10

    .line 137
    const/4 v11, 0x0

    .line 138
    move v13, v11

    .line 139
    :goto_0
    if-ge v13, v10, :cond_4

    .line 140
    .line 141
    new-array v14, v0, [B

    .line 142
    .line 143
    invoke-virtual {v1, v14}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 144
    .line 145
    .line 146
    invoke-static {v14}, Ly1/b1;->e([B)J

    .line 147
    .line 148
    .line 149
    move-result-wide v14

    .line 150
    long-to-int v14, v14

    .line 151
    new-array v14, v14, [B

    .line 152
    .line 153
    invoke-virtual {v1, v14}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 154
    .line 155
    .line 156
    new-instance v15, Ljava/lang/String;

    .line 157
    .line 158
    move-wide/from16 v16, v6

    .line 159
    .line 160
    sget-object v6, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 161
    .line 162
    invoke-direct {v15, v14, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 163
    .line 164
    .line 165
    const/4 v6, 0x1

    .line 166
    new-array v6, v6, [C

    .line 167
    .line 168
    aput-char v11, v6, v11

    .line 169
    .line 170
    invoke-static {v15, v6}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/String;[C)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    new-array v7, v5, [B

    .line 175
    .line 176
    invoke-virtual {v1, v7}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 177
    .line 178
    .line 179
    invoke-static {v7}, Ly1/b1;->e([B)J

    .line 180
    .line 181
    .line 182
    move-result-wide v14

    .line 183
    new-array v7, v5, [B

    .line 184
    .line 185
    invoke-virtual {v1, v7}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 186
    .line 187
    .line 188
    invoke-static {v7}, Ly1/b1;->e([B)J

    .line 189
    .line 190
    .line 191
    move-result-wide v18

    .line 192
    const/16 v7, 0x10

    .line 193
    .line 194
    invoke-virtual {v1, v7}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 195
    .line 196
    .line 197
    if-ltz v4, :cond_2

    .line 198
    .line 199
    new-array v7, v0, [B

    .line 200
    .line 201
    invoke-virtual {v1, v7}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 202
    .line 203
    .line 204
    invoke-static {v7}, Ly1/b1;->e([B)J

    .line 205
    .line 206
    .line 207
    move-result-wide v20

    .line 208
    goto :goto_1

    .line 209
    :cond_2
    move-wide/from16 v20, v16

    .line 210
    .line 211
    :goto_1
    const-string v7, ".gd"

    .line 212
    .line 213
    invoke-static {v6, v7}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 214
    .line 215
    .line 216
    move-result v7

    .line 217
    if-eqz v7, :cond_3

    .line 218
    .line 219
    and-long v20, v20, v8

    .line 220
    .line 221
    cmp-long v7, v20, v16

    .line 222
    .line 223
    if-nez v7, :cond_3

    .line 224
    .line 225
    cmp-long v7, v8, v18

    .line 226
    .line 227
    if-gtz v7, :cond_3

    .line 228
    .line 229
    const-wide/32 v20, 0x80001

    .line 230
    .line 231
    .line 232
    cmp-long v7, v18, v20

    .line 233
    .line 234
    if-gez v7, :cond_3

    .line 235
    .line 236
    new-instance v7, Lkotlin/Triple;

    .line 237
    .line 238
    iget-wide v8, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 239
    .line 240
    add-long/2addr v14, v8

    .line 241
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 242
    .line 243
    .line 244
    move-result-object v8

    .line 245
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 246
    .line 247
    .line 248
    move-result-object v9

    .line 249
    invoke-direct {v7, v6, v8, v9}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    :cond_3
    add-int/lit8 v13, v13, 0x1

    .line 256
    .line 257
    move-wide/from16 v6, v16

    .line 258
    .line 259
    const-wide/16 v8, 0x1

    .line 260
    .line 261
    goto :goto_0

    .line 262
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    .line 263
    .line 264
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    :goto_2
    if-ge v11, v2, :cond_5

    .line 276
    .line 277
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    add-int/lit8 v11, v11, 0x1

    .line 282
    .line 283
    check-cast v4, Lkotlin/Triple;

    .line 284
    .line 285
    invoke-virtual {v4}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v5

    .line 289
    check-cast v5, Ljava/lang/Number;

    .line 290
    .line 291
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    .line 292
    .line 293
    .line 294
    move-result-wide v5

    .line 295
    invoke-virtual {v4}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    check-cast v4, Ljava/lang/Number;

    .line 300
    .line 301
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 302
    .line 303
    .line 304
    move-result-wide v7

    .line 305
    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 306
    .line 307
    .line 308
    long-to-int v4, v7

    .line 309
    new-array v4, v4, [B

    .line 310
    .line 311
    invoke-virtual {v1, v4}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 312
    .line 313
    .line 314
    new-instance v5, Ljava/lang/String;

    .line 315
    .line 316
    sget-object v6, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 317
    .line 318
    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 322
    .line 323
    .line 324
    goto :goto_2

    .line 325
    :cond_5
    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 326
    .line 327
    .line 328
    return-object v0

    .line 329
    :goto_3
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 330
    :catchall_1
    move-exception v0

    .line 331
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 332
    .line 333
    .line 334
    throw v0
.end method

.method public static final j(Ljava/io/RandomAccessFile;)J
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ly1/b1;->e([B)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public static k(Ly1/a1;)V
    .locals 11

    .line 1
    const-string v0, "opened"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ly1/a1;->a:Ljava/io/File;

    .line 7
    .line 8
    new-instance v1, Ljava/io/File;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const-string v4, ".minhub.bak"

    .line 19
    .line 20
    invoke-static {v3, v4}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x0

    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    const/4 v2, 0x6

    .line 35
    invoke-static {v0, v1, v3, v2}, Lkotlin/io/FilesKt;->d(Ljava/io/File;Ljava/io/File;ZI)V

    .line 36
    .line 37
    .line 38
    :cond_0
    sget-object v1, Ly1/b1;->e:Li1/l;

    .line 39
    .line 40
    iget-object v2, p0, Ly1/a1;->c:Li1/o;

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Li1/l;->f(Li1/o;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string v2, "toJson(...)"

    .line 47
    .line 48
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v2, "getBytes(...)"

    .line 58
    .line 59
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Ly1/a1;->b:Ljava/lang/String;

    .line 63
    .line 64
    if-eqz p0, :cond_2

    .line 65
    .line 66
    sget-object v2, Ly1/Y0;->a:[B

    .line 67
    .line 68
    new-instance v2, Ljava/security/SecureRandom;

    .line 69
    .line 70
    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v4, "plain"

    .line 74
    .line 75
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string v4, "password"

    .line 79
    .line 80
    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v4, "random"

    .line 84
    .line 85
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    array-length v4, v1

    .line 89
    add-int/lit8 v4, v4, 0xf

    .line 90
    .line 91
    const/16 v5, 0x10

    .line 92
    .line 93
    div-int/2addr v4, v5

    .line 94
    mul-int/2addr v4, v5

    .line 95
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    const-string v6, "copyOf(...)"

    .line 100
    .line 101
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    new-array v5, v5, [B

    .line 105
    .line 106
    invoke-virtual {v2, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 107
    .line 108
    .line 109
    const/4 v2, 0x1

    .line 110
    invoke-static {v2, p0, v5}, Ly1/Y0;->a(ILjava/lang/String;[B)Ljavax/crypto/Cipher;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {p0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    array-length v2, p0

    .line 119
    const/16 v4, 0x2c

    .line 120
    .line 121
    add-int/2addr v2, v4

    .line 122
    new-array v2, v2, [B

    .line 123
    .line 124
    sget-object v6, Ly1/Y0;->a:[B

    .line 125
    .line 126
    invoke-static {v6, v2, v3}, Lkotlin/collections/ArraysKt;->n([B[BI)V

    .line 127
    .line 128
    .line 129
    const-string v6, "MD5"

    .line 130
    .line 131
    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-virtual {v6, v1}, Ljava/security/MessageDigest;->digest([B)[B

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    const-string v7, "digest(...)"

    .line 140
    .line 141
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const/4 v7, 0x4

    .line 145
    invoke-static {v6, v2, v7}, Lkotlin/collections/ArraysKt;->n([B[BI)V

    .line 146
    .line 147
    .line 148
    array-length v1, v1

    .line 149
    int-to-long v6, v1

    .line 150
    :goto_0
    const/16 v1, 0x8

    .line 151
    .line 152
    if-ge v3, v1, :cond_1

    .line 153
    .line 154
    add-int/lit8 v8, v3, 0x14

    .line 155
    .line 156
    const-wide/16 v9, 0xff

    .line 157
    .line 158
    and-long/2addr v9, v6

    .line 159
    long-to-int v9, v9

    .line 160
    int-to-byte v9, v9

    .line 161
    aput-byte v9, v2, v8

    .line 162
    .line 163
    shr-long/2addr v6, v1

    .line 164
    add-int/lit8 v3, v3, 0x1

    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_1
    const/16 v1, 0x1c

    .line 168
    .line 169
    invoke-static {v5, v2, v1}, Lkotlin/collections/ArraysKt;->n([B[BI)V

    .line 170
    .line 171
    .line 172
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    invoke-static {p0, v2, v4}, Lkotlin/collections/ArraysKt;->n([B[BI)V

    .line 176
    .line 177
    .line 178
    move-object v1, v2

    .line 179
    :cond_2
    new-instance p0, Ljava/io/File;

    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    const-string v4, ".minhub.tmp"

    .line 190
    .line 191
    invoke-static {v3, v4}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-direct {p0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-static {p0, v1}, Lkotlin/io/FilesKt;->writeBytes(Ljava/io/File;[B)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-nez v2, :cond_3

    .line 206
    .line 207
    invoke-static {v0, v1}, Lkotlin/io/FilesKt;->writeBytes(Ljava/io/File;[B)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 211
    .line 212
    .line 213
    :cond_3
    return-void
.end method
