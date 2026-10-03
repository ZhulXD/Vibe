.class public final Lcom/minhub/gamehub/game/KiriKiriGameActivity;
.super Lorg/tvp/kirikiri2/KR2Activity;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/minhub/gamehub/game/KiriKiriGameActivity;",
        "Lorg/tvp/kirikiri2/KR2Activity;",
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
        "SMAP\nKiriKiriGameActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KiriKiriGameActivity.kt\ncom/minhub/gamehub/game/KiriKiriGameActivity\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,927:1\n12637#2,2:928\n3829#2:930\n4344#2,2:931\n11228#2:937\n11563#2,3:938\n10135#2:959\n10557#2,2:960\n11228#2:962\n11563#2,3:963\n10559#2,3:966\n3829#2:969\n4344#2,2:970\n3829#2:982\n4344#2,2:983\n1056#3:933\n1869#3:934\n1870#3:936\n295#3,2:941\n295#3,2:943\n1999#3,14:945\n1869#3,2:972\n1869#3,2:985\n1#4:935\n1321#5,2:974\n1255#5,2:976\n1321#5,2:978\n1321#5,2:980\n*S KotlinDebug\n*F\n+ 1 KiriKiriGameActivity.kt\ncom/minhub/gamehub/game/KiriKiriGameActivity\n*L\n266#1:928,2\n268#1:930\n268#1:931,2\n285#1:937\n285#1:938,3\n353#1:959\n353#1:960,2\n355#1:962\n355#1:963,3\n353#1:966,3\n384#1:969\n384#1:970,2\n889#1:982\n889#1:983,2\n269#1:933\n270#1:934\n270#1:936\n286#1:941,2\n287#1:943,2\n288#1:945,14\n393#1:972,2\n890#1:985,2\n463#1:974,2\n532#1:976,2\n713#1:978,2\n767#1:980,2\n*E\n"
    }
.end annotation


# static fields
.field public static final synthetic e:I


# instance fields
.field public b:I

.field public final c:J

.field public d:LA1/v0;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/tvp/kirikiri2/KR2Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->b:I

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->c:J

    .line 12
    .line 13
    return-void
.end method

.method public static k(Lcom/minhub/gamehub/game/KiriKiriGameActivity;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mFrameLayout:Lorg/cocos2dx/lib/ResizeLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v1, "minhub-kiri-menu"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 24
    .line 25
    const/16 v3, 0x2c

    .line 26
    .line 27
    int-to-float v3, v3

    .line 28
    mul-float/2addr v3, v2

    .line 29
    float-to-int v3, v3

    .line 30
    new-instance v4, Landroid/widget/ImageView;

    .line 31
    .line 32
    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    const v1, 0x7f0800d1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 42
    .line 43
    .line 44
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 45
    .line 46
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 47
    .line 48
    .line 49
    const/16 v1, 0x8

    .line 50
    .line 51
    int-to-float v1, v1

    .line 52
    mul-float/2addr v1, v2

    .line 53
    invoke-virtual {v4, v1}, Landroid/view/View;->setElevation(F)V

    .line 54
    .line 55
    .line 56
    const v2, 0x7f12003b

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v4, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    new-instance v2, LC1/V;

    .line 67
    .line 68
    const/16 v5, 0xa

    .line 69
    .line 70
    invoke-direct {v2, v5, p0}, LC1/V;-><init>(ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 77
    .line 78
    invoke-direct {p0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 79
    .line 80
    .line 81
    const v2, 0x800033

    .line 82
    .line 83
    .line 84
    iput v2, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 85
    .line 86
    float-to-int v1, v1

    .line 87
    iput v1, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 88
    .line 89
    iput v1, p0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 90
    .line 91
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 92
    .line 93
    invoke-virtual {v0, v4, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4}, Landroid/view/View;->bringToFront()V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public static l(Ljava/io/File;)V
    .locals 10

    .line 1
    const-string v0, "KiriKiriGame"

    .line 2
    .line 3
    const-string v1, "getName(...)"

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_4

    .line 10
    .line 11
    new-instance v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    array-length v3, p0

    .line 17
    const/4 v4, 0x0

    .line 18
    move v5, v4

    .line 19
    :goto_0
    if-ge v5, v3, :cond_2

    .line 20
    .line 21
    aget-object v6, p0, v5

    .line 22
    .line 23
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    if-eqz v7, :cond_1

    .line 28
    .line 29
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v6}, Lkotlin/io/FilesKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    const-string v8, "lock"

    .line 37
    .line 38
    const/4 v9, 0x1

    .line 39
    invoke-static {v7, v8, v9}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-nez v7, :cond_0

    .line 44
    .line 45
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string v8, "_lock_"

    .line 53
    .line 54
    invoke-static {v7, v8}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    if-nez v7, :cond_0

    .line 59
    .line 60
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v8, ".lock"

    .line 68
    .line 69
    invoke-static {v7, v8}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-nez v7, :cond_0

    .line 74
    .line 75
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    const-string v8, "krkr2.lock"

    .line 80
    .line 81
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-nez v7, :cond_0

    .line 86
    .line 87
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    const-string v8, "krkr.lock"

    .line 92
    .line 93
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    if-eqz v7, :cond_1

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :catch_0
    move-exception p0

    .line 101
    goto :goto_3

    .line 102
    :cond_0
    :goto_1
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    :cond_3
    :goto_2
    if-ge v4, p0, :cond_4

    .line 113
    .line 114
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    add-int/lit8 v4, v4, 0x1

    .line 119
    .line 120
    check-cast v1, Ljava/io/File;

    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-eqz v3, :cond_3

    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string v5, "Cleared stale lock: "

    .line 138
    .line 139
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_4
    return-void

    .line 154
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    const-string v1, "Could not scan for lock files: "

    .line 159
    .line 160
    invoke-static {v1, p0, v0}, LE/b;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    return-void
.end method

.method public static m(Ljava/io/File;)V
    .locals 15

    .line 1
    const-string v0, "KiriKiriGame"

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    array-length v3, v1

    .line 17
    const/4 v4, 0x0

    .line 18
    move v5, v4

    .line 19
    :goto_0
    if-ge v5, v3, :cond_4

    .line 20
    .line 21
    aget-object v6, v1, v5

    .line 22
    .line 23
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    if-eqz v7, :cond_3

    .line 28
    .line 29
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    if-eqz v8, :cond_1

    .line 42
    .line 43
    new-instance v9, Ljava/util/ArrayList;

    .line 44
    .line 45
    array-length v10, v8

    .line 46
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    .line 48
    .line 49
    array-length v10, v8

    .line 50
    move v11, v4

    .line 51
    :goto_1
    if-ge v11, v10, :cond_2

    .line 52
    .line 53
    aget-object v12, v8, v11

    .line 54
    .line 55
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v13

    .line 59
    new-instance v14, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v13, "/"

    .line 68
    .line 69
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v12

    .line 79
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    add-int/lit8 v11, v11, 0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    :cond_2
    invoke-static {v7, v9}, Lkotlin/collections/CollectionsKt;->t(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    goto :goto_2

    .line 94
    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    :goto_2
    invoke-static {v2, v6}, Lkotlin/collections/CollectionsKt;->c(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 103
    .line 104
    .line 105
    add-int/lit8 v5, v5, 0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_4
    sget-object v1, Lz1/f;->a:Lkotlin/text/Regex;

    .line 109
    .line 110
    const-string v1, "entryNames"

    .line 111
    .line 112
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_5

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    :cond_6
    if-ge v4, v1, :cond_a

    .line 127
    .line 128
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    add-int/lit8 v4, v4, 0x1

    .line 133
    .line 134
    check-cast v3, Ljava/lang/String;

    .line 135
    .line 136
    const/4 v5, 0x2

    .line 137
    new-array v6, v5, [C

    .line 138
    .line 139
    fill-array-data v6, :array_0

    .line 140
    .line 141
    .line 142
    invoke-static {v3, v6}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/String;[C)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    new-array v5, v5, [C

    .line 147
    .line 148
    fill-array-data v5, :array_1

    .line 149
    .line 150
    .line 151
    invoke-static {v3, v5}, Lkotlin/text/StringsKt;->I(Ljava/lang/CharSequence;[C)Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    check-cast v3, Ljava/lang/String;

    .line 160
    .line 161
    if-eqz v3, :cond_6

    .line 162
    .line 163
    const-string v5, "k2compat"

    .line 164
    .line 165
    const/4 v6, 0x1

    .line 166
    invoke-static {v3, v5, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    if-ne v3, v6, :cond_6

    .line 171
    .line 172
    new-instance v1, Ljava/io/File;

    .line 173
    .line 174
    const-string v2, "system/Status.tjs"

    .line 175
    .line 176
    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 180
    .line 181
    .line 182
    move-result p0

    .line 183
    if-nez p0, :cond_7

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_7
    :try_start_0
    invoke-static {v1}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    invoke-static {p0}, La/a;->G([B)LS/F;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    if-nez p0, :cond_8

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_8
    sget-object v2, Lz1/f;->a:Lkotlin/text/Regex;

    .line 198
    .line 199
    iget-object v2, p0, LS/F;->b:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast v2, Ljava/lang/String;

    .line 202
    .line 203
    invoke-static {v2}, Lz1/f;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    if-nez v2, :cond_9

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_9
    invoke-virtual {p0, v2}, LS/F;->b(Ljava/lang/String;)[B

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    invoke-static {v1, p0}, Lcom/bumptech/glide/d;->d0(Ljava/io/File;[B)Z

    .line 215
    .line 216
    .line 217
    const-string p0, "Declared kirikiriz flag for KirikiriZ build"

    .line 218
    .line 219
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .line 221
    .line 222
    return-void

    .line 223
    :catch_0
    move-exception p0

    .line 224
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    const-string v1, "Could not declare kirikiriz flag: "

    .line 229
    .line 230
    invoke-static {v1, p0, v0}, LE/b;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    :cond_a
    :goto_3
    return-void

    .line 234
    nop

    .line 235
    :array_0
    .array-data 2
        0x2fs
        0x5cs
    .end array-data

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    :array_1
    .array-data 2
        0x2fs
        0x5cs
    .end array-data
.end method

.method public static n(Ljava/io/File;)Ljava/io/File;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    array-length v2, v0

    .line 16
    move v3, v1

    .line 17
    :goto_0
    if-ge v3, v2, :cond_2

    .line 18
    .line 19
    aget-object v4, v0, v3

    .line 20
    .line 21
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_1

    .line 26
    .line 27
    const-string v5, "xp3"

    .line 28
    .line 29
    const/4 v6, 0x1

    .line 30
    invoke-static {v4, v4, v5, v6}, LE/b;->y(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Z)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    if-eqz p0, :cond_6

    .line 45
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    array-length v2, p0

    .line 52
    :goto_1
    if-ge v1, v2, :cond_4

    .line 53
    .line 54
    aget-object v3, p0, v1

    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_3

    .line 61
    .line 62
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_4
    new-instance p0, Ly1/M;

    .line 69
    .line 70
    const/4 v1, 0x6

    .line 71
    invoke-direct {p0, v1}, Ly1/M;-><init>(I)V

    .line 72
    .line 73
    .line 74
    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    if-eqz p0, :cond_6

    .line 79
    .line 80
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_6

    .line 89
    .line 90
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Ljava/io/File;

    .line 95
    .line 96
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-static {v0}, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->n(Ljava/io/File;)Ljava/io/File;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-eqz v0, :cond_5

    .line 104
    .line 105
    return-object v0

    .line 106
    :cond_6
    :goto_2
    const/4 p0, 0x0

    .line 107
    return-object p0
.end method

.method public static o(Ljava/io/File;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lkotlin/io/FilesKt;->walkTopDown(Ljava/io/File;)Lkotlin/io/FileTreeWalk;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ly1/f1;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1}, Ly1/f1;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->q(Lkotlin/io/FileTreeWalk;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    new-instance v0, Ly1/f1;

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    invoke-direct {v0, v1}, Ly1/f1;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->filterNot(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :catch_0
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/io/File;

    .line 40
    .line 41
    :try_start_0
    invoke-static {v0}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, La/a;->G([B)LS/F;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    iget-object v0, v0, LS/F;->b:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, Ljava/lang/String;

    .line 54
    .line 55
    const-string v1, "script"

    .line 56
    .line 57
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v1, "GdiPlus"

    .line 61
    .line 62
    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    const/4 v1, 0x1

    .line 67
    if-ne v0, v1, :cond_0

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const/4 v1, 0x0

    .line 71
    :goto_0
    return v1
.end method

.method public static r(Ljava/io/File;)V
    .locals 13

    .line 1
    const-string v0, "System.checkAppId"

    .line 2
    .line 3
    const-string v1, "KiriKiriGame"

    .line 4
    .line 5
    const-string v2, "Patched AfterInit.tjs: "

    .line 6
    .line 7
    const-string v3, "// [MinHub:afterinit] "

    .line 8
    .line 9
    new-instance v4, Ljava/io/File;

    .line 10
    .line 11
    const-string v5, "system/AfterInit.tjs"

    .line 12
    .line 13
    invoke-direct {v4, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_6

    .line 21
    .line 22
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-nez p0, :cond_0

    .line 27
    .line 28
    goto/16 :goto_2

    .line 29
    .line 30
    :cond_0
    :try_start_0
    invoke-static {v4}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, La/a;->G([B)LS/F;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-nez p0, :cond_1

    .line 39
    .line 40
    goto/16 :goto_2

    .line 41
    .line 42
    :cond_1
    iget-object v5, p0, LS/F;->b:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v5, Ljava/lang/String;

    .line 45
    .line 46
    const-string v6, "MinHub:afterinit"

    .line 47
    .line 48
    invoke-static {v5, v6}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_2

    .line 53
    .line 54
    goto/16 :goto_2

    .line 55
    .line 56
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-static {v5, v0}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    const/4 v8, 0x0

    .line 66
    const/4 v9, 0x2

    .line 67
    const/4 v10, 0x0

    .line 68
    if-eqz v6, :cond_3

    .line 69
    .line 70
    new-instance v6, Lkotlin/text/Regex;

    .line 71
    .line 72
    const-string v11, "System\\.checkAppId"

    .line 73
    .line 74
    invoke-direct {v6, v11}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v6, v5, v10, v9, v8}, Lkotlin/text/Regex;->findAll$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/sequences/Sequence;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-static {v6}, Lkotlin/sequences/SequencesKt;->count(Lkotlin/sequences/Sequence;)I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    const-string v11, "global.APP_ID"

    .line 86
    .line 87
    invoke-static {v5, v0, v11}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v6, " checkAppId DRM"

    .line 100
    .line 101
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    move-object p0, v0

    .line 114
    goto :goto_1

    .line 115
    :cond_3
    :goto_0
    new-instance v0, Lkotlin/text/Regex;

    .line 116
    .line 117
    const-string v6, "(?<!try\\{)(Plugins\\.link\\(\"[^\"]+\\.dll\"\\);)"

    .line 118
    .line 119
    invoke-direct {v0, v6}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v5}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    if-eqz v6, :cond_4

    .line 127
    .line 128
    invoke-static {v0, v5, v10, v9, v8}, Lkotlin/text/Regex;->findAll$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/sequences/Sequence;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    invoke-static {v6}, Lkotlin/sequences/SequencesKt;->count(Lkotlin/sequences/Sequence;)I

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    const-string v8, "try{$1}catch(e){}"

    .line 137
    .line 138
    invoke-virtual {v0, v5, v8}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v6, " DLL Plugins.link"

    .line 151
    .line 152
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_5

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_5
    const-string v8, " + "

    .line 170
    .line 171
    const/4 v11, 0x0

    .line 172
    const/16 v12, 0x3e

    .line 173
    .line 174
    const/4 v9, 0x0

    .line 175
    const/4 v10, 0x0

    .line 176
    invoke-static/range {v7 .. v12}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    new-instance v6, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v0, "\n"

    .line 189
    .line 190
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {p0, v0}, LS/F;->b(Ljava/lang/String;)[B

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    invoke-static {v4, p0}, Lcom/bumptech/glide/d;->d0(Ljava/io/File;[B)Z

    .line 205
    .line 206
    .line 207
    const-string v8, ", "

    .line 208
    .line 209
    const/4 v11, 0x0

    .line 210
    const/16 v12, 0x3e

    .line 211
    .line 212
    const/4 v9, 0x0

    .line 213
    const/4 v10, 0x0

    .line 214
    invoke-static/range {v7 .. v12}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .line 232
    .line 233
    return-void

    .line 234
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    const-string v0, "Could not patch AfterInit.tjs: "

    .line 239
    .line 240
    invoke-static {v0, p0, v1}, LE/b;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    :cond_6
    :goto_2
    return-void
.end method

.method public static s(Ljava/io/File;)V
    .locals 6

    .line 1
    const-string v0, "KiriKiriGame"

    .line 2
    .line 3
    const-string v1, "// [MinHub:applock-v3]\nSystem.createAppLock = function(name) { return true; } incontextof null;\n\n"

    .line 4
    .line 5
    new-instance v2, Ljava/io/File;

    .line 6
    .line 7
    const-string v3, "system/Boot.tjs"

    .line 8
    .line 9
    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_6

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_0
    :try_start_0
    invoke-static {v2}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, La/a;->G([B)LS/F;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    if-nez p0, :cond_1

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_1
    iget-object v3, p0, LS/F;->b:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v3, Ljava/lang/String;

    .line 39
    .line 40
    const-string v4, "MinHub:applock-v3"

    .line 41
    .line 42
    invoke-static {v3, v4}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const-string v4, "createAppLock"

    .line 50
    .line 51
    invoke-static {v3, v4}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-nez v4, :cond_3

    .line 56
    .line 57
    const-string v4, "MinHub:applock"

    .line 58
    .line 59
    invoke-static {v3, v4}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-nez v4, :cond_3

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :catch_0
    move-exception p0

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    const-string v4, "// [MinHub:applock-v2]"

    .line 69
    .line 70
    invoke-static {v3, v4}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    const-string v5, "\n\n"

    .line 75
    .line 76
    if-eqz v4, :cond_4

    .line 77
    .line 78
    :try_start_1
    invoke-static {v3, v5}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    goto :goto_0

    .line 83
    :cond_4
    const-string v4, "// [MinHub:applock]"

    .line 84
    .line 85
    invoke-static {v3, v4}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-eqz v4, :cond_5

    .line 90
    .line 91
    invoke-static {v3, v5}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    :cond_5
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {p0, v1}, LS/F;->b(Ljava/lang/String;)[B

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-static {v2, p0}, Lcom/bumptech/glide/d;->d0(Ljava/io/File;[B)Z

    .line 112
    .line 113
    .line 114
    const-string p0, "Patched Boot.tjs v3: createAppLock override"

    .line 115
    .line 116
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    const-string v1, "Could not patch Boot.tjs: "

    .line 125
    .line 126
    invoke-static {v1, p0, v0}, LE/b;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :cond_6
    :goto_2
    return-void
.end method

.method public static t(Ljava/io/File;)V
    .locals 7

    .line 1
    invoke-static {p0}, Lz1/g;->b(Ljava/io/File;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {p0}, Lz1/g;->a(Ljava/io/File;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const-string v1, "patchDirs"

    .line 17
    .line 18
    const-string v6, "KiriKiriGame"

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v4, Ly1/f1;

    .line 26
    .line 27
    const/16 p0, 0xf

    .line 28
    .line 29
    invoke-direct {v4, p0}, Ly1/f1;-><init>(I)V

    .line 30
    .line 31
    .line 32
    const/16 v5, 0x1e

    .line 33
    .line 34
    const-string v1, ", "

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v1, "Patched Boot.tjs: autopath "

    .line 45
    .line 46
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    new-instance v4, Ly1/f1;

    .line 64
    .line 65
    const/16 p0, 0xf

    .line 66
    .line 67
    invoke-direct {v4, p0}, Ly1/f1;-><init>(I)V

    .line 68
    .line 69
    .line 70
    const/16 v5, 0x1e

    .line 71
    .line 72
    const-string v1, ", "

    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    const/4 v3, 0x0

    .line 76
    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const-string v0, "Could not add patch autopath for "

    .line 81
    .line 82
    invoke-static {v0, p0, v6}, LE/b;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public static u(Ljava/io/File;)V
    .locals 12

    .line 1
    invoke-static {p0}, Lkotlin/io/FilesKt;->walkTopDown(Ljava/io/File;)Lkotlin/io/FileTreeWalk;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ly1/f1;

    .line 6
    .line 7
    const/4 v1, 0x5

    .line 8
    invoke-direct {v0, v1}, Ly1/f1;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->q(Lkotlin/io/FileTreeWalk;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const/4 v0, 0x0

    .line 20
    move v1, v0

    .line 21
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const-string v3, "KiriKiriGame"

    .line 26
    .line 27
    if-eqz v2, :cond_3

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/io/File;

    .line 34
    .line 35
    :try_start_0
    invoke-static {v2}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    array-length v5, v4

    .line 40
    const/4 v6, 0x2

    .line 41
    if-lt v5, v6, :cond_0

    .line 42
    .line 43
    aget-byte v5, v4, v0

    .line 44
    .line 45
    const/16 v6, 0xff

    .line 46
    .line 47
    and-int/2addr v5, v6

    .line 48
    const/4 v7, 0x1

    .line 49
    aget-byte v7, v4, v7

    .line 50
    .line 51
    and-int/2addr v7, v6

    .line 52
    if-ne v5, v6, :cond_1

    .line 53
    .line 54
    const/16 v8, 0xfe

    .line 55
    .line 56
    if-eq v7, v8, :cond_0

    .line 57
    .line 58
    :cond_1
    const/16 v7, 0x2f

    .line 59
    .line 60
    if-eq v5, v7, :cond_0

    .line 61
    .line 62
    const/16 v8, 0x5b

    .line 63
    .line 64
    if-eq v5, v8, :cond_0

    .line 65
    .line 66
    const/16 v8, 0x7b

    .line 67
    .line 68
    if-eq v5, v8, :cond_0

    .line 69
    .line 70
    xor-int/lit8 v5, v5, 0x2f

    .line 71
    .line 72
    array-length v8, v4

    .line 73
    new-array v9, v8, [B

    .line 74
    .line 75
    move v10, v0

    .line 76
    :goto_1
    if-ge v10, v8, :cond_2

    .line 77
    .line 78
    aget-byte v11, v4, v10

    .line 79
    .line 80
    and-int/2addr v11, v6

    .line 81
    xor-int/2addr v11, v5

    .line 82
    int-to-byte v11, v11

    .line 83
    aput-byte v11, v9, v10

    .line 84
    .line 85
    add-int/lit8 v10, v10, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    aget-byte v4, v9, v0

    .line 89
    .line 90
    and-int/2addr v4, v6

    .line 91
    if-ne v4, v7, :cond_0

    .line 92
    .line 93
    invoke-static {v2, v9}, Lcom/bumptech/glide/d;->d0(Ljava/io/File;[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    .line 96
    add-int/lit8 v1, v1, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catch_0
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    const-string v4, "Could not decode "

    .line 104
    .line 105
    invoke-static {v4, v2, v3}, LE/b;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    if-lez v1, :cond_4

    .line 110
    .line 111
    new-instance p0, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v0, "Decoded "

    .line 114
    .line 115
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v0, " encrypted json files"

    .line 122
    .line 123
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    :cond_4
    return-void
.end method

.method public static v(Ljava/io/File;)V
    .locals 8

    .line 1
    const-string v0, "KiriKiriGame"

    .line 2
    .line 3
    const-string v1, "Patched startup.tjs v2: createAppLock override"

    .line 4
    .line 5
    const-string v2, "// [MinHub:startup-v2]\ntry{ System.createAppLock = function(name) { return true; } incontextof null; }catch(e){}\n\n"

    .line 6
    .line 7
    new-instance v3, Ljava/io/File;

    .line 8
    .line 9
    const-string v4, "startup.tjs"

    .line 10
    .line 11
    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_8

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-nez p0, :cond_0

    .line 25
    .line 26
    goto/16 :goto_4

    .line 27
    .line 28
    :cond_0
    :try_start_0
    invoke-static {v3}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {p0}, La/a;->G([B)LS/F;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    if-nez p0, :cond_1

    .line 37
    .line 38
    goto/16 :goto_4

    .line 39
    .line 40
    :cond_1
    iget-object v4, p0, LS/F;->b:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v4, Ljava/lang/String;

    .line 43
    .line 44
    const-string v5, "MinHub:startup-v2"

    .line 45
    .line 46
    invoke-static {v4, v5}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_2

    .line 51
    .line 52
    goto :goto_4

    .line 53
    :cond_2
    const-string v5, "// [MinHub:startup-v1]"

    .line 54
    .line 55
    invoke-static {v4, v5}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_3

    .line 60
    .line 61
    const-string v5, "\n\n"

    .line 62
    .line 63
    invoke-static {v4, v5}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception p0

    .line 69
    goto :goto_3

    .line 70
    :cond_3
    :goto_0
    new-instance v5, Lkotlin/text/Regex;

    .line 71
    .line 72
    const-string v6, "(Plugins\\.link\\(\"[^\"]+\\.dll\"\\);)"

    .line 73
    .line 74
    invoke-direct {v5, v6}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, v4}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-eqz v6, :cond_4

    .line 82
    .line 83
    const-string v7, "try{$1}catch(e){}"

    .line 84
    .line 85
    invoke-virtual {v5, v4, v7}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {p0, v2}, LS/F;->b(Ljava/lang/String;)[B

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-static {v3, v2}, Lcom/bumptech/glide/d;->d0(Ljava/io/File;[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .line 108
    const-string v2, ""

    .line 109
    .line 110
    if-eqz v6, :cond_5

    .line 111
    .line 112
    :try_start_1
    const-string v3, " + DLL try-catch"

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_5
    move-object v3, v2

    .line 116
    :goto_1
    iget-object p0, p0, LS/F;->c:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast p0, Lz1/l;

    .line 119
    .line 120
    sget-object v4, Lz1/l;->d:Lz1/l;

    .line 121
    .line 122
    if-ne p0, v4, :cond_6

    .line 123
    .line 124
    const/4 p0, 0x1

    .line 125
    goto :goto_2

    .line 126
    :cond_6
    const/4 p0, 0x0

    .line 127
    :goto_2
    if-eqz p0, :cond_7

    .line 128
    .line 129
    const-string v2, " (plain text)"

    .line 130
    .line 131
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    const-string v1, "Could not patch startup.tjs: "

    .line 155
    .line 156
    invoke-static {v1, p0, v0}, LE/b;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    :cond_8
    :goto_4
    return-void
.end method

.method public static x(Ljava/io/File;)V
    .locals 8

    .line 1
    const-string v0, "KiriKiriGame"

    .line 2
    .line 3
    const-string v1, "MinHub:trans-fallback"

    .line 4
    .line 5
    const-string v2, "super.beginTransition(method,"

    .line 6
    .line 7
    const-string v3, "if(method!=\'universal\'&&method!=\'crossfade\'&&method!=\'scroll\'&&method!=\'mosaic\')method=\'crossfade\'; // [MinHub:trans-fallback]\n\t\t"

    .line 8
    .line 9
    invoke-static {p0}, Lkotlin/io/FilesKt;->walkTopDown(Ljava/io/File;)Lkotlin/io/FileTreeWalk;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-instance v4, Ly1/f1;

    .line 14
    .line 15
    const/4 v5, 0x3

    .line 16
    invoke-direct {v4, v5}, Ly1/f1;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v4}, Lkotlin/sequences/SequencesKt;->q(Lkotlin/io/FileTreeWalk;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    new-instance v4, Ly1/f1;

    .line 24
    .line 25
    const/4 v5, 0x4

    .line 26
    invoke-direct {v4, v5}, Ly1/f1;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-static {p0, v4}, Lkotlin/sequences/SequencesKt;->filterNot(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_3

    .line 42
    .line 43
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Ljava/io/File;

    .line 48
    .line 49
    :try_start_0
    invoke-static {v4}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-static {v5}, La/a;->G([B)LS/F;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    if-nez v5, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget-object v6, v5, LS/F;->b:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v6, Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v6, v1}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-nez v7, :cond_0

    .line 69
    .line 70
    invoke-static {v6, v2}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    if-nez v7, :cond_2

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    invoke-static {v6, v2, v7}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-virtual {v5, v6}, LS/F;->b(Ljava/lang/String;)[B

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-static {v4, v5}, Lcom/bumptech/glide/d;->d0(Ljava/io/File;[B)Z

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    new-instance v6, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v7, "Patched "

    .line 113
    .line 114
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v5, ": transition fallback (extrans -> crossfade)"

    .line 121
    .line 122
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :catch_0
    move-exception v5

    .line 134
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    new-instance v6, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    const-string v7, "Could not patch transitions in "

    .line 145
    .line 146
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v4, ": "

    .line 153
    .line 154
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    :cond_3
    return-void
.end method

.method public static y(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, La/a;->G([B)LS/F;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, LS/F;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    return-object p0

    .line 16
    :catch_0
    :cond_0
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method

.method public static z(Ljava/io/File;)V
    .locals 12

    .line 1
    const-string v0, "KiriKiriGame"

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    const-string v2, "plugin"

    .line 6
    .line 7
    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    goto/16 :goto_3

    .line 17
    .line 18
    :cond_0
    const-string p0, "// MinHub: stub \u2014 Windows DLL replaced for Android compatibility\n"

    .line 19
    .line 20
    sget-object v2, Lkotlin/text/Charsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 21
    .line 22
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string v2, "getBytes(...)"

    .line 27
    .line 28
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    array-length v2, p0

    .line 32
    const/4 v3, 0x2

    .line 33
    add-int/2addr v2, v3

    .line 34
    new-array v2, v2, [B

    .line 35
    .line 36
    const/4 v4, -0x1

    .line 37
    const/4 v5, 0x0

    .line 38
    aput-byte v4, v2, v5

    .line 39
    .line 40
    const/4 v4, -0x2

    .line 41
    const/4 v6, 0x1

    .line 42
    aput-byte v4, v2, v6

    .line 43
    .line 44
    array-length v4, p0

    .line 45
    invoke-static {p0, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    if-eqz p0, :cond_4

    .line 53
    .line 54
    new-instance v1, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    array-length v4, p0

    .line 60
    move v7, v5

    .line 61
    :goto_0
    if-ge v7, v4, :cond_2

    .line 62
    .line 63
    aget-object v8, p0, v7

    .line 64
    .line 65
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    if-eqz v9, :cond_1

    .line 70
    .line 71
    const-string v9, "dll"

    .line 72
    .line 73
    invoke-static {v8, v8, v9, v6}, LE/b;->y(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Z)Z

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    if-eqz v9, :cond_1

    .line 78
    .line 79
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    move v4, v5

    .line 90
    :cond_3
    :goto_1
    if-ge v4, p0, :cond_4

    .line 91
    .line 92
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    add-int/lit8 v4, v4, 0x1

    .line 97
    .line 98
    check-cast v7, Ljava/io/File;

    .line 99
    .line 100
    :try_start_0
    new-array v8, v3, [B

    .line 101
    .line 102
    new-instance v9, Ljava/io/FileInputStream;

    .line 103
    .line 104
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-direct {v9, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .line 109
    .line 110
    :try_start_1
    invoke-virtual {v9, v8}, Ljava/io/FileInputStream;->read([B)I

    .line 111
    .line 112
    .line 113
    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    const/4 v11, 0x0

    .line 115
    :try_start_2
    invoke-static {v9, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    if-ne v10, v3, :cond_3

    .line 119
    .line 120
    aget-byte v9, v8, v5

    .line 121
    .line 122
    and-int/lit16 v9, v9, 0xff

    .line 123
    .line 124
    const/16 v10, 0x4d

    .line 125
    .line 126
    if-ne v9, v10, :cond_3

    .line 127
    .line 128
    aget-byte v8, v8, v6

    .line 129
    .line 130
    and-int/lit16 v8, v8, 0xff

    .line 131
    .line 132
    const/16 v9, 0x5a

    .line 133
    .line 134
    if-ne v8, v9, :cond_3

    .line 135
    .line 136
    invoke-static {v7, v2}, Lkotlin/io/FilesKt;->writeBytes(Ljava/io/File;[B)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    new-instance v9, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    const-string v10, "Stubbed Windows DLL: "

    .line 149
    .line 150
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v8

    .line 160
    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :catch_0
    move-exception v8

    .line 165
    goto :goto_2

    .line 166
    :catchall_0
    move-exception v8

    .line 167
    :try_start_3
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 168
    :catchall_1
    move-exception v10

    .line 169
    :try_start_4
    invoke-static {v9, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 170
    .line 171
    .line 172
    throw v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 173
    :goto_2
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    new-instance v9, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string v10, "Could not stub "

    .line 184
    .line 185
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v7, ": "

    .line 192
    .line 193
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    goto :goto_1

    .line 207
    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "base"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, LS1/c;->d:I

    .line 7
    .line 8
    invoke-static {p1}, LS1/d;->d(Landroid/content/Context;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {p1, v0}, Lcom/bumptech/glide/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final get_res_sd_operate_step()I
    .locals 1

    .line 1
    const v0, 0x7f08012c

    .line 2
    .line 3
    .line 4
    return v0
.end method

.method public final keepsHostOrientation()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->b:I

    .line 2
    .line 3
    invoke-static {p0, v0}, Ly1/e0;->b(Landroid/app/Activity;I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v2, "game_id"

    .line 8
    .line 9
    const/4 v3, -0x1

    .line 10
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, v1, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->b:I

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v2, "kiri_game_path"

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/4 v3, 0x1

    .line 27
    const/4 v4, 0x0

    .line 28
    const-string v5, "KiriKiriGame"

    .line 29
    .line 30
    if-eqz v2, :cond_18

    .line 31
    .line 32
    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    goto/16 :goto_c

    .line 39
    .line 40
    :cond_0
    new-instance v6, Ljava/io/File;

    .line 41
    .line 42
    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v6}, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->n(Ljava/io/File;)Ljava/io/File;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v7, ")"

    .line 50
    .line 51
    const-string v8, "/"

    .line 52
    .line 53
    if-eqz v0, :cond_15

    .line 54
    .line 55
    invoke-static {v0}, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->l(Ljava/io/File;)V

    .line 56
    .line 57
    .line 58
    new-instance v6, Ljava/io/File;

    .line 59
    .line 60
    const-string v9, "startup.tjs"

    .line 61
    .line 62
    invoke-direct {v6, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-nez v6, :cond_13

    .line 70
    .line 71
    new-instance v6, Lcom/minhub/gamehub/data/b;

    .line 72
    .line 73
    const/4 v9, 0x3

    .line 74
    invoke-direct {v6, v9}, Lcom/minhub/gamehub/data/b;-><init>(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v6}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    if-eqz v6, :cond_1

    .line 82
    .line 83
    invoke-static {v6}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    goto :goto_0

    .line 88
    :cond_1
    move-object v6, v4

    .line 89
    :goto_0
    if-eqz v6, :cond_f

    .line 90
    .line 91
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    if-eqz v9, :cond_2

    .line 96
    .line 97
    goto/16 :goto_6

    .line 98
    .line 99
    :cond_2
    new-instance v9, Lcom/minhub/gamehub/data/b;

    .line 100
    .line 101
    const/4 v10, 0x4

    .line 102
    invoke-direct {v9, v10}, Lcom/minhub/gamehub/data/b;-><init>(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v9}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    const-string v10, "toLowerCase(...)"

    .line 110
    .line 111
    if-eqz v9, :cond_4

    .line 112
    .line 113
    new-instance v11, Ljava/util/ArrayList;

    .line 114
    .line 115
    array-length v12, v9

    .line 116
    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    .line 118
    .line 119
    array-length v12, v9

    .line 120
    const/4 v13, 0x0

    .line 121
    :goto_1
    if-ge v13, v12, :cond_3

    .line 122
    .line 123
    aget-object v14, v9, v13

    .line 124
    .line 125
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    invoke-static {v14}, Lkotlin/io/FilesKt;->getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v14

    .line 132
    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 133
    .line 134
    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v14

    .line 138
    invoke-static {v14, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    add-int/lit8 v13, v13, 0x1

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_3
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    if-eqz v9, :cond_4

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_4
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    .line 155
    .line 156
    .line 157
    move-result-object v9

    .line 158
    :goto_2
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 159
    .line 160
    .line 161
    move-result-object v11

    .line 162
    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result v12

    .line 166
    if-eqz v12, :cond_6

    .line 167
    .line 168
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v12

    .line 172
    move-object v13, v12

    .line 173
    check-cast v13, Ljava/io/File;

    .line 174
    .line 175
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    invoke-static {v13}, Lkotlin/io/FilesKt;->getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v13

    .line 182
    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 183
    .line 184
    invoke-virtual {v13, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v13

    .line 188
    invoke-static {v13, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-interface {v9, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v13

    .line 195
    if-eqz v13, :cond_5

    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_6
    move-object v12, v4

    .line 199
    :goto_3
    check-cast v12, Ljava/io/File;

    .line 200
    .line 201
    if-eqz v12, :cond_7

    .line 202
    .line 203
    goto :goto_7

    .line 204
    :cond_7
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 205
    .line 206
    .line 207
    move-result-object v9

    .line 208
    :cond_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 209
    .line 210
    .line 211
    move-result v10

    .line 212
    if-eqz v10, :cond_9

    .line 213
    .line 214
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v10

    .line 218
    move-object v11, v10

    .line 219
    check-cast v11, Ljava/io/File;

    .line 220
    .line 221
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v11

    .line 225
    const-string v12, "data.xp3"

    .line 226
    .line 227
    invoke-static {v11, v12, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 228
    .line 229
    .line 230
    move-result v11

    .line 231
    if-eqz v11, :cond_8

    .line 232
    .line 233
    goto :goto_4

    .line 234
    :cond_9
    move-object v10, v4

    .line 235
    :goto_4
    move-object v12, v10

    .line 236
    check-cast v12, Ljava/io/File;

    .line 237
    .line 238
    if-eqz v12, :cond_a

    .line 239
    .line 240
    goto :goto_7

    .line 241
    :cond_a
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 246
    .line 247
    .line 248
    move-result v9

    .line 249
    if-nez v9, :cond_b

    .line 250
    .line 251
    move-object v9, v4

    .line 252
    goto :goto_5

    .line 253
    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v9

    .line 257
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 258
    .line 259
    .line 260
    move-result v10

    .line 261
    if-nez v10, :cond_c

    .line 262
    .line 263
    goto :goto_5

    .line 264
    :cond_c
    move-object v10, v9

    .line 265
    check-cast v10, Ljava/io/File;

    .line 266
    .line 267
    invoke-virtual {v10}, Ljava/io/File;->length()J

    .line 268
    .line 269
    .line 270
    move-result-wide v10

    .line 271
    :cond_d
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v12

    .line 275
    move-object v13, v12

    .line 276
    check-cast v13, Ljava/io/File;

    .line 277
    .line 278
    invoke-virtual {v13}, Ljava/io/File;->length()J

    .line 279
    .line 280
    .line 281
    move-result-wide v13

    .line 282
    cmp-long v15, v10, v13

    .line 283
    .line 284
    if-gez v15, :cond_e

    .line 285
    .line 286
    move-object v9, v12

    .line 287
    move-wide v10, v13

    .line 288
    :cond_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 289
    .line 290
    .line 291
    move-result v12

    .line 292
    if-nez v12, :cond_d

    .line 293
    .line 294
    :goto_5
    move-object v12, v9

    .line 295
    check-cast v12, Ljava/io/File;

    .line 296
    .line 297
    goto :goto_7

    .line 298
    :cond_f
    :goto_6
    move-object v12, v4

    .line 299
    :goto_7
    if-eqz v12, :cond_13

    .line 300
    .line 301
    const-string v6, "KiriKiriXp3Filter"

    .line 302
    .line 303
    const-string v8, "Wrote xp3filter.tjs for "

    .line 304
    .line 305
    const-string v9, "Storages.setXP3ArchiveExtractionFilter(function(h,o,b,l){b.xor(0,l,"

    .line 306
    .line 307
    const-string v10, "gameDir"

    .line 308
    .line 309
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    const-string v10, "bootArchive"

    .line 313
    .line 314
    invoke-static {v12, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    new-instance v10, Ljava/io/File;

    .line 318
    .line 319
    const-string v11, "xp3filter.tjs"

    .line 320
    .line 321
    invoke-direct {v10, v0, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    if-eqz v0, :cond_10

    .line 329
    .line 330
    goto/16 :goto_9

    .line 331
    .line 332
    :cond_10
    :try_start_0
    invoke-static {v12}, Ly1/L1;->f(Ljava/io/File;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    if-nez v0, :cond_11

    .line 337
    .line 338
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    new-instance v8, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    const-string v0, ": scheme not recognized \u2014 no filter written"

    .line 351
    .line 352
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    goto/16 :goto_9

    .line 363
    .line 364
    :catch_0
    move-exception v0

    .line 365
    goto :goto_8

    .line 366
    :cond_11
    const-string v11, "PLAIN"

    .line 367
    .line 368
    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    move-result v11

    .line 372
    if-eqz v11, :cond_12

    .line 373
    .line 374
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    new-instance v8, Ljava/lang/StringBuilder;

    .line 379
    .line 380
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    const-string v0, ": unencrypted \u2014 no filter needed"

    .line 387
    .line 388
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    .line 397
    .line 398
    goto :goto_9

    .line 399
    :cond_12
    new-instance v11, Ljava/lang/StringBuilder;

    .line 400
    .line 401
    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    const-string v9, ");});"

    .line 408
    .line 409
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v9

    .line 416
    invoke-static {v10, v9}, Lkotlin/io/FilesKt;->g(Ljava/io/File;Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v9

    .line 423
    new-instance v10, Ljava/lang/StringBuilder;

    .line 424
    .line 425
    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    const-string v8, ": b.xor(0,l,"

    .line 432
    .line 433
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    .line 448
    .line 449
    goto :goto_9

    .line 450
    :goto_8
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v8

    .line 454
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    new-instance v9, Ljava/lang/StringBuilder;

    .line 459
    .line 460
    const-string v10, "xp3filter detection failed for "

    .line 461
    .line 462
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    const-string v8, ": "

    .line 469
    .line 470
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    .line 482
    .line 483
    :goto_9
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    new-instance v6, Ljava/lang/StringBuilder;

    .line 488
    .line 489
    const-string v8, "XP3-packed KiriKiri: startup via archive "

    .line 490
    .line 491
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    .line 503
    .line 504
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    const-string v6, "getAbsolutePath(...)"

    .line 509
    .line 510
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    goto/16 :goto_b

    .line 514
    .line 515
    :cond_13
    invoke-virtual {v1, v0}, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->w(Ljava/io/File;)V

    .line 516
    .line 517
    .line 518
    invoke-static {v0}, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->v(Ljava/io/File;)V

    .line 519
    .line 520
    .line 521
    invoke-static {v0}, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->m(Ljava/io/File;)V

    .line 522
    .line 523
    .line 524
    invoke-static {v0}, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->s(Ljava/io/File;)V

    .line 525
    .line 526
    .line 527
    invoke-static {v0}, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->t(Ljava/io/File;)V

    .line 528
    .line 529
    .line 530
    invoke-static {v0}, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->r(Ljava/io/File;)V

    .line 531
    .line 532
    .line 533
    invoke-static {v0}, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->x(Ljava/io/File;)V

    .line 534
    .line 535
    .line 536
    invoke-static {v0}, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->z(Ljava/io/File;)V

    .line 537
    .line 538
    .line 539
    invoke-static {v0}, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->u(Ljava/io/File;)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v1, v0}, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->q(Ljava/io/File;)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v1, v0}, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->p(Ljava/io/File;)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 553
    .line 554
    .line 555
    invoke-static {v0, v8}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 556
    .line 557
    .line 558
    move-result v6

    .line 559
    if-eqz v6, :cond_14

    .line 560
    .line 561
    goto :goto_b

    .line 562
    :cond_14
    invoke-static {v0, v8}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    goto :goto_b

    .line 567
    :cond_15
    invoke-static {v6}, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->l(Ljava/io/File;)V

    .line 568
    .line 569
    .line 570
    new-instance v0, Ljava/io/File;

    .line 571
    .line 572
    const-string v9, ".cf"

    .line 573
    .line 574
    invoke-direct {v0, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 578
    .line 579
    .line 580
    move-result v9

    .line 581
    if-eqz v9, :cond_16

    .line 582
    .line 583
    goto :goto_a

    .line 584
    :cond_16
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 585
    .line 586
    .line 587
    const-string v0, "Created empty .cf sentinel"

    .line 588
    .line 589
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 590
    .line 591
    .line 592
    goto :goto_a

    .line 593
    :catch_1
    move-exception v0

    .line 594
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    const-string v9, "Could not create .cf: "

    .line 599
    .line 600
    invoke-static {v9, v0, v5}, LE/b;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    :goto_a
    invoke-virtual {v1, v6}, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->w(Ljava/io/File;)V

    .line 604
    .line 605
    .line 606
    invoke-static {v6}, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->v(Ljava/io/File;)V

    .line 607
    .line 608
    .line 609
    invoke-static {v6}, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->m(Ljava/io/File;)V

    .line 610
    .line 611
    .line 612
    invoke-static {v6}, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->s(Ljava/io/File;)V

    .line 613
    .line 614
    .line 615
    invoke-static {v6}, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->t(Ljava/io/File;)V

    .line 616
    .line 617
    .line 618
    invoke-static {v6}, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->r(Ljava/io/File;)V

    .line 619
    .line 620
    .line 621
    invoke-static {v6}, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->x(Ljava/io/File;)V

    .line 622
    .line 623
    .line 624
    invoke-static {v6}, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->z(Ljava/io/File;)V

    .line 625
    .line 626
    .line 627
    invoke-static {v6}, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->u(Ljava/io/File;)V

    .line 628
    .line 629
    .line 630
    invoke-virtual {v1, v6}, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->q(Ljava/io/File;)V

    .line 631
    .line 632
    .line 633
    invoke-virtual {v1, v6}, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->p(Ljava/io/File;)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v0

    .line 640
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 641
    .line 642
    .line 643
    invoke-static {v0, v8}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 644
    .line 645
    .line 646
    move-result v6

    .line 647
    if-eqz v6, :cond_17

    .line 648
    .line 649
    goto :goto_b

    .line 650
    :cond_17
    invoke-static {v0, v8}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v0

    .line 654
    :goto_b
    sput-object v0, Lorg/tvp/kirikiri2/KR2Activity;->sIntentStartupPath:Ljava/lang/String;

    .line 655
    .line 656
    const-string v6, "KiriKiri game path (raw="

    .line 657
    .line 658
    const-string v8, ", resolved="

    .line 659
    .line 660
    invoke-static {v6, v2, v8, v0, v7}, LE/b;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v0

    .line 664
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    .line 666
    .line 667
    goto :goto_d

    .line 668
    :cond_18
    :goto_c
    sput-object v4, Lorg/tvp/kirikiri2/KR2Activity;->sIntentStartupPath:Ljava/lang/String;

    .line 669
    .line 670
    const-string v0, "No game path provided \u2014 KiriKiri will show file browser"

    .line 671
    .line 672
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    .line 674
    .line 675
    :goto_d
    const-string v0, "kirikiri"

    .line 676
    .line 677
    invoke-static {v1, v0, v4, v4}, La/a;->r(Landroid/app/Activity;Ljava/lang/String;Ly1/x;Ly1/x;)LA1/v0;

    .line 678
    .line 679
    .line 680
    move-result-object v0

    .line 681
    iput-object v0, v1, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->d:LA1/v0;

    .line 682
    .line 683
    :try_start_2
    invoke-super/range {p0 .. p1}, Lorg/tvp/kirikiri2/KR2Activity;->onCreate(Landroid/os/Bundle;)V

    .line 684
    .line 685
    .line 686
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 691
    .line 692
    .line 693
    move-result-object v0

    .line 694
    new-instance v2, LC1/g1;

    .line 695
    .line 696
    const/16 v4, 0x13

    .line 697
    .line 698
    invoke-direct {v2, v4, v1}, LC1/g1;-><init>(ILjava/lang/Object;)V

    .line 699
    .line 700
    .line 701
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 702
    .line 703
    .line 704
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 705
    .line 706
    .line 707
    move-result-object v0

    .line 708
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 709
    .line 710
    .line 711
    move-result-object v0

    .line 712
    new-instance v2, LC1/e1;

    .line 713
    .line 714
    const/4 v4, 0x3

    .line 715
    invoke-direct {v2, v4}, LC1/e1;-><init>(I)V

    .line 716
    .line 717
    .line 718
    const-wide/16 v6, 0x1f40

    .line 719
    .line 720
    invoke-virtual {v0, v2, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_2

    .line 721
    .line 722
    .line 723
    goto :goto_e

    .line 724
    :catch_2
    move-exception v0

    .line 725
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v0

    .line 729
    new-instance v2, Ljava/lang/StringBuilder;

    .line 730
    .line 731
    const-string v4, "KiriKiri library load failed: "

    .line 732
    .line 733
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 734
    .line 735
    .line 736
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    .line 738
    .line 739
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object v0

    .line 743
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    .line 745
    .line 746
    const v0, 0x7f1201d2

    .line 747
    .line 748
    .line 749
    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 750
    .line 751
    .line 752
    move-result-object v0

    .line 753
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 754
    .line 755
    .line 756
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 757
    .line 758
    .line 759
    :goto_e
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    sget-object v0, Ly1/f0;->a:La2/e;

    .line 2
    .line 3
    iget v0, p0, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->b:I

    .line 4
    .line 5
    iget-wide v1, p0, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->c:J

    .line 6
    .line 7
    invoke-static {p0, v0, v1, v2}, Ly1/f0;->a(Landroid/app/Activity;IJ)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lorg/tvp/kirikiri2/KR2Activity;->onDestroy()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->d:LA1/v0;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, LA1/v0;->b()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onLoadNativeLibraries()V
    .locals 5

    .line 1
    const-string v0, "KiriKiriGame"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "krkr2yuri"

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "libkrkr2yuri.so loaded successfully"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catch_0
    move-exception v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v4, "Failed to load libkrkr2yuri.so: "

    .line 22
    .line 23
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    throw v1
.end method

.method public final p(Ljava/io/File;)V
    .locals 8

    .line 1
    const-string v0, "KiriKiriGame"

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    const-string v2, "startup.tjs"

    .line 6
    .line 7
    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->o(Ljava/io/File;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    :cond_1
    new-instance v2, Ljava/io/File;

    .line 27
    .line 28
    const-string v3, "MinHubGdiPlusPolyfill.tjs"

    .line 29
    .line 30
    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    const/4 v3, 0x0

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    invoke-static {v2}, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->y(Ljava/io/File;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p1

    .line 46
    goto/16 :goto_2

    .line 47
    .line 48
    :cond_2
    move-object p1, v3

    .line 49
    :goto_0
    if-eqz p1, :cond_3

    .line 50
    .line 51
    const-string v4, "MinHub:gdiplus-polyfill"

    .line 52
    .line 53
    invoke-static {p1, v4}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_6

    .line 58
    .line 59
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string v4, "kiri/MinHubGdiPlusPolyfill.tjs"

    .line 64
    .line 65
    invoke-virtual {p1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 66
    .line 67
    .line 68
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :try_start_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p1}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    .line 73
    .line 74
    .line 75
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :try_start_2
    invoke-static {p1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    new-instance p1, Ljava/lang/String;

    .line 80
    .line 81
    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 82
    .line 83
    invoke-direct {p1, v4, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    const/4 v4, 0x1

    .line 91
    const/4 v5, 0x0

    .line 92
    if-lez v3, :cond_4

    .line 93
    .line 94
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    const v6, 0xfeff

    .line 99
    .line 100
    .line 101
    if-ne v3, v6, :cond_4

    .line 102
    .line 103
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    const-string v3, "substring(...)"

    .line 108
    .line 109
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_4
    sget-object v3, Lkotlin/text/Charsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 113
    .line 114
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    const-string v3, "getBytes(...)"

    .line 119
    .line 120
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    array-length v3, p1

    .line 124
    const/4 v6, 0x2

    .line 125
    add-int/2addr v3, v6

    .line 126
    new-array v3, v3, [B

    .line 127
    .line 128
    const/4 v7, -0x1

    .line 129
    aput-byte v7, v3, v5

    .line 130
    .line 131
    const/4 v7, -0x2

    .line 132
    aput-byte v7, v3, v4

    .line 133
    .line 134
    array-length v4, p1

    .line 135
    invoke-static {p1, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    .line 137
    .line 138
    invoke-static {v2, v3}, Lcom/bumptech/glide/d;->d0(Ljava/io/File;[B)Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-nez p1, :cond_5

    .line 143
    .line 144
    const-string p1, "Could not write MinHubGdiPlusPolyfill.tjs"

    .line 145
    .line 146
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_5
    const-string p1, "Installed MinHubGdiPlusPolyfill.tjs"

    .line 151
    .line 152
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    :cond_6
    invoke-static {v1}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-static {p1}, La/a;->G([B)LS/F;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    if-nez p1, :cond_7

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_7
    iget-object v2, p1, LS/F;->b:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast v2, Ljava/lang/String;

    .line 169
    .line 170
    invoke-static {v2}, Lcom/bumptech/glide/c;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    if-nez v2, :cond_8

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_8
    invoke-virtual {p1, v2}, LS/F;->b(Ljava/lang/String;)[B

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-static {v1, p1}, Lcom/bumptech/glide/d;->d0(Ljava/io/File;[B)Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-eqz p1, :cond_9

    .line 186
    .line 187
    const-string p1, "Loaded the GdiPlus stand-in from startup.tjs"

    .line 188
    .line 189
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 190
    .line 191
    .line 192
    :cond_9
    :goto_1
    return-void

    .line 193
    :catchall_0
    move-exception v1

    .line 194
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 195
    :catchall_1
    move-exception v2

    .line 196
    :try_start_4
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 197
    .line 198
    .line 199
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 200
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    const-string v1, "Could not install the GdiPlus stand-in: "

    .line 205
    .line 206
    invoke-static {v1, p1, v0}, LE/b;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    return-void
.end method

.method public final q(Ljava/io/File;)V
    .locals 18

    .line 1
    const-string v0, "try{"

    .line 2
    .line 3
    const-string v1, "Plugins.link"

    .line 4
    .line 5
    const-string v2, "MinHub:json-polyfill"

    .line 6
    .line 7
    const-string v3, "KiriKiriGame"

    .line 8
    .line 9
    new-instance v4, Ljava/io/File;

    .line 10
    .line 11
    const-string v5, "system"

    .line 12
    .line 13
    move-object/from16 v6, p1

    .line 14
    .line 15
    invoke-direct {v4, v6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v5, Ljava/io/File;

    .line 19
    .line 20
    const-string v6, "PluginLoader.tjs"

    .line 21
    .line 22
    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v6, Ljava/io/File;

    .line 26
    .line 27
    const-string v7, "SystemAddon.tjs"

    .line 28
    .line 29
    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance v7, Ljava/io/File;

    .line 33
    .line 34
    const-string v8, "Bootstrap.tjs"

    .line 35
    .line 36
    invoke-direct {v7, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    if-nez v8, :cond_0

    .line 44
    .line 45
    goto/16 :goto_6

    .line 46
    .line 47
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    const-string v9, ""

    .line 52
    .line 53
    const/4 v10, 0x1

    .line 54
    const/4 v11, 0x0

    .line 55
    if-eqz v8, :cond_2

    .line 56
    .line 57
    invoke-static {v5}, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->y(Ljava/io/File;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    if-nez v8, :cond_1

    .line 62
    .line 63
    move-object v8, v9

    .line 64
    :cond_1
    const-string v12, "json.dll"

    .line 65
    .line 66
    invoke-static {v8, v12}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    if-eqz v8, :cond_2

    .line 71
    .line 72
    move v8, v10

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    move v8, v11

    .line 75
    :goto_0
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    .line 76
    .line 77
    .line 78
    move-result v12

    .line 79
    if-eqz v12, :cond_4

    .line 80
    .line 81
    invoke-static {v6}, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->y(Ljava/io/File;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    if-nez v6, :cond_3

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    move-object v9, v6

    .line 89
    :goto_1
    const-string v6, "evalJSONStorage"

    .line 90
    .line 91
    invoke-static {v9, v6}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    if-eqz v6, :cond_4

    .line 96
    .line 97
    move v6, v10

    .line 98
    goto :goto_2

    .line 99
    :cond_4
    move v6, v11

    .line 100
    :goto_2
    if-nez v8, :cond_5

    .line 101
    .line 102
    if-nez v6, :cond_5

    .line 103
    .line 104
    goto/16 :goto_6

    .line 105
    .line 106
    :cond_5
    :try_start_0
    new-instance v6, Ljava/io/File;

    .line 107
    .line 108
    const-string v8, "MinHubJsonPolyfill.tjs"

    .line 109
    .line 110
    invoke-direct {v6, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    const/4 v8, 0x0

    .line 118
    if-eqz v4, :cond_6

    .line 119
    .line 120
    invoke-static {v6}, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->y(Ljava/io/File;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 124
    goto :goto_3

    .line 125
    :cond_6
    move-object v4, v8

    .line 126
    :goto_3
    const-string v9, "substring(...)"

    .line 127
    .line 128
    if-eqz v4, :cond_7

    .line 129
    .line 130
    :try_start_1
    const-string v12, "MinHub:json-polyfill-v1"

    .line 131
    .line 132
    invoke-static {v4, v12}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-nez v4, :cond_9

    .line 137
    .line 138
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    const-string v12, "kiri/MinHubJsonPolyfill.tjs"

    .line 143
    .line 144
    invoke-virtual {v4, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 145
    .line 146
    .line 147
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 148
    :try_start_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    invoke-static {v4}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    .line 152
    .line 153
    .line 154
    move-result-object v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    :try_start_3
    invoke-static {v4, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 156
    .line 157
    .line 158
    new-instance v4, Ljava/lang/String;

    .line 159
    .line 160
    sget-object v8, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 161
    .line 162
    invoke-direct {v4, v12, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 166
    .line 167
    .line 168
    move-result v8

    .line 169
    if-lez v8, :cond_8

    .line 170
    .line 171
    invoke-virtual {v4, v11}, Ljava/lang/String;->charAt(I)C

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    const v12, 0xfeff

    .line 176
    .line 177
    .line 178
    if-ne v8, v12, :cond_8

    .line 179
    .line 180
    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    :cond_8
    sget-object v8, Lkotlin/text/Charsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 188
    .line 189
    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    const-string v8, "getBytes(...)"

    .line 194
    .line 195
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    array-length v8, v4

    .line 199
    const/4 v12, 0x2

    .line 200
    add-int/2addr v8, v12

    .line 201
    new-array v8, v8, [B

    .line 202
    .line 203
    const/4 v13, -0x1

    .line 204
    aput-byte v13, v8, v11

    .line 205
    .line 206
    const/4 v13, -0x2

    .line 207
    aput-byte v13, v8, v10

    .line 208
    .line 209
    array-length v13, v4

    .line 210
    invoke-static {v4, v11, v8, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    .line 212
    .line 213
    invoke-static {v6, v8}, Lkotlin/io/FilesKt;->writeBytes(Ljava/io/File;[B)V

    .line 214
    .line 215
    .line 216
    const-string v4, "Installed MinHubJsonPolyfill.tjs"

    .line 217
    .line 218
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 219
    .line 220
    .line 221
    :cond_9
    :try_start_4
    invoke-static {v7}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    invoke-static {v4}, La/a;->G([B)LS/F;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    if-eqz v4, :cond_a

    .line 230
    .line 231
    iget-object v6, v4, LS/F;->b:Ljava/lang/Object;

    .line 232
    .line 233
    check-cast v6, Ljava/lang/String;

    .line 234
    .line 235
    invoke-static {v6, v2}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 236
    .line 237
    .line 238
    move-result v8

    .line 239
    if-nez v8, :cond_a

    .line 240
    .line 241
    const-string v8, "Scripts.execStorage(\"PluginLoader.tjs\");"

    .line 242
    .line 243
    invoke-static {v6, v8}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 244
    .line 245
    .line 246
    move-result v12

    .line 247
    if-eqz v12, :cond_a

    .line 248
    .line 249
    const-string v12, "Scripts.execStorage(\"PluginLoader.tjs\");\r\nScripts.execStorage(\"MinHubJsonPolyfill.tjs\");"

    .line 250
    .line 251
    invoke-static {v6, v8, v12}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v6

    .line 255
    invoke-virtual {v4, v6}, LS/F;->b(Ljava/lang/String;)[B

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    invoke-static {v7, v4}, Lcom/bumptech/glide/d;->d0(Ljava/io/File;[B)Z

    .line 260
    .line 261
    .line 262
    const-string v4, "Patched Bootstrap.tjs for JSON polyfill"

    .line 263
    .line 264
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 265
    .line 266
    .line 267
    goto :goto_4

    .line 268
    :catch_0
    const-string v4, "Could not patch Bootstrap.tjs for JSON"

    .line 269
    .line 270
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    :cond_a
    :goto_4
    :try_start_5
    invoke-static {v5}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    invoke-static {v4}, La/a;->G([B)LS/F;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    if-eqz v4, :cond_d

    .line 282
    .line 283
    iget-object v6, v4, LS/F;->b:Ljava/lang/Object;

    .line 284
    .line 285
    check-cast v6, Ljava/lang/String;

    .line 286
    .line 287
    invoke-static {v6, v2}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    if-nez v2, :cond_d

    .line 292
    .line 293
    invoke-static {v6, v1}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    if-eqz v2, :cond_d

    .line 298
    .line 299
    const-string v2, "\n"

    .line 300
    .line 301
    filled-new-array {v2}, [Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    const/4 v7, 0x6

    .line 306
    invoke-static {v6, v2, v11, v7}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;[Ljava/lang/String;II)Ljava/util/List;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    .line 311
    .line 312
    .line 313
    move-result-object v12

    .line 314
    invoke-interface {v12}, Ljava/util/Collection;->size()I

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    move v6, v11

    .line 319
    move v8, v6

    .line 320
    :goto_5
    if-ge v6, v2, :cond_c

    .line 321
    .line 322
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v13

    .line 326
    check-cast v13, Ljava/lang/String;

    .line 327
    .line 328
    invoke-static {v13, v1}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 329
    .line 330
    .line 331
    move-result v14

    .line 332
    if-eqz v14, :cond_b

    .line 333
    .line 334
    const-string v14, ".dll"

    .line 335
    .line 336
    invoke-static {v13, v14}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 337
    .line 338
    .line 339
    move-result v14

    .line 340
    if-eqz v14, :cond_b

    .line 341
    .line 342
    invoke-static {v13, v0}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 343
    .line 344
    .line 345
    move-result v14

    .line 346
    if-nez v14, :cond_b

    .line 347
    .line 348
    invoke-static {v1, v11, v7, v13}, Lkotlin/text/StringsKt;->w(Ljava/lang/String;IILjava/lang/CharSequence;)I

    .line 349
    .line 350
    .line 351
    move-result v14

    .line 352
    const-string v15, ");"

    .line 353
    .line 354
    const/4 v7, 0x4

    .line 355
    invoke-static {v15, v14, v7, v13}, Lkotlin/text/StringsKt;->w(Ljava/lang/String;IILjava/lang/CharSequence;)I

    .line 356
    .line 357
    .line 358
    move-result v7

    .line 359
    if-ltz v14, :cond_b

    .line 360
    .line 361
    if-le v7, v14, :cond_b

    .line 362
    .line 363
    invoke-virtual {v13, v11, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v8

    .line 367
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    add-int/lit8 v7, v7, 0x2

    .line 371
    .line 372
    invoke-virtual {v13, v14, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v14

    .line 376
    invoke-static {v14, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v13, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v7

    .line 383
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    new-instance v13, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    const-string v8, "}catch(e){}"

    .line 401
    .line 402
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v7

    .line 412
    invoke-interface {v12, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move v8, v10

    .line 416
    :cond_b
    add-int/lit8 v6, v6, 0x1

    .line 417
    .line 418
    const/4 v7, 0x6

    .line 419
    goto :goto_5

    .line 420
    :cond_c
    if-eqz v8, :cond_d

    .line 421
    .line 422
    const-string v13, "\n"

    .line 423
    .line 424
    const/16 v16, 0x0

    .line 425
    .line 426
    const/16 v17, 0x3e

    .line 427
    .line 428
    const/4 v14, 0x0

    .line 429
    const/4 v15, 0x0

    .line 430
    invoke-static/range {v12 .. v17}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    invoke-virtual {v4, v0}, LS/F;->b(Ljava/lang/String;)[B

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    invoke-static {v5, v0}, Lcom/bumptech/glide/d;->d0(Ljava/io/File;[B)Z

    .line 439
    .line 440
    .line 441
    const-string v0, "Patched PluginLoader.tjs for JSON"

    .line 442
    .line 443
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 444
    .line 445
    .line 446
    goto :goto_6

    .line 447
    :catch_1
    const-string v0, "Could not patch PluginLoader.tjs for JSON"

    .line 448
    .line 449
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    .line 451
    .line 452
    :cond_d
    :goto_6
    return-void

    .line 453
    :catchall_0
    move-exception v0

    .line 454
    move-object v1, v0

    .line 455
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 456
    :catchall_1
    move-exception v0

    .line 457
    :try_start_7
    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 458
    .line 459
    .line 460
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 461
    :catch_2
    const-string v0, "Could not install JSON polyfill"

    .line 462
    .line 463
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    .line 465
    .line 466
    return-void
.end method

.method public final w(Ljava/io/File;)V
    .locals 25

    .line 1
    const-string v1, "source"

    .line 2
    .line 3
    const-string v2, "MinHub:yesno-native-v2"

    .line 4
    .line 5
    const-string v3, "// [MinHub:yesno-native"

    .line 6
    .line 7
    const v0, 0x7f1200b5

    .line 8
    .line 9
    .line 10
    move-object/from16 v4, p0

    .line 11
    .line 12
    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v5, "getString(...)"

    .line 17
    .line 18
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v5, "\\"

    .line 22
    .line 23
    const-string v6, "\\\\"

    .line 24
    .line 25
    invoke-static {v0, v5, v6}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v5, "\""

    .line 30
    .line 31
    const-string v6, "\\\""

    .line 32
    .line 33
    invoke-static {v0, v5, v6}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v5, "\") {\r\n\treturn !System.inform(message, caption, 2);\r\n}\r\nfunction dispOK(message, caption = \""

    .line 38
    .line 39
    const-string v6, "\") {\r\n\tSystem.inform(message, caption);\r\n}\r\n"

    .line 40
    .line 41
    const-string v7, "\r\n\r\n// [MinHub:yesno-native-v2] KAG sub-window dialogs never receive input on Android;\r\n// route askYesNo/dispOK to the engine\'s native message box instead.\r\nfunction askYesNo(message, caption = \""

    .line 42
    .line 43
    invoke-static {v7, v0, v5, v0, v6}, LE/b;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-static/range {p1 .. p1}, Lkotlin/io/FilesKt;->walkTopDown(Ljava/io/File;)Lkotlin/io/FileTreeWalk;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v6, Ly1/f1;

    .line 52
    .line 53
    const/4 v7, 0x6

    .line 54
    invoke-direct {v6, v7}, Ly1/f1;-><init>(I)V

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v6}, Lkotlin/sequences/SequencesKt;->q(Lkotlin/io/FileTreeWalk;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    new-instance v6, Ly1/f1;

    .line 62
    .line 63
    const/4 v7, 0x7

    .line 64
    invoke-direct {v6, v7}, Ly1/f1;-><init>(I)V

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v6}, Lkotlin/sequences/SequencesKt;->filterNot(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    const/4 v8, 0x0

    .line 76
    const/4 v9, 0x0

    .line 77
    const/4 v10, 0x0

    .line 78
    const/4 v11, 0x0

    .line 79
    const/4 v12, 0x0

    .line 80
    const/4 v13, 0x0

    .line 81
    const/4 v14, 0x0

    .line 82
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    const-string v15, "Guarded registerExEvent in "

    .line 87
    .line 88
    const-string v7, "Pointed autopaths at extracted files in "

    .line 89
    .line 90
    move/from16 v16, v0

    .line 91
    .line 92
    const-string v0, "Skipped desktop-only k2compat shims in "

    .line 93
    .line 94
    const-string v4, "Bypassed boot-options window in "

    .line 95
    .line 96
    move-object/from16 v17, v6

    .line 97
    .line 98
    const-string v6, "Neutralised createAppLock in "

    .line 99
    .line 100
    move/from16 v18, v14

    .line 101
    .line 102
    const-string v14, "Guarded Plugins.link in "

    .line 103
    .line 104
    move/from16 v19, v13

    .line 105
    .line 106
    const-string v13, "KiriKiriGame"

    .line 107
    .line 108
    if-eqz v16, :cond_e

    .line 109
    .line 110
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v16

    .line 114
    move/from16 v20, v12

    .line 115
    .line 116
    move-object/from16 v12, v16

    .line 117
    .line 118
    check-cast v12, Ljava/io/File;

    .line 119
    .line 120
    :try_start_0
    invoke-static {v12}, Ly1/L1;->d(Ljava/io/File;)Z

    .line 121
    .line 122
    .line 123
    move-result v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c

    .line 124
    if-eqz v16, :cond_0

    .line 125
    .line 126
    add-int/lit8 v8, v8, 0x1

    .line 127
    .line 128
    move/from16 v16, v8

    .line 129
    .line 130
    :try_start_1
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 134
    move/from16 v21, v11

    .line 135
    .line 136
    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 139
    .line 140
    .line 141
    move/from16 v22, v10

    .line 142
    .line 143
    :try_start_3
    const-string v10, "Decrypted obfuscated script: "

    .line 144
    .line 145
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    invoke-static {v13, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 156
    .line 157
    .line 158
    move/from16 v8, v16

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :catch_0
    move-exception v0

    .line 162
    move/from16 v8, v16

    .line 163
    .line 164
    :goto_1
    move/from16 v14, v18

    .line 165
    .line 166
    move/from16 v11, v21

    .line 167
    .line 168
    move/from16 v10, v22

    .line 169
    .line 170
    goto/16 :goto_15

    .line 171
    .line 172
    :catch_1
    move-exception v0

    .line 173
    move/from16 v22, v10

    .line 174
    .line 175
    move/from16 v8, v16

    .line 176
    .line 177
    move/from16 v14, v18

    .line 178
    .line 179
    move/from16 v11, v21

    .line 180
    .line 181
    goto/16 :goto_15

    .line 182
    .line 183
    :catch_2
    move-exception v0

    .line 184
    move/from16 v22, v10

    .line 185
    .line 186
    move/from16 v21, v11

    .line 187
    .line 188
    move/from16 v8, v16

    .line 189
    .line 190
    :goto_2
    move/from16 v14, v18

    .line 191
    .line 192
    goto/16 :goto_15

    .line 193
    .line 194
    :cond_0
    move/from16 v22, v10

    .line 195
    .line 196
    move/from16 v21, v11

    .line 197
    .line 198
    :goto_3
    :try_start_4
    invoke-static {v12}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    .line 199
    .line 200
    .line 201
    move-result-object v10

    .line 202
    invoke-static {v10}, La/a;->G([B)LS/F;

    .line 203
    .line 204
    .line 205
    move-result-object v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 206
    if-eqz v10, :cond_b

    .line 207
    .line 208
    :try_start_5
    iget-object v11, v10, LS/F;->b:Ljava/lang/Object;

    .line 209
    .line 210
    check-cast v11, Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a

    .line 211
    .line 212
    :try_start_6
    invoke-static {v11}, Lz1/h;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v23

    .line 216
    if-eqz v23, :cond_1

    .line 217
    .line 218
    add-int/lit8 v9, v9, 0x1

    .line 219
    .line 220
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v11
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 224
    move/from16 v24, v8

    .line 225
    .line 226
    :try_start_7
    new-instance v8, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v8

    .line 241
    invoke-static {v13, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    move-object/from16 v11, v23

    .line 245
    .line 246
    const/4 v8, 0x1

    .line 247
    goto :goto_8

    .line 248
    :catch_3
    move-exception v0

    .line 249
    :goto_4
    move/from16 v14, v18

    .line 250
    .line 251
    :goto_5
    move/from16 v11, v21

    .line 252
    .line 253
    :goto_6
    move/from16 v10, v22

    .line 254
    .line 255
    :goto_7
    move/from16 v8, v24

    .line 256
    .line 257
    goto/16 :goto_15

    .line 258
    .line 259
    :catch_4
    move-exception v0

    .line 260
    move/from16 v24, v8

    .line 261
    .line 262
    goto :goto_1

    .line 263
    :cond_1
    move/from16 v24, v8

    .line 264
    .line 265
    const/4 v8, 0x0

    .line 266
    :goto_8
    invoke-static {v11}, La/a;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v14
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 270
    if-eqz v14, :cond_2

    .line 271
    .line 272
    add-int/lit8 v8, v22, 0x1

    .line 273
    .line 274
    :try_start_8
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v11
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 278
    move/from16 v22, v8

    .line 279
    .line 280
    :try_start_9
    new-instance v8, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v6

    .line 295
    invoke-static {v13, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .line 297
    .line 298
    move-object v11, v14

    .line 299
    const/4 v8, 0x1

    .line 300
    goto :goto_9

    .line 301
    :catch_5
    move-exception v0

    .line 302
    move/from16 v22, v8

    .line 303
    .line 304
    goto :goto_4

    .line 305
    :cond_2
    :goto_9
    sget-object v6, Lz1/a;->a:Lkotlin/text/Regex;

    .line 306
    .line 307
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    sget-object v6, Lz1/a;->a:Lkotlin/text/Regex;

    .line 311
    .line 312
    invoke-virtual {v6, v11}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    .line 313
    .line 314
    .line 315
    move-result v14

    .line 316
    const/16 v23, 0x0

    .line 317
    .line 318
    if-nez v14, :cond_3

    .line 319
    .line 320
    move-object/from16 v6, v23

    .line 321
    .line 322
    goto :goto_a

    .line 323
    :cond_3
    const-string v14, "if(false)"

    .line 324
    .line 325
    invoke-virtual {v6, v11, v14}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 329
    :goto_a
    if-eqz v6, :cond_4

    .line 330
    .line 331
    add-int/lit8 v11, v21, 0x1

    .line 332
    .line 333
    :try_start_a
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v8

    .line 337
    new-instance v14, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v4

    .line 352
    invoke-static {v13, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 353
    .line 354
    .line 355
    move/from16 v21, v11

    .line 356
    .line 357
    const/4 v8, 0x1

    .line 358
    move-object v11, v6

    .line 359
    goto :goto_b

    .line 360
    :catch_6
    move-exception v0

    .line 361
    move/from16 v14, v18

    .line 362
    .line 363
    goto :goto_6

    .line 364
    :cond_4
    :goto_b
    :try_start_b
    sget-object v4, Lz1/b;->a:Lkotlin/text/Regex;

    .line 365
    .line 366
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    sget-object v4, Lz1/b;->a:Lkotlin/text/Regex;

    .line 370
    .line 371
    invoke-virtual {v4, v11}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    .line 372
    .line 373
    .line 374
    move-result v6

    .line 375
    if-nez v6, :cond_5

    .line 376
    .line 377
    move-object/from16 v4, v23

    .line 378
    .line 379
    goto :goto_c

    .line 380
    :cond_5
    const-string v6, ""

    .line 381
    .line 382
    invoke-virtual {v4, v11, v6}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v4
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 386
    :goto_c
    if-eqz v4, :cond_6

    .line 387
    .line 388
    add-int/lit8 v6, v20, 0x1

    .line 389
    .line 390
    :try_start_c
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v8

    .line 394
    new-instance v11, Ljava/lang/StringBuilder;

    .line 395
    .line 396
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 410
    .line 411
    .line 412
    move-object v11, v4

    .line 413
    move/from16 v20, v6

    .line 414
    .line 415
    const/4 v8, 0x1

    .line 416
    goto :goto_d

    .line 417
    :catch_7
    move-exception v0

    .line 418
    move/from16 v20, v6

    .line 419
    .line 420
    goto/16 :goto_4

    .line 421
    .line 422
    :cond_6
    :goto_d
    :try_start_d
    sget-object v0, Lz1/c;->a:Lkotlin/text/Regex;

    .line 423
    .line 424
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    sget-object v0, Lz1/c;->a:Lkotlin/text/Regex;

    .line 428
    .line 429
    invoke-virtual {v0, v11}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    .line 430
    .line 431
    .line 432
    move-result v4

    .line 433
    if-nez v4, :cond_7

    .line 434
    .line 435
    goto :goto_e

    .line 436
    :cond_7
    new-instance v4, Ly1/f1;

    .line 437
    .line 438
    const/16 v6, 0xb

    .line 439
    .line 440
    invoke-direct {v4, v6}, Ly1/f1;-><init>(I)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v0, v11, v4}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v23
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    .line 447
    :goto_e
    if-eqz v23, :cond_8

    .line 448
    .line 449
    add-int/lit8 v4, v19, 0x1

    .line 450
    .line 451
    :try_start_e
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    new-instance v6, Ljava/lang/StringBuilder;

    .line 456
    .line 457
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    .line 471
    .line 472
    .line 473
    move/from16 v19, v4

    .line 474
    .line 475
    move-object/from16 v11, v23

    .line 476
    .line 477
    const/4 v8, 0x1

    .line 478
    goto :goto_f

    .line 479
    :catch_8
    move-exception v0

    .line 480
    move/from16 v19, v4

    .line 481
    .line 482
    goto/16 :goto_4

    .line 483
    .line 484
    :cond_8
    :goto_f
    :try_start_f
    invoke-static {v11}, Lz1/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    .line 488
    if-eqz v0, :cond_9

    .line 489
    .line 490
    add-int/lit8 v14, v18, 0x1

    .line 491
    .line 492
    :try_start_10
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v4

    .line 496
    new-instance v6, Ljava/lang/StringBuilder;

    .line 497
    .line 498
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v4

    .line 511
    invoke-static {v13, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    .line 513
    .line 514
    move-object v11, v0

    .line 515
    const/4 v8, 0x1

    .line 516
    goto :goto_10

    .line 517
    :catch_9
    move-exception v0

    .line 518
    goto/16 :goto_5

    .line 519
    .line 520
    :cond_9
    move/from16 v14, v18

    .line 521
    .line 522
    :goto_10
    if-eqz v8, :cond_a

    .line 523
    .line 524
    invoke-virtual {v10, v11}, LS/F;->b(Ljava/lang/String;)[B

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    invoke-static {v12, v0}, Lcom/bumptech/glide/d;->d0(Ljava/io/File;[B)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9

    .line 529
    .line 530
    .line 531
    :cond_a
    :goto_11
    move/from16 v11, v21

    .line 532
    .line 533
    move/from16 v10, v22

    .line 534
    .line 535
    goto :goto_12

    .line 536
    :catch_a
    move-exception v0

    .line 537
    move/from16 v24, v8

    .line 538
    .line 539
    goto/16 :goto_4

    .line 540
    .line 541
    :cond_b
    move/from16 v24, v8

    .line 542
    .line 543
    move/from16 v14, v18

    .line 544
    .line 545
    goto :goto_11

    .line 546
    :goto_12
    :try_start_11
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    const-string v4, "YesNoDialog.tjs"

    .line 551
    .line 552
    const/4 v6, 0x1

    .line 553
    invoke-static {v0, v4, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 554
    .line 555
    .line 556
    move-result v0

    .line 557
    if-eqz v0, :cond_d

    .line 558
    .line 559
    invoke-static {v12}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    invoke-static {v0}, La/a;->G([B)LS/F;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    if-nez v0, :cond_c

    .line 568
    .line 569
    goto :goto_13

    .line 570
    :cond_c
    iget-object v4, v0, LS/F;->b:Ljava/lang/Object;

    .line 571
    .line 572
    check-cast v4, Ljava/lang/String;

    .line 573
    .line 574
    invoke-static {v4, v2}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 575
    .line 576
    .line 577
    move-result v6

    .line 578
    if-nez v6, :cond_d

    .line 579
    .line 580
    const-string v6, "askYesNo"

    .line 581
    .line 582
    invoke-static {v4, v6}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 583
    .line 584
    .line 585
    move-result v6

    .line 586
    if-eqz v6, :cond_d

    .line 587
    .line 588
    invoke-static {v4, v3}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v4

    .line 592
    invoke-static {v4}, Lkotlin/text/StringsKt;->a0(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 593
    .line 594
    .line 595
    move-result-object v4

    .line 596
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v4

    .line 600
    new-instance v6, Ljava/lang/StringBuilder;

    .line 601
    .line 602
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 603
    .line 604
    .line 605
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v4

    .line 615
    invoke-virtual {v0, v4}, LS/F;->b(Ljava/lang/String;)[B

    .line 616
    .line 617
    .line 618
    move-result-object v0

    .line 619
    invoke-static {v12, v0}, Lcom/bumptech/glide/d;->d0(Ljava/io/File;[B)Z

    .line 620
    .line 621
    .line 622
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    new-instance v4, Ljava/lang/StringBuilder;

    .line 627
    .line 628
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 629
    .line 630
    .line 631
    const-string v6, "Patched YesNoDialog.tjs: native yes/no override ("

    .line 632
    .line 633
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    .line 638
    .line 639
    const-string v0, ")"

    .line 640
    .line 641
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    .line 643
    .line 644
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v0

    .line 648
    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    .line 649
    .line 650
    .line 651
    goto :goto_13

    .line 652
    :catch_b
    move-exception v0

    .line 653
    goto/16 :goto_7

    .line 654
    .line 655
    :cond_d
    :goto_13
    move/from16 v8, v24

    .line 656
    .line 657
    :goto_14
    move/from16 v13, v19

    .line 658
    .line 659
    move/from16 v12, v20

    .line 660
    .line 661
    goto :goto_16

    .line 662
    :catch_c
    move-exception v0

    .line 663
    move/from16 v22, v10

    .line 664
    .line 665
    move/from16 v21, v11

    .line 666
    .line 667
    goto/16 :goto_2

    .line 668
    .line 669
    :goto_15
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v4

    .line 673
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    new-instance v6, Ljava/lang/StringBuilder;

    .line 678
    .line 679
    const-string v7, "Could not patch "

    .line 680
    .line 681
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 682
    .line 683
    .line 684
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    .line 686
    .line 687
    const-string v4, ": "

    .line 688
    .line 689
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    .line 691
    .line 692
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    .line 694
    .line 695
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v0

    .line 699
    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    .line 701
    .line 702
    goto :goto_14

    .line 703
    :goto_16
    move-object/from16 v4, p0

    .line 704
    .line 705
    move-object/from16 v6, v17

    .line 706
    .line 707
    goto/16 :goto_0

    .line 708
    .line 709
    :cond_e
    move/from16 v22, v10

    .line 710
    .line 711
    move/from16 v21, v11

    .line 712
    .line 713
    move/from16 v20, v12

    .line 714
    .line 715
    if-lez v8, :cond_f

    .line 716
    .line 717
    new-instance v1, Ljava/lang/StringBuilder;

    .line 718
    .line 719
    const-string v2, "Decrypted "

    .line 720
    .line 721
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 722
    .line 723
    .line 724
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 725
    .line 726
    .line 727
    const-string v2, " obfuscated .tjs script(s)"

    .line 728
    .line 729
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    .line 731
    .line 732
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v1

    .line 736
    invoke-static {v13, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    .line 738
    .line 739
    :cond_f
    const-string v1, " script(s)"

    .line 740
    .line 741
    if-lez v9, :cond_10

    .line 742
    .line 743
    new-instance v2, Ljava/lang/StringBuilder;

    .line 744
    .line 745
    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 746
    .line 747
    .line 748
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 749
    .line 750
    .line 751
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    .line 753
    .line 754
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 755
    .line 756
    .line 757
    move-result-object v2

    .line 758
    invoke-static {v13, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    .line 760
    .line 761
    :cond_10
    if-lez v22, :cond_11

    .line 762
    .line 763
    new-instance v2, Ljava/lang/StringBuilder;

    .line 764
    .line 765
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 766
    .line 767
    .line 768
    move/from16 v10, v22

    .line 769
    .line 770
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 771
    .line 772
    .line 773
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    .line 775
    .line 776
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v2

    .line 780
    invoke-static {v13, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    .line 782
    .line 783
    :cond_11
    if-lez v21, :cond_12

    .line 784
    .line 785
    new-instance v2, Ljava/lang/StringBuilder;

    .line 786
    .line 787
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 788
    .line 789
    .line 790
    move/from16 v11, v21

    .line 791
    .line 792
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 793
    .line 794
    .line 795
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    .line 797
    .line 798
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 799
    .line 800
    .line 801
    move-result-object v2

    .line 802
    invoke-static {v13, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    .line 804
    .line 805
    :cond_12
    if-lez v20, :cond_13

    .line 806
    .line 807
    new-instance v2, Ljava/lang/StringBuilder;

    .line 808
    .line 809
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 810
    .line 811
    .line 812
    move/from16 v12, v20

    .line 813
    .line 814
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 815
    .line 816
    .line 817
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    .line 819
    .line 820
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 821
    .line 822
    .line 823
    move-result-object v0

    .line 824
    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    .line 826
    .line 827
    :cond_13
    if-lez v19, :cond_14

    .line 828
    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    .line 830
    .line 831
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 832
    .line 833
    .line 834
    move/from16 v7, v19

    .line 835
    .line 836
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 837
    .line 838
    .line 839
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    .line 841
    .line 842
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 843
    .line 844
    .line 845
    move-result-object v0

    .line 846
    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    .line 848
    .line 849
    :cond_14
    if-lez v18, :cond_15

    .line 850
    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    .line 852
    .line 853
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 854
    .line 855
    .line 856
    move/from16 v14, v18

    .line 857
    .line 858
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 859
    .line 860
    .line 861
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    .line 863
    .line 864
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 865
    .line 866
    .line 867
    move-result-object v0

    .line 868
    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    .line 870
    .line 871
    :cond_15
    return-void
.end method
