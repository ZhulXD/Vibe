.class public final LE1/B;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "LE1/B;",
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
        "SMAP\nTranslationSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TranslationSettingsFragment.kt\ncom/minhub/gamehub/hub/settings/TranslationSettingsFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,211:1\n1563#2:212\n1634#2,3:213\n1563#2:216\n1634#2,3:217\n1869#2,2:220\n1869#2,2:222\n257#3,2:224\n*S KotlinDebug\n*F\n+ 1 TranslationSettingsFragment.kt\ncom/minhub/gamehub/hub/settings/TranslationSettingsFragment\n*L\n51#1:212\n51#1:213,3\n52#1:216\n52#1:217,3\n127#1:220,2\n167#1:222,2\n206#1:224,2\n*E\n"
    }
.end annotation


# instance fields
.field public b:Lw1/j;


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


# virtual methods
.method public final b()V
    .locals 13

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
    const/16 v2, 0x20

    .line 21
    .line 22
    int-to-float v2, v2

    .line 23
    mul-float/2addr v2, v1

    .line 24
    float-to-int v2, v2

    .line 25
    const/16 v3, 0x8

    .line 26
    .line 27
    int-to-float v3, v3

    .line 28
    mul-float/2addr v3, v1

    .line 29
    float-to-int v4, v3

    .line 30
    iget-object v5, p0, LE1/B;->b:Lw1/j;

    .line 31
    .line 32
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object v5, v5, Lw1/j;->a:Landroid/widget/LinearLayout;

    .line 36
    .line 37
    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 38
    .line 39
    .line 40
    const v5, 0x7f1200b3

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    const-string v6, "#FFFFFF"

    .line 48
    .line 49
    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    const v5, 0x7f1200b4

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    const-string v6, "#FFFF00"

    .line 61
    .line 62
    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    const v5, 0x7f1200b0

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    const-string v6, "#00FF00"

    .line 74
    .line 75
    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    const v5, 0x7f1200b2

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    const-string v6, "#EF4444"

    .line 87
    .line 88
    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 89
    .line 90
    .line 91
    move-result-object v10

    .line 92
    const v5, 0x7f1200af

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    const-string v6, "#00BFFF"

    .line 100
    .line 101
    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 102
    .line 103
    .line 104
    move-result-object v11

    .line 105
    const v5, 0x7f1200b1

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    const-string v6, "#FFA500"

    .line 113
    .line 114
    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 115
    .line 116
    .line 117
    move-result-object v12

    .line 118
    filled-new-array/range {v7 .. v12}, [Lkotlin/Pair;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    if-eqz v6, :cond_1

    .line 135
    .line 136
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    check-cast v6, Lkotlin/Pair;

    .line 141
    .line 142
    invoke-virtual {v6}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    const-string v7, "component1(...)"

    .line 147
    .line 148
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    check-cast v6, Ljava/lang/String;

    .line 152
    .line 153
    invoke-static {v0}, LS1/d;->h(Landroid/content/Context;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    new-instance v8, Landroid/widget/FrameLayout;

    .line 162
    .line 163
    invoke-direct {v8, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 164
    .line 165
    .line 166
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 167
    .line 168
    invoke-direct {v9, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v9, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    .line 176
    .line 177
    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    .line 178
    .line 179
    invoke-direct {v9}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 180
    .line 181
    .line 182
    const/4 v10, 0x0

    .line 183
    invoke-virtual {v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v9, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 187
    .line 188
    .line 189
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    move-result v10

    .line 193
    invoke-virtual {v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 194
    .line 195
    .line 196
    const/4 v10, 0x3

    .line 197
    if-eqz v7, :cond_0

    .line 198
    .line 199
    int-to-float v7, v10

    .line 200
    mul-float/2addr v7, v1

    .line 201
    float-to-int v7, v7

    .line 202
    const/4 v10, -0x1

    .line 203
    invoke-virtual {v9, v7, v10}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 204
    .line 205
    .line 206
    goto :goto_1

    .line 207
    :cond_0
    int-to-float v7, v10

    .line 208
    mul-float/2addr v7, v1

    .line 209
    float-to-int v7, v7

    .line 210
    const-string v10, "#26FFFFFF"

    .line 211
    .line 212
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    move-result v10

    .line 216
    invoke-virtual {v9, v7, v10}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 217
    .line 218
    .line 219
    :goto_1
    invoke-virtual {v8, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 220
    .line 221
    .line 222
    new-instance v7, LE1/z;

    .line 223
    .line 224
    const/4 v9, 0x0

    .line 225
    invoke-direct {v7, v0, v6, p0, v9}, LE1/z;-><init>(Landroid/content/Context;Ljava/lang/String;LE1/B;I)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v8, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    .line 230
    .line 231
    iget-object v6, p0, LE1/B;->b:Lw1/j;

    .line 232
    .line 233
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    iget-object v6, v6, Lw1/j;->a:Landroid/widget/LinearLayout;

    .line 237
    .line 238
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 239
    .line 240
    .line 241
    goto :goto_0

    .line 242
    :cond_1
    return-void
.end method

.method public final c()V
    .locals 14

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
    const/16 v2, 0xa

    .line 21
    .line 22
    int-to-float v2, v2

    .line 23
    mul-float/2addr v2, v1

    .line 24
    const/16 v3, 0x8

    .line 25
    .line 26
    int-to-float v3, v3

    .line 27
    mul-float/2addr v3, v1

    .line 28
    float-to-int v3, v3

    .line 29
    iget-object v4, p0, LE1/B;->b:Lw1/j;

    .line 30
    .line 31
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object v4, v4, Lw1/j;->b:Landroid/widget/LinearLayout;

    .line 35
    .line 36
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 37
    .line 38
    .line 39
    const v4, 0x7f120420

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    const-string v5, "sub_film"

    .line 47
    .line 48
    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    const v6, 0x7f120421

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    const-string v7, "trans_only"

    .line 60
    .line 61
    invoke-static {v7, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    filled-new-array {v4, v6}, [Lkotlin/Pair;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-eqz v6, :cond_3

    .line 82
    .line 83
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    check-cast v6, Lkotlin/Pair;

    .line 88
    .line 89
    invoke-virtual {v6}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    const-string v8, "component1(...)"

    .line 94
    .line 95
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    check-cast v7, Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v6}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    check-cast v6, Ljava/lang/String;

    .line 105
    .line 106
    sget-object v8, LS1/d;->a:Ljava/util/Set;

    .line 107
    .line 108
    const-string v8, "<this>"

    .line 109
    .line 110
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const-string v8, "minhub_prefs"

    .line 114
    .line 115
    const/4 v9, 0x0

    .line 116
    invoke-virtual {v0, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    const-string v10, "trans_style"

    .line 121
    .line 122
    invoke-interface {v8, v10, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    if-nez v8, :cond_0

    .line 127
    .line 128
    move-object v8, v5

    .line 129
    :cond_0
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    new-instance v10, Landroid/widget/TextView;

    .line 134
    .line 135
    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 136
    .line 137
    .line 138
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 139
    .line 140
    const/4 v12, -0x2

    .line 141
    const/high16 v13, 0x3f800000    # 1.0f

    .line 142
    .line 143
    invoke-direct {v11, v9, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v11, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    .line 154
    .line 155
    const/16 v6, 0x11

    .line 156
    .line 157
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 158
    .line 159
    .line 160
    const/high16 v6, 0x41400000    # 12.0f

    .line 161
    .line 162
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 163
    .line 164
    .line 165
    const/16 v6, 0xc

    .line 166
    .line 167
    int-to-float v6, v6

    .line 168
    mul-float/2addr v6, v1

    .line 169
    float-to-int v6, v6

    .line 170
    float-to-int v11, v2

    .line 171
    invoke-virtual {v10, v6, v11, v6, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 172
    .line 173
    .line 174
    const/4 v6, -0x1

    .line 175
    if-eqz v8, :cond_1

    .line 176
    .line 177
    move v11, v6

    .line 178
    goto :goto_1

    .line 179
    :cond_1
    const-string v11, "#99FFFFFF"

    .line 180
    .line 181
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    move-result v11

    .line 185
    :goto_1
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 186
    .line 187
    .line 188
    new-instance v11, Landroid/graphics/drawable/GradientDrawable;

    .line 189
    .line 190
    invoke-direct {v11}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v11, v9}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v11, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 197
    .line 198
    .line 199
    const/4 v9, 0x2

    .line 200
    const-string v12, "#26FFFFFF"

    .line 201
    .line 202
    if-eqz v8, :cond_2

    .line 203
    .line 204
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    move-result v8

    .line 208
    invoke-virtual {v11, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 209
    .line 210
    .line 211
    int-to-float v8, v9

    .line 212
    mul-float/2addr v8, v1

    .line 213
    float-to-int v8, v8

    .line 214
    invoke-virtual {v11, v8, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 215
    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_2
    const-string v6, "#0DFFFFFF"

    .line 219
    .line 220
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    move-result v6

    .line 224
    invoke-virtual {v11, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 225
    .line 226
    .line 227
    int-to-float v6, v9

    .line 228
    mul-float/2addr v6, v1

    .line 229
    float-to-int v6, v6

    .line 230
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    move-result v8

    .line 234
    invoke-virtual {v11, v6, v8}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 235
    .line 236
    .line 237
    :goto_2
    invoke-virtual {v10, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 238
    .line 239
    .line 240
    new-instance v6, LE1/z;

    .line 241
    .line 242
    const/4 v8, 0x1

    .line 243
    invoke-direct {v6, v0, v7, p0, v8}, LE1/z;-><init>(Landroid/content/Context;Ljava/lang/String;LE1/B;I)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v10, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    .line 248
    .line 249
    iget-object v6, p0, LE1/B;->b:Lw1/j;

    .line 250
    .line 251
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    iget-object v6, v6, Lw1/j;->b:Landroid/widget/LinearLayout;

    .line 255
    .line 256
    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 257
    .line 258
    .line 259
    goto/16 :goto_0

    .line 260
    .line 261
    :cond_3
    return-void
.end method

.method public final d()V
    .locals 5

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
    iget-object v1, p0, LE1/B;->b:Lw1/j;

    .line 11
    .line 12
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, v1, Lw1/j;->j:Landroid/widget/TextView;

    .line 16
    .line 17
    invoke-static {v0}, LS1/d;->j(Landroid/content/Context;)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, "px"

    .line 30
    .line 31
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, LE1/B;->b:Lw1/j;

    .line 42
    .line 43
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v1, Lw1/j;->i:Landroid/widget/TextView;

    .line 47
    .line 48
    invoke-static {v0}, LS1/d;->j(Landroid/content/Context;)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    int-to-float v2, v2

    .line 53
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, LE1/B;->b:Lw1/j;

    .line 57
    .line 58
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, v1, Lw1/j;->i:Landroid/widget/TextView;

    .line 62
    .line 63
    invoke-static {v0}, LS1/d;->h(Landroid/content/Context;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, LE1/B;->b:Lw1/j;

    .line 75
    .line 76
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget-object v1, v1, Lw1/j;->i:Landroid/widget/TextView;

    .line 80
    .line 81
    invoke-static {v0}, LS1/d;->i(Landroid/content/Context;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    const/4 v3, 0x0

    .line 86
    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 91
    .line 92
    .line 93
    const v1, 0x7f12041b

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    const-string v2, "getString(...)"

    .line 101
    .line 102
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object v2, p0, LE1/B;->b:Lw1/j;

    .line 106
    .line 107
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    iget-object v2, v2, Lw1/j;->i:Landroid/widget/TextView;

    .line 111
    .line 112
    const-string v4, "<this>"

    .line 113
    .line 114
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const-string v4, "minhub_prefs"

    .line 118
    .line 119
    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    const-string v3, "trans_style"

    .line 124
    .line 125
    const-string v4, "sub_film"

    .line 126
    .line 127
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    if-nez v0, :cond_0

    .line 132
    .line 133
    move-object v0, v4

    .line 134
    :cond_0
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_1

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_1
    const-string v0, "\n"

    .line 142
    .line 143
    invoke-static {v1, v0}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    .line 149
    .line 150
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
    const p3, 0x7f0c0052

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
    const p2, 0x7f0901c0

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
    check-cast v2, Landroid/widget/LinearLayout;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    const p2, 0x7f0901d6

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
    check-cast v3, Landroid/widget/LinearLayout;

    .line 35
    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    const p2, 0x7f0901d7

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
    check-cast v4, Landroid/widget/LinearLayout;

    .line 47
    .line 48
    if-eqz v4, :cond_0

    .line 49
    .line 50
    const p2, 0x7f0902b4

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
    check-cast v5, Lcom/google/android/material/slider/Slider;

    .line 59
    .line 60
    if-eqz v5, :cond_0

    .line 61
    .line 62
    const p2, 0x7f0902c0

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
    check-cast v6, Landroid/widget/Spinner;

    .line 71
    .line 72
    if-eqz v6, :cond_0

    .line 73
    .line 74
    const p2, 0x7f0902c1

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
    check-cast v7, Landroid/widget/Spinner;

    .line 83
    .line 84
    if-eqz v7, :cond_0

    .line 85
    .line 86
    const p2, 0x7f0902c2

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    move-object v8, p3

    .line 94
    check-cast v8, Landroid/widget/Spinner;

    .line 95
    .line 96
    if-eqz v8, :cond_0

    .line 97
    .line 98
    const p2, 0x7f0902e2

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    move-object v9, p3

    .line 106
    check-cast v9, Landroid/widget/Switch;

    .line 107
    .line 108
    if-eqz v9, :cond_0

    .line 109
    .line 110
    const p2, 0x7f0903ac

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    move-object v10, p3

    .line 118
    check-cast v10, Landroid/widget/TextView;

    .line 119
    .line 120
    if-eqz v10, :cond_0

    .line 121
    .line 122
    const p2, 0x7f0903ad

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object p3

    .line 129
    move-object v11, p3

    .line 130
    check-cast v11, Landroid/widget/TextView;

    .line 131
    .line 132
    if-eqz v11, :cond_0

    .line 133
    .line 134
    new-instance v0, Lw1/j;

    .line 135
    .line 136
    move-object v1, p1

    .line 137
    check-cast v1, Landroid/widget/ScrollView;

    .line 138
    .line 139
    invoke-direct/range {v0 .. v11}, Lw1/j;-><init>(Landroid/widget/ScrollView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/google/android/material/slider/Slider;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Switch;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 140
    .line 141
    .line 142
    iput-object v0, p0, LE1/B;->b:Lw1/j;

    .line 143
    .line 144
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    const-string p1, "getRoot(...)"

    .line 148
    .line 149
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    return-object v1

    .line 153
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    new-instance p2, Ljava/lang/NullPointerException;

    .line 162
    .line 163
    const-string p3, "Missing required view with ID: "

    .line 164
    .line 165
    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
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
    iput-object v0, p0, LE1/B;->b:Lw1/j;

    .line 6
    .line 7
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11

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
    sget-object p2, LS1/l;->a:Ljava/util/List;

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, LS1/k;

    .line 41
    .line 42
    iget-object v1, v1, LS1/k;->a:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    const/4 v2, 0x0

    .line 62
    move v3, v2

    .line 63
    :goto_1
    if-ge v3, v1, :cond_d

    .line 64
    .line 65
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    add-int/lit8 v3, v3, 0x1

    .line 70
    .line 71
    check-cast v4, Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    const/16 v6, 0xca9

    .line 78
    .line 79
    if-eq v5, v6, :cond_b

    .line 80
    .line 81
    const/16 v6, 0xd1b

    .line 82
    .line 83
    if-eq v5, v6, :cond_9

    .line 84
    .line 85
    const/16 v6, 0xd37

    .line 86
    .line 87
    if-eq v5, v6, :cond_7

    .line 88
    .line 89
    const/16 v6, 0xd64

    .line 90
    .line 91
    if-eq v5, v6, :cond_5

    .line 92
    .line 93
    const/16 v6, 0xeb3

    .line 94
    .line 95
    if-eq v5, v6, :cond_3

    .line 96
    .line 97
    const/16 v6, 0xf2e

    .line 98
    .line 99
    if-eq v5, v6, :cond_1

    .line 100
    .line 101
    goto/16 :goto_2

    .line 102
    .line 103
    :cond_1
    const-string v5, "zh"

    .line 104
    .line 105
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-nez v5, :cond_2

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_2
    const v4, 0x7f120238

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    goto :goto_2

    .line 120
    :cond_3
    const-string v5, "vi"

    .line 121
    .line 122
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    if-nez v5, :cond_4

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_4
    const v4, 0x7f12023d

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    goto :goto_2

    .line 137
    :cond_5
    const-string v5, "ko"

    .line 138
    .line 139
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    if-nez v5, :cond_6

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_6
    const v4, 0x7f12023c

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    goto :goto_2

    .line 154
    :cond_7
    const-string v5, "ja"

    .line 155
    .line 156
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    if-nez v5, :cond_8

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_8
    const v4, 0x7f12023b

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    goto :goto_2

    .line 171
    :cond_9
    const-string v5, "id"

    .line 172
    .line 173
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    if-nez v5, :cond_a

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_a
    const v4, 0x7f12023a

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    goto :goto_2

    .line 188
    :cond_b
    const-string v5, "en"

    .line 189
    .line 190
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    if-nez v5, :cond_c

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_c
    const v4, 0x7f120239

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    :goto_2
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    goto/16 :goto_1

    .line 208
    .line 209
    :cond_d
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 210
    .line 211
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    const v4, 0x7f0c0066

    .line 216
    .line 217
    .line 218
    invoke-direct {v1, v3, v4, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 219
    .line 220
    .line 221
    const p2, 0x7f0c0067

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, p2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 225
    .line 226
    .line 227
    iget-object v3, p0, LE1/B;->b:Lw1/j;

    .line 228
    .line 229
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    iget-object v3, v3, Lw1/j;->h:Landroid/widget/Switch;

    .line 233
    .line 234
    invoke-static {p1}, LS1/d;->m(Landroid/content/Context;)Z

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 239
    .line 240
    .line 241
    iget-object v3, p0, LE1/B;->b:Lw1/j;

    .line 242
    .line 243
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    iget-object v3, v3, Lw1/j;->h:Landroid/widget/Switch;

    .line 247
    .line 248
    new-instance v5, LB1/f;

    .line 249
    .line 250
    const/4 v6, 0x2

    .line 251
    invoke-direct {v5, v6, p1, p0}, LB1/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v3, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 255
    .line 256
    .line 257
    invoke-static {p1}, LS1/d;->m(Landroid/content/Context;)Z

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    iget-object v5, p0, LE1/B;->b:Lw1/j;

    .line 262
    .line 263
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    iget-object v5, v5, Lw1/j;->c:Landroid/widget/LinearLayout;

    .line 267
    .line 268
    const-string v6, "layoutTransOptions"

    .line 269
    .line 270
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    if-eqz v3, :cond_e

    .line 274
    .line 275
    move v3, v2

    .line 276
    goto :goto_3

    .line 277
    :cond_e
    const/16 v3, 0x8

    .line 278
    .line 279
    :goto_3
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 280
    .line 281
    .line 282
    iget-object v3, p0, LE1/B;->b:Lw1/j;

    .line 283
    .line 284
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    iget-object v3, v3, Lw1/j;->f:Landroid/widget/Spinner;

    .line 288
    .line 289
    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 290
    .line 291
    .line 292
    iget-object v3, p0, LE1/B;->b:Lw1/j;

    .line 293
    .line 294
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    iget-object v3, v3, Lw1/j;->f:Landroid/widget/Spinner;

    .line 298
    .line 299
    invoke-static {p1}, LS1/d;->k(Landroid/content/Context;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v5

    .line 303
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 304
    .line 305
    .line 306
    move-result v5

    .line 307
    invoke-static {v5, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 308
    .line 309
    .line 310
    move-result v5

    .line 311
    invoke-virtual {v3, v5}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 312
    .line 313
    .line 314
    iget-object v3, p0, LE1/B;->b:Lw1/j;

    .line 315
    .line 316
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    iget-object v3, v3, Lw1/j;->g:Landroid/widget/Spinner;

    .line 320
    .line 321
    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 322
    .line 323
    .line 324
    iget-object v1, p0, LE1/B;->b:Lw1/j;

    .line 325
    .line 326
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    iget-object v1, v1, Lw1/j;->g:Landroid/widget/Spinner;

    .line 330
    .line 331
    invoke-static {p1}, LS1/d;->l(Landroid/content/Context;)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 336
    .line 337
    .line 338
    move-result v3

    .line 339
    invoke-static {v3, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 340
    .line 341
    .line 342
    move-result v3

    .line 343
    invoke-virtual {v1, v3}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {p0}, LE1/B;->c()V

    .line 347
    .line 348
    .line 349
    const-string v9, "Georgia"

    .line 350
    .line 351
    const-string v10, "Verdana"

    .line 352
    .line 353
    const-string v5, "Noto Sans"

    .line 354
    .line 355
    const-string v6, "Roboto"

    .line 356
    .line 357
    const-string v7, "Arial"

    .line 358
    .line 359
    const-string v8, "Courier New"

    .line 360
    .line 361
    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    iget-object v3, p0, LE1/B;->b:Lw1/j;

    .line 366
    .line 367
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 368
    .line 369
    .line 370
    iget-object v3, v3, Lw1/j;->e:Landroid/widget/Spinner;

    .line 371
    .line 372
    new-instance v5, Landroid/widget/ArrayAdapter;

    .line 373
    .line 374
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 375
    .line 376
    .line 377
    move-result-object v6

    .line 378
    invoke-direct {v5, v6, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v5, p2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 385
    .line 386
    .line 387
    iget-object p2, p0, LE1/B;->b:Lw1/j;

    .line 388
    .line 389
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    iget-object p2, p2, Lw1/j;->e:Landroid/widget/Spinner;

    .line 393
    .line 394
    invoke-static {p1}, LS1/d;->i(Landroid/content/Context;)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v3

    .line 398
    invoke-static {v3, v1}, Lkotlin/collections/ArraysKt;->s(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 399
    .line 400
    .line 401
    move-result v3

    .line 402
    invoke-static {v3, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 403
    .line 404
    .line 405
    move-result v2

    .line 406
    invoke-virtual {p2, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 407
    .line 408
    .line 409
    iget-object p2, p0, LE1/B;->b:Lw1/j;

    .line 410
    .line 411
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 412
    .line 413
    .line 414
    iget-object p2, p2, Lw1/j;->e:Landroid/widget/Spinner;

    .line 415
    .line 416
    new-instance v2, LE1/m;

    .line 417
    .line 418
    invoke-direct {v2, p1, v1, p0}, LE1/m;-><init>(Landroid/content/Context;[Ljava/lang/String;LE1/B;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {p2, v2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {p0}, LE1/B;->b()V

    .line 425
    .line 426
    .line 427
    iget-object p2, p0, LE1/B;->b:Lw1/j;

    .line 428
    .line 429
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 430
    .line 431
    .line 432
    iget-object p2, p2, Lw1/j;->d:Lcom/google/android/material/slider/Slider;

    .line 433
    .line 434
    invoke-static {p1}, LS1/d;->j(Landroid/content/Context;)I

    .line 435
    .line 436
    .line 437
    move-result v1

    .line 438
    int-to-float v1, v1

    .line 439
    invoke-virtual {p2, v1}, Lcom/google/android/material/slider/Slider;->setValue(F)V

    .line 440
    .line 441
    .line 442
    iget-object p2, p0, LE1/B;->b:Lw1/j;

    .line 443
    .line 444
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 445
    .line 446
    .line 447
    iget-object p2, p2, Lw1/j;->d:Lcom/google/android/material/slider/Slider;

    .line 448
    .line 449
    new-instance v1, LE1/y;

    .line 450
    .line 451
    invoke-direct {v1, p1, p0}, LE1/y;-><init>(Landroid/content/Context;LE1/B;)V

    .line 452
    .line 453
    .line 454
    iget-object p2, p2, La1/d;->n:Ljava/util/ArrayList;

    .line 455
    .line 456
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    iget-object p2, p0, LE1/B;->b:Lw1/j;

    .line 460
    .line 461
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 462
    .line 463
    .line 464
    iget-object p2, p2, Lw1/j;->f:Landroid/widget/Spinner;

    .line 465
    .line 466
    new-instance v1, LE1/A;

    .line 467
    .line 468
    const/4 v2, 0x0

    .line 469
    invoke-direct {v1, p1, v0, v2}, LE1/A;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {p2, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 473
    .line 474
    .line 475
    iget-object p2, p0, LE1/B;->b:Lw1/j;

    .line 476
    .line 477
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 478
    .line 479
    .line 480
    iget-object p2, p2, Lw1/j;->g:Landroid/widget/Spinner;

    .line 481
    .line 482
    new-instance v1, LE1/A;

    .line 483
    .line 484
    const/4 v2, 0x1

    .line 485
    invoke-direct {v1, p1, v0, v2}, LE1/A;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {p2, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {p0}, LE1/B;->d()V

    .line 492
    .line 493
    .line 494
    return-void
.end method
