.class public final Lcom/minhub/gamehub/keyboard/VirtualKeyboardView;
.super Landroid/view/View;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\r\u0018\u00002\u00020\u0001:\u0001\u0016B\u001d\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R0\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R0\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u000c\u001a\u0004\u0008\u0013\u0010\u000e\"\u0004\u0008\u0014\u0010\u0010\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/minhub/gamehub/keyboard/VirtualKeyboardView;",
        "Landroid/view/View;",
        "Landroid/content/Context;",
        "ctx",
        "Landroid/util/AttributeSet;",
        "attr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Lkotlin/Function1;",
        "LF1/f;",
        "",
        "b",
        "Lkotlin/jvm/functions/Function1;",
        "getOnKeyPress",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnKeyPress",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onKeyPress",
        "c",
        "getOnKeyRelease",
        "setOnKeyRelease",
        "onKeyRelease",
        "F1/g",
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
        "SMAP\nVirtualKeyboardView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VirtualKeyboardView.kt\ncom/minhub/gamehub/keyboard/VirtualKeyboardView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,169:1\n1869#2:170\n1869#2,2:172\n1870#2:174\n1869#2,2:175\n1869#2,2:177\n1#3:171\n*S KotlinDebug\n*F\n+ 1 VirtualKeyboardView.kt\ncom/minhub/gamehub/keyboard/VirtualKeyboardView\n*L\n68#1:170\n74#1:172,2\n68#1:174\n94#1:175,2\n112#1:177,2\n*E\n"
    }
.end annotation


# instance fields
.field public b:Lkotlin/jvm/functions/Function1;

.field public c:Lkotlin/jvm/functions/Function1;

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/LinkedHashSet;

.field public f:LF1/f;

.field public final g:Landroid/graphics/Paint;

.field public final h:Landroid/graphics/Paint;

.field public final i:Landroid/graphics/Paint;

.field public final j:Landroid/graphics/Paint;

.field public final k:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
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
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/minhub/gamehub/keyboard/VirtualKeyboardView;->d:Ljava/util/ArrayList;

    .line 15
    .line 16
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/minhub/gamehub/keyboard/VirtualKeyboardView;->e:Ljava/util/LinkedHashSet;

    .line 22
    .line 23
    new-instance p1, Landroid/graphics/Paint;

    .line 24
    .line 25
    const/4 p2, 0x1

    .line 26
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 27
    .line 28
    .line 29
    const-string v0, "#2a2a3e"

    .line 30
    .line 31
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/minhub/gamehub/keyboard/VirtualKeyboardView;->g:Landroid/graphics/Paint;

    .line 39
    .line 40
    new-instance p1, Landroid/graphics/Paint;

    .line 41
    .line 42
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 43
    .line 44
    .line 45
    const-string v0, "#3a3a5e"

    .line 46
    .line 47
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lcom/minhub/gamehub/keyboard/VirtualKeyboardView;->h:Landroid/graphics/Paint;

    .line 55
    .line 56
    new-instance p1, Landroid/graphics/Paint;

    .line 57
    .line 58
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 59
    .line 60
    .line 61
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    .line 65
    .line 66
    const/high16 v0, 0x3f800000    # 1.0f

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 69
    .line 70
    .line 71
    const-string v0, "#404055"

    .line 72
    .line 73
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    .line 79
    .line 80
    iput-object p1, p0, Lcom/minhub/gamehub/keyboard/VirtualKeyboardView;->i:Landroid/graphics/Paint;

    .line 81
    .line 82
    new-instance p1, Landroid/graphics/Paint;

    .line 83
    .line 84
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 85
    .line 86
    .line 87
    const/4 v0, -0x1

    .line 88
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    .line 90
    .line 91
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 94
    .line 95
    .line 96
    const/high16 v1, 0x41c00000    # 24.0f

    .line 97
    .line 98
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 99
    .line 100
    .line 101
    iput-object p1, p0, Lcom/minhub/gamehub/keyboard/VirtualKeyboardView;->j:Landroid/graphics/Paint;

    .line 102
    .line 103
    new-instance p1, Landroid/graphics/Paint;

    .line 104
    .line 105
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 106
    .line 107
    .line 108
    const-string p2, "#AAAAAA"

    .line 109
    .line 110
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 118
    .line 119
    .line 120
    const/high16 p2, 0x41900000    # 18.0f

    .line 121
    .line 122
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 123
    .line 124
    .line 125
    iput-object p1, p0, Lcom/minhub/gamehub/keyboard/VirtualKeyboardView;->k:Landroid/graphics/Paint;

    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/minhub/gamehub/keyboard/VirtualKeyboardView;->a()V

    .line 128
    .line 129
    .line 130
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/keyboard/VirtualKeyboardView;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    sget-object v1, LF1/e;->h:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/high16 v2, 0x41a00000    # 20.0f

    .line 13
    .line 14
    move v3, v2

    .line 15
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/high16 v5, 0x40800000    # 4.0f

    .line 20
    .line 21
    if-eqz v4, :cond_2

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    const-wide/16 v7, 0x0

    .line 34
    .line 35
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v9

    .line 39
    if-eqz v9, :cond_0

    .line 40
    .line 41
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    check-cast v9, LF1/f;

    .line 46
    .line 47
    iget v9, v9, LF1/f;->c:F

    .line 48
    .line 49
    float-to-double v9, v9

    .line 50
    add-double/2addr v7, v9

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    double-to-float v6, v7

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    int-to-float v7, v7

    .line 58
    const/high16 v8, 0x42000000    # 32.0f

    .line 59
    .line 60
    sub-float/2addr v7, v8

    .line 61
    div-float/2addr v7, v6

    .line 62
    invoke-static {v7}, Lkotlin/ranges/RangesKt;->a(F)F

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    const/high16 v7, 0x41800000    # 16.0f

    .line 71
    .line 72
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    const/high16 v9, 0x42400000    # 48.0f

    .line 77
    .line 78
    if-eqz v8, :cond_1

    .line 79
    .line 80
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    check-cast v8, LF1/f;

    .line 85
    .line 86
    iget v10, v8, LF1/f;->c:F

    .line 87
    .line 88
    mul-float/2addr v10, v6

    .line 89
    new-instance v11, Landroid/graphics/RectF;

    .line 90
    .line 91
    add-float/2addr v10, v7

    .line 92
    sub-float v12, v10, v5

    .line 93
    .line 94
    add-float/2addr v9, v3

    .line 95
    sub-float/2addr v9, v5

    .line 96
    invoke-direct {v11, v7, v3, v12, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 97
    .line 98
    .line 99
    new-instance v7, LF1/g;

    .line 100
    .line 101
    invoke-direct {v7, v8, v11}, LF1/g;-><init>(LF1/f;Landroid/graphics/RectF;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move v7, v10

    .line 108
    goto :goto_2

    .line 109
    :cond_1
    add-float/2addr v3, v9

    .line 110
    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    int-to-float v1, v1

    .line 116
    const/high16 v3, 0x430c0000    # 140.0f

    .line 117
    .line 118
    sub-float/2addr v1, v3

    .line 119
    sget-object v3, LF1/e;->g:Ljava/util/List;

    .line 120
    .line 121
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-eqz v4, :cond_3

    .line 130
    .line 131
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    check-cast v4, LF1/f;

    .line 136
    .line 137
    new-instance v6, Landroid/graphics/RectF;

    .line 138
    .line 139
    const/high16 v7, 0x42200000    # 40.0f

    .line 140
    .line 141
    add-float/2addr v7, v1

    .line 142
    const/high16 v8, 0x42100000    # 36.0f

    .line 143
    .line 144
    add-float/2addr v8, v2

    .line 145
    sub-float v9, v8, v5

    .line 146
    .line 147
    invoke-direct {v6, v1, v2, v7, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 148
    .line 149
    .line 150
    new-instance v2, LF1/g;

    .line 151
    .line 152
    invoke-direct {v2, v4, v6}, LF1/g;-><init>(LF1/f;Landroid/graphics/RectF;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move v2, v8

    .line 159
    goto :goto_3

    .line 160
    :cond_3
    return-void
.end method

.method public final getOnKeyPress()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "LF1/f;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/keyboard/VirtualKeyboardView;->b:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOnKeyRelease()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "LF1/f;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/keyboard/VirtualKeyboardView;->c:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    const-string v0, "canvas"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/minhub/gamehub/keyboard/VirtualKeyboardView;->d:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_3

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    check-cast v3, LF1/g;

    .line 22
    .line 23
    iget-object v4, v3, LF1/g;->a:LF1/f;

    .line 24
    .line 25
    iget-object v3, v3, LF1/g;->b:Landroid/graphics/RectF;

    .line 26
    .line 27
    iget-object v5, v4, LF1/f;->b:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v6, v4, LF1/f;->a:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v7, p0, Lcom/minhub/gamehub/keyboard/VirtualKeyboardView;->e:Ljava/util/LinkedHashSet;

    .line 32
    .line 33
    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_0

    .line 38
    .line 39
    iget-object v5, p0, Lcom/minhub/gamehub/keyboard/VirtualKeyboardView;->h:Landroid/graphics/Paint;

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    iget-object v5, p0, Lcom/minhub/gamehub/keyboard/VirtualKeyboardView;->g:Landroid/graphics/Paint;

    .line 43
    .line 44
    :goto_1
    const/high16 v7, 0x40c00000    # 6.0f

    .line 45
    .line 46
    invoke-virtual {p1, v3, v7, v7, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 47
    .line 48
    .line 49
    iget-object v5, p0, Lcom/minhub/gamehub/keyboard/VirtualKeyboardView;->i:Landroid/graphics/Paint;

    .line 50
    .line 51
    invoke-virtual {p1, v3, v7, v7, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 52
    .line 53
    .line 54
    iget-boolean v4, v4, LF1/f;->d:Z

    .line 55
    .line 56
    if-eqz v4, :cond_1

    .line 57
    .line 58
    iget-object v4, p0, Lcom/minhub/gamehub/keyboard/VirtualKeyboardView;->k:Landroid/graphics/Paint;

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_1
    iget-object v4, p0, Lcom/minhub/gamehub/keyboard/VirtualKeyboardView;->j:Landroid/graphics/Paint;

    .line 62
    .line 63
    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    const/4 v7, 0x3

    .line 68
    if-le v5, v7, :cond_2

    .line 69
    .line 70
    const/high16 v5, 0x41800000    # 16.0f

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_2
    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    :goto_3
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    const v8, 0x3eb33333    # 0.35f

    .line 89
    .line 90
    .line 91
    mul-float/2addr v5, v8

    .line 92
    add-float/2addr v5, v3

    .line 93
    invoke-virtual {p1, v6, v7, v5, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/minhub/gamehub/keyboard/VirtualKeyboardView;->a()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    iget-object v4, p0, Lcom/minhub/gamehub/keyboard/VirtualKeyboardView;->e:Ljava/util/LinkedHashSet;

    .line 21
    .line 22
    const/4 v5, 0x1

    .line 23
    if-eqz p1, :cond_3

    .line 24
    .line 25
    if-eq p1, v5, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x3

    .line 28
    if-eq p1, v0, :cond_0

    .line 29
    .line 30
    return v2

    .line 31
    :cond_0
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 32
    .line 33
    .line 34
    iput-object v3, p0, Lcom/minhub/gamehub/keyboard/VirtualKeyboardView;->f:LF1/f;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 37
    .line 38
    .line 39
    return v5

    .line 40
    :cond_1
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/minhub/gamehub/keyboard/VirtualKeyboardView;->f:LF1/f;

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, Lcom/minhub/gamehub/keyboard/VirtualKeyboardView;->c:Lkotlin/jvm/functions/Function1;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :cond_2
    iput-object v3, p0, Lcom/minhub/gamehub/keyboard/VirtualKeyboardView;->f:LF1/f;

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 57
    .line 58
    .line 59
    return v5

    .line 60
    :cond_3
    iget-object p1, p0, Lcom/minhub/gamehub/keyboard/VirtualKeyboardView;->d:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    :cond_4
    if-ge v2, v6, :cond_5

    .line 67
    .line 68
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    add-int/lit8 v2, v2, 0x1

    .line 73
    .line 74
    move-object v8, v7

    .line 75
    check-cast v8, LF1/g;

    .line 76
    .line 77
    iget-object v8, v8, LF1/g;->b:Landroid/graphics/RectF;

    .line 78
    .line 79
    invoke-virtual {v8, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    if-eqz v8, :cond_4

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    move-object v7, v3

    .line 87
    :goto_0
    check-cast v7, LF1/g;

    .line 88
    .line 89
    if-eqz v7, :cond_6

    .line 90
    .line 91
    iget-object v3, v7, LF1/g;->a:LF1/f;

    .line 92
    .line 93
    :cond_6
    if-eqz v3, :cond_8

    .line 94
    .line 95
    iget-object p1, v3, LF1/f;->b:Ljava/lang/String;

    .line 96
    .line 97
    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    iput-object v3, p0, Lcom/minhub/gamehub/keyboard/VirtualKeyboardView;->f:LF1/f;

    .line 101
    .line 102
    iget-object p1, p0, Lcom/minhub/gamehub/keyboard/VirtualKeyboardView;->b:Lkotlin/jvm/functions/Function1;

    .line 103
    .line 104
    if-eqz p1, :cond_7

    .line 105
    .line 106
    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 110
    .line 111
    .line 112
    :cond_8
    return v5
.end method

.method public final setOnKeyPress(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "LF1/f;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/minhub/gamehub/keyboard/VirtualKeyboardView;->b:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public final setOnKeyRelease(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "LF1/f;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/minhub/gamehub/keyboard/VirtualKeyboardView;->c:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method
