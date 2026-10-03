.class public final synthetic LC1/w;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LH0/o;Lcom/minhub/gamehub/hub/AddGameActivity;LC1/J;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, LC1/w;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC1/w;->c:Ljava/lang/Object;

    iput-object p2, p0, LC1/w;->d:Ljava/lang/Object;

    iput-object p3, p0, LC1/w;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, LC1/w;->b:I

    iput-object p1, p0, LC1/w;->e:Ljava/lang/Object;

    iput-object p2, p0, LC1/w;->d:Ljava/lang/Object;

    iput-object p3, p0, LC1/w;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/minhub/gamehub/hub/GameDetailActivity;LS1/e;Landroid/widget/LinearLayout;Ljava/util/List;)V
    .locals 0

    .line 3
    const/4 p2, 0x2

    iput p2, p0, LC1/w;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC1/w;->e:Ljava/lang/Object;

    iput-object p3, p0, LC1/w;->d:Ljava/lang/Object;

    iput-object p4, p0, LC1/w;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    .line 1
    iget p1, p0, LC1/w;->b:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "<this>"

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    iget-object v3, p0, LC1/w;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, p0, LC1/w;->d:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, p0, LC1/w;->e:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch p1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast v5, Le/g;

    .line 17
    .line 18
    check-cast v4, Landroid/content/Context;

    .line 19
    .line 20
    check-cast v3, LR1/a;

    .line 21
    .line 22
    invoke-virtual {v5}, Le/D;->dismiss()V

    .line 23
    .line 24
    .line 25
    const-string p1, "ctx"

    .line 26
    .line 27
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string p1, "info"

    .line 31
    .line 32
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 36
    .line 37
    const/16 v0, 0x1a

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    if-lt p1, v0, :cond_0

    .line 41
    .line 42
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1}, LA/a;->x(Landroid/content/pm/PackageManager;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_0

    .line 51
    .line 52
    new-instance p1, Landroid/content/Intent;

    .line 53
    .line 54
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v3, "package:"

    .line 61
    .line 62
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const-string v2, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    .line 77
    .line 78
    invoke-direct {p1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 79
    .line 80
    .line 81
    const/high16 v0, 0x10000000

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 87
    .line 88
    .line 89
    const-string p1, "Cho ph\u00e9p c\u00e0i t\u1eeb ngu\u1ed3n kh\u00f4ng r\u00f5 r\u1ed3i th\u1eed l\u1ea1i"

    .line 90
    .line 91
    invoke-static {v4, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_0
    iget-object p1, v3, LR1/a;->c:Ljava/lang/String;

    .line 100
    .line 101
    const-string v0, "mediafire.com"

    .line 102
    .line 103
    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_1

    .line 108
    .line 109
    const-string p1, "\u0110ang l\u1ea5y link t\u1ea3i\u2026"

    .line 110
    .line 111
    invoke-static {v4, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 116
    .line 117
    .line 118
    new-instance p1, Ljava/lang/Thread;

    .line 119
    .line 120
    new-instance v0, LC1/k;

    .line 121
    .line 122
    const/16 v2, 0xb

    .line 123
    .line 124
    invoke-direct {v0, v2, v3, v4}, LC1/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_1
    iget-object p1, v3, LR1/a;->c:Ljava/lang/String;

    .line 135
    .line 136
    invoke-static {v4, v3, p1}, Lcom/bumptech/glide/d;->o(Landroid/content/Context;LR1/a;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :goto_0
    const p1, 0x7f120410

    .line 140
    .line 141
    .line 142
    invoke-static {v4, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :pswitch_0
    check-cast v5, Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 151
    .line 152
    check-cast v4, Ljava/util/ArrayList;

    .line 153
    .line 154
    check-cast v3, Lcom/minhub/gamehub/data/Game;

    .line 155
    .line 156
    sget p1, Lcom/minhub/gamehub/hub/GameDetailActivity;->w:I

    .line 157
    .line 158
    sget p1, Lcom/minhub/gamehub/hub/ImageViewerActivity;->e:I

    .line 159
    .line 160
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/Game;->getTitle()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    const/4 v0, 0x4

    .line 165
    invoke-static {v5, v4, v2, p1, v0}, LY0/e;->o(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;I)V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :pswitch_1
    check-cast v5, Le/g;

    .line 170
    .line 171
    check-cast v4, Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 172
    .line 173
    check-cast v3, Lcom/minhub/gamehub/data/Game;

    .line 174
    .line 175
    sget p1, Lcom/minhub/gamehub/hub/GameDetailActivity;->w:I

    .line 176
    .line 177
    invoke-virtual {v5}, Le/D;->dismiss()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v4, v3}, Lcom/minhub/gamehub/hub/GameDetailActivity;->r(Lcom/minhub/gamehub/data/Game;)V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :pswitch_2
    check-cast v5, Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 185
    .line 186
    check-cast v4, Landroid/widget/LinearLayout;

    .line 187
    .line 188
    check-cast v3, Ljava/util/List;

    .line 189
    .line 190
    sget p1, Lcom/minhub/gamehub/hub/GameDetailActivity;->w:I

    .line 191
    .line 192
    sget-object p1, LS1/d;->a:Ljava/util/Set;

    .line 193
    .line 194
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    const-string p1, "v"

    .line 198
    .line 199
    const-string v0, "webgl2"

    .line 200
    .line 201
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    const-string p1, "minhub_prefs"

    .line 205
    .line 206
    invoke-virtual {v5, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    const-string v1, "render_mode"

    .line 215
    .line 216
    invoke-static {v0}, LS1/d;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 225
    .line 226
    .line 227
    invoke-static {v4, v3, v5}, Lcom/minhub/gamehub/hub/GameDetailActivity;->s(Landroid/widget/LinearLayout;Ljava/util/List;Lcom/minhub/gamehub/hub/GameDetailActivity;)V

    .line 228
    .line 229
    .line 230
    return-void

    .line 231
    :pswitch_3
    check-cast v3, LH0/o;

    .line 232
    .line 233
    check-cast v4, Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 234
    .line 235
    check-cast v5, LC1/J;

    .line 236
    .line 237
    invoke-virtual {v3, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v4, v3}, Lcom/minhub/gamehub/hub/AddGameActivity;->C(Landroid/app/Dialog;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v3}, Le/D;->dismiss()V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v5}, LC1/J;->invoke()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    :pswitch_4
    check-cast v5, Landroid/widget/EditText;

    .line 251
    .line 252
    move-object v7, v4

    .line 253
    check-cast v7, Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 254
    .line 255
    check-cast v3, LH0/o;

    .line 256
    .line 257
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v8

    .line 273
    iget-object v9, v7, Lcom/minhub/gamehub/hub/AddGameActivity;->n:Landroid/net/Uri;

    .line 274
    .line 275
    if-nez v9, :cond_2

    .line 276
    .line 277
    goto :goto_2

    .line 278
    :cond_2
    invoke-virtual {v3}, Le/D;->dismiss()V

    .line 279
    .line 280
    .line 281
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    const-string p1, "gameName"

    .line 285
    .line 286
    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    const-string p1, "treeUri"

    .line 290
    .line 291
    invoke-static {v9, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    sget-object p1, LC1/Q;->c:LC1/Q;

    .line 295
    .line 296
    invoke-virtual {v7, p1}, Lcom/minhub/gamehub/hub/AddGameActivity;->B(LC1/Q;)V

    .line 297
    .line 298
    .line 299
    const p1, 0x7f12010a

    .line 300
    .line 301
    .line 302
    invoke-virtual {v7, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    const-string v1, "getString(...)"

    .line 307
    .line 308
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    const-string v1, "text"

    .line 312
    .line 313
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    iget-object v1, v7, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 317
    .line 318
    if-nez v1, :cond_3

    .line 319
    .line 320
    const-string v1, "b"

    .line 321
    .line 322
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    goto :goto_1

    .line 326
    :cond_3
    move-object v0, v1

    .line 327
    :goto_1
    iget-object v0, v0, Lw1/a;->r:Landroid/widget/TextView;

    .line 328
    .line 329
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v7, v2}, Lcom/minhub/gamehub/hub/AddGameActivity;->D(I)V

    .line 333
    .line 334
    .line 335
    new-instance v10, LD1/b;

    .line 336
    .line 337
    invoke-direct {v10}, LD1/b;-><init>()V

    .line 338
    .line 339
    .line 340
    iget-object p1, v7, Lcom/minhub/gamehub/hub/AddGameActivity;->g:Ljava/util/Set;

    .line 341
    .line 342
    const-string v0, "importOperations"

    .line 343
    .line 344
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-interface {p1, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    new-instance p1, Ljava/lang/Thread;

    .line 351
    .line 352
    new-instance v6, LC1/t;

    .line 353
    .line 354
    const/4 v11, 0x1

    .line 355
    invoke-direct/range {v6 .. v11}, LC1/t;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;Ljava/lang/String;Landroid/net/Uri;LD1/b;I)V

    .line 356
    .line 357
    .line 358
    invoke-direct {p1, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 362
    .line 363
    .line 364
    :goto_2
    return-void

    .line 365
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
