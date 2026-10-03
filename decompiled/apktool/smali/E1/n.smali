.class public final LE1/n;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "LE1/n;",
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
        "SMAP\nGeneralSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeneralSettingsFragment.kt\ncom/minhub/gamehub/hub/settings/GeneralSettingsFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,384:1\n360#2,7:385\n1878#2,3:392\n1563#2:395\n1634#2,3:396\n1869#2,2:400\n1869#2,2:402\n1563#2:404\n1634#2,3:405\n1#3:399\n*S KotlinDebug\n*F\n+ 1 GeneralSettingsFragment.kt\ncom/minhub/gamehub/hub/settings/GeneralSettingsFragment\n*L\n96#1:385,7\n97#1:392,3\n173#1:395\n173#1:396,3\n225#1:400,2\n266#1:402,2\n154#1:404\n154#1:405,3\n*E\n"
    }
.end annotation


# instance fields
.field public b:Lw1/i;

.field public c:Ljava/lang/String;

.field public final d:Landroidx/activity/result/ActivityResultLauncher;

.field public final e:Landroidx/activity/result/ActivityResultLauncher;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, LE1/h;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, p0, v2}, LE1/h;-><init>(LE1/n;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "registerForActivityResult(...)"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, LE1/n;->d:Landroidx/activity/result/ActivityResultLauncher;

    .line 25
    .line 26
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 27
    .line 28
    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v2, LE1/h;

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    invoke-direct {v2, p0, v3}, LE1/h;-><init>(LE1/n;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, LE1/n;->e:Landroidx/activity/result/ActivityResultLauncher;

    .line 45
    .line 46
    return-void
.end method

.method public static final c(LE1/n;Landroid/widget/Spinner;Ljava/util/List;Ljava/util/List;Ljava/lang/Enum;Lkotlin/jvm/functions/Function1;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/lang/Number;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-instance p0, Landroid/widget/ArrayAdapter;

    .line 43
    .line 44
    const p3, 0x7f0c0066

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, v0, p3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 48
    .line 49
    .line 50
    const p3, 0x7f0c0067

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {p2, p4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 64
    .line 65
    .line 66
    new-instance p0, LC1/S0;

    .line 67
    .line 68
    const/4 p3, 0x1

    .line 69
    invoke-direct {p0, p5, p2, p3}, LC1/S0;-><init>(Ljava/lang/Object;Ljava/util/List;I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;)V
    .locals 9

    .line 1
    sget-object v0, LS1/d;->a:Ljava/util/Set;

    .line 2
    .line 3
    const-string v0, "<this>"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, LS1/d;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "app_lock_enabled"

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, LS1/d;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-lez v1, :cond_0

    .line 31
    .line 32
    move v1, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v1, v3

    .line 35
    :goto_0
    iget-object v4, p0, LE1/n;->b:Lw1/i;

    .line 36
    .line 37
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object v4, v4, Lw1/i;->h:Landroid/widget/Switch;

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 44
    .line 45
    .line 46
    iget-object v4, p0, LE1/n;->b:Lw1/i;

    .line 47
    .line 48
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object v4, v4, Lw1/i;->h:Landroid/widget/Switch;

    .line 52
    .line 53
    invoke-virtual {v4, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 54
    .line 55
    .line 56
    iget-object v4, p0, LE1/n;->b:Lw1/i;

    .line 57
    .line 58
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object v4, v4, Lw1/i;->h:Landroid/widget/Switch;

    .line 62
    .line 63
    new-instance v6, LE1/i;

    .line 64
    .line 65
    invoke-direct {v6, p1, p0, v3}, LE1/i;-><init>(Landroid/content/Context;LE1/n;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v6}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 69
    .line 70
    .line 71
    new-instance v4, LF/b;

    .line 72
    .line 73
    new-instance v6, LA1/h;

    .line 74
    .line 75
    invoke-direct {v6, p1, v2}, LA1/h;-><init>(Landroid/content/Context;I)V

    .line 76
    .line 77
    .line 78
    invoke-direct {v4, v6}, LF/b;-><init>(LA1/h;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, LF/b;->c()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-nez v4, :cond_1

    .line 86
    .line 87
    move v4, v2

    .line 88
    goto :goto_1

    .line 89
    :cond_1
    move v4, v3

    .line 90
    :goto_1
    iget-object v6, p0, LE1/n;->b:Lw1/i;

    .line 91
    .line 92
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    iget-object v6, v6, Lw1/i;->i:Landroid/widget/Switch;

    .line 96
    .line 97
    const/16 v7, 0x8

    .line 98
    .line 99
    if-eqz v1, :cond_2

    .line 100
    .line 101
    if-eqz v4, :cond_2

    .line 102
    .line 103
    move v8, v3

    .line 104
    goto :goto_2

    .line 105
    :cond_2
    move v8, v7

    .line 106
    :goto_2
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    iget-object v6, p0, LE1/n;->b:Lw1/i;

    .line 110
    .line 111
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    iget-object v6, v6, Lw1/i;->i:Landroid/widget/Switch;

    .line 115
    .line 116
    invoke-virtual {v6, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 117
    .line 118
    .line 119
    iget-object v5, p0, LE1/n;->b:Lw1/i;

    .line 120
    .line 121
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    iget-object v5, v5, Lw1/i;->i:Landroid/widget/Switch;

    .line 125
    .line 126
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-static {p1}, LS1/d;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    const-string v6, "app_lock_biometric"

    .line 134
    .line 135
    invoke-interface {v0, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_3

    .line 140
    .line 141
    if-eqz v4, :cond_3

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_3
    move v2, v3

    .line 145
    :goto_3
    invoke-virtual {v5, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, LE1/n;->b:Lw1/i;

    .line 149
    .line 150
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    iget-object v0, v0, Lw1/i;->i:Landroid/widget/Switch;

    .line 154
    .line 155
    new-instance v2, LE1/c;

    .line 156
    .line 157
    const/4 v4, 0x3

    .line 158
    invoke-direct {v2, p1, v4}, LE1/c;-><init>(Landroid/content/Context;I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 162
    .line 163
    .line 164
    iget-object p1, p0, LE1/n;->b:Lw1/i;

    .line 165
    .line 166
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    iget-object p1, p1, Lw1/i;->c:Landroid/widget/LinearLayout;

    .line 170
    .line 171
    if-eqz v1, :cond_4

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_4
    move v3, v7

    .line 175
    :goto_4
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 176
    .line 177
    .line 178
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 22

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
    const v1, 0x7f0c0050

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
    const v1, 0x7f0900fa

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
    check-cast v5, Lcom/google/android/material/chip/ChipGroup;

    .line 27
    .line 28
    if-eqz v5, :cond_0

    .line 29
    .line 30
    const v1, 0x7f0901e5

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
    const v1, 0x7f09027b

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
    const v1, 0x7f0902bc

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
    check-cast v8, Landroid/widget/Spinner;

    .line 63
    .line 64
    if-eqz v8, :cond_0

    .line 65
    .line 66
    const v1, 0x7f0902bd

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
    check-cast v9, Landroid/widget/Spinner;

    .line 75
    .line 76
    if-eqz v9, :cond_0

    .line 77
    .line 78
    const v1, 0x7f0902be

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
    check-cast v10, Landroid/widget/Spinner;

    .line 87
    .line 88
    if-eqz v10, :cond_0

    .line 89
    .line 90
    const v1, 0x7f0902bf

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
    check-cast v11, Landroid/widget/Spinner;

    .line 99
    .line 100
    if-eqz v11, :cond_0

    .line 101
    .line 102
    const v1, 0x7f0902d9

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
    check-cast v12, Landroid/widget/Switch;

    .line 111
    .line 112
    if-eqz v12, :cond_0

    .line 113
    .line 114
    const v1, 0x7f0902da

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
    check-cast v13, Landroid/widget/Switch;

    .line 123
    .line 124
    if-eqz v13, :cond_0

    .line 125
    .line 126
    const v1, 0x7f0902db

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
    check-cast v14, Landroid/widget/Switch;

    .line 135
    .line 136
    if-eqz v14, :cond_0

    .line 137
    .line 138
    const v1, 0x7f0902dc

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
    check-cast v15, Landroid/widget/Switch;

    .line 147
    .line 148
    if-eqz v15, :cond_0

    .line 149
    .line 150
    const v1, 0x7f0902dd

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    move-object/from16 v16, v2

    .line 158
    .line 159
    check-cast v16, Landroid/widget/Switch;

    .line 160
    .line 161
    if-eqz v16, :cond_0

    .line 162
    .line 163
    const v1, 0x7f0902e1

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    move-object/from16 v17, v2

    .line 171
    .line 172
    check-cast v17, Landroid/widget/Switch;

    .line 173
    .line 174
    if-eqz v17, :cond_0

    .line 175
    .line 176
    const v1, 0x7f0902e5

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    move-object/from16 v18, v2

    .line 184
    .line 185
    check-cast v18, Landroid/widget/Switch;

    .line 186
    .line 187
    if-eqz v18, :cond_0

    .line 188
    .line 189
    const v1, 0x7f0902ea

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    move-object/from16 v19, v2

    .line 197
    .line 198
    check-cast v19, Lcom/google/android/material/tabs/TabLayout;

    .line 199
    .line 200
    if-eqz v19, :cond_0

    .line 201
    .line 202
    const v1, 0x7f09033c

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    move-object/from16 v20, v2

    .line 210
    .line 211
    check-cast v20, Landroid/widget/TextView;

    .line 212
    .line 213
    if-eqz v20, :cond_0

    .line 214
    .line 215
    const v1, 0x7f09033d

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    move-object/from16 v21, v2

    .line 223
    .line 224
    check-cast v21, Landroid/widget/TextView;

    .line 225
    .line 226
    if-eqz v21, :cond_0

    .line 227
    .line 228
    new-instance v3, Lw1/i;

    .line 229
    .line 230
    move-object v4, v0

    .line 231
    check-cast v4, Landroid/widget/ScrollView;

    .line 232
    .line 233
    invoke-direct/range {v3 .. v21}, Lw1/i;-><init>(Landroid/widget/ScrollView;Lcom/google/android/material/chip/ChipGroup;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Switch;Landroid/widget/Switch;Landroid/widget/Switch;Landroid/widget/Switch;Landroid/widget/Switch;Landroid/widget/Switch;Landroid/widget/Switch;Lcom/google/android/material/tabs/TabLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 234
    .line 235
    .line 236
    move-object/from16 v2, p0

    .line 237
    .line 238
    iput-object v3, v2, LE1/n;->b:Lw1/i;

    .line 239
    .line 240
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    const-string v0, "getRoot(...)"

    .line 244
    .line 245
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    return-object v4

    .line 249
    :cond_0
    move-object/from16 v2, p0

    .line 250
    .line 251
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    new-instance v1, Ljava/lang/NullPointerException;

    .line 260
    .line 261
    const-string v3, "Missing required view with ID: "

    .line 262
    .line 263
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
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
    iput-object v0, p0, LE1/n;->b:Lw1/i;

    .line 6
    .line 7
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "v"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v6

    .line 14
    const-string v1, "requireContext(...)"

    .line 15
    .line 16
    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, LE1/n;->b:Lw1/i;

    .line 20
    .line 21
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v1, Lw1/i;->l:Landroid/widget/Switch;

    .line 25
    .line 26
    sget-object v2, LS1/d;->a:Ljava/util/Set;

    .line 27
    .line 28
    const-string v2, "<this>"

    .line 29
    .line 30
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v6}, LS1/d;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const-string v4, "fullscreen"

    .line 38
    .line 39
    const/4 v7, 0x1

    .line 40
    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, LE1/n;->b:Lw1/i;

    .line 48
    .line 49
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, v1, Lw1/i;->n:Landroid/widget/Switch;

    .line 53
    .line 54
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v3, "minhub_prefs"

    .line 58
    .line 59
    const/4 v8, 0x0

    .line 60
    invoke-virtual {v6, v3, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    const-string v5, "vibration"

    .line 65
    .line 66
    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 71
    .line 72
    .line 73
    iget-object v1, v0, LE1/n;->b:Lw1/i;

    .line 74
    .line 75
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iget-object v1, v1, Lw1/i;->j:Landroid/widget/Switch;

    .line 79
    .line 80
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6, v3, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    const-string v5, "auto_save"

    .line 88
    .line 89
    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 94
    .line 95
    .line 96
    iget-object v1, v0, LE1/n;->b:Lw1/i;

    .line 97
    .line 98
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    iget-object v1, v1, Lw1/i;->m:Landroid/widget/Switch;

    .line 102
    .line 103
    const-string v4, "context"

    .line 104
    .line 105
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v6, v3, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    const-string v9, "renpy_memory_saver"

    .line 113
    .line 114
    invoke-interface {v5, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    invoke-virtual {v1, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 119
    .line 120
    .line 121
    iget-object v1, v0, LE1/n;->b:Lw1/i;

    .line 122
    .line 123
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    iget-object v1, v1, Lw1/i;->k:Landroid/widget/Switch;

    .line 127
    .line 128
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v6, v3, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    const-string v5, "frame_skip"

    .line 136
    .line 137
    invoke-interface {v2, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 142
    .line 143
    .line 144
    iget-object v1, v0, LE1/n;->b:Lw1/i;

    .line 145
    .line 146
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    iget-object v1, v1, Lw1/i;->l:Landroid/widget/Switch;

    .line 150
    .line 151
    new-instance v2, LE1/c;

    .line 152
    .line 153
    const/4 v5, 0x4

    .line 154
    invoke-direct {v2, v6, v5}, LE1/c;-><init>(Landroid/content/Context;I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 158
    .line 159
    .line 160
    iget-object v1, v0, LE1/n;->b:Lw1/i;

    .line 161
    .line 162
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    iget-object v1, v1, Lw1/i;->n:Landroid/widget/Switch;

    .line 166
    .line 167
    new-instance v2, LE1/c;

    .line 168
    .line 169
    const/4 v5, 0x5

    .line 170
    invoke-direct {v2, v6, v5}, LE1/c;-><init>(Landroid/content/Context;I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 174
    .line 175
    .line 176
    iget-object v1, v0, LE1/n;->b:Lw1/i;

    .line 177
    .line 178
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    iget-object v1, v1, Lw1/i;->j:Landroid/widget/Switch;

    .line 182
    .line 183
    new-instance v2, LE1/c;

    .line 184
    .line 185
    const/4 v5, 0x6

    .line 186
    invoke-direct {v2, v6, v5}, LE1/c;-><init>(Landroid/content/Context;I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 190
    .line 191
    .line 192
    iget-object v1, v0, LE1/n;->b:Lw1/i;

    .line 193
    .line 194
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    iget-object v1, v1, Lw1/i;->m:Landroid/widget/Switch;

    .line 198
    .line 199
    new-instance v2, LE1/c;

    .line 200
    .line 201
    const/4 v5, 0x7

    .line 202
    invoke-direct {v2, v6, v5}, LE1/c;-><init>(Landroid/content/Context;I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 206
    .line 207
    .line 208
    iget-object v1, v0, LE1/n;->b:Lw1/i;

    .line 209
    .line 210
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    iget-object v1, v1, Lw1/i;->k:Landroid/widget/Switch;

    .line 214
    .line 215
    new-instance v2, LE1/c;

    .line 216
    .line 217
    const/16 v9, 0x8

    .line 218
    .line 219
    invoke-direct {v2, v6, v9}, LE1/c;-><init>(Landroid/content/Context;I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 223
    .line 224
    .line 225
    sget-object v1, LS1/f;->a:Ljava/util/List;

    .line 226
    .line 227
    iget-object v2, v0, LE1/n;->b:Lw1/i;

    .line 228
    .line 229
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    iget-object v2, v2, Lw1/i;->o:Lcom/google/android/material/tabs/TabLayout;

    .line 233
    .line 234
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->i()V

    .line 235
    .line 236
    .line 237
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    move v9, v8

    .line 242
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 243
    .line 244
    .line 245
    move-result v10

    .line 246
    const/4 v11, -0x1

    .line 247
    if-eqz v10, :cond_1

    .line 248
    .line 249
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v10

    .line 253
    check-cast v10, LS1/e;

    .line 254
    .line 255
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    const-string v10, "webgl2"

    .line 259
    .line 260
    invoke-static {v6}, LS1/d;->f(Landroid/content/Context;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v12

    .line 264
    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v10

    .line 268
    if-eqz v10, :cond_0

    .line 269
    .line 270
    goto :goto_1

    .line 271
    :cond_0
    add-int/lit8 v9, v9, 0x1

    .line 272
    .line 273
    goto :goto_0

    .line 274
    :cond_1
    move v9, v11

    .line 275
    :goto_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    move v10, v8

    .line 280
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 281
    .line 282
    .line 283
    move-result v12

    .line 284
    if-eqz v12, :cond_4

    .line 285
    .line 286
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v12

    .line 290
    add-int/lit8 v13, v10, 0x1

    .line 291
    .line 292
    if-gez v10, :cond_2

    .line 293
    .line 294
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 295
    .line 296
    .line 297
    :cond_2
    check-cast v12, LS1/e;

    .line 298
    .line 299
    iget-object v14, v0, LE1/n;->b:Lw1/i;

    .line 300
    .line 301
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    iget-object v14, v14, Lw1/i;->o:Lcom/google/android/material/tabs/TabLayout;

    .line 305
    .line 306
    iget-object v15, v0, LE1/n;->b:Lw1/i;

    .line 307
    .line 308
    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    iget-object v15, v15, Lw1/i;->o:Lcom/google/android/material/tabs/TabLayout;

    .line 312
    .line 313
    invoke-virtual {v15}, Lcom/google/android/material/tabs/TabLayout;->h()Lc1/f;

    .line 314
    .line 315
    .line 316
    move-result-object v15

    .line 317
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    .line 319
    .line 320
    const-string v12, "WebGL 2"

    .line 321
    .line 322
    invoke-virtual {v15, v12}, Lc1/f;->b(Ljava/lang/CharSequence;)V

    .line 323
    .line 324
    .line 325
    if-ne v10, v9, :cond_3

    .line 326
    .line 327
    move v10, v7

    .line 328
    goto :goto_3

    .line 329
    :cond_3
    move v10, v8

    .line 330
    :goto_3
    invoke-virtual {v14, v15, v10}, Lcom/google/android/material/tabs/TabLayout;->c(Lc1/f;Z)V

    .line 331
    .line 332
    .line 333
    move v10, v13

    .line 334
    goto :goto_2

    .line 335
    :cond_4
    iget-object v2, v0, LE1/n;->b:Lw1/i;

    .line 336
    .line 337
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    iget-object v2, v2, Lw1/i;->o:Lcom/google/android/material/tabs/TabLayout;

    .line 341
    .line 342
    new-instance v9, LE1/l;

    .line 343
    .line 344
    invoke-direct {v9, v6, v1}, LE1/l;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v2, v9}, Lcom/google/android/material/tabs/TabLayout;->a(Lc1/b;)V

    .line 348
    .line 349
    .line 350
    iget-object v1, v0, LE1/n;->b:Lw1/i;

    .line 351
    .line 352
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    iget-object v1, v1, Lw1/i;->b:Landroid/widget/LinearLayout;

    .line 356
    .line 357
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 369
    .line 370
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 371
    .line 372
    const-string v9, "dd/MM HH:mm"

    .line 373
    .line 374
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 375
    .line 376
    .line 377
    move-result-object v10

    .line 378
    invoke-direct {v2, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 379
    .line 380
    .line 381
    invoke-static {}, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;->getEntries()Lkotlin/enums/EnumEntries;

    .line 382
    .line 383
    .line 384
    move-result-object v9

    .line 385
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 386
    .line 387
    .line 388
    move-result-object v9

    .line 389
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 390
    .line 391
    .line 392
    move-result v10

    .line 393
    const v12, 0x7f06031b

    .line 394
    .line 395
    .line 396
    if-eqz v10, :cond_6

    .line 397
    .line 398
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v10

    .line 402
    check-cast v10, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;

    .line 403
    .line 404
    sget-object v13, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker;->INSTANCE:Lcom/minhub/gamehub/hub/catalog/HostLimitTracker;

    .line 405
    .line 406
    invoke-virtual {v13, v6, v10}, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker;->status(Landroid/content/Context;Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;)Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;

    .line 407
    .line 408
    .line 409
    move-result-object v13

    .line 410
    new-instance v14, Landroid/widget/LinearLayout;

    .line 411
    .line 412
    invoke-direct {v14, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v14, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 416
    .line 417
    .line 418
    const/16 v15, 0x10

    .line 419
    .line 420
    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 421
    .line 422
    .line 423
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 424
    .line 425
    const/4 v7, -0x2

    .line 426
    invoke-direct {v15, v11, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v14, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    .line 431
    .line 432
    int-to-float v15, v5

    .line 433
    mul-float/2addr v15, v1

    .line 434
    float-to-int v15, v15

    .line 435
    invoke-virtual {v14, v8, v15, v8, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 436
    .line 437
    .line 438
    new-instance v15, Landroid/widget/TextView;

    .line 439
    .line 440
    invoke-direct {v15, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v10}, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;->getDisplayName()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v10

    .line 447
    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v6, v12}, Landroid/content/Context;->getColor(I)I

    .line 451
    .line 452
    .line 453
    move-result v10

    .line 454
    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 455
    .line 456
    .line 457
    const/high16 v10, 0x41500000    # 13.0f

    .line 458
    .line 459
    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 460
    .line 461
    .line 462
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 463
    .line 464
    const/high16 v12, 0x3f800000    # 1.0f

    .line 465
    .line 466
    invoke-direct {v10, v8, v7, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v15, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    .line 471
    .line 472
    new-instance v7, Landroid/widget/TextView;

    .line 473
    .line 474
    invoke-direct {v7, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v13}, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;->getLimited()Z

    .line 478
    .line 479
    .line 480
    move-result v10

    .line 481
    if-eqz v10, :cond_5

    .line 482
    .line 483
    new-instance v10, Ljava/util/Date;

    .line 484
    .line 485
    invoke-virtual {v13}, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;->getResetsAtMillis()J

    .line 486
    .line 487
    .line 488
    move-result-wide v12

    .line 489
    invoke-direct {v10, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v2, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v10

    .line 496
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v10

    .line 500
    const v12, 0x7f1203a0

    .line 501
    .line 502
    .line 503
    invoke-virtual {v0, v12, v10}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v10

    .line 507
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    .line 509
    .line 510
    const v10, 0x7f060036

    .line 511
    .line 512
    .line 513
    invoke-virtual {v6, v10}, Landroid/content/Context;->getColor(I)I

    .line 514
    .line 515
    .line 516
    move-result v10

    .line 517
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 518
    .line 519
    .line 520
    goto :goto_5

    .line 521
    :cond_5
    const v10, 0x7f1203a1

    .line 522
    .line 523
    .line 524
    invoke-virtual {v0, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v10

    .line 528
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    .line 530
    .line 531
    const v10, 0x7f060313

    .line 532
    .line 533
    .line 534
    invoke-virtual {v6, v10}, Landroid/content/Context;->getColor(I)I

    .line 535
    .line 536
    .line 537
    move-result v10

    .line 538
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 539
    .line 540
    .line 541
    :goto_5
    const/high16 v10, 0x41400000    # 12.0f

    .line 542
    .line 543
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v14, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 550
    .line 551
    .line 552
    iget-object v7, v0, LE1/n;->b:Lw1/i;

    .line 553
    .line 554
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 555
    .line 556
    .line 557
    iget-object v7, v7, Lw1/i;->b:Landroid/widget/LinearLayout;

    .line 558
    .line 559
    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 560
    .line 561
    .line 562
    const/4 v7, 0x1

    .line 563
    goto/16 :goto_4

    .line 564
    .line 565
    :cond_6
    sget-object v1, Ly1/F1;->f:Lkotlin/enums/EnumEntries;

    .line 566
    .line 567
    new-instance v2, Ljava/util/ArrayList;

    .line 568
    .line 569
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 570
    .line 571
    .line 572
    move-result v5

    .line 573
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 574
    .line 575
    .line 576
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 577
    .line 578
    .line 579
    move-result-object v5

    .line 580
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 581
    .line 582
    .line 583
    move-result v7

    .line 584
    const/4 v9, 0x2

    .line 585
    if-eqz v7, :cond_b

    .line 586
    .line 587
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    move-result-object v7

    .line 591
    check-cast v7, Ly1/F1;

    .line 592
    .line 593
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 594
    .line 595
    .line 596
    move-result v7

    .line 597
    if-eqz v7, :cond_a

    .line 598
    .line 599
    const/4 v10, 0x1

    .line 600
    if-eq v7, v10, :cond_9

    .line 601
    .line 602
    if-eq v7, v9, :cond_8

    .line 603
    .line 604
    const/4 v9, 0x3

    .line 605
    if-ne v7, v9, :cond_7

    .line 606
    .line 607
    const v7, 0x7f1203ba

    .line 608
    .line 609
    .line 610
    goto :goto_7

    .line 611
    :cond_7
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    .line 612
    .line 613
    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 614
    .line 615
    .line 616
    throw v1

    .line 617
    :cond_8
    const v7, 0x7f1203b7

    .line 618
    .line 619
    .line 620
    goto :goto_7

    .line 621
    :cond_9
    const v7, 0x7f1203b6

    .line 622
    .line 623
    .line 624
    goto :goto_7

    .line 625
    :cond_a
    const v7, 0x7f1203b8

    .line 626
    .line 627
    .line 628
    :goto_7
    invoke-virtual {v0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v7

    .line 632
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    .line 634
    .line 635
    goto :goto_6

    .line 636
    :cond_b
    iget-object v5, v0, LE1/n;->b:Lw1/i;

    .line 637
    .line 638
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 639
    .line 640
    .line 641
    iget-object v5, v5, Lw1/i;->g:Landroid/widget/Spinner;

    .line 642
    .line 643
    new-instance v7, Landroid/widget/ArrayAdapter;

    .line 644
    .line 645
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 646
    .line 647
    .line 648
    move-result-object v10

    .line 649
    const v11, 0x7f0c0066

    .line 650
    .line 651
    .line 652
    invoke-direct {v7, v10, v11, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 653
    .line 654
    .line 655
    const v10, 0x7f0c0067

    .line 656
    .line 657
    .line 658
    invoke-virtual {v7, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 659
    .line 660
    .line 661
    invoke-virtual {v5, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 662
    .line 663
    .line 664
    iget-object v2, v0, LE1/n;->b:Lw1/i;

    .line 665
    .line 666
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 667
    .line 668
    .line 669
    iget-object v2, v2, Lw1/i;->g:Landroid/widget/Spinner;

    .line 670
    .line 671
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    sget-object v4, Ly1/F1;->c:Ly1/c0;

    .line 675
    .line 676
    invoke-virtual {v6, v3, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 677
    .line 678
    .line 679
    move-result-object v3

    .line 680
    const-string v5, "renpy_render_resolution"

    .line 681
    .line 682
    const/4 v7, 0x0

    .line 683
    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 684
    .line 685
    .line 686
    move-result-object v3

    .line 687
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 688
    .line 689
    .line 690
    sget-object v4, Ly1/F1;->f:Lkotlin/enums/EnumEntries;

    .line 691
    .line 692
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 693
    .line 694
    .line 695
    move-result-object v4

    .line 696
    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 697
    .line 698
    .line 699
    move-result v5

    .line 700
    if-eqz v5, :cond_d

    .line 701
    .line 702
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 703
    .line 704
    .line 705
    move-result-object v5

    .line 706
    move-object v13, v5

    .line 707
    check-cast v13, Ly1/F1;

    .line 708
    .line 709
    iget-object v13, v13, Ly1/F1;->b:Ljava/lang/String;

    .line 710
    .line 711
    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 712
    .line 713
    .line 714
    move-result v13

    .line 715
    if-eqz v13, :cond_c

    .line 716
    .line 717
    goto :goto_8

    .line 718
    :cond_d
    move-object v5, v7

    .line 719
    :goto_8
    check-cast v5, Ly1/F1;

    .line 720
    .line 721
    if-nez v5, :cond_e

    .line 722
    .line 723
    sget-object v5, Ly1/F1;->d:Ly1/F1;

    .line 724
    .line 725
    :cond_e
    invoke-interface {v1, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 726
    .line 727
    .line 728
    move-result v3

    .line 729
    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 730
    .line 731
    .line 732
    iget-object v2, v0, LE1/n;->b:Lw1/i;

    .line 733
    .line 734
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 735
    .line 736
    .line 737
    iget-object v2, v2, Lw1/i;->g:Landroid/widget/Spinner;

    .line 738
    .line 739
    new-instance v3, LC1/S0;

    .line 740
    .line 741
    invoke-direct {v3, v6, v1, v9}, LC1/S0;-><init>(Ljava/lang/Object;Ljava/util/List;I)V

    .line 742
    .line 743
    .line 744
    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 745
    .line 746
    .line 747
    iget-object v1, v0, LE1/n;->b:Lw1/i;

    .line 748
    .line 749
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 750
    .line 751
    .line 752
    iget-object v1, v1, Lw1/i;->d:Landroid/widget/Spinner;

    .line 753
    .line 754
    const-string v2, "spinnerGodotFps"

    .line 755
    .line 756
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 757
    .line 758
    .line 759
    sget-object v2, Ly1/N0;->h:Lkotlin/enums/EnumEntries;

    .line 760
    .line 761
    const v3, 0x7f120398

    .line 762
    .line 763
    .line 764
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 765
    .line 766
    .line 767
    move-result-object v3

    .line 768
    const v4, 0x7f120397

    .line 769
    .line 770
    .line 771
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 772
    .line 773
    .line 774
    move-result-object v4

    .line 775
    const v5, 0x7f12039a

    .line 776
    .line 777
    .line 778
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 779
    .line 780
    .line 781
    move-result-object v5

    .line 782
    filled-new-array {v3, v4, v5}, [Ljava/lang/Integer;

    .line 783
    .line 784
    .line 785
    move-result-object v3

    .line 786
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 787
    .line 788
    .line 789
    move-result-object v3

    .line 790
    invoke-static {v6}, Ly1/c0;->b(Landroid/content/Context;)Ly1/N0;

    .line 791
    .line 792
    .line 793
    move-result-object v4

    .line 794
    new-instance v5, LE1/j;

    .line 795
    .line 796
    invoke-direct {v5, v6, v8}, LE1/j;-><init>(Landroid/content/Context;I)V

    .line 797
    .line 798
    .line 799
    invoke-static/range {v0 .. v5}, LE1/n;->c(LE1/n;Landroid/widget/Spinner;Ljava/util/List;Ljava/util/List;Ljava/lang/Enum;Lkotlin/jvm/functions/Function1;)V

    .line 800
    .line 801
    .line 802
    iget-object v1, v0, LE1/n;->b:Lw1/i;

    .line 803
    .line 804
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 805
    .line 806
    .line 807
    iget-object v1, v1, Lw1/i;->e:Landroid/widget/Spinner;

    .line 808
    .line 809
    const-string v2, "spinnerGodotRenderer"

    .line 810
    .line 811
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 812
    .line 813
    .line 814
    sget-object v2, Ly1/O0;->g:Lkotlin/enums/EnumEntries;

    .line 815
    .line 816
    const v3, 0x7f12039e

    .line 817
    .line 818
    .line 819
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 820
    .line 821
    .line 822
    move-result-object v3

    .line 823
    const v4, 0x7f12039d

    .line 824
    .line 825
    .line 826
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 827
    .line 828
    .line 829
    move-result-object v4

    .line 830
    filled-new-array {v3, v4}, [Ljava/lang/Integer;

    .line 831
    .line 832
    .line 833
    move-result-object v3

    .line 834
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 835
    .line 836
    .line 837
    move-result-object v3

    .line 838
    invoke-static {v6}, Ly1/c0;->d(Landroid/content/Context;)Ly1/O0;

    .line 839
    .line 840
    .line 841
    move-result-object v4

    .line 842
    new-instance v5, LE1/j;

    .line 843
    .line 844
    const/4 v13, 0x1

    .line 845
    invoke-direct {v5, v6, v13}, LE1/j;-><init>(Landroid/content/Context;I)V

    .line 846
    .line 847
    .line 848
    invoke-static/range {v0 .. v5}, LE1/n;->c(LE1/n;Landroid/widget/Spinner;Ljava/util/List;Ljava/util/List;Ljava/lang/Enum;Lkotlin/jvm/functions/Function1;)V

    .line 849
    .line 850
    .line 851
    const v1, 0x7f12023d

    .line 852
    .line 853
    .line 854
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 855
    .line 856
    .line 857
    move-result-object v1

    .line 858
    const-string v2, "\ud83c\uddfb\ud83c\uddf3 "

    .line 859
    .line 860
    invoke-static {v2, v1}, Lkotlin/collections/unsigned/a;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 861
    .line 862
    .line 863
    move-result-object v13

    .line 864
    const v1, 0x7f120239

    .line 865
    .line 866
    .line 867
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 868
    .line 869
    .line 870
    move-result-object v1

    .line 871
    const-string v2, "\ud83c\uddec\ud83c\udde7 "

    .line 872
    .line 873
    invoke-static {v2, v1}, Lkotlin/collections/unsigned/a;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 874
    .line 875
    .line 876
    move-result-object v14

    .line 877
    const v1, 0x7f12023a

    .line 878
    .line 879
    .line 880
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 881
    .line 882
    .line 883
    move-result-object v1

    .line 884
    const-string v2, "\ud83c\uddee\ud83c\udde9 "

    .line 885
    .line 886
    invoke-static {v2, v1}, Lkotlin/collections/unsigned/a;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 887
    .line 888
    .line 889
    move-result-object v15

    .line 890
    const v1, 0x7f120238

    .line 891
    .line 892
    .line 893
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 894
    .line 895
    .line 896
    move-result-object v1

    .line 897
    const-string v2, "\ud83c\udde8\ud83c\uddf3 "

    .line 898
    .line 899
    invoke-static {v2, v1}, Lkotlin/collections/unsigned/a;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 900
    .line 901
    .line 902
    move-result-object v16

    .line 903
    const v1, 0x7f12023b

    .line 904
    .line 905
    .line 906
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 907
    .line 908
    .line 909
    move-result-object v1

    .line 910
    const-string v2, "\ud83c\uddef\ud83c\uddf5 "

    .line 911
    .line 912
    invoke-static {v2, v1}, Lkotlin/collections/unsigned/a;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 913
    .line 914
    .line 915
    move-result-object v17

    .line 916
    const v1, 0x7f12023c

    .line 917
    .line 918
    .line 919
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 920
    .line 921
    .line 922
    move-result-object v1

    .line 923
    const-string v2, "\ud83c\uddf0\ud83c\uddf7 "

    .line 924
    .line 925
    invoke-static {v2, v1}, Lkotlin/collections/unsigned/a;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 926
    .line 927
    .line 928
    move-result-object v18

    .line 929
    filled-new-array/range {v13 .. v18}, [Ljava/lang/String;

    .line 930
    .line 931
    .line 932
    move-result-object v1

    .line 933
    const-string v17, "ja"

    .line 934
    .line 935
    const-string v18, "ko"

    .line 936
    .line 937
    const-string v13, "vi"

    .line 938
    .line 939
    const-string v14, "en"

    .line 940
    .line 941
    const-string v15, "in"

    .line 942
    .line 943
    const-string v16, "zh"

    .line 944
    .line 945
    filled-new-array/range {v13 .. v18}, [Ljava/lang/String;

    .line 946
    .line 947
    .line 948
    move-result-object v2

    .line 949
    iget-object v3, v0, LE1/n;->b:Lw1/i;

    .line 950
    .line 951
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 952
    .line 953
    .line 954
    iget-object v3, v3, Lw1/i;->f:Landroid/widget/Spinner;

    .line 955
    .line 956
    new-instance v4, Landroid/widget/ArrayAdapter;

    .line 957
    .line 958
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 959
    .line 960
    .line 961
    move-result-object v5

    .line 962
    invoke-direct {v4, v5, v11, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 963
    .line 964
    .line 965
    invoke-virtual {v4, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 966
    .line 967
    .line 968
    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 969
    .line 970
    .line 971
    iget-object v1, v0, LE1/n;->b:Lw1/i;

    .line 972
    .line 973
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 974
    .line 975
    .line 976
    iget-object v1, v1, Lw1/i;->f:Landroid/widget/Spinner;

    .line 977
    .line 978
    invoke-static {v6}, LS1/d;->d(Landroid/content/Context;)Ljava/lang/String;

    .line 979
    .line 980
    .line 981
    move-result-object v3

    .line 982
    invoke-static {v3, v2}, Lkotlin/collections/ArraysKt;->s(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 983
    .line 984
    .line 985
    move-result v3

    .line 986
    invoke-static {v3, v8}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 987
    .line 988
    .line 989
    move-result v3

    .line 990
    invoke-virtual {v1, v3}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 991
    .line 992
    .line 993
    iget-object v1, v0, LE1/n;->b:Lw1/i;

    .line 994
    .line 995
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 996
    .line 997
    .line 998
    iget-object v1, v1, Lw1/i;->f:Landroid/widget/Spinner;

    .line 999
    .line 1000
    new-instance v3, LE1/m;

    .line 1001
    .line 1002
    invoke-direct {v3, v2, v6, v0}, LE1/m;-><init>([Ljava/lang/String;Landroid/content/Context;LE1/n;)V

    .line 1003
    .line 1004
    .line 1005
    invoke-virtual {v1, v3}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual {v0, v6}, LE1/n;->b(Landroid/content/Context;)V

    .line 1009
    .line 1010
    .line 1011
    iget-object v1, v0, LE1/n;->b:Lw1/i;

    .line 1012
    .line 1013
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1014
    .line 1015
    .line 1016
    iget-object v1, v1, Lw1/i;->h:Landroid/widget/Switch;

    .line 1017
    .line 1018
    new-instance v2, LE1/i;

    .line 1019
    .line 1020
    const/4 v13, 0x1

    .line 1021
    invoke-direct {v2, v6, v0, v13}, LE1/i;-><init>(Landroid/content/Context;LE1/n;I)V

    .line 1022
    .line 1023
    .line 1024
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1025
    .line 1026
    .line 1027
    iget-object v1, v0, LE1/n;->b:Lw1/i;

    .line 1028
    .line 1029
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1030
    .line 1031
    .line 1032
    iget-object v1, v1, Lw1/i;->i:Landroid/widget/Switch;

    .line 1033
    .line 1034
    new-instance v2, LE1/c;

    .line 1035
    .line 1036
    invoke-direct {v2, v6, v9}, LE1/c;-><init>(Landroid/content/Context;I)V

    .line 1037
    .line 1038
    .line 1039
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1040
    .line 1041
    .line 1042
    iget-object v1, v0, LE1/n;->b:Lw1/i;

    .line 1043
    .line 1044
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1045
    .line 1046
    .line 1047
    iget-object v1, v1, Lw1/i;->c:Landroid/widget/LinearLayout;

    .line 1048
    .line 1049
    new-instance v2, LC1/j;

    .line 1050
    .line 1051
    const/16 v3, 0x13

    .line 1052
    .line 1053
    invoke-direct {v2, v3, v6, v0}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1054
    .line 1055
    .line 1056
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1057
    .line 1058
    .line 1059
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 1060
    .line 1061
    const-string v2, "MANUFACTURER"

    .line 1062
    .line 1063
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1064
    .line 1065
    .line 1066
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1067
    .line 1068
    .line 1069
    move-result v2

    .line 1070
    if-lez v2, :cond_f

    .line 1071
    .line 1072
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 1073
    .line 1074
    .line 1075
    move-result v2

    .line 1076
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    .line 1077
    .line 1078
    .line 1079
    move-result v2

    .line 1080
    const/4 v13, 0x1

    .line 1081
    invoke-virtual {v1, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v1

    .line 1085
    const-string v3, "substring(...)"

    .line 1086
    .line 1087
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1088
    .line 1089
    .line 1090
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1091
    .line 1092
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1093
    .line 1094
    .line 1095
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1096
    .line 1097
    .line 1098
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    .line 1100
    .line 1101
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v1

    .line 1105
    goto :goto_9

    .line 1106
    :cond_f
    const/4 v13, 0x1

    .line 1107
    :goto_9
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1108
    .line 1109
    iget-object v3, v0, LE1/n;->b:Lw1/i;

    .line 1110
    .line 1111
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1112
    .line 1113
    .line 1114
    iget-object v3, v3, Lw1/i;->q:Landroid/widget/TextView;

    .line 1115
    .line 1116
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1117
    .line 1118
    .line 1119
    invoke-static {v2, v1}, Lkotlin/text/StringsKt;->K(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1120
    .line 1121
    .line 1122
    move-result v4

    .line 1123
    if-eqz v4, :cond_10

    .line 1124
    .line 1125
    goto :goto_a

    .line 1126
    :cond_10
    const-string v4, " "

    .line 1127
    .line 1128
    invoke-static {v1, v4, v2}, Lkotlin/collections/unsigned/a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v2

    .line 1132
    :goto_a
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1133
    .line 1134
    .line 1135
    sget-object v1, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    .line 1136
    .line 1137
    const-string v2, "SUPPORTED_64_BIT_ABIS"

    .line 1138
    .line 1139
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1140
    .line 1141
    .line 1142
    array-length v1, v1

    .line 1143
    if-nez v1, :cond_11

    .line 1144
    .line 1145
    goto :goto_b

    .line 1146
    :cond_11
    move v13, v8

    .line 1147
    :goto_b
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 1148
    .line 1149
    const-string v2, "SUPPORTED_ABIS"

    .line 1150
    .line 1151
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1152
    .line 1153
    .line 1154
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v1

    .line 1158
    check-cast v1, Ljava/lang/String;

    .line 1159
    .line 1160
    if-nez v1, :cond_12

    .line 1161
    .line 1162
    const-string v1, "unknown"

    .line 1163
    .line 1164
    :cond_12
    iget-object v2, v0, LE1/n;->b:Lw1/i;

    .line 1165
    .line 1166
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1167
    .line 1168
    .line 1169
    iget-object v2, v2, Lw1/i;->p:Landroid/widget/TextView;

    .line 1170
    .line 1171
    if-nez v13, :cond_13

    .line 1172
    .line 1173
    const v3, 0x7f120389

    .line 1174
    .line 1175
    .line 1176
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v1

    .line 1180
    invoke-virtual {v0, v3, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v1

    .line 1184
    goto :goto_c

    .line 1185
    :cond_13
    const v3, 0x7f120388

    .line 1186
    .line 1187
    .line 1188
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v1

    .line 1192
    invoke-virtual {v0, v3, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v1

    .line 1196
    :goto_c
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1197
    .line 1198
    .line 1199
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v1

    .line 1203
    sget-object v2, Lcom/minhub/gamehub/data/GameEngine;->MV:Lcom/minhub/gamehub/data/GameEngine;

    .line 1204
    .line 1205
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1206
    .line 1207
    .line 1208
    sget-object v2, Lcom/minhub/gamehub/data/GameEngine;->MZ:Lcom/minhub/gamehub/data/GameEngine;

    .line 1209
    .line 1210
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1211
    .line 1212
    .line 1213
    sget-object v2, Lcom/minhub/gamehub/data/GameEngine;->TYRANO:Lcom/minhub/gamehub/data/GameEngine;

    .line 1214
    .line 1215
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1216
    .line 1217
    .line 1218
    sget-object v2, Lcom/minhub/gamehub/data/GameEngine;->HTML:Lcom/minhub/gamehub/data/GameEngine;

    .line 1219
    .line 1220
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1221
    .line 1222
    .line 1223
    sget-object v2, Lcom/minhub/gamehub/data/GameEngine;->VXACE:Lcom/minhub/gamehub/data/GameEngine;

    .line 1224
    .line 1225
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1226
    .line 1227
    .line 1228
    sget-object v2, Lcom/minhub/gamehub/data/GameEngine;->RENPY8:Lcom/minhub/gamehub/data/GameEngine;

    .line 1229
    .line 1230
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1231
    .line 1232
    .line 1233
    sget-object v2, Lcom/minhub/gamehub/data/GameEngine;->RENPY7:Lcom/minhub/gamehub/data/GameEngine;

    .line 1234
    .line 1235
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1236
    .line 1237
    .line 1238
    sget-object v2, Lcom/minhub/gamehub/data/GameEngine;->KIRI:Lcom/minhub/gamehub/data/GameEngine;

    .line 1239
    .line 1240
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1241
    .line 1242
    .line 1243
    if-nez v13, :cond_14

    .line 1244
    .line 1245
    sget-object v2, Lcom/minhub/gamehub/data/GameEngine;->GODOT:Lcom/minhub/gamehub/data/GameEngine;

    .line 1246
    .line 1247
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1248
    .line 1249
    .line 1250
    :cond_14
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v1

    .line 1254
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 1255
    .line 1256
    .line 1257
    move-result-object v2

    .line 1258
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v2

    .line 1262
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 1263
    .line 1264
    const/high16 v3, 0x40c00000    # 6.0f

    .line 1265
    .line 1266
    mul-float/2addr v3, v2

    .line 1267
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 1268
    .line 1269
    .line 1270
    move-result-object v4

    .line 1271
    const v5, 0x7f06030c

    .line 1272
    .line 1273
    .line 1274
    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    .line 1275
    .line 1276
    .line 1277
    move-result v4

    .line 1278
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v4

    .line 1282
    const-string v5, "valueOf(...)"

    .line 1283
    .line 1284
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1285
    .line 1286
    .line 1287
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 1288
    .line 1289
    .line 1290
    move-result-object v6

    .line 1291
    invoke-virtual {v6, v12}, Landroid/content/Context;->getColor(I)I

    .line 1292
    .line 1293
    .line 1294
    move-result v6

    .line 1295
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 1296
    .line 1297
    .line 1298
    move-result-object v9

    .line 1299
    const v10, 0x7f060019

    .line 1300
    .line 1301
    .line 1302
    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    .line 1303
    .line 1304
    .line 1305
    move-result v9

    .line 1306
    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v9

    .line 1310
    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1311
    .line 1312
    .line 1313
    iget-object v5, v0, LE1/n;->b:Lw1/i;

    .line 1314
    .line 1315
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1316
    .line 1317
    .line 1318
    iget-object v5, v5, Lw1/i;->a:Lcom/google/android/material/chip/ChipGroup;

    .line 1319
    .line 1320
    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1321
    .line 1322
    .line 1323
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v1

    .line 1327
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1328
    .line 1329
    .line 1330
    move-result v5

    .line 1331
    if-eqz v5, :cond_15

    .line 1332
    .line 1333
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v5

    .line 1337
    check-cast v5, Lcom/minhub/gamehub/data/GameEngine;

    .line 1338
    .line 1339
    new-instance v10, Lcom/google/android/material/chip/Chip;

    .line 1340
    .line 1341
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 1342
    .line 1343
    .line 1344
    move-result-object v11

    .line 1345
    invoke-direct {v10, v11, v7}, Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1346
    .line 1347
    .line 1348
    sget-object v11, LE1/k;->a:[I

    .line 1349
    .line 1350
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 1351
    .line 1352
    .line 1353
    move-result v5

    .line 1354
    aget v5, v11, v5

    .line 1355
    .line 1356
    packed-switch v5, :pswitch_data_0

    .line 1357
    .line 1358
    .line 1359
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    .line 1360
    .line 1361
    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 1362
    .line 1363
    .line 1364
    throw v1

    .line 1365
    :pswitch_0
    const v5, 0x7f120276

    .line 1366
    .line 1367
    .line 1368
    goto :goto_e

    .line 1369
    :pswitch_1
    const v5, 0x7f120277

    .line 1370
    .line 1371
    .line 1372
    goto :goto_e

    .line 1373
    :pswitch_2
    const v5, 0x7f120279

    .line 1374
    .line 1375
    .line 1376
    goto :goto_e

    .line 1377
    :pswitch_3
    const v5, 0x7f12027d

    .line 1378
    .line 1379
    .line 1380
    goto :goto_e

    .line 1381
    :pswitch_4
    const v5, 0x7f12027e

    .line 1382
    .line 1383
    .line 1384
    goto :goto_e

    .line 1385
    :pswitch_5
    const v5, 0x7f120278

    .line 1386
    .line 1387
    .line 1388
    goto :goto_e

    .line 1389
    :pswitch_6
    const v5, 0x7f120280

    .line 1390
    .line 1391
    .line 1392
    goto :goto_e

    .line 1393
    :pswitch_7
    const v5, 0x7f12027f

    .line 1394
    .line 1395
    .line 1396
    goto :goto_e

    .line 1397
    :pswitch_8
    const v5, 0x7f12027b

    .line 1398
    .line 1399
    .line 1400
    goto :goto_e

    .line 1401
    :pswitch_9
    const v5, 0x7f12027a

    .line 1402
    .line 1403
    .line 1404
    :goto_e
    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 1405
    .line 1406
    .line 1407
    move-result-object v5

    .line 1408
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1409
    .line 1410
    .line 1411
    invoke-virtual {v10, v8}, Landroid/view/View;->setClickable(Z)V

    .line 1412
    .line 1413
    .line 1414
    invoke-virtual {v10, v8}, Lcom/google/android/material/chip/Chip;->setCheckable(Z)V

    .line 1415
    .line 1416
    .line 1417
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1418
    .line 1419
    .line 1420
    invoke-virtual {v10, v4}, Lcom/google/android/material/chip/Chip;->setChipBackgroundColor(Landroid/content/res/ColorStateList;)V

    .line 1421
    .line 1422
    .line 1423
    invoke-virtual {v10, v9}, Lcom/google/android/material/chip/Chip;->setChipStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 1424
    .line 1425
    .line 1426
    invoke-virtual {v10, v2}, Lcom/google/android/material/chip/Chip;->setChipStrokeWidth(F)V

    .line 1427
    .line 1428
    .line 1429
    new-instance v5, LY0/k;

    .line 1430
    .line 1431
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 1432
    .line 1433
    .line 1434
    new-instance v11, LY0/k;

    .line 1435
    .line 1436
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 1437
    .line 1438
    .line 1439
    new-instance v12, LY0/k;

    .line 1440
    .line 1441
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 1442
    .line 1443
    .line 1444
    new-instance v13, LY0/k;

    .line 1445
    .line 1446
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 1447
    .line 1448
    .line 1449
    new-instance v14, LY0/e;

    .line 1450
    .line 1451
    invoke-direct {v14, v8}, LY0/e;-><init>(I)V

    .line 1452
    .line 1453
    .line 1454
    new-instance v15, LY0/e;

    .line 1455
    .line 1456
    invoke-direct {v15, v8}, LY0/e;-><init>(I)V

    .line 1457
    .line 1458
    .line 1459
    new-instance v7, LY0/e;

    .line 1460
    .line 1461
    invoke-direct {v7, v8}, LY0/e;-><init>(I)V

    .line 1462
    .line 1463
    .line 1464
    move-object/from16 p2, v1

    .line 1465
    .line 1466
    new-instance v1, LY0/e;

    .line 1467
    .line 1468
    invoke-direct {v1, v8}, LY0/e;-><init>(I)V

    .line 1469
    .line 1470
    .line 1471
    new-instance v8, LY0/a;

    .line 1472
    .line 1473
    invoke-direct {v8, v3}, LY0/a;-><init>(F)V

    .line 1474
    .line 1475
    .line 1476
    move/from16 v17, v2

    .line 1477
    .line 1478
    new-instance v2, LY0/a;

    .line 1479
    .line 1480
    invoke-direct {v2, v3}, LY0/a;-><init>(F)V

    .line 1481
    .line 1482
    .line 1483
    move-object/from16 v18, v4

    .line 1484
    .line 1485
    new-instance v4, LY0/a;

    .line 1486
    .line 1487
    invoke-direct {v4, v3}, LY0/a;-><init>(F)V

    .line 1488
    .line 1489
    .line 1490
    move/from16 v19, v6

    .line 1491
    .line 1492
    new-instance v6, LY0/a;

    .line 1493
    .line 1494
    invoke-direct {v6, v3}, LY0/a;-><init>(F)V

    .line 1495
    .line 1496
    .line 1497
    move/from16 v20, v3

    .line 1498
    .line 1499
    new-instance v3, LY0/m;

    .line 1500
    .line 1501
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1502
    .line 1503
    .line 1504
    iput-object v5, v3, LY0/m;->a:La/a;

    .line 1505
    .line 1506
    iput-object v11, v3, LY0/m;->b:La/a;

    .line 1507
    .line 1508
    iput-object v12, v3, LY0/m;->c:La/a;

    .line 1509
    .line 1510
    iput-object v13, v3, LY0/m;->d:La/a;

    .line 1511
    .line 1512
    iput-object v8, v3, LY0/m;->e:LY0/c;

    .line 1513
    .line 1514
    iput-object v2, v3, LY0/m;->f:LY0/c;

    .line 1515
    .line 1516
    iput-object v4, v3, LY0/m;->g:LY0/c;

    .line 1517
    .line 1518
    iput-object v6, v3, LY0/m;->h:LY0/c;

    .line 1519
    .line 1520
    iput-object v14, v3, LY0/m;->i:LY0/e;

    .line 1521
    .line 1522
    iput-object v15, v3, LY0/m;->j:LY0/e;

    .line 1523
    .line 1524
    iput-object v7, v3, LY0/m;->k:LY0/e;

    .line 1525
    .line 1526
    iput-object v1, v3, LY0/m;->l:LY0/e;

    .line 1527
    .line 1528
    invoke-virtual {v10, v3}, Lcom/google/android/material/chip/Chip;->setShapeAppearanceModel(LY0/m;)V

    .line 1529
    .line 1530
    .line 1531
    const/high16 v1, 0x41300000    # 11.0f

    .line 1532
    .line 1533
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1534
    .line 1535
    .line 1536
    const/4 v1, 0x0

    .line 1537
    invoke-virtual {v10, v1}, Lcom/google/android/material/chip/Chip;->setChipIconVisible(Z)V

    .line 1538
    .line 1539
    .line 1540
    invoke-virtual {v10, v1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(Z)V

    .line 1541
    .line 1542
    .line 1543
    const/high16 v2, 0x41200000    # 10.0f

    .line 1544
    .line 1545
    mul-float v2, v2, v17

    .line 1546
    .line 1547
    invoke-virtual {v10, v2}, Lcom/google/android/material/chip/Chip;->setChipStartPadding(F)V

    .line 1548
    .line 1549
    .line 1550
    invoke-virtual {v10, v2}, Lcom/google/android/material/chip/Chip;->setChipEndPadding(F)V

    .line 1551
    .line 1552
    .line 1553
    const/4 v2, 0x0

    .line 1554
    invoke-virtual {v10, v2}, Lcom/google/android/material/chip/Chip;->setTextStartPadding(F)V

    .line 1555
    .line 1556
    .line 1557
    invoke-virtual {v10, v2}, Lcom/google/android/material/chip/Chip;->setTextEndPadding(F)V

    .line 1558
    .line 1559
    .line 1560
    iget-object v2, v0, LE1/n;->b:Lw1/i;

    .line 1561
    .line 1562
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1563
    .line 1564
    .line 1565
    iget-object v2, v2, Lw1/i;->a:Lcom/google/android/material/chip/ChipGroup;

    .line 1566
    .line 1567
    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1568
    .line 1569
    .line 1570
    move v8, v1

    .line 1571
    move/from16 v2, v17

    .line 1572
    .line 1573
    move-object/from16 v4, v18

    .line 1574
    .line 1575
    move/from16 v6, v19

    .line 1576
    .line 1577
    move/from16 v3, v20

    .line 1578
    .line 1579
    const/4 v7, 0x0

    .line 1580
    move-object/from16 v1, p2

    .line 1581
    .line 1582
    goto/16 :goto_d

    .line 1583
    .line 1584
    :cond_15
    return-void

    .line 1585
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
