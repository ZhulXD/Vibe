.class public final LF1/b;
.super Landroidx/fragment/app/DialogFragment;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "LF1/b;",
        "Landroidx/fragment/app/DialogFragment;",
        "<init>",
        "()V",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nKeyMapDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KeyMapDialog.kt\ncom/minhub/gamehub/keyboard/KeyMapDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,107:1\n1869#2:108\n1869#2,2:109\n1870#2:111\n1869#2,2:112\n*S KotlinDebug\n*F\n+ 1 KeyMapDialog.kt\ncom/minhub/gamehub/keyboard/KeyMapDialog\n*L\n66#1:108\n69#1:109,2\n66#1:111\n88#1:112,2\n*E\n"
    }
.end annotation


# instance fields
.field public b:LA1/r;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, LF1/b;->c:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string v0, "button_label"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    :cond_0
    const-string p1, ""

    .line 19
    .line 20
    :cond_1
    iput-object p1, p0, LF1/b;->c:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const v2, 0x7f0c0042

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const-string v16, "="

    .line 23
    .line 24
    const-string v17, "\u232b"

    .line 25
    .line 26
    const-string v4, "Esc"

    .line 27
    .line 28
    const-string v5, "1"

    .line 29
    .line 30
    const-string v6, "2"

    .line 31
    .line 32
    const-string v7, "3"

    .line 33
    .line 34
    const-string v8, "4"

    .line 35
    .line 36
    const-string v9, "5"

    .line 37
    .line 38
    const-string v10, "6"

    .line 39
    .line 40
    const-string v11, "7"

    .line 41
    .line 42
    const-string v12, "8"

    .line 43
    .line 44
    const-string v13, "9"

    .line 45
    .line 46
    const-string v14, "0"

    .line 47
    .line 48
    const-string v15, "-"

    .line 49
    .line 50
    filled-new-array/range {v4 .. v17}, [Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const-string v15, "["

    .line 59
    .line 60
    const-string v16, "]"

    .line 61
    .line 62
    const-string v4, "Tab"

    .line 63
    .line 64
    const-string v5, "Q"

    .line 65
    .line 66
    const-string v6, "W"

    .line 67
    .line 68
    const-string v7, "E"

    .line 69
    .line 70
    const-string v8, "R"

    .line 71
    .line 72
    const-string v9, "T"

    .line 73
    .line 74
    const-string v10, "Y"

    .line 75
    .line 76
    const-string v11, "U"

    .line 77
    .line 78
    const-string v12, "I"

    .line 79
    .line 80
    const-string v13, "O"

    .line 81
    .line 82
    const-string v14, "P"

    .line 83
    .line 84
    filled-new-array/range {v4 .. v16}, [Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    const-string v16, "\'"

    .line 93
    .line 94
    const-string v17, "Enter"

    .line 95
    .line 96
    const-string v5, "Caps"

    .line 97
    .line 98
    const-string v6, "A"

    .line 99
    .line 100
    const-string v7, "S"

    .line 101
    .line 102
    const-string v8, "D"

    .line 103
    .line 104
    const-string v9, "F"

    .line 105
    .line 106
    const-string v10, "G"

    .line 107
    .line 108
    const-string v11, "H"

    .line 109
    .line 110
    const-string v12, "J"

    .line 111
    .line 112
    const-string v13, "K"

    .line 113
    .line 114
    const-string v14, "L"

    .line 115
    .line 116
    const-string v15, ";"

    .line 117
    .line 118
    filled-new-array/range {v5 .. v17}, [Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    const-string v16, "/"

    .line 127
    .line 128
    const-string v17, "Shift"

    .line 129
    .line 130
    const-string v6, "Shift"

    .line 131
    .line 132
    const-string v7, "Z"

    .line 133
    .line 134
    const-string v8, "X"

    .line 135
    .line 136
    const-string v9, "C"

    .line 137
    .line 138
    const-string v10, "V"

    .line 139
    .line 140
    const-string v11, "B"

    .line 141
    .line 142
    const-string v12, "N"

    .line 143
    .line 144
    const-string v13, "M"

    .line 145
    .line 146
    const-string v14, ","

    .line 147
    .line 148
    const-string v15, "."

    .line 149
    .line 150
    filled-new-array/range {v6 .. v17}, [Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    const-string v7, "Alt"

    .line 159
    .line 160
    const-string v8, "Space"

    .line 161
    .line 162
    const-string v9, "Ctrl"

    .line 163
    .line 164
    filled-new-array {v9, v7, v8, v7, v9}, [Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v7

    .line 168
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    const/4 v8, 0x5

    .line 173
    new-array v8, v8, [Ljava/util/List;

    .line 174
    .line 175
    const/4 v9, 0x0

    .line 176
    aput-object v2, v8, v9

    .line 177
    .line 178
    const/4 v2, 0x1

    .line 179
    aput-object v4, v8, v2

    .line 180
    .line 181
    const/4 v4, 0x2

    .line 182
    aput-object v5, v8, v4

    .line 183
    .line 184
    const/4 v4, 0x3

    .line 185
    aput-object v6, v8, v4

    .line 186
    .line 187
    const/4 v4, 0x4

    .line 188
    aput-object v7, v8, v4

    .line 189
    .line 190
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    const v5, 0x7f090205

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    check-cast v5, Landroid/view/ViewGroup;

    .line 202
    .line 203
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 208
    .line 209
    .line 210
    move-result v6

    .line 211
    const/high16 v7, 0x41200000    # 10.0f

    .line 212
    .line 213
    if-eqz v6, :cond_1

    .line 214
    .line 215
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    check-cast v6, Ljava/util/List;

    .line 220
    .line 221
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 222
    .line 223
    .line 224
    move-result-object v8

    .line 225
    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 226
    .line 227
    .line 228
    move-result-object v8

    .line 229
    const v10, 0x7f0c00a5

    .line 230
    .line 231
    .line 232
    invoke-virtual {v8, v10, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 233
    .line 234
    .line 235
    move-result-object v8

    .line 236
    const-string v10, "null cannot be cast to non-null type android.view.ViewGroup"

    .line 237
    .line 238
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    check-cast v8, Landroid/view/ViewGroup;

    .line 242
    .line 243
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 248
    .line 249
    .line 250
    move-result v10

    .line 251
    if-eqz v10, :cond_0

    .line 252
    .line 253
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v10

    .line 257
    check-cast v10, Ljava/lang/String;

    .line 258
    .line 259
    new-instance v11, Landroid/widget/Button;

    .line 260
    .line 261
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 262
    .line 263
    .line 264
    move-result-object v12

    .line 265
    invoke-direct {v11, v12}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 272
    .line 273
    .line 274
    new-instance v12, LF1/a;

    .line 275
    .line 276
    invoke-direct {v12, v0, v10, v9}, LF1/a;-><init>(LF1/b;Ljava/lang/String;I)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 283
    .line 284
    .line 285
    goto :goto_1

    .line 286
    :cond_0
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 287
    .line 288
    .line 289
    goto :goto_0

    .line 290
    :cond_1
    const v4, 0x7f0902bb

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    check-cast v4, Landroid/view/ViewGroup;

    .line 298
    .line 299
    const-string v14, "Enter"

    .line 300
    .line 301
    const-string v15, "Space"

    .line 302
    .line 303
    const-string v10, "\u2191"

    .line 304
    .line 305
    const-string v11, "\u2193"

    .line 306
    .line 307
    const-string v12, "\u2190"

    .line 308
    .line 309
    const-string v13, "\u2192"

    .line 310
    .line 311
    filled-new-array/range {v10 .. v15}, [Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v5

    .line 315
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 316
    .line 317
    .line 318
    move-result-object v5

    .line 319
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 320
    .line 321
    .line 322
    move-result-object v5

    .line 323
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 324
    .line 325
    .line 326
    move-result v6

    .line 327
    if-eqz v6, :cond_2

    .line 328
    .line 329
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v6

    .line 333
    check-cast v6, Ljava/lang/String;

    .line 334
    .line 335
    new-instance v8, Landroid/widget/Button;

    .line 336
    .line 337
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 338
    .line 339
    .line 340
    move-result-object v10

    .line 341
    invoke-direct {v8, v10}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 348
    .line 349
    .line 350
    new-instance v10, LF1/a;

    .line 351
    .line 352
    invoke-direct {v10, v0, v6, v2}, LF1/a;-><init>(LF1/b;Ljava/lang/String;I)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v8, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 359
    .line 360
    .line 361
    goto :goto_2

    .line 362
    :cond_2
    new-instance v2, LO0/b;

    .line 363
    .line 364
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 365
    .line 366
    .line 367
    move-result-object v4

    .line 368
    invoke-direct {v2, v4, v9}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 369
    .line 370
    .line 371
    iget-object v4, v0, LF1/b;->c:Ljava/lang/String;

    .line 372
    .line 373
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v4

    .line 377
    const v5, 0x7f1200ca

    .line 378
    .line 379
    .line 380
    invoke-virtual {v0, v5, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v4

    .line 384
    iget-object v5, v2, Le/f;->c:Ljava/lang/Object;

    .line 385
    .line 386
    check-cast v5, Le/b;

    .line 387
    .line 388
    iput-object v4, v5, Le/b;->d:Ljava/lang/CharSequence;

    .line 389
    .line 390
    iput-object v1, v5, Le/b;->t:Landroid/view/View;

    .line 391
    .line 392
    const v1, 0x7f1200bc

    .line 393
    .line 394
    .line 395
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    invoke-virtual {v2, v1, v3}, LO0/b;->g(Ljava/lang/String;LC1/h1;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v2}, LO0/b;->c()Le/g;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    const-string v2, "create(...)"

    .line 407
    .line 408
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    return-object v1
.end method
