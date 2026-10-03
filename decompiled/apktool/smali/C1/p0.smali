.class public final synthetic LC1/p0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/hub/GameDetailActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/hub/GameDetailActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, LC1/p0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LC1/p0;->c:Lcom/minhub/gamehub/hub/GameDetailActivity;

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
    .locals 13

    .line 1
    iget p1, p0, LC1/p0;->b:I

    .line 2
    .line 3
    const-string v0, "<this>"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, LC1/p0;->c:Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 7
    .line 8
    const/4 v3, 0x3

    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object p1, v2, Lcom/minhub/gamehub/hub/GameDetailActivity;->t:Landroidx/activity/result/ActivityResultLauncher;

    .line 13
    .line 14
    const-string v0, "*/*"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object v8, p0, LC1/p0;->c:Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 21
    .line 22
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, v8, Lcom/minhub/gamehub/hub/GameDetailActivity;->g:Lcom/minhub/gamehub/data/Game;

    .line 26
    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {p1}, Lcom/minhub/gamehub/data/GameKt;->getEngineEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameEngine;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    new-instance v0, LH0/o;

    .line 39
    .line 40
    invoke-direct {v0, v8}, LH0/o;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const v4, 0x7f0c00b0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const v4, 0x7f09025d

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    move-object v5, v4

    .line 62
    check-cast v5, Landroid/widget/ProgressBar;

    .line 63
    .line 64
    const v4, 0x7f090385

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    move-object v7, v4

    .line 72
    check-cast v7, Landroid/widget/TextView;

    .line 73
    .line 74
    const v4, 0x7f0902d7

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v10

    .line 81
    const v4, 0x7f09028a

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 89
    .line 90
    new-instance v9, LC1/j0;

    .line 91
    .line 92
    new-instance v11, LA1/r;

    .line 93
    .line 94
    const/4 v12, 0x4

    .line 95
    invoke-direct {v11, v0, v8, p1, v12}, LA1/r;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 96
    .line 97
    .line 98
    invoke-direct {v9, v11}, LC1/j0;-><init>(LA1/r;)V

    .line 99
    .line 100
    .line 101
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 102
    .line 103
    const/4 v11, 0x1

    .line 104
    invoke-direct {p1, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(LP/g0;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4, v9}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(LP/W;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v2}, LH0/o;->setContentView(Landroid/view/View;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-eqz p1, :cond_1

    .line 121
    .line 122
    const v2, 0x106000d

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 126
    .line 127
    .line 128
    :cond_1
    new-instance p1, LC1/L;

    .line 129
    .line 130
    invoke-direct {p1, v0, v3}, LC1/L;-><init>(LH0/o;I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 137
    .line 138
    .line 139
    invoke-static {v8}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    new-instance v4, LC1/D0;

    .line 144
    .line 145
    const/4 v11, 0x0

    .line 146
    invoke-direct/range {v4 .. v11}, LC1/D0;-><init>(Landroid/widget/ProgressBar;Ljava/lang/String;Landroid/widget/TextView;Lcom/minhub/gamehub/hub/GameDetailActivity;LC1/j0;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    .line 147
    .line 148
    .line 149
    invoke-static {p1, v1, v4, v3}, LV1/A;->c(LV1/x;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)LV1/p0;

    .line 150
    .line 151
    .line 152
    :goto_0
    return-void

    .line 153
    :pswitch_1
    iget-object v9, p0, LC1/p0;->c:Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 154
    .line 155
    iget-object v8, v9, Lcom/minhub/gamehub/hub/GameDetailActivity;->g:Lcom/minhub/gamehub/data/Game;

    .line 156
    .line 157
    if-nez v8, :cond_2

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_2
    iget-object v7, v9, Lcom/minhub/gamehub/hub/GameDetailActivity;->q:LC1/X1;

    .line 161
    .line 162
    if-nez v7, :cond_3

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_3
    invoke-static {v9}, LS1/d;->p(Landroid/content/Context;)Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    sget-object v2, LC1/X0;->a:Li1/l;

    .line 170
    .line 171
    if-nez p1, :cond_4

    .line 172
    .line 173
    invoke-static {v9}, Lcom/bumptech/glide/c;->V(Lcom/minhub/gamehub/hub/GameDetailActivity;)V

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_4
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    const-string p1, "game"

    .line 181
    .line 182
    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    const-string p1, "state"

    .line 186
    .line 187
    invoke-static {v7, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-static {v9}, LS1/d;->p(Landroid/content/Context;)Z

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    if-nez p1, :cond_5

    .line 195
    .line 196
    invoke-static {v9}, Lcom/bumptech/glide/c;->V(Lcom/minhub/gamehub/hub/GameDetailActivity;)V

    .line 197
    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_5
    iget-object v6, v7, LC1/X1;->b:Ljava/io/File;

    .line 201
    .line 202
    if-nez v6, :cond_6

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_6
    invoke-static {v9}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    new-instance v5, LC1/L0;

    .line 210
    .line 211
    const/4 v10, 0x0

    .line 212
    const/4 v11, 0x0

    .line 213
    invoke-direct/range {v5 .. v11}, LC1/L0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/minhub/gamehub/data/Game;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 214
    .line 215
    .line 216
    invoke-static {p1, v1, v5, v3}, LV1/A;->c(LV1/x;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)LV1/p0;

    .line 217
    .line 218
    .line 219
    :goto_1
    return-void

    .line 220
    :pswitch_2
    sget p1, Lcom/minhub/gamehub/hub/GameDetailActivity;->w:I

    .line 221
    .line 222
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    :pswitch_3
    iget-object p1, v2, Lcom/minhub/gamehub/hub/GameDetailActivity;->g:Lcom/minhub/gamehub/data/Game;

    .line 227
    .line 228
    if-nez p1, :cond_7

    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_7
    invoke-static {v2}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    new-instance v4, LC1/r0;

    .line 236
    .line 237
    const/4 v5, 0x0

    .line 238
    invoke-direct {v4, v2, p1, v1, v5}, LC1/r0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;Lkotlin/coroutines/Continuation;I)V

    .line 239
    .line 240
    .line 241
    invoke-static {v0, v1, v4, v3}, LV1/A;->c(LV1/x;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)LV1/p0;

    .line 242
    .line 243
    .line 244
    :goto_2
    return-void

    .line 245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
