.class public final synthetic LC1/j;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LC1/j;->b:I

    .line 2
    .line 3
    iput-object p2, p0, LC1/j;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, LC1/j;->d:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget v2, v1, LC1/j;->b:I

    .line 6
    .line 7
    const-string v4, "MinHub Ren\'Py error"

    .line 8
    .line 9
    const-string v5, "null cannot be cast to non-null type android.content.ClipboardManager"

    .line 10
    .line 11
    const-string v6, "clipboard"

    .line 12
    .line 13
    const-string v7, "game_id"

    .line 14
    .line 15
    const-class v8, Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 16
    .line 17
    const-class v10, Lcom/minhub/gamehub/hub/HubActivity;

    .line 18
    .line 19
    const-string v11, "ctx"

    .line 20
    .line 21
    const/4 v12, 0x2

    .line 22
    const/4 v14, 0x1

    .line 23
    const/4 v15, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    iget-object v9, v1, LC1/j;->d:Ljava/lang/Object;

    .line 26
    .line 27
    iget-object v13, v1, LC1/j;->c:Ljava/lang/Object;

    .line 28
    .line 29
    packed-switch v2, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    check-cast v13, LI1/j;

    .line 33
    .line 34
    check-cast v9, LB1/u;

    .line 35
    .line 36
    iget-object v0, v13, LI1/j;->d:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Ly1/F0;

    .line 39
    .line 40
    iget-object v2, v9, LB1/u;->a:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ly1/F0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v13}, LI1/j;->c()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_0
    check-cast v13, Lcom/minhub/gamehub/game/GodotGameActivity;

    .line 50
    .line 51
    check-cast v9, Ljava/lang/String;

    .line 52
    .line 53
    iget-object v0, v13, Lcom/minhub/gamehub/game/GodotGameActivity;->m:Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 54
    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    new-instance v2, LE1/a;

    .line 58
    .line 59
    invoke-direct {v2, v9, v12}, LE1/a;-><init>(Ljava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v2}, Lcom/minhub/gamehub/editor/EditModeOverlay;->g(Lkotlin/jvm/functions/Function1;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-virtual {v13}, Lcom/minhub/gamehub/game/GodotGameActivity;->r()V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_1
    check-cast v13, Landroid/widget/EditText;

    .line 70
    .line 71
    check-cast v9, Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    invoke-virtual {v13, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :pswitch_2
    check-cast v13, LN1/w;

    .line 89
    .line 90
    check-cast v9, Ly1/e;

    .line 91
    .line 92
    iget-object v0, v13, LN1/w;->d:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v0, Landroid/widget/PopupWindow;

    .line 95
    .line 96
    if-eqz v0, :cond_1

    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 99
    .line 100
    .line 101
    :cond_1
    iput-object v15, v13, LN1/w;->d:Ljava/lang/Object;

    .line 102
    .line 103
    iget-object v0, v13, LN1/w;->c:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v0, Ly1/u;

    .line 106
    .line 107
    invoke-virtual {v0}, Ly1/u;->invoke()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Landroid/webkit/WebView;

    .line 112
    .line 113
    if-nez v0, :cond_2

    .line 114
    .line 115
    iget-object v0, v13, LN1/w;->a:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v0, Landroid/content/Context;

    .line 118
    .line 119
    const-string v2, "Basic cheat unavailable"

    .line 120
    .line 121
    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_2
    iget-object v2, v9, Ly1/e;->d:Ljava/lang/String;

    .line 130
    .line 131
    const-string v3, "script"

    .line 132
    .line 133
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string v4, "\n            (function() {\n                try {\n                    "

    .line 139
    .line 140
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v2, "\n                    return \'OK\';\n                } catch(e) {\n                    return \'ERROR:\' + (e && e.message ? e.message : String(e));\n                }\n            })();\n        "

    .line 147
    .line 148
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-static {v2}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    new-instance v3, Ly1/d;

    .line 160
    .line 161
    invoke-direct {v3, v13, v9}, Ly1/d;-><init>(LN1/w;Ly1/e;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 165
    .line 166
    .line 167
    :goto_0
    return-void

    .line 168
    :pswitch_3
    check-cast v13, Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 169
    .line 170
    check-cast v9, Lx1/a;

    .line 171
    .line 172
    sget v0, Lcom/minhub/gamehub/editor/EditModeOverlay;->l:I

    .line 173
    .line 174
    iget-object v0, v9, Lx1/a;->a:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v13, v0}, Lcom/minhub/gamehub/editor/EditModeOverlay;->e(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :pswitch_4
    check-cast v13, Lorg/renpy/android/PythonSDLActivity;

    .line 181
    .line 182
    check-cast v9, Landroid/app/AlertDialog;

    .line 183
    .line 184
    invoke-static {v13, v9, v0}, Lorg/renpy/android/PythonSDLActivity;->a(Lorg/renpy/android/PythonSDLActivity;Landroid/app/AlertDialog;Landroid/view/View;)V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :pswitch_5
    check-cast v13, Lorg/renpy/android/PythonSDLActivity;

    .line 189
    .line 190
    check-cast v9, Landroid/widget/Button;

    .line 191
    .line 192
    invoke-static {v13, v9, v0}, Lorg/renpy/android/PythonSDLActivity;->d(Lorg/renpy/android/PythonSDLActivity;Landroid/widget/Button;Landroid/view/View;)V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :pswitch_6
    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 197
    .line 198
    check-cast v9, Landroid/widget/PopupWindow;

    .line 199
    .line 200
    invoke-static {v13, v9, v0}, Lorg/godotengine/godot/utils/DialogUtils$Companion;->b(Lkotlin/jvm/functions/Function0;Landroid/widget/PopupWindow;Landroid/view/View;)V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :pswitch_7
    check-cast v13, Landroid/app/Activity;

    .line 205
    .line 206
    check-cast v9, Ljava/lang/String;

    .line 207
    .line 208
    invoke-static {v13, v9, v0}, Lcom/minhub/gamehub/hub/auth/LoginAlertDialog;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;)V

    .line 209
    .line 210
    .line 211
    return-void

    .line 212
    :pswitch_8
    check-cast v13, Landroid/content/Context;

    .line 213
    .line 214
    check-cast v9, LE1/I;

    .line 215
    .line 216
    const v0, 0x7f1203ef

    .line 217
    .line 218
    .line 219
    invoke-virtual {v9, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-static {v13, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 228
    .line 229
    .line 230
    new-instance v0, LE1/G;

    .line 231
    .line 232
    invoke-direct {v0, v9, v13, v3}, LE1/G;-><init>(LE1/I;Landroid/content/Context;I)V

    .line 233
    .line 234
    .line 235
    new-instance v2, LE1/G;

    .line 236
    .line 237
    invoke-direct {v2, v9, v13, v14}, LE1/G;-><init>(LE1/I;Landroid/content/Context;I)V

    .line 238
    .line 239
    .line 240
    invoke-static {v13, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    const-string v3, "onResult"

    .line 244
    .line 245
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    const-string v3, "onError"

    .line 249
    .line 250
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    new-instance v3, LA1/r;

    .line 254
    .line 255
    const/4 v4, 0x7

    .line 256
    invoke-direct {v3, v13, v0, v2, v4}, LA1/r;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 257
    .line 258
    .line 259
    new-instance v0, Landroid/os/Handler;

    .line 260
    .line 261
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    invoke-direct {v0, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 266
    .line 267
    .line 268
    new-instance v4, Ljava/lang/Thread;

    .line 269
    .line 270
    new-instance v5, LC1/A1;

    .line 271
    .line 272
    const/4 v6, 0x3

    .line 273
    invoke-direct {v5, v0, v3, v2, v6}, LC1/A1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 274
    .line 275
    .line 276
    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v4, v14}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 280
    .line 281
    .line 282
    const-string v0, "update-check"

    .line 283
    .line 284
    invoke-virtual {v4, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 288
    .line 289
    .line 290
    return-void

    .line 291
    :pswitch_9
    check-cast v13, Landroid/content/Context;

    .line 292
    .line 293
    check-cast v9, LE1/n;

    .line 294
    .line 295
    invoke-static {v13}, LS1/d;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    if-lez v0, :cond_3

    .line 304
    .line 305
    const-string v0, "change_pin"

    .line 306
    .line 307
    iput-object v0, v9, LE1/n;->c:Ljava/lang/String;

    .line 308
    .line 309
    iget-object v0, v9, LE1/n;->d:Landroidx/activity/result/ActivityResultLauncher;

    .line 310
    .line 311
    sget v2, Lcom/minhub/gamehub/hub/AppLockActivity;->i:I

    .line 312
    .line 313
    invoke-static {v13, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    new-instance v2, Landroid/content/Intent;

    .line 317
    .line 318
    const-class v3, Lcom/minhub/gamehub/hub/AppLockActivity;

    .line 319
    .line 320
    invoke-direct {v2, v13, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, v2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    goto :goto_1

    .line 327
    :cond_3
    iget-object v0, v9, LE1/n;->e:Landroidx/activity/result/ActivityResultLauncher;

    .line 328
    .line 329
    sget v2, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->j:I

    .line 330
    .line 331
    invoke-static {v13}, Lcom/bumptech/glide/c;->j(Landroid/content/Context;)Landroid/content/Intent;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    invoke-virtual {v0, v2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 336
    .line 337
    .line 338
    :goto_1
    return-void

    .line 339
    :pswitch_a
    check-cast v13, LE1/g;

    .line 340
    .line 341
    check-cast v9, Landroid/content/Context;

    .line 342
    .line 343
    iget-object v0, v13, LE1/g;->c:LB1/z;

    .line 344
    .line 345
    if-nez v0, :cond_4

    .line 346
    .line 347
    const-string v0, "mappingManager"

    .line 348
    .line 349
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    move-object v0, v15

    .line 353
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 354
    .line 355
    .line 356
    invoke-static {}, LB1/z;->a()Ljava/util/LinkedHashMap;

    .line 357
    .line 358
    .line 359
    move-result-object v2

    .line 360
    invoke-virtual {v0, v2}, LB1/z;->h(Ljava/util/LinkedHashMap;)V

    .line 361
    .line 362
    .line 363
    iput-object v15, v13, LE1/g;->e:Ljava/lang/String;

    .line 364
    .line 365
    invoke-virtual {v13}, LE1/g;->e()V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v13}, LE1/g;->f()V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v13}, LE1/g;->i()V

    .line 372
    .line 373
    .line 374
    const v0, 0x7f120404

    .line 375
    .line 376
    .line 377
    invoke-virtual {v13, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    invoke-static {v9, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 386
    .line 387
    .line 388
    return-void

    .line 389
    :pswitch_b
    check-cast v13, LE1/g;

    .line 390
    .line 391
    check-cast v9, LB1/A;

    .line 392
    .line 393
    iget-object v0, v9, LB1/A;->a:Ljava/lang/String;

    .line 394
    .line 395
    iget-object v2, v13, LE1/g;->d:Ljava/util/ArrayList;

    .line 396
    .line 397
    new-instance v4, LE1/a;

    .line 398
    .line 399
    invoke-direct {v4, v0, v3}, LE1/a;-><init>(Ljava/lang/String;I)V

    .line 400
    .line 401
    .line 402
    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->v(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function1;)V

    .line 403
    .line 404
    .line 405
    iget-object v2, v13, LE1/g;->e:Ljava/lang/String;

    .line 406
    .line 407
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    move-result v0

    .line 411
    if-eqz v0, :cond_5

    .line 412
    .line 413
    iput-object v15, v13, LE1/g;->e:Ljava/lang/String;

    .line 414
    .line 415
    :cond_5
    invoke-virtual {v13}, LE1/g;->c()V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v13}, LE1/g;->f()V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v13}, LE1/g;->i()V

    .line 422
    .line 423
    .line 424
    return-void

    .line 425
    :pswitch_c
    check-cast v13, Landroid/content/Context;

    .line 426
    .line 427
    check-cast v9, LC1/d2;

    .line 428
    .line 429
    invoke-static {v13}, LS1/d;->a(Landroid/content/Context;)V

    .line 430
    .line 431
    .line 432
    new-instance v0, Landroid/content/Intent;

    .line 433
    .line 434
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 435
    .line 436
    .line 437
    move-result-object v2

    .line 438
    const-class v3, Lcom/minhub/gamehub/hub/LoginActivity;

    .line 439
    .line 440
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v9, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 451
    .line 452
    .line 453
    return-void

    .line 454
    :pswitch_d
    check-cast v13, LC1/j0;

    .line 455
    .line 456
    check-cast v9, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;

    .line 457
    .line 458
    iget-object v0, v13, LC1/j0;->e:Ljava/lang/Object;

    .line 459
    .line 460
    check-cast v0, LA1/r;

    .line 461
    .line 462
    invoke-virtual {v0, v9}, LA1/r;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    return-void

    .line 466
    :pswitch_e
    check-cast v13, LC1/V1;

    .line 467
    .line 468
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 469
    .line 470
    iget-boolean v2, v13, LC1/V1;->f:Z

    .line 471
    .line 472
    if-eqz v2, :cond_6

    .line 473
    .line 474
    goto :goto_2

    .line 475
    :cond_6
    const/4 v6, 0x3

    .line 476
    invoke-virtual {v0, v6}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 477
    .line 478
    .line 479
    invoke-interface {v9}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    :goto_2
    return-void

    .line 483
    :pswitch_f
    check-cast v13, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;

    .line 484
    .line 485
    check-cast v9, Lcom/minhub/gamehub/hub/catalog/DownloadLink;

    .line 486
    .line 487
    sget v0, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->i:I

    .line 488
    .line 489
    invoke-virtual {v9}, Lcom/minhub/gamehub/hub/catalog/DownloadLink;->getUrl()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    const-string v2, "buzzheavier.com"

    .line 494
    .line 495
    invoke-static {v0, v2}, Lkotlin/text/StringsKt;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 496
    .line 497
    .line 498
    move-result v2

    .line 499
    if-nez v2, :cond_7

    .line 500
    .line 501
    const-string v2, "bzzhr.to"

    .line 502
    .line 503
    invoke-static {v0, v2}, Lkotlin/text/StringsKt;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 504
    .line 505
    .line 506
    move-result v2

    .line 507
    if-nez v2, :cond_7

    .line 508
    .line 509
    const-string v2, "ranoz.gg"

    .line 510
    .line 511
    invoke-static {v0, v2}, Lkotlin/text/StringsKt;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    if-eqz v0, :cond_8

    .line 516
    .line 517
    :cond_7
    invoke-static {v13}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    .line 518
    .line 519
    .line 520
    move-result v0

    .line 521
    if-nez v0, :cond_8

    .line 522
    .line 523
    new-instance v0, LO0/b;

    .line 524
    .line 525
    invoke-direct {v0, v13, v3}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 526
    .line 527
    .line 528
    const v2, 0x7f12008a

    .line 529
    .line 530
    .line 531
    invoke-virtual {v13, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v2

    .line 535
    iget-object v4, v0, Le/f;->c:Ljava/lang/Object;

    .line 536
    .line 537
    check-cast v4, Le/b;

    .line 538
    .line 539
    iput-object v2, v4, Le/b;->d:Ljava/lang/CharSequence;

    .line 540
    .line 541
    const v2, 0x7f120089

    .line 542
    .line 543
    .line 544
    invoke-virtual {v13, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v2

    .line 548
    iput-object v2, v4, Le/b;->f:Ljava/lang/CharSequence;

    .line 549
    .line 550
    const v2, 0x7f120088

    .line 551
    .line 552
    .line 553
    invoke-virtual {v13, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v2

    .line 557
    new-instance v4, LC1/I1;

    .line 558
    .line 559
    invoke-direct {v4, v3, v13}, LC1/I1;-><init>(ILjava/lang/Object;)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v0, v2, v4}, LO0/b;->i(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 563
    .line 564
    .line 565
    const v2, 0x7f12008b

    .line 566
    .line 567
    .line 568
    invoke-virtual {v13, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v2

    .line 572
    invoke-virtual {v0, v2, v15}, LO0/b;->g(Ljava/lang/String;LC1/h1;)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {v0}, Le/f;->e()Le/g;

    .line 576
    .line 577
    .line 578
    goto :goto_4

    .line 579
    :cond_8
    iget-object v0, v13, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->h:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;

    .line 580
    .line 581
    if-nez v0, :cond_9

    .line 582
    .line 583
    const-string v0, "downloadQueue"

    .line 584
    .line 585
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    move-object v0, v15

    .line 589
    :cond_9
    iget-object v2, v13, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->f:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 590
    .line 591
    if-nez v2, :cond_a

    .line 592
    .line 593
    const-string v2, "item"

    .line 594
    .line 595
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    goto :goto_3

    .line 599
    :cond_a
    move-object v15, v2

    .line 600
    :goto_3
    invoke-virtual {v9}, Lcom/minhub/gamehub/hub/catalog/DownloadLink;->getUrl()Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v2

    .line 604
    invoke-virtual {v0, v15, v2}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->enqueue(Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;Ljava/lang/String;)Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;

    .line 605
    .line 606
    .line 607
    const v0, 0x7f1200df

    .line 608
    .line 609
    .line 610
    invoke-virtual {v13, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    invoke-static {v13, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 615
    .line 616
    .line 617
    move-result-object v0

    .line 618
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 619
    .line 620
    .line 621
    invoke-virtual {v13}, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->m()V

    .line 622
    .line 623
    .line 624
    :goto_4
    return-void

    .line 625
    :pswitch_10
    check-cast v13, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;

    .line 626
    .line 627
    check-cast v9, Ljava/lang/String;

    .line 628
    .line 629
    sget v0, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->i:I

    .line 630
    .line 631
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 632
    .line 633
    new-instance v0, Landroid/content/Intent;

    .line 634
    .line 635
    const-string v2, "android.intent.action.VIEW"

    .line 636
    .line 637
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 638
    .line 639
    .line 640
    move-result-object v3

    .line 641
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 642
    .line 643
    .line 644
    invoke-virtual {v13, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 645
    .line 646
    .line 647
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 648
    .line 649
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    .line 651
    .line 652
    goto :goto_5

    .line 653
    :catchall_0
    move-exception v0

    .line 654
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 655
    .line 656
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 657
    .line 658
    .line 659
    move-result-object v0

    .line 660
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    .line 662
    .line 663
    :goto_5
    return-void

    .line 664
    :pswitch_11
    check-cast v13, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;

    .line 665
    .line 666
    check-cast v9, Ljava/lang/Integer;

    .line 667
    .line 668
    sget v0, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->i:I

    .line 669
    .line 670
    new-instance v0, Landroid/content/Intent;

    .line 671
    .line 672
    invoke-direct {v0, v13, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 673
    .line 674
    .line 675
    const/high16 v2, 0x24000000

    .line 676
    .line 677
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 678
    .line 679
    .line 680
    move-result-object v0

    .line 681
    invoke-virtual {v13, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 682
    .line 683
    .line 684
    new-instance v0, Landroid/content/Intent;

    .line 685
    .line 686
    invoke-direct {v0, v13, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 687
    .line 688
    .line 689
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 690
    .line 691
    .line 692
    move-result v2

    .line 693
    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 694
    .line 695
    .line 696
    move-result-object v0

    .line 697
    invoke-virtual {v13, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 698
    .line 699
    .line 700
    invoke-virtual {v13}, Landroid/app/Activity;->finish()V

    .line 701
    .line 702
    .line 703
    return-void

    .line 704
    :pswitch_12
    check-cast v13, Landroid/widget/Button;

    .line 705
    .line 706
    check-cast v9, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;

    .line 707
    .line 708
    sget v0, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->i:I

    .line 709
    .line 710
    invoke-virtual {v13, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 711
    .line 712
    .line 713
    const v0, 0x7f1203e2

    .line 714
    .line 715
    .line 716
    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object v0

    .line 720
    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 721
    .line 722
    .line 723
    invoke-static {v9}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 724
    .line 725
    .line 726
    move-result-object v0

    .line 727
    new-instance v2, LC1/i1;

    .line 728
    .line 729
    invoke-direct {v2, v9, v13, v15, v12}, LC1/i1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 730
    .line 731
    .line 732
    const/4 v6, 0x3

    .line 733
    invoke-static {v0, v15, v2, v6}, LV1/A;->c(LV1/x;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)LV1/p0;

    .line 734
    .line 735
    .line 736
    return-void

    .line 737
    :pswitch_13
    check-cast v13, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;

    .line 738
    .line 739
    check-cast v9, Lcom/minhub/gamehub/data/Game;

    .line 740
    .line 741
    sget v0, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->i:I

    .line 742
    .line 743
    new-instance v0, Landroid/content/Intent;

    .line 744
    .line 745
    invoke-direct {v0, v13, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 746
    .line 747
    .line 748
    const/high16 v2, 0x24000000

    .line 749
    .line 750
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 751
    .line 752
    .line 753
    move-result-object v0

    .line 754
    invoke-virtual {v13, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 755
    .line 756
    .line 757
    new-instance v0, Landroid/content/Intent;

    .line 758
    .line 759
    invoke-direct {v0, v13, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 760
    .line 761
    .line 762
    invoke-virtual {v9}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 763
    .line 764
    .line 765
    move-result v2

    .line 766
    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 767
    .line 768
    .line 769
    move-result-object v0

    .line 770
    invoke-virtual {v13, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 771
    .line 772
    .line 773
    invoke-virtual {v13}, Landroid/app/Activity;->finish()V

    .line 774
    .line 775
    .line 776
    return-void

    .line 777
    :pswitch_14
    check-cast v13, LC1/j0;

    .line 778
    .line 779
    check-cast v9, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 780
    .line 781
    iget-object v0, v13, LC1/j0;->e:Ljava/lang/Object;

    .line 782
    .line 783
    check-cast v0, LC1/h;

    .line 784
    .line 785
    invoke-virtual {v0, v9}, LC1/h;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    .line 787
    .line 788
    return-void

    .line 789
    :pswitch_15
    check-cast v13, Lcom/minhub/gamehub/hub/LoginActivity;

    .line 790
    .line 791
    check-cast v9, Le/g;

    .line 792
    .line 793
    sget v0, Lcom/minhub/gamehub/hub/LoginActivity;->l:I

    .line 794
    .line 795
    invoke-virtual {v13, v14}, Lcom/minhub/gamehub/hub/LoginActivity;->r(Z)V

    .line 796
    .line 797
    .line 798
    invoke-virtual {v9}, Le/D;->dismiss()V

    .line 799
    .line 800
    .line 801
    return-void

    .line 802
    :pswitch_16
    check-cast v13, LC1/j0;

    .line 803
    .line 804
    check-cast v9, LD1/l;

    .line 805
    .line 806
    iget-object v0, v13, LC1/j0;->f:Ljava/lang/Object;

    .line 807
    .line 808
    check-cast v0, LA1/r;

    .line 809
    .line 810
    invoke-virtual {v0, v9}, LA1/r;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    .line 812
    .line 813
    return-void

    .line 814
    :pswitch_17
    check-cast v13, LD1/j;

    .line 815
    .line 816
    check-cast v9, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;

    .line 817
    .line 818
    sget v0, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->o:I

    .line 819
    .line 820
    iget-object v0, v13, LD1/j;->b:LD1/b;

    .line 821
    .line 822
    invoke-virtual {v0}, LD1/b;->b()Z

    .line 823
    .line 824
    .line 825
    move-result v0

    .line 826
    if-nez v0, :cond_b

    .line 827
    .line 828
    goto :goto_6

    .line 829
    :cond_b
    iget-object v0, v13, LD1/j;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 830
    .line 831
    invoke-virtual {v0, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 832
    .line 833
    .line 834
    :goto_6
    iget-object v0, v9, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->k:Landroid/widget/TextView;

    .line 835
    .line 836
    if-nez v0, :cond_c

    .line 837
    .line 838
    const-string v0, "action"

    .line 839
    .line 840
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 841
    .line 842
    .line 843
    goto :goto_7

    .line 844
    :cond_c
    move-object v15, v0

    .line 845
    :goto_7
    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 846
    .line 847
    .line 848
    return-void

    .line 849
    :pswitch_18
    check-cast v13, Lcom/minhub/gamehub/hub/HubActivity;

    .line 850
    .line 851
    check-cast v9, Ljava/lang/String;

    .line 852
    .line 853
    sget v0, Lcom/minhub/gamehub/hub/HubActivity;->j:I

    .line 854
    .line 855
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 856
    .line 857
    invoke-virtual {v13, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 858
    .line 859
    .line 860
    move-result-object v0

    .line 861
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 862
    .line 863
    .line 864
    check-cast v0, Landroid/content/ClipboardManager;

    .line 865
    .line 866
    invoke-static {v4, v9}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 867
    .line 868
    .line 869
    move-result-object v2

    .line 870
    invoke-virtual {v0, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 871
    .line 872
    .line 873
    const v0, 0x7f120365

    .line 874
    .line 875
    .line 876
    invoke-static {v13, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 877
    .line 878
    .line 879
    move-result-object v0

    .line 880
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 881
    .line 882
    .line 883
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 884
    .line 885
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 886
    .line 887
    .line 888
    goto :goto_8

    .line 889
    :catchall_1
    move-exception v0

    .line 890
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 891
    .line 892
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 893
    .line 894
    .line 895
    move-result-object v0

    .line 896
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    .line 898
    .line 899
    :goto_8
    return-void

    .line 900
    :pswitch_19
    check-cast v13, LC1/d1;

    .line 901
    .line 902
    check-cast v9, Ljava/lang/String;

    .line 903
    .line 904
    const-string v2, "null cannot be cast to non-null type com.google.android.material.chip.Chip"

    .line 905
    .line 906
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 907
    .line 908
    .line 909
    check-cast v0, Lcom/google/android/material/chip/Chip;

    .line 910
    .line 911
    invoke-virtual {v0, v14}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 912
    .line 913
    .line 914
    iput-object v9, v13, LC1/d1;->e:Ljava/lang/String;

    .line 915
    .line 916
    iget-object v0, v13, LC1/d1;->c:Lkotlin/Lazy;

    .line 917
    .line 918
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 919
    .line 920
    .line 921
    move-result-object v0

    .line 922
    check-cast v0, LC1/Z0;

    .line 923
    .line 924
    iget-object v0, v0, LC1/Z0;->b:Landroidx/lifecycle/LiveData;

    .line 925
    .line 926
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 927
    .line 928
    .line 929
    move-result-object v0

    .line 930
    check-cast v0, Ljava/util/List;

    .line 931
    .line 932
    if-eqz v0, :cond_d

    .line 933
    .line 934
    invoke-virtual {v13, v0, v14}, LC1/d1;->b(Ljava/util/List;Z)V

    .line 935
    .line 936
    .line 937
    :cond_d
    return-void

    .line 938
    :pswitch_1a
    check-cast v13, Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 939
    .line 940
    check-cast v9, Ljava/lang/String;

    .line 941
    .line 942
    sget v0, Lcom/minhub/gamehub/hub/GameDetailActivity;->w:I

    .line 943
    .line 944
    :try_start_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 945
    .line 946
    invoke-virtual {v13, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 947
    .line 948
    .line 949
    move-result-object v0

    .line 950
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 951
    .line 952
    .line 953
    check-cast v0, Landroid/content/ClipboardManager;

    .line 954
    .line 955
    invoke-static {v4, v9}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 956
    .line 957
    .line 958
    move-result-object v2

    .line 959
    invoke-virtual {v0, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 960
    .line 961
    .line 962
    const v0, 0x7f120365

    .line 963
    .line 964
    .line 965
    invoke-static {v13, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 966
    .line 967
    .line 968
    move-result-object v0

    .line 969
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 970
    .line 971
    .line 972
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 973
    .line 974
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 975
    .line 976
    .line 977
    goto :goto_9

    .line 978
    :catchall_2
    move-exception v0

    .line 979
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 980
    .line 981
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 982
    .line 983
    .line 984
    move-result-object v0

    .line 985
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    .line 987
    .line 988
    :goto_9
    return-void

    .line 989
    :pswitch_1b
    check-cast v13, LC1/j0;

    .line 990
    .line 991
    check-cast v9, Lcom/minhub/gamehub/data/Game;

    .line 992
    .line 993
    iget-object v0, v13, LC1/j0;->f:Ljava/lang/Object;

    .line 994
    .line 995
    check-cast v0, LC1/a1;

    .line 996
    .line 997
    invoke-virtual {v0, v9}, LC1/a1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    .line 999
    .line 1000
    return-void

    .line 1001
    :pswitch_1c
    check-cast v13, Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 1002
    .line 1003
    check-cast v9, LH0/o;

    .line 1004
    .line 1005
    sget v0, Lcom/minhub/gamehub/hub/AddGameActivity;->y:I

    .line 1006
    .line 1007
    new-instance v0, LC1/Z;

    .line 1008
    .line 1009
    const/16 v2, 0xf

    .line 1010
    .line 1011
    invoke-direct {v0, v15, v15, v15, v2}, LC1/Z;-><init>(Ljava/lang/String;LC1/Y;LC1/c0;I)V

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v13, v0}, Lcom/minhub/gamehub/hub/AddGameActivity;->n(LC1/Z;)V

    .line 1015
    .line 1016
    .line 1017
    invoke-virtual {v9}, Le/D;->dismiss()V

    .line 1018
    .line 1019
    .line 1020
    return-void

    .line 1021
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
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
