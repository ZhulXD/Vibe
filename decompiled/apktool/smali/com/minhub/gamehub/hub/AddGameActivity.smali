.class public final Lcom/minhub/gamehub/hub/AddGameActivity;
.super LS1/c;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/minhub/gamehub/hub/AddGameActivity;",
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
        "SMAP\nAddGameActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddGameActivity.kt\ncom/minhub/gamehub/hub/AddGameActivity\n+ 2 ActivityViewModelLazy.kt\nandroidx/activity/ActivityViewModelLazyKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,707:1\n75#2,13:708\n1#3:721\n1869#4,2:722\n1869#4,2:724\n1761#4,3:742\n1869#4,2:745\n161#5,8:726\n161#5,8:734\n*S KotlinDebug\n*F\n+ 1 AddGameActivity.kt\ncom/minhub/gamehub/hub/AddGameActivity\n*L\n42#1:708,13\n693#1:722,2\n702#1:724,2\n144#1:742,3\n560#1:745,2\n136#1:726,8\n137#1:734,8\n*E\n"
    }
.end annotation


# static fields
.field public static final synthetic y:I


# instance fields
.field public e:Lw1/a;

.field public final f:Landroid/os/Handler;

.field public final g:Ljava/util/Set;

.field public final h:Ljava/util/List;

.field public final i:Lkotlin/Lazy;

.field public final j:LC1/j0;

.field public final k:Landroidx/activity/result/ActivityResultLauncher;

.field public final l:Landroidx/activity/result/ActivityResultLauncher;

.field public m:LH0/o;

.field public n:Landroid/net/Uri;

.field public o:LC1/u;

.field public p:LC1/E1;

.field public q:LC1/E1;

.field public r:Ljava/util/List;

.field public s:Ljava/util/List;

.field public t:Ljava/util/List;

.field public u:LC1/Z;

.field public v:Z

.field public w:Z

.field public x:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, LS1/c;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LC1/r;

    .line 5
    .line 6
    invoke-direct {v0, p0}, LC1/r;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;)V

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
    new-instance v3, LC1/s;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-direct {v3, p0, v4}, LC1/s;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;I)V

    .line 21
    .line 22
    .line 23
    new-instance v4, LC1/s;

    .line 24
    .line 25
    const/4 v5, 0x1

    .line 26
    invoke-direct {v4, p0, v5}, LC1/s;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;I)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Landroid/os/Handler;

    .line 33
    .line 34
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->f:Landroid/os/Handler;

    .line 42
    .line 43
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->g:Ljava/util/Set;

    .line 53
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->h:Ljava/util/List;

    .line 64
    .line 65
    new-instance v0, LA1/q;

    .line 66
    .line 67
    const/4 v1, 0x7

    .line 68
    invoke-direct {v0, v1}, LA1/q;-><init>(I)V

    .line 69
    .line 70
    .line 71
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iput-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->i:Lkotlin/Lazy;

    .line 76
    .line 77
    new-instance v0, LC1/j0;

    .line 78
    .line 79
    new-instance v1, LC1/h;

    .line 80
    .line 81
    const/4 v2, 0x0

    .line 82
    invoke-direct {v1, p0, v2}, LC1/h;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;I)V

    .line 83
    .line 84
    .line 85
    invoke-direct {v0, v1}, LC1/j0;-><init>(LC1/h;)V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->j:LC1/j0;

    .line 89
    .line 90
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;

    .line 91
    .line 92
    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;-><init>()V

    .line 93
    .line 94
    .line 95
    new-instance v1, LC1/p;

    .line 96
    .line 97
    invoke-direct {v1, p0, v2}, LC1/p;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iput-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->k:Landroidx/activity/result/ActivityResultLauncher;

    .line 105
    .line 106
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$OpenDocumentTree;

    .line 107
    .line 108
    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$OpenDocumentTree;-><init>()V

    .line 109
    .line 110
    .line 111
    new-instance v1, LC1/p;

    .line 112
    .line 113
    const/4 v2, 0x1

    .line 114
    invoke-direct {v1, p0, v2}, LC1/p;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iput-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->l:Landroidx/activity/result/ActivityResultLauncher;

    .line 122
    .line 123
    new-instance v0, LC1/E1;

    .line 124
    .line 125
    invoke-direct {v0}, LC1/E1;-><init>()V

    .line 126
    .line 127
    .line 128
    iput-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->p:LC1/E1;

    .line 129
    .line 130
    new-instance v0, LC1/E1;

    .line 131
    .line 132
    invoke-direct {v0}, LC1/E1;-><init>()V

    .line 133
    .line 134
    .line 135
    iput-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->q:LC1/E1;

    .line 136
    .line 137
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    iput-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->r:Ljava/util/List;

    .line 142
    .line 143
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iput-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->s:Ljava/util/List;

    .line 148
    .line 149
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    iput-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->t:Ljava/util/List;

    .line 154
    .line 155
    new-instance v0, LC1/Z;

    .line 156
    .line 157
    const/4 v1, 0x0

    .line 158
    const/16 v2, 0xf

    .line 159
    .line 160
    invoke-direct {v0, v1, v1, v1, v2}, LC1/Z;-><init>(Ljava/lang/String;LC1/Y;LC1/c0;I)V

    .line 161
    .line 162
    .line 163
    iput-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->u:LC1/Z;

    .line 164
    .line 165
    return-void
.end method

.method public static final o(Landroid/widget/LinearLayout;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/minhub/gamehub/hub/AddGameActivity;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroid/widget/TextView;Landroidx/core/widget/NestedScrollView;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    iget-object v0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    new-instance v8, Landroid/widget/TextView;

    .line 25
    .line 26
    invoke-direct {v8, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p4, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/lang/CharSequence;

    .line 34
    .line 35
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    const/high16 v1, 0x41600000    # 14.0f

    .line 39
    .line 40
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const v2, 0x7f0700a0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 55
    .line 56
    .line 57
    const/16 v1, 0x10

    .line 58
    .line 59
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 60
    .line 61
    .line 62
    const/16 v1, 0xc

    .line 63
    .line 64
    int-to-float v1, v1

    .line 65
    invoke-virtual {p3}, Le/j;->getResources()Landroid/content/res/Resources;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 74
    .line 75
    mul-float/2addr v2, v1

    .line 76
    float-to-int v2, v2

    .line 77
    invoke-virtual {p3}, Le/j;->getResources()Landroid/content/res/Resources;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 86
    .line 87
    mul-float/2addr v1, v4

    .line 88
    float-to-int v1, v1

    .line 89
    const/4 v4, 0x0

    .line 90
    invoke-virtual {v8, v2, v4, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 91
    .line 92
    .line 93
    if-eqz v0, :cond_0

    .line 94
    .line 95
    const v1, 0x7f060019

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_0
    const v1, 0x7f06031b

    .line 100
    .line 101
    .line 102
    :goto_1
    invoke-static {p3, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    .line 108
    .line 109
    if-eqz v0, :cond_1

    .line 110
    .line 111
    const v0, 0x7f080091

    .line 112
    .line 113
    .line 114
    invoke-virtual {v8, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v8}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    const/4 v1, 0x1

    .line 122
    invoke-virtual {v8, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 123
    .line 124
    .line 125
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 126
    .line 127
    const/4 v1, -0x1

    .line 128
    const/4 v2, -0x2

    .line 129
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v8, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    .line 134
    .line 135
    new-instance v1, LC1/o;

    .line 136
    .line 137
    move-object v2, p2

    .line 138
    move-object v5, p3

    .line 139
    move-object v4, p5

    .line 140
    move-object v6, p6

    .line 141
    move-object/from16 v7, p7

    .line 142
    .line 143
    invoke-direct/range {v1 .. v7}, LC1/o;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lcom/minhub/gamehub/hub/AddGameActivity;Landroid/widget/TextView;Landroidx/core/widget/NestedScrollView;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v8, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 150
    .line 151
    .line 152
    goto/16 :goto_0

    .line 153
    .line 154
    :cond_2
    return-void
.end method

.method public static q(Landroid/app/Dialog;)V
    .locals 3

    .line 1
    const-string v0, "MinHub"

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, "Import dialog window already gone: "

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_1
    move-exception p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v2, "Import dialog already detached: "

    .line 47
    .line 48
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final A(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->u:LC1/Z;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->p:LC1/E1;

    .line 4
    .line 5
    const-string v2, "filter"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "pagerState"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget v1, v1, LC1/E1;->b:I

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-static {p1, v2, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-static {v0}, LC1/U;->c(LC1/Z;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    new-instance v0, LC1/d0;

    .line 33
    .line 34
    invoke-direct {v0, p1}, LC1/d0;-><init>(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, LC1/e0;

    .line 39
    .line 40
    invoke-direct {v0, p1}, LC1/e0;-><init>(I)V

    .line 41
    .line 42
    .line 43
    :goto_0
    instance-of p1, v0, LC1/e0;

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    check-cast v0, LC1/e0;

    .line 48
    .line 49
    iget p1, v0, LC1/e0;->m:I

    .line 50
    .line 51
    invoke-virtual {p0, p1, v2}, Lcom/minhub/gamehub/hub/AddGameActivity;->u(II)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    instance-of p1, v0, LC1/d0;

    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    iget-object p1, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->p:LC1/E1;

    .line 60
    .line 61
    check-cast v0, LC1/d0;

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    const/4 v2, 0x2

    .line 65
    iget v0, v0, LC1/d0;->m:I

    .line 66
    .line 67
    const/4 v3, 0x0

    .line 68
    invoke-static {p1, v0, v3, v1, v2}, LC1/E1;->a(LC1/E1;IZLjava/lang/String;I)LC1/E1;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iput-object p1, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->p:LC1/E1;

    .line 73
    .line 74
    iget-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->t:Ljava/util/List;

    .line 75
    .line 76
    iget p1, p1, LC1/E1;->a:I

    .line 77
    .line 78
    invoke-static {v0, p1}, LC1/U;->b(Ljava/util/List;I)Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iget-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->j:LC1/j0;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    const-string v1, "list"

    .line 88
    .line 89
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iput-object p1, v0, LC1/j0;->f:Ljava/lang/Object;

    .line 93
    .line 94
    invoke-virtual {v0}, LP/W;->c()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/AddGameActivity;->w()V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 102
    .line 103
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 104
    .line 105
    .line 106
    throw p1
.end method

.method public final B(LC1/Q;)V
    .locals 6

    .line 1
    const-string v0, "state"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const-string v2, "b"

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    move-object v0, v1

    .line 17
    :cond_0
    iget-object v0, v0, Lw1/a;->i:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    sget-object v3, LC1/Q;->b:LC1/Q;

    .line 20
    .line 21
    const/16 v4, 0x8

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    if-ne p1, v3, :cond_1

    .line 25
    .line 26
    move v3, v5

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v3, v4

    .line 29
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 33
    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    move-object v0, v1

    .line 40
    :cond_2
    iget-object v0, v0, Lw1/a;->l:Landroid/widget/LinearLayout;

    .line 41
    .line 42
    sget-object v3, LC1/Q;->c:LC1/Q;

    .line 43
    .line 44
    if-ne p1, v3, :cond_3

    .line 45
    .line 46
    move v3, v5

    .line 47
    goto :goto_1

    .line 48
    :cond_3
    move v3, v4

    .line 49
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 53
    .line 54
    if-nez v0, :cond_4

    .line 55
    .line 56
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_4
    move-object v1, v0

    .line 61
    :goto_2
    iget-object v0, v1, Lw1/a;->m:Landroid/widget/LinearLayout;

    .line 62
    .line 63
    sget-object v1, LC1/Q;->d:LC1/Q;

    .line 64
    .line 65
    if-ne p1, v1, :cond_5

    .line 66
    .line 67
    move v4, v5

    .line 68
    :cond_5
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final C(Landroid/app/Dialog;)V
    .locals 2

    .line 1
    const-string v0, "dialog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "importDialogs"

    .line 7
    .line 8
    iget-object v1, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->h:Ljava/util/List;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final D(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "b"

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
    iget-object v0, v0, Lw1/a;->o:Landroid/widget/ProgressBar;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move-object v1, v0

    .line 26
    :goto_0
    iget-object v0, v1, Lw1/a;->t:Landroid/widget/TextView;

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, "%"

    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final m(Z)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->r:Ljava/util/List;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->s:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->u:LC1/Z;

    .line 6
    .line 7
    const-string v3, "remotePageItems"

    .line 8
    .line 9
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "fullCatalogItems"

    .line 13
    .line 14
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v3, "filter"

    .line 18
    .line 19
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v2}, LC1/U;->c(LC1/Z;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    move-object v0, v1

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->u:LC1/Z;

    .line 30
    .line 31
    invoke-static {v1}, LC1/U;->c(LC1/Z;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const-string v2, "list"

    .line 36
    .line 37
    const/4 v4, 0x3

    .line 38
    const/4 v5, 0x0

    .line 39
    const/4 v6, 0x0

    .line 40
    iget-object v7, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->j:LC1/j0;

    .line 41
    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    iput-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->t:Ljava/util/List;

    .line 45
    .line 46
    iget-object p1, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->q:LC1/E1;

    .line 47
    .line 48
    invoke-static {p1, v6, v6, v5, v4}, LC1/E1;->a(LC1/E1;IZLjava/lang/String;I)LC1/E1;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->p:LC1/E1;

    .line 53
    .line 54
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iput-object v0, v7, LC1/j0;->f:Ljava/lang/Object;

    .line 61
    .line 62
    invoke-virtual {v7}, LP/W;->c()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->u:LC1/Z;

    .line 67
    .line 68
    const-string v8, "items"

    .line 69
    .line 70
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v8, v1, LC1/Z;->a:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v9, v1, LC1/Z;->d:LC1/c0;

    .line 79
    .line 80
    invoke-static {v8}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 89
    .line 90
    .line 91
    move-result v10

    .line 92
    if-nez v10, :cond_2

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v11

    .line 108
    if-eqz v11, :cond_4

    .line 109
    .line 110
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v11

    .line 114
    move-object v12, v11

    .line 115
    check-cast v12, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 116
    .line 117
    invoke-virtual {v12}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getTitle()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v12

    .line 121
    invoke-static {v12, v8}, Lkotlin/text/StringsKt;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    move-result v12

    .line 125
    if-eqz v12, :cond_3

    .line 126
    .line 127
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_4
    move-object v0, v10

    .line 132
    :goto_1
    iget-object v8, v1, LC1/Z;->c:LC1/Y;

    .line 133
    .line 134
    iget-object v8, v8, LC1/Y;->b:Lcom/minhub/gamehub/data/GameEngine;

    .line 135
    .line 136
    if-nez v8, :cond_5

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_5
    new-instance v10, Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result v11

    .line 152
    if-eqz v11, :cond_7

    .line 153
    .line 154
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v11

    .line 158
    move-object v12, v11

    .line 159
    check-cast v12, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 160
    .line 161
    sget-object v13, Lcom/minhub/gamehub/data/GameEngine;->Companion:Lcom/minhub/gamehub/data/GameEngine$Companion;

    .line 162
    .line 163
    invoke-virtual {v12}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getEngine()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v12

    .line 167
    invoke-virtual {v13, v12}, Lcom/minhub/gamehub/data/GameEngine$Companion;->fromConfigLabel(Ljava/lang/String;)Lcom/minhub/gamehub/data/GameEngine;

    .line 168
    .line 169
    .line 170
    move-result-object v12

    .line 171
    if-ne v12, v8, :cond_6

    .line 172
    .line 173
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_7
    move-object v0, v10

    .line 178
    :goto_3
    sget-object v8, LC1/c0;->c:LC1/c0;

    .line 179
    .line 180
    if-ne v9, v8, :cond_8

    .line 181
    .line 182
    goto :goto_6

    .line 183
    :cond_8
    new-instance v8, Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    :cond_9
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    .line 194
    .line 195
    move-result v10

    .line 196
    if-eqz v10, :cond_e

    .line 197
    .line 198
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v10

    .line 202
    move-object v11, v10

    .line 203
    check-cast v11, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 204
    .line 205
    const-string v12, "<this>"

    .line 206
    .line 207
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    iget-object v12, v9, LC1/c0;->b:Ljava/lang/String;

    .line 214
    .line 215
    if-eqz v12, :cond_d

    .line 216
    .line 217
    invoke-static {v12}, LC1/U;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v12

    .line 221
    if-nez v12, :cond_a

    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_a
    invoke-virtual {v11}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getCategories()Ljava/util/List;

    .line 225
    .line 226
    .line 227
    move-result-object v11

    .line 228
    if-eqz v11, :cond_b

    .line 229
    .line 230
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    .line 231
    .line 232
    .line 233
    move-result v13

    .line 234
    if-eqz v13, :cond_b

    .line 235
    .line 236
    goto :goto_4

    .line 237
    :cond_b
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 238
    .line 239
    .line 240
    move-result-object v11

    .line 241
    :cond_c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 242
    .line 243
    .line 244
    move-result v13

    .line 245
    if-eqz v13, :cond_9

    .line 246
    .line 247
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v13

    .line 251
    check-cast v13, Ljava/lang/String;

    .line 252
    .line 253
    invoke-static {v13}, LC1/U;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v13

    .line 257
    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v13

    .line 261
    if-eqz v13, :cond_c

    .line 262
    .line 263
    :cond_d
    :goto_5
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    goto :goto_4

    .line 267
    :cond_e
    move-object v0, v8

    .line 268
    :goto_6
    iget-object v1, v1, LC1/Z;->b:LC1/f0;

    .line 269
    .line 270
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    const/4 v3, 0x1

    .line 275
    if-eqz v1, :cond_12

    .line 276
    .line 277
    if-eq v1, v3, :cond_11

    .line 278
    .line 279
    const/4 v8, 0x2

    .line 280
    if-eq v1, v8, :cond_10

    .line 281
    .line 282
    if-ne v1, v4, :cond_f

    .line 283
    .line 284
    new-instance v1, LC1/T;

    .line 285
    .line 286
    const/4 v4, 0x1

    .line 287
    invoke-direct {v1, v4}, LC1/T;-><init>(I)V

    .line 288
    .line 289
    .line 290
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    goto :goto_7

    .line 295
    :cond_f
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 296
    .line 297
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 298
    .line 299
    .line 300
    throw p1

    .line 301
    :cond_10
    new-instance v1, LC1/T;

    .line 302
    .line 303
    const/4 v4, 0x0

    .line 304
    invoke-direct {v1, v4}, LC1/T;-><init>(I)V

    .line 305
    .line 306
    .line 307
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    goto :goto_7

    .line 312
    :cond_11
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asReversed(Ljava/util/List;)Ljava/util/List;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    :cond_12
    :goto_7
    iput-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->t:Ljava/util/List;

    .line 317
    .line 318
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    iget-object v1, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->p:LC1/E1;

    .line 323
    .line 324
    const-string v4, "previous"

    .line 325
    .line 326
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    invoke-static {v0}, LC1/U;->a(I)I

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    if-eqz p1, :cond_13

    .line 334
    .line 335
    goto :goto_8

    .line 336
    :cond_13
    iget p1, v1, LC1/E1;->a:I

    .line 337
    .line 338
    invoke-static {p1, v3, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 339
    .line 340
    .line 341
    move-result v3

    .line 342
    :goto_8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 343
    .line 344
    .line 345
    new-instance p1, LC1/E1;

    .line 346
    .line 347
    invoke-direct {p1, v3, v0, v6, v5}, LC1/E1;-><init>(IIZLjava/lang/String;)V

    .line 348
    .line 349
    .line 350
    iput-object p1, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->p:LC1/E1;

    .line 351
    .line 352
    iget-object p1, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->t:Ljava/util/List;

    .line 353
    .line 354
    invoke-static {p1, v3}, LC1/U;->b(Ljava/util/List;I)Ljava/util/List;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 359
    .line 360
    .line 361
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    iput-object p1, v7, LC1/j0;->f:Ljava/lang/Object;

    .line 365
    .line 366
    invoke-virtual {v7}, LP/W;->c()V

    .line 367
    .line 368
    .line 369
    return-void
.end method

.method public final n(LC1/Z;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->u:LC1/Z;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->u:LC1/Z;

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->x:Z

    .line 6
    .line 7
    const-string v2, "filter"

    .line 8
    .line 9
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, LC1/U;->c(LC1/Z;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    sget-object p1, Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;->INSTANCE:Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;->getHasHydratedFullCatalog()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;->getFullCatalogItems()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->s:Ljava/util/List;

    .line 34
    .line 35
    iput-boolean v2, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->x:Z

    .line 36
    .line 37
    invoke-virtual {p0, v2}, Lcom/minhub/gamehub/hub/AddGameActivity;->m(Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/AddGameActivity;->w()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->p:LC1/E1;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    const/4 v3, 0x3

    .line 48
    const/4 v4, 0x0

    .line 49
    invoke-static {p1, v4, v2, v1, v3}, LC1/E1;->a(LC1/E1;IZLjava/lang/String;I)LC1/E1;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->p:LC1/E1;

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/AddGameActivity;->x()V

    .line 56
    .line 57
    .line 58
    new-instance p1, Ljava/lang/Thread;

    .line 59
    .line 60
    new-instance v1, LC1/m;

    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    invoke-direct {v1, p0, v0, v2}, LC1/m;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;LC1/Z;I)V

    .line 64
    .line 65
    .line 66
    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_1
    invoke-virtual {p0, v2}, Lcom/minhub/gamehub/hub/AddGameActivity;->m(Z)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/AddGameActivity;->w()V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 27

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
    const v2, 0x7f0c001c

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const v2, 0x7f090079

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    move-object v7, v3

    .line 27
    check-cast v7, Landroid/widget/ImageButton;

    .line 28
    .line 29
    if-eqz v7, :cond_b

    .line 30
    .line 31
    const v2, 0x7f090096

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    move-object v8, v3

    .line 39
    check-cast v8, Landroid/widget/ImageButton;

    .line 40
    .line 41
    if-eqz v8, :cond_b

    .line 42
    .line 43
    const v2, 0x7f09009f

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    move-object v9, v3

    .line 51
    check-cast v9, Landroid/widget/Button;

    .line 52
    .line 53
    if-eqz v9, :cond_b

    .line 54
    .line 55
    const v2, 0x7f0900c3

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    move-object v10, v3

    .line 63
    check-cast v10, Landroid/widget/ImageButton;

    .line 64
    .line 65
    if-eqz v10, :cond_b

    .line 66
    .line 67
    const v2, 0x7f0900c4

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    move-object v11, v3

    .line 75
    check-cast v11, Landroid/widget/Button;

    .line 76
    .line 77
    if-eqz v11, :cond_b

    .line 78
    .line 79
    const v2, 0x7f0900cc

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    move-object v12, v3

    .line 87
    check-cast v12, Landroid/widget/Button;

    .line 88
    .line 89
    if-eqz v12, :cond_b

    .line 90
    .line 91
    const v2, 0x7f090118

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    move-object v13, v3

    .line 99
    check-cast v13, Landroid/widget/FrameLayout;

    .line 100
    .line 101
    if-eqz v13, :cond_b

    .line 102
    .line 103
    const v2, 0x7f0901be

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    move-object v14, v3

    .line 111
    check-cast v14, Landroid/widget/LinearLayout;

    .line 112
    .line 113
    if-eqz v14, :cond_b

    .line 114
    .line 115
    const v2, 0x7f0901c3

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    move-object v15, v3

    .line 123
    check-cast v15, Landroid/widget/LinearLayout;

    .line 124
    .line 125
    if-eqz v15, :cond_b

    .line 126
    .line 127
    const v2, 0x7f0901d1

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    move-object/from16 v16, v3

    .line 135
    .line 136
    check-cast v16, Landroid/widget/LinearLayout;

    .line 137
    .line 138
    if-eqz v16, :cond_b

    .line 139
    .line 140
    const v2, 0x7f0901d4

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    move-object/from16 v17, v3

    .line 148
    .line 149
    check-cast v17, Landroid/widget/LinearLayout;

    .line 150
    .line 151
    if-eqz v17, :cond_b

    .line 152
    .line 153
    const v2, 0x7f0901d5

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    move-object/from16 v18, v3

    .line 161
    .line 162
    check-cast v18, Landroid/widget/LinearLayout;

    .line 163
    .line 164
    if-eqz v18, :cond_b

    .line 165
    .line 166
    const v2, 0x7f090264

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    move-object/from16 v19, v3

    .line 174
    .line 175
    check-cast v19, Landroid/widget/ProgressBar;

    .line 176
    .line 177
    if-eqz v19, :cond_b

    .line 178
    .line 179
    const v2, 0x7f090268

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    move-object/from16 v20, v3

    .line 187
    .line 188
    check-cast v20, Landroid/widget/ProgressBar;

    .line 189
    .line 190
    if-eqz v20, :cond_b

    .line 191
    .line 192
    const v2, 0x7f09026e

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    move-object/from16 v21, v3

    .line 200
    .line 201
    check-cast v21, Landroidx/recyclerview/widget/RecyclerView;

    .line 202
    .line 203
    if-eqz v21, :cond_b

    .line 204
    .line 205
    const v2, 0x7f090329

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    move-object/from16 v22, v3

    .line 213
    .line 214
    check-cast v22, Landroid/widget/TextView;

    .line 215
    .line 216
    if-eqz v22, :cond_b

    .line 217
    .line 218
    const v2, 0x7f090353

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    move-object/from16 v23, v3

    .line 226
    .line 227
    check-cast v23, Landroid/widget/TextView;

    .line 228
    .line 229
    if-eqz v23, :cond_b

    .line 230
    .line 231
    const v2, 0x7f090378

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    move-object/from16 v24, v3

    .line 239
    .line 240
    check-cast v24, Landroid/widget/TextView;

    .line 241
    .line 242
    if-eqz v24, :cond_b

    .line 243
    .line 244
    const v2, 0x7f090392

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    move-object/from16 v25, v3

    .line 252
    .line 253
    check-cast v25, Landroid/widget/TextView;

    .line 254
    .line 255
    if-eqz v25, :cond_b

    .line 256
    .line 257
    const v2, 0x7f0903bf

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 261
    .line 262
    .line 263
    move-result-object v26

    .line 264
    if-eqz v26, :cond_b

    .line 265
    .line 266
    new-instance v5, Lw1/a;

    .line 267
    .line 268
    move-object v6, v1

    .line 269
    check-cast v6, Landroid/widget/LinearLayout;

    .line 270
    .line 271
    invoke-direct/range {v5 .. v26}, Lw1/a;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/Button;Landroid/widget/ImageButton;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V

    .line 272
    .line 273
    .line 274
    const-string v1, "inflate(...)"

    .line 275
    .line 276
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    iput-object v5, v0, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 280
    .line 281
    invoke-virtual {v0, v6}, Le/j;->setContentView(Landroid/view/View;)V

    .line 282
    .line 283
    .line 284
    iget-object v1, v0, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 285
    .line 286
    const-string v2, "b"

    .line 287
    .line 288
    if-nez v1, :cond_0

    .line 289
    .line 290
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    move-object v1, v4

    .line 294
    :cond_0
    iget-object v1, v1, Lw1/a;->a:Landroid/widget/LinearLayout;

    .line 295
    .line 296
    new-instance v3, LC1/p;

    .line 297
    .line 298
    const/4 v5, 0x2

    .line 299
    invoke-direct {v3, v0, v5}, LC1/p;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;I)V

    .line 300
    .line 301
    .line 302
    invoke-static {v1, v3}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 303
    .line 304
    .line 305
    sget-object v1, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->Companion:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue$Companion;

    .line 306
    .line 307
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    const-string v5, "getApplicationContext(...)"

    .line 312
    .line 313
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1, v3}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue$Companion;->getInstance(Landroid/content/Context;)Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    new-instance v3, LC1/h;

    .line 321
    .line 322
    const/4 v6, 0x1

    .line 323
    invoke-direct {v3, v0, v6}, LC1/h;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;I)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v1, v3}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->observe(Lkotlin/jvm/functions/Function1;)V

    .line 327
    .line 328
    .line 329
    iget-object v1, v0, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 330
    .line 331
    if-nez v1, :cond_1

    .line 332
    .line 333
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    move-object v1, v4

    .line 337
    :cond_1
    iget-object v1, v1, Lw1/a;->b:Landroid/widget/ImageButton;

    .line 338
    .line 339
    new-instance v3, LC1/a;

    .line 340
    .line 341
    const/4 v6, 0x3

    .line 342
    invoke-direct {v3, v0, v6}, LC1/a;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;I)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    .line 347
    .line 348
    iget-object v1, v0, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 349
    .line 350
    if-nez v1, :cond_2

    .line 351
    .line 352
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    move-object v1, v4

    .line 356
    :cond_2
    iget-object v1, v1, Lw1/a;->e:Landroid/widget/ImageButton;

    .line 357
    .line 358
    new-instance v3, LC1/a;

    .line 359
    .line 360
    const/4 v6, 0x4

    .line 361
    invoke-direct {v3, v0, v6}, LC1/a;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;I)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    .line 366
    .line 367
    iget-object v1, v0, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 368
    .line 369
    if-nez v1, :cond_3

    .line 370
    .line 371
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    move-object v1, v4

    .line 375
    :cond_3
    iget-object v1, v1, Lw1/a;->c:Landroid/widget/ImageButton;

    .line 376
    .line 377
    new-instance v3, LC1/a;

    .line 378
    .line 379
    const/4 v6, 0x5

    .line 380
    invoke-direct {v3, v0, v6}, LC1/a;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;I)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    .line 385
    .line 386
    iget-object v1, v0, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 387
    .line 388
    if-nez v1, :cond_4

    .line 389
    .line 390
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    move-object v1, v4

    .line 394
    :cond_4
    iget-object v1, v1, Lw1/a;->p:Landroidx/recyclerview/widget/RecyclerView;

    .line 395
    .line 396
    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 397
    .line 398
    invoke-direct {v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>()V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(LP/g0;)V

    .line 402
    .line 403
    .line 404
    iget-object v1, v0, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 405
    .line 406
    if-nez v1, :cond_5

    .line 407
    .line 408
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    move-object v1, v4

    .line 412
    :cond_5
    iget-object v1, v1, Lw1/a;->p:Landroidx/recyclerview/widget/RecyclerView;

    .line 413
    .line 414
    iget-object v3, v0, Lcom/minhub/gamehub/hub/AddGameActivity;->j:LC1/j0;

    .line 415
    .line 416
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(LP/W;)V

    .line 417
    .line 418
    .line 419
    iget-object v1, v0, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 420
    .line 421
    if-nez v1, :cond_6

    .line 422
    .line 423
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    move-object v1, v4

    .line 427
    :cond_6
    iget-object v1, v1, Lw1/a;->g:Landroid/widget/Button;

    .line 428
    .line 429
    new-instance v3, LC1/a;

    .line 430
    .line 431
    const/4 v6, 0x1

    .line 432
    invoke-direct {v3, v0, v6}, LC1/a;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;I)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    .line 437
    .line 438
    iget-object v1, v0, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 439
    .line 440
    if-nez v1, :cond_7

    .line 441
    .line 442
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    move-object v1, v4

    .line 446
    :cond_7
    iget-object v1, v1, Lw1/a;->f:Landroid/widget/Button;

    .line 447
    .line 448
    new-instance v3, LC1/a;

    .line 449
    .line 450
    const/4 v6, 0x2

    .line 451
    invoke-direct {v3, v0, v6}, LC1/a;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;I)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    .line 456
    .line 457
    sget-object v1, LC1/Q;->b:LC1/Q;

    .line 458
    .line 459
    invoke-virtual {v0, v1}, Lcom/minhub/gamehub/hub/AddGameActivity;->B(LC1/Q;)V

    .line 460
    .line 461
    .line 462
    sget-object v1, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache;->INSTANCE:Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache;

    .line 463
    .line 464
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 465
    .line 466
    .line 467
    move-result-object v3

    .line 468
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v1, v3}, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache;->load(Landroid/content/Context;)Ljava/util/List;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    const/4 v3, 0x1

    .line 476
    if-eqz v1, :cond_8

    .line 477
    .line 478
    sget-object v5, Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;->INSTANCE:Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;

    .line 479
    .line 480
    invoke-virtual {v5, v1}, Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;->setFullCatalogItems(Ljava/util/List;)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v5, v3}, Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;->setHasHydratedFullCatalog(Z)V

    .line 484
    .line 485
    .line 486
    iput-object v1, v0, Lcom/minhub/gamehub/hub/AddGameActivity;->s:Ljava/util/List;

    .line 487
    .line 488
    iput-boolean v3, v0, Lcom/minhub/gamehub/hub/AddGameActivity;->x:Z

    .line 489
    .line 490
    new-instance v6, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;

    .line 491
    .line 492
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 493
    .line 494
    .line 495
    move-result v3

    .line 496
    invoke-static {v3}, LC1/U;->a(I)I

    .line 497
    .line 498
    .line 499
    move-result v9

    .line 500
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 501
    .line 502
    .line 503
    move-result v10

    .line 504
    const/16 v3, 0xa

    .line 505
    .line 506
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 507
    .line 508
    .line 509
    move-result-object v11

    .line 510
    const/4 v7, 0x1

    .line 511
    const/16 v8, 0xa

    .line 512
    .line 513
    invoke-direct/range {v6 .. v11}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;-><init>(IIIILjava/util/List;)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v0, v6}, Lcom/minhub/gamehub/hub/AddGameActivity;->y(Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;)V

    .line 517
    .line 518
    .line 519
    goto :goto_0

    .line 520
    :cond_8
    invoke-virtual {v0, v3, v3}, Lcom/minhub/gamehub/hub/AddGameActivity;->u(II)V

    .line 521
    .line 522
    .line 523
    :goto_0
    iget-object v1, v0, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 524
    .line 525
    if-nez v1, :cond_9

    .line 526
    .line 527
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    move-object v1, v4

    .line 531
    :cond_9
    iget-object v1, v1, Lw1/a;->d:Landroid/widget/Button;

    .line 532
    .line 533
    new-instance v3, LC1/a;

    .line 534
    .line 535
    const/4 v5, 0x6

    .line 536
    invoke-direct {v3, v0, v5}, LC1/a;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;I)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    .line 541
    .line 542
    iget-object v1, v0, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 543
    .line 544
    if-nez v1, :cond_a

    .line 545
    .line 546
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    goto :goto_1

    .line 550
    :cond_a
    move-object v4, v1

    .line 551
    :goto_1
    iget-object v1, v4, Lw1/a;->q:Landroid/widget/TextView;

    .line 552
    .line 553
    new-instance v2, LC1/a;

    .line 554
    .line 555
    const/4 v3, 0x0

    .line 556
    invoke-direct {v2, v0, v3}, LC1/a;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;I)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 560
    .line 561
    .line 562
    return-void

    .line 563
    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 564
    .line 565
    .line 566
    move-result-object v1

    .line 567
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v1

    .line 571
    new-instance v2, Ljava/lang/NullPointerException;

    .line 572
    .line 573
    const-string v3, "Missing required view with ID: "

    .line 574
    .line 575
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v1

    .line 579
    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    throw v2
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->h:Ljava/util/List;

    .line 2
    .line 3
    const-string v1, "importDialogs"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->h:Ljava/util/List;

    .line 10
    .line 11
    const-string v2, "importDialogs"

    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    monitor-exit v0

    .line 21
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroid/app/Dialog;

    .line 36
    .line 37
    invoke-static {v1}, Lcom/minhub/gamehub/hub/AddGameActivity;->q(Landroid/app/Dialog;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->h:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->m:LH0/o;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/minhub/gamehub/hub/AddGameActivity;->q(Landroid/app/Dialog;)V

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->m:LH0/o;

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_2

    .line 59
    .line 60
    iget-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->g:Ljava/util/Set;

    .line 61
    .line 62
    const-string v1, "importOperations"

    .line 63
    .line 64
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    monitor-enter v0

    .line 68
    :try_start_1
    iget-object v1, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->g:Ljava/util/Set;

    .line 69
    .line 70
    const-string v2, "importOperations"

    .line 71
    .line 72
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_1

    .line 84
    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, LD1/b;

    .line 90
    .line 91
    invoke-virtual {v2}, LD1/b;->b()Z

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :catchall_0
    move-exception v1

    .line 96
    goto :goto_2

    .line 97
    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .line 99
    monitor-exit v0

    .line 100
    goto :goto_3

    .line 101
    :goto_2
    monitor-exit v0

    .line 102
    throw v1

    .line 103
    :cond_2
    :goto_3
    invoke-super {p0}, Le/j;->onDestroy()V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :catchall_1
    move-exception v1

    .line 108
    monitor-exit v0

    .line 109
    throw v1
.end method

.method public final p(Landroid/widget/TextView;Landroid/view/View;)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f1200fe

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final r(LD1/b;)V
    .locals 2

    .line 1
    const-string v0, "operation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "importOperations"

    .line 7
    .line 8
    iget-object v1, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->g:Ljava/util/Set;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final s(LC1/Y;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x7f120076

    .line 6
    .line 7
    .line 8
    const-string v2, "getString(...)"

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    const/16 v3, 0xa

    .line 13
    .line 14
    if-eq v0, v3, :cond_2

    .line 15
    .line 16
    iget-object p1, p1, LC1/Y;->b:Lcom/minhub/gamehub/data/GameEngine;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/GameEngine;->getLabel()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-object p1

    .line 28
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_2
    const p1, 0x7f120077

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object p1

    .line 47
    :cond_3
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object p1
.end method

.method public final t()Ljava/util/List;
    .locals 9

    .line 1
    sget-object v0, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache;->INSTANCE:Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "getApplicationContext(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache;->loadWithMeta(Landroid/content/Context;)Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CachedCatalog;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CachedCatalog;->getItems()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v3, v1

    .line 25
    :goto_0
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CachedCatalog;->getEtag()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move-object v0, v1

    .line 33
    :goto_1
    new-instance v4, LB1/d;

    .line 34
    .line 35
    const/4 v5, 0x2

    .line 36
    invoke-direct {v4, p0, v5}, LB1/d;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 37
    .line 38
    .line 39
    const-string v5, "fetchConditional"

    .line 40
    .line 41
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v6, 0x1

    .line 46
    if-eqz v3, :cond_4

    .line 47
    .line 48
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    if-eqz v7, :cond_2

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    if-eqz v0, :cond_4

    .line 56
    .line 57
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-eqz v7, :cond_3

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    move v7, v6

    .line 65
    goto :goto_3

    .line 66
    :cond_4
    :goto_2
    move v7, v5

    .line 67
    :goto_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    if-eqz v7, :cond_5

    .line 72
    .line 73
    move-object v1, v0

    .line 74
    :cond_5
    invoke-virtual {v4, v8, v1}, LB1/d;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Lcom/minhub/gamehub/hub/catalog/CatalogFetchResult;

    .line 79
    .line 80
    instance-of v1, v0, Lcom/minhub/gamehub/hub/catalog/CatalogFetchResult$NotModified;

    .line 81
    .line 82
    if-eqz v1, :cond_7

    .line 83
    .line 84
    new-instance v0, LC1/a0;

    .line 85
    .line 86
    if-nez v3, :cond_6

    .line 87
    .line 88
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    :cond_6
    invoke-direct {v0, v3}, LC1/a0;-><init>(Ljava/util/List;)V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_6

    .line 96
    .line 97
    :cond_7
    const-string v1, "null cannot be cast to non-null type com.minhub.gamehub.hub.catalog.CatalogFetchResult.Fresh"

    .line 98
    .line 99
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    check-cast v0, Lcom/minhub/gamehub/hub/catalog/CatalogFetchResult$Fresh;

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/catalog/CatalogFetchResult$Fresh;->getPage()Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->getTotalPages()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-gt v1, v6, :cond_8

    .line 113
    .line 114
    new-instance v1, LC1/b0;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/catalog/CatalogFetchResult$Fresh;->getPage()Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {v3}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->getGames()Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/catalog/CatalogFetchResult$Fresh;->getEtag()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-direct {v1, v3, v0}, LC1/b0;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    move-object v0, v1

    .line 132
    goto/16 :goto_6

    .line 133
    .line 134
    :cond_8
    new-instance v1, Lkotlin/ranges/IntRange;

    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/catalog/CatalogFetchResult$Fresh;->getPage()Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-virtual {v3}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->getTotalPages()I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    const/4 v6, 0x2

    .line 145
    invoke-direct {v1, v6, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 146
    .line 147
    .line 148
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    const/4 v6, 0x4

    .line 157
    invoke-static {v3, v6}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    new-instance v6, Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 168
    .line 169
    .line 170
    move-result v7

    .line 171
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    .line 173
    .line 174
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    .line 180
    .line 181
    move-result v7

    .line 182
    if-eqz v7, :cond_9

    .line 183
    .line 184
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    check-cast v7, Ljava/lang/Number;

    .line 189
    .line 190
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 191
    .line 192
    .line 193
    move-result v7

    .line 194
    new-instance v8, LC1/S;

    .line 195
    .line 196
    invoke-direct {v8, v4, v7}, LC1/S;-><init>(LB1/d;I)V

    .line 197
    .line 198
    .line 199
    invoke-interface {v3, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_9
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 208
    .line 209
    .line 210
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/catalog/CatalogFetchResult$Fresh;->getPage()Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    invoke-virtual {v3}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->getGames()Ljava/util/List;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 223
    .line 224
    .line 225
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    :goto_5
    if-ge v5, v3, :cond_a

    .line 230
    .line 231
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    add-int/lit8 v5, v5, 0x1

    .line 236
    .line 237
    check-cast v4, Ljava/util/concurrent/Future;

    .line 238
    .line 239
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    const-string v7, "get(...)"

    .line 244
    .line 245
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    check-cast v4, Ljava/util/Collection;

    .line 249
    .line 250
    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 251
    .line 252
    .line 253
    goto :goto_5

    .line 254
    :cond_a
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    new-instance v3, LC1/b0;

    .line 259
    .line 260
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/catalog/CatalogFetchResult$Fresh;->getEtag()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-direct {v3, v1, v0}, LC1/b0;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    move-object v0, v3

    .line 268
    :goto_6
    instance-of v1, v0, LC1/a0;

    .line 269
    .line 270
    if-eqz v1, :cond_b

    .line 271
    .line 272
    sget-object v1, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache;->INSTANCE:Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache;

    .line 273
    .line 274
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1, v3}, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache;->touch(Landroid/content/Context;)V

    .line 282
    .line 283
    .line 284
    goto :goto_7

    .line 285
    :cond_b
    instance-of v1, v0, LC1/b0;

    .line 286
    .line 287
    if-eqz v1, :cond_c

    .line 288
    .line 289
    sget-object v1, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache;->INSTANCE:Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache;

    .line 290
    .line 291
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    move-object v2, v0

    .line 299
    check-cast v2, LC1/b0;

    .line 300
    .line 301
    iget-object v4, v2, LC1/b0;->b:Ljava/util/List;

    .line 302
    .line 303
    iget-object v2, v2, LC1/b0;->c:Ljava/lang/String;

    .line 304
    .line 305
    invoke-virtual {v1, v3, v4, v2}, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache;->save(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    :goto_7
    invoke-virtual {v0}, Lcom/bumptech/glide/d;->B()Ljava/util/List;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    return-object v0

    .line 313
    :cond_c
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 314
    .line 315
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 316
    .line 317
    .line 318
    throw v0
.end method

.method public final u(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->q:LC1/E1;

    .line 2
    .line 3
    iget-boolean v1, v0, LC1/E1;->c:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v0, v0, LC1/E1;->b:I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {p1, v1, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    sget-object v0, Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;->INSTANCE:Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;->getPage(I)Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/minhub/gamehub/hub/AddGameActivity;->y(Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->q:LC1/E1;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v3, 0x2

    .line 35
    invoke-static {v0, p1, v1, v2, v3}, LC1/E1;->a(LC1/E1;IZLjava/lang/String;I)LC1/E1;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->q:LC1/E1;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->p:LC1/E1;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/AddGameActivity;->x()V

    .line 44
    .line 45
    .line 46
    new-instance v0, Ljava/lang/Thread;

    .line 47
    .line 48
    new-instance v1, LC1/b;

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-direct {v1, p0, p1, p2, v2}, LC1/b;-><init>(Landroidx/fragment/app/FragmentActivity;III)V

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final v(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->v:Z

    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->w:Z

    .line 5
    .line 6
    iget-object v1, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string v1, "b"

    .line 11
    .line 12
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    :cond_0
    iget-object v1, v1, Lw1/a;->c:Landroid/widget/ImageButton;

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->v:Z

    .line 19
    .line 20
    iget-boolean v3, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->w:Z

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    move v2, v0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v2, 0x0

    .line 29
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 30
    .line 31
    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    iget-boolean p1, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->x:Z

    .line 35
    .line 36
    if-nez p1, :cond_3

    .line 37
    .line 38
    if-nez p1, :cond_3

    .line 39
    .line 40
    sget-object p1, Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;->INSTANCE:Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;->getHasHydratedFullCatalog()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    new-instance p1, Ljava/lang/Thread;

    .line 50
    .line 51
    new-instance v1, LC1/e;

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-direct {v1, p0, v2}, LC1/e;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;I)V

    .line 55
    .line 56
    .line 57
    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 61
    .line 62
    .line 63
    const-string v0, "catalog-prehydrate"

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 69
    .line 70
    .line 71
    :cond_3
    :goto_1
    return-void
.end method

.method public final w()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->t:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const-string v4, "b"

    .line 12
    .line 13
    if-eqz v0, :cond_4

    .line 14
    .line 15
    iget-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    move-object v0, v3

    .line 23
    :cond_0
    iget-object v0, v0, Lw1/a;->p:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    move-object v0, v3

    .line 36
    :cond_1
    iget-object v0, v0, Lw1/a;->q:Landroid/widget/TextView;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 42
    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move-object v3, v0

    .line 50
    :goto_0
    iget-object v0, v3, Lw1/a;->q:Landroid/widget/TextView;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->u:LC1/Z;

    .line 53
    .line 54
    const-string v2, "filter"

    .line 55
    .line 56
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v1}, LC1/U;->c(LC1/Z;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    const v1, 0x7f120079

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    const v1, 0x7f120075

    .line 70
    .line 71
    .line 72
    :goto_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_4
    iget-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 81
    .line 82
    if-nez v0, :cond_5

    .line 83
    .line 84
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    move-object v0, v3

    .line 88
    :cond_5
    iget-object v0, v0, Lw1/a;->p:Landroidx/recyclerview/widget/RecyclerView;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 94
    .line 95
    if-nez v0, :cond_6

    .line 96
    .line 97
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_6
    move-object v3, v0

    .line 102
    :goto_2
    iget-object v0, v3, Lw1/a;->q:Landroid/widget/TextView;

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    :goto_3
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/AddGameActivity;->z()V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public final x()V
    .locals 4

    .line 1
    sget-object v0, LC1/Q;->b:LC1/Q;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/minhub/gamehub/hub/AddGameActivity;->B(LC1/Q;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const-string v2, "b"

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    move-object v0, v1

    .line 17
    :cond_0
    iget-object v0, v0, Lw1/a;->n:Landroid/widget/ProgressBar;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move-object v1, v0

    .line 32
    :goto_0
    iget-object v0, v1, Lw1/a;->q:Landroid/widget/TextView;

    .line 33
    .line 34
    const/16 v1, 0x8

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/AddGameActivity;->z()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final y(Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;->INSTANCE:Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->getPage()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;->putPage(ILcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->q:LC1/E1;

    .line 11
    .line 12
    const-string v1, "page"

    .line 13
    .line 14
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v1, "previous"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->getTotalPages()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->getPage()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->getTotalPages()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-static {v4, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    invoke-static {v3, v2, v4}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    new-instance v0, LC1/E1;

    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    const/4 v5, 0x0

    .line 54
    invoke-direct {v0, v3, v1, v4, v5}, LC1/E1;-><init>(IIZLjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->q:LC1/E1;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->p:LC1/E1;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->getGames()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->r:Ljava/util/List;

    .line 66
    .line 67
    iget-boolean v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->x:Z

    .line 68
    .line 69
    if-nez v0, :cond_0

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->getGames()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iput-object p1, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->s:Ljava/util/List;

    .line 76
    .line 77
    :cond_0
    invoke-virtual {p0, v2}, Lcom/minhub/gamehub/hub/AddGameActivity;->v(Z)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v4}, Lcom/minhub/gamehub/hub/AddGameActivity;->m(Z)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 84
    .line 85
    if-nez p1, :cond_1

    .line 86
    .line 87
    const-string p1, "b"

    .line 88
    .line 89
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    move-object v5, p1

    .line 94
    :goto_0
    iget-object p1, v5, Lw1/a;->n:Landroid/widget/ProgressBar;

    .line 95
    .line 96
    const/16 v0, 0x8

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/AddGameActivity;->w()V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public final z()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "b"

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
    iget-object v0, v0, Lw1/a;->s:Landroid/widget/TextView;

    .line 13
    .line 14
    iget-object v3, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->p:LC1/E1;

    .line 15
    .line 16
    iget v4, v3, LC1/E1;->a:I

    .line 17
    .line 18
    iget v3, v3, LC1/E1;->b:I

    .line 19
    .line 20
    const v5, 0x7f120122

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    const-string v6, "getString(...)"

    .line 28
    .line 29
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v6, "format"

    .line 33
    .line 34
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v6, 0x1

    .line 38
    invoke-static {v4, v6}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-static {v3, v6}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    filled-new-array {v4, v3}, [Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    const/4 v4, 0x2

    .line 59
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const-string v4, "format(...)"

    .line 68
    .line 69
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 76
    .line 77
    if-nez v0, :cond_1

    .line 78
    .line 79
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    move-object v0, v1

    .line 83
    :cond_1
    iget-object v0, v0, Lw1/a;->g:Landroid/widget/Button;

    .line 84
    .line 85
    iget-object v3, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->p:LC1/E1;

    .line 86
    .line 87
    iget-boolean v4, v3, LC1/E1;->c:Z

    .line 88
    .line 89
    const/4 v5, 0x0

    .line 90
    if-nez v4, :cond_2

    .line 91
    .line 92
    iget v3, v3, LC1/E1;->a:I

    .line 93
    .line 94
    if-le v3, v6, :cond_2

    .line 95
    .line 96
    move v3, v6

    .line 97
    goto :goto_0

    .line 98
    :cond_2
    move v3, v5

    .line 99
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 103
    .line 104
    if-nez v0, :cond_3

    .line 105
    .line 106
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    move-object v0, v1

    .line 110
    :cond_3
    iget-object v0, v0, Lw1/a;->f:Landroid/widget/Button;

    .line 111
    .line 112
    iget-object v3, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->p:LC1/E1;

    .line 113
    .line 114
    iget-boolean v4, v3, LC1/E1;->c:Z

    .line 115
    .line 116
    if-nez v4, :cond_4

    .line 117
    .line 118
    iget v4, v3, LC1/E1;->a:I

    .line 119
    .line 120
    iget v3, v3, LC1/E1;->b:I

    .line 121
    .line 122
    if-ge v4, v3, :cond_4

    .line 123
    .line 124
    move v3, v6

    .line 125
    goto :goto_1

    .line 126
    :cond_4
    move v3, v5

    .line 127
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 131
    .line 132
    if-nez v0, :cond_5

    .line 133
    .line 134
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_5
    move-object v1, v0

    .line 139
    :goto_2
    iget-object v0, v1, Lw1/a;->k:Landroid/widget/LinearLayout;

    .line 140
    .line 141
    iget-object v1, p0, Lcom/minhub/gamehub/hub/AddGameActivity;->p:LC1/E1;

    .line 142
    .line 143
    iget v1, v1, LC1/E1;->b:I

    .line 144
    .line 145
    if-le v1, v6, :cond_6

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_6
    const/16 v5, 0x8

    .line 149
    .line 150
    :goto_3
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 151
    .line 152
    .line 153
    return-void
.end method
