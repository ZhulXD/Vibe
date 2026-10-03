.class public final Lcom/minhub/gamehub/hub/GameDetailActivity;
.super LS1/c;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/minhub/gamehub/hub/GameDetailActivity;",
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
        "SMAP\nGameDetailActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameDetailActivity.kt\ncom/minhub/gamehub/hub/GameDetailActivity\n+ 2 ActivityViewModelLazy.kt\nandroidx/activity/ActivityViewModelLazyKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,435:1\n75#2,13:436\n1#3:449\n1869#4,2:450\n774#4:452\n865#4,2:453\n295#4,2:463\n295#4,2:465\n161#5,8:455\n*S KotlinDebug\n*F\n+ 1 GameDetailActivity.kt\ncom/minhub/gamehub/hub/GameDetailActivity\n*L\n54#1:436,13\n172#1:450,2\n272#1:452\n272#1:453,2\n108#1:463,2\n169#1:465,2\n94#1:455,8\n*E\n"
    }
.end annotation


# static fields
.field public static final synthetic w:I


# instance fields
.field public e:Lw1/e;

.field public final f:Landroidx/lifecycle/ViewModelLazy;

.field public g:Lcom/minhub/gamehub/data/Game;

.field public h:Z

.field public i:Lcom/minhub/gamehub/data/SaveRepository;

.field public j:LC1/g2;

.field public k:Ljava/util/List;

.field public l:Lcom/minhub/gamehub/data/Save;

.field public m:Z

.field public n:Ljava/lang/String;

.field public o:Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;

.field public p:I

.field public q:LC1/X1;

.field public r:LC1/b2;

.field public s:LP/G;

.field public final t:Landroidx/activity/result/ActivityResultLauncher;

.field public final u:Landroidx/activity/result/ActivityResultLauncher;

.field public final v:Landroidx/activity/result/ActivityResultLauncher;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, LS1/c;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LC1/z0;

    .line 5
    .line 6
    invoke-direct {v0, p0}, LC1/z0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;)V

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
    new-instance v3, LC1/A0;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-direct {v3, p0, v4}, LC1/A0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;I)V

    .line 21
    .line 22
    .line 23
    new-instance v4, LC1/A0;

    .line 24
    .line 25
    const/4 v5, 0x1

    .line 26
    invoke-direct {v4, p0, v5}, LC1/A0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;I)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/minhub/gamehub/hub/GameDetailActivity;->f:Landroidx/lifecycle/ViewModelLazy;

    .line 33
    .line 34
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/minhub/gamehub/hub/GameDetailActivity;->k:Ljava/util/List;

    .line 39
    .line 40
    const-string v0, ""

    .line 41
    .line 42
    iput-object v0, p0, Lcom/minhub/gamehub/hub/GameDetailActivity;->n:Ljava/lang/String;

    .line 43
    .line 44
    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/minhub/gamehub/hub/GameDetailActivity;->p:I

    .line 46
    .line 47
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;

    .line 48
    .line 49
    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance v1, LC1/m0;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-direct {v1, p0, v2}, LC1/m0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/minhub/gamehub/hub/GameDetailActivity;->t:Landroidx/activity/result/ActivityResultLauncher;

    .line 63
    .line 64
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$OpenDocumentTree;

    .line 65
    .line 66
    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$OpenDocumentTree;-><init>()V

    .line 67
    .line 68
    .line 69
    new-instance v1, LC1/m0;

    .line 70
    .line 71
    const/4 v2, 0x1

    .line 72
    invoke-direct {v1, p0, v2}, LC1/m0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/minhub/gamehub/hub/GameDetailActivity;->u:Landroidx/activity/result/ActivityResultLauncher;

    .line 80
    .line 81
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$CreateDocument;

    .line 82
    .line 83
    const-string v1, "application/octet-stream"

    .line 84
    .line 85
    invoke-direct {v0, v1}, Landroidx/activity/result/contract/ActivityResultContracts$CreateDocument;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    new-instance v1, LC1/m0;

    .line 89
    .line 90
    const/4 v2, 0x2

    .line 91
    invoke-direct {v1, p0, v2}, LC1/m0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iput-object v0, p0, Lcom/minhub/gamehub/hub/GameDetailActivity;->v:Landroidx/activity/result/ActivityResultLauncher;

    .line 99
    .line 100
    return-void
.end method

.method public static final s(Landroid/widget/LinearLayout;Ljava/util/List;Lcom/minhub/gamehub/hub/GameDetailActivity;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    move v2, v1

    .line 7
    :goto_0
    const-string v3, "webgl2"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-ge v2, v0, :cond_5

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    instance-of v6, v5, Landroid/widget/Button;

    .line 17
    .line 18
    if-eqz v6, :cond_0

    .line 19
    .line 20
    move-object v4, v5

    .line 21
    check-cast v4, Landroid/widget/Button;

    .line 22
    .line 23
    :cond_0
    if-nez v4, :cond_1

    .line 24
    .line 25
    goto :goto_5

    .line 26
    :cond_1
    add-int/lit8 v5, v2, -0x1

    .line 27
    .line 28
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    check-cast v5, LS1/e;

    .line 33
    .line 34
    invoke-static {p2}, LS1/d;->f(Landroid/content/Context;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    .line 46
    .line 47
    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 48
    .line 49
    .line 50
    const/4 v6, 0x0

    .line 51
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 52
    .line 53
    .line 54
    const/high16 v6, 0x41c00000    # 24.0f

    .line 55
    .line 56
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 57
    .line 58
    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    const-string v6, "#22EF4444"

    .line 62
    .line 63
    :goto_1
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    const-string v6, "#18181f"

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :goto_2
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 72
    .line 73
    .line 74
    if-eqz v3, :cond_3

    .line 75
    .line 76
    const-string v6, "#44EF4444"

    .line 77
    .line 78
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    invoke-virtual {v5, v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 83
    .line 84
    .line 85
    :cond_3
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 86
    .line 87
    .line 88
    if-eqz v3, :cond_4

    .line 89
    .line 90
    const-string v3, "#EF4444"

    .line 91
    .line 92
    :goto_3
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    goto :goto_4

    .line 97
    :cond_4
    const-string v3, "#45455a"

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :goto_4
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    .line 102
    .line 103
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_5
    invoke-virtual {p2}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    iget-object p0, p0, Lw1/e;->C:Landroid/widget/TextView;

    .line 111
    .line 112
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_7

    .line 121
    .line 122
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    move-object v1, v0

    .line 127
    check-cast v1, LS1/e;

    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    invoke-static {p2}, LS1/d;->f(Landroid/content/Context;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_6

    .line 141
    .line 142
    move-object v4, v0

    .line 143
    :cond_7
    check-cast v4, LS1/e;

    .line 144
    .line 145
    if-eqz v4, :cond_8

    .line 146
    .line 147
    const-string p1, "WebGL 2"

    .line 148
    .line 149
    goto :goto_6

    .line 150
    :cond_8
    invoke-static {p2}, LS1/d;->f(Landroid/content/Context;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    :goto_6
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    .line 156
    .line 157
    return-void
.end method


# virtual methods
.method public final m(Lcom/minhub/gamehub/data/Game;)V
    .locals 14

    .line 1
    iput-object p1, p0, Lcom/minhub/gamehub/hub/GameDetailActivity;->g:Lcom/minhub/gamehub/data/Game;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/minhub/gamehub/hub/GameDetailActivity;->h:Z

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x0

    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    const/4 v6, 0x0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    iput-boolean v5, p0, Lcom/minhub/gamehub/hub/GameDetailActivity;->h:Z

    .line 14
    .line 15
    sget-object v0, LG1/g;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->getCatalogPostId()J

    .line 18
    .line 19
    .line 20
    move-result-wide v7

    .line 21
    cmp-long v0, v7, v3

    .line 22
    .line 23
    if-gtz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-object v0, Lcom/minhub/gamehub/data/GameEngine;->MV:Lcom/minhub/gamehub/data/GameEngine;

    .line 27
    .line 28
    sget-object v7, Lcom/minhub/gamehub/data/GameEngine;->MZ:Lcom/minhub/gamehub/data/GameEngine;

    .line 29
    .line 30
    sget-object v8, Lcom/minhub/gamehub/data/GameEngine;->TYRANO:Lcom/minhub/gamehub/data/GameEngine;

    .line 31
    .line 32
    sget-object v9, Lcom/minhub/gamehub/data/GameEngine;->HTML:Lcom/minhub/gamehub/data/GameEngine;

    .line 33
    .line 34
    filled-new-array {v0, v7, v8, v9}, [Lcom/minhub/gamehub/data/GameEngine;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {p1}, Lcom/minhub/gamehub/data/GameKt;->getEngineEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameEngine;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    iget-object v7, v7, Lw1/e;->e:Landroid/widget/Button;

    .line 62
    .line 63
    invoke-virtual {v7, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 64
    .line 65
    .line 66
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    new-instance v8, LC1/v0;

    .line 71
    .line 72
    invoke-direct {v8, p0, p1, v0, v2}, LC1/v0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v7, v2, v8, v1}, LV1/A;->c(LV1/x;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)LV1/p0;

    .line 76
    .line 77
    .line 78
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget-object v0, v0, Lw1/e;->P:Landroid/view/View;

    .line 83
    .line 84
    const-string v7, "viewHero"

    .line 85
    .line 86
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const/4 v7, 0x0

    .line 90
    invoke-static {v0, v2, p1, v7}, La/a;->c(Landroid/view/View;Landroid/widget/TextView;Lcom/minhub/gamehub/data/Game;F)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->getBgPath()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->getIconPath()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    filled-new-array {v0, v7}, [Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    new-instance v7, Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    if-eqz v8, :cond_4

    .line 123
    .line 124
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    move-object v9, v8

    .line 129
    check-cast v9, Ljava/lang/String;

    .line 130
    .line 131
    invoke-static {v9}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 132
    .line 133
    .line 134
    move-result v9

    .line 135
    if-nez v9, :cond_3

    .line 136
    .line 137
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    const/4 v8, 0x4

    .line 146
    if-nez v0, :cond_5

    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    iget-object v0, v0, Lw1/e;->n:Landroid/widget/FrameLayout;

    .line 153
    .line 154
    new-instance v9, LC1/w;

    .line 155
    .line 156
    invoke-direct {v9, p0, v7, p1, v8}, LC1/w;-><init>(Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_5
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    iget-object v0, v0, Lw1/e;->n:Landroid/widget/FrameLayout;

    .line 168
    .line 169
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    .line 171
    .line 172
    :goto_2
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    iget-object v0, v0, Lw1/e;->L:Landroid/widget/TextView;

    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->getTitle()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    iget-object v0, v0, Lw1/e;->O:Landroid/widget/TextView;

    .line 190
    .line 191
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->getVersion()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v7

    .line 195
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->getSizeLabel()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v9

    .line 199
    filled-new-array {v7, v9}, [Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    const v9, 0x7f120128

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0, v9, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    iget-object v0, v0, Lw1/e;->x:Landroid/widget/TextView;

    .line 218
    .line 219
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->getDescription()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v7

    .line 223
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    iget-object v0, v0, Lw1/e;->H:Landroid/widget/TextView;

    .line 231
    .line 232
    invoke-static {p1}, Lcom/minhub/gamehub/data/GameKt;->getPlaytimeLabel(Lcom/minhub/gamehub/data/Game;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v7

    .line 236
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    iget-object v0, v0, Lw1/e;->F:Landroid/widget/TextView;

    .line 244
    .line 245
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->getLastPlayedMs()J

    .line 246
    .line 247
    .line 248
    move-result-wide v9

    .line 249
    sget-object v7, LC1/X0;->a:Li1/l;

    .line 250
    .line 251
    const-string v7, "ctx"

    .line 252
    .line 253
    invoke-static {p0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    cmp-long v7, v9, v3

    .line 257
    .line 258
    const-string v11, "getString(...)"

    .line 259
    .line 260
    if-nez v7, :cond_6

    .line 261
    .line 262
    const v7, 0x7f120320

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v7

    .line 269
    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    goto :goto_3

    .line 273
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 274
    .line 275
    .line 276
    move-result-wide v12

    .line 277
    sub-long/2addr v12, v9

    .line 278
    const v7, 0xea60

    .line 279
    .line 280
    .line 281
    int-to-long v9, v7

    .line 282
    div-long/2addr v12, v9

    .line 283
    const-wide/16 v9, 0x3c

    .line 284
    .line 285
    cmp-long v7, v12, v9

    .line 286
    .line 287
    if-gez v7, :cond_7

    .line 288
    .line 289
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 290
    .line 291
    .line 292
    move-result-object v7

    .line 293
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v7

    .line 297
    const v9, 0x7f120120

    .line 298
    .line 299
    .line 300
    invoke-virtual {p0, v9, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v7

    .line 304
    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    goto :goto_3

    .line 308
    :cond_7
    const-wide/16 v9, 0x5a0

    .line 309
    .line 310
    cmp-long v7, v12, v9

    .line 311
    .line 312
    if-gez v7, :cond_8

    .line 313
    .line 314
    const/16 v7, 0x3c

    .line 315
    .line 316
    int-to-long v9, v7

    .line 317
    div-long/2addr v12, v9

    .line 318
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 319
    .line 320
    .line 321
    move-result-object v7

    .line 322
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v7

    .line 326
    const v9, 0x7f12011c

    .line 327
    .line 328
    .line 329
    invoke-virtual {p0, v9, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v7

    .line 333
    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    goto :goto_3

    .line 337
    :cond_8
    const-wide/16 v9, 0x2760

    .line 338
    .line 339
    cmp-long v7, v12, v9

    .line 340
    .line 341
    if-gez v7, :cond_9

    .line 342
    .line 343
    const/16 v7, 0x5a0

    .line 344
    .line 345
    int-to-long v9, v7

    .line 346
    div-long/2addr v12, v9

    .line 347
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 348
    .line 349
    .line 350
    move-result-object v7

    .line 351
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v7

    .line 355
    const v9, 0x7f120119

    .line 356
    .line 357
    .line 358
    invoke-virtual {p0, v9, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v7

    .line 362
    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    goto :goto_3

    .line 366
    :cond_9
    const/16 v7, 0x2760

    .line 367
    .line 368
    int-to-long v9, v7

    .line 369
    div-long/2addr v12, v9

    .line 370
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 371
    .line 372
    .line 373
    move-result-object v7

    .line 374
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v7

    .line 378
    const v9, 0x7f120129

    .line 379
    .line 380
    .line 381
    invoke-virtual {p0, v9, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v7

    .line 385
    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    :goto_3
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    iget-object v0, v0, Lw1/e;->K:Landroid/widget/TextView;

    .line 396
    .line 397
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->getSaveCount()I

    .line 398
    .line 399
    .line 400
    move-result v7

    .line 401
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 402
    .line 403
    .line 404
    move-result-object v7

    .line 405
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v7

    .line 409
    const v9, 0x7f120126

    .line 410
    .line 411
    .line 412
    invoke-virtual {p0, v9, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v7

    .line 416
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    iget-object v0, v0, Lw1/e;->y:Landroid/widget/TextView;

    .line 424
    .line 425
    invoke-static {p1}, Lcom/minhub/gamehub/data/GameKt;->getEngineEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameEngine;

    .line 426
    .line 427
    .line 428
    move-result-object v7

    .line 429
    invoke-virtual {v7}, Lcom/minhub/gamehub/data/GameEngine;->getLabel()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v7

    .line 433
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    iget-object v0, v0, Lw1/e;->A:Landroid/widget/TextView;

    .line 441
    .line 442
    invoke-static {p1}, Lcom/minhub/gamehub/data/GameKt;->getEngineEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameEngine;

    .line 443
    .line 444
    .line 445
    move-result-object v7

    .line 446
    invoke-virtual {v7}, Lcom/minhub/gamehub/data/GameEngine;->getLabel()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v7

    .line 450
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    iget-object v0, v0, Lw1/e;->E:Landroid/widget/TextView;

    .line 458
    .line 459
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->getVersion()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v7

    .line 463
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    iget-object v0, v0, Lw1/e;->D:Landroid/widget/TextView;

    .line 471
    .line 472
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->getSizeLabel()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v7

    .line 476
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    iget-object v0, v0, Lw1/e;->B:Landroid/widget/TextView;

    .line 484
    .line 485
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->isPortraitGame()Z

    .line 486
    .line 487
    .line 488
    move-result v7

    .line 489
    if-eqz v7, :cond_a

    .line 490
    .line 491
    const v7, 0x7f120333

    .line 492
    .line 493
    .line 494
    :goto_4
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v7

    .line 498
    goto :goto_5

    .line 499
    :cond_a
    const v7, 0x7f120332

    .line 500
    .line 501
    .line 502
    goto :goto_4

    .line 503
    :goto_5
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    .line 505
    .line 506
    invoke-static {p1}, Lcom/minhub/gamehub/data/GameKt;->getEngineEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameEngine;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    sget-object v7, LC1/q0;->a:[I

    .line 511
    .line 512
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 513
    .line 514
    .line 515
    move-result v0

    .line 516
    aget v0, v7, v0

    .line 517
    .line 518
    const/4 v7, 0x2

    .line 519
    if-eq v0, v5, :cond_b

    .line 520
    .line 521
    if-eq v0, v7, :cond_b

    .line 522
    .line 523
    if-eq v0, v1, :cond_b

    .line 524
    .line 525
    if-eq v0, v8, :cond_b

    .line 526
    .line 527
    move v0, v6

    .line 528
    goto :goto_6

    .line 529
    :cond_b
    move v0, v5

    .line 530
    :goto_6
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 531
    .line 532
    .line 533
    move-result-object v8

    .line 534
    iget-object v8, v8, Lw1/e;->o:Landroid/widget/HorizontalScrollView;

    .line 535
    .line 536
    const/16 v9, 0x8

    .line 537
    .line 538
    if-eqz v0, :cond_c

    .line 539
    .line 540
    move v10, v6

    .line 541
    goto :goto_7

    .line 542
    :cond_c
    move v10, v9

    .line 543
    :goto_7
    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 547
    .line 548
    .line 549
    move-result-object v8

    .line 550
    iget-object v8, v8, Lw1/e;->s:Landroid/widget/LinearLayout;

    .line 551
    .line 552
    if-eqz v0, :cond_d

    .line 553
    .line 554
    move v9, v6

    .line 555
    :cond_d
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    iget-object v0, v0, Lw1/e;->r:Landroid/widget/LinearLayout;

    .line 563
    .line 564
    new-instance v8, LC1/p0;

    .line 565
    .line 566
    invoke-direct {v8, p0, v6}, LC1/p0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;I)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {v0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 570
    .line 571
    .line 572
    invoke-static {p0, p1}, Lcom/bumptech/glide/d;->d(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;)V

    .line 573
    .line 574
    .line 575
    const-string v0, "<this>"

    .line 576
    .line 577
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    const-string v0, "g"

    .line 581
    .line 582
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->getCatalogPostId()J

    .line 586
    .line 587
    .line 588
    move-result-wide v8

    .line 589
    cmp-long v0, v8, v3

    .line 590
    .line 591
    if-gtz v0, :cond_e

    .line 592
    .line 593
    goto :goto_8

    .line 594
    :cond_e
    iget v0, p0, Lcom/minhub/gamehub/hub/GameDetailActivity;->p:I

    .line 595
    .line 596
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 597
    .line 598
    .line 599
    move-result v3

    .line 600
    if-ne v0, v3, :cond_f

    .line 601
    .line 602
    goto :goto_8

    .line 603
    :cond_f
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 604
    .line 605
    .line 606
    move-result v0

    .line 607
    iput v0, p0, Lcom/minhub/gamehub/hub/GameDetailActivity;->p:I

    .line 608
    .line 609
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 610
    .line 611
    .line 612
    move-result-object v0

    .line 613
    new-instance v3, LC1/V0;

    .line 614
    .line 615
    invoke-direct {v3, p0, p1, v2, v6}, LC1/V0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;Lkotlin/coroutines/Continuation;I)V

    .line 616
    .line 617
    .line 618
    invoke-static {v0, v2, v3, v1}, LV1/A;->c(LV1/x;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)LV1/p0;

    .line 619
    .line 620
    .line 621
    :goto_8
    invoke-static {p1}, Lcom/minhub/gamehub/data/GameKt;->getEngineEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameEngine;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    invoke-virtual {v0}, Lcom/minhub/gamehub/data/GameEngine;->getColorHex()Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 630
    .line 631
    .line 632
    move-result v0

    .line 633
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 634
    .line 635
    .line 636
    move-result-object v2

    .line 637
    iget-object v2, v2, Lw1/e;->y:Landroid/widget/TextView;

    .line 638
    .line 639
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 640
    .line 641
    .line 642
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 643
    .line 644
    .line 645
    move-result-object v2

    .line 646
    iget-object v2, v2, Lw1/e;->y:Landroid/widget/TextView;

    .line 647
    .line 648
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 649
    .line 650
    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 651
    .line 652
    .line 653
    invoke-virtual {v3, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 654
    .line 655
    .line 656
    const/high16 v4, 0x41200000    # 10.0f

    .line 657
    .line 658
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 659
    .line 660
    .line 661
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    .line 662
    .line 663
    .line 664
    move-result v4

    .line 665
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    .line 666
    .line 667
    .line 668
    move-result v8

    .line 669
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    .line 670
    .line 671
    .line 672
    move-result v9

    .line 673
    const/16 v10, 0x1a

    .line 674
    .line 675
    invoke-static {v10, v4, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    .line 676
    .line 677
    .line 678
    move-result v4

    .line 679
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 680
    .line 681
    .line 682
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    .line 683
    .line 684
    .line 685
    move-result v4

    .line 686
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    .line 687
    .line 688
    .line 689
    move-result v8

    .line 690
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    .line 691
    .line 692
    .line 693
    move-result v0

    .line 694
    const/16 v9, 0x33

    .line 695
    .line 696
    invoke-static {v9, v4, v8, v0}, Landroid/graphics/Color;->argb(IIII)I

    .line 697
    .line 698
    .line 699
    move-result v0

    .line 700
    invoke-virtual {v3, v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 701
    .line 702
    .line 703
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 704
    .line 705
    .line 706
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 707
    .line 708
    .line 709
    move-result-object v0

    .line 710
    iget-object v0, v0, Lw1/e;->z:Landroid/widget/TextView;

    .line 711
    .line 712
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->getFavorite()Z

    .line 713
    .line 714
    .line 715
    move-result v2

    .line 716
    if-eqz v2, :cond_10

    .line 717
    .line 718
    const-string v2, "\u2605"

    .line 719
    .line 720
    goto :goto_9

    .line 721
    :cond_10
    const-string v2, "\u2606"

    .line 722
    .line 723
    :goto_9
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 724
    .line 725
    .line 726
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 727
    .line 728
    .line 729
    move-result-object v0

    .line 730
    iget-object v0, v0, Lw1/e;->c:Landroid/widget/ImageButton;

    .line 731
    .line 732
    new-instance v2, LC1/p0;

    .line 733
    .line 734
    invoke-direct {v2, p0, v5}, LC1/p0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;I)V

    .line 735
    .line 736
    .line 737
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 738
    .line 739
    .line 740
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 741
    .line 742
    .line 743
    move-result-object v0

    .line 744
    iget-object v0, v0, Lw1/e;->z:Landroid/widget/TextView;

    .line 745
    .line 746
    new-instance v2, LC1/n0;

    .line 747
    .line 748
    invoke-direct {v2, p0, p1, v6}, LC1/n0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;I)V

    .line 749
    .line 750
    .line 751
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 752
    .line 753
    .line 754
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 755
    .line 756
    .line 757
    move-result-object v0

    .line 758
    iget-object v0, v0, Lw1/e;->e:Landroid/widget/Button;

    .line 759
    .line 760
    new-instance v2, LC1/n0;

    .line 761
    .line 762
    invoke-direct {v2, p0, p1, v5}, LC1/n0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;I)V

    .line 763
    .line 764
    .line 765
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 766
    .line 767
    .line 768
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 769
    .line 770
    .line 771
    move-result-object v0

    .line 772
    iget-object v0, v0, Lw1/e;->j:Landroid/widget/Button;

    .line 773
    .line 774
    new-instance v2, LC1/n0;

    .line 775
    .line 776
    invoke-direct {v2, p0, p1, v7}, LC1/n0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;I)V

    .line 777
    .line 778
    .line 779
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 780
    .line 781
    .line 782
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 783
    .line 784
    .line 785
    move-result-object v0

    .line 786
    iget-object v0, v0, Lw1/e;->i:Landroid/widget/Button;

    .line 787
    .line 788
    new-instance v2, LC1/n0;

    .line 789
    .line 790
    invoke-direct {v2, p0, p1, v1}, LC1/n0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;I)V

    .line 791
    .line 792
    .line 793
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 794
    .line 795
    .line 796
    invoke-static {p0, p1, v6}, Lcom/bumptech/glide/c;->c(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;Z)V

    .line 797
    .line 798
    .line 799
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 800
    .line 801
    .line 802
    move-result-object p1

    .line 803
    iget-object p1, p1, Lw1/e;->w:Lcom/google/android/material/tabs/TabLayout;

    .line 804
    .line 805
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    .line 806
    .line 807
    .line 808
    move-result p1

    .line 809
    if-ne p1, v5, :cond_11

    .line 810
    .line 811
    invoke-static {p0}, LC1/R0;->d(Lcom/minhub/gamehub/hub/GameDetailActivity;)V

    .line 812
    .line 813
    .line 814
    :cond_11
    return-void
.end method

.method public final n()Lw1/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/GameDetailActivity;->e:Lw1/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "b"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final o(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xca9

    .line 6
    .line 7
    const-string v2, "getString(...)"

    .line 8
    .line 9
    if-eq v0, v1, :cond_a

    .line 10
    .line 11
    const/16 v1, 0xd1b

    .line 12
    .line 13
    if-eq v0, v1, :cond_8

    .line 14
    .line 15
    const/16 v1, 0xd37

    .line 16
    .line 17
    if-eq v0, v1, :cond_6

    .line 18
    .line 19
    const/16 v1, 0xd64

    .line 20
    .line 21
    if-eq v0, v1, :cond_4

    .line 22
    .line 23
    const/16 v1, 0xeb3

    .line 24
    .line 25
    if-eq v0, v1, :cond_2

    .line 26
    .line 27
    const/16 v1, 0xf2e

    .line 28
    .line 29
    if-eq v0, v1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string v0, "zh"

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const p1, 0x7f120238

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object p1

    .line 52
    :cond_2
    const-string v0, "vi"

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    const p1, 0x7f12023d

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-object p1

    .line 72
    :cond_4
    const-string v0, "ko"

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_5

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_5
    const p1, 0x7f12023c

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-object p1

    .line 92
    :cond_6
    const-string v0, "ja"

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_7

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_7
    const p1, 0x7f12023b

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return-object p1

    .line 112
    :cond_8
    const-string v0, "id"

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-nez v0, :cond_9

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_9
    const p1, 0x7f12023a

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-object p1

    .line 132
    :cond_a
    const-string v0, "en"

    .line 133
    .line 134
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-nez v0, :cond_b

    .line 139
    .line 140
    :goto_0
    return-object p1

    .line 141
    :cond_b
    const p1, 0x7f120239

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    return-object p1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 49

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const v2, 0x7f0c0021

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const v2, 0x7f090072

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    move-object v8, v5

    .line 27
    check-cast v8, Landroid/widget/Button;

    .line 28
    .line 29
    if-eqz v8, :cond_c

    .line 30
    .line 31
    const v2, 0x7f090079

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    move-object v9, v5

    .line 39
    check-cast v9, Landroid/widget/ImageButton;

    .line 40
    .line 41
    if-eqz v9, :cond_c

    .line 42
    .line 43
    const v2, 0x7f0900a7

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    move-object v10, v5

    .line 51
    check-cast v10, Landroid/widget/Button;

    .line 52
    .line 53
    if-eqz v10, :cond_c

    .line 54
    .line 55
    const v2, 0x7f0900c9

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    move-object v11, v5

    .line 63
    check-cast v11, Landroid/widget/Button;

    .line 64
    .line 65
    if-eqz v11, :cond_c

    .line 66
    .line 67
    const v2, 0x7f0900da

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    move-object v12, v5

    .line 75
    check-cast v12, Landroid/widget/Button;

    .line 76
    .line 77
    if-eqz v12, :cond_c

    .line 78
    .line 79
    const v2, 0x7f0900e6

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    move-object v13, v5

    .line 87
    check-cast v13, Landroid/widget/Button;

    .line 88
    .line 89
    if-eqz v13, :cond_c

    .line 90
    .line 91
    const v2, 0x7f0900e7

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    move-object v14, v5

    .line 99
    check-cast v14, Landroid/widget/Button;

    .line 100
    .line 101
    if-eqz v14, :cond_c

    .line 102
    .line 103
    const v2, 0x7f0900e8

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    move-object v15, v5

    .line 111
    check-cast v15, Landroid/widget/Button;

    .line 112
    .line 113
    if-eqz v15, :cond_c

    .line 114
    .line 115
    const v2, 0x7f0900e9

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    move-object/from16 v16, v5

    .line 123
    .line 124
    check-cast v16, Landroid/widget/Button;

    .line 125
    .line 126
    if-eqz v16, :cond_c

    .line 127
    .line 128
    const v2, 0x7f090114

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    check-cast v5, Landroid/widget/FrameLayout;

    .line 136
    .line 137
    if-eqz v5, :cond_c

    .line 138
    .line 139
    const v2, 0x7f090119

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    move-object/from16 v17, v5

    .line 147
    .line 148
    check-cast v17, Landroid/widget/ScrollView;

    .line 149
    .line 150
    if-eqz v17, :cond_c

    .line 151
    .line 152
    const v2, 0x7f09011a

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    move-object/from16 v18, v5

    .line 160
    .line 161
    check-cast v18, Landroidx/core/widget/NestedScrollView;

    .line 162
    .line 163
    if-eqz v18, :cond_c

    .line 164
    .line 165
    const v2, 0x7f09011b

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    move-object/from16 v19, v5

    .line 173
    .line 174
    check-cast v19, Landroid/widget/LinearLayout;

    .line 175
    .line 176
    if-eqz v19, :cond_c

    .line 177
    .line 178
    const v2, 0x7f090180

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    move-object/from16 v20, v5

    .line 186
    .line 187
    check-cast v20, Landroid/widget/FrameLayout;

    .line 188
    .line 189
    if-eqz v20, :cond_c

    .line 190
    .line 191
    const v2, 0x7f0901d2

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    move-object/from16 v21, v5

    .line 199
    .line 200
    check-cast v21, Landroid/widget/HorizontalScrollView;

    .line 201
    .line 202
    if-eqz v21, :cond_c

    .line 203
    .line 204
    const v2, 0x7f0901d8

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    move-object/from16 v22, v5

    .line 212
    .line 213
    check-cast v22, Landroid/widget/LinearLayout;

    .line 214
    .line 215
    if-eqz v22, :cond_c

    .line 216
    .line 217
    const v2, 0x7f090272

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    move-object/from16 v23, v5

    .line 225
    .line 226
    check-cast v23, Landroid/widget/LinearLayout;

    .line 227
    .line 228
    if-eqz v23, :cond_c

    .line 229
    .line 230
    const v2, 0x7f09027f

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    move-object/from16 v24, v5

    .line 238
    .line 239
    check-cast v24, Landroid/widget/LinearLayout;

    .line 240
    .line 241
    if-eqz v24, :cond_c

    .line 242
    .line 243
    const v2, 0x7f090280

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    move-object/from16 v25, v5

    .line 251
    .line 252
    check-cast v25, Landroid/widget/LinearLayout;

    .line 253
    .line 254
    if-eqz v25, :cond_c

    .line 255
    .line 256
    const v2, 0x7f09028b

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    move-object/from16 v26, v5

    .line 264
    .line 265
    check-cast v26, Landroidx/recyclerview/widget/RecyclerView;

    .line 266
    .line 267
    if-eqz v26, :cond_c

    .line 268
    .line 269
    const v2, 0x7f09028c

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 273
    .line 274
    .line 275
    move-result-object v5

    .line 276
    move-object/from16 v27, v5

    .line 277
    .line 278
    check-cast v27, Landroidx/recyclerview/widget/RecyclerView;

    .line 279
    .line 280
    if-eqz v27, :cond_c

    .line 281
    .line 282
    const v2, 0x7f0902c3

    .line 283
    .line 284
    .line 285
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 286
    .line 287
    .line 288
    move-result-object v5

    .line 289
    move-object/from16 v28, v5

    .line 290
    .line 291
    check-cast v28, Landroid/widget/Spinner;

    .line 292
    .line 293
    if-eqz v28, :cond_c

    .line 294
    .line 295
    const v2, 0x7f0902e9

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 299
    .line 300
    .line 301
    move-result-object v5

    .line 302
    move-object/from16 v29, v5

    .line 303
    .line 304
    check-cast v29, Lcom/google/android/material/tabs/TabLayout;

    .line 305
    .line 306
    if-eqz v29, :cond_c

    .line 307
    .line 308
    const v2, 0x7f09033b

    .line 309
    .line 310
    .line 311
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 312
    .line 313
    .line 314
    move-result-object v5

    .line 315
    move-object/from16 v30, v5

    .line 316
    .line 317
    check-cast v30, Landroid/widget/TextView;

    .line 318
    .line 319
    if-eqz v30, :cond_c

    .line 320
    .line 321
    const v2, 0x7f090347

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 325
    .line 326
    .line 327
    move-result-object v5

    .line 328
    move-object/from16 v31, v5

    .line 329
    .line 330
    check-cast v31, Landroid/widget/TextView;

    .line 331
    .line 332
    if-eqz v31, :cond_c

    .line 333
    .line 334
    const v2, 0x7f09034a

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 338
    .line 339
    .line 340
    move-result-object v5

    .line 341
    move-object/from16 v32, v5

    .line 342
    .line 343
    check-cast v32, Landroid/widget/TextView;

    .line 344
    .line 345
    if-eqz v32, :cond_c

    .line 346
    .line 347
    const v2, 0x7f090354

    .line 348
    .line 349
    .line 350
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 351
    .line 352
    .line 353
    move-result-object v5

    .line 354
    move-object/from16 v33, v5

    .line 355
    .line 356
    check-cast v33, Landroid/widget/TextView;

    .line 357
    .line 358
    if-eqz v33, :cond_c

    .line 359
    .line 360
    const v2, 0x7f090355

    .line 361
    .line 362
    .line 363
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 364
    .line 365
    .line 366
    move-result-object v5

    .line 367
    move-object/from16 v34, v5

    .line 368
    .line 369
    check-cast v34, Landroid/widget/TextView;

    .line 370
    .line 371
    if-eqz v34, :cond_c

    .line 372
    .line 373
    const v2, 0x7f090356

    .line 374
    .line 375
    .line 376
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 377
    .line 378
    .line 379
    move-result-object v5

    .line 380
    move-object/from16 v35, v5

    .line 381
    .line 382
    check-cast v35, Landroid/widget/TextView;

    .line 383
    .line 384
    if-eqz v35, :cond_c

    .line 385
    .line 386
    const v2, 0x7f090357

    .line 387
    .line 388
    .line 389
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 390
    .line 391
    .line 392
    move-result-object v5

    .line 393
    move-object/from16 v36, v5

    .line 394
    .line 395
    check-cast v36, Landroid/widget/TextView;

    .line 396
    .line 397
    if-eqz v36, :cond_c

    .line 398
    .line 399
    const v2, 0x7f090358

    .line 400
    .line 401
    .line 402
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 403
    .line 404
    .line 405
    move-result-object v5

    .line 406
    move-object/from16 v37, v5

    .line 407
    .line 408
    check-cast v37, Landroid/widget/TextView;

    .line 409
    .line 410
    if-eqz v37, :cond_c

    .line 411
    .line 412
    const v2, 0x7f090361

    .line 413
    .line 414
    .line 415
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 416
    .line 417
    .line 418
    move-result-object v5

    .line 419
    move-object/from16 v38, v5

    .line 420
    .line 421
    check-cast v38, Landroid/widget/TextView;

    .line 422
    .line 423
    if-eqz v38, :cond_c

    .line 424
    .line 425
    const v2, 0x7f090373

    .line 426
    .line 427
    .line 428
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 429
    .line 430
    .line 431
    move-result-object v5

    .line 432
    move-object/from16 v39, v5

    .line 433
    .line 434
    check-cast v39, Landroid/widget/TextView;

    .line 435
    .line 436
    if-eqz v39, :cond_c

    .line 437
    .line 438
    const v2, 0x7f090384

    .line 439
    .line 440
    .line 441
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 442
    .line 443
    .line 444
    move-result-object v5

    .line 445
    move-object/from16 v40, v5

    .line 446
    .line 447
    check-cast v40, Landroid/widget/TextView;

    .line 448
    .line 449
    if-eqz v40, :cond_c

    .line 450
    .line 451
    const v2, 0x7f09038e

    .line 452
    .line 453
    .line 454
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 455
    .line 456
    .line 457
    move-result-object v5

    .line 458
    move-object/from16 v41, v5

    .line 459
    .line 460
    check-cast v41, Landroid/widget/TextView;

    .line 461
    .line 462
    if-eqz v41, :cond_c

    .line 463
    .line 464
    const v2, 0x7f09038f

    .line 465
    .line 466
    .line 467
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 468
    .line 469
    .line 470
    move-result-object v5

    .line 471
    move-object/from16 v42, v5

    .line 472
    .line 473
    check-cast v42, Landroid/widget/TextView;

    .line 474
    .line 475
    if-eqz v42, :cond_c

    .line 476
    .line 477
    const v2, 0x7f09039d

    .line 478
    .line 479
    .line 480
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 481
    .line 482
    .line 483
    move-result-object v5

    .line 484
    move-object/from16 v43, v5

    .line 485
    .line 486
    check-cast v43, Landroid/widget/TextView;

    .line 487
    .line 488
    if-eqz v43, :cond_c

    .line 489
    .line 490
    const v2, 0x7f0903ab

    .line 491
    .line 492
    .line 493
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 494
    .line 495
    .line 496
    move-result-object v5

    .line 497
    move-object/from16 v44, v5

    .line 498
    .line 499
    check-cast v44, Landroid/widget/TextView;

    .line 500
    .line 501
    if-eqz v44, :cond_c

    .line 502
    .line 503
    const v2, 0x7f0903ae

    .line 504
    .line 505
    .line 506
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 507
    .line 508
    .line 509
    move-result-object v5

    .line 510
    move-object/from16 v45, v5

    .line 511
    .line 512
    check-cast v45, Landroid/widget/TextView;

    .line 513
    .line 514
    if-eqz v45, :cond_c

    .line 515
    .line 516
    const v2, 0x7f0903af

    .line 517
    .line 518
    .line 519
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 520
    .line 521
    .line 522
    move-result-object v5

    .line 523
    move-object/from16 v46, v5

    .line 524
    .line 525
    check-cast v46, Landroid/widget/TextView;

    .line 526
    .line 527
    if-eqz v46, :cond_c

    .line 528
    .line 529
    const v2, 0x7f0903b7

    .line 530
    .line 531
    .line 532
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 533
    .line 534
    .line 535
    move-result-object v5

    .line 536
    move-object/from16 v47, v5

    .line 537
    .line 538
    check-cast v47, Landroid/widget/TextView;

    .line 539
    .line 540
    if-eqz v47, :cond_c

    .line 541
    .line 542
    const v2, 0x7f0903c0

    .line 543
    .line 544
    .line 545
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 546
    .line 547
    .line 548
    move-result-object v48

    .line 549
    if-eqz v48, :cond_c

    .line 550
    .line 551
    new-instance v6, Lw1/e;

    .line 552
    .line 553
    move-object v7, v1

    .line 554
    check-cast v7, Landroid/widget/LinearLayout;

    .line 555
    .line 556
    invoke-direct/range {v6 .. v48}, Lw1/e;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/ImageButton;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ScrollView;Landroidx/core/widget/NestedScrollView;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/HorizontalScrollView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/Spinner;Lcom/google/android/material/tabs/TabLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V

    .line 557
    .line 558
    .line 559
    const-string v1, "inflate(...)"

    .line 560
    .line 561
    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    const-string v1, "<set-?>"

    .line 565
    .line 566
    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    iput-object v6, v0, Lcom/minhub/gamehub/hub/GameDetailActivity;->e:Lw1/e;

    .line 570
    .line 571
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 572
    .line 573
    .line 574
    move-result-object v2

    .line 575
    iget-object v2, v2, Lw1/e;->a:Landroid/widget/LinearLayout;

    .line 576
    .line 577
    invoke-virtual {v0, v2}, Le/j;->setContentView(Landroid/view/View;)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 581
    .line 582
    .line 583
    move-result-object v2

    .line 584
    iget-object v2, v2, Lw1/e;->a:Landroid/widget/LinearLayout;

    .line 585
    .line 586
    new-instance v5, LC1/m0;

    .line 587
    .line 588
    const/4 v6, 0x3

    .line 589
    invoke-direct {v5, v0, v6}, LC1/m0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;I)V

    .line 590
    .line 591
    .line 592
    invoke-static {v2, v5}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 593
    .line 594
    .line 595
    new-instance v2, Lcom/minhub/gamehub/data/SaveRepository;

    .line 596
    .line 597
    invoke-direct {v2, v0}, Lcom/minhub/gamehub/data/SaveRepository;-><init>(Landroid/content/Context;)V

    .line 598
    .line 599
    .line 600
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    iput-object v2, v0, Lcom/minhub/gamehub/hub/GameDetailActivity;->i:Lcom/minhub/gamehub/data/SaveRepository;

    .line 604
    .line 605
    sget-object v2, LS1/f;->a:Ljava/util/List;

    .line 606
    .line 607
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 608
    .line 609
    .line 610
    move-result-object v5

    .line 611
    iget-object v5, v5, Lw1/e;->q:Landroid/widget/LinearLayout;

    .line 612
    .line 613
    const-string v6, "renderModeRow"

    .line 614
    .line 615
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    const/4 v6, 0x4

    .line 619
    int-to-float v6, v6

    .line 620
    invoke-virtual {v0}, Le/j;->getResources()Landroid/content/res/Resources;

    .line 621
    .line 622
    .line 623
    move-result-object v7

    .line 624
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 625
    .line 626
    .line 627
    move-result-object v7

    .line 628
    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    .line 629
    .line 630
    mul-float/2addr v6, v7

    .line 631
    float-to-int v6, v6

    .line 632
    const/16 v7, 0xa

    .line 633
    .line 634
    int-to-float v7, v7

    .line 635
    invoke-virtual {v0}, Le/j;->getResources()Landroid/content/res/Resources;

    .line 636
    .line 637
    .line 638
    move-result-object v8

    .line 639
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 640
    .line 641
    .line 642
    move-result-object v8

    .line 643
    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    .line 644
    .line 645
    mul-float/2addr v7, v8

    .line 646
    float-to-int v7, v7

    .line 647
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 648
    .line 649
    .line 650
    move-result-object v8

    .line 651
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 652
    .line 653
    .line 654
    move-result v9

    .line 655
    if-eqz v9, :cond_0

    .line 656
    .line 657
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    move-result-object v9

    .line 661
    check-cast v9, LS1/e;

    .line 662
    .line 663
    new-instance v10, Landroid/widget/Button;

    .line 664
    .line 665
    invoke-direct {v10, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 669
    .line 670
    .line 671
    const-string v11, "WebGL 2"

    .line 672
    .line 673
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 674
    .line 675
    .line 676
    const/high16 v11, 0x41100000    # 9.0f

    .line 677
    .line 678
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 679
    .line 680
    .line 681
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 682
    .line 683
    .line 684
    invoke-virtual {v10, v7, v6, v7, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 685
    .line 686
    .line 687
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {v10, v4}, Landroid/view/View;->setMinimumHeight(I)V

    .line 691
    .line 692
    .line 693
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 694
    .line 695
    const/4 v12, -0x2

    .line 696
    invoke-direct {v11, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 697
    .line 698
    .line 699
    const/4 v12, 0x6

    .line 700
    int-to-float v12, v12

    .line 701
    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 702
    .line 703
    .line 704
    move-result-object v13

    .line 705
    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 706
    .line 707
    .line 708
    move-result-object v13

    .line 709
    iget v13, v13, Landroid/util/DisplayMetrics;->density:F

    .line 710
    .line 711
    mul-float/2addr v12, v13

    .line 712
    float-to-int v12, v12

    .line 713
    invoke-virtual {v11, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 714
    .line 715
    .line 716
    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 717
    .line 718
    .line 719
    new-instance v11, LC1/w;

    .line 720
    .line 721
    invoke-direct {v11, v0, v9, v5, v2}, LC1/w;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;LS1/e;Landroid/widget/LinearLayout;Ljava/util/List;)V

    .line 722
    .line 723
    .line 724
    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 725
    .line 726
    .line 727
    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 728
    .line 729
    .line 730
    goto :goto_0

    .line 731
    :cond_0
    invoke-static {v5, v2, v0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->s(Landroid/widget/LinearLayout;Ljava/util/List;Lcom/minhub/gamehub/hub/GameDetailActivity;)V

    .line 732
    .line 733
    .line 734
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 735
    .line 736
    .line 737
    move-result-object v2

    .line 738
    iget-object v2, v2, Lw1/e;->w:Lcom/google/android/material/tabs/TabLayout;

    .line 739
    .line 740
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 741
    .line 742
    .line 743
    move-result-object v5

    .line 744
    iget-object v5, v5, Lw1/e;->w:Lcom/google/android/material/tabs/TabLayout;

    .line 745
    .line 746
    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout;->h()Lc1/f;

    .line 747
    .line 748
    .line 749
    move-result-object v5

    .line 750
    const v6, 0x7f1203e5

    .line 751
    .line 752
    .line 753
    invoke-virtual {v5, v6}, Lc1/f;->a(I)V

    .line 754
    .line 755
    .line 756
    invoke-virtual {v2, v5}, Lcom/google/android/material/tabs/TabLayout;->b(Lc1/f;)V

    .line 757
    .line 758
    .line 759
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 760
    .line 761
    .line 762
    move-result-object v2

    .line 763
    iget-object v2, v2, Lw1/e;->w:Lcom/google/android/material/tabs/TabLayout;

    .line 764
    .line 765
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 766
    .line 767
    .line 768
    move-result-object v5

    .line 769
    iget-object v5, v5, Lw1/e;->w:Lcom/google/android/material/tabs/TabLayout;

    .line 770
    .line 771
    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout;->h()Lc1/f;

    .line 772
    .line 773
    .line 774
    move-result-object v5

    .line 775
    const v6, 0x7f1203e7

    .line 776
    .line 777
    .line 778
    invoke-virtual {v5, v6}, Lc1/f;->a(I)V

    .line 779
    .line 780
    .line 781
    invoke-virtual {v2, v5}, Lcom/google/android/material/tabs/TabLayout;->b(Lc1/f;)V

    .line 782
    .line 783
    .line 784
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 785
    .line 786
    .line 787
    move-result-object v2

    .line 788
    iget-object v2, v2, Lw1/e;->w:Lcom/google/android/material/tabs/TabLayout;

    .line 789
    .line 790
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 791
    .line 792
    .line 793
    move-result-object v5

    .line 794
    iget-object v5, v5, Lw1/e;->w:Lcom/google/android/material/tabs/TabLayout;

    .line 795
    .line 796
    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout;->h()Lc1/f;

    .line 797
    .line 798
    .line 799
    move-result-object v5

    .line 800
    const v6, 0x7f1203e6

    .line 801
    .line 802
    .line 803
    invoke-virtual {v5, v6}, Lc1/f;->a(I)V

    .line 804
    .line 805
    .line 806
    invoke-virtual {v2, v5}, Lcom/google/android/material/tabs/TabLayout;->b(Lc1/f;)V

    .line 807
    .line 808
    .line 809
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 810
    .line 811
    .line 812
    move-result-object v2

    .line 813
    iget-object v2, v2, Lw1/e;->w:Lcom/google/android/material/tabs/TabLayout;

    .line 814
    .line 815
    new-instance v5, LC1/y0;

    .line 816
    .line 817
    const/4 v6, 0x0

    .line 818
    invoke-direct {v5, v0, v6}, LC1/y0;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 819
    .line 820
    .line 821
    invoke-virtual {v2, v5}, Lcom/google/android/material/tabs/TabLayout;->a(Lc1/b;)V

    .line 822
    .line 823
    .line 824
    invoke-virtual {v0, v4}, Lcom/minhub/gamehub/hub/GameDetailActivity;->t(I)V

    .line 825
    .line 826
    .line 827
    const-string v2, "<this>"

    .line 828
    .line 829
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 830
    .line 831
    .line 832
    new-instance v5, LC1/g2;

    .line 833
    .line 834
    new-instance v6, LC1/F0;

    .line 835
    .line 836
    const/4 v7, 0x2

    .line 837
    invoke-direct {v6, v0, v7}, LC1/F0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;I)V

    .line 838
    .line 839
    .line 840
    new-instance v7, LC1/F0;

    .line 841
    .line 842
    const/4 v8, 0x3

    .line 843
    invoke-direct {v7, v0, v8}, LC1/F0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;I)V

    .line 844
    .line 845
    .line 846
    new-instance v8, LC1/F0;

    .line 847
    .line 848
    const/4 v9, 0x4

    .line 849
    invoke-direct {v8, v0, v9}, LC1/F0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;I)V

    .line 850
    .line 851
    .line 852
    const/4 v9, 0x1

    .line 853
    invoke-direct {v5, v6, v7, v8, v9}, LC1/g2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Z)V

    .line 854
    .line 855
    .line 856
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 857
    .line 858
    .line 859
    iput-object v5, v0, Lcom/minhub/gamehub/hub/GameDetailActivity;->j:LC1/g2;

    .line 860
    .line 861
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 862
    .line 863
    .line 864
    move-result-object v5

    .line 865
    iget-object v5, v5, Lw1/e;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 866
    .line 867
    new-instance v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 868
    .line 869
    invoke-direct {v6, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 870
    .line 871
    .line 872
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(LP/g0;)V

    .line 873
    .line 874
    .line 875
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 876
    .line 877
    .line 878
    move-result-object v5

    .line 879
    iget-object v5, v5, Lw1/e;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 880
    .line 881
    iget-object v6, v0, Lcom/minhub/gamehub/hub/GameDetailActivity;->j:LC1/g2;

    .line 882
    .line 883
    if-eqz v6, :cond_1

    .line 884
    .line 885
    goto :goto_1

    .line 886
    :cond_1
    const-string v6, "saveAdapter"

    .line 887
    .line 888
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 889
    .line 890
    .line 891
    move-object v6, v3

    .line 892
    :goto_1
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(LP/W;)V

    .line 893
    .line 894
    .line 895
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 896
    .line 897
    .line 898
    move-result-object v5

    .line 899
    iget-object v5, v5, Lw1/e;->d:Landroid/widget/Button;

    .line 900
    .line 901
    new-instance v6, LC1/p0;

    .line 902
    .line 903
    const/4 v7, 0x4

    .line 904
    invoke-direct {v6, v0, v7}, LC1/p0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;I)V

    .line 905
    .line 906
    .line 907
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 908
    .line 909
    .line 910
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 911
    .line 912
    .line 913
    new-instance v10, LC1/b2;

    .line 914
    .line 915
    new-instance v11, LC1/F0;

    .line 916
    .line 917
    const/4 v2, 0x0

    .line 918
    invoke-direct {v11, v0, v2}, LC1/F0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;I)V

    .line 919
    .line 920
    .line 921
    new-instance v12, LC1/F0;

    .line 922
    .line 923
    const/4 v2, 0x1

    .line 924
    invoke-direct {v12, v0, v2}, LC1/F0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;I)V

    .line 925
    .line 926
    .line 927
    new-instance v13, LC1/H0;

    .line 928
    .line 929
    const/4 v2, 0x0

    .line 930
    invoke-direct {v13, v0, v2}, LC1/H0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;I)V

    .line 931
    .line 932
    .line 933
    new-instance v14, LC1/H0;

    .line 934
    .line 935
    const/4 v2, 0x1

    .line 936
    invoke-direct {v14, v0, v2}, LC1/H0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;I)V

    .line 937
    .line 938
    .line 939
    new-instance v15, LC1/H0;

    .line 940
    .line 941
    const/4 v2, 0x2

    .line 942
    invoke-direct {v15, v0, v2}, LC1/H0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;I)V

    .line 943
    .line 944
    .line 945
    invoke-direct/range {v10 .. v15}, LC1/b2;-><init>(LC1/F0;LC1/F0;LC1/H0;LC1/H0;LC1/H0;)V

    .line 946
    .line 947
    .line 948
    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 949
    .line 950
    .line 951
    iput-object v10, v0, Lcom/minhub/gamehub/hub/GameDetailActivity;->r:LC1/b2;

    .line 952
    .line 953
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 954
    .line 955
    .line 956
    move-result-object v2

    .line 957
    iget-object v2, v2, Lw1/e;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 958
    .line 959
    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 960
    .line 961
    invoke-direct {v5, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 962
    .line 963
    .line 964
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(LP/g0;)V

    .line 965
    .line 966
    .line 967
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 968
    .line 969
    .line 970
    move-result-object v2

    .line 971
    iget-object v2, v2, Lw1/e;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 972
    .line 973
    iget-object v5, v0, Lcom/minhub/gamehub/hub/GameDetailActivity;->r:LC1/b2;

    .line 974
    .line 975
    if-eqz v5, :cond_2

    .line 976
    .line 977
    goto :goto_2

    .line 978
    :cond_2
    const-string v5, "pluginManagerAdapter"

    .line 979
    .line 980
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 981
    .line 982
    .line 983
    move-object v5, v3

    .line 984
    :goto_2
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(LP/W;)V

    .line 985
    .line 986
    .line 987
    new-instance v2, LP/G;

    .line 988
    .line 989
    new-instance v5, LC1/N0;

    .line 990
    .line 991
    invoke-direct {v5, v0}, LC1/N0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;)V

    .line 992
    .line 993
    .line 994
    invoke-direct {v2, v5}, LP/G;-><init>(LC1/N0;)V

    .line 995
    .line 996
    .line 997
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 998
    .line 999
    .line 1000
    iput-object v2, v0, Lcom/minhub/gamehub/hub/GameDetailActivity;->s:LP/G;

    .line 1001
    .line 1002
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v1

    .line 1006
    iget-object v1, v1, Lw1/e;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 1007
    .line 1008
    iget-object v5, v2, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 1009
    .line 1010
    if-ne v5, v1, :cond_3

    .line 1011
    .line 1012
    goto/16 :goto_5

    .line 1013
    .line 1014
    :cond_3
    iget-object v6, v2, LP/G;->z:LP/C;

    .line 1015
    .line 1016
    if-eqz v5, :cond_9

    .line 1017
    .line 1018
    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/RecyclerView;->a0(LP/d0;)V

    .line 1019
    .line 1020
    .line 1021
    iget-object v5, v2, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 1022
    .line 1023
    iget-object v7, v5, Landroidx/recyclerview/widget/RecyclerView;->r:Ljava/util/ArrayList;

    .line 1024
    .line 1025
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1026
    .line 1027
    .line 1028
    iget-object v7, v5, Landroidx/recyclerview/widget/RecyclerView;->s:LP/k0;

    .line 1029
    .line 1030
    if-ne v7, v6, :cond_4

    .line 1031
    .line 1032
    iput-object v3, v5, Landroidx/recyclerview/widget/RecyclerView;->s:LP/k0;

    .line 1033
    .line 1034
    :cond_4
    iget-object v5, v2, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 1035
    .line 1036
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->D:Ljava/util/ArrayList;

    .line 1037
    .line 1038
    if-nez v5, :cond_5

    .line 1039
    .line 1040
    goto :goto_3

    .line 1041
    :cond_5
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1042
    .line 1043
    .line 1044
    :goto_3
    iget-object v5, v2, LP/G;->p:Ljava/util/ArrayList;

    .line 1045
    .line 1046
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1047
    .line 1048
    .line 1049
    move-result v7

    .line 1050
    sub-int/2addr v7, v9

    .line 1051
    :goto_4
    if-ltz v7, :cond_6

    .line 1052
    .line 1053
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v8

    .line 1057
    check-cast v8, LP/D;

    .line 1058
    .line 1059
    iget-object v9, v8, LP/D;->g:Landroid/animation/ValueAnimator;

    .line 1060
    .line 1061
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1062
    .line 1063
    .line 1064
    iget-object v8, v8, LP/D;->e:LP/y0;

    .line 1065
    .line 1066
    iget-object v9, v2, LP/G;->m:LC1/N0;

    .line 1067
    .line 1068
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1069
    .line 1070
    .line 1071
    invoke-static {v8}, LP/E;->a(LP/y0;)V

    .line 1072
    .line 1073
    .line 1074
    add-int/lit8 v7, v7, -0x1

    .line 1075
    .line 1076
    goto :goto_4

    .line 1077
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1078
    .line 1079
    .line 1080
    iput-object v3, v2, LP/G;->w:Landroid/view/View;

    .line 1081
    .line 1082
    iget-object v5, v2, LP/G;->t:Landroid/view/VelocityTracker;

    .line 1083
    .line 1084
    if-eqz v5, :cond_7

    .line 1085
    .line 1086
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    .line 1087
    .line 1088
    .line 1089
    iput-object v3, v2, LP/G;->t:Landroid/view/VelocityTracker;

    .line 1090
    .line 1091
    :cond_7
    iget-object v5, v2, LP/G;->y:LP/F;

    .line 1092
    .line 1093
    if-eqz v5, :cond_8

    .line 1094
    .line 1095
    iput-boolean v4, v5, LP/F;->a:Z

    .line 1096
    .line 1097
    iput-object v3, v2, LP/G;->y:LP/F;

    .line 1098
    .line 1099
    :cond_8
    iget-object v4, v2, LP/G;->x:Landroidx/core/view/GestureDetectorCompat;

    .line 1100
    .line 1101
    if-eqz v4, :cond_9

    .line 1102
    .line 1103
    iput-object v3, v2, LP/G;->x:Landroidx/core/view/GestureDetectorCompat;

    .line 1104
    .line 1105
    :cond_9
    iput-object v1, v2, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 1106
    .line 1107
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v1

    .line 1111
    const v3, 0x7f0700ac

    .line 1112
    .line 1113
    .line 1114
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 1115
    .line 1116
    .line 1117
    move-result v3

    .line 1118
    iput v3, v2, LP/G;->f:F

    .line 1119
    .line 1120
    const v3, 0x7f0700ab

    .line 1121
    .line 1122
    .line 1123
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 1124
    .line 1125
    .line 1126
    move-result v1

    .line 1127
    iput v1, v2, LP/G;->g:F

    .line 1128
    .line 1129
    iget-object v1, v2, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 1130
    .line 1131
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v1

    .line 1135
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v1

    .line 1139
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 1140
    .line 1141
    .line 1142
    move-result v1

    .line 1143
    iput v1, v2, LP/G;->q:I

    .line 1144
    .line 1145
    iget-object v1, v2, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 1146
    .line 1147
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->i(LP/d0;)V

    .line 1148
    .line 1149
    .line 1150
    iget-object v1, v2, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 1151
    .line 1152
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->r:Ljava/util/ArrayList;

    .line 1153
    .line 1154
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1155
    .line 1156
    .line 1157
    iget-object v1, v2, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 1158
    .line 1159
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->D:Ljava/util/ArrayList;

    .line 1160
    .line 1161
    if-nez v3, :cond_a

    .line 1162
    .line 1163
    new-instance v3, Ljava/util/ArrayList;

    .line 1164
    .line 1165
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1166
    .line 1167
    .line 1168
    iput-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->D:Ljava/util/ArrayList;

    .line 1169
    .line 1170
    :cond_a
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->D:Ljava/util/ArrayList;

    .line 1171
    .line 1172
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1173
    .line 1174
    .line 1175
    new-instance v1, LP/F;

    .line 1176
    .line 1177
    invoke-direct {v1, v2}, LP/F;-><init>(LP/G;)V

    .line 1178
    .line 1179
    .line 1180
    iput-object v1, v2, LP/G;->y:LP/F;

    .line 1181
    .line 1182
    new-instance v1, Landroidx/core/view/GestureDetectorCompat;

    .line 1183
    .line 1184
    iget-object v3, v2, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 1185
    .line 1186
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v3

    .line 1190
    iget-object v4, v2, LP/G;->y:LP/F;

    .line 1191
    .line 1192
    invoke-direct {v1, v3, v4}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 1193
    .line 1194
    .line 1195
    iput-object v1, v2, LP/G;->x:Landroidx/core/view/GestureDetectorCompat;

    .line 1196
    .line 1197
    :goto_5
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v1

    .line 1201
    iget-object v1, v1, Lw1/e;->f:Landroid/widget/Button;

    .line 1202
    .line 1203
    new-instance v2, LC1/p0;

    .line 1204
    .line 1205
    const/4 v3, 0x2

    .line 1206
    invoke-direct {v2, v0, v3}, LC1/p0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;I)V

    .line 1207
    .line 1208
    .line 1209
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1210
    .line 1211
    .line 1212
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v1

    .line 1216
    iget-object v1, v1, Lw1/e;->b:Landroid/widget/Button;

    .line 1217
    .line 1218
    new-instance v2, LC1/p0;

    .line 1219
    .line 1220
    const/4 v3, 0x3

    .line 1221
    invoke-direct {v2, v0, v3}, LC1/p0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;I)V

    .line 1222
    .line 1223
    .line 1224
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1225
    .line 1226
    .line 1227
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v1

    .line 1231
    const-string v2, "game_id"

    .line 1232
    .line 1233
    const/4 v3, -0x1

    .line 1234
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1235
    .line 1236
    .line 1237
    move-result v1

    .line 1238
    if-ne v1, v3, :cond_b

    .line 1239
    .line 1240
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1241
    .line 1242
    .line 1243
    return-void

    .line 1244
    :cond_b
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->q()LC1/Z0;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v2

    .line 1248
    iget-object v2, v2, LC1/Z0;->b:Landroidx/lifecycle/LiveData;

    .line 1249
    .line 1250
    new-instance v3, LA1/F;

    .line 1251
    .line 1252
    const/4 v4, 0x1

    .line 1253
    invoke-direct {v3, v1, v0, v4}, LA1/F;-><init>(ILjava/lang/Object;I)V

    .line 1254
    .line 1255
    .line 1256
    new-instance v1, LC1/x0;

    .line 1257
    .line 1258
    invoke-direct {v1, v3}, LC1/x0;-><init>(LA1/F;)V

    .line 1259
    .line 1260
    .line 1261
    invoke-virtual {v2, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 1262
    .line 1263
    .line 1264
    return-void

    .line 1265
    :cond_c
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v1

    .line 1269
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v1

    .line 1273
    new-instance v2, Ljava/lang/NullPointerException;

    .line 1274
    .line 1275
    const-string v3, "Missing required view with ID: "

    .line 1276
    .line 1277
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v1

    .line 1281
    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1282
    .line 1283
    .line 1284
    throw v2
.end method

.method public final onResume()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Ly1/B1;->e(LS1/c;)Ly1/A1;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const v2, 0x7f0c0049

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, v0, Ly1/A1;->b:Ljava/lang/String;

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    const v2, 0x7f120368

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v3, "getString(...)"

    .line 34
    .line 35
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v3, v0, Ly1/A1;->c:Ljava/lang/String;

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    const v4, 0x7f120369

    .line 43
    .line 44
    .line 45
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const-string v4, "\n\n"

    .line 54
    .line 55
    invoke-static {v3, v4, v2}, Lkotlin/collections/unsigned/a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    move-object v2, v3

    .line 62
    :cond_1
    const v3, 0x7f090396

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Landroid/widget/TextView;

    .line 70
    .line 71
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    iget-boolean v0, v0, Ly1/A1;->d:Z

    .line 75
    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    const v0, 0x7f090395

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroid/widget/TextView;

    .line 86
    .line 87
    const v3, 0x7f120363

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    :cond_2
    new-instance v0, LO0/b;

    .line 98
    .line 99
    const/4 v3, 0x0

    .line 100
    invoke-direct {v0, p0, v3}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 101
    .line 102
    .line 103
    iget-object v3, v0, Le/f;->c:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v3, Le/b;

    .line 106
    .line 107
    iput-object v1, v3, Le/b;->t:Landroid/view/View;

    .line 108
    .line 109
    invoke-virtual {v0}, LO0/b;->c()Le/g;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const-string v3, "create(...)"

    .line 114
    .line 115
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    if-eqz v3, :cond_3

    .line 123
    .line 124
    const v4, 0x106000d

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 128
    .line 129
    .line 130
    :cond_3
    const v3, 0x7f0900d0

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    new-instance v4, LC1/j;

    .line 138
    .line 139
    const/4 v5, 0x2

    .line 140
    invoke-direct {v4, v5, p0, v2}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    .line 145
    .line 146
    const v2, 0x7f0900cf

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    new-instance v2, LC1/z;

    .line 154
    .line 155
    const/4 v3, 0x2

    .line 156
    invoke-direct {v2, v0, v3}, LC1/z;-><init>(Le/g;I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 163
    .line 164
    .line 165
    :cond_4
    return-void
.end method

.method public final p()Lcom/minhub/gamehub/data/SaveRepository;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/GameDetailActivity;->i:Lcom/minhub/gamehub/data/SaveRepository;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "saveRepository"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final q()LC1/Z0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/GameDetailActivity;->f:Landroidx/lifecycle/ViewModelLazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, LC1/Z0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final r(Lcom/minhub/gamehub/data/Game;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->getEngine()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->getGamePath()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v4, "detail.launchGame gameId="

    .line 16
    .line 17
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, " engine="

    .line 24
    .line 25
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, " path="

    .line 32
    .line 33
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "GameLaunch"

    .line 44
    .line 45
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lcom/minhub/gamehub/data/GameKt;->getEngineEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameEngine;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    sget-object v1, LC1/q0;->a:[I

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    aget v0, v1, v0

    .line 59
    .line 60
    packed-switch v0, :pswitch_data_0

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    :goto_0
    move-object v4, v0

    .line 68
    goto :goto_1

    .line 69
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string v1, ":godot"

    .line 74
    .line 75
    invoke-static {v0, v1}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    goto :goto_0

    .line 80
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const-string v1, ":kirikiri"

    .line 85
    .line 86
    invoke-static {v0, v1}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    goto :goto_0

    .line 91
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const-string v1, ":vxace"

    .line 96
    .line 97
    invoke-static {v0, v1}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    goto :goto_0

    .line 102
    :pswitch_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const-string v1, ":renpy"

    .line 107
    .line 108
    invoke-static {v0, v1}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    goto :goto_0

    .line 113
    :pswitch_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    const-string v1, ":renpy7"

    .line 118
    .line 119
    invoke-static {v0, v1}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    goto :goto_0

    .line 124
    :goto_1
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    new-instance v1, LC1/w0;

    .line 129
    .line 130
    const/4 v6, 0x0

    .line 131
    const/4 v5, 0x0

    .line 132
    move-object v3, p0

    .line 133
    move-object v2, p1

    .line 134
    invoke-direct/range {v1 .. v6}, LC1/w0;-><init>(Ljava/lang/Object;Landroid/view/KeyEvent$Callback;Ljava/lang/String;Lkotlin/coroutines/Continuation;I)V

    .line 135
    .line 136
    .line 137
    const/4 p1, 0x3

    .line 138
    invoke-static {v0, v5, v1, p1}, LV1/A;->c(LV1/x;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)LV1/p0;

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    nop

    .line 143
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final t(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lw1/e;->k:Landroid/widget/ScrollView;

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    move v3, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v3, v1

    .line 15
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v0, v0, Lw1/e;->m:Landroid/widget/LinearLayout;

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    if-ne p1, v3, :cond_1

    .line 26
    .line 27
    move v3, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v3, v1

    .line 30
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v0, v0, Lw1/e;->l:Landroidx/core/widget/NestedScrollView;

    .line 38
    .line 39
    const/4 v3, 0x2

    .line 40
    if-ne p1, v3, :cond_2

    .line 41
    .line 42
    move v1, v2

    .line 43
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
