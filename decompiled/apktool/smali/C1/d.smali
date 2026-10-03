.class public final synthetic LC1/d;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:Lcom/minhub/gamehub/hub/AddGameActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/hub/AddGameActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LC1/d;->a:Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 9

    .line 1
    sget v0, Lcom/minhub/gamehub/hub/AddGameActivity;->y:I

    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const v0, 0x7f090043

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, LC1/d;->a:Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x1

    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    sget-object p1, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache;->INSTANCE:Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v5, "getApplicationContext(...)"

    .line 24
    .line 25
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache;->invalidate(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    sget-object p1, Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;->INSTANCE:Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;->invalidate()V

    .line 34
    .line 35
    .line 36
    new-instance p1, LC1/E1;

    .line 37
    .line 38
    invoke-direct {p1}, LC1/E1;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p1, v1, Lcom/minhub/gamehub/hub/AddGameActivity;->q:LC1/E1;

    .line 42
    .line 43
    iput-object p1, v1, Lcom/minhub/gamehub/hub/AddGameActivity;->p:LC1/E1;

    .line 44
    .line 45
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, v1, Lcom/minhub/gamehub/hub/AddGameActivity;->r:Ljava/util/List;

    .line 50
    .line 51
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, v1, Lcom/minhub/gamehub/hub/AddGameActivity;->s:Ljava/util/List;

    .line 56
    .line 57
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, v1, Lcom/minhub/gamehub/hub/AddGameActivity;->t:Ljava/util/List;

    .line 62
    .line 63
    iput-boolean v3, v1, Lcom/minhub/gamehub/hub/AddGameActivity;->v:Z

    .line 64
    .line 65
    iput-boolean v3, v1, Lcom/minhub/gamehub/hub/AddGameActivity;->w:Z

    .line 66
    .line 67
    iput-boolean v3, v1, Lcom/minhub/gamehub/hub/AddGameActivity;->x:Z

    .line 68
    .line 69
    new-instance p1, LC1/Z;

    .line 70
    .line 71
    const/16 v0, 0xf

    .line 72
    .line 73
    invoke-direct {p1, v2, v2, v2, v0}, LC1/Z;-><init>(Ljava/lang/String;LC1/Y;LC1/c0;I)V

    .line 74
    .line 75
    .line 76
    iput-object p1, v1, Lcom/minhub/gamehub/hub/AddGameActivity;->u:LC1/Z;

    .line 77
    .line 78
    iget-object p1, v1, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 79
    .line 80
    if-nez p1, :cond_0

    .line 81
    .line 82
    const-string p1, "b"

    .line 83
    .line 84
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    move-object v2, p1

    .line 89
    :goto_0
    iget-object p1, v2, Lw1/a;->c:Landroid/widget/ImageButton;

    .line 90
    .line 91
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v4, v4}, Lcom/minhub/gamehub/hub/AddGameActivity;->u(II)V

    .line 95
    .line 96
    .line 97
    return v4

    .line 98
    :cond_1
    const v0, 0x7f09003d

    .line 99
    .line 100
    .line 101
    const-string v5, "<this>"

    .line 102
    .line 103
    if-ne p1, v0, :cond_2

    .line 104
    .line 105
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :try_start_0
    iget-object p1, v1, Lcom/minhub/gamehub/hub/AddGameActivity;->k:Landroidx/activity/result/ActivityResultLauncher;

    .line 109
    .line 110
    const-string v0, "*/*"

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .line 114
    .line 115
    return v4

    .line 116
    :catch_0
    const p1, 0x7f120322

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-static {v1, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 128
    .line 129
    .line 130
    return v4

    .line 131
    :cond_2
    const v0, 0x7f09003c

    .line 132
    .line 133
    .line 134
    if-ne p1, v0, :cond_4

    .line 135
    .line 136
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    new-instance p1, LH0/o;

    .line 140
    .line 141
    invoke-direct {p1, v1}, LH0/o;-><init>(Landroid/content/Context;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    const v5, 0x7f0c00aa

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {p1, v0}, LH0/o;->setContentView(Landroid/view/View;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    if-eqz v5, :cond_3

    .line 163
    .line 164
    const v6, 0x106000d

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 168
    .line 169
    .line 170
    :cond_3
    new-instance v5, LC1/L;

    .line 171
    .line 172
    invoke-direct {v5, p1, v3}, LC1/L;-><init>(LH0/o;I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, v5}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 176
    .line 177
    .line 178
    iput-object p1, v1, Lcom/minhub/gamehub/hub/AddGameActivity;->m:LH0/o;

    .line 179
    .line 180
    iput-object v2, v1, Lcom/minhub/gamehub/hub/AddGameActivity;->n:Landroid/net/Uri;

    .line 181
    .line 182
    const v2, 0x7f090155

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    check-cast v2, Landroid/widget/EditText;

    .line 190
    .line 191
    const v5, 0x7f09039e

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    check-cast v5, Landroid/widget/TextView;

    .line 199
    .line 200
    const v6, 0x7f0900c8

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    check-cast v6, Landroid/widget/Button;

    .line 208
    .line 209
    const v7, 0x7f090099

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 213
    .line 214
    .line 215
    move-result-object v7

    .line 216
    check-cast v7, Landroid/widget/Button;

    .line 217
    .line 218
    const v8, 0x7f090098

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    check-cast v0, Landroid/widget/Button;

    .line 226
    .line 227
    new-instance v8, LC1/N;

    .line 228
    .line 229
    invoke-direct {v8, v7, v2, v1}, LC1/N;-><init>(Landroid/widget/Button;Landroid/widget/EditText;Lcom/minhub/gamehub/hub/AddGameActivity;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 233
    .line 234
    .line 235
    new-instance v8, LC1/u;

    .line 236
    .line 237
    invoke-direct {v8, v1, v5, v2, v7}, LC1/u;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/Button;)V

    .line 238
    .line 239
    .line 240
    iput-object v8, v1, Lcom/minhub/gamehub/hub/AddGameActivity;->o:LC1/u;

    .line 241
    .line 242
    new-instance v5, LC1/a;

    .line 243
    .line 244
    const/4 v8, 0x7

    .line 245
    invoke-direct {v5, v1, v8}, LC1/a;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;I)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v6, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    .line 250
    .line 251
    new-instance v5, LC1/v;

    .line 252
    .line 253
    invoke-direct {v5, p1, v3}, LC1/v;-><init>(LH0/o;I)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    .line 258
    .line 259
    new-instance v0, LC1/w;

    .line 260
    .line 261
    invoke-direct {v0, v2, v1, p1, v3}, LC1/w;-><init>(Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    .line 266
    .line 267
    new-instance v0, LC1/x;

    .line 268
    .line 269
    invoke-direct {v0, v3, v1}, LC1/x;-><init>(ILjava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 276
    .line 277
    .line 278
    return v4

    .line 279
    :cond_4
    const v0, 0x7f09003a

    .line 280
    .line 281
    .line 282
    if-ne p1, v0, :cond_5

    .line 283
    .line 284
    const-string p1, "context"

    .line 285
    .line 286
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    new-instance p1, Landroid/content/Intent;

    .line 290
    .line 291
    const-class v0, Lcom/minhub/gamehub/hub/OnlineDownloadsActivity;

    .line 292
    .line 293
    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 297
    .line 298
    .line 299
    return v4

    .line 300
    :cond_5
    return v3
.end method
