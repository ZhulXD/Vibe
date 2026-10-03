.class public final LC1/b2;
.super LP/W;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final d:LC1/F0;

.field public final e:LC1/F0;

.field public final f:LC1/H0;

.field public final g:LC1/H0;

.field public final h:LC1/H0;

.field public i:Ljava/util/List;

.field public j:Z


# direct methods
.method public constructor <init>(LC1/F0;LC1/F0;LC1/H0;LC1/H0;LC1/H0;)V
    .locals 1

    .line 1
    const-string v0, "onToggleStatus"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onEditParameters"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "isPatreon"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "onPatreonLock"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "touchHelper"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, LP/W;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, LC1/b2;->d:LC1/F0;

    .line 30
    .line 31
    iput-object p2, p0, LC1/b2;->e:LC1/F0;

    .line 32
    .line 33
    iput-object p3, p0, LC1/b2;->f:LC1/H0;

    .line 34
    .line 35
    iput-object p4, p0, LC1/b2;->g:LC1/H0;

    .line 36
    .line 37
    iput-object p5, p0, LC1/b2;->h:LC1/H0;

    .line 38
    .line 39
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, LC1/b2;->i:Ljava/util/List;

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget-object v0, p0, LC1/b2;->i:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

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
    check-cast p1, LC1/a2;

    .line 2
    .line 3
    const-string v0, "holder"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, LC1/b2;->i:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    check-cast p2, LC1/c2;

    .line 15
    .line 16
    iget-boolean v0, p0, LC1/b2;->j:Z

    .line 17
    .line 18
    iget-object v1, p1, LC1/a2;->y:Landroid/widget/TextView;

    .line 19
    .line 20
    iget-object v2, p1, LC1/a2;->u:Landroid/view/View;

    .line 21
    .line 22
    iget-object v3, p1, LC1/a2;->x:Landroid/widget/TextView;

    .line 23
    .line 24
    iget-object v4, p1, LC1/a2;->z:LC1/b2;

    .line 25
    .line 26
    iget-object v5, p1, LP/y0;->a:Landroid/view/View;

    .line 27
    .line 28
    const-string v6, "item"

    .line 29
    .line 30
    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v6, p1, LC1/a2;->v:Landroid/widget/TextView;

    .line 34
    .line 35
    iget-object v7, p2, LC1/c2;->a:Ljava/lang/String;

    .line 36
    .line 37
    iget-boolean v8, p2, LC1/c2;->c:Z

    .line 38
    .line 39
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    iget-object v6, p1, LC1/a2;->w:Landroid/widget/TextView;

    .line 43
    .line 44
    iget-object v7, p2, LC1/c2;->b:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v9

    .line 50
    if-eqz v9, :cond_0

    .line 51
    .line 52
    iget-object v7, p2, LC1/c2;->a:Ljava/lang/String;

    .line 53
    .line 54
    :cond_0
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    if-eqz v8, :cond_1

    .line 62
    .line 63
    const v7, 0x7f120357

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const v7, 0x7f120356

    .line 68
    .line 69
    .line 70
    :goto_0
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    if-eqz v8, :cond_2

    .line 82
    .line 83
    const v7, 0x7f060313

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    const v7, 0x7f06031a

    .line 88
    .line 89
    .line 90
    :goto_1
    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    .line 96
    .line 97
    const-string v3, "dragHandle"

    .line 98
    .line 99
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const/16 v3, 0x8

    .line 103
    .line 104
    const/4 v6, 0x0

    .line 105
    if-eqz v0, :cond_3

    .line 106
    .line 107
    move v7, v6

    .line 108
    goto :goto_2

    .line 109
    :cond_3
    move v7, v3

    .line 110
    :goto_2
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    const-string v7, "editParameters"

    .line 114
    .line 115
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    if-eqz v0, :cond_4

    .line 119
    .line 120
    move v3, v6

    .line 121
    :cond_4
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    new-instance v3, LC1/Y1;

    .line 125
    .line 126
    const/4 v6, 0x0

    .line 127
    invoke-direct {v3, v0, v4, p2, v6}, LC1/Y1;-><init>(ZLC1/b2;LC1/c2;I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    .line 132
    .line 133
    new-instance v3, LC1/Y1;

    .line 134
    .line 135
    const/4 v5, 0x1

    .line 136
    invoke-direct {v3, v0, v4, p2, v5}, LC1/Y1;-><init>(ZLC1/b2;LC1/c2;I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    .line 141
    .line 142
    new-instance p2, LC1/Z1;

    .line 143
    .line 144
    invoke-direct {p2, v0, v4, p1}, LC1/Z1;-><init>(ZLC1/b2;LC1/a2;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 148
    .line 149
    .line 150
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
    const v1, 0x7f0c0061

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
    new-instance v0, LC1/a2;

    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, p0, p1}, LC1/a2;-><init>(LC1/b2;Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method
