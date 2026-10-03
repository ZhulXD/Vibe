.class public final LE1/I;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "LE1/I;",
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
        "SMAP\nUtilitiesSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UtilitiesSettingsFragment.kt\ncom/minhub/gamehub/hub/settings/UtilitiesSettingsFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,298:1\n1193#2,2:299\n1267#2,4:301\n1869#2,2:305\n1869#2,2:309\n13472#3,2:307\n*S KotlinDebug\n*F\n+ 1 UtilitiesSettingsFragment.kt\ncom/minhub/gamehub/hub/settings/UtilitiesSettingsFragment\n*L\n97#1:299,2\n97#1:301,4\n102#1:305,2\n161#1:309,2\n282#1:307,2\n*E\n"
    }
.end annotation


# instance fields
.field public b:Lw1/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static b(Ljava/io/File;)J
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    array-length v2, p0

    .line 10
    const/4 v3, 0x0

    .line 11
    :goto_0
    if-ge v3, v2, :cond_1

    .line 12
    .line 13
    aget-object v4, p0, v3

    .line 14
    .line 15
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    if-eqz v5, :cond_0

    .line 20
    .line 21
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v4}, LE1/I;->b(Ljava/io/File;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v4

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    :goto_1
    add-long/2addr v0, v4

    .line 34
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-wide v0
.end method

.method public static d(Landroid/view/View;Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 18
    .line 19
    .line 20
    const/16 v2, 0xc

    .line 21
    .line 22
    int-to-float v2, v2

    .line 23
    mul-float/2addr v2, v0

    .line 24
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 25
    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    const-string v2, "#22EF4444"

    .line 30
    .line 31
    :goto_0
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    const-string v2, "#18181f"

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :goto_1
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 40
    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    int-to-float v2, v2

    .line 44
    mul-float/2addr v2, v0

    .line 45
    float-to-int v0, v2

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    const-string p1, "#55EF4444"

    .line 49
    .line 50
    :goto_2
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    goto :goto_3

    .line 55
    :cond_1
    const-string p1, "#222230"

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :goto_3
    invoke-virtual {v1, v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public final c(I)I
    .locals 1

    .line 1
    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 11
    .line 12
    mul-float/2addr p1, v0

    .line 13
    float-to-int p1, p1

    .line 14
    return p1
.end method

.method public final e()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "getCacheDir(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, LE1/I;->b(Ljava/io/File;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iget-object v2, p0, LE1/I;->b:Lw1/c;

    .line 19
    .line 20
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object v2, v2, Lw1/c;->c:Landroid/view/View;

    .line 24
    .line 25
    check-cast v2, Landroid/widget/TextView;

    .line 26
    .line 27
    const-wide/16 v3, 0x400

    .line 28
    .line 29
    cmp-long v3, v0, v3

    .line 30
    .line 31
    if-gez v3, :cond_0

    .line 32
    .line 33
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const v1, 0x7f120117

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const-wide/32 v3, 0x100000

    .line 50
    .line 51
    .line 52
    cmp-long v3, v0, v3

    .line 53
    .line 54
    if-gez v3, :cond_1

    .line 55
    .line 56
    const/16 v3, 0x400

    .line 57
    .line 58
    int-to-long v3, v3

    .line 59
    div-long/2addr v0, v3

    .line 60
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const v1, 0x7f12011d

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    const/high16 v3, 0x100000

    .line 77
    .line 78
    int-to-long v3, v3

    .line 79
    div-long/2addr v0, v3

    .line 80
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const v1, 0x7f12011f

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "i"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const v1, 0x7f0c0053

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    move-object/from16 v3, p2

    .line 13
    .line 14
    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const v1, 0x7f090073

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    move-object v5, v2

    .line 26
    check-cast v5, Landroid/widget/TextView;

    .line 27
    .line 28
    if-eqz v5, :cond_0

    .line 29
    .line 30
    const v1, 0x7f090080

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    move-object v6, v2

    .line 38
    check-cast v6, Landroid/widget/LinearLayout;

    .line 39
    .line 40
    if-eqz v6, :cond_0

    .line 41
    .line 42
    const v1, 0x7f090081

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    move-object v7, v2

    .line 50
    check-cast v7, Landroid/widget/LinearLayout;

    .line 51
    .line 52
    if-eqz v7, :cond_0

    .line 53
    .line 54
    const v1, 0x7f090095

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    move-object v8, v2

    .line 62
    check-cast v8, Landroid/widget/LinearLayout;

    .line 63
    .line 64
    if-eqz v8, :cond_0

    .line 65
    .line 66
    const v1, 0x7f0900a6

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    move-object v9, v2

    .line 74
    check-cast v9, Landroid/widget/LinearLayout;

    .line 75
    .line 76
    if-eqz v9, :cond_0

    .line 77
    .line 78
    const v1, 0x7f0900ef

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    move-object v10, v2

    .line 86
    check-cast v10, Landroid/widget/LinearLayout;

    .line 87
    .line 88
    if-eqz v10, :cond_0

    .line 89
    .line 90
    const v1, 0x7f090115

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    move-object v11, v2

    .line 98
    check-cast v11, Landroid/widget/LinearLayout;

    .line 99
    .line 100
    if-eqz v11, :cond_0

    .line 101
    .line 102
    const v1, 0x7f090328

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    move-object v12, v2

    .line 110
    check-cast v12, Landroid/widget/TextView;

    .line 111
    .line 112
    if-eqz v12, :cond_0

    .line 113
    .line 114
    const v1, 0x7f09032f

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    move-object v13, v2

    .line 122
    check-cast v13, Landroid/widget/TextView;

    .line 123
    .line 124
    if-eqz v13, :cond_0

    .line 125
    .line 126
    const v1, 0x7f090330

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    move-object v14, v2

    .line 134
    check-cast v14, Landroid/widget/TextView;

    .line 135
    .line 136
    if-eqz v14, :cond_0

    .line 137
    .line 138
    const v1, 0x7f0903b7

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    move-object v15, v2

    .line 146
    check-cast v15, Landroid/widget/TextView;

    .line 147
    .line 148
    if-eqz v15, :cond_0

    .line 149
    .line 150
    new-instance v3, Lw1/c;

    .line 151
    .line 152
    move-object v4, v0

    .line 153
    check-cast v4, Landroid/widget/ScrollView;

    .line 154
    .line 155
    invoke-direct/range {v3 .. v15}, Lw1/c;-><init>(Landroid/widget/ScrollView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 156
    .line 157
    .line 158
    move-object/from16 v2, p0

    .line 159
    .line 160
    iput-object v3, v2, LE1/I;->b:Lw1/c;

    .line 161
    .line 162
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    const-string v0, "getRoot(...)"

    .line 166
    .line 167
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    return-object v4

    .line 171
    :cond_0
    move-object/from16 v2, p0

    .line 172
    .line 173
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    new-instance v1, Ljava/lang/NullPointerException;

    .line 182
    .line 183
    const-string v3, "Missing required view with ID: "

    .line 184
    .line 185
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw v1
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
    iput-object v0, p0, LE1/I;->b:Lw1/c;

    .line 6
    .line 7
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 22

    .line 1
    move-object/from16 v4, p0

    .line 2
    .line 3
    const-string v0, "v"

    .line 4
    .line 5
    move-object/from16 v1, p1

    .line 6
    .line 7
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v11

    .line 14
    const-string v0, "requireContext(...)"

    .line 15
    .line 16
    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v1, "<this>"

    .line 20
    .line 21
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object v1, LS1/d;->a:Ljava/util/Set;

    .line 25
    .line 26
    const-string v12, "ctx"

    .line 27
    .line 28
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v11}, LS1/d;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, "utilities_json"

    .line 36
    .line 37
    const-string v3, "{}"

    .line 38
    .line 39
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v1}, LS1/d;->t(Ljava/lang/String;)LG1/s;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-instance v10, LE1/j;

    .line 48
    .line 49
    const/4 v13, 0x2

    .line 50
    invoke-direct {v10, v11, v13}, LE1/j;-><init>(Landroid/content/Context;I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    sget-object v0, LG1/q;->a:Ljava/util/List;

    .line 65
    .line 66
    sget-object v0, LG1/o;->g:Lkotlin/enums/EnumEntries;

    .line 67
    .line 68
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 69
    .line 70
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    const/16 v14, 0x10

    .line 79
    .line 80
    invoke-static {v3, v14}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 85
    .line 86
    .line 87
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_2

    .line 96
    .line 97
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    move-object v5, v3

    .line 102
    check-cast v5, LG1/o;

    .line 103
    .line 104
    sget-object v6, LG1/q;->a:Ljava/util/List;

    .line 105
    .line 106
    new-instance v9, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v15

    .line 119
    if-eqz v15, :cond_1

    .line 120
    .line 121
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v15

    .line 125
    move-object v13, v15

    .line 126
    check-cast v13, LG1/n;

    .line 127
    .line 128
    iget-object v13, v13, LG1/n;->b:LG1/o;

    .line 129
    .line 130
    if-ne v13, v5, :cond_0

    .line 131
    .line 132
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    :cond_0
    const/4 v13, 0x2

    .line 136
    goto :goto_1

    .line 137
    :cond_1
    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    const/4 v13, 0x2

    .line 141
    goto :goto_0

    .line 142
    :cond_2
    sget-object v0, LG1/o;->g:Lkotlin/enums/EnumEntries;

    .line 143
    .line 144
    new-instance v13, Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    invoke-direct {v13, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 151
    .line 152
    .line 153
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    if-eqz v3, :cond_4

    .line 162
    .line 163
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    check-cast v3, LG1/o;

    .line 168
    .line 169
    new-instance v5, LG1/r;

    .line 170
    .line 171
    sget-object v6, LG1/q;->c:Ljava/util/LinkedHashMap;

    .line 172
    .line 173
    invoke-static {v6, v3}, Lkotlin/collections/MapsKt;->a(Ljava/util/Map;Ljava/lang/Enum;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    check-cast v6, Ljava/lang/Number;

    .line 178
    .line 179
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v9

    .line 187
    check-cast v9, Ljava/util/List;

    .line 188
    .line 189
    if-nez v9, :cond_3

    .line 190
    .line 191
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 192
    .line 193
    .line 194
    move-result-object v9

    .line 195
    :cond_3
    invoke-direct {v5, v3, v6, v9}, LG1/r;-><init>(LG1/o;ILjava/util/List;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_4
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    invoke-static {v0, v14}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 215
    .line 216
    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    const/4 v3, 0x0

    .line 224
    :goto_3
    if-ge v3, v0, :cond_5

    .line 225
    .line 226
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    add-int/lit8 v3, v3, 0x1

    .line 231
    .line 232
    check-cast v5, LG1/r;

    .line 233
    .line 234
    iget-object v5, v5, LG1/r;->a:LG1/o;

    .line 235
    .line 236
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 237
    .line 238
    invoke-static {v5, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    goto :goto_3

    .line 254
    :cond_5
    invoke-static {v2}, Lkotlin/collections/MapsKt;->c(Ljava/util/LinkedHashMap;)Ljava/util/Map;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 259
    .line 260
    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 261
    .line 262
    .line 263
    iput-object v1, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 264
    .line 265
    iget-object v1, v4, LE1/I;->b:Lw1/c;

    .line 266
    .line 267
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    iget-object v1, v1, Lw1/c;->h:Landroid/view/View;

    .line 271
    .line 272
    check-cast v1, Landroid/widget/LinearLayout;

    .line 273
    .line 274
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    const/4 v2, 0x0

    .line 282
    :goto_4
    const/4 v3, 0x1

    .line 283
    if-ge v2, v1, :cond_6

    .line 284
    .line 285
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v5

    .line 289
    add-int/lit8 v16, v2, 0x1

    .line 290
    .line 291
    move-object v2, v5

    .line 292
    check-cast v2, LG1/r;

    .line 293
    .line 294
    iget-object v6, v2, LG1/r;->c:Ljava/util/List;

    .line 295
    .line 296
    new-instance v5, Landroid/widget/LinearLayout;

    .line 297
    .line 298
    invoke-direct {v5, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 302
    .line 303
    .line 304
    const v3, 0x7f08008b

    .line 305
    .line 306
    .line 307
    invoke-virtual {v5, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 308
    .line 309
    .line 310
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 311
    .line 312
    const/4 v14, -0x1

    .line 313
    const/4 v15, -0x2

    .line 314
    invoke-direct {v3, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 315
    .line 316
    .line 317
    const/16 v14, 0xc

    .line 318
    .line 319
    invoke-virtual {v4, v14}, LE1/I;->c(I)I

    .line 320
    .line 321
    .line 322
    move-result v15

    .line 323
    iput v15, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 324
    .line 325
    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    .line 327
    .line 328
    new-instance v15, Landroid/widget/LinearLayout;

    .line 329
    .line 330
    invoke-direct {v15, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 331
    .line 332
    .line 333
    const/4 v3, 0x0

    .line 334
    invoke-virtual {v15, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 335
    .line 336
    .line 337
    const/16 v3, 0x10

    .line 338
    .line 339
    invoke-virtual {v15, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v4, v3}, LE1/I;->c(I)I

    .line 343
    .line 344
    .line 345
    move-result v14

    .line 346
    move-object/from16 v18, v0

    .line 347
    .line 348
    invoke-virtual {v4, v3}, LE1/I;->c(I)I

    .line 349
    .line 350
    .line 351
    move-result v0

    .line 352
    move/from16 v19, v1

    .line 353
    .line 354
    invoke-virtual {v4, v3}, LE1/I;->c(I)I

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    move-object/from16 v20, v6

    .line 359
    .line 360
    invoke-virtual {v4, v3}, LE1/I;->c(I)I

    .line 361
    .line 362
    .line 363
    move-result v6

    .line 364
    invoke-virtual {v15, v14, v0, v1, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 365
    .line 366
    .line 367
    const/4 v0, 0x1

    .line 368
    invoke-virtual {v15, v0}, Landroid/view/View;->setClickable(Z)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v15, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 372
    .line 373
    .line 374
    new-instance v0, Landroid/widget/TextView;

    .line 375
    .line 376
    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 377
    .line 378
    .line 379
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 380
    .line 381
    const/high16 v6, 0x3f800000    # 1.0f

    .line 382
    .line 383
    const/4 v3, 0x0

    .line 384
    const/4 v14, -0x2

    .line 385
    invoke-direct {v1, v3, v14, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    .line 390
    .line 391
    iget v1, v2, LG1/r;->b:I

    .line 392
    .line 393
    invoke-virtual {v4, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    .line 399
    .line 400
    const/high16 v1, 0x41600000    # 14.0f

    .line 401
    .line 402
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    const v3, 0x7f06031b

    .line 410
    .line 411
    .line 412
    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 413
    .line 414
    .line 415
    move-result-object v6

    .line 416
    invoke-virtual {v1, v3, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 421
    .line 422
    .line 423
    new-instance v3, Landroid/widget/TextView;

    .line 424
    .line 425
    invoke-direct {v3, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 426
    .line 427
    .line 428
    const v1, 0x7f1203d3

    .line 429
    .line 430
    .line 431
    invoke-virtual {v4, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    .line 437
    .line 438
    const/high16 v1, 0x41400000    # 12.0f

    .line 439
    .line 440
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    const v6, 0x7f060019

    .line 448
    .line 449
    .line 450
    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 451
    .line 452
    .line 453
    move-result-object v14

    .line 454
    invoke-virtual {v1, v6, v14}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 455
    .line 456
    .line 457
    move-result v1

    .line 458
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 459
    .line 460
    .line 461
    new-instance v1, Landroid/widget/LinearLayout;

    .line 462
    .line 463
    invoke-direct {v1, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 464
    .line 465
    .line 466
    const/4 v6, 0x1

    .line 467
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 468
    .line 469
    .line 470
    const/16 v14, 0x8

    .line 471
    .line 472
    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 473
    .line 474
    .line 475
    const/16 v14, 0xc

    .line 476
    .line 477
    invoke-virtual {v4, v14}, LE1/I;->c(I)I

    .line 478
    .line 479
    .line 480
    move-result v6

    .line 481
    move-object/from16 v17, v2

    .line 482
    .line 483
    invoke-virtual {v4, v14}, LE1/I;->c(I)I

    .line 484
    .line 485
    .line 486
    move-result v2

    .line 487
    invoke-virtual {v4, v14}, LE1/I;->c(I)I

    .line 488
    .line 489
    .line 490
    move-result v14

    .line 491
    move-object/from16 v21, v13

    .line 492
    .line 493
    const/4 v13, 0x0

    .line 494
    invoke-virtual {v1, v6, v13, v2, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v15, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v5, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 507
    .line 508
    .line 509
    new-instance v0, LE1/C;

    .line 510
    .line 511
    move-object v14, v5

    .line 512
    move-object/from16 v2, v17

    .line 513
    .line 514
    move-object/from16 v6, v20

    .line 515
    .line 516
    const/16 v17, 0x10

    .line 517
    .line 518
    move-object v5, v1

    .line 519
    move-object/from16 v1, v18

    .line 520
    .line 521
    invoke-direct/range {v0 .. v10}, LE1/C;-><init>(Ljava/util/Map;LG1/r;Landroid/widget/TextView;LE1/I;Landroid/widget/LinearLayout;Ljava/util/List;Landroid/content/Context;Landroid/view/LayoutInflater;Lkotlin/jvm/internal/Ref$ObjectRef;LE1/j;)V

    .line 522
    .line 523
    .line 524
    new-instance v2, LE1/D;

    .line 525
    .line 526
    invoke-direct {v2, v0, v13}, LE1/D;-><init>(LE1/C;I)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v15, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 530
    .line 531
    .line 532
    new-instance v2, LE1/D;

    .line 533
    .line 534
    const/4 v6, 0x1

    .line 535
    invoke-direct {v2, v0, v6}, LE1/D;-><init>(LE1/C;I)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 539
    .line 540
    .line 541
    iget-object v0, v4, LE1/I;->b:Lw1/c;

    .line 542
    .line 543
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 544
    .line 545
    .line 546
    iget-object v0, v0, Lw1/c;->h:Landroid/view/View;

    .line 547
    .line 548
    check-cast v0, Landroid/widget/LinearLayout;

    .line 549
    .line 550
    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 551
    .line 552
    .line 553
    move-object v0, v1

    .line 554
    move/from16 v2, v16

    .line 555
    .line 556
    move/from16 v14, v17

    .line 557
    .line 558
    move/from16 v1, v19

    .line 559
    .line 560
    move-object/from16 v13, v21

    .line 561
    .line 562
    goto/16 :goto_4

    .line 563
    .line 564
    :cond_6
    move v6, v3

    .line 565
    iget-object v0, v4, LE1/I;->b:Lw1/c;

    .line 566
    .line 567
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 568
    .line 569
    .line 570
    iget-object v0, v0, Lw1/c;->k:Landroid/view/View;

    .line 571
    .line 572
    check-cast v0, Landroid/widget/TextView;

    .line 573
    .line 574
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    const-string v1, "0.8.9"

    .line 578
    .line 579
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    .line 581
    .line 582
    new-instance v0, LA1/p;

    .line 583
    .line 584
    const/16 v1, 0xb

    .line 585
    .line 586
    invoke-direct {v0, v1, v4}, LA1/p;-><init>(ILjava/lang/Object;)V

    .line 587
    .line 588
    .line 589
    new-instance v1, LA1/e;

    .line 590
    .line 591
    const/16 v2, 0x1b

    .line 592
    .line 593
    invoke-direct {v1, v2}, LA1/e;-><init>(I)V

    .line 594
    .line 595
    .line 596
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    const-string v2, "onResult"

    .line 600
    .line 601
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    const-string v2, "onError"

    .line 605
    .line 606
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    new-instance v2, LA1/r;

    .line 610
    .line 611
    const/4 v3, 0x6

    .line 612
    invoke-direct {v2, v0, v11, v1, v3}, LA1/r;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 613
    .line 614
    .line 615
    new-instance v0, Landroid/os/Handler;

    .line 616
    .line 617
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 618
    .line 619
    .line 620
    move-result-object v3

    .line 621
    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 622
    .line 623
    .line 624
    new-instance v3, Ljava/lang/Thread;

    .line 625
    .line 626
    new-instance v5, LC1/A1;

    .line 627
    .line 628
    const/4 v7, 0x3

    .line 629
    invoke-direct {v5, v0, v2, v1, v7}, LC1/A1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 630
    .line 631
    .line 632
    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 633
    .line 634
    .line 635
    invoke-virtual {v3, v6}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 636
    .line 637
    .line 638
    const-string v0, "update-check"

    .line 639
    .line 640
    invoke-virtual {v3, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 644
    .line 645
    .line 646
    iget-object v0, v4, LE1/I;->b:Lw1/c;

    .line 647
    .line 648
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 649
    .line 650
    .line 651
    iget-object v0, v0, Lw1/c;->d:Landroid/widget/LinearLayout;

    .line 652
    .line 653
    new-instance v1, LC1/j;

    .line 654
    .line 655
    const/16 v2, 0x14

    .line 656
    .line 657
    invoke-direct {v1, v2, v11, v4}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 658
    .line 659
    .line 660
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 661
    .line 662
    .line 663
    iget-object v0, v4, LE1/I;->b:Lw1/c;

    .line 664
    .line 665
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 666
    .line 667
    .line 668
    iget-object v0, v0, Lw1/c;->a:Landroid/view/View;

    .line 669
    .line 670
    check-cast v0, Landroid/widget/LinearLayout;

    .line 671
    .line 672
    new-instance v1, LE1/F;

    .line 673
    .line 674
    const/4 v3, 0x0

    .line 675
    invoke-direct {v1, v4, v3}, LE1/F;-><init>(LE1/I;I)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 679
    .line 680
    .line 681
    iget-object v0, v4, LE1/I;->b:Lw1/c;

    .line 682
    .line 683
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 684
    .line 685
    .line 686
    iget-object v0, v0, Lw1/c;->b:Landroid/view/View;

    .line 687
    .line 688
    check-cast v0, Landroid/widget/LinearLayout;

    .line 689
    .line 690
    new-instance v1, LE1/F;

    .line 691
    .line 692
    invoke-direct {v1, v4, v6}, LE1/F;-><init>(LE1/I;I)V

    .line 693
    .line 694
    .line 695
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 696
    .line 697
    .line 698
    iget-object v0, v4, LE1/I;->b:Lw1/c;

    .line 699
    .line 700
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 701
    .line 702
    .line 703
    iget-object v0, v0, Lw1/c;->f:Landroid/view/View;

    .line 704
    .line 705
    check-cast v0, Landroid/widget/LinearLayout;

    .line 706
    .line 707
    new-instance v1, LE1/F;

    .line 708
    .line 709
    const/4 v2, 0x2

    .line 710
    invoke-direct {v1, v4, v2}, LE1/F;-><init>(LE1/I;I)V

    .line 711
    .line 712
    .line 713
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 714
    .line 715
    .line 716
    iget-object v0, v4, LE1/I;->b:Lw1/c;

    .line 717
    .line 718
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 719
    .line 720
    .line 721
    iget-object v0, v0, Lw1/c;->e:Landroid/widget/TextView;

    .line 722
    .line 723
    new-instance v1, LE1/F;

    .line 724
    .line 725
    invoke-direct {v1, v4, v7}, LE1/F;-><init>(LE1/I;I)V

    .line 726
    .line 727
    .line 728
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 729
    .line 730
    .line 731
    invoke-virtual {v4}, LE1/I;->e()V

    .line 732
    .line 733
    .line 734
    return-void
.end method
