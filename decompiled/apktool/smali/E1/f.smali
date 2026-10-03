.class public final synthetic LE1/f;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:LE1/g;

.field public final synthetic d:LB1/A;


# direct methods
.method public synthetic constructor <init>(LE1/g;LB1/A;I)V
    .locals 0

    .line 1
    iput p3, p0, LE1/f;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LE1/f;->c:LE1/g;

    .line 4
    .line 5
    iput-object p2, p0, LE1/f;->d:LB1/A;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, LE1/f;->b:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, LE1/f;->d:LB1/A;

    .line 9
    .line 10
    iget-object v1, v1, LB1/A;->a:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v2, v0, LE1/f;->c:LE1/g;

    .line 13
    .line 14
    iput-object v1, v2, LE1/g;->e:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v2}, LE1/g;->i()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, LE1/g;->f()V

    .line 20
    .line 21
    .line 22
    iget-object v1, v2, LE1/g;->b:Lw1/c;

    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, v1, Lw1/c;->h:Landroid/view/View;

    .line 28
    .line 29
    check-cast v1, Landroid/widget/ScrollView;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 32
    .line 33
    .line 34
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 35
    .line 36
    return-object v1

    .line 37
    :pswitch_0
    new-instance v6, LH0/o;

    .line 38
    .line 39
    iget-object v3, v0, LE1/f;->c:LE1/g;

    .line 40
    .line 41
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-direct {v6, v1}, LH0/o;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const v2, 0x7f0c00ab

    .line 53
    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const v2, 0x7f090110

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    move-object v8, v2

    .line 68
    check-cast v8, Landroid/widget/LinearLayout;

    .line 69
    .line 70
    sget-object v2, LB1/y;->a:Ljava/util/List;

    .line 71
    .line 72
    const/16 v9, 0x8

    .line 73
    .line 74
    int-to-float v4, v9

    .line 75
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 84
    .line 85
    mul-float/2addr v4, v5

    .line 86
    float-to-int v10, v4

    .line 87
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v11

    .line 91
    const/4 v12, 0x0

    .line 92
    move v13, v12

    .line 93
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_4

    .line 98
    .line 99
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    add-int/lit8 v14, v13, 0x1

    .line 104
    .line 105
    if-gez v13, :cond_0

    .line 106
    .line 107
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 108
    .line 109
    .line 110
    :cond_0
    move-object v5, v2

    .line 111
    check-cast v5, LB1/C;

    .line 112
    .line 113
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    const v4, 0x7f0c005b

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v4, v8, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v15

    .line 124
    const v2, 0x7f090376

    .line 125
    .line 126
    .line 127
    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    check-cast v2, Landroid/widget/TextView;

    .line 132
    .line 133
    const v4, 0x7f090375

    .line 134
    .line 135
    .line 136
    invoke-virtual {v15, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    check-cast v4, Landroid/widget/TextView;

    .line 141
    .line 142
    iget-object v7, v0, LE1/f;->d:LB1/A;

    .line 143
    .line 144
    iget-object v9, v7, LB1/A;->b:Ljava/lang/String;

    .line 145
    .line 146
    iget-object v12, v5, LB1/C;->a:Ljava/lang/String;

    .line 147
    .line 148
    const-string v0, "optionValue"

    .line 149
    .line 150
    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    iget-object v9, v5, LB1/C;->b:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    if-eqz v0, :cond_1

    .line 163
    .line 164
    const v2, 0x7f08009a

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_1
    const v2, 0x7f080099

    .line 169
    .line 170
    .line 171
    :goto_1
    invoke-virtual {v15, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 172
    .line 173
    .line 174
    if-eqz v0, :cond_2

    .line 175
    .line 176
    const/4 v0, 0x0

    .line 177
    goto :goto_2

    .line 178
    :cond_2
    const/16 v0, 0x8

    .line 179
    .line 180
    :goto_2
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 181
    .line 182
    .line 183
    new-instance v2, LC1/G0;

    .line 184
    .line 185
    move-object v4, v7

    .line 186
    const/4 v7, 0x1

    .line 187
    invoke-direct/range {v2 .. v7}, LC1/G0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;LH0/o;I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v15, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    .line 192
    .line 193
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 194
    .line 195
    const/4 v2, -0x1

    .line 196
    const/4 v4, -0x2

    .line 197
    invoke-direct {v0, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 198
    .line 199
    .line 200
    if-lez v13, :cond_3

    .line 201
    .line 202
    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 203
    .line 204
    :cond_3
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 205
    .line 206
    invoke-virtual {v8, v15, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    .line 208
    .line 209
    move-object/from16 v0, p0

    .line 210
    .line 211
    move v13, v14

    .line 212
    const/16 v9, 0x8

    .line 213
    .line 214
    const/4 v12, 0x0

    .line 215
    goto :goto_0

    .line 216
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    invoke-static {v6, v1}, LE1/g;->g(LH0/o;Landroid/view/View;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 223
    .line 224
    .line 225
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 226
    .line 227
    return-object v0

    .line 228
    nop

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
