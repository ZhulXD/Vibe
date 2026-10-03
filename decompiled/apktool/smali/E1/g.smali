.class public final LE1/g;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "LE1/g;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGamepadSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GamepadSettingsFragment.kt\ncom/minhub/gamehub/hub/settings/GamepadSettingsFragment\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,534:1\n3856#2:535\n4374#2,2:536\n1#3:538\n1#3:556\n1869#4,2:539\n1878#4,3:541\n295#4,2:544\n1617#4,9:546\n1869#4:555\n1870#4:557\n1626#4:558\n2746#4,3:559\n1878#4,3:562\n1878#4,3:565\n1563#4:568\n1634#4,3:569\n1563#4:572\n1634#4,3:573\n*S KotlinDebug\n*F\n+ 1 GamepadSettingsFragment.kt\ncom/minhub/gamehub/hub/settings/GamepadSettingsFragment\n*L\n102#1:535\n102#1:536,2\n246#1:556\n128#1:539,2\n166#1:541,3\n227#1:544,2\n246#1:546,9\n246#1:555\n246#1:557\n246#1:558\n250#1:559,3\n317#1:562,3\n412#1:565,3\n450#1:568\n450#1:569,3\n462#1:572\n462#1:573,3\n*E\n"
    }
.end annotation


# instance fields
.field public b:Lw1/c;

.field public c:LB1/z;

.field public final d:Ljava/util/ArrayList;

.field public e:Ljava/lang/String;

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LE1/g;->d:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p0, LE1/g;->f:I

    .line 13
    .line 14
    return-void
.end method

.method public static g(LH0/o;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, LH0/o;->setContentView(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const v0, 0x106000d

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    new-instance p1, LC1/L;

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    invoke-direct {p1, p0, v0}, LC1/L;-><init>(LH0/o;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;)Landroid/widget/LinearLayout;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "requireContext(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 19
    .line 20
    new-instance v2, Landroid/widget/LinearLayout;

    .line 21
    .line 22
    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 27
    .line 28
    .line 29
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 30
    .line 31
    const/4 v5, -0x2

    .line 32
    const/high16 v6, 0x3f800000    # 1.0f

    .line 33
    .line 34
    const/4 v7, 0x0

    .line 35
    invoke-direct {v4, v7, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    .line 43
    .line 44
    const/16 p3, 0xa

    .line 45
    .line 46
    int-to-float p3, p3

    .line 47
    mul-float/2addr p3, v1

    .line 48
    float-to-int v1, p3

    .line 49
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    .line 53
    .line 54
    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 61
    .line 62
    .line 63
    const-string p3, "#212734"

    .line 64
    .line 65
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result p3

    .line 69
    invoke-virtual {v1, p3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 73
    .line 74
    .line 75
    new-instance p3, LC1/t1;

    .line 76
    .line 77
    const/4 v1, 0x1

    .line 78
    invoke-direct {p3, v1, p4}, LC1/t1;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    .line 83
    .line 84
    new-instance p3, Landroid/widget/TextView;

    .line 85
    .line 86
    invoke-direct {p3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    const/high16 p1, 0x41100000    # 9.0f

    .line 93
    .line 94
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 95
    .line 96
    .line 97
    const-string p1, "#8888A4"

    .line 98
    .line 99
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 107
    .line 108
    .line 109
    new-instance p1, Landroid/widget/TextView;

    .line 110
    .line 111
    invoke-direct {p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    const/high16 p2, 0x41400000    # 12.0f

    .line 118
    .line 119
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 120
    .line 121
    .line 122
    const-string p2, "#F0F0F6"

    .line 123
    .line 124
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    .line 130
    .line 131
    const/4 p2, 0x0

    .line 132
    invoke-virtual {p1, p2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 133
    .line 134
    .line 135
    const/4 p2, 0x0

    .line 136
    const p3, 0x3f99999a    # 1.2f

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, p2, p3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 143
    .line 144
    .line 145
    return-object v2
.end method

.method public final c()V
    .locals 9

    .line 1
    iget-object v0, p0, LE1/g;->c:LB1/z;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "mappingManager"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    iget-object v3, p0, LE1/g;->c:LB1/z;

    .line 13
    .line 14
    if-nez v3, :cond_1

    .line 15
    .line 16
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move-object v1, v3

    .line 21
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const-string v1, "rows"

    .line 25
    .line 26
    iget-object v2, p0, LE1/g;->d:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v2}, LB1/z;->f(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    new-instance v2, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    const/4 v4, 0x0

    .line 45
    move v5, v4

    .line 46
    :cond_2
    :goto_1
    if-ge v5, v3, :cond_5

    .line 47
    .line 48
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    add-int/lit8 v5, v5, 0x1

    .line 53
    .line 54
    move-object v7, v6

    .line 55
    check-cast v7, LB1/A;

    .line 56
    .line 57
    iget-object v8, v7, LB1/A;->b:Ljava/lang/String;

    .line 58
    .line 59
    if-eqz v8, :cond_2

    .line 60
    .line 61
    invoke-static {v8}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    if-eqz v8, :cond_3

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    iget-object v7, v7, LB1/A;->c:Ljava/lang/String;

    .line 69
    .line 70
    if-eqz v7, :cond_2

    .line 71
    .line 72
    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-eqz v7, :cond_4

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_5
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 84
    .line 85
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    :goto_2
    if-ge v4, v3, :cond_6

    .line 93
    .line 94
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    add-int/lit8 v4, v4, 0x1

    .line 99
    .line 100
    check-cast v5, LB1/A;

    .line 101
    .line 102
    iget-object v6, v5, LB1/A;->c:Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    iget-object v5, v5, LB1/A;->b:Ljava/lang/String;

    .line 108
    .line 109
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_6
    invoke-virtual {v0, v1}, LB1/z;->h(Ljava/util/LinkedHashMap;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public final d()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "requireContext(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 21
    .line 22
    iget-object v3, v0, LE1/g;->b:Lw1/c;

    .line 23
    .line 24
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object v3, v3, Lw1/c;->d:Landroid/widget/LinearLayout;

    .line 28
    .line 29
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const-string v4, "getDeviceIds(...)"

    .line 37
    .line 38
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v4, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    array-length v5, v3

    .line 47
    const/4 v6, 0x0

    .line 48
    move v7, v6

    .line 49
    :goto_0
    if-ge v7, v5, :cond_3

    .line 50
    .line 51
    aget v8, v3, v7

    .line 52
    .line 53
    invoke-static {v8}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    if-nez v9, :cond_0

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_0
    invoke-virtual {v9}, Landroid/view/InputDevice;->getSources()I

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    const/16 v11, 0x401

    .line 65
    .line 66
    and-int/2addr v10, v11

    .line 67
    if-eq v10, v11, :cond_1

    .line 68
    .line 69
    invoke-virtual {v9}, Landroid/view/InputDevice;->getSources()I

    .line 70
    .line 71
    .line 72
    move-result v9

    .line 73
    const v10, 0x1000010

    .line 74
    .line 75
    .line 76
    and-int/2addr v9, v10

    .line 77
    if-ne v9, v10, :cond_2

    .line 78
    .line 79
    :cond_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    const-string v7, "#F0F0F6"

    .line 94
    .line 95
    const/16 v9, 0x8

    .line 96
    .line 97
    const-string v10, "\ud83c\udfae"

    .line 98
    .line 99
    const-string v11, "#18181f"

    .line 100
    .line 101
    const/16 v12, 0xe

    .line 102
    .line 103
    const/16 v13, 0x10

    .line 104
    .line 105
    const/4 v14, -0x1

    .line 106
    const/16 v15, 0x11

    .line 107
    .line 108
    const/4 v5, -0x2

    .line 109
    const/4 v8, 0x1

    .line 110
    if-eqz v3, :cond_4

    .line 111
    .line 112
    new-instance v3, Landroid/widget/LinearLayout;

    .line 113
    .line 114
    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 118
    .line 119
    .line 120
    const/16 v4, 0x14

    .line 121
    .line 122
    int-to-float v4, v4

    .line 123
    mul-float/2addr v4, v2

    .line 124
    float-to-int v4, v4

    .line 125
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 126
    .line 127
    .line 128
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    .line 129
    .line 130
    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 134
    .line 135
    .line 136
    int-to-float v6, v12

    .line 137
    mul-float/2addr v6, v2

    .line 138
    invoke-virtual {v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 139
    .line 140
    .line 141
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    invoke-virtual {v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 149
    .line 150
    .line 151
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 152
    .line 153
    invoke-direct {v4, v14, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 154
    .line 155
    .line 156
    int-to-float v6, v13

    .line 157
    mul-float/2addr v6, v2

    .line 158
    float-to-int v6, v6

    .line 159
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 160
    .line 161
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3, v15}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 165
    .line 166
    .line 167
    new-instance v4, Landroid/widget/TextView;

    .line 168
    .line 169
    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    .line 174
    .line 175
    const/high16 v6, 0x41e00000    # 28.0f

    .line 176
    .line 177
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 181
    .line 182
    .line 183
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 184
    .line 185
    invoke-direct {v6, v14, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 186
    .line 187
    .line 188
    int-to-float v9, v9

    .line 189
    mul-float/2addr v9, v2

    .line 190
    float-to-int v9, v9

    .line 191
    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 192
    .line 193
    invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    .line 195
    .line 196
    new-instance v6, Landroid/widget/TextView;

    .line 197
    .line 198
    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 199
    .line 200
    .line 201
    const v9, 0x7f120208

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v9

    .line 208
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    .line 210
    .line 211
    const/high16 v9, 0x41500000    # 13.0f

    .line 212
    .line 213
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 214
    .line 215
    .line 216
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    move-result v7

    .line 220
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    .line 222
    .line 223
    const/4 v7, 0x0

    .line 224
    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 228
    .line 229
    .line 230
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 231
    .line 232
    invoke-direct {v7, v14, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 233
    .line 234
    .line 235
    const/4 v5, 0x4

    .line 236
    int-to-float v5, v5

    .line 237
    mul-float/2addr v5, v2

    .line 238
    float-to-int v2, v5

    .line 239
    iput v2, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 240
    .line 241
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    .line 243
    .line 244
    new-instance v2, Landroid/widget/TextView;

    .line 245
    .line 246
    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 247
    .line 248
    .line 249
    const v1, 0x7f12019a

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    .line 258
    .line 259
    const/high16 v1, 0x41300000    # 11.0f

    .line 260
    .line 261
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 262
    .line 263
    .line 264
    const-string v1, "#8888A4"

    .line 265
    .line 266
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 274
    .line 275
    .line 276
    const/4 v1, 0x0

    .line 277
    const v5, 0x3fcccccd    # 1.6f

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2, v1, v5}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 290
    .line 291
    .line 292
    iget-object v1, v0, LE1/g;->b:Lw1/c;

    .line 293
    .line 294
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    iget-object v1, v1, Lw1/c;->d:Landroid/widget/LinearLayout;

    .line 298
    .line 299
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 300
    .line 301
    .line 302
    return-void

    .line 303
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 304
    .line 305
    .line 306
    move-result v3

    .line 307
    move v9, v6

    .line 308
    :goto_2
    if-ge v9, v3, :cond_6

    .line 309
    .line 310
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v16

    .line 314
    add-int/lit8 v9, v9, 0x1

    .line 315
    .line 316
    check-cast v16, Ljava/lang/Number;

    .line 317
    .line 318
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    .line 319
    .line 320
    .line 321
    move-result v8

    .line 322
    invoke-static {v8}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    .line 323
    .line 324
    .line 325
    move-result-object v16

    .line 326
    if-nez v16, :cond_5

    .line 327
    .line 328
    move/from16 v17, v2

    .line 329
    .line 330
    const/16 v8, 0x8

    .line 331
    .line 332
    const/4 v13, 0x1

    .line 333
    goto/16 :goto_3

    .line 334
    .line 335
    :cond_5
    new-instance v15, Landroid/widget/LinearLayout;

    .line 336
    .line 337
    invoke-direct {v15, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v15, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v15, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 344
    .line 345
    .line 346
    int-to-float v5, v12

    .line 347
    mul-float/2addr v5, v2

    .line 348
    float-to-int v12, v5

    .line 349
    int-to-float v14, v13

    .line 350
    mul-float/2addr v14, v2

    .line 351
    float-to-int v14, v14

    .line 352
    invoke-virtual {v15, v12, v12, v14, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 353
    .line 354
    .line 355
    new-instance v14, Landroid/graphics/drawable/GradientDrawable;

    .line 356
    .line 357
    invoke-direct {v14}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v14, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v14, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 364
    .line 365
    .line 366
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 367
    .line 368
    .line 369
    move-result v5

    .line 370
    invoke-virtual {v14, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v15, v14}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 374
    .line 375
    .line 376
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 377
    .line 378
    const/4 v13, -0x2

    .line 379
    const/4 v14, -0x1

    .line 380
    invoke-direct {v5, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 381
    .line 382
    .line 383
    const/16 v13, 0xa

    .line 384
    .line 385
    int-to-float v13, v13

    .line 386
    mul-float/2addr v13, v2

    .line 387
    float-to-int v13, v13

    .line 388
    iput v13, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 389
    .line 390
    invoke-virtual {v15, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    .line 392
    .line 393
    new-instance v5, Landroid/widget/TextView;

    .line 394
    .line 395
    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    .line 400
    .line 401
    const/high16 v13, 0x41b00000    # 22.0f

    .line 402
    .line 403
    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 404
    .line 405
    .line 406
    const/16 v13, 0x11

    .line 407
    .line 408
    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 409
    .line 410
    .line 411
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 412
    .line 413
    const/16 v14, 0x2c

    .line 414
    .line 415
    int-to-float v14, v14

    .line 416
    mul-float/2addr v14, v2

    .line 417
    float-to-int v14, v14

    .line 418
    invoke-direct {v13, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v13, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v5, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    .line 426
    .line 427
    new-instance v12, Landroid/widget/LinearLayout;

    .line 428
    .line 429
    invoke-direct {v12, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 430
    .line 431
    .line 432
    const/4 v13, 0x1

    .line 433
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 434
    .line 435
    .line 436
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 437
    .line 438
    const/high16 v14, 0x3f800000    # 1.0f

    .line 439
    .line 440
    move/from16 v17, v2

    .line 441
    .line 442
    const/4 v2, -0x2

    .line 443
    invoke-direct {v13, v6, v2, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v12, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    .line 448
    .line 449
    new-instance v2, Landroid/widget/TextView;

    .line 450
    .line 451
    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual/range {v16 .. v16}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v13

    .line 458
    const-string v14, "getName(...)"

    .line 459
    .line 460
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    const/16 v14, 0x28

    .line 464
    .line 465
    invoke-static {v13, v14}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v13

    .line 469
    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    .line 471
    .line 472
    const/high16 v13, 0x41500000    # 13.0f

    .line 473
    .line 474
    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 475
    .line 476
    .line 477
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 478
    .line 479
    .line 480
    move-result v14

    .line 481
    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 482
    .line 483
    .line 484
    const/4 v6, 0x1

    .line 485
    const/4 v14, 0x0

    .line 486
    invoke-virtual {v2, v14, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 487
    .line 488
    .line 489
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 490
    .line 491
    const/4 v13, -0x2

    .line 492
    invoke-direct {v6, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 493
    .line 494
    .line 495
    const/4 v13, 0x2

    .line 496
    int-to-float v13, v13

    .line 497
    mul-float v13, v13, v17

    .line 498
    .line 499
    float-to-int v13, v13

    .line 500
    iput v13, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 501
    .line 502
    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 503
    .line 504
    .line 505
    new-instance v6, Landroid/widget/TextView;

    .line 506
    .line 507
    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 508
    .line 509
    .line 510
    new-instance v13, Ljava/lang/StringBuilder;

    .line 511
    .line 512
    const-string v14, "\u0110\u00e3 k\u1ebft n\u1ed1i \u00b7 ID "

    .line 513
    .line 514
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v8

    .line 524
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    .line 526
    .line 527
    const/high16 v8, 0x41200000    # 10.0f

    .line 528
    .line 529
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 530
    .line 531
    .line 532
    const-string v8, "#45455a"

    .line 533
    .line 534
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 535
    .line 536
    .line 537
    move-result v8

    .line 538
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v12, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 542
    .line 543
    .line 544
    invoke-virtual {v12, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 545
    .line 546
    .line 547
    new-instance v2, Landroid/widget/FrameLayout;

    .line 548
    .line 549
    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 550
    .line 551
    .line 552
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 553
    .line 554
    const/16 v8, 0x8

    .line 555
    .line 556
    int-to-float v13, v8

    .line 557
    mul-float v13, v13, v17

    .line 558
    .line 559
    float-to-int v13, v13

    .line 560
    invoke-direct {v6, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 564
    .line 565
    .line 566
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    .line 567
    .line 568
    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 569
    .line 570
    .line 571
    const/4 v13, 0x1

    .line 572
    invoke-virtual {v6, v13}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 573
    .line 574
    .line 575
    const-string v14, "#22C55E"

    .line 576
    .line 577
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 578
    .line 579
    .line 580
    move-result v14

    .line 581
    invoke-virtual {v6, v14}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v2, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v15, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 588
    .line 589
    .line 590
    invoke-virtual {v15, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v15, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 594
    .line 595
    .line 596
    iget-object v2, v0, LE1/g;->b:Lw1/c;

    .line 597
    .line 598
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 599
    .line 600
    .line 601
    iget-object v2, v2, Lw1/c;->d:Landroid/widget/LinearLayout;

    .line 602
    .line 603
    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 604
    .line 605
    .line 606
    :goto_3
    move v8, v13

    .line 607
    move/from16 v2, v17

    .line 608
    .line 609
    const/4 v5, -0x2

    .line 610
    const/4 v6, 0x0

    .line 611
    const/16 v12, 0xe

    .line 612
    .line 613
    const/16 v13, 0x10

    .line 614
    .line 615
    const/4 v14, -0x1

    .line 616
    const/16 v15, 0x11

    .line 617
    .line 618
    goto/16 :goto_2

    .line 619
    .line 620
    :cond_6
    return-void
.end method

.method public final e()V
    .locals 10

    .line 1
    iget-object v0, p0, LE1/g;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, LE1/g;->c:LB1/z;

    .line 7
    .line 8
    const-string v2, "mappingManager"

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    move-object v1, v3

    .line 17
    :cond_0
    iget-object v4, p0, LE1/g;->c:LB1/z;

    .line 18
    .line 19
    if-nez v4, :cond_1

    .line 20
    .line 21
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    move-object v4, v3

    .line 25
    :cond_1
    invoke-virtual {v4}, LB1/z;->c()Ljava/util/LinkedHashMap;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    const-string v1, "mapping"

    .line 33
    .line 34
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "<get-entries>(...)"

    .line 42
    .line 43
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance v2, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const/4 v4, 0x0

    .line 60
    move v5, v4

    .line 61
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    const-string v7, "row_"

    .line 66
    .line 67
    if-eqz v6, :cond_3

    .line 68
    .line 69
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    add-int/lit8 v8, v5, 0x1

    .line 74
    .line 75
    if-gez v5, :cond_2

    .line 76
    .line 77
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 78
    .line 79
    .line 80
    :cond_2
    check-cast v6, Ljava/util/Map$Entry;

    .line 81
    .line 82
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    const-string v9, "component1(...)"

    .line 90
    .line 91
    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    check-cast v5, Ljava/lang/String;

    .line 95
    .line 96
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    const-string v9, "component2(...)"

    .line 101
    .line 102
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    check-cast v6, Ljava/lang/String;

    .line 106
    .line 107
    new-instance v9, LB1/A;

    .line 108
    .line 109
    invoke-static {v8, v7}, LE/b;->i(ILjava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    invoke-direct {v9, v7, v6, v5}, LB1/A;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move v5, v8

    .line 120
    goto :goto_0

    .line 121
    :cond_3
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->c(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 122
    .line 123
    .line 124
    new-instance v1, Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    move v5, v4

    .line 134
    :cond_4
    :goto_1
    if-ge v5, v2, :cond_5

    .line 135
    .line 136
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    add-int/lit8 v5, v5, 0x1

    .line 141
    .line 142
    check-cast v6, LB1/A;

    .line 143
    .line 144
    iget-object v6, v6, LB1/A;->a:Ljava/lang/String;

    .line 145
    .line 146
    invoke-static {v6, v7}, Lkotlin/text/StringsKt;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-static {v6}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    if-eqz v6, :cond_4

    .line 155
    .line 156
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_5
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->q(Ljava/util/ArrayList;)Ljava/lang/Comparable;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    check-cast v1, Ljava/lang/Integer;

    .line 165
    .line 166
    const/4 v2, 0x1

    .line 167
    if-eqz v1, :cond_6

    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    add-int/2addr v2, v1

    .line 174
    :cond_6
    iput v2, p0, LE1/g;->f:I

    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_7

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    :cond_8
    if-ge v4, v1, :cond_9

    .line 188
    .line 189
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    add-int/lit8 v4, v4, 0x1

    .line 194
    .line 195
    check-cast v2, LB1/A;

    .line 196
    .line 197
    iget-object v2, v2, LB1/A;->a:Ljava/lang/String;

    .line 198
    .line 199
    iget-object v5, p0, LE1/g;->e:Ljava/lang/String;

    .line 200
    .line 201
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-eqz v2, :cond_8

    .line 206
    .line 207
    return-void

    .line 208
    :cond_9
    :goto_2
    iput-object v3, p0, LE1/g;->e:Ljava/lang/String;

    .line 209
    .line 210
    return-void
.end method

.method public final f()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "requireContext(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 21
    .line 22
    iget-object v3, v0, LE1/g;->b:Lw1/c;

    .line 23
    .line 24
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object v3, v3, Lw1/c;->c:Landroid/view/View;

    .line 28
    .line 29
    check-cast v3, Landroid/widget/LinearLayout;

    .line 30
    .line 31
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 32
    .line 33
    .line 34
    iget-object v3, v0, LE1/g;->d:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    const/4 v5, 0x0

    .line 41
    move v6, v5

    .line 42
    move v7, v6

    .line 43
    :goto_0
    if-ge v7, v4, :cond_12

    .line 44
    .line 45
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    add-int/lit8 v7, v7, 0x1

    .line 50
    .line 51
    add-int/lit8 v9, v6, 0x1

    .line 52
    .line 53
    if-gez v6, :cond_0

    .line 54
    .line 55
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 56
    .line 57
    .line 58
    :cond_0
    check-cast v8, LB1/A;

    .line 59
    .line 60
    new-instance v10, Landroid/widget/LinearLayout;

    .line 61
    .line 62
    invoke-direct {v10, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 66
    .line 67
    .line 68
    const/16 v11, 0x10

    .line 69
    .line 70
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 71
    .line 72
    .line 73
    const/16 v11, 0xa

    .line 74
    .line 75
    int-to-float v11, v11

    .line 76
    mul-float/2addr v11, v2

    .line 77
    float-to-int v12, v11

    .line 78
    invoke-virtual {v10, v12, v12, v12, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 79
    .line 80
    .line 81
    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    .line 82
    .line 83
    invoke-direct {v12}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v12, v5}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v12, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 90
    .line 91
    .line 92
    const-string v13, "#151821"

    .line 93
    .line 94
    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v13

    .line 98
    invoke-virtual {v12, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v10, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 102
    .line 103
    .line 104
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 105
    .line 106
    const/4 v13, -0x1

    .line 107
    const/4 v14, -0x2

    .line 108
    invoke-direct {v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 109
    .line 110
    .line 111
    const/16 v13, 0x8

    .line 112
    .line 113
    if-lez v6, :cond_1

    .line 114
    .line 115
    int-to-float v6, v13

    .line 116
    mul-float/2addr v6, v2

    .line 117
    float-to-int v6, v6

    .line 118
    iput v6, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 119
    .line 120
    :cond_1
    invoke-virtual {v10, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    .line 122
    .line 123
    const v6, 0x7f120201

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    const-string v12, "getString(...)"

    .line 131
    .line 132
    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-object v14, v8, LB1/A;->b:Ljava/lang/String;

    .line 136
    .line 137
    if-eqz v14, :cond_2

    .line 138
    .line 139
    sget-object v15, LB1/y;->a:Ljava/util/List;

    .line 140
    .line 141
    invoke-static {v14}, LB1/y;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v14

    .line 145
    if-nez v14, :cond_3

    .line 146
    .line 147
    :cond_2
    const v14, 0x7f1201a2

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v14}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v14

    .line 154
    invoke-static {v14, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :cond_3
    int-to-float v13, v13

    .line 158
    mul-float/2addr v13, v2

    .line 159
    float-to-int v13, v13

    .line 160
    new-instance v15, LE1/f;

    .line 161
    .line 162
    invoke-direct {v15, v0, v8, v5}, LE1/f;-><init>(LE1/g;LB1/A;I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v6, v14, v13, v15}, LE1/g;->b(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;)Landroid/widget/LinearLayout;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    const v14, 0x7f1201f6

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v14}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v14

    .line 176
    invoke-static {v14, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-object v15, v8, LB1/A;->c:Ljava/lang/String;

    .line 180
    .line 181
    if-eqz v15, :cond_10

    .line 182
    .line 183
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    .line 184
    .line 185
    .line 186
    move-result v12

    .line 187
    sparse-switch v12, :sswitch_data_0

    .line 188
    .line 189
    .line 190
    goto/16 :goto_1

    .line 191
    .line 192
    :sswitch_0
    const-string v12, "DPAD_RIGHT"

    .line 193
    .line 194
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v12

    .line 198
    if-nez v12, :cond_4

    .line 199
    .line 200
    goto/16 :goto_1

    .line 201
    .line 202
    :cond_4
    const-string v15, "D-pad Right"

    .line 203
    .line 204
    goto/16 :goto_1

    .line 205
    .line 206
    :sswitch_1
    const-string v12, "KEYCODE_BUTTON_Y"

    .line 207
    .line 208
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v12

    .line 212
    if-nez v12, :cond_5

    .line 213
    .line 214
    goto/16 :goto_1

    .line 215
    .line 216
    :cond_5
    const-string v15, "Y"

    .line 217
    .line 218
    goto/16 :goto_1

    .line 219
    .line 220
    :sswitch_2
    const-string v12, "KEYCODE_BUTTON_X"

    .line 221
    .line 222
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v12

    .line 226
    if-nez v12, :cond_6

    .line 227
    .line 228
    goto/16 :goto_1

    .line 229
    .line 230
    :cond_6
    const-string v15, "X"

    .line 231
    .line 232
    goto/16 :goto_1

    .line 233
    .line 234
    :sswitch_3
    const-string v12, "KEYCODE_BUTTON_B"

    .line 235
    .line 236
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v12

    .line 240
    if-nez v12, :cond_7

    .line 241
    .line 242
    goto/16 :goto_1

    .line 243
    .line 244
    :cond_7
    const-string v15, "B"

    .line 245
    .line 246
    goto/16 :goto_1

    .line 247
    .line 248
    :sswitch_4
    const-string v12, "KEYCODE_BUTTON_A"

    .line 249
    .line 250
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v12

    .line 254
    if-nez v12, :cond_8

    .line 255
    .line 256
    goto/16 :goto_1

    .line 257
    .line 258
    :cond_8
    const-string v15, "A"

    .line 259
    .line 260
    goto/16 :goto_1

    .line 261
    .line 262
    :sswitch_5
    const-string v12, "KEYCODE_BUTTON_R1"

    .line 263
    .line 264
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v12

    .line 268
    if-nez v12, :cond_9

    .line 269
    .line 270
    goto/16 :goto_1

    .line 271
    .line 272
    :cond_9
    const-string v15, "R1"

    .line 273
    .line 274
    goto/16 :goto_1

    .line 275
    .line 276
    :sswitch_6
    const-string v12, "KEYCODE_BUTTON_L1"

    .line 277
    .line 278
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v12

    .line 282
    if-nez v12, :cond_a

    .line 283
    .line 284
    goto :goto_1

    .line 285
    :cond_a
    const-string v15, "L1"

    .line 286
    .line 287
    goto :goto_1

    .line 288
    :sswitch_7
    const-string v12, "DPAD_LEFT"

    .line 289
    .line 290
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v12

    .line 294
    if-nez v12, :cond_b

    .line 295
    .line 296
    goto :goto_1

    .line 297
    :cond_b
    const-string v15, "D-pad Left"

    .line 298
    .line 299
    goto :goto_1

    .line 300
    :sswitch_8
    const-string v12, "DPAD_DOWN"

    .line 301
    .line 302
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v12

    .line 306
    if-nez v12, :cond_c

    .line 307
    .line 308
    goto :goto_1

    .line 309
    :cond_c
    const-string v15, "D-pad Down"

    .line 310
    .line 311
    goto :goto_1

    .line 312
    :sswitch_9
    const-string v12, "KEYCODE_BUTTON_START"

    .line 313
    .line 314
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v12

    .line 318
    if-nez v12, :cond_d

    .line 319
    .line 320
    goto :goto_1

    .line 321
    :cond_d
    const-string v15, "Start"

    .line 322
    .line 323
    goto :goto_1

    .line 324
    :sswitch_a
    const-string v12, "DPAD_UP"

    .line 325
    .line 326
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v12

    .line 330
    if-nez v12, :cond_e

    .line 331
    .line 332
    goto :goto_1

    .line 333
    :cond_e
    const-string v15, "D-pad Up"

    .line 334
    .line 335
    goto :goto_1

    .line 336
    :sswitch_b
    const-string v12, "KEYCODE_BUTTON_SELECT"

    .line 337
    .line 338
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result v12

    .line 342
    if-nez v12, :cond_f

    .line 343
    .line 344
    goto :goto_1

    .line 345
    :cond_f
    const-string v15, "Select"

    .line 346
    .line 347
    goto :goto_1

    .line 348
    :cond_10
    iget-object v15, v0, LE1/g;->e:Ljava/lang/String;

    .line 349
    .line 350
    iget-object v5, v8, LB1/A;->a:Ljava/lang/String;

    .line 351
    .line 352
    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result v5

    .line 356
    if-eqz v5, :cond_11

    .line 357
    .line 358
    const v5, 0x7f12019f

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v15

    .line 365
    invoke-static {v15, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    goto :goto_1

    .line 369
    :cond_11
    const v5, 0x7f120232

    .line 370
    .line 371
    .line 372
    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v15

    .line 376
    invoke-static {v15, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    :goto_1
    new-instance v5, LE1/f;

    .line 380
    .line 381
    const/4 v12, 0x1

    .line 382
    invoke-direct {v5, v0, v8, v12}, LE1/f;-><init>(LE1/g;LB1/A;I)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0, v14, v15, v13, v5}, LE1/g;->b(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;)Landroid/widget/LinearLayout;

    .line 386
    .line 387
    .line 388
    move-result-object v5

    .line 389
    new-instance v12, Landroid/widget/TextView;

    .line 390
    .line 391
    invoke-direct {v12, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 392
    .line 393
    .line 394
    const/16 v13, 0x11

    .line 395
    .line 396
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 397
    .line 398
    .line 399
    const/16 v14, 0x48

    .line 400
    .line 401
    int-to-float v14, v14

    .line 402
    mul-float/2addr v14, v2

    .line 403
    float-to-int v14, v14

    .line 404
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 405
    .line 406
    .line 407
    const/16 v14, 0xc

    .line 408
    .line 409
    int-to-float v14, v14

    .line 410
    mul-float/2addr v14, v2

    .line 411
    float-to-int v14, v14

    .line 412
    invoke-virtual {v12, v14, v14, v14, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 413
    .line 414
    .line 415
    new-instance v14, Landroid/graphics/drawable/GradientDrawable;

    .line 416
    .line 417
    invoke-direct {v14}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 418
    .line 419
    .line 420
    const/4 v15, 0x0

    .line 421
    invoke-virtual {v14, v15}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v14, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 425
    .line 426
    .line 427
    const-string v11, "#212734"

    .line 428
    .line 429
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 430
    .line 431
    .line 432
    move-result v11

    .line 433
    invoke-virtual {v14, v11}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v12, v14}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 437
    .line 438
    .line 439
    const-string v11, "#F0F0F6"

    .line 440
    .line 441
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 442
    .line 443
    .line 444
    move-result v11

    .line 445
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 446
    .line 447
    .line 448
    const/high16 v11, 0x41300000    # 11.0f

    .line 449
    .line 450
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 451
    .line 452
    .line 453
    const v11, 0x7f1201e8

    .line 454
    .line 455
    .line 456
    invoke-virtual {v0, v11}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v11

    .line 460
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    .line 462
    .line 463
    new-instance v11, LC1/j;

    .line 464
    .line 465
    invoke-direct {v11, v13, v0, v8}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v12, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v10, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v10, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 478
    .line 479
    .line 480
    iget-object v5, v0, LE1/g;->b:Lw1/c;

    .line 481
    .line 482
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 483
    .line 484
    .line 485
    iget-object v5, v5, Lw1/c;->c:Landroid/view/View;

    .line 486
    .line 487
    check-cast v5, Landroid/widget/LinearLayout;

    .line 488
    .line 489
    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 490
    .line 491
    .line 492
    move v6, v9

    .line 493
    move v5, v15

    .line 494
    goto/16 :goto_0

    .line 495
    .line 496
    :cond_12
    return-void

    .line 497
    :sswitch_data_0
    .sparse-switch
        -0x6be7cbaa -> :sswitch_b
        -0x66a040d5 -> :sswitch_a
        -0x56091258 -> :sswitch_9
        -0x3f9b12ce -> :sswitch_8
        -0x3f979769 -> :sswitch_7
        -0x224a2e41 -> :sswitch_6
        -0x224a2d87 -> :sswitch_5
        -0x95d3b59 -> :sswitch_4
        -0x95d3b58 -> :sswitch_3
        -0x95d3b42 -> :sswitch_2
        -0x95d3b41 -> :sswitch_1
        0x4cfb0b6c -> :sswitch_0
    .end sparse-switch
.end method

.method public final h()V
    .locals 14

    .line 1
    iget-object v0, p0, LE1/g;->c:LB1/z;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "mappingManager"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    invoke-virtual {v0}, LB1/z;->d()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const v1, 0x7f120406

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    new-instance v2, LH0/o;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-direct {v2, v4}, LH0/o;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    const v5, 0x7f0c00ac

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const v4, 0x7f090111

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Landroid/widget/LinearLayout;

    .line 70
    .line 71
    const v5, 0x7f09007c

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    const/16 v6, 0x8

    .line 79
    .line 80
    int-to-float v6, v6

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    .line 90
    .line 91
    mul-float/2addr v6, v7

    .line 92
    float-to-int v6, v6

    .line 93
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    move v7, v3

    .line 98
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    if-eqz v8, :cond_4

    .line 103
    .line 104
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    add-int/lit8 v9, v7, 0x1

    .line 109
    .line 110
    if-gez v7, :cond_2

    .line 111
    .line 112
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 113
    .line 114
    .line 115
    :cond_2
    check-cast v8, LB1/B;

    .line 116
    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    const v11, 0x7f0c005c

    .line 122
    .line 123
    .line 124
    invoke-virtual {v10, v11, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    const v11, 0x7f090376

    .line 129
    .line 130
    .line 131
    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v11

    .line 135
    check-cast v11, Landroid/widget/TextView;

    .line 136
    .line 137
    const v12, 0x7f09008c

    .line 138
    .line 139
    .line 140
    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v12

    .line 144
    check-cast v12, Landroid/widget/TextView;

    .line 145
    .line 146
    iget-object v13, v8, LB1/B;->a:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    new-instance v11, LE1/b;

    .line 152
    .line 153
    invoke-direct {v11, p0, v8, v2}, LE1/b;-><init>(LE1/g;LB1/B;LH0/o;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    .line 158
    .line 159
    new-instance v11, LE1/b;

    .line 160
    .line 161
    invoke-direct {v11, p0, v2, v8}, LE1/b;-><init>(LE1/g;LH0/o;LB1/B;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v12, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    .line 166
    .line 167
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 168
    .line 169
    const/4 v11, -0x1

    .line 170
    const/4 v12, -0x2

    .line 171
    invoke-direct {v8, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 172
    .line 173
    .line 174
    if-lez v7, :cond_3

    .line 175
    .line 176
    iput v6, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 177
    .line 178
    :cond_3
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 179
    .line 180
    invoke-virtual {v4, v10, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    .line 182
    .line 183
    move v7, v9

    .line 184
    goto :goto_0

    .line 185
    :cond_4
    new-instance v0, LC1/v;

    .line 186
    .line 187
    const/4 v3, 0x4

    .line 188
    invoke-direct {v0, v2, v3}, LC1/v;-><init>(LH0/o;I)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    .line 193
    .line 194
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    invoke-static {v2, v1}, LE1/g;->g(LH0/o;Landroid/view/View;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 201
    .line 202
    .line 203
    return-void
.end method

.method public final i()V
    .locals 6

    .line 1
    iget-object v0, p0, LE1/g;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :cond_0
    if-ge v2, v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    move-object v4, v3

    .line 17
    check-cast v4, LB1/A;

    .line 18
    .line 19
    iget-object v4, v4, LB1/A;->a:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v5, p0, LE1/g;->e:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v3, 0x0

    .line 31
    :goto_0
    check-cast v3, LB1/A;

    .line 32
    .line 33
    iget-object v0, p0, LE1/g;->b:Lw1/c;

    .line 34
    .line 35
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, v0, Lw1/c;->e:Landroid/widget/TextView;

    .line 39
    .line 40
    if-nez v3, :cond_2

    .line 41
    .line 42
    iget-object v1, p0, LE1/g;->b:Lw1/c;

    .line 43
    .line 44
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, v1, Lw1/c;->k:Landroid/view/View;

    .line 48
    .line 49
    check-cast v1, Landroid/widget/Switch;

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_2

    .line 56
    .line 57
    const v1, 0x7f12019e

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    if-nez v3, :cond_3

    .line 66
    .line 67
    const v1, 0x7f1201a3

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    goto :goto_2

    .line 75
    :cond_3
    iget-object v1, v3, LB1/A;->b:Ljava/lang/String;

    .line 76
    .line 77
    if-eqz v1, :cond_5

    .line 78
    .line 79
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_4

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_4
    sget-object v2, LB1/y;->a:Ljava/util/List;

    .line 87
    .line 88
    invoke-static {v1}, LB1/y;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const v2, 0x7f1201a1

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    goto :goto_2

    .line 104
    :cond_5
    :goto_1
    const v1, 0x7f12019f

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    .line 1
    const-string p3, "i"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const p3, 0x7f0c004f

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const p2, 0x7f090071

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    move-object v2, p3

    .line 22
    check-cast v2, Landroid/widget/Button;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    const p2, 0x7f0900b0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    move-object v3, p3

    .line 34
    check-cast v3, Landroid/widget/Button;

    .line 35
    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    const p2, 0x7f0900d2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    move-object v4, p3

    .line 46
    check-cast v4, Landroid/widget/Button;

    .line 47
    .line 48
    if-eqz v4, :cond_0

    .line 49
    .line 50
    const p2, 0x7f0900d9

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    move-object v5, p3

    .line 58
    check-cast v5, Landroid/widget/Button;

    .line 59
    .line 60
    if-eqz v5, :cond_0

    .line 61
    .line 62
    const p2, 0x7f09010f

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    move-object v6, p3

    .line 70
    check-cast v6, Landroid/widget/LinearLayout;

    .line 71
    .line 72
    if-eqz v6, :cond_0

    .line 73
    .line 74
    const p2, 0x7f090112

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    move-object v7, p3

    .line 82
    check-cast v7, Landroid/widget/LinearLayout;

    .line 83
    .line 84
    if-eqz v7, :cond_0

    .line 85
    .line 86
    const p2, 0x7f0901c9

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    check-cast p3, Landroid/widget/LinearLayout;

    .line 94
    .line 95
    if-eqz p3, :cond_0

    .line 96
    .line 97
    const p2, 0x7f0902de

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    move-object v8, p3

    .line 105
    check-cast v8, Landroid/widget/Switch;

    .line 106
    .line 107
    if-eqz v8, :cond_0

    .line 108
    .line 109
    const p2, 0x7f0902df

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object p3

    .line 116
    move-object v9, p3

    .line 117
    check-cast v9, Landroid/widget/Switch;

    .line 118
    .line 119
    if-eqz v9, :cond_0

    .line 120
    .line 121
    const p2, 0x7f0902e0

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object p3

    .line 128
    move-object v10, p3

    .line 129
    check-cast v10, Landroid/widget/Switch;

    .line 130
    .line 131
    if-eqz v10, :cond_0

    .line 132
    .line 133
    const p2, 0x7f090369

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object p3

    .line 140
    move-object v11, p3

    .line 141
    check-cast v11, Landroid/widget/TextView;

    .line 142
    .line 143
    if-eqz v11, :cond_0

    .line 144
    .line 145
    new-instance v0, Lw1/c;

    .line 146
    .line 147
    move-object v1, p1

    .line 148
    check-cast v1, Landroid/widget/ScrollView;

    .line 149
    .line 150
    invoke-direct/range {v0 .. v11}, Lw1/c;-><init>(Landroid/widget/ScrollView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/Switch;Landroid/widget/Switch;Landroid/widget/Switch;Landroid/widget/TextView;)V

    .line 151
    .line 152
    .line 153
    iput-object v0, p0, LE1/g;->b:Lw1/c;

    .line 154
    .line 155
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    const-string p1, "getRoot(...)"

    .line 159
    .line 160
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    return-object v1

    .line 164
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    new-instance p2, Ljava/lang/NullPointerException;

    .line 173
    .line 174
    const-string p3, "Missing required view with ID: "

    .line 175
    .line 176
    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p2
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, LE1/g;->b:Lw1/c;

    .line 6
    .line 7
    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LE1/g;->b:Lw1/c;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, v0, Lw1/c;->h:Landroid/view/View;

    .line 10
    .line 11
    check-cast v0, Landroid/widget/ScrollView;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, LE1/g;->d()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, LE1/g;->e()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, LE1/g;->f()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, LE1/g;->i()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    const-string p2, "v"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string p2, "requireContext(...)"

    .line 11
    .line 12
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance p2, LB1/z;

    .line 16
    .line 17
    invoke-direct {p2, p1}, LB1/z;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, LE1/g;->c:LB1/z;

    .line 21
    .line 22
    iget-object p2, p0, LE1/g;->b:Lw1/c;

    .line 23
    .line 24
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p2, p2, Lw1/c;->k:Landroid/view/View;

    .line 28
    .line 29
    check-cast p2, Landroid/widget/Switch;

    .line 30
    .line 31
    invoke-static {p1}, LS1/d;->e(Landroid/content/Context;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 36
    .line 37
    .line 38
    iget-object p2, p0, LE1/g;->b:Lw1/c;

    .line 39
    .line 40
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object p2, p2, Lw1/c;->j:Landroid/view/View;

    .line 44
    .line 45
    check-cast p2, Landroid/widget/Switch;

    .line 46
    .line 47
    const-string v0, "<this>"

    .line 48
    .line 49
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, LS1/d;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v2, "gamepad_vibration"

    .line 57
    .line 58
    const/4 v3, 0x1

    .line 59
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-virtual {p2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 64
    .line 65
    .line 66
    iget-object p2, p0, LE1/g;->b:Lw1/c;

    .line 67
    .line 68
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    iget-object p2, p2, Lw1/c;->i:Landroid/view/View;

    .line 72
    .line 73
    check-cast p2, Landroid/widget/Switch;

    .line 74
    .line 75
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string v0, "minhub_prefs"

    .line 79
    .line 80
    const/4 v1, 0x0

    .line 81
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string v1, "gamepad_automap"

    .line 86
    .line 87
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    invoke-virtual {p2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 92
    .line 93
    .line 94
    iget-object p2, p0, LE1/g;->b:Lw1/c;

    .line 95
    .line 96
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    iget-object p2, p2, Lw1/c;->k:Landroid/view/View;

    .line 100
    .line 101
    check-cast p2, Landroid/widget/Switch;

    .line 102
    .line 103
    new-instance v0, LB1/f;

    .line 104
    .line 105
    const/4 v1, 0x1

    .line 106
    invoke-direct {v0, v1, p1, p0}, LB1/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 110
    .line 111
    .line 112
    iget-object p2, p0, LE1/g;->b:Lw1/c;

    .line 113
    .line 114
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    iget-object p2, p2, Lw1/c;->j:Landroid/view/View;

    .line 118
    .line 119
    check-cast p2, Landroid/widget/Switch;

    .line 120
    .line 121
    new-instance v0, LE1/c;

    .line 122
    .line 123
    const/4 v1, 0x0

    .line 124
    invoke-direct {v0, p1, v1}, LE1/c;-><init>(Landroid/content/Context;I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 128
    .line 129
    .line 130
    iget-object p2, p0, LE1/g;->b:Lw1/c;

    .line 131
    .line 132
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    iget-object p2, p2, Lw1/c;->i:Landroid/view/View;

    .line 136
    .line 137
    check-cast p2, Landroid/widget/Switch;

    .line 138
    .line 139
    new-instance v0, LE1/c;

    .line 140
    .line 141
    const/4 v1, 0x1

    .line 142
    invoke-direct {v0, p1, v1}, LE1/c;-><init>(Landroid/content/Context;I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 146
    .line 147
    .line 148
    iget-object p2, p0, LE1/g;->b:Lw1/c;

    .line 149
    .line 150
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    iget-object p2, p2, Lw1/c;->a:Landroid/view/View;

    .line 154
    .line 155
    check-cast p2, Landroid/widget/Button;

    .line 156
    .line 157
    new-instance v0, LE1/d;

    .line 158
    .line 159
    const/4 v1, 0x0

    .line 160
    invoke-direct {v0, p0, v1}, LE1/d;-><init>(LE1/g;I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    .line 165
    .line 166
    iget-object p2, p0, LE1/g;->b:Lw1/c;

    .line 167
    .line 168
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    iget-object p2, p2, Lw1/c;->g:Landroid/view/View;

    .line 172
    .line 173
    check-cast p2, Landroid/widget/Button;

    .line 174
    .line 175
    new-instance v0, LE1/d;

    .line 176
    .line 177
    const/4 v1, 0x1

    .line 178
    invoke-direct {v0, p0, v1}, LE1/d;-><init>(LE1/g;I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    .line 183
    .line 184
    iget-object p2, p0, LE1/g;->b:Lw1/c;

    .line 185
    .line 186
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    iget-object p2, p2, Lw1/c;->b:Landroid/view/View;

    .line 190
    .line 191
    check-cast p2, Landroid/widget/Button;

    .line 192
    .line 193
    new-instance v0, LE1/d;

    .line 194
    .line 195
    const/4 v1, 0x2

    .line 196
    invoke-direct {v0, p0, v1}, LE1/d;-><init>(LE1/g;I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    .line 201
    .line 202
    iget-object p2, p0, LE1/g;->b:Lw1/c;

    .line 203
    .line 204
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    iget-object p2, p2, Lw1/c;->f:Landroid/view/View;

    .line 208
    .line 209
    check-cast p2, Landroid/widget/Button;

    .line 210
    .line 211
    new-instance v0, LC1/j;

    .line 212
    .line 213
    const/16 v1, 0x12

    .line 214
    .line 215
    invoke-direct {v0, v1, p0, p1}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    .line 220
    .line 221
    iget-object p1, p0, LE1/g;->b:Lw1/c;

    .line 222
    .line 223
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    iget-object p1, p1, Lw1/c;->h:Landroid/view/View;

    .line 227
    .line 228
    check-cast p1, Landroid/widget/ScrollView;

    .line 229
    .line 230
    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 231
    .line 232
    .line 233
    iget-object p1, p0, LE1/g;->b:Lw1/c;

    .line 234
    .line 235
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    iget-object p1, p1, Lw1/c;->h:Landroid/view/View;

    .line 239
    .line 240
    check-cast p1, Landroid/widget/ScrollView;

    .line 241
    .line 242
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 243
    .line 244
    .line 245
    iget-object p1, p0, LE1/g;->b:Lw1/c;

    .line 246
    .line 247
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    iget-object p1, p1, Lw1/c;->h:Landroid/view/View;

    .line 251
    .line 252
    check-cast p1, Landroid/widget/ScrollView;

    .line 253
    .line 254
    new-instance p2, LE1/e;

    .line 255
    .line 256
    invoke-direct {p2, p0}, LE1/e;-><init>(LE1/g;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0}, LE1/g;->d()V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0}, LE1/g;->e()V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p0}, LE1/g;->f()V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0}, LE1/g;->i()V

    .line 272
    .line 273
    .line 274
    return-void
.end method
