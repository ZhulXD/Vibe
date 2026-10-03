.class public abstract LD1/n;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "save"

    .line 2
    .line 3
    const-string v1, "savedata"

    .line 4
    .line 5
    const-string v2, "__macosx"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, LD1/n;->a:Ljava/util/Set;

    .line 16
    .line 17
    return-void
.end method

.method public static final a(Ljava/util/ArrayList;Ljava/io/File;Ljava/io/File;Ljava/io/File;Lcom/minhub/gamehub/data/GameEngine;LD1/k;)V
    .locals 6

    .line 1
    new-instance v0, LD1/l;

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/io/FilesKt;->toRelativeString(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-char v1, Ljava/io/File;->separatorChar:C

    .line 8
    .line 9
    const/16 v2, 0x2f

    .line 10
    .line 11
    invoke-static {p1, v1, v2}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;CC)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    move-object v1, p2

    .line 16
    move-object v2, p3

    .line 17
    move-object v3, p4

    .line 18
    move-object v4, p5

    .line 19
    invoke-direct/range {v0 .. v5}, LD1/l;-><init>(Ljava/io/File;Ljava/io/File;Lcom/minhub/gamehub/data/GameEngine;LD1/k;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static b(Ljava/io/File;)LD1/p;
    .locals 10

    .line 1
    const-string v0, "root"

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
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance p0, LD1/p;

    .line 14
    .line 15
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v2, LD1/o;->l:LD1/o;

    .line 20
    .line 21
    invoke-direct {p0, v0, v1, v1, v2}, LD1/p;-><init>(Ljava/util/List;ZZLD1/o;)V

    .line 22
    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v5, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 31
    .line 32
    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 33
    .line 34
    .line 35
    new-instance v6, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 36
    .line 37
    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 38
    .line 39
    .line 40
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 53
    .line 54
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    if-nez v2, :cond_9

    .line 67
    .line 68
    move-object v7, v0

    .line 69
    check-cast v7, Ljava/io/File;

    .line 70
    .line 71
    const/4 v9, 0x0

    .line 72
    move-object v8, p0

    .line 73
    move-object v4, p0

    .line 74
    invoke-static/range {v3 .. v9}, LD1/n;->c(Ljava/util/ArrayList;Ljava/io/File;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/io/File;Ljava/io/File;I)V

    .line 75
    .line 76
    .line 77
    new-instance p0, Ljava/util/LinkedHashMap;

    .line 78
    .line 79
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    move v2, v1

    .line 87
    :goto_1
    if-ge v2, v0, :cond_2

    .line 88
    .line 89
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    add-int/lit8 v2, v2, 0x1

    .line 94
    .line 95
    move-object v7, v4

    .line 96
    check-cast v7, LD1/l;

    .line 97
    .line 98
    iget-object v7, v7, LD1/l;->a:Ljava/io/File;

    .line 99
    .line 100
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    invoke-virtual {p0, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    if-nez v8, :cond_1

    .line 109
    .line 110
    new-instance v8, Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-interface {p0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    :cond_1
    check-cast v8, Ljava/util/List;

    .line 119
    .line 120
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    const/4 v3, 0x2

    .line 146
    const/4 v4, 0x1

    .line 147
    if-eqz v2, :cond_3

    .line 148
    .line 149
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    check-cast v2, Ljava/util/Map$Entry;

    .line 154
    .line 155
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    check-cast v2, Ljava/util/List;

    .line 160
    .line 161
    new-instance v7, LA1/e;

    .line 162
    .line 163
    const/16 v8, 0x19

    .line 164
    .line 165
    invoke-direct {v7, v8}, LA1/e;-><init>(I)V

    .line 166
    .line 167
    .line 168
    new-instance v8, LA1/e;

    .line 169
    .line 170
    const/16 v9, 0x1a

    .line 171
    .line 172
    invoke-direct {v8, v9}, LA1/e;-><init>(I)V

    .line 173
    .line 174
    .line 175
    new-array v3, v3, [Lkotlin/jvm/functions/Function1;

    .line 176
    .line 177
    aput-object v7, v3, v1

    .line 178
    .line 179
    aput-object v8, v3, v4

    .line 180
    .line 181
    invoke-static {v3}, Lkotlin/comparisons/ComparisonsKt;->compareBy([Lkotlin/jvm/functions/Function1;)Ljava/util/Comparator;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->s(Ljava/util/List;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    check-cast v2, LD1/l;

    .line 190
    .line 191
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_3
    new-instance p0, LA1/e;

    .line 196
    .line 197
    const/16 v2, 0x16

    .line 198
    .line 199
    invoke-direct {p0, v2}, LA1/e;-><init>(I)V

    .line 200
    .line 201
    .line 202
    new-instance v2, LA1/e;

    .line 203
    .line 204
    const/16 v7, 0x17

    .line 205
    .line 206
    invoke-direct {v2, v7}, LA1/e;-><init>(I)V

    .line 207
    .line 208
    .line 209
    new-instance v7, LA1/e;

    .line 210
    .line 211
    const/16 v8, 0x18

    .line 212
    .line 213
    invoke-direct {v7, v8}, LA1/e;-><init>(I)V

    .line 214
    .line 215
    .line 216
    const/4 v8, 0x3

    .line 217
    new-array v8, v8, [Lkotlin/jvm/functions/Function1;

    .line 218
    .line 219
    aput-object p0, v8, v1

    .line 220
    .line 221
    aput-object v2, v8, v4

    .line 222
    .line 223
    aput-object v7, v8, v3

    .line 224
    .line 225
    invoke-static {v8}, Lkotlin/comparisons/ComparisonsKt;->compareBy([Lkotlin/jvm/functions/Function1;)Ljava/util/Comparator;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-eqz v0, :cond_4

    .line 238
    .line 239
    iget-boolean v0, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 240
    .line 241
    if-eqz v0, :cond_4

    .line 242
    .line 243
    move v0, v4

    .line 244
    goto :goto_3

    .line 245
    :cond_4
    move v0, v1

    .line 246
    :goto_3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    if-eqz v2, :cond_5

    .line 251
    .line 252
    iget-boolean v2, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 253
    .line 254
    if-eqz v2, :cond_5

    .line 255
    .line 256
    move v1, v4

    .line 257
    :cond_5
    new-instance v2, LD1/p;

    .line 258
    .line 259
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    if-nez v3, :cond_6

    .line 264
    .line 265
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    check-cast v3, LD1/l;

    .line 270
    .line 271
    iget-object v3, v3, LD1/l;->c:Lcom/minhub/gamehub/data/GameEngine;

    .line 272
    .line 273
    sget-object v4, LD1/m;->a:[I

    .line 274
    .line 275
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 276
    .line 277
    .line 278
    move-result v3

    .line 279
    aget v3, v4, v3

    .line 280
    .line 281
    packed-switch v3, :pswitch_data_0

    .line 282
    .line 283
    .line 284
    sget-object v3, LD1/o;->c:LD1/o;

    .line 285
    .line 286
    goto :goto_4

    .line 287
    :pswitch_0
    sget-object v3, LD1/o;->i:LD1/o;

    .line 288
    .line 289
    goto :goto_4

    .line 290
    :pswitch_1
    sget-object v3, LD1/o;->h:LD1/o;

    .line 291
    .line 292
    goto :goto_4

    .line 293
    :pswitch_2
    sget-object v3, LD1/o;->g:LD1/o;

    .line 294
    .line 295
    goto :goto_4

    .line 296
    :pswitch_3
    sget-object v3, LD1/o;->f:LD1/o;

    .line 297
    .line 298
    goto :goto_4

    .line 299
    :pswitch_4
    sget-object v3, LD1/o;->e:LD1/o;

    .line 300
    .line 301
    goto :goto_4

    .line 302
    :pswitch_5
    sget-object v3, LD1/o;->d:LD1/o;

    .line 303
    .line 304
    goto :goto_4

    .line 305
    :pswitch_6
    sget-object v3, LD1/o;->b:LD1/o;

    .line 306
    .line 307
    goto :goto_4

    .line 308
    :cond_6
    if-eqz v0, :cond_7

    .line 309
    .line 310
    sget-object v3, LD1/o;->j:LD1/o;

    .line 311
    .line 312
    goto :goto_4

    .line 313
    :cond_7
    if-eqz v1, :cond_8

    .line 314
    .line 315
    sget-object v3, LD1/o;->k:LD1/o;

    .line 316
    .line 317
    goto :goto_4

    .line 318
    :cond_8
    sget-object v3, LD1/o;->l:LD1/o;

    .line 319
    .line 320
    :goto_4
    invoke-direct {v2, p0, v0, v1, v3}, LD1/p;-><init>(Ljava/util/List;ZZLD1/o;)V

    .line 321
    .line 322
    .line 323
    return-object v2

    .line 324
    :cond_9
    new-instance p0, LD1/p;

    .line 325
    .line 326
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    sget-object v2, LD1/o;->l:LD1/o;

    .line 331
    .line 332
    invoke-direct {p0, v0, v1, v1, v2}, LD1/p;-><init>(Ljava/util/List;ZZLD1/o;)V

    .line 333
    .line 334
    .line 335
    return-object p0

    .line 336
    nop

    .line 337
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final c(Ljava/util/ArrayList;Ljava/io/File;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/io/File;Ljava/io/File;I)V
    .locals 14

    .line 1
    move-object/from16 v3, p5

    .line 2
    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {v3}, Lcom/minhub/gamehub/data/RenpyEngineDetectionKt;->renpyScriptVersionEvidence(Ljava/io/File;)Lkotlin/Pair;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    move-object v4, v1

    .line 25
    check-cast v4, Lcom/minhub/gamehub/data/GameEngine;

    .line 26
    .line 27
    new-instance v1, Ljava/io/File;

    .line 28
    .line 29
    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object v5, LD1/k;->b:LD1/k;

    .line 33
    .line 34
    move-object v2, v1

    .line 35
    move-object v1, p1

    .line 36
    invoke-static/range {v0 .. v5}, LD1/n;->a(Ljava/util/ArrayList;Ljava/io/File;Ljava/io/File;Ljava/io/File;Lcom/minhub/gamehub/data/GameEngine;LD1/k;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const/4 v6, 0x0

    .line 44
    const/4 v13, 0x1

    .line 45
    const/4 v7, 0x0

    .line 46
    if-eqz v1, :cond_6

    .line 47
    .line 48
    new-instance v1, Ljava/io/File;

    .line 49
    .line 50
    const-string v2, "game"

    .line 51
    .line 52
    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    filled-new-array {v1, v3}, [Ljava/io/File;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_5

    .line 72
    .line 73
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    check-cast v2, Ljava/io/File;

    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    if-eqz v2, :cond_1

    .line 84
    .line 85
    array-length v4, v2

    .line 86
    move v5, v6

    .line 87
    :goto_0
    if-ge v5, v4, :cond_3

    .line 88
    .line 89
    aget-object v8, v2, v5

    .line 90
    .line 91
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    if-eqz v9, :cond_2

    .line 96
    .line 97
    const-string v9, "rpyc"

    .line 98
    .line 99
    invoke-static {v8, v8, v9, v13}, LE/b;->y(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Z)Z

    .line 100
    .line 101
    .line 102
    move-result v9

    .line 103
    if-nez v9, :cond_4

    .line 104
    .line 105
    invoke-static {v8}, Lkotlin/io/FilesKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    const-string v10, "rpa"

    .line 110
    .line 111
    invoke-static {v9, v10, v13}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    if-eqz v9, :cond_2

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_3
    move-object v8, v7

    .line 122
    :cond_4
    :goto_1
    if-eqz v8, :cond_1

    .line 123
    .line 124
    move-object v2, v8

    .line 125
    goto :goto_2

    .line 126
    :cond_5
    move-object v2, v7

    .line 127
    :goto_2
    if-eqz v2, :cond_6

    .line 128
    .line 129
    sget-object v4, Lcom/minhub/gamehub/data/GameEngine;->RENPY8:Lcom/minhub/gamehub/data/GameEngine;

    .line 130
    .line 131
    sget-object v5, LD1/k;->c:LD1/k;

    .line 132
    .line 133
    move-object v1, p1

    .line 134
    invoke-static/range {v0 .. v5}, LD1/n;->a(Ljava/util/ArrayList;Ljava/io/File;Ljava/io/File;Ljava/io/File;Lcom/minhub/gamehub/data/GameEngine;LD1/k;)V

    .line 135
    .line 136
    .line 137
    :cond_6
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    if-eqz v1, :cond_9

    .line 142
    .line 143
    array-length v2, v1

    .line 144
    move v3, v6

    .line 145
    :goto_3
    if-ge v3, v2, :cond_8

    .line 146
    .line 147
    aget-object v4, v1, v3

    .line 148
    .line 149
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    if-eqz v5, :cond_7

    .line 154
    .line 155
    const-string v5, "pck"

    .line 156
    .line 157
    invoke-static {v4, v4, v5, v13}, LE/b;->y(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Z)Z

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    if-eqz v5, :cond_7

    .line 162
    .line 163
    invoke-static {v4}, Ly1/L1;->C(Ljava/io/File;)Ly1/P0;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    if-eqz v5, :cond_7

    .line 168
    .line 169
    move-object v2, v4

    .line 170
    goto :goto_4

    .line 171
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_8
    move-object v2, v7

    .line 175
    :goto_4
    if-eqz v2, :cond_9

    .line 176
    .line 177
    sget-object v4, Lcom/minhub/gamehub/data/GameEngine;->GODOT:Lcom/minhub/gamehub/data/GameEngine;

    .line 178
    .line 179
    sget-object v5, LD1/k;->b:LD1/k;

    .line 180
    .line 181
    move-object v1, p1

    .line 182
    move-object/from16 v3, p5

    .line 183
    .line 184
    invoke-static/range {v0 .. v5}, LD1/n;->a(Ljava/util/ArrayList;Ljava/io/File;Ljava/io/File;Ljava/io/File;Lcom/minhub/gamehub/data/GameEngine;LD1/k;)V

    .line 185
    .line 186
    .line 187
    :cond_9
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    if-eqz v1, :cond_d

    .line 192
    .line 193
    array-length v2, v1

    .line 194
    move v3, v6

    .line 195
    :goto_5
    if-ge v3, v2, :cond_b

    .line 196
    .line 197
    aget-object v4, v1, v3

    .line 198
    .line 199
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    .line 200
    .line 201
    .line 202
    move-result v5

    .line 203
    if-eqz v5, :cond_a

    .line 204
    .line 205
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    const-string v8, "data"

    .line 210
    .line 211
    invoke-static {v5, v8, v13}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    if-eqz v5, :cond_a

    .line 216
    .line 217
    goto :goto_6

    .line 218
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_b
    move-object v4, v7

    .line 222
    :goto_6
    if-eqz v4, :cond_d

    .line 223
    .line 224
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    if-eqz v1, :cond_d

    .line 229
    .line 230
    array-length v2, v1

    .line 231
    move v3, v6

    .line 232
    :goto_7
    if-ge v3, v2, :cond_d

    .line 233
    .line 234
    aget-object v4, v1, v3

    .line 235
    .line 236
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    .line 237
    .line 238
    .line 239
    move-result v5

    .line 240
    if-eqz v5, :cond_c

    .line 241
    .line 242
    const-string v5, "rvdata2"

    .line 243
    .line 244
    invoke-static {v4, v4, v5, v13}, LE/b;->y(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Z)Z

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    if-eqz v5, :cond_c

    .line 249
    .line 250
    move-object v2, v4

    .line 251
    goto :goto_8

    .line 252
    :cond_c
    add-int/lit8 v3, v3, 0x1

    .line 253
    .line 254
    goto :goto_7

    .line 255
    :cond_d
    move-object v2, v7

    .line 256
    :goto_8
    if-eqz v2, :cond_e

    .line 257
    .line 258
    sget-object v4, Lcom/minhub/gamehub/data/GameEngine;->VXACE:Lcom/minhub/gamehub/data/GameEngine;

    .line 259
    .line 260
    sget-object v5, LD1/k;->b:LD1/k;

    .line 261
    .line 262
    move-object v1, p1

    .line 263
    move-object/from16 v3, p5

    .line 264
    .line 265
    invoke-static/range {v0 .. v5}, LD1/n;->a(Ljava/util/ArrayList;Ljava/io/File;Ljava/io/File;Ljava/io/File;Lcom/minhub/gamehub/data/GameEngine;LD1/k;)V

    .line 266
    .line 267
    .line 268
    goto :goto_9

    .line 269
    :cond_e
    move-object/from16 v3, p5

    .line 270
    .line 271
    :goto_9
    new-instance v1, Ljava/io/File;

    .line 272
    .line 273
    const-string v2, "startup.tjs"

    .line 274
    .line 275
    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    if-eqz v2, :cond_f

    .line 283
    .line 284
    move-object v2, v1

    .line 285
    goto :goto_a

    .line 286
    :cond_f
    move-object v2, v7

    .line 287
    :goto_a
    if-eqz v2, :cond_10

    .line 288
    .line 289
    sget-object v4, Lcom/minhub/gamehub/data/GameEngine;->KIRI:Lcom/minhub/gamehub/data/GameEngine;

    .line 290
    .line 291
    sget-object v5, LD1/k;->b:LD1/k;

    .line 292
    .line 293
    move-object v1, p1

    .line 294
    invoke-static/range {v0 .. v5}, LD1/n;->a(Ljava/util/ArrayList;Ljava/io/File;Ljava/io/File;Ljava/io/File;Lcom/minhub/gamehub/data/GameEngine;LD1/k;)V

    .line 295
    .line 296
    .line 297
    :cond_10
    new-instance v1, Ljava/io/File;

    .line 298
    .line 299
    const-string v2, "index.html"

    .line 300
    .line 301
    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    if-eqz v2, :cond_11

    .line 309
    .line 310
    move-object v2, v1

    .line 311
    goto :goto_b

    .line 312
    :cond_11
    move-object v2, v7

    .line 313
    :goto_b
    if-eqz v2, :cond_16

    .line 314
    .line 315
    new-instance v1, Ljava/io/File;

    .line 316
    .line 317
    const-string v4, "js/rmmz_core.js"

    .line 318
    .line 319
    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    if-eqz v1, :cond_13

    .line 327
    .line 328
    sget-object v7, Lcom/minhub/gamehub/data/GameEngine;->MZ:Lcom/minhub/gamehub/data/GameEngine;

    .line 329
    .line 330
    :cond_12
    :goto_c
    move-object v4, v7

    .line 331
    goto :goto_d

    .line 332
    :cond_13
    new-instance v1, Ljava/io/File;

    .line 333
    .line 334
    const-string v4, "js/rpg_core.js"

    .line 335
    .line 336
    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    if-eqz v1, :cond_14

    .line 344
    .line 345
    sget-object v7, Lcom/minhub/gamehub/data/GameEngine;->MV:Lcom/minhub/gamehub/data/GameEngine;

    .line 346
    .line 347
    goto :goto_c

    .line 348
    :cond_14
    new-instance v1, Ljava/io/File;

    .line 349
    .line 350
    const-string v4, "tyrano/tyrano.js"

    .line 351
    .line 352
    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 356
    .line 357
    .line 358
    move-result v1

    .line 359
    if-eqz v1, :cond_12

    .line 360
    .line 361
    sget-object v7, Lcom/minhub/gamehub/data/GameEngine;->TYRANO:Lcom/minhub/gamehub/data/GameEngine;

    .line 362
    .line 363
    goto :goto_c

    .line 364
    :goto_d
    if-eqz v4, :cond_15

    .line 365
    .line 366
    sget-object v5, LD1/k;->b:LD1/k;

    .line 367
    .line 368
    move-object v1, p1

    .line 369
    invoke-static/range {v0 .. v5}, LD1/n;->a(Ljava/util/ArrayList;Ljava/io/File;Ljava/io/File;Ljava/io/File;Lcom/minhub/gamehub/data/GameEngine;LD1/k;)V

    .line 370
    .line 371
    .line 372
    goto :goto_e

    .line 373
    :cond_15
    sget-object v4, Lcom/minhub/gamehub/data/GameEngine;->HTML:Lcom/minhub/gamehub/data/GameEngine;

    .line 374
    .line 375
    sget-object v5, LD1/k;->d:LD1/k;

    .line 376
    .line 377
    move-object v1, p1

    .line 378
    move-object/from16 v3, p5

    .line 379
    .line 380
    invoke-static/range {v0 .. v5}, LD1/n;->a(Ljava/util/ArrayList;Ljava/io/File;Ljava/io/File;Ljava/io/File;Lcom/minhub/gamehub/data/GameEngine;LD1/k;)V

    .line 381
    .line 382
    .line 383
    :cond_16
    :goto_e
    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->c(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    if-nez v1, :cond_17

    .line 391
    .line 392
    goto/16 :goto_12

    .line 393
    .line 394
    :cond_17
    array-length v2, v1

    .line 395
    move v3, v6

    .line 396
    :goto_f
    if-ge v3, v2, :cond_1e

    .line 397
    .line 398
    aget-object v11, v1, v3

    .line 399
    .line 400
    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    .line 401
    .line 402
    .line 403
    move-result v0

    .line 404
    if-eqz v0, :cond_19

    .line 405
    .line 406
    const-string v0, "xp3"

    .line 407
    .line 408
    invoke-static {v11, v11, v0, v13}, LE/b;->y(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Z)Z

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    if-eqz v0, :cond_18

    .line 413
    .line 414
    move-object/from16 v8, p2

    .line 415
    .line 416
    iput-boolean v13, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 417
    .line 418
    move-object/from16 v9, p3

    .line 419
    .line 420
    goto/16 :goto_11

    .line 421
    .line 422
    :cond_18
    move-object/from16 v8, p2

    .line 423
    .line 424
    invoke-static {v11}, Lkotlin/io/FilesKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    const-string v4, "rgss3a"

    .line 429
    .line 430
    invoke-static {v0, v4, v13}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 431
    .line 432
    .line 433
    move-result v0

    .line 434
    move-object/from16 v9, p3

    .line 435
    .line 436
    if-eqz v0, :cond_1d

    .line 437
    .line 438
    iput-boolean v13, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 439
    .line 440
    goto/16 :goto_11

    .line 441
    .line 442
    :cond_19
    move-object/from16 v8, p2

    .line 443
    .line 444
    move-object/from16 v9, p3

    .line 445
    .line 446
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    .line 447
    .line 448
    .line 449
    move-result v0

    .line 450
    if-eqz v0, :cond_1d

    .line 451
    .line 452
    add-int/lit8 v12, p6, 0x1

    .line 453
    .line 454
    const/4 v0, 0x4

    .line 455
    if-lt v12, v0, :cond_1a

    .line 456
    .line 457
    goto/16 :goto_11

    .line 458
    .line 459
    :cond_1a
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    const-string v4, "getName(...)"

    .line 464
    .line 465
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    const-string v5, "."

    .line 469
    .line 470
    invoke-static {v0, v5}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 471
    .line 472
    .line 473
    move-result v0

    .line 474
    if-nez v0, :cond_1d

    .line 475
    .line 476
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 484
    .line 485
    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    const-string v4, "toLowerCase(...)"

    .line 490
    .line 491
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    sget-object v4, LD1/n;->a:Ljava/util/Set;

    .line 495
    .line 496
    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 497
    .line 498
    .line 499
    move-result v0

    .line 500
    if-eqz v0, :cond_1b

    .line 501
    .line 502
    goto :goto_11

    .line 503
    :cond_1b
    invoke-static/range {p4 .. p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 504
    .line 505
    .line 506
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 507
    .line 508
    .line 509
    const-string v0, "root"

    .line 510
    .line 511
    move-object/from16 v10, p4

    .line 512
    .line 513
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    const-string v0, "candidate"

    .line 517
    .line 518
    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 522
    .line 523
    invoke-virtual {v11}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    invoke-static {v0}, Landroidx/core/view/accessibility/a;->k(Ljava/io/File;)Ljava/nio/file/Path;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    invoke-virtual {v10}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 532
    .line 533
    .line 534
    move-result-object v4

    .line 535
    invoke-static {v4}, Landroidx/core/view/accessibility/a;->k(Ljava/io/File;)Ljava/nio/file/Path;

    .line 536
    .line 537
    .line 538
    move-result-object v4

    .line 539
    invoke-static {v0, v4}, Landroidx/core/view/accessibility/a;->B(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    .line 540
    .line 541
    .line 542
    move-result v0

    .line 543
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    goto :goto_10

    .line 552
    :catchall_0
    move-exception v0

    .line 553
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 554
    .line 555
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    :goto_10
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 564
    .line 565
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 566
    .line 567
    .line 568
    move-result v5

    .line 569
    if-eqz v5, :cond_1c

    .line 570
    .line 571
    move-object v0, v4

    .line 572
    :cond_1c
    check-cast v0, Ljava/lang/Boolean;

    .line 573
    .line 574
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 575
    .line 576
    .line 577
    move-result v0

    .line 578
    if-eqz v0, :cond_1d

    .line 579
    .line 580
    move-object v6, p0

    .line 581
    move-object v7, p1

    .line 582
    invoke-static/range {v6 .. v12}, LD1/n;->c(Ljava/util/ArrayList;Ljava/io/File;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/io/File;Ljava/io/File;I)V

    .line 583
    .line 584
    .line 585
    :cond_1d
    :goto_11
    add-int/lit8 v3, v3, 0x1

    .line 586
    .line 587
    goto/16 :goto_f

    .line 588
    .line 589
    :cond_1e
    :goto_12
    return-void
.end method
