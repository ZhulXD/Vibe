.class public final synthetic LC1/b;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentActivity;III)V
    .locals 0

    .line 1
    iput p4, p0, LC1/b;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LC1/b;->c:Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    iput p2, p0, LC1/b;->d:I

    .line 6
    .line 7
    iput p3, p0, LC1/b;->e:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget v0, p0, LC1/b;->b:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget v3, p0, LC1/b;->d:I

    .line 6
    .line 7
    iget v4, p0, LC1/b;->e:I

    .line 8
    .line 9
    iget-object v5, p0, LC1/b;->c:Landroidx/fragment/app/FragmentActivity;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v5, Lorg/godotengine/godot/GodotActivity;

    .line 15
    .line 16
    invoke-static {v5, v3, v4}, Lorg/godotengine/godot/nativeapi/GodotNativeBridge;->h(Lorg/godotengine/godot/GodotActivity;II)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    check-cast v5, Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 21
    .line 22
    sget v0, Lcom/minhub/gamehub/hub/AddGameActivity;->y:I

    .line 23
    .line 24
    invoke-virtual {v5}, Landroid/app/Activity;->isFinishing()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {v5}, Landroid/app/Activity;->isDestroyed()Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-nez v0, :cond_5

    .line 33
    .line 34
    if-nez v6, :cond_5

    .line 35
    .line 36
    iget-boolean v0, v5, Lcom/minhub/gamehub/hub/AddGameActivity;->w:Z

    .line 37
    .line 38
    const/4 v6, 0x3

    .line 39
    const/4 v7, 0x0

    .line 40
    if-ne v3, v1, :cond_0

    .line 41
    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    if-ne v4, v1, :cond_0

    .line 45
    .line 46
    iget-object v0, v5, Lcom/minhub/gamehub/hub/AddGameActivity;->q:LC1/E1;

    .line 47
    .line 48
    invoke-static {v0, v2, v2, v7, v6}, LC1/E1;->a(LC1/E1;IZLjava/lang/String;I)LC1/E1;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, v5, Lcom/minhub/gamehub/hub/AddGameActivity;->q:LC1/E1;

    .line 53
    .line 54
    iput-object v0, v5, Lcom/minhub/gamehub/hub/AddGameActivity;->p:LC1/E1;

    .line 55
    .line 56
    add-int/2addr v4, v1

    .line 57
    invoke-virtual {v5, v3, v4}, Lcom/minhub/gamehub/hub/AddGameActivity;->u(II)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_0
    const v0, 0x7f120081

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v1, "getString(...)"

    .line 69
    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v1, v5, Lcom/minhub/gamehub/hub/AddGameActivity;->q:LC1/E1;

    .line 74
    .line 75
    invoke-static {v1, v2, v2, v0, v6}, LC1/E1;->a(LC1/E1;IZLjava/lang/String;I)LC1/E1;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iput-object v1, v5, Lcom/minhub/gamehub/hub/AddGameActivity;->q:LC1/E1;

    .line 80
    .line 81
    iput-object v1, v5, Lcom/minhub/gamehub/hub/AddGameActivity;->p:LC1/E1;

    .line 82
    .line 83
    invoke-virtual {v5, v2}, Lcom/minhub/gamehub/hub/AddGameActivity;->v(Z)V

    .line 84
    .line 85
    .line 86
    iget-object v1, v5, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 87
    .line 88
    const-string v3, "b"

    .line 89
    .line 90
    if-nez v1, :cond_1

    .line 91
    .line 92
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    move-object v1, v7

    .line 96
    :cond_1
    iget-object v1, v1, Lw1/a;->n:Landroid/widget/ProgressBar;

    .line 97
    .line 98
    const/16 v4, 0x8

    .line 99
    .line 100
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    iget-object v1, v5, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 104
    .line 105
    if-nez v1, :cond_2

    .line 106
    .line 107
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    move-object v1, v7

    .line 111
    :cond_2
    iget-object v1, v1, Lw1/a;->p:Landroidx/recyclerview/widget/RecyclerView;

    .line 112
    .line 113
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 114
    .line 115
    .line 116
    iget-object v1, v5, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 117
    .line 118
    if-nez v1, :cond_3

    .line 119
    .line 120
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    move-object v1, v7

    .line 124
    :cond_3
    iget-object v1, v1, Lw1/a;->q:Landroid/widget/TextView;

    .line 125
    .line 126
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 127
    .line 128
    .line 129
    iget-object v1, v5, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 130
    .line 131
    if-nez v1, :cond_4

    .line 132
    .line 133
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_4
    move-object v7, v1

    .line 138
    :goto_0
    iget-object v1, v7, Lw1/a;->q:Landroid/widget/TextView;

    .line 139
    .line 140
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v5}, Lcom/minhub/gamehub/hub/AddGameActivity;->z()V

    .line 144
    .line 145
    .line 146
    :cond_5
    :goto_1
    return-void

    .line 147
    :pswitch_1
    check-cast v5, Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 148
    .line 149
    iget-object v3, v5, Lcom/minhub/gamehub/hub/AddGameActivity;->f:Landroid/os/Handler;

    .line 150
    .line 151
    iget v7, p0, LC1/b;->d:I

    .line 152
    .line 153
    sget v0, Lcom/minhub/gamehub/hub/AddGameActivity;->y:I

    .line 154
    .line 155
    const-string v12, "MinHub"

    .line 156
    .line 157
    const-string v0, "Catalog page="

    .line 158
    .line 159
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 160
    .line 161
    .line 162
    move-result-wide v13

    .line 163
    iget-object v6, v5, Lcom/minhub/gamehub/hub/AddGameActivity;->i:Lkotlin/Lazy;

    .line 164
    .line 165
    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    check-cast v6, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogRepository;

    .line 170
    .line 171
    const/4 v10, 0x6

    .line 172
    const/4 v11, 0x0

    .line 173
    const/4 v8, 0x0

    .line 174
    const/4 v9, 0x0

    .line 175
    invoke-static/range {v6 .. v11}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogRepository;->fetchPage$default(Lcom/minhub/gamehub/hub/catalog/OnlineCatalogRepository;IIZILjava/lang/Object;)Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 180
    .line 181
    .line 182
    move-result-wide v8

    .line 183
    sub-long/2addr v8, v13

    .line 184
    invoke-virtual {v6}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->getGames()Ljava/util/List;

    .line 185
    .line 186
    .line 187
    move-result-object v10

    .line 188
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 189
    .line 190
    .line 191
    move-result v10

    .line 192
    invoke-virtual {v6}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->getTotalPages()I

    .line 193
    .line 194
    .line 195
    move-result v11

    .line 196
    new-instance v13, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v0, " OK in "

    .line 205
    .line 206
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v0, "ms ("

    .line 213
    .line 214
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string v0, " items, "

    .line 221
    .line 222
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string v0, " pages)"

    .line 229
    .line 230
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    new-instance v0, LC1/k;

    .line 241
    .line 242
    invoke-direct {v0, v2, v5, v6}, LC1/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .line 247
    .line 248
    goto :goto_2

    .line 249
    :catch_0
    move-exception v0

    .line 250
    const-string v2, "Catalog fetch failed"

    .line 251
    .line 252
    invoke-static {v12, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    .line 254
    .line 255
    new-instance v0, LC1/b;

    .line 256
    .line 257
    invoke-direct {v0, v5, v7, v4, v1}, LC1/b;-><init>(Landroidx/fragment/app/FragmentActivity;III)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 261
    .line 262
    .line 263
    :goto_2
    return-void

    .line 264
    nop

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
