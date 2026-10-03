.class public final synthetic LC1/s0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LE1/g;Ljava/lang/String;LH0/o;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, LC1/s0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC1/s0;->c:Ljava/lang/Object;

    iput-object p2, p0, LC1/s0;->e:Ljava/lang/Object;

    iput-object p3, p0, LC1/s0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/minhub/gamehub/hub/GameDetailActivity;Landroid/content/Context;Lcom/minhub/gamehub/data/Game;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, LC1/s0;->b:I

    sget-object v0, LG1/g;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC1/s0;->c:Ljava/lang/Object;

    iput-object p2, p0, LC1/s0;->e:Ljava/lang/Object;

    iput-object p3, p0, LC1/s0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;)V
    .locals 1

    .line 3
    const/4 v0, 0x1

    iput v0, p0, LC1/s0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC1/s0;->c:Ljava/lang/Object;

    iput-object p2, p0, LC1/s0;->d:Ljava/lang/Object;

    iput-object p3, p0, LC1/s0;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, LC1/s0;->b:I

    .line 4
    .line 5
    const-string v2, "<this>"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x3

    .line 9
    const/4 v5, 0x0

    .line 10
    iget-object v6, v0, LC1/s0;->d:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v7, v0, LC1/s0;->e:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v8, v0, LC1/s0;->c:Ljava/lang/Object;

    .line 15
    .line 16
    packed-switch v1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    check-cast v8, LE1/g;

    .line 20
    .line 21
    check-cast v7, Ljava/lang/String;

    .line 22
    .line 23
    check-cast v6, LH0/o;

    .line 24
    .line 25
    iget-object v1, v8, LE1/g;->c:LB1/z;

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    const-string v1, "mappingManager"

    .line 30
    .line 31
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v5, v1

    .line 36
    :goto_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    const-string v1, "name"

    .line 40
    .line 41
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v7}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    if-eqz v7, :cond_1

    .line 57
    .line 58
    goto/16 :goto_2

    .line 59
    .line 60
    :cond_1
    invoke-virtual {v5}, LB1/z;->d()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    new-instance v9, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v10

    .line 73
    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v11

    .line 77
    if-eqz v11, :cond_3

    .line 78
    .line 79
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v11

    .line 83
    move-object v12, v11

    .line 84
    check-cast v12, LB1/B;

    .line 85
    .line 86
    iget-object v12, v12, LB1/B;->a:Ljava/lang/String;

    .line 87
    .line 88
    const/4 v13, 0x1

    .line 89
    invoke-static {v12, v1, v13}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 90
    .line 91
    .line 92
    move-result v12

    .line 93
    if-nez v12, :cond_2

    .line 94
    .line 95
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    if-ne v1, v7, :cond_4

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_4
    sget-object v1, LS1/d;->a:Ljava/util/Set;

    .line 111
    .line 112
    iget-object v1, v5, LB1/z;->a:Landroid/content/Context;

    .line 113
    .line 114
    new-instance v13, LA1/p;

    .line 115
    .line 116
    invoke-direct {v13, v4, v5}, LA1/p;-><init>(ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    const/16 v14, 0x18

    .line 120
    .line 121
    const-string v10, ","

    .line 122
    .line 123
    const-string v11, "["

    .line 124
    .line 125
    const-string v12, "]"

    .line 126
    .line 127
    invoke-static/range {v9 .. v14}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const-string v2, "v"

    .line 135
    .line 136
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-static {v1}, LS1/d;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    const-string v2, "physical_gamepad_presets_json"

    .line 148
    .line 149
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    const v2, 0x7f1203fd

    .line 161
    .line 162
    .line 163
    invoke-virtual {v8, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v6}, Le/D;->dismiss()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v8}, LE1/g;->h()V

    .line 178
    .line 179
    .line 180
    :goto_2
    return-void

    .line 181
    :pswitch_0
    move-object v11, v8

    .line 182
    check-cast v11, Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 183
    .line 184
    move-object v13, v6

    .line 185
    check-cast v13, Lcom/minhub/gamehub/data/Game;

    .line 186
    .line 187
    move-object v12, v7

    .line 188
    check-cast v12, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;

    .line 189
    .line 190
    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    const-string v1, "game"

    .line 194
    .line 195
    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    const-string v1, "item"

    .line 199
    .line 200
    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v12}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;->getTitle()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    const v2, 0x7f12034b

    .line 212
    .line 213
    .line 214
    invoke-virtual {v11, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-static {v11, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 223
    .line 224
    .line 225
    new-instance v14, Ljava/io/File;

    .line 226
    .line 227
    invoke-virtual {v13}, Lcom/minhub/gamehub/data/Game;->getGamePath()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-direct {v14, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    new-instance v10, Ljava/io/File;

    .line 235
    .line 236
    invoke-virtual {v11}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-virtual {v12}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;->getSlug()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    const-string v3, "plugin-install/"

    .line 245
    .line 246
    invoke-static {v3, v2}, Lkotlin/collections/unsigned/a;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    invoke-direct {v10, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-static {v11}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    new-instance v9, LC1/J0;

    .line 258
    .line 259
    const/4 v15, 0x0

    .line 260
    invoke-direct/range {v9 .. v15}, LC1/J0;-><init>(Ljava/io/File;Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;Lcom/minhub/gamehub/data/Game;Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    .line 261
    .line 262
    .line 263
    invoke-static {v1, v5, v9, v4}, LV1/A;->c(LV1/x;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)LV1/p0;

    .line 264
    .line 265
    .line 266
    return-void

    .line 267
    :pswitch_1
    check-cast v8, Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 268
    .line 269
    sget-object v1, LG1/g;->a:Ljava/lang/String;

    .line 270
    .line 271
    check-cast v7, Landroid/content/Context;

    .line 272
    .line 273
    check-cast v6, Lcom/minhub/gamehub/data/Game;

    .line 274
    .line 275
    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 276
    .line 277
    .line 278
    const v1, 0x7f120160

    .line 279
    .line 280
    .line 281
    invoke-static {v8, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 286
    .line 287
    .line 288
    invoke-static {v8}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    new-instance v2, LC1/v0;

    .line 293
    .line 294
    invoke-direct {v2, v8, v7, v6, v5}, LC1/v0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;Landroid/content/Context;Lcom/minhub/gamehub/data/Game;Lkotlin/coroutines/Continuation;)V

    .line 295
    .line 296
    .line 297
    invoke-static {v1, v5, v2, v4}, LV1/A;->c(LV1/x;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)LV1/p0;

    .line 298
    .line 299
    .line 300
    return-void

    .line 301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
