.class public final synthetic Ly1/j;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/minhub/gamehub/game/GameActivity;

.field public final synthetic c:LQ1/d;

.field public final synthetic d:Lcom/minhub/gamehub/data/Game;

.field public final synthetic e:LQ1/c;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/game/GameActivity;LQ1/d;Lcom/minhub/gamehub/data/Game;LQ1/c;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly1/j;->b:Lcom/minhub/gamehub/game/GameActivity;

    .line 5
    .line 6
    iput-object p2, p0, Ly1/j;->c:LQ1/d;

    .line 7
    .line 8
    iput-object p3, p0, Ly1/j;->d:Lcom/minhub/gamehub/data/Game;

    .line 9
    .line 10
    iput-object p4, p0, Ly1/j;->e:LQ1/c;

    .line 11
    .line 12
    iput-object p5, p0, Ly1/j;->f:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Ly1/j;->g:Lorg/json/JSONObject;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Ly1/j;->e:LQ1/c;

    .line 2
    .line 3
    iget-object v1, p0, Ly1/j;->b:Lcom/minhub/gamehub/game/GameActivity;

    .line 4
    .line 5
    iget-object v2, p0, Ly1/j;->c:LQ1/d;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lcom/minhub/gamehub/game/GameActivity;->y(LQ1/d;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    goto/16 :goto_7

    .line 14
    .line 15
    :cond_0
    const-string v3, "HTTP "

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    .line 20
    .line 21
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v7, "gameName"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    iget-object v8, p0, Ly1/j;->d:Lcom/minhub/gamehub/data/Game;

    .line 27
    .line 28
    const-string v9, "(kh\u00f4ng t\u00ean)"

    .line 29
    .line 30
    if-eqz v8, :cond_2

    .line 31
    .line 32
    :try_start_1
    invoke-virtual {v8}, Lcom/minhub/gamehub/data/Game;->getTitle()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v10

    .line 36
    if-eqz v10, :cond_2

    .line 37
    .line 38
    invoke-static {v10}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v11

    .line 42
    if-eqz v11, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move-object v9, v10

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    goto/16 :goto_8

    .line 49
    .line 50
    :catch_0
    move-exception v0

    .line 51
    goto/16 :goto_4

    .line 52
    .line 53
    :cond_2
    :goto_0
    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    .line 55
    .line 56
    const-string v7, "gameVersion"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    const-string v9, "?"

    .line 59
    .line 60
    if-eqz v8, :cond_3

    .line 61
    .line 62
    :try_start_2
    invoke-virtual {v8}, Lcom/minhub/gamehub/data/Game;->getVersion()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    if-nez v10, :cond_4

    .line 67
    .line 68
    :cond_3
    move-object v10, v9

    .line 69
    :cond_4
    invoke-virtual {v6, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    .line 71
    .line 72
    const-string v7, "engine"

    .line 73
    .line 74
    if-eqz v8, :cond_5

    .line 75
    .line 76
    invoke-virtual {v8}, Lcom/minhub/gamehub/data/Game;->getEngine()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    if-nez v8, :cond_6

    .line 81
    .line 82
    :cond_5
    move-object v8, v9

    .line 83
    :cond_6
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    .line 85
    .line 86
    const-string v7, "errorTitle"

    .line 87
    .line 88
    iget-object v8, v0, LQ1/c;->a:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    .line 92
    .line 93
    const-string v7, "debugLog"

    .line 94
    .line 95
    iget-object v0, v0, LQ1/c;->d:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    .line 99
    .line 100
    const-string v0, "description"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    .line 102
    iget-object v7, p0, Ly1/j;->f:Ljava/lang/String;

    .line 103
    .line 104
    if-eqz v7, :cond_7

    .line 105
    .line 106
    :try_start_3
    invoke-static {v7}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    if-eqz v7, :cond_7

    .line 115
    .line 116
    const/16 v8, 0x3e8

    .line 117
    .line 118
    invoke-static {v7, v8}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    if-nez v7, :cond_8

    .line 123
    .line 124
    :cond_7
    const-string v7, ""

    .line 125
    .line 126
    :cond_8
    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    .line 128
    .line 129
    const-string v0, "deviceId"

    .line 130
    .line 131
    const-string v7, "minhub_bugreport"

    .line 132
    .line 133
    invoke-virtual {v1, v7, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    const-string v8, "device_id"

    .line 138
    .line 139
    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    const-string v11, "toString(...)"

    .line 144
    .line 145
    if-eqz v10, :cond_9

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_9
    :try_start_4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 149
    .line 150
    .line 151
    move-result-object v10

    .line 152
    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v10

    .line 156
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 168
    .line 169
    .line 170
    :goto_1
    invoke-virtual {v6, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    .line 172
    .line 173
    const-string v0, "appVersion"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 174
    .line 175
    :try_start_5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v8

    .line 183
    invoke-virtual {v7, v8, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 188
    .line 189
    if-nez v7, :cond_a

    .line 190
    .line 191
    :catch_1
    move-object v7, v9

    .line 192
    :cond_a
    :try_start_6
    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    .line 194
    .line 195
    const-string v0, "androidVersion"

    .line 196
    .line 197
    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 198
    .line 199
    if-nez v7, :cond_b

    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_b
    move-object v9, v7

    .line 203
    :goto_2
    invoke-virtual {v6, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Ly1/j;->g:Lorg/json/JSONObject;

    .line 207
    .line 208
    if-eqz v0, :cond_c

    .line 209
    .line 210
    :try_start_7
    const-string v7, "save"

    .line 211
    .line 212
    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    .line 214
    .line 215
    :cond_c
    const-string v0, "at"

    .line 216
    .line 217
    new-instance v7, Ljava/text/SimpleDateFormat;

    .line 218
    .line 219
    const-string v8, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    .line 220
    .line 221
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 222
    .line 223
    invoke-direct {v7, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 224
    .line 225
    .line 226
    const-string v8, "UTC"

    .line 227
    .line 228
    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 229
    .line 230
    .line 231
    move-result-object v8

    .line 232
    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 233
    .line 234
    .line 235
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 236
    .line 237
    new-instance v8, Ljava/util/Date;

    .line 238
    .line 239
    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    const-string v6, "https://auth.h-game18.xyz/bugreports"

    .line 257
    .line 258
    invoke-static {v6}, LS1/j;->c(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    const-string v7, "POST"

    .line 263
    .line 264
    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    const/16 v7, 0x1f40

    .line 268
    .line 269
    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 270
    .line 271
    .line 272
    const/16 v7, 0x3a98

    .line 273
    .line 274
    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 275
    .line 276
    .line 277
    const/4 v7, 0x1

    .line 278
    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 279
    .line 280
    .line 281
    const-string v7, "Content-Type"

    .line 282
    .line 283
    const-string v8, "application/json"

    .line 284
    .line 285
    invoke-virtual {v6, v7, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 286
    .line 287
    .line 288
    :try_start_8
    invoke-virtual {v6}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 289
    .line 290
    .line 291
    move-result-object v7
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 292
    :try_start_9
    sget-object v8, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 293
    .line 294
    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    const-string v8, "getBytes(...)"

    .line 299
    .line 300
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v7, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 304
    .line 305
    .line 306
    :try_start_a
    invoke-static {v7, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    const/16 v7, 0xc8

    .line 314
    .line 315
    if-gt v7, v0, :cond_d

    .line 316
    .line 317
    const/16 v7, 0x12c

    .line 318
    .line 319
    if-ge v0, v7, :cond_d

    .line 320
    .line 321
    goto :goto_3

    .line 322
    :cond_d
    const/16 v5, 0x1aa

    .line 323
    .line 324
    if-ne v0, v5, :cond_e

    .line 325
    .line 326
    const-string v5, "outdated"

    .line 327
    .line 328
    goto :goto_3

    .line 329
    :catchall_1
    move-exception v0

    .line 330
    move-object v5, v6

    .line 331
    goto :goto_8

    .line 332
    :catch_2
    move-exception v0

    .line 333
    move-object v5, v6

    .line 334
    goto :goto_4

    .line 335
    :cond_e
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    new-instance v5, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v5
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 351
    :goto_3
    :try_start_b
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 352
    .line 353
    .line 354
    goto :goto_6

    .line 355
    :catchall_2
    move-exception v0

    .line 356
    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 357
    :catchall_3
    move-exception v3

    .line 358
    :try_start_d
    invoke-static {v7, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 359
    .line 360
    .line 361
    throw v3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 362
    :goto_4
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    if-nez v3, :cond_f

    .line 367
    .line 368
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 376
    goto :goto_5

    .line 377
    :cond_f
    move-object v0, v3

    .line 378
    :goto_5
    if-eqz v5, :cond_10

    .line 379
    .line 380
    :try_start_f
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    .line 381
    .line 382
    .line 383
    :catch_3
    :cond_10
    move-object v5, v0

    .line 384
    :catch_4
    :goto_6
    invoke-virtual {v1, v2}, Lcom/minhub/gamehub/game/GameActivity;->y(LQ1/d;)Z

    .line 385
    .line 386
    .line 387
    move-result v0

    .line 388
    if-nez v0, :cond_11

    .line 389
    .line 390
    goto :goto_7

    .line 391
    :cond_11
    new-instance v0, Ly1/l;

    .line 392
    .line 393
    invoke-direct {v0, v1, v2, v5, v4}, Ly1/l;-><init>(Lcom/minhub/gamehub/game/GameActivity;LQ1/d;Ljava/lang/String;I)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 397
    .line 398
    .line 399
    :goto_7
    return-void

    .line 400
    :goto_8
    if-eqz v5, :cond_12

    .line 401
    .line 402
    :try_start_10
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    .line 403
    .line 404
    .line 405
    :catch_5
    :cond_12
    throw v0
.end method
