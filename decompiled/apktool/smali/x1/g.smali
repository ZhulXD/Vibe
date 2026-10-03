.class public final synthetic Lx1/g;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lcom/minhub/gamehub/editor/EditModeOverlay;

.field public final synthetic c:Lx1/a;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/editor/EditModeOverlay;Lx1/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx1/g;->b:Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 5
    .line 6
    iput-object p2, p0, Lx1/g;->c:Lx1/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    sget v0, Lcom/minhub/gamehub/editor/EditModeOverlay;->l:I

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lx1/g;->c:Lx1/a;

    .line 10
    .line 11
    iget-object v0, v0, Lx1/a;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Lx1/g;->b:Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    if-eqz v1, :cond_4

    .line 21
    .line 22
    if-eq v1, v3, :cond_2

    .line 23
    .line 24
    const/4 p1, 0x2

    .line 25
    if-eq v1, p1, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x3

    .line 28
    if-eq v1, p1, :cond_2

    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    return p1

    .line 32
    :cond_0
    iget-object p1, v2, Lcom/minhub/gamehub/editor/EditModeOverlay;->f:Landroid/view/View;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iget v1, v2, Lcom/minhub/gamehub/editor/EditModeOverlay;->i:F

    .line 41
    .line 42
    add-float/2addr v0, v1

    .line 43
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    iget v1, v2, Lcom/minhub/gamehub/editor/EditModeOverlay;->j:F

    .line 48
    .line 49
    add-float/2addr p2, v1

    .line 50
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    int-to-float v1, v1

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    int-to-float v4, v4

    .line 60
    sub-float/2addr v1, v4

    .line 61
    const/4 v4, 0x0

    .line 62
    invoke-static {v0, v4, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    int-to-float v0, v0

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    int-to-float v1, v1

    .line 79
    sub-float/2addr v0, v1

    .line 80
    invoke-static {p2, v4, v0}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->setY(F)V

    .line 85
    .line 86
    .line 87
    iget-object p1, v2, Lcom/minhub/gamehub/editor/EditModeOverlay;->e:Lkotlin/jvm/functions/Function1;

    .line 88
    .line 89
    if-eqz p1, :cond_1

    .line 90
    .line 91
    invoke-virtual {v2}, Lcom/minhub/gamehub/editor/EditModeOverlay;->getCurrentConfigs()Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    :cond_1
    return v3

    .line 99
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    iget v1, v2, Lcom/minhub/gamehub/editor/EditModeOverlay;->g:F

    .line 104
    .line 105
    sub-float/2addr p1, v1

    .line 106
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    iget v4, v2, Lcom/minhub/gamehub/editor/EditModeOverlay;->h:F

    .line 111
    .line 112
    sub-float/2addr v1, v4

    .line 113
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    if-ne p2, v3, :cond_3

    .line 118
    .line 119
    iget p2, v2, Lcom/minhub/gamehub/editor/EditModeOverlay;->k:I

    .line 120
    .line 121
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    int-to-float p2, p2

    .line 126
    cmpg-float p1, p1, p2

    .line 127
    .line 128
    if-gtz p1, :cond_3

    .line 129
    .line 130
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    cmpg-float p1, p1, p2

    .line 135
    .line 136
    if-gtz p1, :cond_3

    .line 137
    .line 138
    invoke-virtual {v2, v0}, Lcom/minhub/gamehub/editor/EditModeOverlay;->e(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :cond_3
    const/4 p1, 0x0

    .line 142
    iput-object p1, v2, Lcom/minhub/gamehub/editor/EditModeOverlay;->f:Landroid/view/View;

    .line 143
    .line 144
    return v3

    .line 145
    :cond_4
    iput-object p1, v2, Lcom/minhub/gamehub/editor/EditModeOverlay;->f:Landroid/view/View;

    .line 146
    .line 147
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    iput v0, v2, Lcom/minhub/gamehub/editor/EditModeOverlay;->g:F

    .line 152
    .line 153
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    iput v0, v2, Lcom/minhub/gamehub/editor/EditModeOverlay;->h:F

    .line 158
    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    sub-float/2addr v0, v1

    .line 168
    iput v0, v2, Lcom/minhub/gamehub/editor/EditModeOverlay;->i:F

    .line 169
    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 175
    .line 176
    .line 177
    move-result p2

    .line 178
    sub-float/2addr p1, p2

    .line 179
    iput p1, v2, Lcom/minhub/gamehub/editor/EditModeOverlay;->j:F

    .line 180
    .line 181
    return v3
.end method
