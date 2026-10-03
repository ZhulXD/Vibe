.class public final Lc1/j;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final a:Lcom/google/android/material/tabs/TabLayout;

.field public final b:Landroidx/viewpager2/widget/ViewPager2;

.field public final c:LB1/b;

.field public d:LP/W;

.field public e:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;LB1/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc1/j;->a:Lcom/google/android/material/tabs/TabLayout;

    .line 5
    .line 6
    iput-object p2, p0, Lc1/j;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 7
    .line 8
    iput-object p3, p0, Lc1/j;->c:LB1/b;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    .line 1
    iget-object v0, p0, Lc1/j;->a:Lcom/google/android/material/tabs/TabLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->i()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lc1/j;->d:LP/W;

    .line 7
    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    invoke-virtual {v1}, LP/W;->a()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :goto_0
    if-ge v3, v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->h()Lc1/f;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    iget-object v5, p0, Lc1/j;->c:LB1/b;

    .line 23
    .line 24
    iget-object v5, v5, LB1/b;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v5, LE1/x;

    .line 27
    .line 28
    sget v6, Lcom/minhub/gamehub/hub/SettingsActivity;->f:I

    .line 29
    .line 30
    const-string v6, "tab"

    .line 31
    .line 32
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v5, v5, LE1/x;->m:Lcom/minhub/gamehub/hub/SettingsActivity;

    .line 36
    .line 37
    const v6, 0x7f1203bc

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    const v7, 0x7f1203bd

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    const v8, 0x7f1203be

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    const v9, 0x7f1203bb

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    const v10, 0x7f1203bf

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    filled-new-array {v6, v7, v8, v9, v5}, [Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    const-string v6, "get(...)"

    .line 85
    .line 86
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    check-cast v5, Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v4, v5}, Lc1/f;->b(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v4, v2}, Lcom/google/android/material/tabs/TabLayout;->c(Lc1/f;Z)V

    .line 95
    .line 96
    .line 97
    add-int/lit8 v3, v3, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    if-lez v1, :cond_3

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    const/4 v2, 0x1

    .line 107
    sub-int/2addr v1, v2

    .line 108
    iget-object v3, p0, Lc1/j;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 109
    .line 110
    invoke-virtual {v3}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-eq v1, v3, :cond_3

    .line 123
    .line 124
    if-ltz v1, :cond_2

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-lt v1, v3, :cond_1

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_1
    iget-object v3, v0, Lcom/google/android/material/tabs/TabLayout;->c:Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    check-cast v1, Lc1/f;

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 143
    :goto_2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/tabs/TabLayout;->j(Lc1/f;Z)V

    .line 144
    .line 145
    .line 146
    :cond_3
    return-void
.end method
