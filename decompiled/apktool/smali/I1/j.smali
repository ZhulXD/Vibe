.class public final LI1/j;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LI1/i;Ljava/lang/String;Ljava/lang/String;LI1/b;LI1/b;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LI1/j;->a:I

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "patches"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, LI1/j;->b:Ljava/lang/Object;

    .line 14
    iput-object p2, p0, LI1/j;->c:Ljava/lang/Object;

    .line 15
    iput-object p4, p0, LI1/j;->d:Ljava/lang/Object;

    .line 16
    iput-object p5, p0, LI1/j;->e:Ljava/lang/Object;

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const-string p4, "unmodifiableList(...)"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LI1/j;->f:Ljava/lang/Object;

    const/16 p1, 0x80

    .line 18
    const-string p4, "Failed requirement."

    if-eqz p2, :cond_1

    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-gt p2, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    .line 19
    invoke-static {p3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    if-gt p2, p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_3
    :goto_1
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result p2

    if-gt p2, p1, :cond_a

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p6}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    invoke-interface {p6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 23
    check-cast p3, LI1/b;

    .line 24
    iget-object p3, p3, LI1/b;->a:Ljava/lang/String;

    .line 25
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 26
    :cond_4
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result p2

    if-ne p1, p2, :cond_9

    .line 27
    iget-object p1, p0, LI1/j;->b:Ljava/lang/Object;

    check-cast p1, LI1/i;

    sget-object p2, LI1/i;->b:LI1/i;

    if-ne p1, p2, :cond_6

    iget-object p1, p0, LI1/j;->d:Ljava/lang/Object;

    check-cast p1, LI1/b;

    if-nez p1, :cond_5

    iget-object p1, p0, LI1/j;->e:Ljava/lang/Object;

    check-cast p1, LI1/b;

    if-nez p1, :cond_5

    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_6
    :goto_3
    iget-object p1, p0, LI1/j;->b:Ljava/lang/Object;

    check-cast p1, LI1/i;

    sget-object p2, LI1/i;->c:LI1/i;

    if-ne p1, p2, :cond_8

    iget-object p1, p0, LI1/j;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_7

    iget-object p1, p0, LI1/j;->d:Ljava/lang/Object;

    check-cast p1, LI1/b;

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_4
    return-void

    .line 29
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/widget/FrameLayout;Ly1/F0;Ly1/D0;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, LI1/j;->a:I

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onToggleButton"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onEnabledButtonsRequested"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, LI1/j;->b:Ljava/lang/Object;

    .line 9
    iput-object p2, p0, LI1/j;->d:Ljava/lang/Object;

    .line 10
    iput-object p3, p0, LI1/j;->e:Ljava/lang/Object;

    .line 11
    const-string p1, "gamepad"

    iput-object p1, p0, LI1/j;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout;Ly1/e1;LA1/n;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, LI1/j;->a:I

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onToggleButton"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onEnabledButtonsRequested"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LI1/j;->b:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, LI1/j;->d:Ljava/lang/Object;

    .line 5
    iput-object p3, p0, LI1/j;->e:Ljava/lang/Object;

    .line 6
    const-string p1, "special"

    iput-object p1, p0, LI1/j;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 1
    iput p6, p0, LI1/j;->a:I

    iput-object p1, p0, LI1/j;->b:Ljava/lang/Object;

    iput-object p2, p0, LI1/j;->c:Ljava/lang/Object;

    iput-object p3, p0, LI1/j;->d:Ljava/lang/Object;

    iput-object p4, p0, LI1/j;->e:Ljava/lang/Object;

    iput-object p5, p0, LI1/j;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .line 1
    iget v0, p0, LI1/j;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    int-to-float p1, p1

    .line 7
    iget-object v0, p0, LI1/j;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Landroid/widget/FrameLayout;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 24
    .line 25
    :goto_0
    mul-float/2addr p1, v0

    .line 26
    float-to-int p1, p1

    .line 27
    return p1

    .line 28
    :pswitch_0
    int-to-float p1, p1

    .line 29
    iget-object v0, p0, LI1/j;->b:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Landroid/widget/FrameLayout;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 46
    .line 47
    goto :goto_0

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public b(Z)Landroid/widget/LinearLayout;
    .locals 3

    .line 1
    iget v0, p0, LI1/j;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/widget/LinearLayout;

    .line 7
    .line 8
    iget-object v1, p0, LI1/j;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Landroid/widget/FrameLayout;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 24
    .line 25
    const/4 v2, -0x2

    .line 26
    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 27
    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    const/4 p1, 0x2

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/16 p1, 0x8

    .line 34
    .line 35
    :goto_0
    invoke-virtual {p0, p1}, LI1/j;->a(I)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    .line 43
    .line 44
    return-object v0

    .line 45
    :pswitch_0
    new-instance v0, Landroid/widget/LinearLayout;

    .line 46
    .line 47
    iget-object v1, p0, LI1/j;->b:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, Landroid/widget/FrameLayout;

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 60
    .line 61
    .line 62
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 63
    .line 64
    const/4 v2, -0x2

    .line 65
    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 66
    .line 67
    .line 68
    if-eqz p1, :cond_1

    .line 69
    .line 70
    const/4 p1, 0x2

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    const/16 p1, 0x8

    .line 73
    .line 74
    :goto_1
    invoke-virtual {p0, p1}, LI1/j;->a(I)I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    .line 82
    .line 83
    return-object v0

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public c()V
    .locals 27

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, LI1/j;->a:I

    .line 4
    .line 5
    const-string v3, "#171E29"

    .line 6
    .line 7
    const/16 v5, 0x8

    .line 8
    .line 9
    const/4 v7, -0x2

    .line 10
    const-string v12, "#2A3446"

    .line 11
    .line 12
    const-string v13, "keyboard"

    .line 13
    .line 14
    const v14, 0x7f0902e8

    .line 15
    .line 16
    .line 17
    const v15, 0x7f0902eb

    .line 18
    .line 19
    .line 20
    const v6, 0x7f120116

    .line 21
    .line 22
    .line 23
    const v10, 0x7f09035b

    .line 24
    .line 25
    .line 26
    iget-object v2, v1, LI1/j;->e:Ljava/lang/Object;

    .line 27
    .line 28
    iget-object v4, v1, LI1/j;->b:Ljava/lang/Object;

    .line 29
    .line 30
    const-string v16, "#FF424D"

    .line 31
    .line 32
    const-string v17, "#8C93A7"

    .line 33
    .line 34
    const/4 v8, 0x1

    .line 35
    const/4 v11, 0x0

    .line 36
    packed-switch v0, :pswitch_data_0

    .line 37
    .line 38
    .line 39
    check-cast v4, Landroid/widget/FrameLayout;

    .line 40
    .line 41
    check-cast v2, LA1/n;

    .line 42
    .line 43
    iget-object v0, v1, LI1/j;->f:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Landroid/view/View;

    .line 46
    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v2}, LA1/n;->invoke()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v19

    .line 54
    check-cast v19, Ljava/util/Set;

    .line 55
    .line 56
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->size()I

    .line 57
    .line 58
    .line 59
    move-result v19

    .line 60
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroid/widget/TextView;

    .line 65
    .line 66
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v19

    .line 74
    filled-new-array/range {v19 .. v19}, [Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    invoke-virtual {v10, v6, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    :goto_0
    iget-object v0, v1, LI1/j;->f:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v0, Landroid/view/View;

    .line 88
    .line 89
    const-string v6, "special"

    .line 90
    .line 91
    if-nez v0, :cond_1

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_1
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v10

    .line 102
    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v15

    .line 106
    check-cast v15, Landroid/widget/TextView;

    .line 107
    .line 108
    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Landroid/widget/TextView;

    .line 113
    .line 114
    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    iget-object v14, v1, LI1/j;->c:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v14, Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {v14, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v14

    .line 125
    invoke-virtual {v1, v15, v14, v9, v10}, LI1/j;->d(Landroid/widget/TextView;ZII)V

    .line 126
    .line 127
    .line 128
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    iget-object v14, v1, LI1/j;->c:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v14, Ljava/lang/String;

    .line 134
    .line 135
    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v13

    .line 139
    invoke-virtual {v1, v0, v13, v9, v10}, LI1/j;->d(Landroid/widget/TextView;ZII)V

    .line 140
    .line 141
    .line 142
    :goto_1
    iget-object v0, v1, LI1/j;->f:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v0, Landroid/view/View;

    .line 145
    .line 146
    if-nez v0, :cond_2

    .line 147
    .line 148
    goto/16 :goto_14

    .line 149
    .line 150
    :cond_2
    const v9, 0x7f0901c4

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    check-cast v0, Landroid/widget/LinearLayout;

    .line 158
    .line 159
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2}, LA1/n;->invoke()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    check-cast v2, Ljava/util/Set;

    .line 167
    .line 168
    iget-object v9, v1, LI1/j;->c:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v9, Ljava/lang/String;

    .line 171
    .line 172
    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v6

    .line 176
    if-eqz v6, :cond_10

    .line 177
    .line 178
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    sget-object v6, LB1/i;->b:Ljava/util/List;

    .line 182
    .line 183
    new-instance v9, Ljava/util/LinkedHashMap;

    .line 184
    .line 185
    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    .line 194
    .line 195
    move-result v10

    .line 196
    if-eqz v10, :cond_4

    .line 197
    .line 198
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v10

    .line 202
    move-object v13, v10

    .line 203
    check-cast v13, LB1/x;

    .line 204
    .line 205
    iget-object v13, v13, LB1/x;->c:Ljava/lang/String;

    .line 206
    .line 207
    invoke-virtual {v9, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v14

    .line 211
    if-nez v14, :cond_3

    .line 212
    .line 213
    new-instance v14, Ljava/util/ArrayList;

    .line 214
    .line 215
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .line 217
    .line 218
    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    :cond_3
    check-cast v14, Ljava/util/List;

    .line 222
    .line 223
    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    goto :goto_2

    .line 227
    :cond_4
    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 236
    .line 237
    .line 238
    move-result v9

    .line 239
    if-eqz v9, :cond_f

    .line 240
    .line 241
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v9

    .line 245
    check-cast v9, Ljava/util/Map$Entry;

    .line 246
    .line 247
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v13

    .line 251
    check-cast v13, Ljava/lang/String;

    .line 252
    .line 253
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v9

    .line 257
    check-cast v9, Ljava/util/List;

    .line 258
    .line 259
    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 260
    .line 261
    invoke-virtual {v13, v14}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v13

    .line 265
    const-string v14, "toUpperCase(...)"

    .line 266
    .line 267
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    new-instance v14, Landroid/widget/TextView;

    .line 271
    .line 272
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 273
    .line 274
    .line 275
    move-result-object v15

    .line 276
    invoke-direct {v14, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    .line 281
    .line 282
    const-string v13, "#7F889D"

    .line 283
    .line 284
    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 285
    .line 286
    .line 287
    move-result v13

    .line 288
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 289
    .line 290
    .line 291
    const/high16 v13, 0x41100000    # 9.0f

    .line 292
    .line 293
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v14}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 297
    .line 298
    .line 299
    move-result-object v15

    .line 300
    invoke-virtual {v14, v15, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 301
    .line 302
    .line 303
    const v15, 0x3da3d70a    # 0.08f

    .line 304
    .line 305
    .line 306
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 307
    .line 308
    .line 309
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 310
    .line 311
    invoke-direct {v15, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v1, v5}, LI1/j;->a(I)I

    .line 315
    .line 316
    .line 317
    move-result v13

    .line 318
    iput v13, v15, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 319
    .line 320
    invoke-virtual {v14, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 324
    .line 325
    .line 326
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->g(Ljava/util/List;)Ljava/util/List;

    .line 327
    .line 328
    .line 329
    move-result-object v9

    .line 330
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 331
    .line 332
    .line 333
    move-result-object v9

    .line 334
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 335
    .line 336
    .line 337
    move-result v13

    .line 338
    if-eqz v13, :cond_5

    .line 339
    .line 340
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v13

    .line 344
    check-cast v13, Ljava/util/List;

    .line 345
    .line 346
    invoke-virtual {v1, v11}, LI1/j;->b(Z)Landroid/widget/LinearLayout;

    .line 347
    .line 348
    .line 349
    move-result-object v14

    .line 350
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 351
    .line 352
    .line 353
    move-result-object v13

    .line 354
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 355
    .line 356
    .line 357
    move-result v15

    .line 358
    if-eqz v15, :cond_e

    .line 359
    .line 360
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v15

    .line 364
    check-cast v15, LB1/x;

    .line 365
    .line 366
    iget-object v5, v15, LB1/x;->a:Ljava/lang/String;

    .line 367
    .line 368
    iget-object v7, v15, LB1/x;->b:Ljava/lang/String;

    .line 369
    .line 370
    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    move-result v5

    .line 374
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 375
    .line 376
    .line 377
    move-result v10

    .line 378
    new-instance v11, Landroid/widget/LinearLayout;

    .line 379
    .line 380
    move-object/from16 v21, v3

    .line 381
    .line 382
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 383
    .line 384
    .line 385
    move-result-object v3

    .line 386
    invoke-direct {v11, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v11, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v11, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 393
    .line 394
    .line 395
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 396
    .line 397
    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 398
    .line 399
    .line 400
    const/4 v8, 0x0

    .line 401
    invoke-virtual {v3, v8}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 402
    .line 403
    .line 404
    move-object/from16 v22, v4

    .line 405
    .line 406
    const/16 v8, 0xc

    .line 407
    .line 408
    invoke-virtual {v1, v8}, LI1/j;->a(I)I

    .line 409
    .line 410
    .line 411
    move-result v4

    .line 412
    int-to-float v4, v4

    .line 413
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 414
    .line 415
    .line 416
    if-eqz v5, :cond_6

    .line 417
    .line 418
    const-string v4, "#14FF424D"

    .line 419
    .line 420
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 421
    .line 422
    .line 423
    move-result v4

    .line 424
    goto :goto_5

    .line 425
    :cond_6
    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 426
    .line 427
    .line 428
    move-result v4

    .line 429
    :goto_5
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 430
    .line 431
    .line 432
    const/4 v4, 0x2

    .line 433
    invoke-virtual {v1, v4}, LI1/j;->a(I)I

    .line 434
    .line 435
    .line 436
    move-result v8

    .line 437
    if-eqz v5, :cond_7

    .line 438
    .line 439
    move v4, v10

    .line 440
    goto :goto_6

    .line 441
    :cond_7
    const-string v4, "#273244"

    .line 442
    .line 443
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 444
    .line 445
    .line 446
    move-result v4

    .line 447
    :goto_6
    invoke-virtual {v3, v8, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v11, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 451
    .line 452
    .line 453
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 454
    .line 455
    const/16 v4, 0x48

    .line 456
    .line 457
    invoke-virtual {v1, v4}, LI1/j;->a(I)I

    .line 458
    .line 459
    .line 460
    move-result v4

    .line 461
    const/4 v8, -0x2

    .line 462
    invoke-direct {v3, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 463
    .line 464
    .line 465
    const/16 v4, 0x8

    .line 466
    .line 467
    invoke-virtual {v1, v4}, LI1/j;->a(I)I

    .line 468
    .line 469
    .line 470
    move-result v8

    .line 471
    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 472
    .line 473
    invoke-virtual {v1, v4}, LI1/j;->a(I)I

    .line 474
    .line 475
    .line 476
    move-result v8

    .line 477
    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 478
    .line 479
    invoke-virtual {v11, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v1, v4}, LI1/j;->a(I)I

    .line 483
    .line 484
    .line 485
    move-result v3

    .line 486
    move/from16 v23, v5

    .line 487
    .line 488
    const/16 v8, 0xa

    .line 489
    .line 490
    invoke-virtual {v1, v8}, LI1/j;->a(I)I

    .line 491
    .line 492
    .line 493
    move-result v5

    .line 494
    invoke-virtual {v1, v4}, LI1/j;->a(I)I

    .line 495
    .line 496
    .line 497
    move-result v8

    .line 498
    move-object/from16 v24, v6

    .line 499
    .line 500
    invoke-virtual {v1, v4}, LI1/j;->a(I)I

    .line 501
    .line 502
    .line 503
    move-result v6

    .line 504
    invoke-virtual {v11, v3, v5, v8, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 505
    .line 506
    .line 507
    new-instance v3, Ly1/n1;

    .line 508
    .line 509
    const/4 v8, 0x0

    .line 510
    invoke-direct {v3, v1, v15, v8}, Ly1/n1;-><init>(LI1/j;LB1/x;I)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v11, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    .line 515
    .line 516
    new-instance v3, Landroid/widget/TextView;

    .line 517
    .line 518
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 519
    .line 520
    .line 521
    move-result-object v4

    .line 522
    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 523
    .line 524
    .line 525
    iget-object v4, v15, LB1/x;->h:Ljava/lang/String;

    .line 526
    .line 527
    const/4 v5, 0x2

    .line 528
    invoke-static {v7, v5}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v6

    .line 532
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    .line 534
    .line 535
    const/16 v5, 0x11

    .line 536
    .line 537
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 538
    .line 539
    .line 540
    const/4 v5, -0x1

    .line 541
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 542
    .line 543
    .line 544
    const/high16 v5, 0x41200000    # 10.0f

    .line 545
    .line 546
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v3}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 550
    .line 551
    .line 552
    move-result-object v5

    .line 553
    const/4 v6, 0x1

    .line 554
    invoke-virtual {v3, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 555
    .line 556
    .line 557
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    .line 558
    .line 559
    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 560
    .line 561
    .line 562
    const/4 v8, 0x0

    .line 563
    invoke-virtual {v5, v8}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 564
    .line 565
    .line 566
    const-string v6, "CIRCLE"

    .line 567
    .line 568
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 569
    .line 570
    .line 571
    move-result v6

    .line 572
    if-nez v6, :cond_9

    .line 573
    .line 574
    const-string v6, "DPAD"

    .line 575
    .line 576
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 577
    .line 578
    .line 579
    move-result v6

    .line 580
    if-nez v6, :cond_9

    .line 581
    .line 582
    const-string v6, "JOYSTICK"

    .line 583
    .line 584
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 585
    .line 586
    .line 587
    move-result v4

    .line 588
    if-eqz v4, :cond_8

    .line 589
    .line 590
    goto :goto_8

    .line 591
    :cond_8
    const/16 v4, 0x9

    .line 592
    .line 593
    :goto_7
    invoke-virtual {v1, v4}, LI1/j;->a(I)I

    .line 594
    .line 595
    .line 596
    move-result v4

    .line 597
    int-to-float v4, v4

    .line 598
    goto :goto_9

    .line 599
    :cond_9
    :goto_8
    const/16 v4, 0x12

    .line 600
    .line 601
    goto :goto_7

    .line 602
    :goto_9
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 603
    .line 604
    .line 605
    if-eqz v23, :cond_a

    .line 606
    .line 607
    move v4, v10

    .line 608
    goto :goto_a

    .line 609
    :cond_a
    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 610
    .line 611
    .line 612
    move-result v4

    .line 613
    :goto_a
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 614
    .line 615
    .line 616
    const/4 v4, 0x2

    .line 617
    invoke-virtual {v1, v4}, LI1/j;->a(I)I

    .line 618
    .line 619
    .line 620
    move-result v6

    .line 621
    if-eqz v23, :cond_b

    .line 622
    .line 623
    move v4, v10

    .line 624
    goto :goto_b

    .line 625
    :cond_b
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 626
    .line 627
    .line 628
    move-result v4

    .line 629
    :goto_b
    invoke-virtual {v5, v6, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 630
    .line 631
    .line 632
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 633
    .line 634
    .line 635
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 636
    .line 637
    const/16 v5, 0x26

    .line 638
    .line 639
    invoke-virtual {v1, v5}, LI1/j;->a(I)I

    .line 640
    .line 641
    .line 642
    move-result v6

    .line 643
    invoke-virtual {v1, v5}, LI1/j;->a(I)I

    .line 644
    .line 645
    .line 646
    move-result v5

    .line 647
    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 648
    .line 649
    .line 650
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 651
    .line 652
    .line 653
    new-instance v4, Landroid/widget/TextView;

    .line 654
    .line 655
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 656
    .line 657
    .line 658
    move-result-object v5

    .line 659
    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 660
    .line 661
    .line 662
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    .line 664
    .line 665
    const/16 v5, 0x11

    .line 666
    .line 667
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 668
    .line 669
    .line 670
    if-eqz v23, :cond_c

    .line 671
    .line 672
    move v5, v10

    .line 673
    goto :goto_c

    .line 674
    :cond_c
    const-string v5, "#95A0B6"

    .line 675
    .line 676
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 677
    .line 678
    .line 679
    move-result v5

    .line 680
    :goto_c
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 681
    .line 682
    .line 683
    const/high16 v5, 0x41100000    # 9.0f

    .line 684
    .line 685
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 686
    .line 687
    .line 688
    invoke-virtual {v4}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 689
    .line 690
    .line 691
    move-result-object v6

    .line 692
    const/4 v7, 0x1

    .line 693
    invoke-virtual {v4, v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 694
    .line 695
    .line 696
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 697
    .line 698
    const/4 v8, -0x1

    .line 699
    const/4 v15, -0x2

    .line 700
    invoke-direct {v6, v8, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 701
    .line 702
    .line 703
    const/4 v8, 0x6

    .line 704
    invoke-virtual {v1, v8}, LI1/j;->a(I)I

    .line 705
    .line 706
    .line 707
    move-result v15

    .line 708
    iput v15, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 709
    .line 710
    invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 711
    .line 712
    .line 713
    new-instance v6, Landroid/view/View;

    .line 714
    .line 715
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 716
    .line 717
    .line 718
    move-result-object v8

    .line 719
    invoke-direct {v6, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 720
    .line 721
    .line 722
    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    .line 723
    .line 724
    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 725
    .line 726
    .line 727
    invoke-virtual {v8, v7}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 728
    .line 729
    .line 730
    invoke-virtual {v8, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 731
    .line 732
    .line 733
    invoke-virtual {v6, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 734
    .line 735
    .line 736
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 737
    .line 738
    const/4 v8, 0x6

    .line 739
    invoke-virtual {v1, v8}, LI1/j;->a(I)I

    .line 740
    .line 741
    .line 742
    move-result v10

    .line 743
    invoke-virtual {v1, v8}, LI1/j;->a(I)I

    .line 744
    .line 745
    .line 746
    move-result v15

    .line 747
    invoke-direct {v7, v10, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 748
    .line 749
    .line 750
    invoke-virtual {v1, v8}, LI1/j;->a(I)I

    .line 751
    .line 752
    .line 753
    move-result v10

    .line 754
    iput v10, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 755
    .line 756
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 757
    .line 758
    .line 759
    if-eqz v23, :cond_d

    .line 760
    .line 761
    const/4 v7, 0x0

    .line 762
    goto :goto_d

    .line 763
    :cond_d
    const/4 v7, 0x4

    .line 764
    :goto_d
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 765
    .line 766
    .line 767
    invoke-virtual {v11, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 768
    .line 769
    .line 770
    invoke-virtual {v11, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 771
    .line 772
    .line 773
    invoke-virtual {v11, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 774
    .line 775
    .line 776
    invoke-virtual {v14, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 777
    .line 778
    .line 779
    move-object/from16 v3, v21

    .line 780
    .line 781
    move-object/from16 v4, v22

    .line 782
    .line 783
    move-object/from16 v6, v24

    .line 784
    .line 785
    const/16 v5, 0x8

    .line 786
    .line 787
    const/4 v7, -0x2

    .line 788
    const/4 v8, 0x1

    .line 789
    const/4 v11, 0x0

    .line 790
    goto/16 :goto_4

    .line 791
    .line 792
    :cond_e
    move-object/from16 v21, v3

    .line 793
    .line 794
    move-object/from16 v22, v4

    .line 795
    .line 796
    move-object/from16 v24, v6

    .line 797
    .line 798
    const/high16 v5, 0x41100000    # 9.0f

    .line 799
    .line 800
    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 801
    .line 802
    .line 803
    const/16 v5, 0x8

    .line 804
    .line 805
    const/4 v7, -0x2

    .line 806
    const/4 v8, 0x1

    .line 807
    const/4 v11, 0x0

    .line 808
    goto/16 :goto_3

    .line 809
    .line 810
    :cond_f
    move-object/from16 v21, v3

    .line 811
    .line 812
    move-object/from16 v22, v4

    .line 813
    .line 814
    new-instance v2, Landroid/widget/LinearLayout;

    .line 815
    .line 816
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 817
    .line 818
    .line 819
    move-result-object v3

    .line 820
    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 821
    .line 822
    .line 823
    const/4 v6, 0x1

    .line 824
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 825
    .line 826
    .line 827
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 828
    .line 829
    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 830
    .line 831
    .line 832
    const/4 v8, 0x0

    .line 833
    invoke-virtual {v3, v8}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 834
    .line 835
    .line 836
    const/16 v8, 0xc

    .line 837
    .line 838
    invoke-virtual {v1, v8}, LI1/j;->a(I)I

    .line 839
    .line 840
    .line 841
    move-result v4

    .line 842
    int-to-float v4, v4

    .line 843
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 844
    .line 845
    .line 846
    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 847
    .line 848
    .line 849
    move-result v4

    .line 850
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 851
    .line 852
    .line 853
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 854
    .line 855
    .line 856
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 857
    .line 858
    const/4 v5, -0x1

    .line 859
    const/4 v15, -0x2

    .line 860
    invoke-direct {v3, v5, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 861
    .line 862
    .line 863
    const/4 v4, 0x4

    .line 864
    invoke-virtual {v1, v4}, LI1/j;->a(I)I

    .line 865
    .line 866
    .line 867
    move-result v4

    .line 868
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 869
    .line 870
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 871
    .line 872
    .line 873
    invoke-virtual {v1, v8}, LI1/j;->a(I)I

    .line 874
    .line 875
    .line 876
    move-result v3

    .line 877
    invoke-virtual {v1, v8}, LI1/j;->a(I)I

    .line 878
    .line 879
    .line 880
    move-result v4

    .line 881
    invoke-virtual {v1, v8}, LI1/j;->a(I)I

    .line 882
    .line 883
    .line 884
    move-result v5

    .line 885
    invoke-virtual {v1, v8}, LI1/j;->a(I)I

    .line 886
    .line 887
    .line 888
    move-result v6

    .line 889
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 890
    .line 891
    .line 892
    new-instance v3, Landroid/widget/TextView;

    .line 893
    .line 894
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 895
    .line 896
    .line 897
    move-result-object v4

    .line 898
    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 899
    .line 900
    .line 901
    const-string v4, "\ud83d\udca1 B\u1eadt n\u00fat \u2192 v\u00e0o S\u1eafp x\u1ebfp n\u00fat \u0111\u1ec3 \u0111\u1eb7t v\u1ecb tr\u00ed."

    .line 902
    .line 903
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 904
    .line 905
    .line 906
    const-string v4, "#A7AFBF"

    .line 907
    .line 908
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 909
    .line 910
    .line 911
    move-result v4

    .line 912
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 913
    .line 914
    .line 915
    const/high16 v5, 0x41200000    # 10.0f

    .line 916
    .line 917
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 918
    .line 919
    .line 920
    const/4 v4, 0x0

    .line 921
    const v5, 0x3f99999a    # 1.2f

    .line 922
    .line 923
    .line 924
    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 925
    .line 926
    .line 927
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 928
    .line 929
    .line 930
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 931
    .line 932
    .line 933
    goto/16 :goto_14

    .line 934
    .line 935
    :cond_10
    move-object/from16 v21, v3

    .line 936
    .line 937
    move-object/from16 v22, v4

    .line 938
    .line 939
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 940
    .line 941
    .line 942
    new-instance v3, Landroid/widget/TextView;

    .line 943
    .line 944
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 945
    .line 946
    .line 947
    move-result-object v4

    .line 948
    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 949
    .line 950
    .line 951
    const-string v4, "B\u1ea5m ph\u00edm \u0111\u1ec3 b\u1eadt/t\u1eaft \u2022 \u0110\u1ecf = \u0111ang b\u1eadt"

    .line 952
    .line 953
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 954
    .line 955
    .line 956
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 957
    .line 958
    .line 959
    move-result v4

    .line 960
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 961
    .line 962
    .line 963
    const/high16 v5, 0x41200000    # 10.0f

    .line 964
    .line 965
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 966
    .line 967
    .line 968
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 969
    .line 970
    const/4 v15, -0x2

    .line 971
    invoke-direct {v4, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 972
    .line 973
    .line 974
    const/16 v8, 0xa

    .line 975
    .line 976
    invoke-virtual {v1, v8}, LI1/j;->a(I)I

    .line 977
    .line 978
    .line 979
    move-result v5

    .line 980
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 981
    .line 982
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 983
    .line 984
    .line 985
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 986
    .line 987
    .line 988
    sget-object v3, LB1/i;->d:Ljava/util/ArrayList;

    .line 989
    .line 990
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 991
    .line 992
    .line 993
    move-result v4

    .line 994
    const/4 v5, 0x0

    .line 995
    :goto_e
    if-ge v5, v4, :cond_17

    .line 996
    .line 997
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 998
    .line 999
    .line 1000
    move-result-object v6

    .line 1001
    add-int/lit8 v5, v5, 0x1

    .line 1002
    .line 1003
    check-cast v6, Ljava/util/List;

    .line 1004
    .line 1005
    const/4 v7, 0x1

    .line 1006
    invoke-virtual {v1, v7}, LI1/j;->b(Z)Landroid/widget/LinearLayout;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v8

    .line 1010
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v6

    .line 1014
    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1015
    .line 1016
    .line 1017
    move-result v7

    .line 1018
    if-eqz v7, :cond_16

    .line 1019
    .line 1020
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v7

    .line 1024
    check-cast v7, LB1/x;

    .line 1025
    .line 1026
    iget-object v9, v7, LB1/x;->a:Ljava/lang/String;

    .line 1027
    .line 1028
    invoke-interface {v2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1029
    .line 1030
    .line 1031
    move-result v9

    .line 1032
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 1033
    .line 1034
    .line 1035
    move-result v10

    .line 1036
    new-instance v11, Landroid/widget/TextView;

    .line 1037
    .line 1038
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v13

    .line 1042
    invoke-direct {v11, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1043
    .line 1044
    .line 1045
    iget-object v13, v7, LB1/x;->b:Ljava/lang/String;

    .line 1046
    .line 1047
    iget v14, v7, LB1/x;->g:I

    .line 1048
    .line 1049
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1050
    .line 1051
    .line 1052
    const/16 v15, 0x11

    .line 1053
    .line 1054
    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 1055
    .line 1056
    .line 1057
    if-eqz v9, :cond_11

    .line 1058
    .line 1059
    const/4 v15, -0x1

    .line 1060
    goto :goto_10

    .line 1061
    :cond_11
    const-string v15, "#B3BACC"

    .line 1062
    .line 1063
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 1064
    .line 1065
    .line 1066
    move-result v15

    .line 1067
    :goto_10
    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1068
    .line 1069
    .line 1070
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 1071
    .line 1072
    .line 1073
    move-result v15

    .line 1074
    move-object/from16 v18, v2

    .line 1075
    .line 1076
    const/16 v2, 0x8

    .line 1077
    .line 1078
    if-le v15, v2, :cond_12

    .line 1079
    .line 1080
    const/high16 v2, 0x40e00000    # 7.0f

    .line 1081
    .line 1082
    goto :goto_11

    .line 1083
    :cond_12
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 1084
    .line 1085
    .line 1086
    move-result v2

    .line 1087
    const/4 v13, 0x3

    .line 1088
    if-le v2, v13, :cond_13

    .line 1089
    .line 1090
    const/high16 v2, 0x41000000    # 8.0f

    .line 1091
    .line 1092
    goto :goto_11

    .line 1093
    :cond_13
    const/high16 v2, 0x41200000    # 10.0f

    .line 1094
    .line 1095
    :goto_11
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1096
    .line 1097
    .line 1098
    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 1099
    .line 1100
    const/4 v13, 0x1

    .line 1101
    invoke-virtual {v11, v2, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1102
    .line 1103
    .line 1104
    iget v2, v7, LB1/x;->f:I

    .line 1105
    .line 1106
    invoke-virtual {v1, v2}, LI1/j;->a(I)I

    .line 1107
    .line 1108
    .line 1109
    move-result v2

    .line 1110
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 1111
    .line 1112
    .line 1113
    invoke-virtual {v1, v14}, LI1/j;->a(I)I

    .line 1114
    .line 1115
    .line 1116
    move-result v2

    .line 1117
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setHeight(I)V

    .line 1118
    .line 1119
    .line 1120
    const/4 v2, 0x6

    .line 1121
    invoke-virtual {v1, v2}, LI1/j;->a(I)I

    .line 1122
    .line 1123
    .line 1124
    move-result v13

    .line 1125
    invoke-virtual {v1, v2}, LI1/j;->a(I)I

    .line 1126
    .line 1127
    .line 1128
    move-result v15

    .line 1129
    const/4 v2, 0x0

    .line 1130
    invoke-virtual {v11, v13, v2, v15, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1131
    .line 1132
    .line 1133
    new-instance v13, Landroid/graphics/drawable/GradientDrawable;

    .line 1134
    .line 1135
    invoke-direct {v13}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1136
    .line 1137
    .line 1138
    invoke-virtual {v13, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1139
    .line 1140
    .line 1141
    const/4 v2, 0x6

    .line 1142
    invoke-virtual {v1, v2}, LI1/j;->a(I)I

    .line 1143
    .line 1144
    .line 1145
    move-result v15

    .line 1146
    int-to-float v2, v15

    .line 1147
    invoke-virtual {v13, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1148
    .line 1149
    .line 1150
    if-eqz v9, :cond_14

    .line 1151
    .line 1152
    move v2, v10

    .line 1153
    goto :goto_12

    .line 1154
    :cond_14
    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 1155
    .line 1156
    .line 1157
    move-result v2

    .line 1158
    :goto_12
    invoke-virtual {v13, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1159
    .line 1160
    .line 1161
    const/4 v2, 0x2

    .line 1162
    invoke-virtual {v1, v2}, LI1/j;->a(I)I

    .line 1163
    .line 1164
    .line 1165
    move-result v15

    .line 1166
    if-eqz v9, :cond_15

    .line 1167
    .line 1168
    goto :goto_13

    .line 1169
    :cond_15
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 1170
    .line 1171
    .line 1172
    move-result v10

    .line 1173
    :goto_13
    invoke-virtual {v13, v15, v10}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1174
    .line 1175
    .line 1176
    invoke-virtual {v11, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1177
    .line 1178
    .line 1179
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1180
    .line 1181
    invoke-virtual {v1, v14}, LI1/j;->a(I)I

    .line 1182
    .line 1183
    .line 1184
    move-result v9

    .line 1185
    const/4 v15, -0x2

    .line 1186
    invoke-direct {v2, v15, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1187
    .line 1188
    .line 1189
    const/4 v9, 0x4

    .line 1190
    invoke-virtual {v1, v9}, LI1/j;->a(I)I

    .line 1191
    .line 1192
    .line 1193
    move-result v10

    .line 1194
    iput v10, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1195
    .line 1196
    invoke-virtual {v1, v9}, LI1/j;->a(I)I

    .line 1197
    .line 1198
    .line 1199
    move-result v10

    .line 1200
    iput v10, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1201
    .line 1202
    invoke-virtual {v11, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1203
    .line 1204
    .line 1205
    new-instance v2, Ly1/n1;

    .line 1206
    .line 1207
    const/4 v13, 0x1

    .line 1208
    invoke-direct {v2, v1, v7, v13}, Ly1/n1;-><init>(LI1/j;LB1/x;I)V

    .line 1209
    .line 1210
    .line 1211
    invoke-virtual {v11, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1212
    .line 1213
    .line 1214
    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1215
    .line 1216
    .line 1217
    move-object/from16 v2, v18

    .line 1218
    .line 1219
    goto/16 :goto_f

    .line 1220
    .line 1221
    :cond_16
    move-object/from16 v18, v2

    .line 1222
    .line 1223
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1224
    .line 1225
    .line 1226
    goto/16 :goto_e

    .line 1227
    .line 1228
    :cond_17
    :goto_14
    return-void

    .line 1229
    :pswitch_0
    move-object/from16 v21, v3

    .line 1230
    .line 1231
    check-cast v4, Landroid/widget/FrameLayout;

    .line 1232
    .line 1233
    check-cast v2, Ly1/D0;

    .line 1234
    .line 1235
    iget-object v0, v1, LI1/j;->f:Ljava/lang/Object;

    .line 1236
    .line 1237
    check-cast v0, Landroid/view/View;

    .line 1238
    .line 1239
    if-nez v0, :cond_18

    .line 1240
    .line 1241
    goto :goto_15

    .line 1242
    :cond_18
    invoke-virtual {v2}, Ly1/D0;->invoke()Ljava/lang/Object;

    .line 1243
    .line 1244
    .line 1245
    move-result-object v3

    .line 1246
    check-cast v3, Ljava/util/Set;

    .line 1247
    .line 1248
    invoke-interface {v3}, Ljava/util/Set;->size()I

    .line 1249
    .line 1250
    .line 1251
    move-result v3

    .line 1252
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v0

    .line 1256
    check-cast v0, Landroid/widget/TextView;

    .line 1257
    .line 1258
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v5

    .line 1262
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v3

    .line 1266
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v3

    .line 1270
    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v3

    .line 1274
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1275
    .line 1276
    .line 1277
    :goto_15
    iget-object v0, v1, LI1/j;->f:Ljava/lang/Object;

    .line 1278
    .line 1279
    check-cast v0, Landroid/view/View;

    .line 1280
    .line 1281
    const-string v3, "gamepad"

    .line 1282
    .line 1283
    if-nez v0, :cond_19

    .line 1284
    .line 1285
    goto :goto_16

    .line 1286
    :cond_19
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 1287
    .line 1288
    .line 1289
    move-result v5

    .line 1290
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 1291
    .line 1292
    .line 1293
    move-result v6

    .line 1294
    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v7

    .line 1298
    const-string v8, "findViewById(...)"

    .line 1299
    .line 1300
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1301
    .line 1302
    .line 1303
    check-cast v7, Landroid/widget/TextView;

    .line 1304
    .line 1305
    iget-object v9, v1, LI1/j;->c:Ljava/lang/Object;

    .line 1306
    .line 1307
    check-cast v9, Ljava/lang/String;

    .line 1308
    .line 1309
    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1310
    .line 1311
    .line 1312
    move-result v9

    .line 1313
    invoke-virtual {v1, v7, v9, v5, v6}, LI1/j;->d(Landroid/widget/TextView;ZII)V

    .line 1314
    .line 1315
    .line 1316
    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v0

    .line 1320
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1321
    .line 1322
    .line 1323
    check-cast v0, Landroid/widget/TextView;

    .line 1324
    .line 1325
    iget-object v7, v1, LI1/j;->c:Ljava/lang/Object;

    .line 1326
    .line 1327
    check-cast v7, Ljava/lang/String;

    .line 1328
    .line 1329
    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1330
    .line 1331
    .line 1332
    move-result v7

    .line 1333
    invoke-virtual {v1, v0, v7, v5, v6}, LI1/j;->d(Landroid/widget/TextView;ZII)V

    .line 1334
    .line 1335
    .line 1336
    :goto_16
    iget-object v0, v1, LI1/j;->f:Ljava/lang/Object;

    .line 1337
    .line 1338
    check-cast v0, Landroid/view/View;

    .line 1339
    .line 1340
    if-nez v0, :cond_1a

    .line 1341
    .line 1342
    goto/16 :goto_2b

    .line 1343
    .line 1344
    :cond_1a
    const v5, 0x7f0901c4

    .line 1345
    .line 1346
    .line 1347
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1348
    .line 1349
    .line 1350
    move-result-object v0

    .line 1351
    move-object v5, v0

    .line 1352
    check-cast v5, Landroid/widget/LinearLayout;

    .line 1353
    .line 1354
    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1355
    .line 1356
    .line 1357
    invoke-virtual {v2}, Ly1/D0;->invoke()Ljava/lang/Object;

    .line 1358
    .line 1359
    .line 1360
    move-result-object v0

    .line 1361
    move-object v2, v0

    .line 1362
    check-cast v2, Ljava/util/Set;

    .line 1363
    .line 1364
    iget-object v0, v1, LI1/j;->c:Ljava/lang/Object;

    .line 1365
    .line 1366
    check-cast v0, Ljava/lang/String;

    .line 1367
    .line 1368
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1369
    .line 1370
    .line 1371
    move-result v0

    .line 1372
    const-string v6, "getString(...)"

    .line 1373
    .line 1374
    if-eqz v0, :cond_2c

    .line 1375
    .line 1376
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1377
    .line 1378
    .line 1379
    sget-object v0, LB1/t;->a:Ljava/util/List;

    .line 1380
    .line 1381
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 1382
    .line 1383
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1384
    .line 1385
    .line 1386
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1387
    .line 1388
    .line 1389
    move-result-object v0

    .line 1390
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1391
    .line 1392
    .line 1393
    move-result v8

    .line 1394
    if-eqz v8, :cond_20

    .line 1395
    .line 1396
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v8

    .line 1400
    move-object v9, v8

    .line 1401
    check-cast v9, LB1/u;

    .line 1402
    .line 1403
    iget-object v9, v9, LB1/u;->a:Ljava/lang/String;

    .line 1404
    .line 1405
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 1406
    .line 1407
    .line 1408
    move-result v10

    .line 1409
    sparse-switch v10, :sswitch_data_0

    .line 1410
    .line 1411
    .line 1412
    goto/16 :goto_18

    .line 1413
    .line 1414
    :sswitch_0
    const-string v10, "btn_mouse_left"

    .line 1415
    .line 1416
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1417
    .line 1418
    .line 1419
    move-result v9

    .line 1420
    if-nez v9, :cond_1b

    .line 1421
    .line 1422
    goto/16 :goto_18

    .line 1423
    .line 1424
    :cond_1b
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1425
    .line 1426
    .line 1427
    move-result-object v9

    .line 1428
    const v10, 0x7f120197

    .line 1429
    .line 1430
    .line 1431
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1432
    .line 1433
    .line 1434
    move-result-object v9

    .line 1435
    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1436
    .line 1437
    .line 1438
    goto/16 :goto_19

    .line 1439
    .line 1440
    :sswitch_1
    const-string v10, "gdpad"

    .line 1441
    .line 1442
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1443
    .line 1444
    .line 1445
    move-result v9

    .line 1446
    if-nez v9, :cond_1c

    .line 1447
    .line 1448
    goto :goto_18

    .line 1449
    :cond_1c
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1450
    .line 1451
    .line 1452
    move-result-object v9

    .line 1453
    const v10, 0x7f120195

    .line 1454
    .line 1455
    .line 1456
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1457
    .line 1458
    .line 1459
    move-result-object v9

    .line 1460
    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1461
    .line 1462
    .line 1463
    goto/16 :goto_19

    .line 1464
    .line 1465
    :sswitch_2
    const-string v10, "btn_y"

    .line 1466
    .line 1467
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1468
    .line 1469
    .line 1470
    move-result v9

    .line 1471
    if-nez v9, :cond_1d

    .line 1472
    .line 1473
    goto :goto_18

    .line 1474
    :sswitch_3
    const-string v10, "btn_x"

    .line 1475
    .line 1476
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1477
    .line 1478
    .line 1479
    move-result v9

    .line 1480
    if-nez v9, :cond_1d

    .line 1481
    .line 1482
    goto :goto_18

    .line 1483
    :sswitch_4
    const-string v10, "btn_b"

    .line 1484
    .line 1485
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1486
    .line 1487
    .line 1488
    move-result v9

    .line 1489
    if-nez v9, :cond_1d

    .line 1490
    .line 1491
    goto :goto_18

    .line 1492
    :sswitch_5
    const-string v10, "btn_a"

    .line 1493
    .line 1494
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1495
    .line 1496
    .line 1497
    move-result v9

    .line 1498
    if-nez v9, :cond_1d

    .line 1499
    .line 1500
    goto :goto_18

    .line 1501
    :cond_1d
    const-string v9, "A \u00b7 B \u00b7 X \u00b7 Y"

    .line 1502
    .line 1503
    goto :goto_19

    .line 1504
    :sswitch_6
    const-string v10, "btn_rt"

    .line 1505
    .line 1506
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1507
    .line 1508
    .line 1509
    move-result v9

    .line 1510
    if-nez v9, :cond_1e

    .line 1511
    .line 1512
    goto :goto_18

    .line 1513
    :sswitch_7
    const-string v10, "btn_rb"

    .line 1514
    .line 1515
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1516
    .line 1517
    .line 1518
    move-result v9

    .line 1519
    if-nez v9, :cond_1e

    .line 1520
    .line 1521
    goto :goto_18

    .line 1522
    :sswitch_8
    const-string v10, "btn_lt"

    .line 1523
    .line 1524
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1525
    .line 1526
    .line 1527
    move-result v9

    .line 1528
    if-nez v9, :cond_1e

    .line 1529
    .line 1530
    goto :goto_18

    .line 1531
    :sswitch_9
    const-string v10, "btn_lb"

    .line 1532
    .line 1533
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1534
    .line 1535
    .line 1536
    move-result v9

    .line 1537
    if-nez v9, :cond_1e

    .line 1538
    .line 1539
    :goto_18
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1540
    .line 1541
    .line 1542
    move-result-object v9

    .line 1543
    const v10, 0x7f120196

    .line 1544
    .line 1545
    .line 1546
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1547
    .line 1548
    .line 1549
    move-result-object v9

    .line 1550
    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1551
    .line 1552
    .line 1553
    goto :goto_19

    .line 1554
    :cond_1e
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1555
    .line 1556
    .line 1557
    move-result-object v9

    .line 1558
    const v10, 0x7f120198

    .line 1559
    .line 1560
    .line 1561
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1562
    .line 1563
    .line 1564
    move-result-object v9

    .line 1565
    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1566
    .line 1567
    .line 1568
    :goto_19
    invoke-virtual {v7, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1569
    .line 1570
    .line 1571
    move-result-object v10

    .line 1572
    if-nez v10, :cond_1f

    .line 1573
    .line 1574
    new-instance v10, Ljava/util/ArrayList;

    .line 1575
    .line 1576
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1577
    .line 1578
    .line 1579
    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1580
    .line 1581
    .line 1582
    :cond_1f
    check-cast v10, Ljava/util/List;

    .line 1583
    .line 1584
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1585
    .line 1586
    .line 1587
    goto/16 :goto_17

    .line 1588
    .line 1589
    :cond_20
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 1590
    .line 1591
    .line 1592
    move-result-object v0

    .line 1593
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1594
    .line 1595
    .line 1596
    move-result-object v7

    .line 1597
    :cond_21
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 1598
    .line 1599
    .line 1600
    move-result v0

    .line 1601
    if-eqz v0, :cond_2b

    .line 1602
    .line 1603
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1604
    .line 1605
    .line 1606
    move-result-object v0

    .line 1607
    check-cast v0, Ljava/util/Map$Entry;

    .line 1608
    .line 1609
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1610
    .line 1611
    .line 1612
    move-result-object v9

    .line 1613
    check-cast v9, Ljava/lang/String;

    .line 1614
    .line 1615
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1616
    .line 1617
    .line 1618
    move-result-object v0

    .line 1619
    check-cast v0, Ljava/util/List;

    .line 1620
    .line 1621
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 1622
    .line 1623
    invoke-virtual {v9, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 1624
    .line 1625
    .line 1626
    move-result-object v9

    .line 1627
    const-string v10, "toUpperCase(...)"

    .line 1628
    .line 1629
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1630
    .line 1631
    .line 1632
    new-instance v10, Landroid/widget/TextView;

    .line 1633
    .line 1634
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1635
    .line 1636
    .line 1637
    move-result-object v11

    .line 1638
    invoke-direct {v10, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1639
    .line 1640
    .line 1641
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1642
    .line 1643
    .line 1644
    const-string v9, "#7F889D"

    .line 1645
    .line 1646
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 1647
    .line 1648
    .line 1649
    move-result v9

    .line 1650
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1651
    .line 1652
    .line 1653
    const/high16 v9, 0x41100000    # 9.0f

    .line 1654
    .line 1655
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1656
    .line 1657
    .line 1658
    invoke-virtual {v10}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 1659
    .line 1660
    .line 1661
    move-result-object v11

    .line 1662
    const/4 v13, 0x1

    .line 1663
    invoke-virtual {v10, v11, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1664
    .line 1665
    .line 1666
    const v11, 0x3da3d70a    # 0.08f

    .line 1667
    .line 1668
    .line 1669
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 1670
    .line 1671
    .line 1672
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 1673
    .line 1674
    const/4 v15, -0x2

    .line 1675
    invoke-direct {v11, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1676
    .line 1677
    .line 1678
    const/16 v12, 0x8

    .line 1679
    .line 1680
    invoke-virtual {v1, v12}, LI1/j;->a(I)I

    .line 1681
    .line 1682
    .line 1683
    move-result v13

    .line 1684
    iput v13, v11, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1685
    .line 1686
    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1687
    .line 1688
    .line 1689
    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1690
    .line 1691
    .line 1692
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->g(Ljava/util/List;)Ljava/util/List;

    .line 1693
    .line 1694
    .line 1695
    move-result-object v0

    .line 1696
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1697
    .line 1698
    .line 1699
    move-result-object v10

    .line 1700
    :goto_1a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 1701
    .line 1702
    .line 1703
    move-result v0

    .line 1704
    if-eqz v0, :cond_21

    .line 1705
    .line 1706
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1707
    .line 1708
    .line 1709
    move-result-object v0

    .line 1710
    check-cast v0, Ljava/util/List;

    .line 1711
    .line 1712
    const/4 v11, 0x0

    .line 1713
    invoke-virtual {v1, v11}, LI1/j;->b(Z)Landroid/widget/LinearLayout;

    .line 1714
    .line 1715
    .line 1716
    move-result-object v12

    .line 1717
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1718
    .line 1719
    .line 1720
    move-result-object v11

    .line 1721
    :goto_1b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 1722
    .line 1723
    .line 1724
    move-result v0

    .line 1725
    if-eqz v0, :cond_2a

    .line 1726
    .line 1727
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1728
    .line 1729
    .line 1730
    move-result-object v0

    .line 1731
    move-object v13, v0

    .line 1732
    check-cast v13, LB1/u;

    .line 1733
    .line 1734
    iget-object v0, v13, LB1/u;->a:Ljava/lang/String;

    .line 1735
    .line 1736
    iget-object v14, v13, LB1/u;->b:Ljava/lang/String;

    .line 1737
    .line 1738
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1739
    .line 1740
    .line 1741
    move-result v15

    .line 1742
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 1743
    .line 1744
    .line 1745
    move-result v9

    .line 1746
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 1747
    .line 1748
    iget-object v0, v13, LB1/u;->k:Ljava/lang/String;

    .line 1749
    .line 1750
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 1751
    .line 1752
    .line 1753
    move-result v0

    .line 1754
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1755
    .line 1756
    .line 1757
    move-result-object v0

    .line 1758
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1759
    .line 1760
    .line 1761
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1762
    goto :goto_1c

    .line 1763
    :catchall_0
    move-exception v0

    .line 1764
    sget-object v20, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 1765
    .line 1766
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 1767
    .line 1768
    .line 1769
    move-result-object v0

    .line 1770
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1771
    .line 1772
    .line 1773
    move-result-object v0

    .line 1774
    :goto_1c
    const v20, -0x777778

    .line 1775
    .line 1776
    .line 1777
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1778
    .line 1779
    .line 1780
    move-result-object v20

    .line 1781
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 1782
    .line 1783
    .line 1784
    move-result v22

    .line 1785
    if-eqz v22, :cond_22

    .line 1786
    .line 1787
    move-object/from16 v0, v20

    .line 1788
    .line 1789
    :cond_22
    check-cast v0, Ljava/lang/Number;

    .line 1790
    .line 1791
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 1792
    .line 1793
    .line 1794
    move-result v0

    .line 1795
    new-instance v3, Landroid/widget/LinearLayout;

    .line 1796
    .line 1797
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1798
    .line 1799
    .line 1800
    move-result-object v8

    .line 1801
    invoke-direct {v3, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1802
    .line 1803
    .line 1804
    const/4 v8, 0x1

    .line 1805
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1806
    .line 1807
    .line 1808
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1809
    .line 1810
    .line 1811
    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    .line 1812
    .line 1813
    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1814
    .line 1815
    .line 1816
    move-object/from16 v23, v4

    .line 1817
    .line 1818
    const/4 v4, 0x0

    .line 1819
    invoke-virtual {v8, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1820
    .line 1821
    .line 1822
    move/from16 v24, v0

    .line 1823
    .line 1824
    const/16 v4, 0xc

    .line 1825
    .line 1826
    invoke-virtual {v1, v4}, LI1/j;->a(I)I

    .line 1827
    .line 1828
    .line 1829
    move-result v0

    .line 1830
    int-to-float v0, v0

    .line 1831
    invoke-virtual {v8, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1832
    .line 1833
    .line 1834
    if-eqz v15, :cond_23

    .line 1835
    .line 1836
    const-string v0, "#14FF424D"

    .line 1837
    .line 1838
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 1839
    .line 1840
    .line 1841
    move-result v0

    .line 1842
    goto :goto_1d

    .line 1843
    :cond_23
    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 1844
    .line 1845
    .line 1846
    move-result v0

    .line 1847
    :goto_1d
    invoke-virtual {v8, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1848
    .line 1849
    .line 1850
    const/4 v4, 0x2

    .line 1851
    invoke-virtual {v1, v4}, LI1/j;->a(I)I

    .line 1852
    .line 1853
    .line 1854
    move-result v0

    .line 1855
    if-eqz v15, :cond_24

    .line 1856
    .line 1857
    move v4, v9

    .line 1858
    goto :goto_1e

    .line 1859
    :cond_24
    const-string v4, "#273244"

    .line 1860
    .line 1861
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 1862
    .line 1863
    .line 1864
    move-result v4

    .line 1865
    :goto_1e
    invoke-virtual {v8, v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1866
    .line 1867
    .line 1868
    invoke-virtual {v3, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1869
    .line 1870
    .line 1871
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1872
    .line 1873
    const/16 v4, 0x48

    .line 1874
    .line 1875
    invoke-virtual {v1, v4}, LI1/j;->a(I)I

    .line 1876
    .line 1877
    .line 1878
    move-result v4

    .line 1879
    const/4 v8, -0x2

    .line 1880
    invoke-direct {v0, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1881
    .line 1882
    .line 1883
    const/16 v4, 0x8

    .line 1884
    .line 1885
    invoke-virtual {v1, v4}, LI1/j;->a(I)I

    .line 1886
    .line 1887
    .line 1888
    move-result v8

    .line 1889
    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1890
    .line 1891
    invoke-virtual {v1, v4}, LI1/j;->a(I)I

    .line 1892
    .line 1893
    .line 1894
    move-result v8

    .line 1895
    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1896
    .line 1897
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1898
    .line 1899
    .line 1900
    invoke-virtual {v1, v4}, LI1/j;->a(I)I

    .line 1901
    .line 1902
    .line 1903
    move-result v0

    .line 1904
    move-object/from16 v25, v7

    .line 1905
    .line 1906
    const/16 v8, 0xa

    .line 1907
    .line 1908
    invoke-virtual {v1, v8}, LI1/j;->a(I)I

    .line 1909
    .line 1910
    .line 1911
    move-result v7

    .line 1912
    invoke-virtual {v1, v4}, LI1/j;->a(I)I

    .line 1913
    .line 1914
    .line 1915
    move-result v8

    .line 1916
    move-object/from16 v26, v10

    .line 1917
    .line 1918
    invoke-virtual {v1, v4}, LI1/j;->a(I)I

    .line 1919
    .line 1920
    .line 1921
    move-result v10

    .line 1922
    invoke-virtual {v3, v0, v7, v8, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 1923
    .line 1924
    .line 1925
    new-instance v0, LC1/j;

    .line 1926
    .line 1927
    const/16 v4, 0x1d

    .line 1928
    .line 1929
    invoke-direct {v0, v4, v1, v13}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1930
    .line 1931
    .line 1932
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1933
    .line 1934
    .line 1935
    new-instance v0, Landroid/widget/TextView;

    .line 1936
    .line 1937
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1938
    .line 1939
    .line 1940
    move-result-object v4

    .line 1941
    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1942
    .line 1943
    .line 1944
    const/4 v4, 0x3

    .line 1945
    invoke-static {v14, v4}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 1946
    .line 1947
    .line 1948
    move-result-object v7

    .line 1949
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1950
    .line 1951
    .line 1952
    const/16 v4, 0x11

    .line 1953
    .line 1954
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 1955
    .line 1956
    .line 1957
    const/4 v8, -0x1

    .line 1958
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1959
    .line 1960
    .line 1961
    const/high16 v4, 0x41200000    # 10.0f

    .line 1962
    .line 1963
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1964
    .line 1965
    .line 1966
    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 1967
    .line 1968
    .line 1969
    move-result-object v4

    .line 1970
    const/4 v7, 0x1

    .line 1971
    invoke-virtual {v0, v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1972
    .line 1973
    .line 1974
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    .line 1975
    .line 1976
    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1977
    .line 1978
    .line 1979
    const/4 v8, 0x0

    .line 1980
    invoke-virtual {v4, v8}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1981
    .line 1982
    .line 1983
    iget-object v7, v13, LB1/u;->l:Ljava/lang/String;

    .line 1984
    .line 1985
    const-string v8, "CIRCLE"

    .line 1986
    .line 1987
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1988
    .line 1989
    .line 1990
    move-result v7

    .line 1991
    if-eqz v7, :cond_25

    .line 1992
    .line 1993
    const/16 v7, 0x12

    .line 1994
    .line 1995
    :goto_1f
    invoke-virtual {v1, v7}, LI1/j;->a(I)I

    .line 1996
    .line 1997
    .line 1998
    move-result v7

    .line 1999
    int-to-float v7, v7

    .line 2000
    goto :goto_20

    .line 2001
    :cond_25
    const/16 v7, 0x9

    .line 2002
    .line 2003
    goto :goto_1f

    .line 2004
    :goto_20
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 2005
    .line 2006
    .line 2007
    if-eqz v15, :cond_26

    .line 2008
    .line 2009
    move v7, v9

    .line 2010
    goto :goto_21

    .line 2011
    :cond_26
    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->red(I)I

    .line 2012
    .line 2013
    .line 2014
    move-result v7

    .line 2015
    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->green(I)I

    .line 2016
    .line 2017
    .line 2018
    move-result v8

    .line 2019
    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->blue(I)I

    .line 2020
    .line 2021
    .line 2022
    move-result v10

    .line 2023
    const/16 v13, 0x55

    .line 2024
    .line 2025
    invoke-static {v13, v7, v8, v10}, Landroid/graphics/Color;->argb(IIII)I

    .line 2026
    .line 2027
    .line 2028
    move-result v7

    .line 2029
    :goto_21
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2030
    .line 2031
    .line 2032
    const/4 v7, 0x2

    .line 2033
    invoke-virtual {v1, v7}, LI1/j;->a(I)I

    .line 2034
    .line 2035
    .line 2036
    move-result v8

    .line 2037
    if-eqz v15, :cond_27

    .line 2038
    .line 2039
    move v7, v9

    .line 2040
    move-object/from16 v24, v11

    .line 2041
    .line 2042
    goto :goto_22

    .line 2043
    :cond_27
    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->red(I)I

    .line 2044
    .line 2045
    .line 2046
    move-result v7

    .line 2047
    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->green(I)I

    .line 2048
    .line 2049
    .line 2050
    move-result v10

    .line 2051
    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->blue(I)I

    .line 2052
    .line 2053
    .line 2054
    move-result v13

    .line 2055
    move-object/from16 v24, v11

    .line 2056
    .line 2057
    const/16 v11, 0x88

    .line 2058
    .line 2059
    invoke-static {v11, v7, v10, v13}, Landroid/graphics/Color;->argb(IIII)I

    .line 2060
    .line 2061
    .line 2062
    move-result v7

    .line 2063
    :goto_22
    invoke-virtual {v4, v8, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 2064
    .line 2065
    .line 2066
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2067
    .line 2068
    .line 2069
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 2070
    .line 2071
    const/16 v7, 0x26

    .line 2072
    .line 2073
    invoke-virtual {v1, v7}, LI1/j;->a(I)I

    .line 2074
    .line 2075
    .line 2076
    move-result v8

    .line 2077
    invoke-virtual {v1, v7}, LI1/j;->a(I)I

    .line 2078
    .line 2079
    .line 2080
    move-result v7

    .line 2081
    invoke-direct {v4, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2082
    .line 2083
    .line 2084
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2085
    .line 2086
    .line 2087
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2088
    .line 2089
    .line 2090
    new-instance v0, Landroid/widget/TextView;

    .line 2091
    .line 2092
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2093
    .line 2094
    .line 2095
    move-result-object v4

    .line 2096
    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2097
    .line 2098
    .line 2099
    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2100
    .line 2101
    .line 2102
    const/16 v4, 0x11

    .line 2103
    .line 2104
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 2105
    .line 2106
    .line 2107
    if-eqz v15, :cond_28

    .line 2108
    .line 2109
    move v4, v9

    .line 2110
    goto :goto_23

    .line 2111
    :cond_28
    const-string v4, "#95A0B6"

    .line 2112
    .line 2113
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 2114
    .line 2115
    .line 2116
    move-result v4

    .line 2117
    :goto_23
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2118
    .line 2119
    .line 2120
    const/high16 v4, 0x41100000    # 9.0f

    .line 2121
    .line 2122
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2123
    .line 2124
    .line 2125
    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 2126
    .line 2127
    .line 2128
    move-result-object v7

    .line 2129
    const/4 v13, 0x1

    .line 2130
    invoke-virtual {v0, v7, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 2131
    .line 2132
    .line 2133
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 2134
    .line 2135
    const/4 v8, -0x1

    .line 2136
    const/4 v10, -0x2

    .line 2137
    invoke-direct {v7, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2138
    .line 2139
    .line 2140
    const/4 v8, 0x6

    .line 2141
    invoke-virtual {v1, v8}, LI1/j;->a(I)I

    .line 2142
    .line 2143
    .line 2144
    move-result v10

    .line 2145
    iput v10, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2146
    .line 2147
    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2148
    .line 2149
    .line 2150
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2151
    .line 2152
    .line 2153
    new-instance v0, Landroid/view/View;

    .line 2154
    .line 2155
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2156
    .line 2157
    .line 2158
    move-result-object v7

    .line 2159
    invoke-direct {v0, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2160
    .line 2161
    .line 2162
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    .line 2163
    .line 2164
    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 2165
    .line 2166
    .line 2167
    const/4 v13, 0x1

    .line 2168
    invoke-virtual {v7, v13}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 2169
    .line 2170
    .line 2171
    invoke-virtual {v7, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2172
    .line 2173
    .line 2174
    invoke-virtual {v0, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2175
    .line 2176
    .line 2177
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 2178
    .line 2179
    const/4 v8, 0x6

    .line 2180
    invoke-virtual {v1, v8}, LI1/j;->a(I)I

    .line 2181
    .line 2182
    .line 2183
    move-result v9

    .line 2184
    invoke-virtual {v1, v8}, LI1/j;->a(I)I

    .line 2185
    .line 2186
    .line 2187
    move-result v10

    .line 2188
    invoke-direct {v7, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2189
    .line 2190
    .line 2191
    invoke-virtual {v1, v8}, LI1/j;->a(I)I

    .line 2192
    .line 2193
    .line 2194
    move-result v9

    .line 2195
    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2196
    .line 2197
    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2198
    .line 2199
    .line 2200
    if-eqz v15, :cond_29

    .line 2201
    .line 2202
    const/4 v7, 0x0

    .line 2203
    goto :goto_24

    .line 2204
    :cond_29
    const/4 v7, 0x4

    .line 2205
    :goto_24
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2206
    .line 2207
    .line 2208
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2209
    .line 2210
    .line 2211
    invoke-virtual {v12, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2212
    .line 2213
    .line 2214
    move v9, v4

    .line 2215
    move-object/from16 v4, v23

    .line 2216
    .line 2217
    move-object/from16 v11, v24

    .line 2218
    .line 2219
    move-object/from16 v7, v25

    .line 2220
    .line 2221
    move-object/from16 v10, v26

    .line 2222
    .line 2223
    goto/16 :goto_1b

    .line 2224
    .line 2225
    :cond_2a
    move-object/from16 v23, v4

    .line 2226
    .line 2227
    move-object/from16 v25, v7

    .line 2228
    .line 2229
    move v4, v9

    .line 2230
    move-object/from16 v26, v10

    .line 2231
    .line 2232
    invoke-virtual {v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2233
    .line 2234
    .line 2235
    move-object/from16 v4, v23

    .line 2236
    .line 2237
    goto/16 :goto_1a

    .line 2238
    .line 2239
    :cond_2b
    move-object/from16 v23, v4

    .line 2240
    .line 2241
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2242
    .line 2243
    .line 2244
    move-result-object v0

    .line 2245
    const v2, 0x7f120190

    .line 2246
    .line 2247
    .line 2248
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 2249
    .line 2250
    .line 2251
    move-result-object v0

    .line 2252
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2253
    .line 2254
    .line 2255
    new-instance v2, Landroid/widget/LinearLayout;

    .line 2256
    .line 2257
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2258
    .line 2259
    .line 2260
    move-result-object v3

    .line 2261
    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2262
    .line 2263
    .line 2264
    const/4 v13, 0x1

    .line 2265
    invoke-virtual {v2, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2266
    .line 2267
    .line 2268
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 2269
    .line 2270
    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 2271
    .line 2272
    .line 2273
    const/4 v8, 0x0

    .line 2274
    invoke-virtual {v3, v8}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 2275
    .line 2276
    .line 2277
    const/16 v4, 0xc

    .line 2278
    .line 2279
    invoke-virtual {v1, v4}, LI1/j;->a(I)I

    .line 2280
    .line 2281
    .line 2282
    move-result v6

    .line 2283
    int-to-float v6, v6

    .line 2284
    invoke-virtual {v3, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 2285
    .line 2286
    .line 2287
    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 2288
    .line 2289
    .line 2290
    move-result v6

    .line 2291
    invoke-virtual {v3, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2292
    .line 2293
    .line 2294
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2295
    .line 2296
    .line 2297
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 2298
    .line 2299
    const/4 v8, -0x1

    .line 2300
    const/4 v15, -0x2

    .line 2301
    invoke-direct {v3, v8, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2302
    .line 2303
    .line 2304
    const/4 v9, 0x4

    .line 2305
    invoke-virtual {v1, v9}, LI1/j;->a(I)I

    .line 2306
    .line 2307
    .line 2308
    move-result v6

    .line 2309
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2310
    .line 2311
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2312
    .line 2313
    .line 2314
    invoke-virtual {v1, v4}, LI1/j;->a(I)I

    .line 2315
    .line 2316
    .line 2317
    move-result v3

    .line 2318
    invoke-virtual {v1, v4}, LI1/j;->a(I)I

    .line 2319
    .line 2320
    .line 2321
    move-result v6

    .line 2322
    invoke-virtual {v1, v4}, LI1/j;->a(I)I

    .line 2323
    .line 2324
    .line 2325
    move-result v7

    .line 2326
    invoke-virtual {v1, v4}, LI1/j;->a(I)I

    .line 2327
    .line 2328
    .line 2329
    move-result v4

    .line 2330
    invoke-virtual {v2, v3, v6, v7, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 2331
    .line 2332
    .line 2333
    new-instance v3, Landroid/widget/TextView;

    .line 2334
    .line 2335
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2336
    .line 2337
    .line 2338
    move-result-object v4

    .line 2339
    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2340
    .line 2341
    .line 2342
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2343
    .line 2344
    .line 2345
    const-string v0, "#A7AFBF"

    .line 2346
    .line 2347
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 2348
    .line 2349
    .line 2350
    move-result v0

    .line 2351
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2352
    .line 2353
    .line 2354
    const/high16 v4, 0x41200000    # 10.0f

    .line 2355
    .line 2356
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2357
    .line 2358
    .line 2359
    const/4 v0, 0x0

    .line 2360
    const v4, 0x3f99999a    # 1.2f

    .line 2361
    .line 2362
    .line 2363
    invoke-virtual {v3, v0, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 2364
    .line 2365
    .line 2366
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2367
    .line 2368
    .line 2369
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2370
    .line 2371
    .line 2372
    goto/16 :goto_2b

    .line 2373
    .line 2374
    :cond_2c
    move-object/from16 v23, v4

    .line 2375
    .line 2376
    const/4 v8, -0x1

    .line 2377
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2378
    .line 2379
    .line 2380
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2381
    .line 2382
    .line 2383
    move-result-object v0

    .line 2384
    const v3, 0x7f120187

    .line 2385
    .line 2386
    .line 2387
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 2388
    .line 2389
    .line 2390
    move-result-object v0

    .line 2391
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2392
    .line 2393
    .line 2394
    new-instance v3, Landroid/widget/TextView;

    .line 2395
    .line 2396
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2397
    .line 2398
    .line 2399
    move-result-object v4

    .line 2400
    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2401
    .line 2402
    .line 2403
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2404
    .line 2405
    .line 2406
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 2407
    .line 2408
    .line 2409
    move-result v0

    .line 2410
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2411
    .line 2412
    .line 2413
    const/high16 v4, 0x41200000    # 10.0f

    .line 2414
    .line 2415
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2416
    .line 2417
    .line 2418
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2419
    .line 2420
    const/4 v15, -0x2

    .line 2421
    invoke-direct {v0, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2422
    .line 2423
    .line 2424
    const/16 v6, 0xa

    .line 2425
    .line 2426
    invoke-virtual {v1, v6}, LI1/j;->a(I)I

    .line 2427
    .line 2428
    .line 2429
    move-result v6

    .line 2430
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 2431
    .line 2432
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2433
    .line 2434
    .line 2435
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2436
    .line 2437
    .line 2438
    sget-object v0, LB1/i;->d:Ljava/util/ArrayList;

    .line 2439
    .line 2440
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 2441
    .line 2442
    .line 2443
    move-result v3

    .line 2444
    const/4 v6, 0x0

    .line 2445
    :goto_25
    if-ge v6, v3, :cond_33

    .line 2446
    .line 2447
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2448
    .line 2449
    .line 2450
    move-result-object v7

    .line 2451
    add-int/lit8 v6, v6, 0x1

    .line 2452
    .line 2453
    check-cast v7, Ljava/util/List;

    .line 2454
    .line 2455
    const/4 v13, 0x1

    .line 2456
    invoke-virtual {v1, v13}, LI1/j;->b(Z)Landroid/widget/LinearLayout;

    .line 2457
    .line 2458
    .line 2459
    move-result-object v9

    .line 2460
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2461
    .line 2462
    .line 2463
    move-result-object v7

    .line 2464
    :goto_26
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 2465
    .line 2466
    .line 2467
    move-result v10

    .line 2468
    if-eqz v10, :cond_32

    .line 2469
    .line 2470
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2471
    .line 2472
    .line 2473
    move-result-object v10

    .line 2474
    check-cast v10, LB1/x;

    .line 2475
    .line 2476
    iget-object v11, v10, LB1/x;->a:Ljava/lang/String;

    .line 2477
    .line 2478
    invoke-interface {v2, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 2479
    .line 2480
    .line 2481
    move-result v11

    .line 2482
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 2483
    .line 2484
    .line 2485
    move-result v13

    .line 2486
    new-instance v14, Landroid/widget/TextView;

    .line 2487
    .line 2488
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2489
    .line 2490
    .line 2491
    move-result-object v15

    .line 2492
    invoke-direct {v14, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2493
    .line 2494
    .line 2495
    iget-object v15, v10, LB1/x;->b:Ljava/lang/String;

    .line 2496
    .line 2497
    iget v4, v10, LB1/x;->g:I

    .line 2498
    .line 2499
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2500
    .line 2501
    .line 2502
    const/16 v8, 0x11

    .line 2503
    .line 2504
    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 2505
    .line 2506
    .line 2507
    if-eqz v11, :cond_2d

    .line 2508
    .line 2509
    const/4 v8, -0x1

    .line 2510
    goto :goto_27

    .line 2511
    :cond_2d
    const-string v17, "#B3BACC"

    .line 2512
    .line 2513
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 2514
    .line 2515
    .line 2516
    move-result v17

    .line 2517
    move/from16 v8, v17

    .line 2518
    .line 2519
    :goto_27
    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2520
    .line 2521
    .line 2522
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 2523
    .line 2524
    .line 2525
    move-result v8

    .line 2526
    move-object/from16 v17, v2

    .line 2527
    .line 2528
    const/16 v2, 0x8

    .line 2529
    .line 2530
    if-le v8, v2, :cond_2e

    .line 2531
    .line 2532
    const/high16 v8, 0x40e00000    # 7.0f

    .line 2533
    .line 2534
    const/4 v15, 0x3

    .line 2535
    goto :goto_28

    .line 2536
    :cond_2e
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 2537
    .line 2538
    .line 2539
    move-result v8

    .line 2540
    const/4 v15, 0x3

    .line 2541
    if-le v8, v15, :cond_2f

    .line 2542
    .line 2543
    const/high16 v8, 0x41000000    # 8.0f

    .line 2544
    .line 2545
    goto :goto_28

    .line 2546
    :cond_2f
    const/high16 v8, 0x41200000    # 10.0f

    .line 2547
    .line 2548
    :goto_28
    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2549
    .line 2550
    .line 2551
    sget-object v8, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 2552
    .line 2553
    const/4 v2, 0x1

    .line 2554
    invoke-virtual {v14, v8, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 2555
    .line 2556
    .line 2557
    iget v8, v10, LB1/x;->f:I

    .line 2558
    .line 2559
    invoke-virtual {v1, v8}, LI1/j;->a(I)I

    .line 2560
    .line 2561
    .line 2562
    move-result v8

    .line 2563
    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 2564
    .line 2565
    .line 2566
    invoke-virtual {v1, v4}, LI1/j;->a(I)I

    .line 2567
    .line 2568
    .line 2569
    move-result v8

    .line 2570
    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setHeight(I)V

    .line 2571
    .line 2572
    .line 2573
    const/4 v8, 0x6

    .line 2574
    invoke-virtual {v1, v8}, LI1/j;->a(I)I

    .line 2575
    .line 2576
    .line 2577
    move-result v2

    .line 2578
    invoke-virtual {v1, v8}, LI1/j;->a(I)I

    .line 2579
    .line 2580
    .line 2581
    move-result v15

    .line 2582
    const/4 v8, 0x0

    .line 2583
    invoke-virtual {v14, v2, v8, v15, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2584
    .line 2585
    .line 2586
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    .line 2587
    .line 2588
    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 2589
    .line 2590
    .line 2591
    invoke-virtual {v2, v8}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 2592
    .line 2593
    .line 2594
    const/4 v8, 0x6

    .line 2595
    invoke-virtual {v1, v8}, LI1/j;->a(I)I

    .line 2596
    .line 2597
    .line 2598
    move-result v15

    .line 2599
    int-to-float v15, v15

    .line 2600
    invoke-virtual {v2, v15}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 2601
    .line 2602
    .line 2603
    if-eqz v11, :cond_30

    .line 2604
    .line 2605
    move v15, v13

    .line 2606
    goto :goto_29

    .line 2607
    :cond_30
    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 2608
    .line 2609
    .line 2610
    move-result v15

    .line 2611
    :goto_29
    invoke-virtual {v2, v15}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2612
    .line 2613
    .line 2614
    const/4 v15, 0x2

    .line 2615
    invoke-virtual {v1, v15}, LI1/j;->a(I)I

    .line 2616
    .line 2617
    .line 2618
    move-result v8

    .line 2619
    if-eqz v11, :cond_31

    .line 2620
    .line 2621
    goto :goto_2a

    .line 2622
    :cond_31
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 2623
    .line 2624
    .line 2625
    move-result v13

    .line 2626
    :goto_2a
    invoke-virtual {v2, v8, v13}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 2627
    .line 2628
    .line 2629
    invoke-virtual {v14, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2630
    .line 2631
    .line 2632
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 2633
    .line 2634
    invoke-virtual {v1, v4}, LI1/j;->a(I)I

    .line 2635
    .line 2636
    .line 2637
    move-result v4

    .line 2638
    const/4 v8, -0x2

    .line 2639
    invoke-direct {v2, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2640
    .line 2641
    .line 2642
    const/4 v4, 0x4

    .line 2643
    invoke-virtual {v1, v4}, LI1/j;->a(I)I

    .line 2644
    .line 2645
    .line 2646
    move-result v11

    .line 2647
    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 2648
    .line 2649
    invoke-virtual {v1, v4}, LI1/j;->a(I)I

    .line 2650
    .line 2651
    .line 2652
    move-result v11

    .line 2653
    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 2654
    .line 2655
    invoke-virtual {v14, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2656
    .line 2657
    .line 2658
    new-instance v2, Ly1/M0;

    .line 2659
    .line 2660
    const/4 v11, 0x0

    .line 2661
    invoke-direct {v2, v11, v1, v10}, Ly1/M0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2662
    .line 2663
    .line 2664
    invoke-virtual {v14, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2665
    .line 2666
    .line 2667
    invoke-virtual {v9, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2668
    .line 2669
    .line 2670
    move-object/from16 v2, v17

    .line 2671
    .line 2672
    const/high16 v4, 0x41200000    # 10.0f

    .line 2673
    .line 2674
    const/4 v8, -0x1

    .line 2675
    goto/16 :goto_26

    .line 2676
    .line 2677
    :cond_32
    move-object/from16 v17, v2

    .line 2678
    .line 2679
    const/4 v4, 0x4

    .line 2680
    const/4 v8, -0x2

    .line 2681
    const/4 v11, 0x0

    .line 2682
    const/4 v15, 0x2

    .line 2683
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2684
    .line 2685
    .line 2686
    const/high16 v4, 0x41200000    # 10.0f

    .line 2687
    .line 2688
    const/4 v8, -0x1

    .line 2689
    goto/16 :goto_25

    .line 2690
    .line 2691
    :cond_33
    :goto_2b
    return-void

    .line 2692
    nop

    .line 2693
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch

    .line 2694
    .line 2695
    .line 2696
    .line 2697
    .line 2698
    .line 2699
    :sswitch_data_0
    .sparse-switch
        -0x522ef9c7 -> :sswitch_9
        -0x522ef9b5 -> :sswitch_8
        -0x522ef90d -> :sswitch_7
        -0x522ef8fb -> :sswitch_6
        0x59b633e -> :sswitch_5
        0x59b633f -> :sswitch_4
        0x59b6355 -> :sswitch_3
        0x59b6356 -> :sswitch_2
        0x5da9a96 -> :sswitch_1
        0x5587c124 -> :sswitch_0
    .end sparse-switch
.end method

.method public d(Landroid/widget/TextView;ZII)V
    .locals 1

    .line 1
    iget v0, p0, LI1/j;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move p3, p4

    .line 10
    :goto_0
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    .line 12
    .line 13
    new-instance p3, Landroid/graphics/drawable/GradientDrawable;

    .line 14
    .line 15
    invoke-direct {p3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 p4, 0x0

    .line 19
    invoke-virtual {p3, p4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 20
    .line 21
    .line 22
    const/16 v0, 0xa

    .line 23
    .line 24
    invoke-virtual {p0, v0}, LI1/j;->a(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    int-to-float v0, v0

    .line 29
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 30
    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    const-string p4, "#14FF424D"

    .line 35
    .line 36
    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result p4

    .line 40
    :cond_1
    invoke-virtual {p3, p4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 41
    .line 42
    .line 43
    const/4 p4, 0x1

    .line 44
    invoke-virtual {p0, p4}, LI1/j;->a(I)I

    .line 45
    .line 46
    .line 47
    move-result p4

    .line 48
    if-eqz p2, :cond_2

    .line 49
    .line 50
    const-string p2, "#52FF424D"

    .line 51
    .line 52
    :goto_1
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    const-string p2, "#243041"

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :goto_2
    invoke-virtual {p3, p4, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_0
    if-eqz p2, :cond_3

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_3
    move p3, p4

    .line 71
    :goto_3
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    .line 73
    .line 74
    new-instance p3, Landroid/graphics/drawable/GradientDrawable;

    .line 75
    .line 76
    invoke-direct {p3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 77
    .line 78
    .line 79
    const/4 p4, 0x0

    .line 80
    invoke-virtual {p3, p4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 81
    .line 82
    .line 83
    const/16 v0, 0xa

    .line 84
    .line 85
    invoke-virtual {p0, v0}, LI1/j;->a(I)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    int-to-float v0, v0

    .line 90
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 91
    .line 92
    .line 93
    if-eqz p2, :cond_4

    .line 94
    .line 95
    const-string p4, "#14FF424D"

    .line 96
    .line 97
    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result p4

    .line 101
    :cond_4
    invoke-virtual {p3, p4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 102
    .line 103
    .line 104
    const/4 p4, 0x1

    .line 105
    invoke-virtual {p0, p4}, LI1/j;->a(I)I

    .line 106
    .line 107
    .line 108
    move-result p4

    .line 109
    if-eqz p2, :cond_5

    .line 110
    .line 111
    const-string p2, "#52FF424D"

    .line 112
    .line 113
    :goto_4
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    goto :goto_5

    .line 118
    :cond_5
    const-string p2, "#243041"

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :goto_5
    invoke-virtual {p3, p4, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    nop

    .line 129
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
