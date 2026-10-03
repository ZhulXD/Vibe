.class public final synthetic Lx1/c;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/editor/ButtonEditorActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/editor/ButtonEditorActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lx1/c;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lx1/c;->c:Lcom/minhub/gamehub/editor/ButtonEditorActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget p1, p0, Lx1/c;->b:I

    .line 2
    .line 3
    const-string v0, "b"

    .line 4
    .line 5
    const-string v1, "H\u1ee7y"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    iget-object v4, p0, Lx1/c;->c:Lcom/minhub/gamehub/editor/ButtonEditorActivity;

    .line 10
    .line 11
    packed-switch p1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget-object p1, v4, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->g:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    new-instance v0, LO0/b;

    .line 19
    .line 20
    invoke-direct {v0, v4, v2}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 21
    .line 22
    .line 23
    iget-object v2, v0, Le/f;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Le/b;

    .line 26
    .line 27
    const-string v5, "X\u00f3a n\u00fat?"

    .line 28
    .line 29
    iput-object v5, v2, Le/b;->d:Ljava/lang/CharSequence;

    .line 30
    .line 31
    const-string v5, "B\u1ea1n c\u00f3 ch\u1eafc mu\u1ed1n x\u00f3a n\u00fat n\u00e0y?"

    .line 32
    .line 33
    iput-object v5, v2, Le/b;->f:Ljava/lang/CharSequence;

    .line 34
    .line 35
    new-instance v2, LC1/o0;

    .line 36
    .line 37
    const/4 v5, 0x2

    .line 38
    invoke-direct {v2, v5, v4, p1}, LC1/o0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    const-string p1, "X\u00f3a"

    .line 42
    .line 43
    invoke-virtual {v0, p1, v2}, LO0/b;->i(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1, v3}, LO0/b;->g(Ljava/lang/String;LC1/h1;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Le/f;->e()Le/g;

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void

    .line 53
    :pswitch_0
    sget p1, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->i:I

    .line 54
    .line 55
    const-string p1, "Y"

    .line 56
    .line 57
    const-string v0, "Custom"

    .line 58
    .line 59
    const-string v5, "A"

    .line 60
    .line 61
    const-string v6, "B"

    .line 62
    .line 63
    const-string v7, "X"

    .line 64
    .line 65
    filled-new-array {v5, v6, v7, p1, v0}, [Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    new-instance v0, LO0/b;

    .line 70
    .line 71
    invoke-direct {v0, v4, v2}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 72
    .line 73
    .line 74
    iget-object v2, v0, Le/f;->c:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v2, Le/b;

    .line 77
    .line 78
    const-string v5, "Th\u00eam n\u00fat m\u1edbi"

    .line 79
    .line 80
    iput-object v5, v2, Le/b;->d:Ljava/lang/CharSequence;

    .line 81
    .line 82
    move-object v5, p1

    .line 83
    check-cast v5, [Ljava/lang/CharSequence;

    .line 84
    .line 85
    new-instance v6, LC1/o0;

    .line 86
    .line 87
    const/4 v7, 0x3

    .line 88
    invoke-direct {v6, v7, p1, v4}, LC1/o0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    iput-object v5, v2, Le/b;->q:[Ljava/lang/CharSequence;

    .line 92
    .line 93
    iput-object v6, v2, Le/b;->s:Landroid/content/DialogInterface$OnClickListener;

    .line 94
    .line 95
    invoke-virtual {v0, v1, v3}, LO0/b;->g(Ljava/lang/String;LC1/h1;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Le/f;->e()Le/g;

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :pswitch_1
    iget-object p1, v4, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->g:Ljava/lang/String;

    .line 103
    .line 104
    if-eqz p1, :cond_4

    .line 105
    .line 106
    iget-object v0, v4, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->f:Ljava/util/List;

    .line 107
    .line 108
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_2

    .line 117
    .line 118
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    move-object v2, v1

    .line 123
    check-cast v2, Lx1/a;

    .line 124
    .line 125
    iget-object v2, v2, Lx1/a;->a:Ljava/lang/String;

    .line 126
    .line 127
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-eqz v2, :cond_1

    .line 132
    .line 133
    move-object v3, v1

    .line 134
    :cond_2
    check-cast v3, Lx1/a;

    .line 135
    .line 136
    if-nez v3, :cond_3

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_3
    iget-object v0, v3, Lx1/a;->b:Ljava/lang/String;

    .line 140
    .line 141
    iget-object v1, v3, Lx1/a;->c:Ljava/lang/String;

    .line 142
    .line 143
    const-string v2, "buttonLabel"

    .line 144
    .line 145
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const-string v2, "currentKey"

    .line 149
    .line 150
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    new-instance v2, LF1/b;

    .line 154
    .line 155
    invoke-direct {v2}, LF1/b;-><init>()V

    .line 156
    .line 157
    .line 158
    new-instance v5, Landroid/os/Bundle;

    .line 159
    .line 160
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 161
    .line 162
    .line 163
    const-string v6, "button_label"

    .line 164
    .line 165
    invoke-virtual {v5, v6, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    const-string v0, "current_key"

    .line 169
    .line 170
    invoke-virtual {v5, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2, v5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 174
    .line 175
    .line 176
    new-instance v0, LA1/r;

    .line 177
    .line 178
    invoke-direct {v0, v3, v4, p1}, LA1/r;-><init>(Lx1/a;Lcom/minhub/gamehub/editor/ButtonEditorActivity;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    const-string p1, "listener"

    .line 182
    .line 183
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iput-object v0, v2, LF1/b;->b:LA1/r;

    .line 187
    .line 188
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    const-string v0, "key_map"

    .line 193
    .line 194
    invoke-virtual {v2, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    :cond_4
    :goto_0
    return-void

    .line 198
    :pswitch_2
    iget-object p1, v4, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->g:Ljava/lang/String;

    .line 199
    .line 200
    if-eqz p1, :cond_a

    .line 201
    .line 202
    iget-object v1, v4, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->e:Lw1/c;

    .line 203
    .line 204
    if-nez v1, :cond_5

    .line 205
    .line 206
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    move-object v1, v3

    .line 210
    :cond_5
    iget-object v1, v1, Lw1/c;->i:Landroid/view/View;

    .line 211
    .line 212
    check-cast v1, Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 213
    .line 214
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 215
    .line 216
    .line 217
    iget-object v1, v4, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->e:Lw1/c;

    .line 218
    .line 219
    if-nez v1, :cond_6

    .line 220
    .line 221
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    move-object v1, v3

    .line 225
    :cond_6
    iget-object v1, v1, Lw1/c;->i:Landroid/view/View;

    .line 226
    .line 227
    check-cast v1, Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 228
    .line 229
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 230
    .line 231
    .line 232
    invoke-static {}, Lcom/bumptech/glide/d;->m()Ljava/util/List;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    if-eqz v2, :cond_8

    .line 245
    .line 246
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    move-object v5, v2

    .line 251
    check-cast v5, Lx1/a;

    .line 252
    .line 253
    iget-object v5, v5, Lx1/a;->a:Ljava/lang/String;

    .line 254
    .line 255
    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v5

    .line 259
    if-eqz v5, :cond_7

    .line 260
    .line 261
    goto :goto_1

    .line 262
    :cond_8
    move-object v2, v3

    .line 263
    :goto_1
    check-cast v2, Lx1/a;

    .line 264
    .line 265
    if-eqz v2, :cond_a

    .line 266
    .line 267
    iget-object v1, v4, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->e:Lw1/c;

    .line 268
    .line 269
    if-nez v1, :cond_9

    .line 270
    .line 271
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    goto :goto_2

    .line 275
    :cond_9
    move-object v3, v1

    .line 276
    :goto_2
    iget-object v0, v3, Lw1/c;->i:Landroid/view/View;

    .line 277
    .line 278
    check-cast v0, Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 279
    .line 280
    invoke-virtual {v0, p1, v2}, Lcom/minhub/gamehub/editor/EditModeOverlay;->f(Ljava/lang/String;Lx1/a;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v4, p1}, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->m(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    :cond_a
    return-void

    .line 287
    :pswitch_3
    iget-object p1, v4, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->e:Lw1/c;

    .line 288
    .line 289
    if-nez p1, :cond_b

    .line 290
    .line 291
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    goto :goto_3

    .line 295
    :cond_b
    move-object v3, p1

    .line 296
    :goto_3
    iget-object p1, v3, Lw1/c;->i:Landroid/view/View;

    .line 297
    .line 298
    check-cast p1, Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 299
    .line 300
    invoke-virtual {p1}, Lcom/minhub/gamehub/editor/EditModeOverlay;->getCurrentConfigs()Ljava/util/List;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    iget v0, v4, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->h:I

    .line 305
    .line 306
    invoke-static {v4, v0, p1}, Lx1/e;->b(Landroid/content/Context;ILjava/util/List;)V

    .line 307
    .line 308
    .line 309
    const p1, 0x7f120401

    .line 310
    .line 311
    .line 312
    invoke-virtual {v4, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    invoke-static {v4, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 324
    .line 325
    .line 326
    return-void

    .line 327
    :pswitch_4
    sget p1, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->i:I

    .line 328
    .line 329
    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 330
    .line 331
    .line 332
    return-void

    .line 333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
