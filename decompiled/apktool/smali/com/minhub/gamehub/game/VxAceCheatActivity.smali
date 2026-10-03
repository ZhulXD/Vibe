.class public final Lcom/minhub/gamehub/game/VxAceCheatActivity;
.super LS1/c;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/minhub/gamehub/game/VxAceCheatActivity;",
        "LS1/c;",
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
        "SMAP\nVxAceCheatActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VxAceCheatActivity.kt\ncom/minhub/gamehub/game/VxAceCheatActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,344:1\n1#2:345\n1878#3,3:346\n1878#3,3:349\n1878#3,3:352\n*S KotlinDebug\n*F\n+ 1 VxAceCheatActivity.kt\ncom/minhub/gamehub/game/VxAceCheatActivity\n*L\n266#1:346,3\n318#1:349,3\n278#1:352,3\n*E\n"
    }
.end annotation


# static fields
.field public static final synthetic o:I


# instance fields
.field public final e:Lcom/hatkid/mkxpz/cheat/CheatsManager;

.field public f:I

.field public g:I

.field public final h:Ljava/util/ArrayList;

.field public final i:Ljava/util/ArrayList;

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LS1/c;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/hatkid/mkxpz/cheat/CheatsManager;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/hatkid/mkxpz/cheat/CheatsManager;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/minhub/gamehub/game/VxAceCheatActivity;->e:Lcom/hatkid/mkxpz/cheat/CheatsManager;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/minhub/gamehub/game/VxAceCheatActivity;->f:I

    .line 13
    .line 14
    iput v0, p0, Lcom/minhub/gamehub/game/VxAceCheatActivity;->g:I

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/minhub/gamehub/game/VxAceCheatActivity;->h:Ljava/util/ArrayList;

    .line 22
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/minhub/gamehub/game/VxAceCheatActivity;->i:Ljava/util/ArrayList;

    .line 29
    .line 30
    const v0, -0x1fede9e0

    .line 31
    .line 32
    .line 33
    iput v0, p0, Lcom/minhub/gamehub/game/VxAceCheatActivity;->j:I

    .line 34
    .line 35
    const v0, 0x40ffffff    # 7.9999995f

    .line 36
    .line 37
    .line 38
    iput v0, p0, Lcom/minhub/gamehub/game/VxAceCheatActivity;->k:I

    .line 39
    .line 40
    const v0, -0xa0806

    .line 41
    .line 42
    .line 43
    iput v0, p0, Lcom/minhub/gamehub/game/VxAceCheatActivity;->l:I

    .line 44
    .line 45
    const v0, -0x10bbbc

    .line 46
    .line 47
    .line 48
    iput v0, p0, Lcom/minhub/gamehub/game/VxAceCheatActivity;->m:I

    .line 49
    .line 50
    const/high16 v0, -0x67000000

    .line 51
    .line 52
    iput v0, p0, Lcom/minhub/gamehub/game/VxAceCheatActivity;->n:I

    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final m(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/widget/TextView;
    .locals 5

    .line 1
    new-instance v0, Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lcom/minhub/gamehub/game/VxAceCheatActivity;->l:I

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    .line 13
    .line 14
    const/high16 p1, 0x41500000    # 13.0f

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 17
    .line 18
    .line 19
    const p1, 0x800013

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 23
    .line 24
    .line 25
    const/16 p1, 0x2c

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 32
    .line 33
    .line 34
    const/16 p1, 0x12

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/16 v2, 0xa

    .line 41
    .line 42
    invoke-virtual {p0, v2}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-virtual {p0, p1}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-virtual {p0, v2}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-virtual {v0, v1, v3, p1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 55
    .line 56
    .line 57
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    .line 58
    .line 59
    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 60
    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 64
    .line 65
    .line 66
    const v2, 0x18ffffff

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 70
    .line 71
    .line 72
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    .line 73
    .line 74
    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 81
    .line 82
    .line 83
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    .line 84
    .line 85
    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 86
    .line 87
    .line 88
    const v4, 0x10100a7

    .line 89
    .line 90
    .line 91
    filled-new-array {v4}, [I

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v3, v4, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 96
    .line 97
    .line 98
    new-array p1, v1, [I

    .line 99
    .line 100
    invoke-virtual {v3, p1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 104
    .line 105
    .line 106
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 107
    .line 108
    const/4 v1, -0x1

    .line 109
    const/4 v2, -0x2

    .line 110
    invoke-direct {p1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    .line 115
    .line 116
    new-instance p1, LC1/t1;

    .line 117
    .line 118
    const/4 v1, 0x2

    .line 119
    invoke-direct {p1, v1, p2}, LC1/t1;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    .line 124
    .line 125
    return-object v0
.end method

.method public final n(Z)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x6

    .line 11
    invoke-virtual {p0, v1}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    int-to-float v1, v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 17
    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget p1, p0, Lcom/minhub/gamehub/game/VxAceCheatActivity;->m:I

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 24
    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_0
    const/16 p1, 0x1e

    .line 28
    .line 29
    const/16 v1, 0xff

    .line 30
    .line 31
    invoke-static {p1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 36
    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    invoke-virtual {p0, p1}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iget v1, p0, Lcom/minhub/gamehub/game/VxAceCheatActivity;->k:I

    .line 44
    .line 45
    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 46
    .line 47
    .line 48
    return-object v0
.end method

.method public final o(I)I
    .locals 1

    .line 1
    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Le/j;->getResources()Landroid/content/res/Resources;

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

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Le/j;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/16 v2, 0x12c

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 21
    .line 22
    int-to-float v3, v3

    .line 23
    const v4, 0x3ee147ae    # 0.44f

    .line 24
    .line 25
    .line 26
    mul-float/2addr v3, v4

    .line 27
    float-to-int v3, v3

    .line 28
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 33
    .line 34
    int-to-float v1, v1

    .line 35
    const v3, 0x3f6147ae    # 0.88f

    .line 36
    .line 37
    .line 38
    mul-float/2addr v1, v3

    .line 39
    float-to-int v1, v1

    .line 40
    new-instance v3, Landroid/widget/FrameLayout;

    .line 41
    .line 42
    invoke-direct {v3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    iget v4, v0, Lcom/minhub/gamehub/game/VxAceCheatActivity;->n:I

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 48
    .line 49
    .line 50
    new-instance v4, Ly1/Z1;

    .line 51
    .line 52
    const/4 v5, 0x0

    .line 53
    invoke-direct {v4, v0, v5}, Ly1/Z1;-><init>(Lcom/minhub/gamehub/game/VxAceCheatActivity;I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    .line 58
    .line 59
    new-instance v10, Landroid/widget/LinearLayout;

    .line 60
    .line 61
    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    const/4 v4, 0x1

    .line 65
    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 66
    .line 67
    .line 68
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    .line 69
    .line 70
    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6, v5}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 74
    .line 75
    .line 76
    iget v7, v0, Lcom/minhub/gamehub/game/VxAceCheatActivity;->j:I

    .line 77
    .line 78
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 79
    .line 80
    .line 81
    const/16 v7, 0x10

    .line 82
    .line 83
    invoke-virtual {v0, v7}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    int-to-float v8, v8

    .line 88
    invoke-virtual {v6, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v4}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    iget v9, v0, Lcom/minhub/gamehub/game/VxAceCheatActivity;->k:I

    .line 96
    .line 97
    invoke-virtual {v6, v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v10, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 101
    .line 102
    .line 103
    const/16 v6, 0xe

    .line 104
    .line 105
    invoke-virtual {v0, v6}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    int-to-float v8, v8

    .line 110
    invoke-virtual {v10, v8}, Landroid/view/View;->setElevation(F)V

    .line 111
    .line 112
    .line 113
    new-instance v8, Lorg/renpy/android/b;

    .line 114
    .line 115
    const/4 v9, 0x4

    .line 116
    invoke-direct {v8, v9}, Lorg/renpy/android/b;-><init>(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v10, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    .line 121
    .line 122
    new-instance v15, Landroid/widget/LinearLayout;

    .line 123
    .line 124
    invoke-direct {v15, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v15, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v15, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 131
    .line 132
    .line 133
    const/16 v8, 0x12

    .line 134
    .line 135
    invoke-virtual {v0, v8}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 136
    .line 137
    .line 138
    move-result v11

    .line 139
    const/16 v12, 0xc

    .line 140
    .line 141
    invoke-virtual {v0, v12}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 142
    .line 143
    .line 144
    move-result v13

    .line 145
    const/16 v14, 0xa

    .line 146
    .line 147
    invoke-virtual {v0, v14}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    invoke-virtual {v0, v12}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    invoke-virtual {v15, v11, v13, v8, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 156
    .line 157
    .line 158
    new-instance v6, Landroid/widget/TextView;

    .line 159
    .line 160
    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 161
    .line 162
    .line 163
    const v8, 0x7f1200ac

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    .line 172
    .line 173
    iget v8, v0, Lcom/minhub/gamehub/game/VxAceCheatActivity;->l:I

    .line 174
    .line 175
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    .line 177
    .line 178
    const/high16 v11, 0x41500000    # 13.0f

    .line 179
    .line 180
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 181
    .line 182
    .line 183
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 184
    .line 185
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 186
    .line 187
    .line 188
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 189
    .line 190
    const/4 v13, -0x2

    .line 191
    const/high16 v12, 0x3f800000    # 1.0f

    .line 192
    .line 193
    invoke-direct {v11, v5, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v6, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v15, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 200
    .line 201
    .line 202
    new-instance v6, Landroid/widget/TextView;

    .line 203
    .line 204
    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 205
    .line 206
    .line 207
    const-string v11, "\u00d7"

    .line 208
    .line 209
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    .line 211
    .line 212
    const v11, -0x66000001

    .line 213
    .line 214
    .line 215
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    .line 217
    .line 218
    const/high16 v11, 0x41900000    # 18.0f

    .line 219
    .line 220
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 221
    .line 222
    .line 223
    const/16 v11, 0x8

    .line 224
    .line 225
    invoke-virtual {v0, v11}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 226
    .line 227
    .line 228
    move-result v12

    .line 229
    invoke-virtual {v0, v9}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 230
    .line 231
    .line 232
    move-result v13

    .line 233
    const/4 v14, 0x6

    .line 234
    invoke-virtual {v0, v14}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 235
    .line 236
    .line 237
    move-result v11

    .line 238
    invoke-virtual {v0, v9}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 239
    .line 240
    .line 241
    move-result v14

    .line 242
    invoke-virtual {v6, v12, v13, v11, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 243
    .line 244
    .line 245
    new-instance v11, Ly1/Z1;

    .line 246
    .line 247
    invoke-direct {v11, v0, v4}, Ly1/Z1;-><init>(Lcom/minhub/gamehub/game/VxAceCheatActivity;I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v6, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v15, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v10, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 257
    .line 258
    .line 259
    new-instance v6, Landroid/view/View;

    .line 260
    .line 261
    invoke-direct {v6, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 262
    .line 263
    .line 264
    const v11, 0x20ffffff

    .line 265
    .line 266
    .line 267
    invoke-virtual {v6, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 268
    .line 269
    .line 270
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 271
    .line 272
    invoke-virtual {v0, v4}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 273
    .line 274
    .line 275
    move-result v12

    .line 276
    const/4 v13, -0x1

    .line 277
    invoke-direct {v11, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v6, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v10, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 284
    .line 285
    .line 286
    new-instance v6, Landroid/widget/LinearLayout;

    .line 287
    .line 288
    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0, v9}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 295
    .line 296
    .line 297
    move-result v11

    .line 298
    invoke-virtual {v0, v7}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 299
    .line 300
    .line 301
    move-result v12

    .line 302
    invoke-virtual {v6, v5, v11, v5, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 303
    .line 304
    .line 305
    const v11, 0x7f12009e

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v11

    .line 312
    const-string v12, "getString(...)"

    .line 313
    .line 314
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0, v11}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->r(Ljava/lang/String;)Landroid/widget/TextView;

    .line 318
    .line 319
    .line 320
    move-result-object v11

    .line 321
    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 322
    .line 323
    .line 324
    new-instance v11, Ly1/b2;

    .line 325
    .line 326
    const/4 v14, 0x3

    .line 327
    invoke-direct {v11, v0, v14}, Ly1/b2;-><init>(Lcom/minhub/gamehub/game/VxAceCheatActivity;I)V

    .line 328
    .line 329
    .line 330
    move/from16 v20, v14

    .line 331
    .line 332
    const-string v14, "+1,000"

    .line 333
    .line 334
    invoke-virtual {v0, v14, v11}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->m(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/widget/TextView;

    .line 335
    .line 336
    .line 337
    move-result-object v11

    .line 338
    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 339
    .line 340
    .line 341
    new-instance v11, Ly1/b2;

    .line 342
    .line 343
    invoke-direct {v11, v0, v9}, Ly1/b2;-><init>(Lcom/minhub/gamehub/game/VxAceCheatActivity;I)V

    .line 344
    .line 345
    .line 346
    const-string v14, "+10,000"

    .line 347
    .line 348
    invoke-virtual {v0, v14, v11}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->m(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/widget/TextView;

    .line 349
    .line 350
    .line 351
    move-result-object v11

    .line 352
    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 353
    .line 354
    .line 355
    new-instance v11, Ly1/b2;

    .line 356
    .line 357
    const/4 v14, 0x5

    .line 358
    invoke-direct {v11, v0, v14}, Ly1/b2;-><init>(Lcom/minhub/gamehub/game/VxAceCheatActivity;I)V

    .line 359
    .line 360
    .line 361
    move/from16 v21, v14

    .line 362
    .line 363
    const-string v14, "+9,999,999"

    .line 364
    .line 365
    invoke-virtual {v0, v14, v11}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->m(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/widget/TextView;

    .line 366
    .line 367
    .line 368
    move-result-object v11

    .line 369
    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 370
    .line 371
    .line 372
    const v11, 0x7f12009d

    .line 373
    .line 374
    .line 375
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v11

    .line 379
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v0, v11}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->r(Ljava/lang/String;)Landroid/widget/TextView;

    .line 383
    .line 384
    .line 385
    move-result-object v11

    .line 386
    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 387
    .line 388
    .line 389
    const v11, 0x7f120090

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v11

    .line 396
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    new-instance v14, Ly1/b2;

    .line 400
    .line 401
    const/4 v13, 0x6

    .line 402
    invoke-direct {v14, v0, v13}, Ly1/b2;-><init>(Lcom/minhub/gamehub/game/VxAceCheatActivity;I)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v0, v11, v14}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->m(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/widget/TextView;

    .line 406
    .line 407
    .line 408
    move-result-object v11

    .line 409
    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 410
    .line 411
    .line 412
    const v11, 0x7f120091

    .line 413
    .line 414
    .line 415
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v11

    .line 419
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    new-instance v13, Ly1/b2;

    .line 423
    .line 424
    const/16 v14, 0x8

    .line 425
    .line 426
    invoke-direct {v13, v0, v14}, Ly1/b2;-><init>(Lcom/minhub/gamehub/game/VxAceCheatActivity;I)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v0, v11, v13}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->m(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/widget/TextView;

    .line 430
    .line 431
    .line 432
    move-result-object v11

    .line 433
    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 434
    .line 435
    .line 436
    const v11, 0x7f12008f

    .line 437
    .line 438
    .line 439
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v11

    .line 443
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    new-instance v13, Ly1/b2;

    .line 447
    .line 448
    const/16 v14, 0x9

    .line 449
    .line 450
    invoke-direct {v13, v0, v14}, Ly1/b2;-><init>(Lcom/minhub/gamehub/game/VxAceCheatActivity;I)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v0, v11, v13}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->m(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/widget/TextView;

    .line 454
    .line 455
    .line 456
    move-result-object v11

    .line 457
    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 458
    .line 459
    .line 460
    const v11, 0x7f12009f

    .line 461
    .line 462
    .line 463
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v11

    .line 467
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v0, v11}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->r(Ljava/lang/String;)Landroid/widget/TextView;

    .line 471
    .line 472
    .line 473
    move-result-object v11

    .line 474
    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 475
    .line 476
    .line 477
    new-instance v11, Ly1/b2;

    .line 478
    .line 479
    const/16 v13, 0xa

    .line 480
    .line 481
    invoke-direct {v11, v0, v13}, Ly1/b2;-><init>(Lcom/minhub/gamehub/game/VxAceCheatActivity;I)V

    .line 482
    .line 483
    .line 484
    const-string v13, "Items +10"

    .line 485
    .line 486
    invoke-virtual {v0, v13, v11}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->m(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/widget/TextView;

    .line 487
    .line 488
    .line 489
    move-result-object v11

    .line 490
    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 491
    .line 492
    .line 493
    new-instance v11, Ly1/b2;

    .line 494
    .line 495
    const/4 v13, 0x7

    .line 496
    invoke-direct {v11, v0, v13}, Ly1/b2;-><init>(Lcom/minhub/gamehub/game/VxAceCheatActivity;I)V

    .line 497
    .line 498
    .line 499
    const-string v14, "Items +99"

    .line 500
    .line 501
    invoke-virtual {v0, v14, v11}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->m(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/widget/TextView;

    .line 502
    .line 503
    .line 504
    move-result-object v11

    .line 505
    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 506
    .line 507
    .line 508
    new-instance v11, Ly1/b2;

    .line 509
    .line 510
    const/16 v14, 0xb

    .line 511
    .line 512
    invoke-direct {v11, v0, v14}, Ly1/b2;-><init>(Lcom/minhub/gamehub/game/VxAceCheatActivity;I)V

    .line 513
    .line 514
    .line 515
    const-string v14, "Weapons +10"

    .line 516
    .line 517
    invoke-virtual {v0, v14, v11}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->m(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/widget/TextView;

    .line 518
    .line 519
    .line 520
    move-result-object v11

    .line 521
    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 522
    .line 523
    .line 524
    new-instance v11, Ly1/b2;

    .line 525
    .line 526
    const/16 v14, 0xc

    .line 527
    .line 528
    invoke-direct {v11, v0, v14}, Ly1/b2;-><init>(Lcom/minhub/gamehub/game/VxAceCheatActivity;I)V

    .line 529
    .line 530
    .line 531
    const-string v14, "Weapons +99"

    .line 532
    .line 533
    invoke-virtual {v0, v14, v11}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->m(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/widget/TextView;

    .line 534
    .line 535
    .line 536
    move-result-object v11

    .line 537
    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 538
    .line 539
    .line 540
    new-instance v11, Ly1/b2;

    .line 541
    .line 542
    const/16 v14, 0xd

    .line 543
    .line 544
    invoke-direct {v11, v0, v14}, Ly1/b2;-><init>(Lcom/minhub/gamehub/game/VxAceCheatActivity;I)V

    .line 545
    .line 546
    .line 547
    const-string v14, "Armors +10"

    .line 548
    .line 549
    invoke-virtual {v0, v14, v11}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->m(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/widget/TextView;

    .line 550
    .line 551
    .line 552
    move-result-object v11

    .line 553
    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 554
    .line 555
    .line 556
    new-instance v11, Ly1/b2;

    .line 557
    .line 558
    const/16 v14, 0xe

    .line 559
    .line 560
    invoke-direct {v11, v0, v14}, Ly1/b2;-><init>(Lcom/minhub/gamehub/game/VxAceCheatActivity;I)V

    .line 561
    .line 562
    .line 563
    const-string v14, "Armors +99"

    .line 564
    .line 565
    invoke-virtual {v0, v14, v11}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->m(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/widget/TextView;

    .line 566
    .line 567
    .line 568
    move-result-object v11

    .line 569
    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 570
    .line 571
    .line 572
    const v11, 0x7f1200a0

    .line 573
    .line 574
    .line 575
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v11

    .line 579
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {v0, v11}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->r(Ljava/lang/String;)Landroid/widget/TextView;

    .line 583
    .line 584
    .line 585
    move-result-object v11

    .line 586
    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 587
    .line 588
    .line 589
    new-instance v11, Ly1/a2;

    .line 590
    .line 591
    invoke-direct {v11, v0, v4}, Ly1/a2;-><init>(Lcom/minhub/gamehub/game/VxAceCheatActivity;I)V

    .line 592
    .line 593
    .line 594
    iget-object v14, v0, Lcom/minhub/gamehub/game/VxAceCheatActivity;->h:Ljava/util/ArrayList;

    .line 595
    .line 596
    invoke-virtual {v0, v14, v11}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->p(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function1;)Landroid/widget/LinearLayout;

    .line 597
    .line 598
    .line 599
    move-result-object v11

    .line 600
    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 601
    .line 602
    .line 603
    new-instance v11, Ly1/b2;

    .line 604
    .line 605
    const/16 v14, 0xf

    .line 606
    .line 607
    invoke-direct {v11, v0, v14}, Ly1/b2;-><init>(Lcom/minhub/gamehub/game/VxAceCheatActivity;I)V

    .line 608
    .line 609
    .line 610
    const-string v14, "Level +1"

    .line 611
    .line 612
    invoke-virtual {v0, v14, v11}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->m(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/widget/TextView;

    .line 613
    .line 614
    .line 615
    move-result-object v11

    .line 616
    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 617
    .line 618
    .line 619
    new-instance v11, Ly1/b2;

    .line 620
    .line 621
    invoke-direct {v11, v0, v7}, Ly1/b2;-><init>(Lcom/minhub/gamehub/game/VxAceCheatActivity;I)V

    .line 622
    .line 623
    .line 624
    const-string v14, "Level +5"

    .line 625
    .line 626
    invoke-virtual {v0, v14, v11}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->m(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/widget/TextView;

    .line 627
    .line 628
    .line 629
    move-result-object v11

    .line 630
    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 631
    .line 632
    .line 633
    new-instance v11, Ly1/b2;

    .line 634
    .line 635
    const/16 v14, 0x11

    .line 636
    .line 637
    invoke-direct {v11, v0, v14}, Ly1/b2;-><init>(Lcom/minhub/gamehub/game/VxAceCheatActivity;I)V

    .line 638
    .line 639
    .line 640
    move/from16 v16, v13

    .line 641
    .line 642
    const-string v13, "Level +10"

    .line 643
    .line 644
    invoke-virtual {v0, v13, v11}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->m(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/widget/TextView;

    .line 645
    .line 646
    .line 647
    move-result-object v11

    .line 648
    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 649
    .line 650
    .line 651
    const v11, 0x7f1200a2

    .line 652
    .line 653
    .line 654
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 655
    .line 656
    .line 657
    move-result-object v11

    .line 658
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 659
    .line 660
    .line 661
    invoke-virtual {v0, v11}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->r(Ljava/lang/String;)Landroid/widget/TextView;

    .line 662
    .line 663
    .line 664
    move-result-object v11

    .line 665
    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 666
    .line 667
    .line 668
    new-instance v11, Ly1/a2;

    .line 669
    .line 670
    invoke-direct {v11, v0, v5}, Ly1/a2;-><init>(Lcom/minhub/gamehub/game/VxAceCheatActivity;I)V

    .line 671
    .line 672
    .line 673
    iget-object v13, v0, Lcom/minhub/gamehub/game/VxAceCheatActivity;->i:Ljava/util/ArrayList;

    .line 674
    .line 675
    invoke-virtual {v0, v13, v11}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->p(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function1;)Landroid/widget/LinearLayout;

    .line 676
    .line 677
    .line 678
    move-result-object v11

    .line 679
    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 680
    .line 681
    .line 682
    const v11, 0x7f1200a9

    .line 683
    .line 684
    .line 685
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v11

    .line 689
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 690
    .line 691
    .line 692
    move-result-object v13

    .line 693
    invoke-static {v11, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 694
    .line 695
    .line 696
    move-result-object v22

    .line 697
    const v11, 0x7f1200aa

    .line 698
    .line 699
    .line 700
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v11

    .line 704
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 705
    .line 706
    .line 707
    move-result-object v13

    .line 708
    invoke-static {v11, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 709
    .line 710
    .line 711
    move-result-object v23

    .line 712
    const v11, 0x7f1200a5

    .line 713
    .line 714
    .line 715
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v11

    .line 719
    const/16 v17, 0x2

    .line 720
    .line 721
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 722
    .line 723
    .line 724
    move-result-object v13

    .line 725
    invoke-static {v11, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 726
    .line 727
    .line 728
    move-result-object v24

    .line 729
    const v11, 0x7f1200a6

    .line 730
    .line 731
    .line 732
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v11

    .line 736
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 737
    .line 738
    .line 739
    move-result-object v13

    .line 740
    invoke-static {v11, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 741
    .line 742
    .line 743
    move-result-object v25

    .line 744
    const v11, 0x7f1200a8

    .line 745
    .line 746
    .line 747
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object v11

    .line 751
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 752
    .line 753
    .line 754
    move-result-object v13

    .line 755
    invoke-static {v11, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 756
    .line 757
    .line 758
    move-result-object v26

    .line 759
    const v11, 0x7f1200ab

    .line 760
    .line 761
    .line 762
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object v11

    .line 766
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 767
    .line 768
    .line 769
    move-result-object v13

    .line 770
    invoke-static {v11, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 771
    .line 772
    .line 773
    move-result-object v27

    .line 774
    const v11, 0x7f1200a4

    .line 775
    .line 776
    .line 777
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 778
    .line 779
    .line 780
    move-result-object v11

    .line 781
    const/16 v19, 0x6

    .line 782
    .line 783
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 784
    .line 785
    .line 786
    move-result-object v4

    .line 787
    invoke-static {v11, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 788
    .line 789
    .line 790
    move-result-object v28

    .line 791
    const v4, 0x7f1200a7

    .line 792
    .line 793
    .line 794
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 795
    .line 796
    .line 797
    move-result-object v4

    .line 798
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 799
    .line 800
    .line 801
    move-result-object v11

    .line 802
    invoke-static {v4, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 803
    .line 804
    .line 805
    move-result-object v29

    .line 806
    filled-new-array/range {v22 .. v29}, [Lkotlin/Pair;

    .line 807
    .line 808
    .line 809
    move-result-object v4

    .line 810
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 811
    .line 812
    .line 813
    move-result-object v4

    .line 814
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 815
    .line 816
    .line 817
    move-result-object v4

    .line 818
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 819
    .line 820
    .line 821
    move-result v11

    .line 822
    if-eqz v11, :cond_3

    .line 823
    .line 824
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 825
    .line 826
    .line 827
    move-result-object v11

    .line 828
    check-cast v11, Lkotlin/Pair;

    .line 829
    .line 830
    invoke-virtual {v11}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 831
    .line 832
    .line 833
    move-result-object v16

    .line 834
    move-object/from16 v14, v16

    .line 835
    .line 836
    check-cast v14, Ljava/lang/String;

    .line 837
    .line 838
    invoke-virtual {v11}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 839
    .line 840
    .line 841
    move-result-object v11

    .line 842
    check-cast v11, Ljava/lang/Number;

    .line 843
    .line 844
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    .line 845
    .line 846
    .line 847
    move-result v11

    .line 848
    new-instance v9, Landroid/widget/LinearLayout;

    .line 849
    .line 850
    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 851
    .line 852
    .line 853
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 854
    .line 855
    .line 856
    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 857
    .line 858
    .line 859
    const/16 v5, 0x28

    .line 860
    .line 861
    invoke-virtual {v0, v5}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 862
    .line 863
    .line 864
    move-result v5

    .line 865
    invoke-virtual {v9, v5}, Landroid/view/View;->setMinimumHeight(I)V

    .line 866
    .line 867
    .line 868
    const/16 v5, 0x12

    .line 869
    .line 870
    invoke-virtual {v0, v5}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 871
    .line 872
    .line 873
    move-result v7

    .line 874
    move-object/from16 v22, v4

    .line 875
    .line 876
    const/4 v5, 0x4

    .line 877
    invoke-virtual {v0, v5}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 878
    .line 879
    .line 880
    move-result v4

    .line 881
    move-object/from16 v18, v3

    .line 882
    .line 883
    move-object/from16 v23, v15

    .line 884
    .line 885
    const/16 v15, 0xa

    .line 886
    .line 887
    invoke-virtual {v0, v15}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 888
    .line 889
    .line 890
    move-result v3

    .line 891
    invoke-virtual {v0, v5}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 892
    .line 893
    .line 894
    move-result v15

    .line 895
    invoke-virtual {v9, v7, v4, v3, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 896
    .line 897
    .line 898
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 899
    .line 900
    const/4 v4, -0x2

    .line 901
    const/4 v5, -0x1

    .line 902
    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 903
    .line 904
    .line 905
    invoke-virtual {v9, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 906
    .line 907
    .line 908
    new-instance v3, Landroid/widget/TextView;

    .line 909
    .line 910
    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 911
    .line 912
    .line 913
    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 914
    .line 915
    .line 916
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 917
    .line 918
    .line 919
    const/high16 v4, 0x41400000    # 12.0f

    .line 920
    .line 921
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 922
    .line 923
    .line 924
    const/16 v4, 0x10

    .line 925
    .line 926
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 927
    .line 928
    .line 929
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 930
    .line 931
    const/16 v5, 0x32

    .line 932
    .line 933
    invoke-virtual {v0, v5}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 934
    .line 935
    .line 936
    move-result v5

    .line 937
    const/4 v7, -0x1

    .line 938
    invoke-direct {v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 939
    .line 940
    .line 941
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 942
    .line 943
    .line 944
    invoke-virtual {v9, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 945
    .line 946
    .line 947
    new-instance v3, Landroid/widget/LinearLayout;

    .line 948
    .line 949
    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 950
    .line 951
    .line 952
    const/4 v4, 0x0

    .line 953
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 954
    .line 955
    .line 956
    const v5, 0x800015

    .line 957
    .line 958
    .line 959
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 960
    .line 961
    .line 962
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 963
    .line 964
    const/4 v7, -0x2

    .line 965
    const/high16 v14, 0x3f800000    # 1.0f

    .line 966
    .line 967
    invoke-direct {v5, v4, v7, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 968
    .line 969
    .line 970
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 971
    .line 972
    .line 973
    const-string v4, "+5"

    .line 974
    .line 975
    invoke-static {v4, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 976
    .line 977
    .line 978
    move-result-object v4

    .line 979
    const/16 v5, 0x14

    .line 980
    .line 981
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 982
    .line 983
    .line 984
    move-result-object v5

    .line 985
    const-string v7, "+20"

    .line 986
    .line 987
    invoke-static {v7, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 988
    .line 989
    .line 990
    move-result-object v5

    .line 991
    const/16 v7, 0x64

    .line 992
    .line 993
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 994
    .line 995
    .line 996
    move-result-object v7

    .line 997
    const-string v14, "+100"

    .line 998
    .line 999
    invoke-static {v14, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v7

    .line 1003
    filled-new-array {v4, v5, v7}, [Lkotlin/Pair;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v4

    .line 1007
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v4

    .line 1011
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v4

    .line 1015
    const/4 v5, 0x0

    .line 1016
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1017
    .line 1018
    .line 1019
    move-result v7

    .line 1020
    if-eqz v7, :cond_2

    .line 1021
    .line 1022
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v7

    .line 1026
    add-int/lit8 v14, v5, 0x1

    .line 1027
    .line 1028
    if-gez v5, :cond_0

    .line 1029
    .line 1030
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 1031
    .line 1032
    .line 1033
    :cond_0
    check-cast v7, Lkotlin/Pair;

    .line 1034
    .line 1035
    invoke-virtual {v7}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v15

    .line 1039
    check-cast v15, Ljava/lang/String;

    .line 1040
    .line 1041
    invoke-virtual {v7}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v7

    .line 1045
    check-cast v7, Ljava/lang/Number;

    .line 1046
    .line 1047
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 1048
    .line 1049
    .line 1050
    move-result v7

    .line 1051
    move-object/from16 v25, v4

    .line 1052
    .line 1053
    new-instance v4, Landroid/widget/TextView;

    .line 1054
    .line 1055
    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1056
    .line 1057
    .line 1058
    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1059
    .line 1060
    .line 1061
    const/16 v15, 0x11

    .line 1062
    .line 1063
    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 1064
    .line 1065
    .line 1066
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1067
    .line 1068
    .line 1069
    const/high16 v15, 0x41300000    # 11.0f

    .line 1070
    .line 1071
    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1072
    .line 1073
    .line 1074
    move/from16 v26, v5

    .line 1075
    .line 1076
    const/4 v15, 0x0

    .line 1077
    invoke-virtual {v0, v15}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->n(Z)Landroid/graphics/drawable/GradientDrawable;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v5

    .line 1081
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1082
    .line 1083
    .line 1084
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 1085
    .line 1086
    const/16 v15, 0x2e

    .line 1087
    .line 1088
    invoke-virtual {v0, v15}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 1089
    .line 1090
    .line 1091
    move-result v15

    .line 1092
    move/from16 v27, v8

    .line 1093
    .line 1094
    const/16 v8, 0x1c

    .line 1095
    .line 1096
    invoke-virtual {v0, v8}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 1097
    .line 1098
    .line 1099
    move-result v8

    .line 1100
    invoke-direct {v5, v15, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1101
    .line 1102
    .line 1103
    const/4 v8, 0x4

    .line 1104
    if-lez v26, :cond_1

    .line 1105
    .line 1106
    invoke-virtual {v0, v8}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 1107
    .line 1108
    .line 1109
    move-result v15

    .line 1110
    iput v15, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1111
    .line 1112
    :cond_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1113
    .line 1114
    .line 1115
    new-instance v5, Ly1/d2;

    .line 1116
    .line 1117
    invoke-direct {v5, v0, v11, v7}, Ly1/d2;-><init>(Lcom/minhub/gamehub/game/VxAceCheatActivity;II)V

    .line 1118
    .line 1119
    .line 1120
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1121
    .line 1122
    .line 1123
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1124
    .line 1125
    .line 1126
    move v5, v14

    .line 1127
    move-object/from16 v4, v25

    .line 1128
    .line 1129
    move/from16 v8, v27

    .line 1130
    .line 1131
    goto :goto_1

    .line 1132
    :cond_2
    move/from16 v27, v8

    .line 1133
    .line 1134
    const/4 v8, 0x4

    .line 1135
    invoke-virtual {v9, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1136
    .line 1137
    .line 1138
    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1139
    .line 1140
    .line 1141
    move v9, v8

    .line 1142
    move-object/from16 v3, v18

    .line 1143
    .line 1144
    move-object/from16 v4, v22

    .line 1145
    .line 1146
    move-object/from16 v15, v23

    .line 1147
    .line 1148
    move/from16 v8, v27

    .line 1149
    .line 1150
    const/4 v5, 0x0

    .line 1151
    const/16 v7, 0x10

    .line 1152
    .line 1153
    const/16 v14, 0x11

    .line 1154
    .line 1155
    goto/16 :goto_0

    .line 1156
    .line 1157
    :cond_3
    move-object/from16 v18, v3

    .line 1158
    .line 1159
    move-object/from16 v23, v15

    .line 1160
    .line 1161
    const v3, 0x7f1200a1

    .line 1162
    .line 1163
    .line 1164
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v3

    .line 1168
    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1169
    .line 1170
    .line 1171
    invoke-virtual {v0, v3}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->r(Ljava/lang/String;)Landroid/widget/TextView;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v3

    .line 1175
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1176
    .line 1177
    .line 1178
    const v3, 0x7f120094

    .line 1179
    .line 1180
    .line 1181
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v3

    .line 1185
    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1186
    .line 1187
    .line 1188
    new-instance v4, Ly1/b2;

    .line 1189
    .line 1190
    const/4 v15, 0x0

    .line 1191
    invoke-direct {v4, v0, v15}, Ly1/b2;-><init>(Lcom/minhub/gamehub/game/VxAceCheatActivity;I)V

    .line 1192
    .line 1193
    .line 1194
    invoke-virtual {v0, v3, v4}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->m(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/widget/TextView;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v3

    .line 1198
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1199
    .line 1200
    .line 1201
    const v3, 0x7f120092

    .line 1202
    .line 1203
    .line 1204
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v3

    .line 1208
    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1209
    .line 1210
    .line 1211
    new-instance v4, Ly1/b2;

    .line 1212
    .line 1213
    const/4 v5, 0x1

    .line 1214
    invoke-direct {v4, v0, v5}, Ly1/b2;-><init>(Lcom/minhub/gamehub/game/VxAceCheatActivity;I)V

    .line 1215
    .line 1216
    .line 1217
    invoke-virtual {v0, v3, v4}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->m(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/widget/TextView;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v3

    .line 1221
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1222
    .line 1223
    .line 1224
    const v3, 0x7f120093

    .line 1225
    .line 1226
    .line 1227
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v3

    .line 1231
    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1232
    .line 1233
    .line 1234
    new-instance v4, Ly1/b2;

    .line 1235
    .line 1236
    move/from16 v5, v17

    .line 1237
    .line 1238
    invoke-direct {v4, v0, v5}, Ly1/b2;-><init>(Lcom/minhub/gamehub/game/VxAceCheatActivity;I)V

    .line 1239
    .line 1240
    .line 1241
    invoke-virtual {v0, v3, v4}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->m(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/widget/TextView;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v3

    .line 1245
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1246
    .line 1247
    .line 1248
    new-instance v3, Landroid/widget/ScrollView;

    .line 1249
    .line 1250
    invoke-direct {v3, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 1251
    .line 1252
    .line 1253
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1254
    .line 1255
    const/4 v5, -0x1

    .line 1256
    const/4 v7, -0x2

    .line 1257
    invoke-direct {v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1258
    .line 1259
    .line 1260
    invoke-virtual {v3, v6, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1261
    .line 1262
    .line 1263
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1264
    .line 1265
    const/high16 v14, 0x3f800000    # 1.0f

    .line 1266
    .line 1267
    const/4 v15, 0x0

    .line 1268
    invoke-direct {v4, v5, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1269
    .line 1270
    .line 1271
    invoke-virtual {v10, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1272
    .line 1273
    .line 1274
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1275
    .line 1276
    const v4, 0x800035

    .line 1277
    .line 1278
    .line 1279
    invoke-direct {v3, v2, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1280
    .line 1281
    .line 1282
    const/16 v4, 0x10

    .line 1283
    .line 1284
    invoke-virtual {v0, v4}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 1285
    .line 1286
    .line 1287
    move-result v1

    .line 1288
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1289
    .line 1290
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1291
    .line 1292
    move-object/from16 v1, v18

    .line 1293
    .line 1294
    invoke-virtual {v1, v10, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1295
    .line 1296
    .line 1297
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v2

    .line 1301
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 1302
    .line 1303
    .line 1304
    move-result v13

    .line 1305
    invoke-virtual {v0, v4}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 1306
    .line 1307
    .line 1308
    move-result v2

    .line 1309
    int-to-float v14, v2

    .line 1310
    new-instance v7, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 1311
    .line 1312
    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 1313
    .line 1314
    .line 1315
    new-instance v8, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 1316
    .line 1317
    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 1318
    .line 1319
    .line 1320
    new-instance v9, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 1321
    .line 1322
    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 1323
    .line 1324
    .line 1325
    new-instance v11, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 1326
    .line 1327
    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 1328
    .line 1329
    .line 1330
    new-instance v12, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 1331
    .line 1332
    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 1333
    .line 1334
    .line 1335
    new-instance v6, Ly1/Q;

    .line 1336
    .line 1337
    invoke-direct/range {v6 .. v14}, Ly1/Q;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroid/widget/LinearLayout;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;IF)V

    .line 1338
    .line 1339
    .line 1340
    move-object/from16 v2, v23

    .line 1341
    .line 1342
    invoke-virtual {v2, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1343
    .line 1344
    .line 1345
    invoke-virtual {v0, v1}, Le/j;->setContentView(Landroid/view/View;)V

    .line 1346
    .line 1347
    .line 1348
    return-void
.end method

.method public final p(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function1;)Landroid/widget/LinearLayout;
    .locals 13

    .line 1
    new-instance v6, Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const/4 v7, 0x0

    .line 7
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 11
    .line 12
    const/4 v1, -0x2

    .line 13
    const/4 v2, -0x1

    .line 14
    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 15
    .line 16
    .line 17
    const/16 v1, 0xe

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 30
    .line 31
    const/4 v8, 0x4

    .line 32
    invoke-virtual {p0, v8}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 37
    .line 38
    const/4 v1, 0x2

    .line 39
    invoke-virtual {p0, v1}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 44
    .line 45
    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const/4 v9, 0x1

    .line 57
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const/4 v4, 0x3

    .line 66
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    filled-new-array {v0, v2, v3, v1, v4}, [Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    const v0, 0x7f120097

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string v1, "#3"

    .line 86
    .line 87
    const-string v3, "#4"

    .line 88
    .line 89
    const-string v4, "#1"

    .line 90
    .line 91
    const-string v10, "#2"

    .line 92
    .line 93
    filled-new-array {v0, v4, v10, v1, v3}, [Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 102
    .line 103
    .line 104
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v10

    .line 108
    move v3, v7

    .line 109
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_3

    .line 114
    .line 115
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    add-int/lit8 v11, v3, 0x1

    .line 120
    .line 121
    if-gez v3, :cond_0

    .line 122
    .line 123
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 124
    .line 125
    .line 126
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 127
    .line 128
    new-instance v12, Landroid/widget/TextView;

    .line 129
    .line 130
    invoke-direct {v12, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .line 135
    .line 136
    const/16 v0, 0x11

    .line 137
    .line 138
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 139
    .line 140
    .line 141
    iget v0, p0, Lcom/minhub/gamehub/game/VxAceCheatActivity;->l:I

    .line 142
    .line 143
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    .line 145
    .line 146
    const/high16 v0, 0x41300000    # 11.0f

    .line 147
    .line 148
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 149
    .line 150
    .line 151
    if-nez v3, :cond_1

    .line 152
    .line 153
    move v0, v9

    .line 154
    goto :goto_1

    .line 155
    :cond_1
    move v0, v7

    .line 156
    :goto_1
    invoke-virtual {p0, v0}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->n(Z)Landroid/graphics/drawable/GradientDrawable;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v12, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 161
    .line 162
    .line 163
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 164
    .line 165
    const/16 v1, 0x1e

    .line 166
    .line 167
    invoke-virtual {p0, v1}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    const/high16 v4, 0x3f800000    # 1.0f

    .line 172
    .line 173
    invoke-direct {v0, v7, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 174
    .line 175
    .line 176
    if-lez v3, :cond_2

    .line 177
    .line 178
    invoke-virtual {p0, v8}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 183
    .line 184
    :cond_2
    invoke-virtual {v12, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    .line 186
    .line 187
    new-instance v0, Ly1/c2;

    .line 188
    .line 189
    move-object v5, p0

    .line 190
    move-object v4, p1

    .line 191
    move-object v1, p2

    .line 192
    invoke-direct/range {v0 .. v5}, Ly1/c2;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;ILjava/util/List;Lcom/minhub/gamehub/game/VxAceCheatActivity;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v12, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    invoke-virtual {v6, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 202
    .line 203
    .line 204
    move v3, v11

    .line 205
    goto :goto_0

    .line 206
    :cond_3
    return-object v6
.end method

.method public final q(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "vxace_cheat_queue"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v2, "pending_scripts"

    .line 9
    .line 10
    const-string v3, ""

    .line 11
    .line 12
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    if-nez v4, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v3, v4

    .line 20
    :goto_0
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-nez v4, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const-string v4, "\n"

    .line 28
    .line 29
    invoke-static {v3, v4, p1}, Lkotlin/collections/unsigned/a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 42
    .line 43
    .line 44
    const p1, 0x7f12009a

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final r(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lcom/minhub/gamehub/game/VxAceCheatActivity;->m:I

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    .line 13
    .line 14
    const/high16 p1, 0x41200000    # 10.0f

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 17
    .line 18
    .line 19
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 22
    .line 23
    .line 24
    const/16 p1, 0x12

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/16 v2, 0xe

    .line 31
    .line 32
    invoke-virtual {p0, v2}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {p0, p1}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    const/4 v3, 0x2

    .line 41
    invoke-virtual {p0, v3}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o(I)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 46
    .line 47
    .line 48
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 49
    .line 50
    const/4 v1, -0x1

    .line 51
    const/4 v2, -0x2

    .line 52
    invoke-direct {p1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    .line 57
    .line 58
    return-object v0
.end method
