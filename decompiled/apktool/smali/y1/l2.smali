.class public final synthetic Ly1/l2;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic c:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic d:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic e:Landroid/widget/FrameLayout$LayoutParams;

.field public final synthetic f:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic g:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic h:I

.field public final synthetic i:Landroid/view/ViewGroup;

.field public final synthetic j:I

.field public final synthetic k:Lcom/minhub/gamehub/game/VxAceGameActivity;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroid/widget/FrameLayout$LayoutParams;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;ILandroid/view/ViewGroup;ILcom/minhub/gamehub/game/VxAceGameActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly1/l2;->b:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 5
    .line 6
    iput-object p2, p0, Ly1/l2;->c:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 7
    .line 8
    iput-object p3, p0, Ly1/l2;->d:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 9
    .line 10
    iput-object p4, p0, Ly1/l2;->e:Landroid/widget/FrameLayout$LayoutParams;

    .line 11
    .line 12
    iput-object p5, p0, Ly1/l2;->f:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 13
    .line 14
    iput-object p6, p0, Ly1/l2;->g:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 15
    .line 16
    iput p7, p0, Ly1/l2;->h:I

    .line 17
    .line 18
    iput-object p8, p0, Ly1/l2;->i:Landroid/view/ViewGroup;

    .line 19
    .line 20
    iput p9, p0, Ly1/l2;->j:I

    .line 21
    .line 22
    iput-object p10, p0, Ly1/l2;->k:Lcom/minhub/gamehub/game/VxAceGameActivity;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Ly1/l2;->b:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 6
    .line 7
    iget-object v2, p0, Ly1/l2;->c:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 8
    .line 9
    iget-object v3, p0, Ly1/l2;->d:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 10
    .line 11
    iget-object v4, p0, Ly1/l2;->e:Landroid/widget/FrameLayout$LayoutParams;

    .line 12
    .line 13
    iget-object v5, p0, Ly1/l2;->f:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 14
    .line 15
    iget-object v6, p0, Ly1/l2;->g:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 16
    .line 17
    const/4 v7, 0x1

    .line 18
    const/4 v8, 0x0

    .line 19
    if-eqz v0, :cond_6

    .line 20
    .line 21
    if-eq v0, v7, :cond_3

    .line 22
    .line 23
    const/4 v9, 0x2

    .line 24
    if-eq v0, v9, :cond_0

    .line 25
    .line 26
    return v8

    .line 27
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget v1, v1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 32
    .line 33
    sub-float/2addr v0, v1

    .line 34
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    iget v1, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 39
    .line 40
    sub-float/2addr p2, v1

    .line 41
    iget-boolean v1, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 42
    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    iget v2, p0, Ly1/l2;->h:I

    .line 50
    .line 51
    int-to-float v2, v2

    .line 52
    cmpl-float v1, v1, v2

    .line 53
    .line 54
    if-gtz v1, :cond_1

    .line 55
    .line 56
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    cmpl-float v1, v1, v2

    .line 61
    .line 62
    if-lez v1, :cond_2

    .line 63
    .line 64
    :cond_1
    iput-boolean v7, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 65
    .line 66
    :cond_2
    iget-boolean v1, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 67
    .line 68
    if-eqz v1, :cond_5

    .line 69
    .line 70
    iget v1, v3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 71
    .line 72
    add-float/2addr v1, v0

    .line 73
    float-to-int v0, v1

    .line 74
    iget-object v1, p0, Ly1/l2;->i:Landroid/view/ViewGroup;

    .line 75
    .line 76
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    iget v3, p0, Ly1/l2;->j:I

    .line 81
    .line 82
    sub-int/2addr v2, v3

    .line 83
    invoke-static {v2, v8}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    invoke-static {v0, v8, v2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 92
    .line 93
    iget v0, v5, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 94
    .line 95
    add-float/2addr v0, p2

    .line 96
    float-to-int p2, v0

    .line 97
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    sub-int/2addr v0, v3

    .line 102
    invoke-static {v0, v8}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    invoke-static {p2, v8, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    iput p2, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 111
    .line 112
    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    .line 114
    .line 115
    return v7

    .line 116
    :cond_3
    iget-boolean p1, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 117
    .line 118
    if-nez p1, :cond_5

    .line 119
    .line 120
    sget-object p1, Ly1/f2;->b:[Ly1/f2;

    .line 121
    .line 122
    sget-object p1, Ly1/m2;->a:[I

    .line 123
    .line 124
    aget p1, p1, v8

    .line 125
    .line 126
    if-ne p1, v7, :cond_4

    .line 127
    .line 128
    iget-object p1, p0, Ly1/l2;->k:Lcom/minhub/gamehub/game/VxAceGameActivity;

    .line 129
    .line 130
    invoke-static {p1}, Ly1/k2;->e(Lcom/minhub/gamehub/game/VxAceGameActivity;)V

    .line 131
    .line 132
    .line 133
    return v7

    .line 134
    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 135
    .line 136
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 137
    .line 138
    .line 139
    throw p1

    .line 140
    :cond_5
    return v7

    .line 141
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    iput p1, v1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 146
    .line 147
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    iput p1, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 152
    .line 153
    iget p1, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 154
    .line 155
    int-to-float p1, p1

    .line 156
    iput p1, v3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 157
    .line 158
    iget p1, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 159
    .line 160
    int-to-float p1, p1

    .line 161
    iput p1, v5, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 162
    .line 163
    iput-boolean v8, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 164
    .line 165
    return v7
.end method
