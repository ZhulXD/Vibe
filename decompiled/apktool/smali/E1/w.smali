.class public final LE1/w;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "LE1/w;",
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
        "SMAP\nPluginsSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginsSettingsFragment.kt\ncom/minhub/gamehub/hub/settings/PluginsSettingsFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,273:1\n1068#2:274\n1068#2:275\n*S KotlinDebug\n*F\n+ 1 PluginsSettingsFragment.kt\ncom/minhub/gamehub/hub/settings/PluginsSettingsFragment\n*L\n75#1:274\n114#1:275\n*E\n"
    }
.end annotation


# instance fields
.field public b:LM1/g;


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

.method public static final d(Landroid/content/Context;LL1/a;Landroid/widget/TextView;LE1/w;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 3

    .line 1
    sget-object v0, Ly1/y1;->a:Ly1/y1;

    .line 2
    .line 3
    sget-object v0, Ly1/v1;->j:Ly1/v1;

    .line 4
    .line 5
    invoke-static {p1, p0, v0}, Ly1/y1;->k(LL1/a;Landroid/content/Context;Ly1/v1;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const v2, 0x7f120351

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const v2, 0x7f120352

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {p3, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const v2, 0x7f060313

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const v2, 0x7f06031a

    .line 32
    .line 33
    .line 34
    :goto_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    const p2, 0x7f120353

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    const p2, 0x7f12034f

    .line 48
    .line 49
    .line 50
    :goto_2
    invoke-virtual {p3, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    if-nez v1, :cond_4

    .line 58
    .line 59
    sget-object p2, Ly1/W0;->a:Lkotlin/text/Regex;

    .line 60
    .line 61
    const-string p2, "context"

    .line 62
    .line 63
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string p2, "build"

    .line 67
    .line 68
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-static {p1, p0, v0}, Ly1/y1;->o(LL1/a;Landroid/content/Context;Ly1/v1;)Ljava/io/File;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-eqz p0, :cond_3

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_3
    const/16 p0, 0x8

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_4
    :goto_3
    const/4 p0, 0x0

    .line 86
    :goto_4
    invoke-virtual {p5, p0}, Landroid/view/View;->setVisibility(I)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public static final e(Landroid/content/Context;LL1/a;Landroid/widget/TextView;LE1/w;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 3

    .line 1
    sget-object v0, Ly1/y1;->a:Ly1/y1;

    .line 2
    .line 3
    sget-object v0, Ly1/v1;->i:Ly1/v1;

    .line 4
    .line 5
    invoke-static {p1, p0, v0}, Ly1/y1;->k(LL1/a;Landroid/content/Context;Ly1/v1;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const v2, 0x7f120351

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const v2, 0x7f120352

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {p3, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const v2, 0x7f060313

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const v2, 0x7f06031a

    .line 32
    .line 33
    .line 34
    :goto_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    const p2, 0x7f120353

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    const p2, 0x7f12034f

    .line 48
    .line 49
    .line 50
    :goto_2
    invoke-virtual {p3, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    if-nez v1, :cond_4

    .line 58
    .line 59
    sget-object p2, Ly1/G1;->a:Lkotlin/text/Regex;

    .line 60
    .line 61
    const-string p2, "context"

    .line 62
    .line 63
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string p2, "build"

    .line 67
    .line 68
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-static {p1, p0, v0}, Ly1/y1;->o(LL1/a;Landroid/content/Context;Ly1/v1;)Ljava/io/File;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    if-nez p2, :cond_4

    .line 80
    .line 81
    new-instance p2, Ljava/io/File;

    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p1}, LL1/a;->a()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {p1}, Ly1/G1;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-direct {p2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    if-eqz p0, :cond_3

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_3
    const/16 p0, 0x8

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_4
    :goto_3
    const/4 p0, 0x0

    .line 109
    :goto_4
    invoke-virtual {p5, p0}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .line 111
    .line 112
    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {p1}, LG1/m;->b(Landroid/content/Context;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, LE1/w;->b:LM1/g;

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, LM1/g;->f:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Landroid/widget/TextView;

    .line 13
    .line 14
    if-gtz p1, :cond_0

    .line 15
    .line 16
    const p1, 0x7f1203b3

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const v1, 0x7f1203b2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v1, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final c(Landroid/content/Context;Ly1/v1;Landroid/widget/TextView;Landroid/widget/Button;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p1, p2}, Ly1/y1;->k(LL1/a;Landroid/content/Context;Ly1/v1;)Z

    .line 3
    .line 4
    .line 5
    move-result p2

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    const v0, 0x7f120351

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const v0, 0x7f120352

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    const v0, 0x7f060313

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const v0, 0x7f06031a

    .line 29
    .line 30
    .line 31
    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    .line 37
    .line 38
    if-eqz p2, :cond_2

    .line 39
    .line 40
    const p1, 0x7f120353

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    const p1, 0x7f12034f

    .line 45
    .line 46
    .line 47
    :goto_2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final f(Ly1/v1;LL1/a;Lkotlin/jvm/functions/Function0;)V
    .locals 15

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v5, p2

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    const-string v0, "requireContext(...)"

    .line 10
    .line 11
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v12, 0x3

    .line 15
    if-eqz v5, :cond_1

    .line 16
    .line 17
    iget-object v0, v5, LL1/a;->c:Ljava/lang/String;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    move-object v3, v0

    .line 23
    goto :goto_2

    .line 24
    :cond_1
    :goto_1
    const-string v0, "plugin"

    .line 25
    .line 26
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_5

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    if-eq v0, v1, :cond_4

    .line 37
    .line 38
    const/4 v1, 0x2

    .line 39
    if-eq v0, v1, :cond_3

    .line 40
    .line 41
    if-ne v0, v12, :cond_2

    .line 42
    .line 43
    const-string v0, "https://pub-5c8ab05667bd4a25a3ff4033246d4339.r2.dev/Plugin/Godot/4.7.1/PluginGodot.zip"

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 47
    .line 48
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    :cond_3
    const-string v0, "https://pub-5c8ab05667bd4a25a3ff4033246d4339.r2.dev/Plugin/Renpy7/7.8.7/PluginRenpy7.zip"

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    const-string v0, "https://pub-5c8ab05667bd4a25a3ff4033246d4339.r2.dev/Plugin/Renpy/PluginRenpy.zip"

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_5
    const-string v0, "https://pub-5c8ab05667bd4a25a3ff4033246d4339.r2.dev/Plugin/ACE/PluginACE.zip"

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :goto_2
    if-eqz v5, :cond_6

    .line 62
    .line 63
    sget-object v0, Ly1/v1;->j:Ly1/v1;

    .line 64
    .line 65
    if-ne v2, v0, :cond_6

    .line 66
    .line 67
    invoke-static {v5}, Ly1/W0;->a(LL1/a;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :goto_3
    move-object v9, v0

    .line 72
    goto :goto_4

    .line 73
    :cond_6
    if-eqz v5, :cond_7

    .line 74
    .line 75
    invoke-static {v5}, Ly1/G1;->b(LL1/a;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    goto :goto_3

    .line 80
    :cond_7
    iget-object v0, v2, Ly1/v1;->c:Ljava/lang/String;

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :goto_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const v1, 0x7f0c003e

    .line 88
    .line 89
    .line 90
    const/4 v13, 0x0

    .line 91
    invoke-virtual {v0, v1, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const v1, 0x7f090387

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Landroid/widget/TextView;

    .line 103
    .line 104
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    const v1, 0x7f090257

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    move-object v7, v1

    .line 115
    check-cast v7, Landroid/widget/ProgressBar;

    .line 116
    .line 117
    const v1, 0x7f090388

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    move-object v8, v1

    .line 125
    check-cast v8, Landroid/widget/TextView;

    .line 126
    .line 127
    new-instance v1, LO0/b;

    .line 128
    .line 129
    const/4 v6, 0x0

    .line 130
    invoke-direct {v1, v4, v6}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 131
    .line 132
    .line 133
    iget-object v10, v1, Le/f;->c:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v10, Le/b;

    .line 136
    .line 137
    iput-object v0, v10, Le/b;->t:Landroid/view/View;

    .line 138
    .line 139
    iput-boolean v6, v10, Le/b;->m:Z

    .line 140
    .line 141
    invoke-virtual {v1}, LO0/b;->c()Le/g;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    const-string v0, "create(...)"

    .line 146
    .line 147
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    if-eqz v0, :cond_8

    .line 155
    .line 156
    const v6, 0x106000d

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 160
    .line 161
    .line 162
    :cond_8
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    const-string v6, "getViewLifecycleOwner(...)"

    .line 170
    .line 171
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 175
    .line 176
    .line 177
    move-result-object v14

    .line 178
    new-instance v0, LE1/v;

    .line 179
    .line 180
    const/4 v11, 0x0

    .line 181
    move-object v6, p0

    .line 182
    move-object/from16 v10, p3

    .line 183
    .line 184
    invoke-direct/range {v0 .. v11}, LE1/v;-><init>(Le/g;Ly1/v1;Ljava/lang/String;Landroid/content/Context;LL1/a;LE1/w;Landroid/widget/ProgressBar;Landroid/widget/TextView;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    .line 185
    .line 186
    .line 187
    invoke-static {v14, v13, v0, v12}, LV1/A;->c(LV1/x;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)LV1/p0;

    .line 188
    .line 189
    .line 190
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .line 1
    const-string p3, "i"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const p3, 0x7f0c0051

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
    const p2, 0x7f0900c6

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
    check-cast v2, Landroid/widget/Button;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    const p2, 0x7f0900ce

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
    check-cast v3, Landroid/widget/Button;

    .line 35
    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    const p2, 0x7f0900ec

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
    check-cast v4, Landroid/widget/Button;

    .line 47
    .line 48
    if-eqz v4, :cond_0

    .line 49
    .line 50
    const p2, 0x7f0901e4

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
    check-cast v5, Landroid/widget/LinearLayout;

    .line 59
    .line 60
    if-eqz v5, :cond_0

    .line 61
    .line 62
    const p2, 0x7f0901e6

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
    check-cast v6, Landroid/widget/LinearLayout;

    .line 71
    .line 72
    if-eqz v6, :cond_0

    .line 73
    .line 74
    const p2, 0x7f09037f

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
    check-cast v7, Landroid/widget/TextView;

    .line 83
    .line 84
    if-eqz v7, :cond_0

    .line 85
    .line 86
    const p2, 0x7f090394

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
    check-cast v8, Landroid/widget/TextView;

    .line 95
    .line 96
    if-eqz v8, :cond_0

    .line 97
    .line 98
    const p2, 0x7f0903b9

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
    check-cast v9, Landroid/widget/TextView;

    .line 107
    .line 108
    if-eqz v9, :cond_0

    .line 109
    .line 110
    new-instance v0, LM1/g;

    .line 111
    .line 112
    move-object v1, p1

    .line 113
    check-cast v1, Landroid/widget/ScrollView;

    .line 114
    .line 115
    invoke-direct/range {v0 .. v9}, LM1/g;-><init>(Landroid/widget/ScrollView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 116
    .line 117
    .line 118
    iput-object v0, p0, LE1/w;->b:LM1/g;

    .line 119
    .line 120
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    const-string p1, "getRoot(...)"

    .line 124
    .line 125
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    return-object v1

    .line 129
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    new-instance p2, Ljava/lang/NullPointerException;

    .line 138
    .line 139
    const-string p3, "Missing required view with ID: "

    .line 140
    .line 141
    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
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
    iput-object v0, p0, LE1/w;->b:LM1/g;

    .line 6
    .line 7
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "v"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v2, "requireContext(...)"

    .line 15
    .line 16
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object v2, Ly1/v1;->g:Ly1/v1;

    .line 20
    .line 21
    iget-object v3, v1, LE1/w;->b:LM1/g;

    .line 22
    .line 23
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v3, v3, LM1/g;->h:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v3, Landroid/widget/TextView;

    .line 29
    .line 30
    const-string v4, "tvVxaceStatus"

    .line 31
    .line 32
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v4, v1, LE1/w;->b:LM1/g;

    .line 36
    .line 37
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object v4, v4, LM1/g;->c:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v4, Landroid/widget/Button;

    .line 43
    .line 44
    const-string v5, "btnVxaceInstall"

    .line 45
    .line 46
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v0, v2, v3, v4}, LE1/w;->c(Landroid/content/Context;Ly1/v1;Landroid/widget/TextView;Landroid/widget/Button;)V

    .line 50
    .line 51
    .line 52
    sget-object v2, Ly1/v1;->h:Ly1/v1;

    .line 53
    .line 54
    iget-object v3, v1, LE1/w;->b:LM1/g;

    .line 55
    .line 56
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object v3, v3, LM1/g;->g:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v3, Landroid/widget/TextView;

    .line 62
    .line 63
    const-string v4, "tvRenpy8Status"

    .line 64
    .line 65
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v4, v1, LE1/w;->b:LM1/g;

    .line 69
    .line 70
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iget-object v4, v4, LM1/g;->b:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v4, Landroid/widget/Button;

    .line 76
    .line 77
    const-string v5, "btnRenpy8Install"

    .line 78
    .line 79
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v0, v2, v3, v4}, LE1/w;->c(Landroid/content/Context;Ly1/v1;Landroid/widget/TextView;Landroid/widget/Button;)V

    .line 83
    .line 84
    .line 85
    iget-object v2, v1, LE1/w;->b:LM1/g;

    .line 86
    .line 87
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    iget-object v2, v2, LM1/g;->e:Ljava/lang/Object;

    .line 91
    .line 92
    move-object v9, v2

    .line 93
    check-cast v9, Landroid/widget/LinearLayout;

    .line 94
    .line 95
    const-string v2, "llRenpy7Cores"

    .line 96
    .line 97
    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v9}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 101
    .line 102
    .line 103
    sget-object v2, Ly1/G1;->b:Ljava/util/List;

    .line 104
    .line 105
    new-instance v3, LC1/T;

    .line 106
    .line 107
    const/4 v4, 0x3

    .line 108
    invoke-direct {v3, v4}, LC1/T;-><init>(I)V

    .line 109
    .line 110
    .line 111
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    const v11, 0x7f090089

    .line 124
    .line 125
    .line 126
    const v12, 0x7f090088

    .line 127
    .line 128
    .line 129
    const v13, 0x7f090338

    .line 130
    .line 131
    .line 132
    const v14, 0x7f090337

    .line 133
    .line 134
    .line 135
    const/4 v15, 0x0

    .line 136
    const v8, 0x7f0c0065

    .line 137
    .line 138
    .line 139
    if-eqz v2, :cond_0

    .line 140
    .line 141
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    move-object v3, v2

    .line 146
    check-cast v3, LL1/a;

    .line 147
    .line 148
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v2, v8, v9, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object v15

    .line 156
    invoke-virtual {v15, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    move-object v8, v2

    .line 161
    check-cast v8, Landroid/widget/TextView;

    .line 162
    .line 163
    invoke-virtual {v15, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    check-cast v2, Landroid/widget/TextView;

    .line 168
    .line 169
    invoke-virtual {v15, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    check-cast v4, Landroid/widget/Button;

    .line 174
    .line 175
    invoke-virtual {v15, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    check-cast v5, Landroid/widget/Button;

    .line 180
    .line 181
    iget-object v6, v3, LL1/a;->b:LL1/e;

    .line 182
    .line 183
    new-instance v7, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    const-string v11, "Ren\'Py "

    .line 186
    .line 187
    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    .line 199
    .line 200
    move-object v6, v4

    .line 201
    move-object v4, v0

    .line 202
    new-instance v0, LE1/r;

    .line 203
    .line 204
    const/4 v1, 0x1

    .line 205
    move-object v7, v6

    .line 206
    move-object v6, v5

    .line 207
    move-object v5, v7

    .line 208
    move-object v7, v2

    .line 209
    move-object/from16 v2, p0

    .line 210
    .line 211
    invoke-direct/range {v0 .. v7}, LE1/r;-><init>(ILE1/w;LL1/a;Landroid/content/Context;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;)V

    .line 212
    .line 213
    .line 214
    move-object v1, v6

    .line 215
    move-object v6, v5

    .line 216
    move-object v5, v1

    .line 217
    move-object v1, v3

    .line 218
    move-object v2, v7

    .line 219
    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    .line 221
    .line 222
    new-instance v0, LE1/s;

    .line 223
    .line 224
    move-object v3, v8

    .line 225
    const/4 v8, 0x1

    .line 226
    move-object v7, v5

    .line 227
    move-object v5, v2

    .line 228
    move-object v2, v4

    .line 229
    move-object v4, v1

    .line 230
    move-object/from16 v1, p0

    .line 231
    .line 232
    invoke-direct/range {v0 .. v8}, LE1/s;-><init>(LE1/w;Landroid/content/Context;Landroid/widget/TextView;LL1/a;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;I)V

    .line 233
    .line 234
    .line 235
    move-object v1, v4

    .line 236
    move-object v4, v2

    .line 237
    move-object v2, v5

    .line 238
    move-object v5, v7

    .line 239
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    .line 241
    .line 242
    move-object/from16 v3, p0

    .line 243
    .line 244
    move-object v0, v4

    .line 245
    move-object v4, v6

    .line 246
    invoke-static/range {v0 .. v5}, LE1/w;->e(Landroid/content/Context;LL1/a;Landroid/widget/TextView;LE1/w;Landroid/widget/Button;Landroid/widget/Button;)V

    .line 247
    .line 248
    .line 249
    move-object v4, v0

    .line 250
    move-object v1, v3

    .line 251
    invoke-virtual {v9, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 252
    .line 253
    .line 254
    goto/16 :goto_0

    .line 255
    .line 256
    :cond_0
    move-object v4, v0

    .line 257
    iget-object v0, v1, LE1/w;->b:LM1/g;

    .line 258
    .line 259
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    iget-object v0, v0, LM1/g;->d:Ljava/lang/Object;

    .line 263
    .line 264
    move-object v9, v0

    .line 265
    check-cast v9, Landroid/widget/LinearLayout;

    .line 266
    .line 267
    const-string v0, "llGodotCores"

    .line 268
    .line 269
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v9}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 273
    .line 274
    .line 275
    sget-object v0, Ly1/W0;->b:Ljava/util/List;

    .line 276
    .line 277
    new-instance v2, LC1/T;

    .line 278
    .line 279
    const/4 v3, 0x2

    .line 280
    invoke-direct {v2, v3}, LC1/T;-><init>(I)V

    .line 281
    .line 282
    .line 283
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 288
    .line 289
    .line 290
    move-result-object v10

    .line 291
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    if-eqz v0, :cond_1

    .line 296
    .line 297
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    move-object v3, v0

    .line 302
    check-cast v3, LL1/a;

    .line 303
    .line 304
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    invoke-virtual {v0, v8, v9, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    check-cast v2, Landroid/widget/TextView;

    .line 317
    .line 318
    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 319
    .line 320
    .line 321
    move-result-object v5

    .line 322
    check-cast v5, Landroid/widget/TextView;

    .line 323
    .line 324
    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 325
    .line 326
    .line 327
    move-result-object v6

    .line 328
    check-cast v6, Landroid/widget/Button;

    .line 329
    .line 330
    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 331
    .line 332
    .line 333
    move-result-object v7

    .line 334
    check-cast v7, Landroid/widget/Button;

    .line 335
    .line 336
    iget-object v8, v3, LL1/a;->b:LL1/e;

    .line 337
    .line 338
    new-instance v11, Ljava/lang/StringBuilder;

    .line 339
    .line 340
    const-string v12, "Godot "

    .line 341
    .line 342
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v8

    .line 352
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    .line 354
    .line 355
    move-object v8, v0

    .line 356
    new-instance v0, LE1/r;

    .line 357
    .line 358
    const/4 v1, 0x0

    .line 359
    move-object v11, v7

    .line 360
    move-object v7, v5

    .line 361
    move-object v5, v6

    .line 362
    move-object v6, v11

    .line 363
    move-object v11, v8

    .line 364
    move-object v8, v2

    .line 365
    move-object/from16 v2, p0

    .line 366
    .line 367
    invoke-direct/range {v0 .. v7}, LE1/r;-><init>(ILE1/w;LL1/a;Landroid/content/Context;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;)V

    .line 368
    .line 369
    .line 370
    move-object v1, v3

    .line 371
    move-object v2, v7

    .line 372
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    .line 374
    .line 375
    new-instance v0, LE1/s;

    .line 376
    .line 377
    move-object v3, v8

    .line 378
    const/4 v8, 0x0

    .line 379
    const v12, 0x7f0c0065

    .line 380
    .line 381
    .line 382
    move-object v7, v6

    .line 383
    move-object v6, v5

    .line 384
    move-object v5, v2

    .line 385
    move-object v2, v4

    .line 386
    move-object v4, v1

    .line 387
    move-object/from16 v1, p0

    .line 388
    .line 389
    invoke-direct/range {v0 .. v8}, LE1/s;-><init>(LE1/w;Landroid/content/Context;Landroid/widget/TextView;LL1/a;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;I)V

    .line 390
    .line 391
    .line 392
    move-object v1, v4

    .line 393
    move-object v4, v2

    .line 394
    move-object v2, v5

    .line 395
    move-object v5, v6

    .line 396
    move-object v6, v7

    .line 397
    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    .line 399
    .line 400
    move-object/from16 v3, p0

    .line 401
    .line 402
    move-object v0, v4

    .line 403
    move-object v4, v5

    .line 404
    move-object v5, v6

    .line 405
    invoke-static/range {v0 .. v5}, LE1/w;->d(Landroid/content/Context;LL1/a;Landroid/widget/TextView;LE1/w;Landroid/widget/Button;Landroid/widget/Button;)V

    .line 406
    .line 407
    .line 408
    move-object v4, v0

    .line 409
    move-object v1, v3

    .line 410
    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 411
    .line 412
    .line 413
    move v8, v12

    .line 414
    const v11, 0x7f090089

    .line 415
    .line 416
    .line 417
    const v12, 0x7f090088

    .line 418
    .line 419
    .line 420
    goto/16 :goto_1

    .line 421
    .line 422
    :cond_1
    iget-object v0, v1, LE1/w;->b:LM1/g;

    .line 423
    .line 424
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 425
    .line 426
    .line 427
    iget-object v0, v0, LM1/g;->c:Ljava/lang/Object;

    .line 428
    .line 429
    check-cast v0, Landroid/widget/Button;

    .line 430
    .line 431
    new-instance v2, LE1/o;

    .line 432
    .line 433
    const/4 v3, 0x1

    .line 434
    invoke-direct {v2, v1, v4, v3}, LE1/o;-><init>(LE1/w;Landroid/content/Context;I)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    .line 439
    .line 440
    iget-object v0, v1, LE1/w;->b:LM1/g;

    .line 441
    .line 442
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 443
    .line 444
    .line 445
    iget-object v0, v0, LM1/g;->b:Ljava/lang/Object;

    .line 446
    .line 447
    check-cast v0, Landroid/widget/Button;

    .line 448
    .line 449
    new-instance v2, LE1/o;

    .line 450
    .line 451
    const/4 v3, 0x2

    .line 452
    invoke-direct {v2, v1, v4, v3}, LE1/o;-><init>(LE1/w;Landroid/content/Context;I)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v1, v4}, LE1/w;->b(Landroid/content/Context;)V

    .line 459
    .line 460
    .line 461
    iget-object v0, v1, LE1/w;->b:LM1/g;

    .line 462
    .line 463
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 464
    .line 465
    .line 466
    iget-object v0, v0, LM1/g;->a:Ljava/lang/Object;

    .line 467
    .line 468
    check-cast v0, Landroid/widget/Button;

    .line 469
    .line 470
    new-instance v2, LE1/o;

    .line 471
    .line 472
    const/4 v3, 0x0

    .line 473
    invoke-direct {v2, v1, v4, v3}, LE1/o;-><init>(LE1/w;Landroid/content/Context;I)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    .line 478
    .line 479
    return-void
.end method
