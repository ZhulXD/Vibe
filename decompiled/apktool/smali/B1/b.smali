.class public final synthetic LB1/b;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
.implements Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LB1/b;->b:I

    .line 2
    .line 3
    iput-object p2, p0, LB1/b;->c:Ljava/lang/Object;

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
    .locals 2

    .line 1
    iget-object v0, p0, LB1/b;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/minhub/gamehub/hub/LoginActivity;

    .line 4
    .line 5
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 6
    .line 7
    sget v1, Lcom/minhub/gamehub/hub/LoginActivity;->l:I

    .line 8
    .line 9
    const-string v1, "result"

    .line 10
    .line 11
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/4 v1, -0x1

    .line 19
    if-ne p1, v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/LoginActivity;->p()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 8

    .line 1
    iget v0, p0, LB1/b;->b:I

    .line 2
    .line 3
    const-string v1, "layoutHeader"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "b"

    .line 7
    .line 8
    const-string v4, "<unused var>"

    .line 9
    .line 10
    const-string v5, "getInsets(...)"

    .line 11
    .line 12
    const-string v6, "insets"

    .line 13
    .line 14
    iget-object v7, p0, LB1/b;->c:Ljava/lang/Object;

    .line 15
    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    :pswitch_0
    check-cast v7, Lcom/minhub/gamehub/keyboard/KeyboardActivity;

    .line 20
    .line 21
    sget v0, Lcom/minhub/gamehub/keyboard/KeyboardActivity;->f:I

    .line 22
    .line 23
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, v7, Lcom/minhub/gamehub/keyboard/KeyboardActivity;->e:Lk/m1;

    .line 41
    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move-object v2, v0

    .line 49
    :goto_0
    iget-object v0, v2, Lk/m1;->f:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Landroid/widget/LinearLayout;

    .line 52
    .line 53
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget p1, p1, Landroidx/core/graphics/Insets;->top:I

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 71
    .line 72
    .line 73
    return-object p2

    .line 74
    :pswitch_1
    check-cast v7, Lcom/minhub/gamehub/hub/SettingsActivity;

    .line 75
    .line 76
    sget v0, Lcom/minhub/gamehub/hub/SettingsActivity;->f:I

    .line 77
    .line 78
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, v7, Lcom/minhub/gamehub/hub/SettingsActivity;->e:LI1/j;

    .line 96
    .line 97
    if-nez v0, :cond_1

    .line 98
    .line 99
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_1
    move-object v2, v0

    .line 104
    :goto_1
    iget-object v0, v2, LI1/j;->d:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v0, Landroid/widget/LinearLayout;

    .line 107
    .line 108
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget p1, p1, Landroidx/core/graphics/Insets;->top:I

    .line 112
    .line 113
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 126
    .line 127
    .line 128
    return-object p2

    .line 129
    :pswitch_2
    check-cast v7, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;

    .line 130
    .line 131
    sget v0, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->i:I

    .line 132
    .line 133
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object v0, v7, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 151
    .line 152
    if-nez v0, :cond_2

    .line 153
    .line 154
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_2
    move-object v2, v0

    .line 159
    :goto_2
    iget-object v0, v2, Lw1/f;->i:Landroid/widget/FrameLayout;

    .line 160
    .line 161
    const-string v1, "heroFrame"

    .line 162
    .line 163
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    iget p1, p1, Landroidx/core/graphics/Insets;->top:I

    .line 167
    .line 168
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 181
    .line 182
    .line 183
    return-object p2

    .line 184
    :pswitch_3
    check-cast v7, Lcom/minhub/gamehub/hub/OnlineDownloadsActivity;

    .line 185
    .line 186
    sget v0, Lcom/minhub/gamehub/hub/OnlineDownloadsActivity;->h:I

    .line 187
    .line 188
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget-object v0, v7, Lcom/minhub/gamehub/hub/OnlineDownloadsActivity;->e:LI1/j;

    .line 206
    .line 207
    if-nez v0, :cond_3

    .line 208
    .line 209
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_3
    move-object v2, v0

    .line 214
    :goto_3
    iget-object v0, v2, LI1/j;->d:Ljava/lang/Object;

    .line 215
    .line 216
    check-cast v0, Landroid/widget/LinearLayout;

    .line 217
    .line 218
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    iget p1, p1, Landroidx/core/graphics/Insets;->top:I

    .line 222
    .line 223
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 236
    .line 237
    .line 238
    return-object p2

    .line 239
    :pswitch_4
    check-cast v7, Lcom/minhub/gamehub/hub/ImageViewerActivity;

    .line 240
    .line 241
    sget v0, Lcom/minhub/gamehub/hub/ImageViewerActivity;->e:I

    .line 242
    .line 243
    const-string v0, "v"

    .line 244
    .line 245
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    iget v0, v0, Landroidx/core/graphics/Insets;->top:I

    .line 267
    .line 268
    const/16 v2, 0x8

    .line 269
    .line 270
    int-to-float v2, v2

    .line 271
    invoke-virtual {v7}, Le/j;->getResources()Landroid/content/res/Resources;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 280
    .line 281
    mul-float/2addr v2, v3

    .line 282
    float-to-int v2, v2

    .line 283
    add-int/2addr v2, v0

    .line 284
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 289
    .line 290
    .line 291
    move-result v3

    .line 292
    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 293
    .line 294
    .line 295
    return-object p2

    .line 296
    :pswitch_5
    check-cast v7, Lcom/minhub/gamehub/gamepad/ButtonCatalogActivity;

    .line 297
    .line 298
    sget v0, Lcom/minhub/gamehub/gamepad/ButtonCatalogActivity;->h:I

    .line 299
    .line 300
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    .line 307
    .line 308
    .line 309
    move-result p1

    .line 310
    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    iget-object v0, v7, Lcom/minhub/gamehub/gamepad/ButtonCatalogActivity;->e:LI1/j;

    .line 318
    .line 319
    if-nez v0, :cond_4

    .line 320
    .line 321
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    goto :goto_4

    .line 325
    :cond_4
    move-object v2, v0

    .line 326
    :goto_4
    iget-object v0, v2, LI1/j;->e:Ljava/lang/Object;

    .line 327
    .line 328
    check-cast v0, Landroid/widget/LinearLayout;

    .line 329
    .line 330
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    iget p1, p1, Landroidx/core/graphics/Insets;->top:I

    .line 334
    .line 335
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 340
    .line 341
    .line 342
    move-result v2

    .line 343
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 344
    .line 345
    .line 346
    move-result v3

    .line 347
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 348
    .line 349
    .line 350
    return-object p2

    .line 351
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCommitContent(Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    iget-object v0, p0, LB1/b;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/View;

    .line 4
    .line 5
    invoke-static {v0, p1, p2, p3}, Landroidx/core/view/inputmethod/InputConnectionCompat;->a(Landroid/view/View;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public onTouchExplorationStateChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, LB1/b;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ld1/i;

    .line 4
    .line 5
    iget-object v1, v0, Ld1/i;->h:Landroid/widget/AutoCompleteTextView;

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/widget/TextView;->getInputType()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, v0, Ld1/o;->d:Lcom/google/android/material/internal/CheckableImageButton;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x2

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p1, 0x1

    .line 23
    :goto_0
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 24
    .line 25
    .line 26
    :cond_2
    return-void
.end method
