.class public final synthetic LC1/o0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LC1/o0;->b:I

    .line 2
    .line 3
    iput-object p2, p0, LC1/o0;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, LC1/o0;->d:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    iget v2, v0, LC1/o0;->b:I

    .line 6
    .line 7
    const-string v3, "b"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    iget-object v6, v0, LC1/o0;->d:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v7, v0, LC1/o0;->c:Ljava/lang/Object;

    .line 14
    .line 15
    packed-switch v2, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    check-cast v7, Ly1/x0;

    .line 19
    .line 20
    check-cast v6, Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/io/File;

    .line 27
    .line 28
    new-instance v2, Ljava/lang/Thread;

    .line 29
    .line 30
    new-instance v3, Ly1/l0;

    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    invoke-direct {v3, v7, v1, v4}, Ly1/l0;-><init>(Ly1/x0;Ljava/io/File;I)V

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_0
    check-cast v7, [Ljava/lang/String;

    .line 44
    .line 45
    check-cast v6, Lcom/minhub/gamehub/editor/ButtonEditorActivity;

    .line 46
    .line 47
    sget v2, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->i:I

    .line 48
    .line 49
    aget-object v10, v7, v1

    .line 50
    .line 51
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 52
    .line 53
    invoke-virtual {v10, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const-string v7, "toLowerCase(...)"

    .line 58
    .line 59
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 63
    .line 64
    .line 65
    move-result-wide v8

    .line 66
    new-instance v11, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v12, "btn_"

    .line 69
    .line 70
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v2, "_"

    .line 77
    .line 78
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    new-instance v8, Lx1/a;

    .line 89
    .line 90
    invoke-virtual {v10, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v11

    .line 94
    invoke-static {v11, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const v18, 0x3f4ccccd    # 0.8f

    .line 98
    .line 99
    .line 100
    const/16 v19, 0x1

    .line 101
    .line 102
    const/high16 v12, 0x3f000000    # 0.5f

    .line 103
    .line 104
    const/high16 v13, 0x3f000000    # 0.5f

    .line 105
    .line 106
    const/16 v14, 0x38

    .line 107
    .line 108
    const/16 v15, 0x38

    .line 109
    .line 110
    const-string v16, "CIRCLE"

    .line 111
    .line 112
    const-string v17, "#666666"

    .line 113
    .line 114
    invoke-direct/range {v8 .. v19}, Lx1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFIILjava/lang/String;Ljava/lang/String;FZ)V

    .line 115
    .line 116
    .line 117
    iget-object v1, v6, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->e:Lw1/c;

    .line 118
    .line 119
    if-nez v1, :cond_0

    .line 120
    .line 121
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    move-object v1, v4

    .line 125
    :cond_0
    iget-object v1, v1, Lw1/c;->i:Landroid/view/View;

    .line 126
    .line 127
    check-cast v1, Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 128
    .line 129
    const-string v2, "config"

    .line 130
    .line 131
    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    int-to-float v2, v2

    .line 139
    const/high16 v7, 0x3f800000    # 1.0f

    .line 140
    .line 141
    invoke-static {v2, v7}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 146
    .line 147
    .line 148
    move-result v11

    .line 149
    int-to-float v11, v11

    .line 150
    invoke-static {v11, v7}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    invoke-virtual {v1, v8, v2, v7}, Lcom/minhub/gamehub/editor/EditModeOverlay;->b(Lx1/a;FF)Lx1/h;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    iget-object v7, v1, Lcom/minhub/gamehub/editor/EditModeOverlay;->b:Ljava/util/LinkedHashMap;

    .line 159
    .line 160
    invoke-interface {v7, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    iget-object v2, v2, Lx1/h;->b:LB1/m;

    .line 164
    .line 165
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v9}, Lcom/minhub/gamehub/editor/EditModeOverlay;->e(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-object v2, v1, Lcom/minhub/gamehub/editor/EditModeOverlay;->e:Lkotlin/jvm/functions/Function1;

    .line 172
    .line 173
    if-eqz v2, :cond_1

    .line 174
    .line 175
    invoke-virtual {v1}, Lcom/minhub/gamehub/editor/EditModeOverlay;->getCurrentConfigs()Ljava/util/List;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    :cond_1
    iget-object v1, v6, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->e:Lw1/c;

    .line 183
    .line 184
    if-nez v1, :cond_2

    .line 185
    .line 186
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_2
    move-object v4, v1

    .line 191
    :goto_0
    iget-object v1, v4, Lw1/c;->i:Landroid/view/View;

    .line 192
    .line 193
    check-cast v1, Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 194
    .line 195
    invoke-virtual {v1}, Lcom/minhub/gamehub/editor/EditModeOverlay;->getCurrentConfigs()Ljava/util/List;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    iput-object v1, v6, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->f:Ljava/util/List;

    .line 200
    .line 201
    const v1, 0x7f1203eb

    .line 202
    .line 203
    .line 204
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-virtual {v6, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-static {v6, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 217
    .line 218
    .line 219
    return-void

    .line 220
    :pswitch_1
    check-cast v7, Lcom/minhub/gamehub/editor/ButtonEditorActivity;

    .line 221
    .line 222
    check-cast v6, Ljava/lang/String;

    .line 223
    .line 224
    iget-object v1, v7, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->e:Lw1/c;

    .line 225
    .line 226
    if-nez v1, :cond_3

    .line 227
    .line 228
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    move-object v1, v4

    .line 232
    :cond_3
    iget-object v1, v1, Lw1/c;->i:Landroid/view/View;

    .line 233
    .line 234
    check-cast v1, Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 235
    .line 236
    const-string v2, "buttonId"

    .line 237
    .line 238
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    iget-object v2, v1, Lcom/minhub/gamehub/editor/EditModeOverlay;->b:Ljava/util/LinkedHashMap;

    .line 242
    .line 243
    invoke-virtual {v2, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    check-cast v3, Lx1/h;

    .line 248
    .line 249
    if-eqz v3, :cond_5

    .line 250
    .line 251
    iget-object v3, v3, Lx1/h;->b:LB1/m;

    .line 252
    .line 253
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 254
    .line 255
    .line 256
    invoke-interface {v2, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    iget-object v2, v1, Lcom/minhub/gamehub/editor/EditModeOverlay;->c:Ljava/lang/String;

    .line 260
    .line 261
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    if-eqz v2, :cond_4

    .line 266
    .line 267
    iput-object v4, v1, Lcom/minhub/gamehub/editor/EditModeOverlay;->c:Ljava/lang/String;

    .line 268
    .line 269
    :cond_4
    iget-object v2, v1, Lcom/minhub/gamehub/editor/EditModeOverlay;->e:Lkotlin/jvm/functions/Function1;

    .line 270
    .line 271
    if-eqz v2, :cond_5

    .line 272
    .line 273
    invoke-virtual {v1}, Lcom/minhub/gamehub/editor/EditModeOverlay;->getCurrentConfigs()Ljava/util/List;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    :cond_5
    iput-object v4, v7, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->g:Ljava/lang/String;

    .line 281
    .line 282
    invoke-virtual {v7, v4}, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->m(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    const v1, 0x7f1203ec

    .line 286
    .line 287
    .line 288
    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-static {v7, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 297
    .line 298
    .line 299
    return-void

    .line 300
    :pswitch_2
    check-cast v7, Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 301
    .line 302
    check-cast v6, Lcom/minhub/gamehub/data/Save;

    .line 303
    .line 304
    invoke-virtual {v7}, Lcom/minhub/gamehub/hub/GameDetailActivity;->p()Lcom/minhub/gamehub/data/SaveRepository;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    invoke-virtual {v1, v6}, Lcom/minhub/gamehub/data/SaveRepository;->deleteSave(Lcom/minhub/gamehub/data/Save;)Z

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    if-eqz v1, :cond_6

    .line 313
    .line 314
    const v1, 0x7f1203f2

    .line 315
    .line 316
    .line 317
    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    invoke-static {v7, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 326
    .line 327
    .line 328
    invoke-static {v7}, LC1/R0;->d(Lcom/minhub/gamehub/hub/GameDetailActivity;)V

    .line 329
    .line 330
    .line 331
    goto :goto_1

    .line 332
    :cond_6
    const v1, 0x7f1203f0

    .line 333
    .line 334
    .line 335
    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    invoke-static {v7, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 344
    .line 345
    .line 346
    :goto_1
    return-void

    .line 347
    :pswitch_3
    check-cast v7, Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 348
    .line 349
    check-cast v6, Lcom/minhub/gamehub/data/Game;

    .line 350
    .line 351
    sget v1, Lcom/minhub/gamehub/hub/GameDetailActivity;->w:I

    .line 352
    .line 353
    invoke-virtual {v7}, Lcom/minhub/gamehub/hub/GameDetailActivity;->q()LC1/Z0;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 358
    .line 359
    .line 360
    const-string v2, "g"

    .line 361
    .line 362
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)LV1/x;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    sget-object v3, LV1/H;->b:Lc2/c;

    .line 370
    .line 371
    new-instance v8, LC1/Y0;

    .line 372
    .line 373
    invoke-direct {v8, v1, v6, v4, v5}, LC1/Y0;-><init>(LC1/Z0;Lcom/minhub/gamehub/data/Game;Lkotlin/coroutines/Continuation;I)V

    .line 374
    .line 375
    .line 376
    const/4 v1, 0x2

    .line 377
    invoke-static {v2, v3, v8, v1}, LV1/A;->c(LV1/x;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)LV1/p0;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    .line 381
    .line 382
    .line 383
    return-void

    .line 384
    nop

    .line 385
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
