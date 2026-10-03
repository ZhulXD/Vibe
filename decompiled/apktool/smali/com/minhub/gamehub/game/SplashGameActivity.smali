.class public final Lcom/minhub/gamehub/game/SplashGameActivity;
.super LS1/c;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/minhub/gamehub/game/SplashGameActivity;",
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
        "SMAP\nSplashGameActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SplashGameActivity.kt\ncom/minhub/gamehub/game/SplashGameActivity\n+ 2 ActivityViewModelLazy.kt\nandroidx/activity/ActivityViewModelLazyKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,217:1\n75#2,13:218\n295#3,2:231\n*S KotlinDebug\n*F\n+ 1 SplashGameActivity.kt\ncom/minhub/gamehub/game/SplashGameActivity\n*L\n79#1:218,13\n92#1:231,2\n*E\n"
    }
.end annotation


# static fields
.field public static final synthetic h:I


# instance fields
.field public e:Lk/v;

.field public final f:Landroidx/lifecycle/ViewModelLazy;

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, LS1/c;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ly1/Q1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Ly1/Q1;-><init>(Lcom/minhub/gamehub/game/SplashGameActivity;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 10
    .line 11
    const-class v2, LC1/Z0;

    .line 12
    .line 13
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-instance v3, Ly1/R1;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-direct {v3, p0, v4}, Ly1/R1;-><init>(Lcom/minhub/gamehub/game/SplashGameActivity;I)V

    .line 21
    .line 22
    .line 23
    new-instance v4, Ly1/R1;

    .line 24
    .line 25
    const/4 v5, 0x1

    .line 26
    invoke-direct {v4, p0, v5}, Ly1/R1;-><init>(Lcom/minhub/gamehub/game/SplashGameActivity;I)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/minhub/gamehub/game/SplashGameActivity;->f:Landroidx/lifecycle/ViewModelLazy;

    .line 33
    .line 34
    return-void
.end method

.method public static final m(Lcom/minhub/gamehub/game/SplashGameActivity;Ly1/T1;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ly1/U1;

    .line 7
    .line 8
    iget-boolean p1, p1, Ly1/T1;->b:Z

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    sget-object v1, Ly1/V1;->b:Ly1/V1;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object v1, Ly1/V1;->c:Ly1/V1;

    .line 16
    .line 17
    :goto_0
    invoke-direct {v0, p1, p1, p1, v1}, Ly1/U1;-><init>(ZZZLy1/V1;)V

    .line 18
    .line 19
    .line 20
    if-nez p1, :cond_6

    .line 21
    .line 22
    if-nez p2, :cond_1

    .line 23
    .line 24
    goto :goto_3

    .line 25
    :cond_1
    if-eqz p1, :cond_2

    .line 26
    .line 27
    const/16 p1, 0xe

    .line 28
    .line 29
    int-to-float p1, p1

    .line 30
    invoke-virtual {p0}, Le/j;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 39
    .line 40
    mul-float/2addr p1, v0

    .line 41
    float-to-int p1, p1

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    const/4 p1, 0x0

    .line 44
    :goto_1
    iget-object p0, p0, Lcom/minhub/gamehub/game/SplashGameActivity;->e:Lk/v;

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    if-nez p0, :cond_3

    .line 48
    .line 49
    const-string p0, "b"

    .line 50
    .line 51
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    move-object p0, v0

    .line 55
    :cond_3
    iget-object p0, p0, Lk/v;->a:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p0, Landroid/widget/ImageView;

    .line 58
    .line 59
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_5

    .line 70
    .line 71
    const/4 v0, 0x1

    .line 72
    if-ne p1, v0, :cond_4

    .line 73
    .line 74
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 78
    .line 79
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 80
    .line 81
    .line 82
    throw p0

    .line 83
    :cond_5
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 84
    .line 85
    :goto_2
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_6
    :goto_3
    invoke-virtual {p0, v0}, Lcom/minhub/gamehub/game/SplashGameActivity;->n(Ly1/U1;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method


# virtual methods
.method public final n(Ly1/U1;)V
    .locals 3

    .line 1
    iget-boolean v0, p1, Ly1/U1;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0xe

    .line 6
    .line 7
    int-to-float v0, v0

    .line 8
    invoke-virtual {p0}, Le/j;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 17
    .line 18
    mul-float/2addr v0, v1

    .line 19
    float-to-int v0, v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    iget-object v1, p0, Lcom/minhub/gamehub/game/SplashGameActivity;->e:Lk/v;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    const-string v1, "b"

    .line 28
    .line 29
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    move-object v1, v2

    .line 33
    :cond_1
    iget-object v1, v1, Lk/v;->a:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Landroid/widget/ImageView;

    .line 36
    .line 37
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 38
    .line 39
    .line 40
    iget-boolean v0, p1, Ly1/U1;->c:Z

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    const v0, -0x33000001    # -1.3421772E8f

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p1, Ly1/U1;->d:Ly1/V1;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    const/4 v2, 0x1

    .line 63
    if-ne v0, v2, :cond_3

    .line 64
    .line 65
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 69
    .line 70
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 71
    .line 72
    .line 73
    throw p1

    .line 74
    :cond_4
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 75
    .line 76
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 77
    .line 78
    .line 79
    iget-boolean p1, p1, Ly1/U1;->b:Z

    .line 80
    .line 81
    if-eqz p1, :cond_5

    .line 82
    .line 83
    const p1, 0x7f0800d7

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    .line 88
    .line 89
    :cond_5
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const v0, 0x7f0c002b

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const v0, 0x7f090191

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    move-object v3, v1

    .line 25
    check-cast v3, Landroid/widget/ImageView;

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    const v0, 0x7f090263

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    move-object v4, v1

    .line 37
    check-cast v4, Landroid/widget/ProgressBar;

    .line 38
    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    move-object v5, p1

    .line 42
    check-cast v5, Landroid/widget/FrameLayout;

    .line 43
    .line 44
    const v0, 0x7f09034d

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    move-object v6, v1

    .line 52
    check-cast v6, Landroid/widget/TextView;

    .line 53
    .line 54
    if-eqz v6, :cond_1

    .line 55
    .line 56
    const v0, 0x7f090381

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    move-object v7, v1

    .line 64
    check-cast v7, Landroid/widget/TextView;

    .line 65
    .line 66
    if-eqz v7, :cond_1

    .line 67
    .line 68
    const v0, 0x7f090390

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    move-object v8, v1

    .line 76
    check-cast v8, Landroid/widget/TextView;

    .line 77
    .line 78
    if-eqz v8, :cond_1

    .line 79
    .line 80
    new-instance v2, Lk/v;

    .line 81
    .line 82
    invoke-direct/range {v2 .. v8}, Lk/v;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 83
    .line 84
    .line 85
    const-string p1, "inflate(...)"

    .line 86
    .line 87
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iput-object v2, p0, Lcom/minhub/gamehub/game/SplashGameActivity;->e:Lk/v;

    .line 91
    .line 92
    invoke-virtual {p0, v5}, Le/j;->setContentView(Landroid/view/View;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    const-string v0, "game_id"

    .line 100
    .line 101
    const/4 v1, -0x1

    .line 102
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-ne p1, v1, :cond_0

    .line 107
    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/minhub/gamehub/game/SplashGameActivity;->f:Landroidx/lifecycle/ViewModelLazy;

    .line 113
    .line 114
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, LC1/Z0;

    .line 119
    .line 120
    iget-object v0, v0, LC1/Z0;->b:Landroidx/lifecycle/LiveData;

    .line 121
    .line 122
    new-instance v1, LA1/F;

    .line 123
    .line 124
    const/4 v2, 0x4

    .line 125
    invoke-direct {v1, p0, p1, v2}, LA1/F;-><init>(Ljava/lang/Object;II)V

    .line 126
    .line 127
    .line 128
    new-instance p1, LC1/x0;

    .line 129
    .line 130
    const/4 v2, 0x0

    .line 131
    invoke-direct {p1, v1, v2}, LC1/x0;-><init>(LA1/F;C)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, p0, p1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    new-instance v0, Ljava/lang/NullPointerException;

    .line 147
    .line 148
    const-string v1, "Missing required view with ID: "

    .line 149
    .line 150
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw v0
.end method
