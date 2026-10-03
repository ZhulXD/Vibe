.class public final Lcom/minhub/gamehub/hub/ImageViewerActivity;
.super LS1/c;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/minhub/gamehub/hub/ImageViewerActivity;",
        "LS1/c;",
        "<init>",
        "()V",
        "Y0/e",
        "C1/p1",
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
        "SMAP\nImageViewerActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageViewerActivity.kt\ncom/minhub/gamehub/hub/ImageViewerActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,148:1\n1#2:149\n*E\n"
    }
.end annotation


# static fields
.field public static final synthetic e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LS1/c;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final m(ZLandroid/widget/LinearLayout;Landroid/widget/TextView;Ljava/util/ArrayList;I)V
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 p2, 0x0

    .line 8
    :goto_0
    if-ge p2, p0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    if-ne p2, p4, :cond_0

    .line 15
    .line 16
    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const v0, 0x3eb33333    # 0.35f

    .line 20
    .line 21
    .line 22
    :goto_1
    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 p2, p2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-void

    .line 29
    :cond_2
    add-int/lit8 p4, p4, 0x1

    .line 30
    .line 31
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p3, " / "

    .line 44
    .line 45
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "image_urls"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "start_index"

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v3, "viewer_title"

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    const-string v1, ""

    .line 44
    .line 45
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const-string v4, "is_local"

    .line 50
    .line 51
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    const v4, 0x7f0c0023

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v4}, Le/j;->setContentView(I)V

    .line 59
    .line 60
    .line 61
    const v4, 0x7f09024a

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v4}, Le/j;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Landroidx/viewpager2/widget/ViewPager2;

    .line 69
    .line 70
    const v5, 0x7f090377

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v5}, Le/j;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    check-cast v5, Landroid/widget/TextView;

    .line 78
    .line 79
    const v6, 0x7f09013b

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v6}, Le/j;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    check-cast v6, Landroid/widget/LinearLayout;

    .line 87
    .line 88
    const v7, 0x7f0903ab

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v7}, Le/j;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    check-cast v7, Landroid/widget/TextView;

    .line 96
    .line 97
    const v8, 0x7f090082

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v8}, Le/j;->findViewById(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    check-cast v8, Landroid/widget/ImageButton;

    .line 105
    .line 106
    const v9, 0x7f090312

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v9}, Le/j;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    new-instance v10, LB1/b;

    .line 114
    .line 115
    const/4 v11, 0x1

    .line 116
    invoke-direct {v10, v11, p0}, LB1/b;-><init>(ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-static {v9, v10}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    const/16 v9, 0x8

    .line 130
    .line 131
    if-nez v1, :cond_2

    .line 132
    .line 133
    move v1, v2

    .line 134
    goto :goto_0

    .line 135
    :cond_2
    move v1, v9

    .line 136
    :goto_0
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    .line 138
    .line 139
    new-instance v1, LC1/V;

    .line 140
    .line 141
    const/4 v7, 0x1

    .line 142
    invoke-direct {v1, v7, p0}, LC1/V;-><init>(ILjava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v8, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    const/16 v7, 0xa

    .line 153
    .line 154
    if-gt v1, v7, :cond_3

    .line 155
    .line 156
    const/4 v1, 0x1

    .line 157
    goto :goto_1

    .line 158
    :cond_3
    move v1, v2

    .line 159
    :goto_1
    if-eqz v1, :cond_4

    .line 160
    .line 161
    move v7, v2

    .line 162
    goto :goto_2

    .line 163
    :cond_4
    move v7, v9

    .line 164
    :goto_2
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 165
    .line 166
    .line 167
    if-eqz v1, :cond_5

    .line 168
    .line 169
    move v7, v9

    .line 170
    goto :goto_3

    .line 171
    :cond_5
    move v7, v2

    .line 172
    :goto_3
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 173
    .line 174
    .line 175
    if-eqz v1, :cond_8

    .line 176
    .line 177
    const/4 v7, 0x7

    .line 178
    int-to-float v7, v7

    .line 179
    invoke-virtual {p0}, Le/j;->getResources()Landroid/content/res/Resources;

    .line 180
    .line 181
    .line 182
    move-result-object v8

    .line 183
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    .line 188
    .line 189
    mul-float/2addr v7, v8

    .line 190
    float-to-int v7, v7

    .line 191
    int-to-float v8, v9

    .line 192
    invoke-virtual {p0}, Le/j;->getResources()Landroid/content/res/Resources;

    .line 193
    .line 194
    .line 195
    move-result-object v9

    .line 196
    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 197
    .line 198
    .line 199
    move-result-object v9

    .line 200
    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    .line 201
    .line 202
    mul-float/2addr v8, v9

    .line 203
    float-to-int v8, v8

    .line 204
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 205
    .line 206
    .line 207
    move-result v9

    .line 208
    move v10, v2

    .line 209
    :goto_4
    if-ge v10, v9, :cond_8

    .line 210
    .line 211
    new-instance v11, Landroid/view/View;

    .line 212
    .line 213
    invoke-direct {v11, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 214
    .line 215
    .line 216
    const v12, 0x7f0800b5

    .line 217
    .line 218
    .line 219
    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundResource(I)V

    .line 220
    .line 221
    .line 222
    if-ne v10, v0, :cond_6

    .line 223
    .line 224
    const/high16 v12, 0x3f800000    # 1.0f

    .line 225
    .line 226
    goto :goto_5

    .line 227
    :cond_6
    const v12, 0x3eb33333    # 0.35f

    .line 228
    .line 229
    .line 230
    :goto_5
    invoke-virtual {v11, v12}, Landroid/view/View;->setAlpha(F)V

    .line 231
    .line 232
    .line 233
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 234
    .line 235
    invoke-direct {v12, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 236
    .line 237
    .line 238
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    .line 239
    .line 240
    .line 241
    move-result v13

    .line 242
    if-ge v10, v13, :cond_7

    .line 243
    .line 244
    invoke-virtual {v12, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 245
    .line 246
    .line 247
    :cond_7
    invoke-virtual {v11, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 251
    .line 252
    .line 253
    add-int/lit8 v10, v10, 0x1

    .line 254
    .line 255
    goto :goto_4

    .line 256
    :cond_8
    invoke-static {v1, v6, v5, p1, v0}, Lcom/minhub/gamehub/hub/ImageViewerActivity;->m(ZLandroid/widget/LinearLayout;Landroid/widget/TextView;Ljava/util/ArrayList;I)V

    .line 257
    .line 258
    .line 259
    new-instance v7, LC1/p1;

    .line 260
    .line 261
    invoke-direct {v7, p1, v3}, LC1/p1;-><init>(Ljava/util/ArrayList;Z)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v4, v7}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(LP/W;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v4, v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->b(IZ)V

    .line 268
    .line 269
    .line 270
    new-instance v0, LC1/q1;

    .line 271
    .line 272
    invoke-direct {v0, v1, v6, v5, p1}, LC1/q1;-><init>(ZLandroid/widget/LinearLayout;Landroid/widget/TextView;Ljava/util/ArrayList;)V

    .line 273
    .line 274
    .line 275
    iget-object p1, v4, Landroidx/viewpager2/widget/ViewPager2;->d:LX/b;

    .line 276
    .line 277
    iget-object p1, p1, LX/b;->b:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast p1, Ljava/util/ArrayList;

    .line 280
    .line 281
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    new-instance v0, LC1/r1;

    .line 289
    .line 290
    invoke-direct {v0, p0}, LC1/r1;-><init>(Lcom/minhub/gamehub/hub/ImageViewerActivity;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p1, p0, v0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 294
    .line 295
    .line 296
    return-void
.end method
