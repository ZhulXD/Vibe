.class public final LC1/g2;
.super LP/W;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final d:Lkotlin/jvm/functions/Function1;

.field public final e:Lkotlin/jvm/functions/Function1;

.field public final f:Lkotlin/jvm/functions/Function1;

.field public final g:Z

.field public final h:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Z)V
    .locals 1

    .line 1
    const-string v0, "onExportClick"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onDeleteClick"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "onSaveClick"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, LP/W;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, LC1/g2;->d:Lkotlin/jvm/functions/Function1;

    .line 20
    .line 21
    iput-object p2, p0, LC1/g2;->e:Lkotlin/jvm/functions/Function1;

    .line 22
    .line 23
    iput-object p3, p0, LC1/g2;->f:Lkotlin/jvm/functions/Function1;

    .line 24
    .line 25
    iput-boolean p4, p0, LC1/g2;->g:Z

    .line 26
    .line 27
    new-instance p1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, LC1/g2;->h:Ljava/util/ArrayList;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget-object v0, p0, LC1/g2;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final e(LP/y0;I)V
    .locals 10

    .line 1
    check-cast p1, LC1/f2;

    .line 2
    .line 3
    const-string v0, "holder"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, LC1/g2;->h:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    check-cast p2, Lcom/minhub/gamehub/data/Save;

    .line 15
    .line 16
    iget-object v0, p1, LC1/f2;->C:Landroid/widget/ImageButton;

    .line 17
    .line 18
    iget-object v1, p1, LC1/f2;->B:Landroid/widget/Button;

    .line 19
    .line 20
    iget-object v2, p1, LC1/f2;->y:Landroid/widget/TextView;

    .line 21
    .line 22
    iget-object v3, p1, LC1/f2;->x:Landroid/widget/TextView;

    .line 23
    .line 24
    iget-object v4, p1, LC1/f2;->D:LC1/g2;

    .line 25
    .line 26
    iget-boolean v5, v4, LC1/g2;->g:Z

    .line 27
    .line 28
    const-string v6, "save"

    .line 29
    .line 30
    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v6, p1, LC1/f2;->u:Landroid/widget/TextView;

    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/minhub/gamehub/data/Save;->getDisplaySlotBadge()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    iget-object v6, p1, LC1/f2;->v:Landroid/widget/TextView;

    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/minhub/gamehub/data/Save;->getDisplaySlotLabel()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    iget-object v6, p1, LC1/f2;->w:Landroid/widget/TextView;

    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/minhub/gamehub/data/Save;->getChapterName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    if-eqz v7, :cond_0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const-string v7, "Unknown Location"

    .line 61
    .line 62
    :goto_0
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/minhub/gamehub/data/Save;->getChapterName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    const/16 v8, 0x8

    .line 70
    .line 71
    const/4 v9, 0x0

    .line 72
    if-eqz v7, :cond_1

    .line 73
    .line 74
    move v7, v9

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    move v7, v8

    .line 77
    :goto_1
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2}, Lcom/minhub/gamehub/data/Save;->getPlaytime()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    if-eqz v6, :cond_2

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    const-string v6, "--:--"

    .line 88
    .line 89
    :goto_2
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Lcom/minhub/gamehub/data/Save;->getPlaytime()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    if-eqz v6, :cond_3

    .line 97
    .line 98
    move v6, v9

    .line 99
    goto :goto_3

    .line 100
    :cond_3
    move v6, v8

    .line 101
    :goto_3
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Lcom/minhub/gamehub/data/Save;->getLeaderName()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    if-eqz v3, :cond_4

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_4
    const-string v3, ""

    .line 112
    .line 113
    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2}, Lcom/minhub/gamehub/data/Save;->getLeaderName()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    if-eqz v3, :cond_5

    .line 121
    .line 122
    move v3, v9

    .line 123
    goto :goto_5

    .line 124
    :cond_5
    move v3, v8

    .line 125
    :goto_5
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    iget-object v2, p1, LC1/f2;->z:Landroid/widget/TextView;

    .line 129
    .line 130
    invoke-virtual {p2}, Lcom/minhub/gamehub/data/Save;->getSizeLabel()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    .line 137
    iget-object v2, p1, LC1/f2;->A:Landroid/widget/TextView;

    .line 138
    .line 139
    invoke-virtual {p2}, Lcom/minhub/gamehub/data/Save;->getLastPlayedLabel()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    .line 146
    if-eqz v5, :cond_6

    .line 147
    .line 148
    move v2, v9

    .line 149
    goto :goto_6

    .line 150
    :cond_6
    move v2, v8

    .line 151
    :goto_6
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 152
    .line 153
    .line 154
    if-eqz v5, :cond_7

    .line 155
    .line 156
    move v8, v9

    .line 157
    :cond_7
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 158
    .line 159
    .line 160
    new-instance v2, LC1/e2;

    .line 161
    .line 162
    const/4 v3, 0x0

    .line 163
    invoke-direct {v2, v4, p2, v3}, LC1/e2;-><init>(LC1/g2;Lcom/minhub/gamehub/data/Save;I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    .line 168
    .line 169
    new-instance v1, LC1/e2;

    .line 170
    .line 171
    const/4 v2, 0x1

    .line 172
    invoke-direct {v1, v4, p2, v2}, LC1/e2;-><init>(LC1/g2;Lcom/minhub/gamehub/data/Save;I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    .line 177
    .line 178
    iget-object p1, p1, LP/y0;->a:Landroid/view/View;

    .line 179
    .line 180
    new-instance v0, LC1/e2;

    .line 181
    .line 182
    const/4 v1, 0x2

    .line 183
    invoke-direct {v0, v4, p2, v1}, LC1/e2;-><init>(LC1/g2;Lcom/minhub/gamehub/data/Save;I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    .line 188
    .line 189
    return-void
.end method

.method public final f(Landroid/view/ViewGroup;)LP/y0;
    .locals 3

    .line 1
    const-string v0, "parent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const v1, 0x7f0c0063

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v0, LC1/f2;

    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, p0, p1}, LC1/f2;-><init>(LC1/g2;Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public final k(Ljava/util/List;)V
    .locals 1

    .line 1
    const-string v0, "newSaves"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LC1/g2;->h:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, LP/W;->c()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
