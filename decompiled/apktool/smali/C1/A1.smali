.class public final synthetic LC1/A1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p4, p0, LC1/A1;->b:I

    iput-object p1, p0, LC1/A1;->c:Ljava/lang/Object;

    iput-object p2, p0, LC1/A1;->e:Ljava/lang/Object;

    iput-object p3, p0, LC1/A1;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, LC1/A1;->b:I

    iput-object p1, p0, LC1/A1;->c:Ljava/lang/Object;

    iput-object p2, p0, LC1/A1;->d:Ljava/lang/Object;

    iput-object p3, p0, LC1/A1;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 3
    iput p4, p0, LC1/A1;->b:I

    iput-object p1, p0, LC1/A1;->d:Ljava/lang/Object;

    iput-object p2, p0, LC1/A1;->c:Ljava/lang/Object;

    iput-object p3, p0, LC1/A1;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, LC1/A1;->b:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0x2710

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x1

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget-object v0, v1, LC1/A1;->c:Ljava/lang/Object;

    .line 14
    .line 15
    move-object v2, v0

    .line 16
    check-cast v2, Ly1/x0;

    .line 17
    .line 18
    iget-object v0, v1, LC1/A1;->d:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Ly1/a1;

    .line 21
    .line 22
    iget-object v3, v1, LC1/A1;->e:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v3, Ljava/util/Map;

    .line 25
    .line 26
    :try_start_0
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 27
    .line 28
    invoke-static {v0, v3}, Ly1/b1;->a(Ly1/a1;Ljava/util/Map;)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-lez v3, :cond_0

    .line 33
    .line 34
    invoke-static {v0}, Ly1/b1;->k(Ly1/a1;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    goto :goto_2

    .line 49
    :goto_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 50
    .line 51
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :goto_2
    new-instance v3, LA1/G0;

    .line 60
    .line 61
    const/4 v4, 0x5

    .line 62
    invoke-direct {v3, v4, v0, v2}, LA1/G0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, v2, Ly1/x0;->a:Landroid/app/Activity;

    .line 66
    .line 67
    new-instance v4, LC1/k;

    .line 68
    .line 69
    const/16 v5, 0x14

    .line 70
    .line 71
    invoke-direct {v4, v5, v2, v3}, LC1/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :pswitch_0
    iget-object v0, v1, LC1/A1;->c:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v0, Lcom/minhub/gamehub/game/GameActivity;

    .line 81
    .line 82
    iget-object v2, v1, LC1/A1;->d:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v2, Ljava/lang/String;

    .line 85
    .line 86
    iget-object v3, v1, LC1/A1;->e:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v3, Landroid/webkit/WebView;

    .line 89
    .line 90
    const-string v4, ")"

    .line 91
    .line 92
    const-string v6, "MinHub-Launch"

    .line 93
    .line 94
    iget v7, v0, Lcom/minhub/gamehub/game/GameActivity;->J:I

    .line 95
    .line 96
    iget v8, v0, Lcom/minhub/gamehub/game/GameActivity;->K:I

    .line 97
    .line 98
    if-lt v7, v8, :cond_1

    .line 99
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v3, "Boot watchdog: giving up after "

    .line 103
    .line 104
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v3, " reload(s) (reason="

    .line 111
    .line 112
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_1
    add-int/2addr v7, v5

    .line 130
    iput v7, v0, Lcom/minhub/gamehub/game/GameActivity;->J:I

    .line 131
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string v5, "Boot watchdog: auto-reload #"

    .line 135
    .line 136
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v5, " (reason="

    .line 143
    .line 144
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3}, Landroid/webkit/WebView;->reload()V

    .line 161
    .line 162
    .line 163
    :goto_3
    return-void

    .line 164
    :pswitch_1
    iget-object v0, v1, LC1/A1;->c:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v0, Lcom/minhub/gamehub/game/GameActivity;

    .line 167
    .line 168
    iget-object v2, v1, LC1/A1;->d:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v2, LQ1/d;

    .line 171
    .line 172
    iget-object v3, v1, LC1/A1;->e:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v3, LG1/i;

    .line 175
    .line 176
    invoke-virtual {v0, v2}, Lcom/minhub/gamehub/game/GameActivity;->y(LQ1/d;)Z

    .line 177
    .line 178
    .line 179
    move-result v6

    .line 180
    if-nez v6, :cond_2

    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    if-eqz v3, :cond_3

    .line 188
    .line 189
    if-eq v3, v5, :cond_3

    .line 190
    .line 191
    invoke-virtual {v2}, LQ1/d;->c()V

    .line 192
    .line 193
    .line 194
    const v2, 0x7f120334

    .line 195
    .line 196
    .line 197
    invoke-static {v0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 202
    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_3
    new-instance v3, LO0/b;

    .line 206
    .line 207
    invoke-direct {v3, v0, v4}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 208
    .line 209
    .line 210
    iget-object v6, v3, Le/f;->c:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v6, Le/b;

    .line 213
    .line 214
    const v7, 0x7f120336

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3, v7}, LO0/b;->j(I)V

    .line 218
    .line 219
    .line 220
    const v7, 0x7f120335

    .line 221
    .line 222
    .line 223
    iget-object v8, v6, Le/b;->a:Landroid/view/ContextThemeWrapper;

    .line 224
    .line 225
    invoke-virtual {v8, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 226
    .line 227
    .line 228
    move-result-object v7

    .line 229
    iput-object v7, v6, Le/b;->f:Ljava/lang/CharSequence;

    .line 230
    .line 231
    iput-boolean v4, v6, Le/b;->m:Z

    .line 232
    .line 233
    new-instance v6, Ly1/m;

    .line 234
    .line 235
    invoke-direct {v6, v0, v2, v4}, Ly1/m;-><init>(Lcom/minhub/gamehub/game/GameActivity;LQ1/d;I)V

    .line 236
    .line 237
    .line 238
    const v0, 0x7f120338

    .line 239
    .line 240
    .line 241
    invoke-virtual {v3, v0, v6}, LO0/b;->h(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 242
    .line 243
    .line 244
    new-instance v0, Ly1/h;

    .line 245
    .line 246
    invoke-direct {v0, v2, v5}, Ly1/h;-><init>(LQ1/d;I)V

    .line 247
    .line 248
    .line 249
    const v2, 0x7f120339

    .line 250
    .line 251
    .line 252
    invoke-virtual {v3, v2, v0}, LO0/b;->f(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v3}, Le/f;->e()Le/g;

    .line 256
    .line 257
    .line 258
    :goto_4
    return-void

    .line 259
    :pswitch_2
    iget-object v0, v1, LC1/A1;->c:Ljava/lang/Object;

    .line 260
    .line 261
    check-cast v0, Landroid/webkit/WebView;

    .line 262
    .line 263
    iget-object v2, v1, LC1/A1;->d:Ljava/lang/Object;

    .line 264
    .line 265
    check-cast v2, Lu1/a;

    .line 266
    .line 267
    iget-object v3, v1, LC1/A1;->e:Ljava/lang/Object;

    .line 268
    .line 269
    check-cast v3, Lcom/minhub/gamehub/data/Game;

    .line 270
    .line 271
    sget-object v4, Lu1/b;->a:Li1/l;

    .line 272
    .line 273
    const-string v4, "(function(){\n  try {\n    var k = window.TYRANO && window.TYRANO.kag;\n    if (!k || !k.stat) return null;\n    var seen = [];\n    return JSON.stringify({ f: k.stat.f || {}, sf: (k.variable && k.variable.sf) || {} }, function(key, v) {\n      if (v && typeof v === \'object\') { if (seen.indexOf(v) >= 0) return undefined; seen.push(v); }\n      return v;\n    });\n  } catch (e) { return null; }\n})();"

    .line 274
    .line 275
    new-instance v6, Lcom/minhub/gamehub/hub/catalog/c;

    .line 276
    .line 277
    invoke-direct {v6, v2, v3, v0, v5}, Lcom/minhub/gamehub/hub/catalog/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, v4, v6}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 281
    .line 282
    .line 283
    return-void

    .line 284
    :pswitch_3
    iget-object v0, v1, LC1/A1;->c:Ljava/lang/Object;

    .line 285
    .line 286
    check-cast v0, Lorg/godotengine/godot/GodotActivity;

    .line 287
    .line 288
    iget-object v2, v1, LC1/A1;->d:Ljava/lang/Object;

    .line 289
    .line 290
    check-cast v2, Landroid/os/Bundle;

    .line 291
    .line 292
    iget-object v3, v1, LC1/A1;->e:Ljava/lang/Object;

    .line 293
    .line 294
    check-cast v3, Landroid/content/Intent;

    .line 295
    .line 296
    invoke-static {v0, v2, v3}, Lorg/godotengine/godot/GodotActivity;->o(Lorg/godotengine/godot/GodotActivity;Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 297
    .line 298
    .line 299
    return-void

    .line 300
    :pswitch_4
    iget-object v0, v1, LC1/A1;->c:Ljava/lang/Object;

    .line 301
    .line 302
    check-cast v0, Lorg/godotengine/godot/Godot;

    .line 303
    .line 304
    iget-object v2, v1, LC1/A1;->d:Ljava/lang/Object;

    .line 305
    .line 306
    check-cast v2, Landroidx/core/view/WindowInsetsCompat;

    .line 307
    .line 308
    iget-object v3, v1, LC1/A1;->e:Ljava/lang/Object;

    .line 309
    .line 310
    check-cast v3, Landroid/view/View;

    .line 311
    .line 312
    invoke-static {v0, v3, v2}, Lorg/godotengine/godot/Godot;->o(Lorg/godotengine/godot/Godot;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)V

    .line 313
    .line 314
    .line 315
    return-void

    .line 316
    :pswitch_5
    iget-object v0, v1, LC1/A1;->d:Ljava/lang/Object;

    .line 317
    .line 318
    check-cast v0, Ljava/lang/String;

    .line 319
    .line 320
    iget-object v2, v1, LC1/A1;->c:Ljava/lang/Object;

    .line 321
    .line 322
    check-cast v2, Lorg/godotengine/godot/plugin/SignalInfo;

    .line 323
    .line 324
    iget-object v3, v1, LC1/A1;->e:Ljava/lang/Object;

    .line 325
    .line 326
    check-cast v3, [Ljava/lang/Object;

    .line 327
    .line 328
    invoke-static {v0, v2, v3}, Lorg/godotengine/godot/plugin/GodotPlugin;->a(Ljava/lang/String;Lorg/godotengine/godot/plugin/SignalInfo;[Ljava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    return-void

    .line 332
    :pswitch_6
    iget-object v0, v1, LC1/A1;->d:Ljava/lang/Object;

    .line 333
    .line 334
    check-cast v0, Ljava/lang/String;

    .line 335
    .line 336
    iget-object v2, v1, LC1/A1;->c:Ljava/lang/Object;

    .line 337
    .line 338
    check-cast v2, Landroid/content/Context;

    .line 339
    .line 340
    iget-object v3, v1, LC1/A1;->e:Ljava/lang/Object;

    .line 341
    .line 342
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 343
    .line 344
    invoke-static {v0, v2, v3}, Lcom/minhub/gamehub/hub/auth/SessionVerifier;->c(Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    .line 345
    .line 346
    .line 347
    return-void

    .line 348
    :pswitch_7
    iget-object v0, v1, LC1/A1;->c:Ljava/lang/Object;

    .line 349
    .line 350
    check-cast v0, LA1/h;

    .line 351
    .line 352
    iget-object v2, v1, LC1/A1;->d:Ljava/lang/Object;

    .line 353
    .line 354
    check-cast v2, Lcom/bumptech/glide/c;

    .line 355
    .line 356
    iget-object v3, v1, LC1/A1;->e:Ljava/lang/Object;

    .line 357
    .line 358
    check-cast v3, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 359
    .line 360
    :try_start_1
    iget-object v0, v0, LA1/h;->c:Landroid/content/Context;

    .line 361
    .line 362
    invoke-static {v0}, La/a;->h(Landroid/content/Context;)Landroidx/emoji2/text/r;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    if-eqz v0, :cond_4

    .line 367
    .line 368
    iget-object v4, v0, LP/Q;->b:Ljava/lang/Object;

    .line 369
    .line 370
    check-cast v4, Landroidx/emoji2/text/i;

    .line 371
    .line 372
    check-cast v4, Landroidx/emoji2/text/q;

    .line 373
    .line 374
    iget-object v5, v4, Landroidx/emoji2/text/q;->e:Ljava/lang/Object;

    .line 375
    .line 376
    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 377
    :try_start_2
    iput-object v3, v4, Landroidx/emoji2/text/q;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 378
    .line 379
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 380
    :try_start_3
    iget-object v0, v0, LP/Q;->b:Ljava/lang/Object;

    .line 381
    .line 382
    check-cast v0, Landroidx/emoji2/text/i;

    .line 383
    .line 384
    new-instance v4, Landroidx/emoji2/text/k;

    .line 385
    .line 386
    invoke-direct {v4, v2, v3}, Landroidx/emoji2/text/k;-><init>(Lcom/bumptech/glide/c;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 387
    .line 388
    .line 389
    invoke-interface {v0, v4}, Landroidx/emoji2/text/i;->a(Lcom/bumptech/glide/c;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 390
    .line 391
    .line 392
    goto :goto_6

    .line 393
    :catchall_1
    move-exception v0

    .line 394
    goto :goto_5

    .line 395
    :catchall_2
    move-exception v0

    .line 396
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 397
    :try_start_5
    throw v0

    .line 398
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    .line 399
    .line 400
    const-string v4, "EmojiCompat font provider not available on this device."

    .line 401
    .line 402
    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 406
    :goto_5
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/c;->B(Ljava/lang/Throwable;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 410
    .line 411
    .line 412
    :goto_6
    return-void

    .line 413
    :pswitch_8
    iget-object v0, v1, LC1/A1;->c:Ljava/lang/Object;

    .line 414
    .line 415
    check-cast v0, Landroid/content/Context;

    .line 416
    .line 417
    iget-object v2, v1, LC1/A1;->e:Ljava/lang/Object;

    .line 418
    .line 419
    check-cast v2, LR1/a;

    .line 420
    .line 421
    iget-object v3, v1, LC1/A1;->d:Ljava/lang/Object;

    .line 422
    .line 423
    check-cast v3, Ljava/lang/String;

    .line 424
    .line 425
    invoke-static {v0, v2, v3}, Lcom/bumptech/glide/d;->o(Landroid/content/Context;LR1/a;Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    return-void

    .line 429
    :pswitch_9
    iget-object v0, v1, LC1/A1;->c:Ljava/lang/Object;

    .line 430
    .line 431
    move-object v5, v0

    .line 432
    check-cast v5, Landroid/os/Handler;

    .line 433
    .line 434
    iget-object v0, v1, LC1/A1;->d:Ljava/lang/Object;

    .line 435
    .line 436
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 437
    .line 438
    iget-object v6, v1, LC1/A1;->e:Ljava/lang/Object;

    .line 439
    .line 440
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 441
    .line 442
    const-string v7, "HTTP "

    .line 443
    .line 444
    :try_start_6
    const-string v8, "https://h-game18.xyz/minhub-update.json"

    .line 445
    .line 446
    invoke-static {v8}, LS1/j;->c(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    .line 447
    .line 448
    .line 449
    move-result-object v8

    .line 450
    invoke-virtual {v8, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 451
    .line 452
    .line 453
    const/16 v3, 0x3a98

    .line 454
    .line 455
    invoke-virtual {v8, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 456
    .line 457
    .line 458
    const-string v3, "GET"

    .line 459
    .line 460
    invoke-virtual {v8, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v8, v4}, Ljava/net/URLConnection;->setUseCaches(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 464
    .line 465
    .line 466
    :try_start_7
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 467
    .line 468
    .line 469
    move-result v3

    .line 470
    const/16 v4, 0xc8

    .line 471
    .line 472
    if-gt v4, v3, :cond_5

    .line 473
    .line 474
    const/16 v4, 0x12c

    .line 475
    .line 476
    if-ge v3, v4, :cond_5

    .line 477
    .line 478
    invoke-virtual {v8}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 479
    .line 480
    .line 481
    move-result-object v3

    .line 482
    const-string v4, "getInputStream(...)"

    .line 483
    .line 484
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 488
    .line 489
    new-instance v7, Ljava/io/InputStreamReader;

    .line 490
    .line 491
    invoke-direct {v7, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 492
    .line 493
    .line 494
    new-instance v3, Ljava/io/BufferedReader;

    .line 495
    .line 496
    const/16 v4, 0x2000

    .line 497
    .line 498
    invoke-direct {v3, v7, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 499
    .line 500
    .line 501
    :try_start_8
    invoke-static {v3}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 505
    :try_start_9
    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 506
    .line 507
    .line 508
    new-instance v2, Lorg/json/JSONObject;

    .line 509
    .line 510
    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    new-instance v3, LC1/k;

    .line 514
    .line 515
    const/16 v4, 0x9

    .line 516
    .line 517
    invoke-direct {v3, v4, v0, v2}, LC1/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v5, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 521
    .line 522
    .line 523
    :try_start_a
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 524
    .line 525
    .line 526
    goto :goto_9

    .line 527
    :catch_0
    move-exception v0

    .line 528
    goto :goto_8

    .line 529
    :catchall_3
    move-exception v0

    .line 530
    goto :goto_7

    .line 531
    :catchall_4
    move-exception v0

    .line 532
    move-object v2, v0

    .line 533
    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 534
    :catchall_5
    move-exception v0

    .line 535
    :try_start_c
    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 536
    .line 537
    .line 538
    throw v0

    .line 539
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 540
    .line 541
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 542
    .line 543
    .line 544
    move-result v2

    .line 545
    new-instance v3, Ljava/lang/StringBuilder;

    .line 546
    .line 547
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v2

    .line 557
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 561
    :goto_7
    :try_start_d
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 562
    .line 563
    .line 564
    throw v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    .line 565
    :goto_8
    new-instance v2, LC1/k;

    .line 566
    .line 567
    const/16 v3, 0xa

    .line 568
    .line 569
    invoke-direct {v2, v3, v6, v0}, LC1/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v5, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 573
    .line 574
    .line 575
    :goto_9
    return-void

    .line 576
    :pswitch_a
    iget-object v0, v1, LC1/A1;->c:Ljava/lang/Object;

    .line 577
    .line 578
    check-cast v0, LC1/i2;

    .line 579
    .line 580
    iget-object v2, v1, LC1/A1;->d:Ljava/lang/Object;

    .line 581
    .line 582
    check-cast v2, LC1/V1;

    .line 583
    .line 584
    iget-object v3, v1, LC1/A1;->e:Ljava/lang/Object;

    .line 585
    .line 586
    check-cast v3, Ljava/lang/CharSequence;

    .line 587
    .line 588
    invoke-virtual {v0}, LC1/i2;->invoke()Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    invoke-virtual {v2, v3}, LC1/V1;->c(Ljava/lang/CharSequence;)V

    .line 592
    .line 593
    .line 594
    iget-object v0, v2, LC1/V1;->b:Landroid/widget/LinearLayout;

    .line 595
    .line 596
    const/4 v3, 0x0

    .line 597
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 598
    .line 599
    .line 600
    const/high16 v4, 0x42400000    # 48.0f

    .line 601
    .line 602
    iget v6, v2, LC1/V1;->h:F

    .line 603
    .line 604
    mul-float/2addr v4, v6

    .line 605
    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 606
    .line 607
    .line 608
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 609
    .line 610
    .line 611
    move-result-object v0

    .line 612
    const-wide/16 v6, 0x0

    .line 613
    .line 614
    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 615
    .line 616
    .line 617
    move-result-object v0

    .line 618
    const/high16 v4, 0x3f800000    # 1.0f

    .line 619
    .line 620
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 621
    .line 622
    .line 623
    move-result-object v0

    .line 624
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 625
    .line 626
    .line 627
    move-result-object v0

    .line 628
    const-wide/16 v3, 0x12c

    .line 629
    .line 630
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 631
    .line 632
    .line 633
    move-result-object v0

    .line 634
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    .line 635
    .line 636
    const/high16 v4, 0x40000000    # 2.0f

    .line 637
    .line 638
    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 639
    .line 640
    .line 641
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    new-instance v3, LC1/Q1;

    .line 646
    .line 647
    invoke-direct {v3, v2, v5}, LC1/Q1;-><init>(LC1/V1;I)V

    .line 648
    .line 649
    .line 650
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 651
    .line 652
    .line 653
    move-result-object v0

    .line 654
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 655
    .line 656
    .line 657
    return-void

    .line 658
    :pswitch_b
    iget-object v0, v1, LC1/A1;->c:Ljava/lang/Object;

    .line 659
    .line 660
    move-object v7, v0

    .line 661
    check-cast v7, Lcom/minhub/gamehub/hub/LoginActivity;

    .line 662
    .line 663
    iget-object v0, v1, LC1/A1;->e:Ljava/lang/Object;

    .line 664
    .line 665
    iget-object v3, v1, LC1/A1;->d:Ljava/lang/Object;

    .line 666
    .line 667
    check-cast v3, Ljava/lang/String;

    .line 668
    .line 669
    sget v6, Lcom/minhub/gamehub/hub/LoginActivity;->l:I

    .line 670
    .line 671
    const-string v6, "LoginActivity"

    .line 672
    .line 673
    const-string v8, "message"

    .line 674
    .line 675
    const-string v9, "getString(...)"

    .line 676
    .line 677
    const-string v10, "data"

    .line 678
    .line 679
    const-string v11, ""

    .line 680
    .line 681
    invoke-virtual {v7}, Landroid/app/Activity;->isFinishing()Z

    .line 682
    .line 683
    .line 684
    move-result v12

    .line 685
    if-nez v12, :cond_1a

    .line 686
    .line 687
    invoke-virtual {v7}, Landroid/app/Activity;->isDestroyed()Z

    .line 688
    .line 689
    .line 690
    move-result v12

    .line 691
    if-eqz v12, :cond_6

    .line 692
    .line 693
    goto/16 :goto_19

    .line 694
    .line 695
    :cond_6
    iget-object v12, v7, Lcom/minhub/gamehub/hub/LoginActivity;->f:Le/g;

    .line 696
    .line 697
    if-eqz v12, :cond_7

    .line 698
    .line 699
    invoke-virtual {v12}, Le/D;->dismiss()V

    .line 700
    .line 701
    .line 702
    :cond_7
    iput-object v2, v7, Lcom/minhub/gamehub/hub/LoginActivity;->f:Le/g;

    .line 703
    .line 704
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 705
    .line 706
    .line 707
    move-result-object v12

    .line 708
    if-nez v12, :cond_18

    .line 709
    .line 710
    move-object v12, v0

    .line 711
    check-cast v12, Lcom/minhub/gamehub/hub/auth/AuthHttp$Result;

    .line 712
    .line 713
    invoke-virtual {v12}, Lcom/minhub/gamehub/hub/auth/AuthHttp$Result;->isSuccess()Z

    .line 714
    .line 715
    .line 716
    move-result v0

    .line 717
    if-eqz v0, :cond_f

    .line 718
    .line 719
    invoke-virtual {v12}, Lcom/minhub/gamehub/hub/auth/AuthHttp$Result;->getBody()Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v0

    .line 723
    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 724
    .line 725
    .line 726
    move-result-object v13

    .line 727
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 728
    .line 729
    .line 730
    move-result-object v13

    .line 731
    const-string v14, "Login successful"

    .line 732
    .line 733
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 734
    .line 735
    .line 736
    move-result v13

    .line 737
    if-eqz v13, :cond_8

    .line 738
    .line 739
    move v0, v5

    .line 740
    goto :goto_b

    .line 741
    :cond_8
    :try_start_e
    new-instance v13, Lorg/json/JSONObject;

    .line 742
    .line 743
    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 744
    .line 745
    .line 746
    const-string v0, "success"

    .line 747
    .line 748
    invoke-virtual {v13, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 749
    .line 750
    .line 751
    move-result v0

    .line 752
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    .line 758
    .line 759
    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 760
    goto :goto_a

    .line 761
    :catchall_6
    move-exception v0

    .line 762
    sget-object v13, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 763
    .line 764
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 765
    .line 766
    .line 767
    move-result-object v0

    .line 768
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    move-result-object v0

    .line 772
    :goto_a
    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 773
    .line 774
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 775
    .line 776
    .line 777
    move-result v14

    .line 778
    if-eqz v14, :cond_9

    .line 779
    .line 780
    move-object v0, v13

    .line 781
    :cond_9
    check-cast v0, Ljava/lang/Boolean;

    .line 782
    .line 783
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 784
    .line 785
    .line 786
    move-result v0

    .line 787
    :goto_b
    if-eqz v0, :cond_f

    .line 788
    .line 789
    invoke-virtual {v12}, Lcom/minhub/gamehub/hub/auth/AuthHttp$Result;->getBody()Ljava/lang/String;

    .line 790
    .line 791
    .line 792
    move-result-object v0

    .line 793
    const-string v3, "MinHub Player"

    .line 794
    .line 795
    :try_start_f
    new-instance v6, Lorg/json/JSONObject;

    .line 796
    .line 797
    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 798
    .line 799
    .line 800
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 801
    .line 802
    .line 803
    move-result-object v0

    .line 804
    if-eqz v0, :cond_b

    .line 805
    .line 806
    const-string v6, "displayName"

    .line 807
    .line 808
    invoke-virtual {v0, v6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object v0

    .line 812
    if-eqz v0, :cond_b

    .line 813
    .line 814
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 815
    .line 816
    .line 817
    move-result v6

    .line 818
    if-nez v6, :cond_a

    .line 819
    .line 820
    goto :goto_c

    .line 821
    :cond_a
    move-object v0, v2

    .line 822
    :goto_c
    if-eqz v0, :cond_b

    .line 823
    .line 824
    goto :goto_d

    .line 825
    :catchall_7
    move-exception v0

    .line 826
    goto :goto_e

    .line 827
    :cond_b
    move-object v0, v3

    .line 828
    :goto_d
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    .line 830
    .line 831
    move-result-object v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 832
    goto :goto_f

    .line 833
    :goto_e
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 834
    .line 835
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 836
    .line 837
    .line 838
    move-result-object v0

    .line 839
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    .line 841
    .line 842
    move-result-object v0

    .line 843
    :goto_f
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 844
    .line 845
    .line 846
    move-result v6

    .line 847
    if-eqz v6, :cond_c

    .line 848
    .line 849
    goto :goto_10

    .line 850
    :cond_c
    move-object v3, v0

    .line 851
    :goto_10
    check-cast v3, Ljava/lang/String;

    .line 852
    .line 853
    invoke-virtual {v12}, Lcom/minhub/gamehub/hub/auth/AuthHttp$Result;->getBody()Ljava/lang/String;

    .line 854
    .line 855
    .line 856
    move-result-object v0

    .line 857
    :try_start_10
    new-instance v6, Lorg/json/JSONObject;

    .line 858
    .line 859
    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 860
    .line 861
    .line 862
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 863
    .line 864
    .line 865
    move-result-object v0

    .line 866
    if-eqz v0, :cond_d

    .line 867
    .line 868
    const-string v6, "sessionToken"

    .line 869
    .line 870
    invoke-virtual {v0, v6, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 871
    .line 872
    .line 873
    move-result-object v0

    .line 874
    if-eqz v0, :cond_d

    .line 875
    .line 876
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 877
    .line 878
    .line 879
    move-result v6

    .line 880
    if-nez v6, :cond_d

    .line 881
    .line 882
    goto :goto_11

    .line 883
    :cond_d
    move-object v0, v2

    .line 884
    goto :goto_11

    .line 885
    :catchall_8
    move-exception v0

    .line 886
    goto :goto_12

    .line 887
    :goto_11
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    .line 889
    .line 890
    move-result-object v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 891
    goto :goto_13

    .line 892
    :goto_12
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 893
    .line 894
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 895
    .line 896
    .line 897
    move-result-object v0

    .line 898
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    .line 900
    .line 901
    move-result-object v0

    .line 902
    :goto_13
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 903
    .line 904
    .line 905
    move-result v6

    .line 906
    if-eqz v6, :cond_e

    .line 907
    .line 908
    move-object v0, v2

    .line 909
    :cond_e
    check-cast v0, Ljava/lang/String;

    .line 910
    .line 911
    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 912
    .line 913
    .line 914
    move-result-object v6

    .line 915
    sget-object v8, LS1/d;->a:Ljava/util/Set;

    .line 916
    .line 917
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 918
    .line 919
    .line 920
    invoke-static {v6, v5}, LS1/d;->y(Landroid/content/Context;Z)V

    .line 921
    .line 922
    .line 923
    invoke-static {v6, v4}, LS1/d;->A(Landroid/content/Context;Z)V

    .line 924
    .line 925
    .line 926
    invoke-static {v6, v3}, LS1/d;->D(Landroid/content/Context;Ljava/lang/String;)V

    .line 927
    .line 928
    .line 929
    const/4 v3, 0x3

    .line 930
    invoke-static {v6, v3}, LS1/d;->z(Landroid/content/Context;I)V

    .line 931
    .line 932
    .line 933
    invoke-static {v6, v2}, LS1/d;->B(Landroid/content/Context;Ljava/lang/String;)V

    .line 934
    .line 935
    .line 936
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 937
    .line 938
    .line 939
    move-result-wide v2

    .line 940
    invoke-static {v6, v2, v3}, LS1/d;->x(Landroid/content/Context;J)V

    .line 941
    .line 942
    .line 943
    invoke-static {v6, v0}, LS1/d;->C(Landroid/content/Context;Ljava/lang/String;)V

    .line 944
    .line 945
    .line 946
    invoke-virtual {v7, v5}, Lcom/minhub/gamehub/hub/LoginActivity;->r(Z)V

    .line 947
    .line 948
    .line 949
    sget-object v6, Lcom/minhub/gamehub/hub/auth/LoginAlertDialog;->INSTANCE:Lcom/minhub/gamehub/hub/auth/LoginAlertDialog;

    .line 950
    .line 951
    sget-object v8, Lcom/minhub/gamehub/hub/auth/LoginAlertDialog$Kind;->SUCCESS:Lcom/minhub/gamehub/hub/auth/LoginAlertDialog$Kind;

    .line 952
    .line 953
    const v0, 0x7f12028f

    .line 954
    .line 955
    .line 956
    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 957
    .line 958
    .line 959
    move-result-object v0

    .line 960
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 961
    .line 962
    .line 963
    const v2, 0x7f12028e

    .line 964
    .line 965
    .line 966
    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 967
    .line 968
    .line 969
    move-result-object v10

    .line 970
    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 971
    .line 972
    .line 973
    new-instance v15, LC1/B1;

    .line 974
    .line 975
    const/4 v2, 0x2

    .line 976
    invoke-direct {v15, v7, v2}, LC1/B1;-><init>(Lcom/minhub/gamehub/hub/LoginActivity;I)V

    .line 977
    .line 978
    .line 979
    const/16 v16, 0x70

    .line 980
    .line 981
    const/16 v17, 0x0

    .line 982
    .line 983
    const/4 v11, 0x0

    .line 984
    const/4 v12, 0x0

    .line 985
    const/4 v13, 0x0

    .line 986
    const/4 v14, 0x0

    .line 987
    move-object v9, v0

    .line 988
    invoke-static/range {v6 .. v17}, Lcom/minhub/gamehub/hub/auth/LoginAlertDialog;->show$default(Lcom/minhub/gamehub/hub/auth/LoginAlertDialog;Landroid/app/Activity;Lcom/minhub/gamehub/hub/auth/LoginAlertDialog$Kind;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Le/g;

    .line 989
    .line 990
    .line 991
    goto/16 :goto_19

    .line 992
    .line 993
    :cond_f
    invoke-virtual {v12}, Lcom/minhub/gamehub/hub/auth/AuthHttp$Result;->isSuccess()Z

    .line 994
    .line 995
    .line 996
    move-result v0

    .line 997
    if-eqz v0, :cond_12

    .line 998
    .line 999
    invoke-virtual {v7, v5}, Lcom/minhub/gamehub/hub/LoginActivity;->r(Z)V

    .line 1000
    .line 1001
    .line 1002
    invoke-virtual {v12}, Lcom/minhub/gamehub/hub/auth/AuthHttp$Result;->getBody()Ljava/lang/String;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v2

    .line 1006
    :try_start_11
    new-instance v0, Lorg/json/JSONObject;

    .line 1007
    .line 1008
    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1009
    .line 1010
    .line 1011
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v0

    .line 1015
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 1019
    goto :goto_14

    .line 1020
    :catchall_9
    move-exception v0

    .line 1021
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 1022
    .line 1023
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v0

    .line 1027
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v0

    .line 1031
    :goto_14
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 1032
    .line 1033
    .line 1034
    move-result v3

    .line 1035
    if-eqz v3, :cond_10

    .line 1036
    .line 1037
    goto :goto_15

    .line 1038
    :cond_10
    move-object v11, v0

    .line 1039
    :goto_15
    check-cast v11, Ljava/lang/CharSequence;

    .line 1040
    .line 1041
    invoke-static {v11}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 1042
    .line 1043
    .line 1044
    move-result v0

    .line 1045
    if-eqz v0, :cond_11

    .line 1046
    .line 1047
    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v0

    .line 1051
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v11

    .line 1055
    :cond_11
    check-cast v11, Ljava/lang/String;

    .line 1056
    .line 1057
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v0

    .line 1061
    const v2, 0x7f12025e

    .line 1062
    .line 1063
    .line 1064
    invoke-virtual {v7, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v0

    .line 1068
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {v7, v0, v5}, Lcom/minhub/gamehub/hub/LoginActivity;->s(Ljava/lang/String;Z)V

    .line 1072
    .line 1073
    .line 1074
    goto/16 :goto_19

    .line 1075
    .line 1076
    :cond_12
    invoke-virtual {v7, v5}, Lcom/minhub/gamehub/hub/LoginActivity;->r(Z)V

    .line 1077
    .line 1078
    .line 1079
    invoke-virtual {v12}, Lcom/minhub/gamehub/hub/auth/AuthHttp$Result;->getCode()I

    .line 1080
    .line 1081
    .line 1082
    move-result v0

    .line 1083
    invoke-virtual {v12}, Lcom/minhub/gamehub/hub/auth/AuthHttp$Result;->getBody()Ljava/lang/String;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v2

    .line 1087
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1088
    .line 1089
    const-string v10, "Verify error [HTTP "

    .line 1090
    .line 1091
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1092
    .line 1093
    .line 1094
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1095
    .line 1096
    .line 1097
    const-string v0, "] body="

    .line 1098
    .line 1099
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1100
    .line 1101
    .line 1102
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    .line 1104
    .line 1105
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v0

    .line 1109
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    .line 1111
    .line 1112
    :try_start_12
    new-instance v0, Lorg/json/JSONObject;

    .line 1113
    .line 1114
    invoke-virtual {v12}, Lcom/minhub/gamehub/hub/auth/AuthHttp$Result;->getBody()Ljava/lang/String;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v2

    .line 1118
    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1119
    .line 1120
    .line 1121
    invoke-virtual {v0, v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v0

    .line 1125
    const-string v2, "optString(...)"

    .line 1126
    .line 1127
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1128
    .line 1129
    .line 1130
    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v0

    .line 1134
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v0

    .line 1138
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    .line 1142
    goto :goto_16

    .line 1143
    :catchall_a
    move-exception v0

    .line 1144
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 1145
    .line 1146
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v0

    .line 1150
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v0

    .line 1154
    :goto_16
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 1155
    .line 1156
    .line 1157
    move-result v2

    .line 1158
    if-eqz v2, :cond_13

    .line 1159
    .line 1160
    goto :goto_17

    .line 1161
    :cond_13
    move-object v11, v0

    .line 1162
    :goto_17
    check-cast v11, Ljava/lang/String;

    .line 1163
    .line 1164
    invoke-virtual {v12}, Lcom/minhub/gamehub/hub/auth/AuthHttp$Result;->getCode()I

    .line 1165
    .line 1166
    .line 1167
    move-result v0

    .line 1168
    const/16 v2, 0x191

    .line 1169
    .line 1170
    if-ne v0, v2, :cond_14

    .line 1171
    .line 1172
    const v0, 0x7f120289

    .line 1173
    .line 1174
    .line 1175
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v3

    .line 1179
    invoke-virtual {v7, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v11

    .line 1183
    goto :goto_18

    .line 1184
    :cond_14
    invoke-static {v11}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 1185
    .line 1186
    .line 1187
    move-result v0

    .line 1188
    if-nez v0, :cond_15

    .line 1189
    .line 1190
    goto :goto_18

    .line 1191
    :cond_15
    invoke-virtual {v12}, Lcom/minhub/gamehub/hub/auth/AuthHttp$Result;->getBody()Ljava/lang/String;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v0

    .line 1195
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 1196
    .line 1197
    .line 1198
    move-result v0

    .line 1199
    if-nez v0, :cond_16

    .line 1200
    .line 1201
    invoke-virtual {v12}, Lcom/minhub/gamehub/hub/auth/AuthHttp$Result;->getBody()Ljava/lang/String;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v0

    .line 1205
    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v0

    .line 1209
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v11

    .line 1213
    goto :goto_18

    .line 1214
    :cond_16
    invoke-virtual {v12}, Lcom/minhub/gamehub/hub/auth/AuthHttp$Result;->getCode()I

    .line 1215
    .line 1216
    .line 1217
    move-result v0

    .line 1218
    const-string v3, "HTTP "

    .line 1219
    .line 1220
    invoke-static {v0, v3}, LE/b;->i(ILjava/lang/String;)Ljava/lang/String;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v11

    .line 1224
    :goto_18
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1225
    .line 1226
    .line 1227
    invoke-virtual {v12}, Lcom/minhub/gamehub/hub/auth/AuthHttp$Result;->getCode()I

    .line 1228
    .line 1229
    .line 1230
    move-result v0

    .line 1231
    if-ne v0, v2, :cond_17

    .line 1232
    .line 1233
    move v4, v5

    .line 1234
    :cond_17
    invoke-virtual {v7, v11, v4}, Lcom/minhub/gamehub/hub/LoginActivity;->s(Ljava/lang/String;Z)V

    .line 1235
    .line 1236
    .line 1237
    goto :goto_19

    .line 1238
    :cond_18
    invoke-virtual {v7, v5}, Lcom/minhub/gamehub/hub/LoginActivity;->r(Z)V

    .line 1239
    .line 1240
    .line 1241
    const-string v0, "Verify error (transport)"

    .line 1242
    .line 1243
    invoke-static {v6, v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1244
    .line 1245
    .line 1246
    sget-object v0, Lcom/minhub/gamehub/hub/auth/LoginAlertDialog;->INSTANCE:Lcom/minhub/gamehub/hub/auth/LoginAlertDialog;

    .line 1247
    .line 1248
    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v2

    .line 1252
    if-nez v2, :cond_19

    .line 1253
    .line 1254
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1255
    .line 1256
    .line 1257
    move-result-object v2

    .line 1258
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v2

    .line 1262
    :cond_19
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1263
    .line 1264
    .line 1265
    invoke-virtual {v0, v7, v2}, Lcom/minhub/gamehub/hub/auth/LoginAlertDialog;->showConnectionError(Landroid/app/Activity;Ljava/lang/String;)Le/g;

    .line 1266
    .line 1267
    .line 1268
    :cond_1a
    :goto_19
    return-void

    .line 1269
    :pswitch_c
    iget-object v0, v1, LC1/A1;->c:Ljava/lang/Object;

    .line 1270
    .line 1271
    move-object v2, v0

    .line 1272
    check-cast v2, Lcom/minhub/gamehub/hub/LoginActivity;

    .line 1273
    .line 1274
    iget-object v0, v1, LC1/A1;->d:Ljava/lang/Object;

    .line 1275
    .line 1276
    check-cast v0, Ljava/lang/String;

    .line 1277
    .line 1278
    iget-object v4, v1, LC1/A1;->e:Ljava/lang/Object;

    .line 1279
    .line 1280
    check-cast v4, Ljava/lang/String;

    .line 1281
    .line 1282
    sget v6, Lcom/minhub/gamehub/hub/LoginActivity;->l:I

    .line 1283
    .line 1284
    :try_start_13
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 1285
    .line 1286
    sget-object v6, Lcom/minhub/gamehub/hub/auth/AuthHttp;->INSTANCE:Lcom/minhub/gamehub/hub/auth/AuthHttp;

    .line 1287
    .line 1288
    const-string v7, "https://auth.h-game18.xyz/account/login"

    .line 1289
    .line 1290
    const-string v8, "username"

    .line 1291
    .line 1292
    invoke-static {v8, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v8

    .line 1296
    const-string v9, "password"

    .line 1297
    .line 1298
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v9

    .line 1302
    const-string v10, "type"

    .line 1303
    .line 1304
    const-string v11, "game"

    .line 1305
    .line 1306
    invoke-static {v0, v11}, Lkotlin/text/StringsKt;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v0

    .line 1310
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1311
    .line 1312
    .line 1313
    move-result v11

    .line 1314
    if-nez v11, :cond_1b

    .line 1315
    .line 1316
    const-string v0, "3"

    .line 1317
    .line 1318
    goto :goto_1a

    .line 1319
    :catchall_b
    move-exception v0

    .line 1320
    goto :goto_1b

    .line 1321
    :cond_1b
    :goto_1a
    invoke-static {v10, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v0

    .line 1325
    filled-new-array {v8, v9, v0}, [Lkotlin/Pair;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v0

    .line 1329
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v0

    .line 1333
    invoke-virtual {v6, v7, v0, v3, v3}, Lcom/minhub/gamehub/hub/auth/AuthHttp;->postForm(Ljava/lang/String;Ljava/util/Map;II)Lcom/minhub/gamehub/hub/auth/AuthHttp$Result;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v0

    .line 1337
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    .line 1341
    goto :goto_1c

    .line 1342
    :goto_1b
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 1343
    .line 1344
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v0

    .line 1348
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v0

    .line 1352
    :goto_1c
    new-instance v3, LC1/A1;

    .line 1353
    .line 1354
    invoke-direct {v3, v2, v0, v4, v5}, LC1/A1;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 1355
    .line 1356
    .line 1357
    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1358
    .line 1359
    .line 1360
    return-void

    .line 1361
    :pswitch_data_0
    .packed-switch 0x0
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
