.class public final Lcom/minhub/gamehub/editor/EditModeOverlay;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0017B\u001d\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J#\u0010\u000c\u001a\u00020\n2\u0014\u0010\u000b\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0004\u0012\u00020\n0\u0008\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\'\u0010\u0010\u001a\u00020\n2\u0018\u0010\u000b\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0004\u0012\u00020\n0\u0008\u00a2\u0006\u0004\u0008\u0010\u0010\rJ\u000f\u0010\u0011\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0013\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/minhub/gamehub/editor/EditModeOverlay;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "ctx",
        "Landroid/util/AttributeSet;",
        "attr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Lkotlin/Function1;",
        "",
        "",
        "listener",
        "setOnButtonSelected",
        "(Lkotlin/jvm/functions/Function1;)V",
        "",
        "Lx1/a;",
        "setOnLayoutChanged",
        "getSelectedButtonId",
        "()Ljava/lang/String;",
        "getSelectedButtonConfig",
        "()Lx1/a;",
        "getCurrentConfigs",
        "()Ljava/util/List;",
        "x1/h",
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
        "SMAP\nEditModeOverlay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditModeOverlay.kt\ncom/minhub/gamehub/editor/EditModeOverlay\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,261:1\n1#2:262\n774#3:263\n865#3,2:264\n1869#3,2:266\n1563#3:268\n1634#3,3:269\n216#4,2:272\n*S KotlinDebug\n*F\n+ 1 EditModeOverlay.kt\ncom/minhub/gamehub/editor/EditModeOverlay\n*L\n75#1:263\n75#1:264,2\n75#1:266,2\n99#1:268\n99#1:269,3\n216#1:272,2\n*E\n"
    }
.end annotation


# static fields
.field public static final synthetic l:I


# instance fields
.field public final b:Ljava/util/LinkedHashMap;

.field public c:Ljava/lang/String;

.field public d:Lkotlin/jvm/functions/Function1;

.field public e:Lkotlin/jvm/functions/Function1;

.field public f:Landroid/view/View;

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public final k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "ctx"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/minhub/gamehub/editor/EditModeOverlay;->b:Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput p1, p0, Lcom/minhub/gamehub/editor/EditModeOverlay;->k:I

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/editor/EditModeOverlay;->b:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/String;

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lx1/h;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/minhub/gamehub/editor/EditModeOverlay;->c:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    iget-object v2, v1, Lx1/h;->b:LB1/m;

    .line 44
    .line 45
    const v3, 0x3f8a3d71    # 1.08f

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 49
    .line 50
    .line 51
    iget-object v1, v1, Lx1/h;->b:LB1/m;

    .line 52
    .line 53
    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object v2, v1, Lx1/h;->b:LB1/m;

    .line 58
    .line 59
    const/high16 v3, 0x3f800000    # 1.0f

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 62
    .line 63
    .line 64
    iget-object v1, v1, Lx1/h;->b:LB1/m;

    .line 65
    .line 66
    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    return-void
.end method

.method public final b(Lx1/a;FF)Lx1/h;
    .locals 5

    .line 1
    new-instance v0, LB1/m;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "getContext(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, LB1/m;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p1, Lx1/a;->b:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v2, p1, Lx1/a;->a:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, LB1/m;->setLabel(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    iget-object v1, p1, Lx1/a;->i:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    const v1, -0x777778

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {v0, v1}, LB1/m;->setBtnColor(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lx1/a;->b()LB1/a;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, LB1/m;->setShape(LB1/a;)V

    .line 40
    .line 41
    .line 42
    iget v1, p1, Lx1/a;->j:F

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 45
    .line 46
    .line 47
    iget v1, p1, Lx1/a;->f:I

    .line 48
    .line 49
    invoke-virtual {p0, v1}, Lcom/minhub/gamehub/editor/EditModeOverlay;->c(I)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    iget v3, p1, Lx1/a;->g:I

    .line 54
    .line 55
    invoke-virtual {p0, v3}, Lcom/minhub/gamehub/editor/EditModeOverlay;->c(I)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 60
    .line 61
    invoke-direct {v4, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    .line 66
    .line 67
    new-instance v1, Lx1/g;

    .line 68
    .line 69
    invoke-direct {v1, p0, p1}, Lx1/g;-><init>(Lcom/minhub/gamehub/editor/EditModeOverlay;Lx1/a;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 73
    .line 74
    .line 75
    new-instance v1, LC1/j;

    .line 76
    .line 77
    const/16 v3, 0x19

    .line 78
    .line 79
    invoke-direct {v1, v3, p0, p1}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    .line 84
    .line 85
    new-instance v1, Landroid/widget/TextView;

    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 92
    .line 93
    .line 94
    const-string v3, "btn_"

    .line 95
    .line 96
    const-string v4, ""

    .line 97
    .line 98
    invoke-static {v2, v3, v4}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 103
    .line 104
    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    const-string v4, "toUpperCase(...)"

    .line 109
    .line 110
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    const/high16 v3, 0x41000000    # 8.0f

    .line 117
    .line 118
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 119
    .line 120
    .line 121
    const/4 v3, -0x1

    .line 122
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    .line 124
    .line 125
    const-string v3, "#66000000"

    .line 126
    .line 127
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 132
    .line 133
    .line 134
    const/4 v3, 0x4

    .line 135
    const/4 v4, 0x2

    .line 136
    invoke-virtual {v1, v3, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 137
    .line 138
    .line 139
    iget v1, p1, Lx1/a;->d:F

    .line 140
    .line 141
    mul-float/2addr v1, p2

    .line 142
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 147
    .line 148
    int-to-float p2, p2

    .line 149
    const/high16 v3, 0x40000000    # 2.0f

    .line 150
    .line 151
    div-float/2addr p2, v3

    .line 152
    sub-float/2addr v1, p2

    .line 153
    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 154
    .line 155
    .line 156
    iget p2, p1, Lx1/a;->e:F

    .line 157
    .line 158
    mul-float/2addr p2, p3

    .line 159
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 160
    .line 161
    .line 162
    move-result-object p3

    .line 163
    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 164
    .line 165
    int-to-float p3, p3

    .line 166
    div-float/2addr p3, v3

    .line 167
    sub-float/2addr p2, p3

    .line 168
    invoke-virtual {v0, p2}, Landroid/view/View;->setY(F)V

    .line 169
    .line 170
    .line 171
    new-instance p2, Lx1/h;

    .line 172
    .line 173
    invoke-direct {p2, v2, v0, p1}, Lx1/h;-><init>(Ljava/lang/String;LB1/m;Lx1/a;)V

    .line 174
    .line 175
    .line 176
    return-object p2
.end method

.method public final c(I)I
    .locals 2

    .line 1
    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

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
    const/4 v1, 0x1

    .line 11
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    float-to-int p1, p1

    .line 16
    return p1
.end method

.method public final d(Ljava/util/List;)V
    .locals 7

    .line 1
    const-string v0, "configs"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_5

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/minhub/gamehub/editor/EditModeOverlay;->c:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/minhub/gamehub/editor/EditModeOverlay;->f:Landroid/view/View;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/minhub/gamehub/editor/EditModeOverlay;->d:Lkotlin/jvm/functions/Function1;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/minhub/gamehub/editor/EditModeOverlay;->b:Ljava/util/LinkedHashMap;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    int-to-float v1, v1

    .line 44
    const/high16 v2, 0x3f800000    # 1.0f

    .line 45
    .line 46
    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    int-to-float v3, v3

    .line 55
    invoke-static {v3, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    new-instance v3, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_3

    .line 73
    .line 74
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    move-object v5, v4

    .line 79
    check-cast v5, Lx1/a;

    .line 80
    .line 81
    iget-boolean v5, v5, Lx1/a;->k:Z

    .line 82
    .line 83
    if-eqz v5, :cond_2

    .line 84
    .line 85
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    const/4 v4, 0x0

    .line 94
    :goto_1
    if-ge v4, p1, :cond_4

    .line 95
    .line 96
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    add-int/lit8 v4, v4, 0x1

    .line 101
    .line 102
    check-cast v5, Lx1/a;

    .line 103
    .line 104
    invoke-virtual {p0, v5, v1, v2}, Lcom/minhub/gamehub/editor/EditModeOverlay;->b(Lx1/a;FF)Lx1/h;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    iget-object v5, v5, Lx1/a;->a:Ljava/lang/String;

    .line 109
    .line 110
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    iget-object v5, v6, Lx1/h;->b:LB1/m;

    .line 114
    .line 115
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_4
    return-void

    .line 120
    :cond_5
    :goto_2
    new-instance v0, LC1/k;

    .line 121
    .line 122
    const/16 v1, 0x13

    .line 123
    .line 124
    invoke-direct {v0, v1, p0, p1}, LC1/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/minhub/gamehub/editor/EditModeOverlay;->c:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/minhub/gamehub/editor/EditModeOverlay;->d:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/minhub/gamehub/editor/EditModeOverlay;->a()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final f(Ljava/lang/String;Lx1/a;)V
    .locals 7

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "newConfig"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/minhub/gamehub/editor/EditModeOverlay;->b:Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lx1/h;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const-string v0, "<set-?>"

    .line 22
    .line 23
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-object p2, p1, Lx1/h;->c:Lx1/a;

    .line 27
    .line 28
    iget-object p1, p1, Lx1/h;->b:LB1/m;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    int-to-float v1, v1

    .line 39
    const/high16 v2, 0x40000000    # 2.0f

    .line 40
    .line 41
    div-float/2addr v1, v2

    .line 42
    add-float/2addr v1, v0

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    int-to-float v3, v3

    .line 52
    div-float/2addr v3, v2

    .line 53
    add-float/2addr v3, v0

    .line 54
    iget-object v0, p2, Lx1/a;->b:Ljava/lang/String;

    .line 55
    .line 56
    :try_start_0
    iget-object v2, p2, Lx1/a;->i:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_0

    .line 63
    :catch_0
    const v2, -0x777778

    .line 64
    .line 65
    .line 66
    :goto_0
    invoke-virtual {p2}, Lx1/a;->b()LB1/a;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    iget v5, p2, Lx1/a;->j:F

    .line 71
    .line 72
    const-string v6, "newLabel"

    .line 73
    .line 74
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v6, "newShape"

    .line 78
    .line 79
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iput-object v0, p1, LB1/m;->b:Ljava/lang/String;

    .line 83
    .line 84
    iput v2, p1, LB1/m;->c:I

    .line 85
    .line 86
    iput-object v4, p1, LB1/m;->d:LB1/a;

    .line 87
    .line 88
    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iget v2, p2, Lx1/a;->f:I

    .line 102
    .line 103
    invoke-virtual {p0, v2}, Lcom/minhub/gamehub/editor/EditModeOverlay;->c(I)I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 108
    .line 109
    iget p2, p2, Lx1/a;->g:I

    .line 110
    .line 111
    invoke-virtual {p0, p2}, Lcom/minhub/gamehub/editor/EditModeOverlay;->c(I)I

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    .line 119
    .line 120
    new-instance p2, Lx1/f;

    .line 121
    .line 122
    invoke-direct {p2, p1, v1, p0, v3}, Lx1/f;-><init>(LB1/m;FLcom/minhub/gamehub/editor/EditModeOverlay;F)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 126
    .line 127
    .line 128
    :cond_0
    return-void
.end method

.method public final g(Lkotlin/jvm/functions/Function1;)V
    .locals 2

    .line 1
    const-string v0, "transform"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/minhub/gamehub/editor/EditModeOverlay;->c:Ljava/lang/String;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/minhub/gamehub/editor/EditModeOverlay;->b:Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lx1/h;

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    iget-object v1, v1, Lx1/h;->c:Lx1/a;

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lx1/a;

    .line 31
    .line 32
    invoke-virtual {p0, v0, p1}, Lcom/minhub/gamehub/editor/EditModeOverlay;->f(Ljava/lang/String;Lx1/a;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    :goto_0
    return-void
.end method

.method public final getCurrentConfigs()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lx1/a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    int-to-float v2, v2

    .line 17
    invoke-static {v2, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    move-object/from16 v2, p0

    .line 22
    .line 23
    iget-object v3, v2, Lcom/minhub/gamehub/editor/EditModeOverlay;->b:Ljava/util/LinkedHashMap;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    new-instance v4, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_0

    .line 47
    .line 48
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    check-cast v5, Lx1/h;

    .line 53
    .line 54
    iget-object v6, v5, Lx1/h;->c:Lx1/a;

    .line 55
    .line 56
    iget-object v5, v5, Lx1/h;->b:LB1/m;

    .line 57
    .line 58
    invoke-virtual {v5}, Landroid/view/View;->getX()F

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    int-to-float v8, v8

    .line 67
    const/high16 v9, 0x40000000    # 2.0f

    .line 68
    .line 69
    div-float/2addr v8, v9

    .line 70
    add-float/2addr v8, v7

    .line 71
    div-float/2addr v8, v0

    .line 72
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    int-to-float v5, v5

    .line 81
    div-float/2addr v5, v9

    .line 82
    add-float/2addr v5, v7

    .line 83
    div-float v9, v5, v1

    .line 84
    .line 85
    const/4 v15, 0x0

    .line 86
    const/16 v16, 0x7e7

    .line 87
    .line 88
    const/4 v7, 0x0

    .line 89
    const/4 v10, 0x0

    .line 90
    const/4 v11, 0x0

    .line 91
    const/4 v12, 0x0

    .line 92
    const/4 v13, 0x0

    .line 93
    const/4 v14, 0x0

    .line 94
    invoke-static/range {v6 .. v16}, Lx1/a;->a(Lx1/a;Ljava/lang/String;FFIILjava/lang/String;Ljava/lang/String;FZI)Lx1/a;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_0
    return-object v4
.end method

.method public final getSelectedButtonConfig()Lx1/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/editor/EditModeOverlay;->c:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/minhub/gamehub/editor/EditModeOverlay;->b:Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lx1/h;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, v0, Lx1/h;->c:Lx1/a;

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return-object v0
.end method

.method public final getSelectedButtonId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/editor/EditModeOverlay;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setOnButtonSelected(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/minhub/gamehub/editor/EditModeOverlay;->d:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    return-void
.end method

.method public final setOnLayoutChanged(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lx1/a;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/minhub/gamehub/editor/EditModeOverlay;->e:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    return-void
.end method
