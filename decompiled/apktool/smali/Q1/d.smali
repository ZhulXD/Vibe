.class public final LQ1/d;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final a:I

.field public b:LH1/b;

.field public volatile c:Z

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Lkotlin/collections/ArrayDeque;

.field public final i:Ljava/util/HashSet;

.field public j:Z

.field public k:LQ1/a;

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    and-int/lit8 v3, p2, 0x8

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    move-object v3, v4

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object/from16 v3, p5

    .line 15
    .line 16
    :goto_0
    and-int/lit8 v5, p2, 0x10

    .line 17
    .line 18
    if-eqz v5, :cond_1

    .line 19
    .line 20
    move-object v5, v4

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move-object/from16 v5, p6

    .line 23
    .line 24
    :goto_1
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    move/from16 v6, p1

    .line 28
    .line 29
    iput v6, v0, LQ1/d;->a:I

    .line 30
    .line 31
    iput-object v4, v0, LQ1/d;->b:LH1/b;

    .line 32
    .line 33
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    const-string v7, "toString(...)"

    .line 42
    .line 43
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 v6, 0x1

    .line 47
    iput-boolean v6, v0, LQ1/d;->c:Z

    .line 48
    .line 49
    const-string v6, "unknown"

    .line 50
    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    const-string v15, "KIRI"

    .line 54
    .line 55
    const-string v16, "GODOT"

    .line 56
    .line 57
    const-string v7, "MV"

    .line 58
    .line 59
    const-string v8, "MZ"

    .line 60
    .line 61
    const-string v9, "TYRANO"

    .line 62
    .line 63
    const-string v10, "HTML"

    .line 64
    .line 65
    const-string v11, "BROWSE"

    .line 66
    .line 67
    const-string v12, "VXACE"

    .line 68
    .line 69
    const-string v13, "RENPY7"

    .line 70
    .line 71
    const-string v14, "RENPY8"

    .line 72
    .line 73
    filled-new-array/range {v7 .. v16}, [Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    invoke-static {v7}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    invoke-interface {v7, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-eqz v7, :cond_2

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    move-object v1, v4

    .line 89
    :goto_2
    if-nez v1, :cond_4

    .line 90
    .line 91
    :cond_3
    move-object v1, v6

    .line 92
    :cond_4
    iput-object v1, v0, LQ1/d;->d:Ljava/lang/String;

    .line 93
    .line 94
    if-eqz v2, :cond_6

    .line 95
    .line 96
    const-string v11, "i686"

    .line 97
    .line 98
    const-string v12, "x86_64"

    .line 99
    .line 100
    const-string v7, "arm"

    .line 101
    .line 102
    const-string v8, "aarch64"

    .line 103
    .line 104
    const-string v9, "arm64"

    .line 105
    .line 106
    const-string v10, "x86"

    .line 107
    .line 108
    filled-new-array/range {v7 .. v12}, [Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_5

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_5
    move-object v2, v4

    .line 124
    :goto_3
    if-nez v2, :cond_7

    .line 125
    .line 126
    :cond_6
    move-object v2, v6

    .line 127
    :cond_7
    iput-object v2, v0, LQ1/d;->e:Ljava/lang/String;

    .line 128
    .line 129
    if-eqz v3, :cond_9

    .line 130
    .line 131
    const-string v1, "com.android.chrome"

    .line 132
    .line 133
    const-string v2, "com.google.android.trichromelibrary"

    .line 134
    .line 135
    const-string v7, "com.google.android.webview"

    .line 136
    .line 137
    const-string v8, "com.android.webview"

    .line 138
    .line 139
    filled-new-array {v7, v8, v1, v2}, [Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-eqz v1, :cond_8

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_8
    move-object v3, v4

    .line 155
    :goto_4
    if-nez v3, :cond_a

    .line 156
    .line 157
    :cond_9
    move-object v3, v6

    .line 158
    :cond_a
    iput-object v3, v0, LQ1/d;->f:Ljava/lang/String;

    .line 159
    .line 160
    if-eqz v5, :cond_d

    .line 161
    .line 162
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    const/16 v2, 0x28

    .line 167
    .line 168
    if-gt v1, v2, :cond_b

    .line 169
    .line 170
    new-instance v1, Lkotlin/text/Regex;

    .line 171
    .line 172
    const-string v2, "[0-9]+(\\.[0-9]+){0,5}"

    .line 173
    .line 174
    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, v5}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-eqz v1, :cond_b

    .line 182
    .line 183
    move-object v4, v5

    .line 184
    :cond_b
    if-nez v4, :cond_c

    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_c
    move-object v6, v4

    .line 188
    :cond_d
    :goto_5
    iput-object v6, v0, LQ1/d;->g:Ljava/lang/String;

    .line 189
    .line 190
    new-instance v1, Lkotlin/collections/ArrayDeque;

    .line 191
    .line 192
    invoke-direct {v1}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 193
    .line 194
    .line 195
    iput-object v1, v0, LQ1/d;->h:Lkotlin/collections/ArrayDeque;

    .line 196
    .line 197
    new-instance v1, Ljava/util/HashSet;

    .line 198
    .line 199
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 200
    .line 201
    .line 202
    iput-object v1, v0, LQ1/d;->i:Ljava/util/HashSet;

    .line 203
    .line 204
    sget-object v1, LQ1/a;->b:LQ1/a;

    .line 205
    .line 206
    iput-object v1, v0, LQ1/d;->k:LQ1/a;

    .line 207
    .line 208
    const-string v1, "not-submitted"

    .line 209
    .line 210
    iput-object v1, v0, LQ1/d;->l:Ljava/lang/String;

    .line 211
    .line 212
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Z)LQ1/c;
    .locals 11

    .line 1
    const-string v0, "---\n"

    .line 2
    .line 3
    const-string v1, "[Runtime observation]\nactual=legacy; engine="

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    const-string v2, "title"

    .line 7
    .line 8
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v2, p0, LQ1/d;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-object v3

    .line 18
    :cond_0
    const/16 v2, 0x400

    .line 19
    .line 20
    :try_start_1
    invoke-static {p1, v2}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Lkotlin/text/StringsKt;->lineSequence(Ljava/lang/CharSequence;)Lkotlin/sequences/Sequence;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lkotlin/sequences/SequencesKt;->firstOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Ljava/lang/String;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    const/16 v2, 0xdc

    .line 47
    .line 48
    invoke-static {p1, v2}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    move-object p1, v0

    .line 55
    goto/16 :goto_1

    .line 56
    .line 57
    :cond_1
    move-object p1, v3

    .line 58
    :goto_0
    if-nez p1, :cond_2

    .line 59
    .line 60
    const-string p1, ""

    .line 61
    .line 62
    :cond_2
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    monitor-exit p0

    .line 69
    return-object v3

    .line 70
    :cond_3
    :try_start_2
    new-instance v2, Lkotlin/text/Regex;

    .line 71
    .line 72
    const-string v4, ":[0-9]+:[0-9]+"

    .line 73
    .line 74
    invoke-direct {v2, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v4, ""

    .line 78
    .line 79
    invoke-virtual {v2, p1, v4}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    new-instance v4, Lkotlin/text/Regex;

    .line 84
    .line 85
    const-string v5, "\\b\\d+\\b"

    .line 86
    .line 87
    invoke-direct {v4, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string v5, "#"

    .line 91
    .line 92
    invoke-virtual {v4, v2, v5}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    new-instance v4, Lkotlin/text/Regex;

    .line 97
    .line 98
    const-string v5, "\\s+"

    .line 99
    .line 100
    invoke-direct {v4, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string v5, " "

    .line 104
    .line 105
    invoke-virtual {v4, v2, v5}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 110
    .line 111
    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    const-string v4, "toLowerCase(...)"

    .line 116
    .line 117
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const/16 v4, 0xa0

    .line 121
    .line 122
    invoke-static {v2, v4}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    if-nez p3, :cond_5

    .line 127
    .line 128
    iget-object p3, p0, LQ1/d;->i:Ljava/util/HashSet;

    .line 129
    .line 130
    invoke-virtual {p3}, Ljava/util/HashSet;->size()I

    .line 131
    .line 132
    .line 133
    move-result p3

    .line 134
    const/16 v4, 0x100

    .line 135
    .line 136
    if-ge p3, v4, :cond_4

    .line 137
    .line 138
    iget-object p3, p0, LQ1/d;->i:Ljava/util/HashSet;

    .line 139
    .line 140
    invoke-virtual {p3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    if-nez p3, :cond_5

    .line 145
    .line 146
    :cond_4
    monitor-exit p0

    .line 147
    return-object v3

    .line 148
    :cond_5
    :try_start_3
    iget-object p3, p0, LQ1/d;->d:Ljava/lang/String;

    .line 149
    .line 150
    iget v2, p0, LQ1/d;->a:I

    .line 151
    .line 152
    iget-object v4, p0, LQ1/d;->e:Ljava/lang/String;

    .line 153
    .line 154
    iget-object v5, p0, LQ1/d;->f:Ljava/lang/String;

    .line 155
    .line 156
    iget-object v6, p0, LQ1/d;->g:Ljava/lang/String;

    .line 157
    .line 158
    iget-object v7, p0, LQ1/d;->k:LQ1/a;

    .line 159
    .line 160
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    iget-object v8, p0, LQ1/d;->l:Ljava/lang/String;

    .line 165
    .line 166
    iget-object v9, p0, LQ1/d;->b:LH1/b;

    .line 167
    .line 168
    invoke-static {v9}, La/a;->b(LH1/b;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v9

    .line 172
    new-instance v10, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string p3, "; engineVersion=unknown; core=unknown/game-provided\nsdk="

    .line 181
    .line 182
    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string p3, "; processArch="

    .line 189
    .line 190
    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string p3, "; webView="

    .line 197
    .line 198
    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string p3, "; webViewVersion="

    .line 205
    .line 206
    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string p3, "\npersistedLock="

    .line 213
    .line 214
    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string p3, "; pinnedApplied=false\nota="

    .line 221
    .line 222
    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string p3, "\n"

    .line 229
    .line 230
    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p3

    .line 240
    if-eqz p2, :cond_6

    .line 241
    .line 242
    const/16 v1, 0x5dc

    .line 243
    .line 244
    invoke-static {p2, v1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    :cond_6
    if-eqz v3, :cond_7

    .line 249
    .line 250
    new-instance p2, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string v0, "\n"

    .line 259
    .line 260
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p2

    .line 267
    if-nez p2, :cond_8

    .line 268
    .line 269
    :cond_7
    const-string p2, ""

    .line 270
    .line 271
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    const-string p2, "---\n"

    .line 283
    .line 284
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object p2

    .line 291
    new-instance v0, LQ1/c;

    .line 292
    .line 293
    const/16 v1, 0x157c

    .line 294
    .line 295
    invoke-static {p2, v1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    iget-object v4, p0, LQ1/d;->h:Lkotlin/collections/ArrayDeque;

    .line 300
    .line 301
    const-string v5, "\n"

    .line 302
    .line 303
    const/4 v8, 0x0

    .line 304
    const/16 v9, 0x3e

    .line 305
    .line 306
    const/4 v6, 0x0

    .line 307
    const/4 v7, 0x0

    .line 308
    invoke-static/range {v4 .. v9}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v4

    .line 312
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 313
    .line 314
    .line 315
    move-result p2

    .line 316
    sub-int/2addr v1, p2

    .line 317
    const/4 p2, 0x0

    .line 318
    invoke-static {v1, p2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 319
    .line 320
    .line 321
    move-result p2

    .line 322
    invoke-static {v4, p2}, Lkotlin/text/StringsKt;->takeLast(Ljava/lang/String;I)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object p2

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p2

    .line 341
    invoke-direct {v0, p1, v3, p3, p2}, LQ1/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 342
    .line 343
    .line 344
    monitor-exit p0

    .line 345
    return-object v0

    .line 346
    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 347
    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, LQ1/d;->c:Z

    .line 4
    .line 5
    iput-boolean v0, p0, LQ1/d;->j:Z

    .line 6
    .line 7
    iget-object v0, p0, LQ1/d;->h:Lkotlin/collections/ArrayDeque;

    .line 8
    .line 9
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->clear()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, LQ1/d;->i:Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, LQ1/d;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw v0
.end method

.method public final declared-synchronized d(LQ1/b;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "status"

    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "channel"

    .line 8
    .line 9
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p0, LQ1/d;->c:Z

    .line 13
    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "toLowerCase(...)"

    .line 27
    .line 28
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-ltz v0, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p2, 0x0

    .line 41
    :goto_0
    if-nez p2, :cond_2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_2

    .line 46
    :cond_1
    :goto_1
    const-string p2, "unknown"

    .line 47
    .line 48
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p1, "; channel="

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p1, "; observed-cached-candidate="

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p1, "; non-atomic; execution=unverified"

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iput-object p1, p0, LQ1/d;->l:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .line 83
    :cond_3
    monitor-exit p0

    .line 84
    return-void

    .line 85
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    throw p1
.end method
