.class public final LC1/j0;
.super LP/W;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final synthetic d:I

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    iput p1, p0, LC1/j0;->d:I

    packed-switch p1, :pswitch_data_0

    .line 12
    invoke-direct {p0}, LP/W;-><init>()V

    .line 13
    new-instance p1, LP/N;

    invoke-direct {p1, p0}, LP/N;-><init>(LC1/j0;)V

    .line 14
    new-instance v0, LP/f;

    new-instance v1, LA1/b;

    invoke-direct {v1, p0}, LA1/b;-><init>(Ljava/lang/Object;)V

    .line 15
    sget-object v2, LP/c;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 16
    :try_start_0
    sget-object v3, LP/c;->b:Ljava/util/concurrent/ExecutorService;

    if-nez v3, :cond_0

    const/4 v3, 0x2

    .line 17
    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    sput-object v3, LP/c;->b:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    sget-object v2, LP/c;->b:Ljava/util/concurrent/ExecutorService;

    .line 20
    new-instance v3, LA1/b;

    invoke-direct {v3, v2}, LA1/b;-><init>(Ljava/lang/Object;)V

    .line 21
    invoke-direct {v0, v1, v3}, LP/f;-><init>(LA1/b;LA1/b;)V

    iput-object v0, p0, LC1/j0;->e:Ljava/lang/Object;

    .line 22
    iget-object v0, v0, LP/f;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 23
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 24
    :pswitch_0
    invoke-direct {p0}, LP/W;-><init>()V

    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(LA1/r;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, LC1/j0;->d:I

    const-string v0, "onInstall"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, LP/W;-><init>()V

    .line 2
    iput-object p1, p0, LC1/j0;->e:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LC1/j0;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LC1/a1;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LC1/j0;->d:I

    const-string v0, "onClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, LC1/j0;-><init>(I)V

    .line 5
    iput-object p1, p0, LC1/j0;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LC1/h;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LC1/j0;->d:I

    const-string v0, "onClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, LP/W;-><init>()V

    .line 7
    iput-object p1, p0, LC1/j0;->e:Ljava/lang/Object;

    .line 8
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LC1/j0;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;LA1/r;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LC1/j0;->d:I

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClick"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, LP/W;-><init>()V

    .line 10
    iput-object p1, p0, LC1/j0;->e:Ljava/lang/Object;

    .line 11
    iput-object p2, p0, LC1/j0;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, LC1/j0;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LC1/j0;->f:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0

    .line 15
    :pswitch_0
    iget-object v0, p0, LC1/j0;->e:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :pswitch_1
    iget-object v0, p0, LC1/j0;->f:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    return v0

    .line 33
    :pswitch_2
    iget-object v0, p0, LC1/j0;->e:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    return v0

    .line 42
    :pswitch_3
    iget-object v0, p0, LC1/j0;->e:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, LP/f;

    .line 45
    .line 46
    iget-object v0, v0, LP/f;->f:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    return v0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(LP/y0;I)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    iget v2, v0, LC1/j0;->d:I

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const-class v4, Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    const/4 v5, 0x3

    .line 11
    const-string v6, "item"

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    const/16 v9, 0x8

    .line 15
    .line 16
    const-string v10, "holder"

    .line 17
    .line 18
    packed-switch v2, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    move-object/from16 v2, p1

    .line 22
    .line 23
    check-cast v2, LC1/W1;

    .line 24
    .line 25
    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v3, v0, LC1/j0;->f:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v3, Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;

    .line 37
    .line 38
    iget-object v3, v2, LC1/W1;->x:Landroid/widget/TextView;

    .line 39
    .line 40
    iget-object v4, v2, LC1/W1;->w:Landroid/widget/TextView;

    .line 41
    .line 42
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v6, v2, LC1/W1;->u:Landroid/widget/TextView;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;->getTitle()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    iget-object v6, v2, LC1/W1;->v:Landroid/widget/TextView;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;->getVersion()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    invoke-static {v8}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    if-eqz v10, :cond_0

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;->getSlug()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    :cond_0
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;->getDescription()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-nez v6, :cond_1

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;->getDescription()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    :goto_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;->getSupportedEngines()Ljava/util/Set;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    new-instance v8, Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 108
    .line 109
    .line 110
    move-result v10

    .line 111
    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    .line 113
    .line 114
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v10

    .line 122
    if-eqz v10, :cond_2

    .line 123
    .line 124
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    check-cast v10, Lcom/minhub/gamehub/data/GameEngine;

    .line 129
    .line 130
    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v10

    .line 134
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_2
    invoke-interface {v4, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;->getProblemTags()Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    invoke-static {v6, v5}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 150
    .line 151
    .line 152
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object v10

    .line 156
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    if-nez v4, :cond_3

    .line 161
    .line 162
    const/4 v14, 0x0

    .line 163
    const/16 v15, 0x3e

    .line 164
    .line 165
    const-string v11, " \u00b7 "

    .line 166
    .line 167
    const/4 v12, 0x0

    .line 168
    const/4 v13, 0x0

    .line 169
    invoke-static/range {v10 .. v15}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_3
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 181
    .line 182
    .line 183
    :goto_2
    iget-object v3, v2, LC1/W1;->y:Landroid/view/View;

    .line 184
    .line 185
    iget-object v2, v2, LC1/W1;->z:LC1/j0;

    .line 186
    .line 187
    new-instance v4, LC1/j;

    .line 188
    .line 189
    const/16 v5, 0xf

    .line 190
    .line 191
    invoke-direct {v4, v5, v2, v1}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :pswitch_0
    move-object/from16 v2, p1

    .line 199
    .line 200
    check-cast v2, LC1/P1;

    .line 201
    .line 202
    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget-object v3, v0, LC1/j0;->e:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast v3, Ljava/util/List;

    .line 208
    .line 209
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    const-string v5, "get(...)"

    .line 214
    .line 215
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    check-cast v3, Ljava/lang/String;

    .line 219
    .line 220
    const-string v5, "url"

    .line 221
    .line 222
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    iget-object v5, v2, LC1/P1;->u:LA1/d;

    .line 226
    .line 227
    iget-object v6, v5, LA1/d;->d:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast v6, Landroid/widget/ImageView;

    .line 230
    .line 231
    invoke-static {v6}, Lcom/bumptech/glide/b;->c(Landroid/view/View;)Lcom/bumptech/glide/n;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    invoke-static {v3}, Lcom/bumptech/glide/c;->g(Ljava/lang/String;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    new-instance v7, Lcom/bumptech/glide/k;

    .line 243
    .line 244
    iget-object v8, v6, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/b;

    .line 245
    .line 246
    iget-object v9, v6, Lcom/bumptech/glide/n;->c:Landroid/content/Context;

    .line 247
    .line 248
    invoke-direct {v7, v8, v6, v4, v9}, Lcom/bumptech/glide/k;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/n;Ljava/lang/Class;Landroid/content/Context;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v7, v3}, Lcom/bumptech/glide/k;->x(Ljava/lang/Object;)Lcom/bumptech/glide/k;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    sget-object v4, Lm0/n;->b:Lm0/n;

    .line 259
    .line 260
    new-instance v4, Lm0/h;

    .line 261
    .line 262
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v3, v4}, Lu0/a;->p(Lm0/h;)Lu0/a;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    check-cast v3, Lcom/bumptech/glide/k;

    .line 270
    .line 271
    iget-object v4, v5, LA1/d;->d:Ljava/lang/Object;

    .line 272
    .line 273
    check-cast v4, Landroid/widget/ImageView;

    .line 274
    .line 275
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/k;->v(Landroid/widget/ImageView;)Lv0/a;

    .line 276
    .line 277
    .line 278
    iget-object v3, v5, LA1/d;->c:Ljava/lang/Object;

    .line 279
    .line 280
    check-cast v3, Lcom/google/android/material/card/MaterialCardView;

    .line 281
    .line 282
    iget-object v2, v2, LC1/P1;->v:LC1/j0;

    .line 283
    .line 284
    new-instance v4, LC1/O1;

    .line 285
    .line 286
    invoke-direct {v4, v2, v1}, LC1/O1;-><init>(LC1/j0;I)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    .line 291
    .line 292
    return-void

    .line 293
    :pswitch_1
    move-object/from16 v2, p1

    .line 294
    .line 295
    check-cast v2, LC1/D1;

    .line 296
    .line 297
    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    iget-object v10, v0, LC1/j0;->f:Ljava/lang/Object;

    .line 301
    .line 302
    check-cast v10, Ljava/util/List;

    .line 303
    .line 304
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    check-cast v1, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 309
    .line 310
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    iget-object v10, v2, LC1/D1;->u:Lk/v;

    .line 314
    .line 315
    iget-object v11, v10, Lk/v;->f:Ljava/lang/Object;

    .line 316
    .line 317
    check-cast v11, Landroid/widget/TextView;

    .line 318
    .line 319
    iget-object v12, v10, Lk/v;->b:Ljava/lang/Object;

    .line 320
    .line 321
    check-cast v12, Landroid/widget/ImageView;

    .line 322
    .line 323
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getTitle()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v13

    .line 327
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    .line 329
    .line 330
    iget-object v11, v10, Lk/v;->d:Ljava/lang/Object;

    .line 331
    .line 332
    check-cast v11, Landroid/widget/TextView;

    .line 333
    .line 334
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getCategories()Ljava/util/List;

    .line 338
    .line 339
    .line 340
    move-result-object v13

    .line 341
    new-instance v14, Ljava/util/ArrayList;

    .line 342
    .line 343
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .line 345
    .line 346
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 347
    .line 348
    .line 349
    move-result-object v13

    .line 350
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 351
    .line 352
    .line 353
    move-result v15

    .line 354
    const-string v7, "update"

    .line 355
    .line 356
    const-string v8, "fixed"

    .line 357
    .line 358
    if-eqz v15, :cond_7

    .line 359
    .line 360
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v15

    .line 364
    move-object/from16 v16, v15

    .line 365
    .line 366
    check-cast v16, Ljava/lang/String;

    .line 367
    .line 368
    invoke-static/range {v16 .. v16}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 369
    .line 370
    .line 371
    move-result v17

    .line 372
    if-nez v17, :cond_6

    .line 373
    .line 374
    invoke-static/range {v16 .. v16}, LC1/U;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v9

    .line 378
    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v8

    .line 382
    if-eqz v8, :cond_4

    .line 383
    .line 384
    sget-object v9, LC1/g0;->c:LC1/g0;

    .line 385
    .line 386
    goto :goto_4

    .line 387
    :cond_4
    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    move-result v7

    .line 391
    if-eqz v7, :cond_5

    .line 392
    .line 393
    sget-object v9, LC1/g0;->d:LC1/g0;

    .line 394
    .line 395
    goto :goto_4

    .line 396
    :cond_5
    const/4 v9, 0x0

    .line 397
    :goto_4
    if-nez v9, :cond_6

    .line 398
    .line 399
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    :cond_6
    const/4 v7, 0x0

    .line 403
    const/16 v9, 0x8

    .line 404
    .line 405
    goto :goto_3

    .line 406
    :cond_7
    invoke-static {v14, v3}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 407
    .line 408
    .line 409
    move-result-object v16

    .line 410
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->isEmpty()Z

    .line 411
    .line 412
    .line 413
    move-result v9

    .line 414
    if-nez v9, :cond_8

    .line 415
    .line 416
    const/16 v20, 0x0

    .line 417
    .line 418
    const/16 v21, 0x3e

    .line 419
    .line 420
    const-string v17, " \u2022 "

    .line 421
    .line 422
    const/16 v18, 0x0

    .line 423
    .line 424
    const/16 v19, 0x0

    .line 425
    .line 426
    invoke-static/range {v16 .. v21}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v3

    .line 430
    goto :goto_6

    .line 431
    :cond_8
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getTags()Ljava/util/List;

    .line 432
    .line 433
    .line 434
    move-result-object v9

    .line 435
    new-instance v13, Ljava/util/ArrayList;

    .line 436
    .line 437
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 438
    .line 439
    .line 440
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 441
    .line 442
    .line 443
    move-result-object v9

    .line 444
    :cond_9
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 445
    .line 446
    .line 447
    move-result v14

    .line 448
    if-eqz v14, :cond_a

    .line 449
    .line 450
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v14

    .line 454
    move-object v15, v14

    .line 455
    check-cast v15, Ljava/lang/String;

    .line 456
    .line 457
    invoke-static {v15}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 458
    .line 459
    .line 460
    move-result v15

    .line 461
    if-nez v15, :cond_9

    .line 462
    .line 463
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    goto :goto_5

    .line 467
    :cond_a
    invoke-static {v13, v3}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 468
    .line 469
    .line 470
    move-result-object v16

    .line 471
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->isEmpty()Z

    .line 472
    .line 473
    .line 474
    move-result v3

    .line 475
    if-nez v3, :cond_b

    .line 476
    .line 477
    const/16 v20, 0x0

    .line 478
    .line 479
    const/16 v21, 0x3e

    .line 480
    .line 481
    const-string v17, " \u2022 "

    .line 482
    .line 483
    const/16 v18, 0x0

    .line 484
    .line 485
    const/16 v19, 0x0

    .line 486
    .line 487
    invoke-static/range {v16 .. v21}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v3

    .line 491
    goto :goto_6

    .line 492
    :cond_b
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getExcerpt()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v3

    .line 496
    new-instance v9, Lkotlin/text/Regex;

    .line 497
    .line 498
    const-string v13, "\\s+"

    .line 499
    .line 500
    invoke-direct {v9, v13}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    const-string v13, " "

    .line 504
    .line 505
    invoke-virtual {v9, v3, v13}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v3

    .line 509
    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 510
    .line 511
    .line 512
    move-result-object v3

    .line 513
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v3

    .line 517
    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 518
    .line 519
    .line 520
    move-result v9

    .line 521
    if-eqz v9, :cond_c

    .line 522
    .line 523
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getSlug()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v3

    .line 527
    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 528
    .line 529
    .line 530
    move-result v9

    .line 531
    if-eqz v9, :cond_c

    .line 532
    .line 533
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getTitle()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v3

    .line 537
    :cond_c
    :goto_6
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    .line 539
    .line 540
    iget-object v3, v10, Lk/v;->c:Ljava/lang/Object;

    .line 541
    .line 542
    check-cast v3, Landroid/widget/TextView;

    .line 543
    .line 544
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getTitle()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v9

    .line 548
    invoke-static {v9, v5}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v5

    .line 552
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 553
    .line 554
    invoke-virtual {v5, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v5

    .line 558
    const-string v9, "toUpperCase(...)"

    .line 559
    .line 560
    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    .line 565
    .line 566
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getCategories()Ljava/util/List;

    .line 570
    .line 571
    .line 572
    move-result-object v3

    .line 573
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getTags()Ljava/util/List;

    .line 574
    .line 575
    .line 576
    move-result-object v5

    .line 577
    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->t(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;

    .line 578
    .line 579
    .line 580
    move-result-object v3

    .line 581
    new-instance v5, Ljava/util/ArrayList;

    .line 582
    .line 583
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 584
    .line 585
    .line 586
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 587
    .line 588
    .line 589
    move-result-object v3

    .line 590
    :cond_d
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 591
    .line 592
    .line 593
    move-result v6

    .line 594
    if-eqz v6, :cond_10

    .line 595
    .line 596
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    move-result-object v6

    .line 600
    check-cast v6, Ljava/lang/String;

    .line 601
    .line 602
    invoke-static {v6}, LC1/U;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v6

    .line 606
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 607
    .line 608
    .line 609
    move-result v9

    .line 610
    if-eqz v9, :cond_e

    .line 611
    .line 612
    sget-object v6, LC1/g0;->c:LC1/g0;

    .line 613
    .line 614
    goto :goto_8

    .line 615
    :cond_e
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 616
    .line 617
    .line 618
    move-result v6

    .line 619
    if-eqz v6, :cond_f

    .line 620
    .line 621
    sget-object v6, LC1/g0;->d:LC1/g0;

    .line 622
    .line 623
    goto :goto_8

    .line 624
    :cond_f
    const/4 v6, 0x0

    .line 625
    :goto_8
    if-eqz v6, :cond_d

    .line 626
    .line 627
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    .line 629
    .line 630
    goto :goto_7

    .line 631
    :cond_10
    sget-object v3, LC1/g0;->c:LC1/g0;

    .line 632
    .line 633
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 634
    .line 635
    .line 636
    move-result v6

    .line 637
    if-eqz v6, :cond_11

    .line 638
    .line 639
    goto :goto_9

    .line 640
    :cond_11
    sget-object v3, LC1/g0;->d:LC1/g0;

    .line 641
    .line 642
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 643
    .line 644
    .line 645
    move-result v5

    .line 646
    if-eqz v5, :cond_12

    .line 647
    .line 648
    goto :goto_9

    .line 649
    :cond_12
    const/4 v3, 0x0

    .line 650
    :goto_9
    iget-object v5, v10, Lk/v;->e:Ljava/lang/Object;

    .line 651
    .line 652
    check-cast v5, Landroid/widget/TextView;

    .line 653
    .line 654
    const-string v6, "tvStatusBadge"

    .line 655
    .line 656
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 657
    .line 658
    .line 659
    if-nez v3, :cond_13

    .line 660
    .line 661
    const/16 v6, 0x8

    .line 662
    .line 663
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 664
    .line 665
    .line 666
    goto :goto_b

    .line 667
    :cond_13
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 668
    .line 669
    .line 670
    move-result v6

    .line 671
    if-eqz v6, :cond_15

    .line 672
    .line 673
    const/4 v7, 0x1

    .line 674
    if-ne v6, v7, :cond_14

    .line 675
    .line 676
    const v6, -0x822c04

    .line 677
    .line 678
    .line 679
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 680
    .line 681
    .line 682
    move-result-object v6

    .line 683
    const v7, -0xf7d0b7

    .line 684
    .line 685
    .line 686
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 687
    .line 688
    .line 689
    move-result-object v7

    .line 690
    invoke-static {v6, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 691
    .line 692
    .line 693
    move-result-object v6

    .line 694
    goto :goto_a

    .line 695
    :cond_14
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    .line 696
    .line 697
    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 698
    .line 699
    .line 700
    throw v1

    .line 701
    :cond_15
    const v6, -0x32cb3

    .line 702
    .line 703
    .line 704
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 705
    .line 706
    .line 707
    move-result-object v6

    .line 708
    const v7, -0xc2dc00

    .line 709
    .line 710
    .line 711
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 712
    .line 713
    .line 714
    move-result-object v7

    .line 715
    invoke-static {v6, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 716
    .line 717
    .line 718
    move-result-object v6

    .line 719
    :goto_a
    invoke-virtual {v6}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 720
    .line 721
    .line 722
    move-result-object v7

    .line 723
    check-cast v7, Ljava/lang/Number;

    .line 724
    .line 725
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 726
    .line 727
    .line 728
    move-result v7

    .line 729
    invoke-virtual {v6}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 730
    .line 731
    .line 732
    move-result-object v6

    .line 733
    check-cast v6, Ljava/lang/Number;

    .line 734
    .line 735
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 736
    .line 737
    .line 738
    move-result v6

    .line 739
    iget-object v3, v3, LC1/g0;->b:Ljava/lang/String;

    .line 740
    .line 741
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 742
    .line 743
    .line 744
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 745
    .line 746
    .line 747
    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 748
    .line 749
    .line 750
    move-result-object v3

    .line 751
    invoke-virtual {v5, v3}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 752
    .line 753
    .line 754
    const/4 v3, 0x0

    .line 755
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 756
    .line 757
    .line 758
    :goto_b
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getThumbnailUrl()Ljava/lang/String;

    .line 759
    .line 760
    .line 761
    move-result-object v3

    .line 762
    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 763
    .line 764
    .line 765
    move-result v3

    .line 766
    if-eqz v3, :cond_16

    .line 767
    .line 768
    invoke-static {v12}, Lcom/bumptech/glide/b;->c(Landroid/view/View;)Lcom/bumptech/glide/n;

    .line 769
    .line 770
    .line 771
    move-result-object v3

    .line 772
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 773
    .line 774
    .line 775
    new-instance v4, Lcom/bumptech/glide/l;

    .line 776
    .line 777
    invoke-direct {v4, v12}, Lv0/d;-><init>(Landroid/view/View;)V

    .line 778
    .line 779
    .line 780
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/n;->j(Lv0/f;)V

    .line 781
    .line 782
    .line 783
    const/4 v3, 0x0

    .line 784
    invoke-virtual {v12, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 785
    .line 786
    .line 787
    goto :goto_c

    .line 788
    :cond_16
    invoke-static {v12}, Lcom/bumptech/glide/b;->c(Landroid/view/View;)Lcom/bumptech/glide/n;

    .line 789
    .line 790
    .line 791
    move-result-object v3

    .line 792
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getThumbnailUrl()Ljava/lang/String;

    .line 793
    .line 794
    .line 795
    move-result-object v5

    .line 796
    invoke-static {v5}, Lcom/bumptech/glide/c;->g(Ljava/lang/String;)Ljava/lang/Object;

    .line 797
    .line 798
    .line 799
    move-result-object v5

    .line 800
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 801
    .line 802
    .line 803
    new-instance v6, Lcom/bumptech/glide/k;

    .line 804
    .line 805
    iget-object v7, v3, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/b;

    .line 806
    .line 807
    iget-object v8, v3, Lcom/bumptech/glide/n;->c:Landroid/content/Context;

    .line 808
    .line 809
    invoke-direct {v6, v7, v3, v4, v8}, Lcom/bumptech/glide/k;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/n;Ljava/lang/Class;Landroid/content/Context;)V

    .line 810
    .line 811
    .line 812
    invoke-virtual {v6, v5}, Lcom/bumptech/glide/k;->x(Ljava/lang/Object;)Lcom/bumptech/glide/k;

    .line 813
    .line 814
    .line 815
    move-result-object v3

    .line 816
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 817
    .line 818
    .line 819
    sget-object v4, Lm0/n;->b:Lm0/n;

    .line 820
    .line 821
    new-instance v4, Lm0/h;

    .line 822
    .line 823
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 824
    .line 825
    .line 826
    invoke-virtual {v3, v4}, Lu0/a;->p(Lm0/h;)Lu0/a;

    .line 827
    .line 828
    .line 829
    move-result-object v3

    .line 830
    check-cast v3, Lcom/bumptech/glide/k;

    .line 831
    .line 832
    invoke-virtual {v3, v12}, Lcom/bumptech/glide/k;->v(Landroid/widget/ImageView;)Lv0/a;

    .line 833
    .line 834
    .line 835
    move-result-object v3

    .line 836
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 837
    .line 838
    .line 839
    :goto_c
    iget-object v3, v10, Lk/v;->a:Ljava/lang/Object;

    .line 840
    .line 841
    check-cast v3, Lcom/google/android/material/card/MaterialCardView;

    .line 842
    .line 843
    iget-object v2, v2, LC1/D1;->v:LC1/j0;

    .line 844
    .line 845
    new-instance v4, LC1/j;

    .line 846
    .line 847
    const/16 v6, 0x8

    .line 848
    .line 849
    invoke-direct {v4, v6, v2, v1}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 850
    .line 851
    .line 852
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 853
    .line 854
    .line 855
    return-void

    .line 856
    :pswitch_2
    move-object/from16 v2, p1

    .line 857
    .line 858
    check-cast v2, LC1/x1;

    .line 859
    .line 860
    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 861
    .line 862
    .line 863
    iget-object v4, v0, LC1/j0;->e:Ljava/lang/Object;

    .line 864
    .line 865
    check-cast v4, Ljava/util/List;

    .line 866
    .line 867
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 868
    .line 869
    .line 870
    move-result-object v1

    .line 871
    check-cast v1, LD1/l;

    .line 872
    .line 873
    iget-object v4, v2, LP/y0;->a:Landroid/view/View;

    .line 874
    .line 875
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 876
    .line 877
    .line 878
    move-result-object v5

    .line 879
    iget-object v6, v2, LC1/x1;->u:Landroid/widget/TextView;

    .line 880
    .line 881
    iget-object v7, v1, LD1/l;->e:Ljava/lang/String;

    .line 882
    .line 883
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 884
    .line 885
    .line 886
    iget-object v6, v1, LD1/l;->d:LD1/k;

    .line 887
    .line 888
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 889
    .line 890
    .line 891
    move-result v6

    .line 892
    if-eqz v6, :cond_19

    .line 893
    .line 894
    const/4 v7, 0x1

    .line 895
    if-eq v6, v7, :cond_18

    .line 896
    .line 897
    if-ne v6, v3, :cond_17

    .line 898
    .line 899
    const v3, 0x7f120240

    .line 900
    .line 901
    .line 902
    goto :goto_d

    .line 903
    :cond_17
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    .line 904
    .line 905
    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 906
    .line 907
    .line 908
    throw v1

    .line 909
    :cond_18
    const v3, 0x7f120241

    .line 910
    .line 911
    .line 912
    goto :goto_d

    .line 913
    :cond_19
    const v3, 0x7f12023f

    .line 914
    .line 915
    .line 916
    :goto_d
    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 917
    .line 918
    .line 919
    move-result-object v3

    .line 920
    const-string v5, "getString(...)"

    .line 921
    .line 922
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 923
    .line 924
    .line 925
    iget-object v2, v2, LC1/x1;->v:Landroid/widget/TextView;

    .line 926
    .line 927
    iget-object v5, v1, LD1/l;->c:Lcom/minhub/gamehub/data/GameEngine;

    .line 928
    .line 929
    invoke-virtual {v5}, Lcom/minhub/gamehub/data/GameEngine;->getLabel()Ljava/lang/String;

    .line 930
    .line 931
    .line 932
    move-result-object v5

    .line 933
    new-instance v6, Ljava/lang/StringBuilder;

    .line 934
    .line 935
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 936
    .line 937
    .line 938
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    .line 940
    .line 941
    const-string v5, " \u00b7 "

    .line 942
    .line 943
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    .line 945
    .line 946
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    .line 948
    .line 949
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 950
    .line 951
    .line 952
    move-result-object v3

    .line 953
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 954
    .line 955
    .line 956
    new-instance v2, LC1/j;

    .line 957
    .line 958
    const/4 v3, 0x6

    .line 959
    invoke-direct {v2, v3, v0, v1}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 960
    .line 961
    .line 962
    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 963
    .line 964
    .line 965
    return-void

    .line 966
    :pswitch_3
    move-object/from16 v2, p1

    .line 967
    .line 968
    check-cast v2, LC1/i0;

    .line 969
    .line 970
    const-string v3, "h"

    .line 971
    .line 972
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 973
    .line 974
    .line 975
    iget-object v3, v0, LC1/j0;->e:Ljava/lang/Object;

    .line 976
    .line 977
    check-cast v3, LP/f;

    .line 978
    .line 979
    iget-object v3, v3, LP/f;->f:Ljava/util/List;

    .line 980
    .line 981
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 982
    .line 983
    .line 984
    move-result-object v1

    .line 985
    const-string v3, "getItem(...)"

    .line 986
    .line 987
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 988
    .line 989
    .line 990
    check-cast v1, Lcom/minhub/gamehub/data/Game;

    .line 991
    .line 992
    const-string v3, "g"

    .line 993
    .line 994
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 995
    .line 996
    .line 997
    iget-object v3, v2, LC1/i0;->u:LM1/g;

    .line 998
    .line 999
    iget-object v4, v3, LM1/g;->a:Ljava/lang/Object;

    .line 1000
    .line 1001
    check-cast v4, Landroid/widget/LinearLayout;

    .line 1002
    .line 1003
    iget-object v5, v3, LM1/g;->c:Ljava/lang/Object;

    .line 1004
    .line 1005
    check-cast v5, Landroid/widget/ProgressBar;

    .line 1006
    .line 1007
    iget-object v6, v3, LM1/g;->e:Ljava/lang/Object;

    .line 1008
    .line 1009
    check-cast v6, Landroid/widget/TextView;

    .line 1010
    .line 1011
    iget-object v2, v2, LC1/i0;->v:LC1/j0;

    .line 1012
    .line 1013
    new-instance v7, LC1/j;

    .line 1014
    .line 1015
    const/4 v8, 0x1

    .line 1016
    invoke-direct {v7, v8, v2, v1}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1017
    .line 1018
    .line 1019
    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1020
    .line 1021
    .line 1022
    iget-object v2, v3, LM1/g;->h:Ljava/lang/Object;

    .line 1023
    .line 1024
    check-cast v2, Landroid/widget/TextView;

    .line 1025
    .line 1026
    invoke-virtual {v1}, Lcom/minhub/gamehub/data/Game;->getTitle()Ljava/lang/String;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v4

    .line 1030
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1031
    .line 1032
    .line 1033
    iget-object v2, v3, LM1/g;->g:Ljava/lang/Object;

    .line 1034
    .line 1035
    check-cast v2, Landroid/widget/TextView;

    .line 1036
    .line 1037
    invoke-static {v1}, Lcom/minhub/gamehub/data/GameKt;->getPlaytimeLabel(Lcom/minhub/gamehub/data/Game;)Ljava/lang/String;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v4

    .line 1041
    const-string v7, "0h"

    .line 1042
    .line 1043
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1044
    .line 1045
    .line 1046
    move-result v4

    .line 1047
    if-eqz v4, :cond_1a

    .line 1048
    .line 1049
    const-string v4, ""

    .line 1050
    .line 1051
    goto :goto_e

    .line 1052
    :cond_1a
    invoke-static {v1}, Lcom/minhub/gamehub/data/GameKt;->getPlaytimeLabel(Lcom/minhub/gamehub/data/Game;)Ljava/lang/String;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v4

    .line 1056
    :goto_e
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1057
    .line 1058
    .line 1059
    invoke-static {v1}, Lcom/minhub/gamehub/data/GameKt;->getPlaytimeLabel(Lcom/minhub/gamehub/data/Game;)Ljava/lang/String;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v4

    .line 1063
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1064
    .line 1065
    .line 1066
    move-result v4

    .line 1067
    if-eqz v4, :cond_1b

    .line 1068
    .line 1069
    const/16 v4, 0x8

    .line 1070
    .line 1071
    goto :goto_f

    .line 1072
    :cond_1b
    const/4 v4, 0x0

    .line 1073
    :goto_f
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1074
    .line 1075
    .line 1076
    invoke-static {v1}, Lcom/minhub/gamehub/data/GameKt;->getEngineEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameEngine;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v2

    .line 1080
    invoke-virtual {v2}, Lcom/minhub/gamehub/data/GameEngine;->getLabel()Ljava/lang/String;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v2

    .line 1084
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1085
    .line 1086
    .line 1087
    iget-object v2, v3, LM1/g;->f:Ljava/lang/Object;

    .line 1088
    .line 1089
    check-cast v2, Landroid/widget/TextView;

    .line 1090
    .line 1091
    invoke-virtual {v1}, Lcom/minhub/gamehub/data/Game;->getFavorite()Z

    .line 1092
    .line 1093
    .line 1094
    move-result v4

    .line 1095
    if-eqz v4, :cond_1c

    .line 1096
    .line 1097
    const/4 v4, 0x0

    .line 1098
    goto :goto_10

    .line 1099
    :cond_1c
    const/16 v4, 0x8

    .line 1100
    .line 1101
    :goto_10
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1102
    .line 1103
    .line 1104
    iget-object v2, v3, LM1/g;->b:Ljava/lang/Object;

    .line 1105
    .line 1106
    check-cast v2, Landroid/widget/FrameLayout;

    .line 1107
    .line 1108
    const-string v4, "ivCover"

    .line 1109
    .line 1110
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1111
    .line 1112
    .line 1113
    iget-object v3, v3, LM1/g;->d:Ljava/lang/Object;

    .line 1114
    .line 1115
    check-cast v3, Landroid/widget/TextView;

    .line 1116
    .line 1117
    const/high16 v4, 0x41a00000    # 20.0f

    .line 1118
    .line 1119
    invoke-static {v2, v3, v1, v4}, La/a;->c(Landroid/view/View;Landroid/widget/TextView;Lcom/minhub/gamehub/data/Game;F)V

    .line 1120
    .line 1121
    .line 1122
    invoke-static {v1}, Lcom/minhub/gamehub/data/GameKt;->getEngineEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameEngine;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v2

    .line 1126
    invoke-virtual {v2}, Lcom/minhub/gamehub/data/GameEngine;->getColorHex()Ljava/lang/String;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v2

    .line 1130
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 1131
    .line 1132
    .line 1133
    move-result v2

    .line 1134
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1135
    .line 1136
    .line 1137
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 1138
    .line 1139
    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1140
    .line 1141
    .line 1142
    const/4 v4, 0x0

    .line 1143
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1144
    .line 1145
    .line 1146
    const/high16 v4, 0x41200000    # 10.0f

    .line 1147
    .line 1148
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1149
    .line 1150
    .line 1151
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    .line 1152
    .line 1153
    .line 1154
    move-result v4

    .line 1155
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    .line 1156
    .line 1157
    .line 1158
    move-result v7

    .line 1159
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    .line 1160
    .line 1161
    .line 1162
    move-result v8

    .line 1163
    const/16 v9, 0x1a

    .line 1164
    .line 1165
    invoke-static {v9, v4, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    .line 1166
    .line 1167
    .line 1168
    move-result v4

    .line 1169
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1170
    .line 1171
    .line 1172
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    .line 1173
    .line 1174
    .line 1175
    move-result v4

    .line 1176
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    .line 1177
    .line 1178
    .line 1179
    move-result v7

    .line 1180
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    .line 1181
    .line 1182
    .line 1183
    move-result v2

    .line 1184
    const/16 v8, 0x33

    .line 1185
    .line 1186
    invoke-static {v8, v4, v7, v2}, Landroid/graphics/Color;->argb(IIII)I

    .line 1187
    .line 1188
    .line 1189
    move-result v2

    .line 1190
    const/4 v7, 0x1

    .line 1191
    invoke-virtual {v3, v7, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1192
    .line 1193
    .line 1194
    invoke-virtual {v6, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1195
    .line 1196
    .line 1197
    invoke-static {v1}, Lcom/minhub/gamehub/data/GameKt;->getStatusEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameStatus;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v2

    .line 1201
    sget-object v3, Lcom/minhub/gamehub/data/GameStatus;->DOWNLOADING:Lcom/minhub/gamehub/data/GameStatus;

    .line 1202
    .line 1203
    if-ne v2, v3, :cond_1d

    .line 1204
    .line 1205
    const/4 v3, 0x0

    .line 1206
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1207
    .line 1208
    .line 1209
    invoke-virtual {v1}, Lcom/minhub/gamehub/data/Game;->getDownloadProgress()I

    .line 1210
    .line 1211
    .line 1212
    move-result v1

    .line 1213
    invoke-virtual {v5, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1214
    .line 1215
    .line 1216
    goto :goto_11

    .line 1217
    :cond_1d
    const/16 v6, 0x8

    .line 1218
    .line 1219
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1220
    .line 1221
    .line 1222
    :goto_11
    return-void

    .line 1223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Landroid/view/ViewGroup;)LP/y0;
    .locals 12

    .line 1
    iget v0, p0, LC1/j0;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, "parent"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const v1, 0x7f0c0060

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance v0, LC1/W1;

    .line 28
    .line 29
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, p0, p1}, LC1/W1;-><init>(LC1/j0;Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    :pswitch_0
    const-string v0, "parent"

    .line 37
    .line 38
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, LC1/P1;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const v2, 0x7f0c005f

    .line 52
    .line 53
    .line 54
    const/4 v3, 0x0

    .line 55
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const v1, 0x7f09018d

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Landroid/widget/ImageView;

    .line 67
    .line 68
    if-eqz v2, :cond_0

    .line 69
    .line 70
    new-instance v1, LA1/d;

    .line 71
    .line 72
    check-cast p1, Lcom/google/android/material/card/MaterialCardView;

    .line 73
    .line 74
    const/16 v3, 0x18

    .line 75
    .line 76
    invoke-direct {v1, v3, p1, v2}, LA1/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    const-string p1, "inflate(...)"

    .line 80
    .line 81
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-direct {v0, p0, v1}, LC1/P1;-><init>(LC1/j0;LA1/d;)V

    .line 85
    .line 86
    .line 87
    return-object v0

    .line 88
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    new-instance v0, Ljava/lang/NullPointerException;

    .line 97
    .line 98
    const-string v1, "Missing required view with ID: "

    .line 99
    .line 100
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw v0

    .line 108
    :pswitch_1
    const-string v0, "parent"

    .line 109
    .line 110
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    new-instance v0, LC1/D1;

    .line 114
    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    const v2, 0x7f0c005e

    .line 124
    .line 125
    .line 126
    const/4 v3, 0x0

    .line 127
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    const v1, 0x7f09018c

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    move-object v5, v2

    .line 139
    check-cast v5, Landroid/widget/ImageView;

    .line 140
    .line 141
    if-eqz v5, :cond_1

    .line 142
    .line 143
    const v1, 0x7f09033a

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    move-object v6, v2

    .line 151
    check-cast v6, Landroid/widget/TextView;

    .line 152
    .line 153
    if-eqz v6, :cond_1

    .line 154
    .line 155
    const v1, 0x7f090370

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    move-object v7, v2

    .line 163
    check-cast v7, Landroid/widget/TextView;

    .line 164
    .line 165
    if-eqz v7, :cond_1

    .line 166
    .line 167
    const v1, 0x7f0903a7

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    move-object v8, v2

    .line 175
    check-cast v8, Landroid/widget/TextView;

    .line 176
    .line 177
    if-eqz v8, :cond_1

    .line 178
    .line 179
    const v1, 0x7f0903ab

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    move-object v9, v2

    .line 187
    check-cast v9, Landroid/widget/TextView;

    .line 188
    .line 189
    if-eqz v9, :cond_1

    .line 190
    .line 191
    new-instance v3, Lk/v;

    .line 192
    .line 193
    move-object v4, p1

    .line 194
    check-cast v4, Lcom/google/android/material/card/MaterialCardView;

    .line 195
    .line 196
    invoke-direct/range {v3 .. v9}, Lk/v;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 197
    .line 198
    .line 199
    const-string p1, "inflate(...)"

    .line 200
    .line 201
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-direct {v0, p0, v3}, LC1/D1;-><init>(LC1/j0;Lk/v;)V

    .line 205
    .line 206
    .line 207
    return-object v0

    .line 208
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    new-instance v0, Ljava/lang/NullPointerException;

    .line 217
    .line 218
    const-string v1, "Missing required view with ID: "

    .line 219
    .line 220
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw v0

    .line 228
    :pswitch_2
    const-string v0, "parent"

    .line 229
    .line 230
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    new-instance v0, LC1/x1;

    .line 234
    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    const v2, 0x7f0c005d

    .line 244
    .line 245
    .line 246
    const/4 v3, 0x0

    .line 247
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    const-string v1, "inflate(...)"

    .line 252
    .line 253
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-direct {v0, p1}, LC1/x1;-><init>(Landroid/view/View;)V

    .line 257
    .line 258
    .line 259
    return-object v0

    .line 260
    :pswitch_3
    const-string v0, "parent"

    .line 261
    .line 262
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    new-instance v0, LC1/i0;

    .line 266
    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    const v2, 0x7f0c005a

    .line 276
    .line 277
    .line 278
    const/4 v3, 0x0

    .line 279
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    const v1, 0x7f090199

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    move-object v5, v2

    .line 291
    check-cast v5, Landroid/widget/FrameLayout;

    .line 292
    .line 293
    if-eqz v5, :cond_2

    .line 294
    .line 295
    const v1, 0x7f090266

    .line 296
    .line 297
    .line 298
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    move-object v6, v2

    .line 303
    check-cast v6, Landroid/widget/ProgressBar;

    .line 304
    .line 305
    if-eqz v6, :cond_2

    .line 306
    .line 307
    const v1, 0x7f09033a

    .line 308
    .line 309
    .line 310
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    move-object v7, v2

    .line 315
    check-cast v7, Landroid/widget/TextView;

    .line 316
    .line 317
    if-eqz v7, :cond_2

    .line 318
    .line 319
    const v1, 0x7f090347

    .line 320
    .line 321
    .line 322
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    move-object v8, v2

    .line 327
    check-cast v8, Landroid/widget/TextView;

    .line 328
    .line 329
    if-eqz v8, :cond_2

    .line 330
    .line 331
    const v1, 0x7f09034a

    .line 332
    .line 333
    .line 334
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    move-object v9, v2

    .line 339
    check-cast v9, Landroid/widget/TextView;

    .line 340
    .line 341
    if-eqz v9, :cond_2

    .line 342
    .line 343
    const v1, 0x7f090384

    .line 344
    .line 345
    .line 346
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    move-object v10, v2

    .line 351
    check-cast v10, Landroid/widget/TextView;

    .line 352
    .line 353
    if-eqz v10, :cond_2

    .line 354
    .line 355
    const v1, 0x7f0903ab

    .line 356
    .line 357
    .line 358
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    move-object v11, v2

    .line 363
    check-cast v11, Landroid/widget/TextView;

    .line 364
    .line 365
    if-eqz v11, :cond_2

    .line 366
    .line 367
    new-instance v3, LM1/g;

    .line 368
    .line 369
    move-object v4, p1

    .line 370
    check-cast v4, Landroid/widget/LinearLayout;

    .line 371
    .line 372
    invoke-direct/range {v3 .. v11}, LM1/g;-><init>(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 373
    .line 374
    .line 375
    const-string p1, "inflate(...)"

    .line 376
    .line 377
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    invoke-direct {v0, p0, v3}, LC1/i0;-><init>(LC1/j0;LM1/g;)V

    .line 381
    .line 382
    .line 383
    return-object v0

    .line 384
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object p1

    .line 392
    new-instance v0, Ljava/lang/NullPointerException;

    .line 393
    .line 394
    const-string v1, "Missing required view with ID: "

    .line 395
    .line 396
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    throw v0

    .line 404
    nop

    .line 405
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
