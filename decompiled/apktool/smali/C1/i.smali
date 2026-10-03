.class public final synthetic LC1/i;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p6, p0, LC1/i;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LC1/i;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, LC1/i;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, LC1/i;->e:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, LC1/i;->f:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p5, p0, LC1/i;->g:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, LC1/i;->b:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, v0, LC1/i;->g:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v4, v0, LC1/i;->f:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v5, v0, LC1/i;->e:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v6, v0, LC1/i;->d:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v7, v0, LC1/i;->c:Ljava/lang/Object;

    .line 15
    .line 16
    packed-switch v1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    check-cast v7, Ly1/X0;

    .line 20
    .line 21
    check-cast v6, Landroid/widget/EditText;

    .line 22
    .line 23
    check-cast v5, Ly1/x0;

    .line 24
    .line 25
    check-cast v4, Le/g;

    .line 26
    .line 27
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 28
    .line 29
    invoke-static {v6, v4, v3, v5, v7}, Ly1/x0;->c(Landroid/widget/EditText;Le/g;Lkotlin/jvm/functions/Function1;Ly1/x0;Ly1/X0;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_0
    check-cast v7, Le/g;

    .line 34
    .line 35
    move-object v12, v6

    .line 36
    check-cast v12, Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 37
    .line 38
    move-object v10, v5

    .line 39
    check-cast v10, Ly1/v1;

    .line 40
    .line 41
    move-object v13, v4

    .line 42
    check-cast v13, LL1/a;

    .line 43
    .line 44
    move-object v11, v3

    .line 45
    check-cast v11, Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v7}, Le/D;->dismiss()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v12}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const v3, 0x7f0c003e

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const v3, 0x7f090387

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Landroid/widget/TextView;

    .line 69
    .line 70
    const v4, 0x7f090257

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    move-object v14, v4

    .line 78
    check-cast v14, Landroid/widget/ProgressBar;

    .line 79
    .line 80
    const v4, 0x7f090388

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    move-object v15, v4

    .line 88
    check-cast v15, Landroid/widget/TextView;

    .line 89
    .line 90
    if-eqz v13, :cond_1

    .line 91
    .line 92
    sget-object v4, LC1/B0;->a:[I

    .line 93
    .line 94
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    aget v4, v4, v5

    .line 99
    .line 100
    const/4 v5, 0x1

    .line 101
    if-ne v4, v5, :cond_0

    .line 102
    .line 103
    invoke-static {v13}, Ly1/W0;->a(LL1/a;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    goto :goto_0

    .line 108
    :cond_0
    invoke-static {v13}, Ly1/G1;->b(LL1/a;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    :goto_0
    if-nez v4, :cond_2

    .line 113
    .line 114
    :cond_1
    iget-object v4, v10, Ly1/v1;->c:Ljava/lang/String;

    .line 115
    .line 116
    :cond_2
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    new-instance v3, LO0/b;

    .line 120
    .line 121
    const/4 v5, 0x0

    .line 122
    invoke-direct {v3, v12, v5}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 123
    .line 124
    .line 125
    iget-object v6, v3, Le/f;->c:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v6, Le/b;

    .line 128
    .line 129
    iput-object v1, v6, Le/b;->t:Landroid/view/View;

    .line 130
    .line 131
    iput-boolean v5, v6, Le/b;->m:Z

    .line 132
    .line 133
    invoke-virtual {v3}, LO0/b;->c()Le/g;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    const-string v1, "create(...)"

    .line 138
    .line 139
    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    if-eqz v1, :cond_3

    .line 147
    .line 148
    const v3, 0x106000d

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 152
    .line 153
    .line 154
    :cond_3
    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    .line 155
    .line 156
    .line 157
    invoke-static {v12}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    new-instance v8, LC1/E0;

    .line 162
    .line 163
    const/16 v17, 0x0

    .line 164
    .line 165
    move-object/from16 v16, v4

    .line 166
    .line 167
    invoke-direct/range {v8 .. v17}, LC1/E0;-><init>(Le/g;Ly1/v1;Ljava/lang/String;Lcom/minhub/gamehub/hub/GameDetailActivity;LL1/a;Landroid/widget/ProgressBar;Landroid/widget/TextView;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 168
    .line 169
    .line 170
    const/4 v3, 0x3

    .line 171
    invoke-static {v1, v2, v8, v3}, LV1/A;->c(LV1/x;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)LV1/p0;

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :pswitch_1
    check-cast v7, Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 176
    .line 177
    check-cast v6, Lk/m1;

    .line 178
    .line 179
    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 180
    .line 181
    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 182
    .line 183
    check-cast v3, LH0/o;

    .line 184
    .line 185
    sget v1, Lcom/minhub/gamehub/hub/AddGameActivity;->y:I

    .line 186
    .line 187
    new-instance v1, LC1/Z;

    .line 188
    .line 189
    iget-object v6, v6, Lk/m1;->b:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v6, Landroid/widget/EditText;

    .line 192
    .line 193
    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    if-eqz v6, :cond_4

    .line 198
    .line 199
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    :cond_4
    if-nez v2, :cond_5

    .line 204
    .line 205
    const-string v2, ""

    .line 206
    .line 207
    :cond_5
    iget-object v5, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast v5, LC1/Y;

    .line 210
    .line 211
    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 212
    .line 213
    check-cast v4, LC1/c0;

    .line 214
    .line 215
    const/4 v6, 0x2

    .line 216
    invoke-direct {v1, v2, v5, v4, v6}, LC1/Z;-><init>(Ljava/lang/String;LC1/Y;LC1/c0;I)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v7, v1}, Lcom/minhub/gamehub/hub/AddGameActivity;->n(LC1/Z;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v3}, Le/D;->dismiss()V

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    nop

    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
