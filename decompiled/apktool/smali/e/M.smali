.class public final Le/M;
.super Lcom/bumptech/glide/d;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lk/d;


# static fields
.field public static final A:Landroid/view/animation/DecelerateInterpolator;

.field public static final z:Landroid/view/animation/AccelerateInterpolator;


# instance fields
.field public b:Landroid/content/Context;

.field public c:Landroid/content/Context;

.field public d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field public e:Landroidx/appcompat/widget/ActionBarContainer;

.field public f:Lk/m0;

.field public g:Landroidx/appcompat/widget/ActionBarContextView;

.field public final h:Landroid/view/View;

.field public i:Z

.field public j:Le/L;

.field public k:Le/L;

.field public l:LA1/d;

.field public m:Z

.field public final n:Ljava/util/ArrayList;

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Li/j;

.field public u:Z

.field public v:Z

.field public final w:Le/K;

.field public final x:Le/K;

.field public final y:LA1/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Le/M;->z:Landroid/view/animation/AccelerateInterpolator;

    .line 7
    .line 8
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Le/M;->A:Landroid/view/animation/DecelerateInterpolator;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/M;->n:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Le/M;->o:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Le/M;->p:Z

    .line 6
    iput-boolean v0, p0, Le/M;->s:Z

    .line 7
    new-instance v0, Le/K;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/K;-><init>(Le/M;I)V

    iput-object v0, p0, Le/M;->w:Le/K;

    .line 8
    new-instance v0, Le/K;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Le/K;-><init>(Le/M;I)V

    iput-object v0, p0, Le/M;->x:Le/K;

    .line 9
    new-instance v0, LA1/b;

    invoke-direct {v0, p0}, LA1/b;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Le/M;->y:LA1/b;

    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Le/M;->g0(Landroid/view/View;)V

    if-nez p2, :cond_0

    const p2, 0x1020002

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Le/M;->h:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/M;->n:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Le/M;->o:I

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Le/M;->p:Z

    .line 19
    iput-boolean v0, p0, Le/M;->s:Z

    .line 20
    new-instance v0, Le/K;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/K;-><init>(Le/M;I)V

    iput-object v0, p0, Le/M;->w:Le/K;

    .line 21
    new-instance v0, Le/K;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Le/K;-><init>(Le/M;I)V

    iput-object v0, p0, Le/M;->x:Le/K;

    .line 22
    new-instance v0, LA1/b;

    invoke-direct {v0, p0}, LA1/b;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Le/M;->y:LA1/b;

    .line 23
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/M;->g0(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final e0(Z)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-boolean v1, p0, Le/M;->r:Z

    .line 5
    .line 6
    if-nez v1, :cond_3

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Le/M;->r:Z

    .line 10
    .line 11
    iget-object v2, p0, Le/M;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0, v0}, Le/M;->j0(Z)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-boolean v1, p0, Le/M;->r:Z

    .line 23
    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    iput-boolean v0, p0, Le/M;->r:Z

    .line 27
    .line 28
    iget-object v1, p0, Le/M;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-virtual {p0, v0}, Le/M;->j0(Z)V

    .line 36
    .line 37
    .line 38
    :cond_3
    :goto_0
    iget-object v1, p0, Le/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/view/View;->isLaidOut()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/16 v2, 0x8

    .line 45
    .line 46
    const/4 v3, 0x4

    .line 47
    if-eqz v1, :cond_5

    .line 48
    .line 49
    const-wide/16 v4, 0xc8

    .line 50
    .line 51
    const-wide/16 v6, 0x64

    .line 52
    .line 53
    if-eqz p1, :cond_4

    .line 54
    .line 55
    iget-object p1, p0, Le/M;->f:Lk/m0;

    .line 56
    .line 57
    check-cast p1, Lk/i1;

    .line 58
    .line 59
    iget-object v1, p1, Lk/i1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 60
    .line 61
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const/4 v2, 0x0

    .line 66
    invoke-virtual {v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1, v6, v7}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    new-instance v2, Li/i;

    .line 75
    .line 76
    invoke-direct {v2, p1, v3}, Li/i;-><init>(Lk/i1;I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iget-object v1, p0, Le/M;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 84
    .line 85
    invoke-virtual {v1, v0, v4, v5}, Landroidx/appcompat/widget/ActionBarContextView;->i(IJ)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    goto :goto_1

    .line 90
    :cond_4
    iget-object p1, p0, Le/M;->f:Lk/m0;

    .line 91
    .line 92
    check-cast p1, Lk/i1;

    .line 93
    .line 94
    iget-object v1, p1, Lk/i1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 95
    .line 96
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    const/high16 v3, 0x3f800000    # 1.0f

    .line 101
    .line 102
    invoke-virtual {v1, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1, v4, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    new-instance v3, Li/i;

    .line 111
    .line 112
    invoke-direct {v3, p1, v0}, Li/i;-><init>(Lk/i1;I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iget-object p1, p0, Le/M;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 120
    .line 121
    invoke-virtual {p1, v2, v6, v7}, Landroidx/appcompat/widget/ActionBarContextView;->i(IJ)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    :goto_1
    new-instance v1, Li/j;

    .line 126
    .line 127
    invoke-direct {v1}, Li/j;-><init>()V

    .line 128
    .line 129
    .line 130
    iget-object v2, v1, Li/j;->a:Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->getDuration()J

    .line 136
    .line 137
    .line 138
    move-result-wide v3

    .line 139
    invoke-virtual {v0, v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Li/j;->b()V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :cond_5
    if-eqz p1, :cond_6

    .line 150
    .line 151
    iget-object p1, p0, Le/M;->f:Lk/m0;

    .line 152
    .line 153
    check-cast p1, Lk/i1;

    .line 154
    .line 155
    iget-object p1, p1, Lk/i1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 156
    .line 157
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Le/M;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 161
    .line 162
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :cond_6
    iget-object p1, p0, Le/M;->f:Lk/m0;

    .line 167
    .line 168
    check-cast p1, Lk/i1;

    .line 169
    .line 170
    iget-object p1, p1, Lk/i1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 171
    .line 172
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 173
    .line 174
    .line 175
    iget-object p1, p0, Le/M;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 176
    .line 177
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 178
    .line 179
    .line 180
    return-void
.end method

.method public final f0()Landroid/content/Context;
    .locals 4

    .line 1
    iget-object v0, p0, Le/M;->c:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Landroid/util/TypedValue;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Le/M;->b:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const v2, 0x7f04000a

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 21
    .line 22
    .line 23
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 28
    .line 29
    iget-object v2, p0, Le/M;->b:Landroid/content/Context;

    .line 30
    .line 31
    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Le/M;->c:Landroid/content/Context;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Le/M;->b:Landroid/content/Context;

    .line 38
    .line 39
    iput-object v0, p0, Le/M;->c:Landroid/content/Context;

    .line 40
    .line 41
    :cond_1
    :goto_0
    iget-object v0, p0, Le/M;->c:Landroid/content/Context;

    .line 42
    .line 43
    return-object v0
.end method

.method public final g0(Landroid/view/View;)V
    .locals 6

    .line 1
    const v0, 0x7f090128

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 9
    .line 10
    iput-object v0, p0, Le/M;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Lk/d;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    const v0, 0x7f090030

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    instance-of v1, v0, Lk/m0;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    check-cast v0, Lk/m0;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    instance-of v1, v0, Landroidx/appcompat/widget/Toolbar;

    .line 32
    .line 33
    if-eqz v1, :cond_8

    .line 34
    .line 35
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Lk/m0;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :goto_0
    iput-object v0, p0, Le/M;->f:Lk/m0;

    .line 42
    .line 43
    const v0, 0x7f090038

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    .line 51
    .line 52
    iput-object v0, p0, Le/M;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 53
    .line 54
    const v0, 0x7f090032

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Landroidx/appcompat/widget/ActionBarContainer;

    .line 62
    .line 63
    iput-object p1, p0, Le/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 64
    .line 65
    iget-object v0, p0, Le/M;->f:Lk/m0;

    .line 66
    .line 67
    if-eqz v0, :cond_7

    .line 68
    .line 69
    iget-object v1, p0, Le/M;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 70
    .line 71
    if-eqz v1, :cond_7

    .line 72
    .line 73
    if-eqz p1, :cond_7

    .line 74
    .line 75
    check-cast v0, Lk/i1;

    .line 76
    .line 77
    iget-object p1, v0, Lk/i1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Le/M;->b:Landroid/content/Context;

    .line 84
    .line 85
    iget-object v0, p0, Le/M;->f:Lk/m0;

    .line 86
    .line 87
    check-cast v0, Lk/i1;

    .line 88
    .line 89
    iget v0, v0, Lk/i1;->b:I

    .line 90
    .line 91
    and-int/lit8 v0, v0, 0x4

    .line 92
    .line 93
    const/4 v1, 0x1

    .line 94
    const/4 v2, 0x0

    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    move v0, v1

    .line 98
    goto :goto_1

    .line 99
    :cond_2
    move v0, v2

    .line 100
    :goto_1
    if-eqz v0, :cond_3

    .line 101
    .line 102
    iput-boolean v1, p0, Le/M;->i:Z

    .line 103
    .line 104
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 109
    .line 110
    const/16 v4, 0xe

    .line 111
    .line 112
    iget-object v0, p0, Le/M;->f:Lk/m0;

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    const/high16 v0, 0x7f050000

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    invoke-virtual {p0, p1}, Le/M;->i0(Z)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Le/M;->b:Landroid/content/Context;

    .line 131
    .line 132
    sget-object v0, Ld/a;->a:[I

    .line 133
    .line 134
    const v3, 0x7f040005

    .line 135
    .line 136
    .line 137
    const/4 v5, 0x0

    .line 138
    invoke-virtual {p1, v5, v0, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_5

    .line 147
    .line 148
    iget-object v0, p0, Le/M;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 149
    .line 150
    iget-boolean v3, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Z

    .line 151
    .line 152
    if-eqz v3, :cond_4

    .line 153
    .line 154
    iput-boolean v1, p0, Le/M;->v:Z

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 161
    .line 162
    const-string v0, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    .line 163
    .line 164
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p1

    .line 168
    :cond_5
    :goto_2
    const/16 v0, 0xc

    .line 169
    .line 170
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_6

    .line 175
    .line 176
    int-to-float v0, v0

    .line 177
    iget-object v1, p0, Le/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 178
    .line 179
    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 180
    .line 181
    .line 182
    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 187
    .line 188
    const-class v0, Le/M;

    .line 189
    .line 190
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    const-string v1, " can only be used with a compatible window decor layout"

    .line 195
    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw p1

    .line 204
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 205
    .line 206
    if-eqz v0, :cond_9

    .line 207
    .line 208
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    goto :goto_3

    .line 217
    :cond_9
    const-string v0, "null"

    .line 218
    .line 219
    :goto_3
    const-string v1, "Can\'t make a decor toolbar out of "

    .line 220
    .line 221
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw p1
.end method

.method public final h0(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Le/M;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x4

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    move p1, v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Le/M;->f:Lk/m0;

    .line 12
    .line 13
    check-cast v1, Lk/i1;

    .line 14
    .line 15
    iget v2, v1, Lk/i1;->b:I

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    iput-boolean v3, p0, Le/M;->i:Z

    .line 19
    .line 20
    and-int/2addr p1, v0

    .line 21
    and-int/lit8 v0, v2, -0x5

    .line 22
    .line 23
    or-int/2addr p1, v0

    .line 24
    invoke-virtual {v1, p1}, Lk/i1;->a(I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final i0(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Le/M;->f:Lk/m0;

    .line 5
    .line 6
    check-cast p1, Lk/i1;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Le/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Lk/S0;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Le/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Lk/S0;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Le/M;->f:Lk/m0;

    .line 23
    .line 24
    check-cast p1, Lk/i1;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object p1, p0, Le/M;->f:Lk/m0;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Le/M;->f:Lk/m0;

    .line 35
    .line 36
    check-cast p1, Lk/i1;

    .line 37
    .line 38
    iget-object p1, p1, Lk/i1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setCollapsible(Z)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Le/M;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final j0(Z)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Le/M;->q:Z

    .line 2
    .line 3
    iget-boolean v1, p0, Le/M;->r:Z

    .line 4
    .line 5
    const-wide/16 v2, 0xfa

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    const/high16 v5, 0x3f800000    # 1.0f

    .line 9
    .line 10
    iget-object v6, p0, Le/M;->y:LA1/b;

    .line 11
    .line 12
    iget-object v7, p0, Le/M;->h:Landroid/view/View;

    .line 13
    .line 14
    const/4 v8, 0x1

    .line 15
    const/4 v9, 0x0

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :cond_0
    if-eqz v0, :cond_a

    .line 21
    .line 22
    iget-boolean v0, p0, Le/M;->s:Z

    .line 23
    .line 24
    if-eqz v0, :cond_15

    .line 25
    .line 26
    iput-boolean v9, p0, Le/M;->s:Z

    .line 27
    .line 28
    iget-object v0, p0, Le/M;->t:Li/j;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Li/j;->a()V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget v0, p0, Le/M;->o:I

    .line 36
    .line 37
    iget-object v1, p0, Le/M;->w:Le/K;

    .line 38
    .line 39
    if-nez v0, :cond_9

    .line 40
    .line 41
    iget-boolean v0, p0, Le/M;->u:Z

    .line 42
    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    if-eqz p1, :cond_9

    .line 46
    .line 47
    :cond_2
    iget-object v0, p0, Le/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 48
    .line 49
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Le/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 53
    .line 54
    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Li/j;

    .line 58
    .line 59
    invoke-direct {v0}, Li/j;-><init>()V

    .line 60
    .line 61
    .line 62
    iget-object v4, p0, Le/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 63
    .line 64
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    neg-int v4, v4

    .line 69
    int-to-float v4, v4

    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    filled-new-array {v9, v9}, [I

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget-object v5, p0, Le/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 77
    .line 78
    invoke-virtual {v5, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 79
    .line 80
    .line 81
    aget p1, p1, v8

    .line 82
    .line 83
    int-to-float p1, p1

    .line 84
    sub-float/2addr v4, p1

    .line 85
    :cond_3
    iget-object p1, p0, Le/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 86
    .line 87
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1, v6}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroidx/core/view/ViewPropertyAnimatorUpdateListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 96
    .line 97
    .line 98
    iget-boolean v5, v0, Li/j;->e:Z

    .line 99
    .line 100
    iget-object v6, v0, Li/j;->a:Ljava/util/ArrayList;

    .line 101
    .line 102
    if-nez v5, :cond_4

    .line 103
    .line 104
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    :cond_4
    iget-boolean p1, p0, Le/M;->p:Z

    .line 108
    .line 109
    if-eqz p1, :cond_5

    .line 110
    .line 111
    if-eqz v7, :cond_5

    .line 112
    .line 113
    invoke-static {v7}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p1, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iget-boolean v4, v0, Li/j;->e:Z

    .line 122
    .line 123
    if-nez v4, :cond_5

    .line 124
    .line 125
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    :cond_5
    iget-boolean p1, v0, Li/j;->e:Z

    .line 129
    .line 130
    if-nez p1, :cond_6

    .line 131
    .line 132
    sget-object v4, Le/M;->z:Landroid/view/animation/AccelerateInterpolator;

    .line 133
    .line 134
    iput-object v4, v0, Li/j;->c:Landroid/view/animation/Interpolator;

    .line 135
    .line 136
    :cond_6
    if-nez p1, :cond_7

    .line 137
    .line 138
    iput-wide v2, v0, Li/j;->b:J

    .line 139
    .line 140
    :cond_7
    if-nez p1, :cond_8

    .line 141
    .line 142
    iput-object v1, v0, Li/j;->d:Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 143
    .line 144
    :cond_8
    iput-object v0, p0, Le/M;->t:Li/j;

    .line 145
    .line 146
    invoke-virtual {v0}, Li/j;->b()V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_9
    invoke-virtual {v1, v4}, Le/K;->onAnimationEnd(Landroid/view/View;)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :cond_a
    :goto_0
    iget-boolean v0, p0, Le/M;->s:Z

    .line 155
    .line 156
    if-nez v0, :cond_15

    .line 157
    .line 158
    iput-boolean v8, p0, Le/M;->s:Z

    .line 159
    .line 160
    iget-object v0, p0, Le/M;->t:Li/j;

    .line 161
    .line 162
    if-eqz v0, :cond_b

    .line 163
    .line 164
    invoke-virtual {v0}, Li/j;->a()V

    .line 165
    .line 166
    .line 167
    :cond_b
    iget-object v0, p0, Le/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 168
    .line 169
    invoke-virtual {v0, v9}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 170
    .line 171
    .line 172
    iget v0, p0, Le/M;->o:I

    .line 173
    .line 174
    iget-object v1, p0, Le/M;->x:Le/K;

    .line 175
    .line 176
    const/4 v10, 0x0

    .line 177
    if-nez v0, :cond_13

    .line 178
    .line 179
    iget-boolean v0, p0, Le/M;->u:Z

    .line 180
    .line 181
    if-nez v0, :cond_c

    .line 182
    .line 183
    if-eqz p1, :cond_13

    .line 184
    .line 185
    :cond_c
    iget-object v0, p0, Le/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 186
    .line 187
    invoke-virtual {v0, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 188
    .line 189
    .line 190
    iget-object v0, p0, Le/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 191
    .line 192
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    neg-int v0, v0

    .line 197
    int-to-float v0, v0

    .line 198
    if-eqz p1, :cond_d

    .line 199
    .line 200
    filled-new-array {v9, v9}, [I

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    iget-object v4, p0, Le/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 205
    .line 206
    invoke-virtual {v4, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 207
    .line 208
    .line 209
    aget p1, p1, v8

    .line 210
    .line 211
    int-to-float p1, p1

    .line 212
    sub-float/2addr v0, p1

    .line 213
    :cond_d
    iget-object p1, p0, Le/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 214
    .line 215
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 216
    .line 217
    .line 218
    new-instance p1, Li/j;

    .line 219
    .line 220
    invoke-direct {p1}, Li/j;-><init>()V

    .line 221
    .line 222
    .line 223
    iget-object v4, p0, Le/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 224
    .line 225
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    invoke-virtual {v4, v10}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    invoke-virtual {v4, v6}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroidx/core/view/ViewPropertyAnimatorUpdateListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 234
    .line 235
    .line 236
    iget-boolean v5, p1, Li/j;->e:Z

    .line 237
    .line 238
    iget-object v6, p1, Li/j;->a:Ljava/util/ArrayList;

    .line 239
    .line 240
    if-nez v5, :cond_e

    .line 241
    .line 242
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    :cond_e
    iget-boolean v4, p0, Le/M;->p:Z

    .line 246
    .line 247
    if-eqz v4, :cond_f

    .line 248
    .line 249
    if-eqz v7, :cond_f

    .line 250
    .line 251
    invoke-virtual {v7, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 252
    .line 253
    .line 254
    invoke-static {v7}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-virtual {v0, v10}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    iget-boolean v4, p1, Li/j;->e:Z

    .line 263
    .line 264
    if-nez v4, :cond_f

    .line 265
    .line 266
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    :cond_f
    iget-boolean v0, p1, Li/j;->e:Z

    .line 270
    .line 271
    if-nez v0, :cond_10

    .line 272
    .line 273
    sget-object v4, Le/M;->A:Landroid/view/animation/DecelerateInterpolator;

    .line 274
    .line 275
    iput-object v4, p1, Li/j;->c:Landroid/view/animation/Interpolator;

    .line 276
    .line 277
    :cond_10
    if-nez v0, :cond_11

    .line 278
    .line 279
    iput-wide v2, p1, Li/j;->b:J

    .line 280
    .line 281
    :cond_11
    if-nez v0, :cond_12

    .line 282
    .line 283
    iput-object v1, p1, Li/j;->d:Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 284
    .line 285
    :cond_12
    iput-object p1, p0, Le/M;->t:Li/j;

    .line 286
    .line 287
    invoke-virtual {p1}, Li/j;->b()V

    .line 288
    .line 289
    .line 290
    goto :goto_1

    .line 291
    :cond_13
    iget-object p1, p0, Le/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 292
    .line 293
    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 294
    .line 295
    .line 296
    iget-object p1, p0, Le/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 297
    .line 298
    invoke-virtual {p1, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 299
    .line 300
    .line 301
    iget-boolean p1, p0, Le/M;->p:Z

    .line 302
    .line 303
    if-eqz p1, :cond_14

    .line 304
    .line 305
    if-eqz v7, :cond_14

    .line 306
    .line 307
    invoke-virtual {v7, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 308
    .line 309
    .line 310
    :cond_14
    invoke-virtual {v1, v4}, Le/K;->onAnimationEnd(Landroid/view/View;)V

    .line 311
    .line 312
    .line 313
    :goto_1
    iget-object p1, p0, Le/M;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 314
    .line 315
    if-eqz p1, :cond_15

    .line 316
    .line 317
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 318
    .line 319
    .line 320
    :cond_15
    return-void
.end method
