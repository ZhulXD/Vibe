.class public final synthetic LC1/m0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/hub/GameDetailActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/hub/GameDetailActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, LC1/m0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LC1/m0;->c:Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onActivityResult(Ljava/lang/Object;)V
    .locals 14

    .line 1
    iget v0, p0, LC1/m0;->b:I

    .line 2
    .line 3
    const v1, 0x7f1203f5

    .line 4
    .line 5
    .line 6
    const v2, 0x7f1203f6

    .line 7
    .line 8
    .line 9
    const-string v3, "destinationUri"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    const-string v6, "<this>"

    .line 14
    .line 15
    iget-object v7, p0, LC1/m0;->c:Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 16
    .line 17
    check-cast p1, Landroid/net/Uri;

    .line 18
    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    sget v0, Lcom/minhub/gamehub/hub/GameDetailActivity;->w:I

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, v7, Lcom/minhub/gamehub/hub/GameDetailActivity;->l:Lcom/minhub/gamehub/data/Save;

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    invoke-virtual {v7}, Lcom/minhub/gamehub/hub/GameDetailActivity;->p()Lcom/minhub/gamehub/data/SaveRepository;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3, v0, p1}, Lcom/minhub/gamehub/data/SaveRepository;->exportSaveAsZip(Lcom/minhub/gamehub/data/Save;Landroid/net/Uri;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/minhub/gamehub/data/Save;->getFileName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {v7, v2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    :goto_0
    invoke-static {v7, p1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 69
    .line 70
    .line 71
    iput-object v4, v7, Lcom/minhub/gamehub/hub/GameDetailActivity;->l:Lcom/minhub/gamehub/data/Save;

    .line 72
    .line 73
    :cond_2
    :goto_1
    return-void

    .line 74
    :pswitch_0
    sget v0, Lcom/minhub/gamehub/hub/GameDetailActivity;->w:I

    .line 75
    .line 76
    if-eqz p1, :cond_5

    .line 77
    .line 78
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, v7, Lcom/minhub/gamehub/hub/GameDetailActivity;->l:Lcom/minhub/gamehub/data/Save;

    .line 85
    .line 86
    if-nez v0, :cond_3

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_3
    invoke-virtual {v7}, Lcom/minhub/gamehub/hub/GameDetailActivity;->p()Lcom/minhub/gamehub/data/SaveRepository;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v3, v0, p1}, Lcom/minhub/gamehub/data/SaveRepository;->exportSaveAsZipToDirectory(Lcom/minhub/gamehub/data/Save;Landroid/net/Uri;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_4

    .line 98
    .line 99
    invoke-virtual {v7}, Lcom/minhub/gamehub/hub/GameDetailActivity;->p()Lcom/minhub/gamehub/data/SaveRepository;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1, v0}, Lcom/minhub/gamehub/data/SaveRepository;->zipFileNameFor(Lcom/minhub/gamehub/data/Save;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {v7, v2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    goto :goto_2

    .line 116
    :cond_4
    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    :goto_2
    invoke-static {v7, p1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 125
    .line 126
    .line 127
    iput-object v4, v7, Lcom/minhub/gamehub/hub/GameDetailActivity;->l:Lcom/minhub/gamehub/data/Save;

    .line 128
    .line 129
    :cond_5
    :goto_3
    return-void

    .line 130
    :pswitch_1
    sget v0, Lcom/minhub/gamehub/hub/GameDetailActivity;->w:I

    .line 131
    .line 132
    if-eqz p1, :cond_7

    .line 133
    .line 134
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const-string v0, "sourceUri"

    .line 138
    .line 139
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-object v0, v7, Lcom/minhub/gamehub/hub/GameDetailActivity;->g:Lcom/minhub/gamehub/data/Game;

    .line 146
    .line 147
    const/4 v1, 0x1

    .line 148
    if-eqz v0, :cond_6

    .line 149
    .line 150
    invoke-static {v0}, Lcom/minhub/gamehub/data/GameKt;->getEngineEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameEngine;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    if-eqz v0, :cond_6

    .line 155
    .line 156
    sget-object v2, Lcom/minhub/gamehub/data/SaveRepository;->Companion:Lcom/minhub/gamehub/data/SaveRepository$Companion;

    .line 157
    .line 158
    invoke-virtual {v2, v0}, Lcom/minhub/gamehub/data/SaveRepository$Companion;->supportsSaveManagement(Lcom/minhub/gamehub/data/GameEngine;)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-ne v0, v1, :cond_6

    .line 163
    .line 164
    invoke-virtual {v7}, Lcom/minhub/gamehub/hub/GameDetailActivity;->p()Lcom/minhub/gamehub/data/SaveRepository;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v0, p1}, Lcom/minhub/gamehub/data/SaveRepository;->isSaveZip(Landroid/net/Uri;)Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    const v2, 0x7f120127

    .line 181
    .line 182
    .line 183
    invoke-virtual {v7, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    const/4 v1, 0x2

    .line 188
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-virtual {v7, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v9

    .line 200
    const/4 v1, 0x3

    .line 201
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {v7, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v10

    .line 213
    const/4 v1, 0x4

    .line 214
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-virtual {v7, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v11

    .line 226
    const/4 v1, 0x5

    .line 227
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-virtual {v7, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v12

    .line 239
    const v1, 0x7f1203de

    .line 240
    .line 241
    .line 242
    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v13

    .line 246
    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    new-instance v2, LO0/b;

    .line 251
    .line 252
    invoke-direct {v2, v7, v5}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 253
    .line 254
    .line 255
    const v3, 0x7f1200c7

    .line 256
    .line 257
    .line 258
    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    iget-object v5, v2, Le/f;->c:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast v5, Le/b;

    .line 265
    .line 266
    iput-object v3, v5, Le/b;->d:Ljava/lang/CharSequence;

    .line 267
    .line 268
    check-cast v1, [Ljava/lang/CharSequence;

    .line 269
    .line 270
    new-instance v3, LC1/P0;

    .line 271
    .line 272
    invoke-direct {v3, v7, p1, v0}, LC1/P0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;Landroid/net/Uri;Z)V

    .line 273
    .line 274
    .line 275
    iput-object v1, v5, Le/b;->q:[Ljava/lang/CharSequence;

    .line 276
    .line 277
    iput-object v3, v5, Le/b;->s:Landroid/content/DialogInterface$OnClickListener;

    .line 278
    .line 279
    const p1, 0x7f1200bc

    .line 280
    .line 281
    .line 282
    invoke-virtual {v7, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    invoke-virtual {v2, p1, v4}, LO0/b;->g(Ljava/lang/String;LC1/h1;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v2}, Le/f;->e()Le/g;

    .line 290
    .line 291
    .line 292
    goto :goto_4

    .line 293
    :cond_6
    const p1, 0x7f12037d

    .line 294
    .line 295
    .line 296
    invoke-virtual {v7, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    invoke-static {v7, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 305
    .line 306
    .line 307
    :cond_7
    :goto_4
    return-void

    .line 308
    nop

    .line 309
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    .line 1
    sget v0, Lcom/minhub/gamehub/hub/GameDetailActivity;->w:I

    .line 2
    .line 3
    const-string v0, "<unused var>"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string p1, "insets"

    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "getInsets(...)"

    .line 22
    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, LC1/m0;->c:Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v0, v0, Lw1/e;->n:Landroid/widget/FrameLayout;

    .line 33
    .line 34
    const-string v1, "heroFrame"

    .line 35
    .line 36
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget p1, p1, Landroidx/core/graphics/Insets;->top:I

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 54
    .line 55
    .line 56
    return-object p2
.end method
