.class public abstract LD/b;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final k:Landroid/graphics/Rect;

.field public static final l:LY0/e;

.field public static final m:LY0/e;


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public final b:Landroid/graphics/Rect;

.field public final c:Landroid/graphics/Rect;

.field public final d:[I

.field public final e:Landroid/view/accessibility/AccessibilityManager;

.field public final f:Landroid/view/View;

.field public g:LD/a;

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    const v1, 0x7fffffff

    .line 4
    .line 5
    .line 6
    const/high16 v2, -0x80000000

    .line 7
    .line 8
    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 9
    .line 10
    .line 11
    sput-object v0, LD/b;->k:Landroid/graphics/Rect;

    .line 12
    .line 13
    new-instance v0, LY0/e;

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    invoke-direct {v0, v1}, LY0/e;-><init>(I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, LD/b;->l:LY0/e;

    .line 20
    .line 21
    new-instance v0, LY0/e;

    .line 22
    .line 23
    const/4 v1, 0x4

    .line 24
    invoke-direct {v0, v1}, LY0/e;-><init>(I)V

    .line 25
    .line 26
    .line 27
    sput-object v0, LD/b;->m:LY0/e;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LD/b;->a:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, LD/b;->b:Landroid/graphics/Rect;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, LD/b;->c:Landroid/graphics/Rect;

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    new-array v0, v0, [I

    .line 27
    .line 28
    iput-object v0, p0, LD/b;->d:[I

    .line 29
    .line 30
    const/high16 v0, -0x80000000

    .line 31
    .line 32
    iput v0, p0, LD/b;->h:I

    .line 33
    .line 34
    iput v0, p0, LD/b;->i:I

    .line 35
    .line 36
    iput v0, p0, LD/b;->j:I

    .line 37
    .line 38
    iput-object p1, p0, LD/b;->f:Landroid/view/View;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "accessibility"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 51
    .line 52
    iput-object v0, p0, LD/b;->e:Landroid/view/accessibility/AccessibilityManager;

    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_0

    .line 63
    .line 64
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 65
    .line 66
    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 2

    .line 1
    iget v0, p0, LD/b;->i:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/high16 v0, -0x80000000

    .line 8
    .line 9
    iput v0, p0, LD/b;->i:I

    .line 10
    .line 11
    invoke-virtual {p0, p1, v1}, LD/b;->m(IZ)V

    .line 12
    .line 13
    .line 14
    const/16 v0, 0x8

    .line 15
    .line 16
    invoke-virtual {p0, p1, v0}, LD/b;->o(II)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    return p1
.end method

.method public final b(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    iget-object v1, p0, LD/b;->f:Landroid/view/View;

    .line 3
    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p0, p1}, LD/b;->i(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isScrollable()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isPassword()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityRecord;->setPassword(Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isEnabled()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isChecked()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_1

    .line 69
    .line 70
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getContentDescription()Ljava/lang/CharSequence;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    if-eqz v2, :cond_0

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 78
    .line 79
    const-string p2, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    .line 80
    .line 81
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p1

    .line 85
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getClassName()Ljava/lang/CharSequence;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    invoke-static {p2, v1, p1}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setSource(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    return-object p2

    .line 107
    :cond_2
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {v1, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 112
    .line 113
    .line 114
    return-object p1
.end method

.method public final c(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 11

    .line 1
    invoke-static {}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    .line 10
    .line 11
    .line 12
    const-string v2, "android.view.View"

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    sget-object v2, LD/b;->k:Landroid/graphics/Rect;

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 23
    .line 24
    .line 25
    iget-object v3, p0, LD/b;->f:Landroid/view/View;

    .line 26
    .line 27
    invoke-virtual {v0, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1, v0}, LD/b;->l(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    if-nez v4, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    if-eqz v4, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 47
    .line 48
    const-string v0, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    .line 49
    .line 50
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_1
    :goto_0
    iget-object v4, p0, LD/b;->b:Landroid/graphics/Rect;

    .line 55
    .line 56
    invoke-virtual {v0, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-nez v5, :cond_10

    .line 64
    .line 65
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getActions()I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    and-int/lit8 v6, v5, 0x40

    .line 70
    .line 71
    if-nez v6, :cond_f

    .line 72
    .line 73
    const/16 v6, 0x80

    .line 74
    .line 75
    and-int/2addr v5, v6

    .line 76
    if-nez v5, :cond_e

    .line 77
    .line 78
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v0, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setPackageName(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v3, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setSource(Landroid/view/View;I)V

    .line 90
    .line 91
    .line 92
    iget v5, p0, LD/b;->h:I

    .line 93
    .line 94
    const/4 v7, 0x0

    .line 95
    if-ne v5, p1, :cond_2

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    invoke-virtual {v0, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    .line 105
    .line 106
    .line 107
    const/16 v5, 0x40

    .line 108
    .line 109
    invoke-virtual {v0, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 110
    .line 111
    .line 112
    :goto_1
    iget v5, p0, LD/b;->i:I

    .line 113
    .line 114
    if-ne v5, p1, :cond_3

    .line 115
    .line 116
    move p1, v1

    .line 117
    goto :goto_2

    .line 118
    :cond_3
    move p1, v7

    .line 119
    :goto_2
    if-eqz p1, :cond_4

    .line 120
    .line 121
    const/4 v5, 0x2

    .line 122
    invoke-virtual {v0, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 123
    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_4
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isFocusable()Z

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-eqz v5, :cond_5

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 133
    .line 134
    .line 135
    :cond_5
    :goto_3
    invoke-virtual {v0, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocused(Z)V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, LD/b;->d:[I

    .line 139
    .line 140
    invoke-virtual {v3, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 141
    .line 142
    .line 143
    iget-object v5, p0, LD/b;->a:Landroid/graphics/Rect;

    .line 144
    .line 145
    invoke-virtual {v0, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    if-eqz v6, :cond_8

    .line 153
    .line 154
    invoke-virtual {v0, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 155
    .line 156
    .line 157
    iget v6, v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    .line 158
    .line 159
    const/4 v8, -0x1

    .line 160
    if-eq v6, v8, :cond_7

    .line 161
    .line 162
    invoke-static {}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    iget v9, v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    .line 167
    .line 168
    :goto_4
    if-eq v9, v8, :cond_6

    .line 169
    .line 170
    invoke-virtual {v6, v3, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v6, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, v9, v6}, LD/b;->l(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v6, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 180
    .line 181
    .line 182
    iget v9, v4, Landroid/graphics/Rect;->left:I

    .line 183
    .line 184
    iget v10, v4, Landroid/graphics/Rect;->top:I

    .line 185
    .line 186
    invoke-virtual {v5, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 187
    .line 188
    .line 189
    iget v9, v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_6
    invoke-virtual {v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 193
    .line 194
    .line 195
    :cond_7
    aget v2, p1, v7

    .line 196
    .line 197
    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    sub-int/2addr v2, v4

    .line 202
    aget v4, p1, v1

    .line 203
    .line 204
    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    .line 205
    .line 206
    .line 207
    move-result v6

    .line 208
    sub-int/2addr v4, v6

    .line 209
    invoke-virtual {v5, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 210
    .line 211
    .line 212
    :cond_8
    iget-object v2, p0, LD/b;->c:Landroid/graphics/Rect;

    .line 213
    .line 214
    invoke-virtual {v3, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    if-eqz v4, :cond_d

    .line 219
    .line 220
    aget v4, p1, v7

    .line 221
    .line 222
    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    .line 223
    .line 224
    .line 225
    move-result v6

    .line 226
    sub-int/2addr v4, v6

    .line 227
    aget p1, p1, v1

    .line 228
    .line 229
    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    .line 230
    .line 231
    .line 232
    move-result v6

    .line 233
    sub-int/2addr p1, v6

    .line 234
    invoke-virtual {v2, v4, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    if-eqz p1, :cond_d

    .line 242
    .line 243
    invoke-virtual {v0, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    if-eqz p1, :cond_9

    .line 251
    .line 252
    goto :goto_6

    .line 253
    :cond_9
    invoke-virtual {v3}, Landroid/view/View;->getWindowVisibility()I

    .line 254
    .line 255
    .line 256
    move-result p1

    .line 257
    if-eqz p1, :cond_a

    .line 258
    .line 259
    goto :goto_6

    .line 260
    :cond_a
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    :goto_5
    instance-of v2, p1, Landroid/view/View;

    .line 265
    .line 266
    if-eqz v2, :cond_c

    .line 267
    .line 268
    check-cast p1, Landroid/view/View;

    .line 269
    .line 270
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    const/4 v3, 0x0

    .line 275
    cmpg-float v2, v2, v3

    .line 276
    .line 277
    if-lez v2, :cond_d

    .line 278
    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    if-eqz v2, :cond_b

    .line 284
    .line 285
    goto :goto_6

    .line 286
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    goto :goto_5

    .line 291
    :cond_c
    if-eqz p1, :cond_d

    .line 292
    .line 293
    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    .line 294
    .line 295
    .line 296
    :cond_d
    :goto_6
    return-object v0

    .line 297
    :cond_e
    new-instance p1, Ljava/lang/RuntimeException;

    .line 298
    .line 299
    const-string v0, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    .line 300
    .line 301
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    throw p1

    .line 305
    :cond_f
    new-instance p1, Ljava/lang/RuntimeException;

    .line 306
    .line 307
    const-string v0, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    .line 308
    .line 309
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    throw p1

    .line 313
    :cond_10
    new-instance p1, Ljava/lang/RuntimeException;

    .line 314
    .line 315
    const-string v0, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    .line 316
    .line 317
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    throw p1
.end method

.method public final d(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, LD/b;->e:Landroid/view/accessibility/AccessibilityManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_5

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x7

    .line 21
    const/16 v2, 0x100

    .line 22
    .line 23
    const/16 v3, 0x80

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    const/high16 v5, -0x80000000

    .line 27
    .line 28
    if-eq v0, v1, :cond_3

    .line 29
    .line 30
    const/16 v1, 0x9

    .line 31
    .line 32
    if-eq v0, v1, :cond_3

    .line 33
    .line 34
    const/16 p1, 0xa

    .line 35
    .line 36
    if-eq v0, p1, :cond_1

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_1
    iget p1, p0, LD/b;->j:I

    .line 40
    .line 41
    if-eq p1, v5, :cond_5

    .line 42
    .line 43
    if-ne p1, v5, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    iput v5, p0, LD/b;->j:I

    .line 47
    .line 48
    invoke-virtual {p0, v5, v3}, LD/b;->o(II)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1, v2}, LD/b;->o(II)V

    .line 52
    .line 53
    .line 54
    return v4

    .line 55
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    invoke-virtual {p0, v0, p1}, LD/b;->e(FF)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    iget v0, p0, LD/b;->j:I

    .line 68
    .line 69
    if-ne v0, p1, :cond_4

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    iput p1, p0, LD/b;->j:I

    .line 73
    .line 74
    invoke-virtual {p0, p1, v3}, LD/b;->o(II)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v0, v2}, LD/b;->o(II)V

    .line 78
    .line 79
    .line 80
    :goto_0
    if-eq p1, v5, :cond_5

    .line 81
    .line 82
    :goto_1
    return v4

    .line 83
    :cond_5
    :goto_2
    const/4 p1, 0x0

    .line 84
    return p1
.end method

.method public abstract e(FF)I
.end method

.method public abstract f(Ljava/util/ArrayList;)V
.end method

.method public final g(I)V
    .locals 3

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LD/b;->e:Landroid/view/accessibility/AccessibilityManager;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, LD/b;->f:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const/16 v2, 0x800

    .line 22
    .line 23
    invoke-virtual {p0, p1, v2}, LD/b;->b(II)Landroid/view/accessibility/AccessibilityEvent;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-static {p1, v2}, Landroidx/core/view/accessibility/AccessibilityEventCompat;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v1, v0, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public final getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 0

    .line 1
    iget-object p1, p0, LD/b;->g:LD/a;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    new-instance p1, LD/a;

    .line 6
    .line 7
    invoke-direct {p1, p0}, LD/a;-><init>(LD/b;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, LD/b;->g:LD/a;

    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, LD/b;->g:LD/a;

    .line 13
    .line 14
    return-object p1
.end method

.method public final h(ILandroid/graphics/Rect;)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    new-instance v3, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v3}, LD/b;->f(Ljava/util/ArrayList;)V

    .line 13
    .line 14
    .line 15
    new-instance v4, Lq/k;

    .line 16
    .line 17
    invoke-direct {v4}, Lq/k;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    if-ge v6, v7, :cond_0

    .line 26
    .line 27
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    check-cast v7, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    invoke-virtual {v0, v7}, LD/b;->c(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    check-cast v8, Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    invoke-virtual {v4, v8, v7}, Lq/k;->c(ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    add-int/lit8 v6, v6, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget v3, v0, LD/b;->i:I

    .line 58
    .line 59
    const/high16 v7, -0x80000000

    .line 60
    .line 61
    if-ne v3, v7, :cond_1

    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {v4, v3}, Lq/k;->b(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 70
    .line 71
    :goto_1
    sget-object v8, LD/b;->l:LY0/e;

    .line 72
    .line 73
    sget-object v9, LD/b;->m:LY0/e;

    .line 74
    .line 75
    iget-object v10, v0, LD/b;->f:Landroid/view/View;

    .line 76
    .line 77
    const/4 v11, 0x2

    .line 78
    const/4 v13, 0x1

    .line 79
    if-eq v1, v13, :cond_15

    .line 80
    .line 81
    if-eq v1, v11, :cond_15

    .line 82
    .line 83
    const/16 v11, 0x82

    .line 84
    .line 85
    const/16 v14, 0x42

    .line 86
    .line 87
    const/16 v15, 0x21

    .line 88
    .line 89
    const/16 v6, 0x11

    .line 90
    .line 91
    if-eq v1, v6, :cond_2

    .line 92
    .line 93
    if-eq v1, v15, :cond_2

    .line 94
    .line 95
    if-eq v1, v14, :cond_2

    .line 96
    .line 97
    if-ne v1, v11, :cond_3

    .line 98
    .line 99
    :cond_2
    move/from16 v17, v13

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 103
    .line 104
    const-string v2, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 105
    .line 106
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw v1

    .line 110
    :goto_2
    new-instance v13, Landroid/graphics/Rect;

    .line 111
    .line 112
    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 113
    .line 114
    .line 115
    iget v5, v0, LD/b;->i:I

    .line 116
    .line 117
    const-string v12, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 118
    .line 119
    if-eq v5, v7, :cond_4

    .line 120
    .line 121
    invoke-virtual {v0, v5}, LD/b;->i(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v2, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 126
    .line 127
    .line 128
    :goto_3
    const/4 v10, -0x1

    .line 129
    goto :goto_4

    .line 130
    :cond_4
    if-eqz v2, :cond_5

    .line 131
    .line 132
    invoke-virtual {v13, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_5
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    if-eq v1, v6, :cond_9

    .line 145
    .line 146
    if-eq v1, v15, :cond_8

    .line 147
    .line 148
    if-eq v1, v14, :cond_7

    .line 149
    .line 150
    if-ne v1, v11, :cond_6

    .line 151
    .line 152
    const/4 v5, 0x0

    .line 153
    const/4 v10, -0x1

    .line 154
    invoke-virtual {v13, v5, v10, v2, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 155
    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 159
    .line 160
    invoke-direct {v1, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw v1

    .line 164
    :cond_7
    const/4 v2, 0x0

    .line 165
    const/4 v10, -0x1

    .line 166
    invoke-virtual {v13, v10, v2, v10, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 167
    .line 168
    .line 169
    goto :goto_4

    .line 170
    :cond_8
    const/4 v7, 0x0

    .line 171
    const/4 v10, -0x1

    .line 172
    invoke-virtual {v13, v7, v5, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 173
    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_9
    const/4 v7, 0x0

    .line 177
    const/4 v10, -0x1

    .line 178
    invoke-virtual {v13, v2, v7, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 179
    .line 180
    .line 181
    :goto_4
    new-instance v2, Landroid/graphics/Rect;

    .line 182
    .line 183
    invoke-direct {v2, v13}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 184
    .line 185
    .line 186
    if-eq v1, v6, :cond_d

    .line 187
    .line 188
    if-eq v1, v15, :cond_c

    .line 189
    .line 190
    if-eq v1, v14, :cond_b

    .line 191
    .line 192
    if-ne v1, v11, :cond_a

    .line 193
    .line 194
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    add-int/lit8 v5, v5, 0x1

    .line 199
    .line 200
    neg-int v5, v5

    .line 201
    const/4 v7, 0x0

    .line 202
    invoke-virtual {v2, v7, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 203
    .line 204
    .line 205
    goto :goto_5

    .line 206
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 207
    .line 208
    invoke-direct {v1, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    throw v1

    .line 212
    :cond_b
    const/4 v7, 0x0

    .line 213
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    add-int/lit8 v5, v5, 0x1

    .line 218
    .line 219
    neg-int v5, v5

    .line 220
    invoke-virtual {v2, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 221
    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_c
    const/4 v7, 0x0

    .line 225
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    add-int/lit8 v5, v5, 0x1

    .line 230
    .line 231
    invoke-virtual {v2, v7, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 232
    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_d
    const/4 v7, 0x0

    .line 236
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    .line 237
    .line 238
    .line 239
    move-result v5

    .line 240
    add-int/lit8 v5, v5, 0x1

    .line 241
    .line 242
    invoke-virtual {v2, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 243
    .line 244
    .line 245
    :goto_5
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    iget v5, v4, Lq/k;->d:I

    .line 249
    .line 250
    new-instance v6, Landroid/graphics/Rect;

    .line 251
    .line 252
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 253
    .line 254
    .line 255
    move v9, v7

    .line 256
    const/16 v16, 0x0

    .line 257
    .line 258
    :goto_6
    if-ge v9, v5, :cond_14

    .line 259
    .line 260
    iget-object v11, v4, Lq/k;->c:[Ljava/lang/Object;

    .line 261
    .line 262
    aget-object v11, v11, v9

    .line 263
    .line 264
    check-cast v11, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 265
    .line 266
    if-ne v11, v3, :cond_e

    .line 267
    .line 268
    goto :goto_8

    .line 269
    :cond_e
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v11, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 273
    .line 274
    .line 275
    invoke-static {v1, v13, v6}, Lcom/bumptech/glide/d;->I(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 276
    .line 277
    .line 278
    move-result v12

    .line 279
    if-nez v12, :cond_f

    .line 280
    .line 281
    goto :goto_8

    .line 282
    :cond_f
    invoke-static {v1, v13, v2}, Lcom/bumptech/glide/d;->I(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 283
    .line 284
    .line 285
    move-result v12

    .line 286
    if-nez v12, :cond_10

    .line 287
    .line 288
    goto :goto_7

    .line 289
    :cond_10
    invoke-static {v1, v13, v6, v2}, Lcom/bumptech/glide/d;->b(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 290
    .line 291
    .line 292
    move-result v12

    .line 293
    if-eqz v12, :cond_11

    .line 294
    .line 295
    goto :goto_7

    .line 296
    :cond_11
    invoke-static {v1, v13, v2, v6}, Lcom/bumptech/glide/d;->b(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 297
    .line 298
    .line 299
    move-result v12

    .line 300
    if-eqz v12, :cond_12

    .line 301
    .line 302
    goto :goto_8

    .line 303
    :cond_12
    invoke-static {v1, v13, v6}, Lcom/bumptech/glide/d;->O(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 304
    .line 305
    .line 306
    move-result v12

    .line 307
    invoke-static {v1, v13, v6}, Lcom/bumptech/glide/d;->P(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 308
    .line 309
    .line 310
    move-result v14

    .line 311
    mul-int/lit8 v15, v12, 0xd

    .line 312
    .line 313
    mul-int/2addr v15, v12

    .line 314
    mul-int/2addr v14, v14

    .line 315
    add-int/2addr v14, v15

    .line 316
    invoke-static {v1, v13, v2}, Lcom/bumptech/glide/d;->O(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 317
    .line 318
    .line 319
    move-result v12

    .line 320
    invoke-static {v1, v13, v2}, Lcom/bumptech/glide/d;->P(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 321
    .line 322
    .line 323
    move-result v15

    .line 324
    mul-int/lit8 v17, v12, 0xd

    .line 325
    .line 326
    mul-int v17, v17, v12

    .line 327
    .line 328
    mul-int/2addr v15, v15

    .line 329
    add-int v15, v15, v17

    .line 330
    .line 331
    if-ge v14, v15, :cond_13

    .line 332
    .line 333
    :goto_7
    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 334
    .line 335
    .line 336
    move-object/from16 v16, v11

    .line 337
    .line 338
    :cond_13
    :goto_8
    add-int/lit8 v9, v9, 0x1

    .line 339
    .line 340
    goto :goto_6

    .line 341
    :cond_14
    move v2, v10

    .line 342
    :goto_9
    move-object/from16 v1, v16

    .line 343
    .line 344
    goto/16 :goto_10

    .line 345
    .line 346
    :cond_15
    move/from16 v17, v13

    .line 347
    .line 348
    const/4 v2, -0x1

    .line 349
    const/4 v7, 0x0

    .line 350
    invoke-static {v10}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    .line 351
    .line 352
    .line 353
    move-result v5

    .line 354
    move/from16 v6, v17

    .line 355
    .line 356
    if-ne v5, v6, :cond_16

    .line 357
    .line 358
    const/4 v5, 0x1

    .line 359
    goto :goto_a

    .line 360
    :cond_16
    move v5, v7

    .line 361
    :goto_a
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    .line 363
    .line 364
    iget v6, v4, Lq/k;->d:I

    .line 365
    .line 366
    new-instance v9, Ljava/util/ArrayList;

    .line 367
    .line 368
    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 369
    .line 370
    .line 371
    move v10, v7

    .line 372
    :goto_b
    if-ge v10, v6, :cond_17

    .line 373
    .line 374
    iget-object v12, v4, Lq/k;->c:[Ljava/lang/Object;

    .line 375
    .line 376
    aget-object v12, v12, v10

    .line 377
    .line 378
    check-cast v12, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 379
    .line 380
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    add-int/lit8 v10, v10, 0x1

    .line 384
    .line 385
    goto :goto_b

    .line 386
    :cond_17
    new-instance v6, LD/c;

    .line 387
    .line 388
    invoke-direct {v6, v5, v8}, LD/c;-><init>(ZLY0/e;)V

    .line 389
    .line 390
    .line 391
    invoke-static {v9, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 392
    .line 393
    .line 394
    const/4 v6, 0x1

    .line 395
    if-eq v1, v6, :cond_1b

    .line 396
    .line 397
    if-ne v1, v11, :cond_1a

    .line 398
    .line 399
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 400
    .line 401
    .line 402
    move-result v1

    .line 403
    if-nez v3, :cond_18

    .line 404
    .line 405
    move v10, v2

    .line 406
    goto :goto_c

    .line 407
    :cond_18
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    .line 408
    .line 409
    .line 410
    move-result v10

    .line 411
    :goto_c
    add-int/2addr v10, v6

    .line 412
    if-ge v10, v1, :cond_19

    .line 413
    .line 414
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v6

    .line 418
    goto :goto_f

    .line 419
    :cond_19
    const/4 v6, 0x0

    .line 420
    goto :goto_f

    .line 421
    :cond_1a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 422
    .line 423
    const-string v2, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}."

    .line 424
    .line 425
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    throw v1

    .line 429
    :cond_1b
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 430
    .line 431
    .line 432
    move-result v1

    .line 433
    if-nez v3, :cond_1c

    .line 434
    .line 435
    :goto_d
    const/16 v17, 0x1

    .line 436
    .line 437
    goto :goto_e

    .line 438
    :cond_1c
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 439
    .line 440
    .line 441
    move-result v1

    .line 442
    goto :goto_d

    .line 443
    :goto_e
    add-int/lit8 v1, v1, -0x1

    .line 444
    .line 445
    if-ltz v1, :cond_19

    .line 446
    .line 447
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v6

    .line 451
    :goto_f
    move-object/from16 v16, v6

    .line 452
    .line 453
    check-cast v16, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 454
    .line 455
    goto :goto_9

    .line 456
    :goto_10
    if-nez v1, :cond_1d

    .line 457
    .line 458
    const/high16 v7, -0x80000000

    .line 459
    .line 460
    goto :goto_13

    .line 461
    :cond_1d
    iget v3, v4, Lq/k;->d:I

    .line 462
    .line 463
    move v5, v7

    .line 464
    :goto_11
    if-ge v5, v3, :cond_1f

    .line 465
    .line 466
    iget-object v6, v4, Lq/k;->c:[Ljava/lang/Object;

    .line 467
    .line 468
    aget-object v6, v6, v5

    .line 469
    .line 470
    if-ne v6, v1, :cond_1e

    .line 471
    .line 472
    move v12, v5

    .line 473
    goto :goto_12

    .line 474
    :cond_1e
    add-int/lit8 v5, v5, 0x1

    .line 475
    .line 476
    goto :goto_11

    .line 477
    :cond_1f
    move v12, v2

    .line 478
    :goto_12
    iget-object v1, v4, Lq/k;->b:[I

    .line 479
    .line 480
    aget v7, v1, v12

    .line 481
    .line 482
    :goto_13
    invoke-virtual {v0, v7}, LD/b;->n(I)Z

    .line 483
    .line 484
    .line 485
    move-result v1

    .line 486
    return v1
.end method

.method public final i(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_3

    .line 3
    .line 4
    iget-object p1, p0, LD/b;->f:Landroid/view/View;

    .line 5
    .line 6
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, LD/b;->f(Ljava/util/ArrayList;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getChildCount()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-lez v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-gtz v2, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 35
    .line 36
    const-string v0, "Views cannot have both real and virtual children"

    .line 37
    .line 38
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const/4 v3, 0x0

    .line 47
    :goto_1
    if-ge v3, v2, :cond_2

    .line 48
    .line 49
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Ljava/lang/Integer;

    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    invoke-virtual {v0, p1, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addChild(Landroid/view/View;I)V

    .line 60
    .line 61
    .line 62
    add-int/lit8 v3, v3, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    return-object v0

    .line 66
    :cond_3
    invoke-virtual {p0, p1}, LD/b;->c(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    return-object p1
.end method

.method public abstract j(IILandroid/os/Bundle;)Z
.end method

.method public k(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract l(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
.end method

.method public m(IZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final n(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, LD/b;->f:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget v0, p0, LD/b;->i:I

    .line 17
    .line 18
    if-ne v0, p1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/high16 v1, -0x80000000

    .line 22
    .line 23
    if-eq v0, v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0, v0}, LD/b;->a(I)Z

    .line 26
    .line 27
    .line 28
    :cond_2
    if-ne p1, v1, :cond_3

    .line 29
    .line 30
    :goto_0
    const/4 p1, 0x0

    .line 31
    return p1

    .line 32
    :cond_3
    iput p1, p0, LD/b;->i:I

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    invoke-virtual {p0, p1, v0}, LD/b;->m(IZ)V

    .line 36
    .line 37
    .line 38
    const/16 v1, 0x8

    .line 39
    .line 40
    invoke-virtual {p0, p1, v1}, LD/b;->o(II)V

    .line 41
    .line 42
    .line 43
    return v0
.end method

.method public final o(II)V
    .locals 2

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    if-eq p1, v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, LD/b;->e:Landroid/view/accessibility/AccessibilityManager;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, LD/b;->f:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p0, p1, p2}, LD/b;->b(II)Landroid/view/accessibility/AccessibilityEvent;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {v1, v0, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 28
    .line 29
    .line 30
    :cond_2
    :goto_0
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, LD/b;->k(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
