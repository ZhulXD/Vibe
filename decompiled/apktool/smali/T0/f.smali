.class public abstract LT0/f;
.super Landroid/view/ViewGroup;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lj/E;


# static fields
.field public static final G:[I

.field public static final H:[I


# instance fields
.field public A:I

.field public B:LY0/m;

.field public C:Z

.field public D:Landroid/content/res/ColorStateList;

.field public E:LT0/h;

.field public F:Lj/p;

.field public final b:LS/a;

.field public final c:LH0/j;

.field public final d:Landroidx/core/util/Pools$SynchronizedPool;

.field public final e:Landroid/util/SparseArray;

.field public f:I

.field public g:[LT0/d;

.field public h:I

.field public i:I

.field public j:Landroid/content/res/ColorStateList;

.field public k:I

.field public l:Landroid/content/res/ColorStateList;

.field public final m:Landroid/content/res/ColorStateList;

.field public n:I

.field public o:I

.field public p:Z

.field public q:Landroid/graphics/drawable/Drawable;

.field public r:Landroid/content/res/ColorStateList;

.field public s:I

.field public final t:Landroid/util/SparseArray;

.field public u:I

.field public v:I

.field public w:I

.field public x:Z

.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const v0, 0x10100a0

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, LT0/f;->G:[I

    .line 9
    .line 10
    const v0, -0x101009e

    .line 11
    .line 12
    .line 13
    filled-new-array {v0}, [I

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, LT0/f;->H:[I

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroidx/core/util/Pools$SynchronizedPool;

    .line 5
    .line 6
    const/4 v0, 0x5

    .line 7
    invoke-direct {p1, v0}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, LT0/f;->d:Landroidx/core/util/Pools$SynchronizedPool;

    .line 11
    .line 12
    new-instance p1, Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, LT0/f;->e:Landroid/util/SparseArray;

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput p1, p0, LT0/f;->h:I

    .line 21
    .line 22
    iput p1, p0, LT0/f;->i:I

    .line 23
    .line 24
    new-instance v1, Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, LT0/f;->t:Landroid/util/SparseArray;

    .line 30
    .line 31
    const/4 v0, -0x1

    .line 32
    iput v0, p0, LT0/f;->u:I

    .line 33
    .line 34
    iput v0, p0, LT0/f;->v:I

    .line 35
    .line 36
    iput v0, p0, LT0/f;->w:I

    .line 37
    .line 38
    iput-boolean p1, p0, LT0/f;->C:Z

    .line 39
    .line 40
    invoke-virtual {p0}, LT0/f;->c()Landroid/content/res/ColorStateList;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, LT0/f;->m:Landroid/content/res/ColorStateList;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, LT0/f;->b:LS/a;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    new-instance v0, LS/a;

    .line 57
    .line 58
    invoke-direct {v0}, LS/a;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, LT0/f;->b:LS/a;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, LS/B;->S(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const v2, 0x7f0a0026

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    const v2, 0x7f040307

    .line 82
    .line 83
    .line 84
    invoke-static {p1, v2, v1}, Lcom/bumptech/glide/c;->N(Landroid/content/Context;II)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    int-to-long v1, p1

    .line 89
    invoke-virtual {v0, v1, v2}, LS/B;->Q(J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const v1, 0x7f040314

    .line 97
    .line 98
    .line 99
    sget-object v2, LB0/a;->b:LL/a;

    .line 100
    .line 101
    invoke-static {p1, v1, v2}, Lcom/bumptech/glide/c;->O(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {v0, p1}, LS/B;->R(Landroid/animation/TimeInterpolator;)V

    .line 106
    .line 107
    .line 108
    new-instance p1, LR0/n;

    .line 109
    .line 110
    invoke-direct {p1}, LS/v;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, p1}, LS/B;->O(LS/v;)V

    .line 114
    .line 115
    .line 116
    :goto_0
    new-instance p1, LH0/j;

    .line 117
    .line 118
    move-object v0, p0

    .line 119
    check-cast v0, LG0/b;

    .line 120
    .line 121
    const/4 v1, 0x1

    .line 122
    invoke-direct {p1, v1, v0}, LH0/j;-><init>(ILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    iput-object p1, p0, LT0/f;->c:LH0/j;

    .line 126
    .line 127
    const/4 p1, 0x1

    .line 128
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method private getNewItem()LT0/d;
    .locals 2

    .line 1
    iget-object v0, p0, LT0/f;->d:Landroidx/core/util/Pools$SynchronizedPool;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, LT0/d;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, LG0/a;

    .line 16
    .line 17
    invoke-direct {v1, v0}, LT0/d;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_0
    return-object v0
.end method

.method private setBadgeIfNeeded(LT0/d;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, LT0/f;->t:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, LD0/a;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1, v0}, LT0/d;->setBadge(LD0/a;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lj/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, LT0/f;->F:Lj/p;

    .line 2
    .line 3
    return-void
.end method

.method public final b()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LT0/f;->g:[LT0/d;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v0, :cond_5

    .line 10
    .line 11
    array-length v4, v0

    .line 12
    move v5, v3

    .line 13
    :goto_0
    if-ge v5, v4, :cond_5

    .line 14
    .line 15
    aget-object v6, v0, v5

    .line 16
    .line 17
    if-eqz v6, :cond_4

    .line 18
    .line 19
    iget-object v7, p0, LT0/f;->d:Landroidx/core/util/Pools$SynchronizedPool;

    .line 20
    .line 21
    invoke-interface {v7, v6}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    iget-object v7, v6, LT0/d;->o:Landroid/widget/ImageView;

    .line 25
    .line 26
    iget-object v8, v6, LT0/d;->G:LD0/a;

    .line 27
    .line 28
    if-eqz v8, :cond_3

    .line 29
    .line 30
    if-eqz v7, :cond_2

    .line 31
    .line 32
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v8, v6, LT0/d;->G:LD0/a;

    .line 39
    .line 40
    if-nez v8, :cond_0

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    invoke-virtual {v8}, LD0/a;->d()Landroid/widget/FrameLayout;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    if-eqz v9, :cond_1

    .line 48
    .line 49
    invoke-virtual {v8}, LD0/a;->d()Landroid/widget/FrameLayout;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-virtual {v7, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-virtual {v7, v8}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_1
    iput-object v1, v6, LT0/d;->G:LD0/a;

    .line 65
    .line 66
    :cond_3
    iput-object v1, v6, LT0/d;->u:Lj/s;

    .line 67
    .line 68
    const/4 v7, 0x0

    .line 69
    iput v7, v6, LT0/d;->A:F

    .line 70
    .line 71
    iput-boolean v3, v6, LT0/d;->b:Z

    .line 72
    .line 73
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_5
    iget-object v0, p0, LT0/f;->F:Lj/p;

    .line 77
    .line 78
    iget-object v0, v0, Lj/p;->f:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_6

    .line 85
    .line 86
    iput v3, p0, LT0/f;->h:I

    .line 87
    .line 88
    iput v3, p0, LT0/f;->i:I

    .line 89
    .line 90
    iput-object v1, p0, LT0/f;->g:[LT0/d;

    .line 91
    .line 92
    return-void

    .line 93
    :cond_6
    new-instance v0, Ljava/util/HashSet;

    .line 94
    .line 95
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 96
    .line 97
    .line 98
    move v1, v3

    .line 99
    :goto_2
    iget-object v4, p0, LT0/f;->F:Lj/p;

    .line 100
    .line 101
    iget-object v4, v4, Lj/p;->f:Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-ge v1, v4, :cond_7

    .line 108
    .line 109
    iget-object v4, p0, LT0/f;->F:Lj/p;

    .line 110
    .line 111
    invoke-virtual {v4, v1}, Lj/p;->getItem(I)Landroid/view/MenuItem;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    add-int/lit8 v1, v1, 0x1

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_7
    move v1, v3

    .line 130
    :goto_3
    iget-object v4, p0, LT0/f;->t:Landroid/util/SparseArray;

    .line 131
    .line 132
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    if-ge v1, v5, :cond_9

    .line 137
    .line 138
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    if-nez v6, :cond_8

    .line 151
    .line 152
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->delete(I)V

    .line 153
    .line 154
    .line 155
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_9
    iget-object v0, p0, LT0/f;->F:Lj/p;

    .line 159
    .line 160
    iget-object v0, v0, Lj/p;->f:Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    new-array v0, v0, [LT0/d;

    .line 167
    .line 168
    iput-object v0, p0, LT0/f;->g:[LT0/d;

    .line 169
    .line 170
    iget v0, p0, LT0/f;->f:I

    .line 171
    .line 172
    iget-object v1, p0, LT0/f;->F:Lj/p;

    .line 173
    .line 174
    invoke-virtual {v1}, Lj/p;->l()Ljava/util/ArrayList;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    const/4 v4, -0x1

    .line 183
    if-ne v0, v4, :cond_a

    .line 184
    .line 185
    const/4 v0, 0x3

    .line 186
    if-le v1, v0, :cond_b

    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_a
    if-nez v0, :cond_b

    .line 190
    .line 191
    :goto_4
    move v0, v2

    .line 192
    goto :goto_5

    .line 193
    :cond_b
    move v0, v3

    .line 194
    :goto_5
    move v1, v3

    .line 195
    :goto_6
    iget-object v5, p0, LT0/f;->F:Lj/p;

    .line 196
    .line 197
    iget-object v5, v5, Lj/p;->f:Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 200
    .line 201
    .line 202
    move-result v5

    .line 203
    if-ge v1, v5, :cond_11

    .line 204
    .line 205
    iget-object v5, p0, LT0/f;->E:LT0/h;

    .line 206
    .line 207
    iput-boolean v2, v5, LT0/h;->c:Z

    .line 208
    .line 209
    iget-object v5, p0, LT0/f;->F:Lj/p;

    .line 210
    .line 211
    invoke-virtual {v5, v1}, Lj/p;->getItem(I)Landroid/view/MenuItem;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 216
    .line 217
    .line 218
    iget-object v5, p0, LT0/f;->E:LT0/h;

    .line 219
    .line 220
    iput-boolean v3, v5, LT0/h;->c:Z

    .line 221
    .line 222
    invoke-direct {p0}, LT0/f;->getNewItem()LT0/d;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    iget-object v6, p0, LT0/f;->g:[LT0/d;

    .line 227
    .line 228
    aput-object v5, v6, v1

    .line 229
    .line 230
    iget-object v6, p0, LT0/f;->j:Landroid/content/res/ColorStateList;

    .line 231
    .line 232
    invoke-virtual {v5, v6}, LT0/d;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 233
    .line 234
    .line 235
    iget v6, p0, LT0/f;->k:I

    .line 236
    .line 237
    invoke-virtual {v5, v6}, LT0/d;->setIconSize(I)V

    .line 238
    .line 239
    .line 240
    iget-object v6, p0, LT0/f;->m:Landroid/content/res/ColorStateList;

    .line 241
    .line 242
    invoke-virtual {v5, v6}, LT0/d;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 243
    .line 244
    .line 245
    iget v6, p0, LT0/f;->n:I

    .line 246
    .line 247
    invoke-virtual {v5, v6}, LT0/d;->setTextAppearanceInactive(I)V

    .line 248
    .line 249
    .line 250
    iget v6, p0, LT0/f;->o:I

    .line 251
    .line 252
    invoke-virtual {v5, v6}, LT0/d;->setTextAppearanceActive(I)V

    .line 253
    .line 254
    .line 255
    iget-boolean v6, p0, LT0/f;->p:Z

    .line 256
    .line 257
    invoke-virtual {v5, v6}, LT0/d;->setTextAppearanceActiveBoldEnabled(Z)V

    .line 258
    .line 259
    .line 260
    iget-object v6, p0, LT0/f;->l:Landroid/content/res/ColorStateList;

    .line 261
    .line 262
    invoke-virtual {v5, v6}, LT0/d;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 263
    .line 264
    .line 265
    iget v6, p0, LT0/f;->u:I

    .line 266
    .line 267
    if-eq v6, v4, :cond_c

    .line 268
    .line 269
    invoke-virtual {v5, v6}, LT0/d;->setItemPaddingTop(I)V

    .line 270
    .line 271
    .line 272
    :cond_c
    iget v6, p0, LT0/f;->v:I

    .line 273
    .line 274
    if-eq v6, v4, :cond_d

    .line 275
    .line 276
    invoke-virtual {v5, v6}, LT0/d;->setItemPaddingBottom(I)V

    .line 277
    .line 278
    .line 279
    :cond_d
    iget v6, p0, LT0/f;->w:I

    .line 280
    .line 281
    if-eq v6, v4, :cond_e

    .line 282
    .line 283
    invoke-virtual {v5, v6}, LT0/d;->setActiveIndicatorLabelPadding(I)V

    .line 284
    .line 285
    .line 286
    :cond_e
    iget v6, p0, LT0/f;->y:I

    .line 287
    .line 288
    invoke-virtual {v5, v6}, LT0/d;->setActiveIndicatorWidth(I)V

    .line 289
    .line 290
    .line 291
    iget v6, p0, LT0/f;->z:I

    .line 292
    .line 293
    invoke-virtual {v5, v6}, LT0/d;->setActiveIndicatorHeight(I)V

    .line 294
    .line 295
    .line 296
    iget v6, p0, LT0/f;->A:I

    .line 297
    .line 298
    invoke-virtual {v5, v6}, LT0/d;->setActiveIndicatorMarginHorizontal(I)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0}, LT0/f;->d()LY0/h;

    .line 302
    .line 303
    .line 304
    move-result-object v6

    .line 305
    invoke-virtual {v5, v6}, LT0/d;->setActiveIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 306
    .line 307
    .line 308
    iget-boolean v6, p0, LT0/f;->C:Z

    .line 309
    .line 310
    invoke-virtual {v5, v6}, LT0/d;->setActiveIndicatorResizeable(Z)V

    .line 311
    .line 312
    .line 313
    iget-boolean v6, p0, LT0/f;->x:Z

    .line 314
    .line 315
    invoke-virtual {v5, v6}, LT0/d;->setActiveIndicatorEnabled(Z)V

    .line 316
    .line 317
    .line 318
    iget-object v6, p0, LT0/f;->q:Landroid/graphics/drawable/Drawable;

    .line 319
    .line 320
    if-eqz v6, :cond_f

    .line 321
    .line 322
    invoke-virtual {v5, v6}, LT0/d;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 323
    .line 324
    .line 325
    goto :goto_7

    .line 326
    :cond_f
    iget v6, p0, LT0/f;->s:I

    .line 327
    .line 328
    invoke-virtual {v5, v6}, LT0/d;->setItemBackground(I)V

    .line 329
    .line 330
    .line 331
    :goto_7
    iget-object v6, p0, LT0/f;->r:Landroid/content/res/ColorStateList;

    .line 332
    .line 333
    invoke-virtual {v5, v6}, LT0/d;->setItemRippleColor(Landroid/content/res/ColorStateList;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v5, v0}, LT0/d;->setShifting(Z)V

    .line 337
    .line 338
    .line 339
    iget v6, p0, LT0/f;->f:I

    .line 340
    .line 341
    invoke-virtual {v5, v6}, LT0/d;->setLabelVisibilityMode(I)V

    .line 342
    .line 343
    .line 344
    iget-object v6, p0, LT0/f;->F:Lj/p;

    .line 345
    .line 346
    invoke-virtual {v6, v1}, Lj/p;->getItem(I)Landroid/view/MenuItem;

    .line 347
    .line 348
    .line 349
    move-result-object v6

    .line 350
    check-cast v6, Lj/s;

    .line 351
    .line 352
    invoke-virtual {v5, v6}, LT0/d;->b(Lj/s;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v5, v1}, LT0/d;->setItemPosition(I)V

    .line 356
    .line 357
    .line 358
    iget v6, v6, Lj/s;->a:I

    .line 359
    .line 360
    iget-object v7, p0, LT0/f;->e:Landroid/util/SparseArray;

    .line 361
    .line 362
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v7

    .line 366
    check-cast v7, Landroid/view/View$OnTouchListener;

    .line 367
    .line 368
    invoke-virtual {v5, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 369
    .line 370
    .line 371
    iget-object v7, p0, LT0/f;->c:LH0/j;

    .line 372
    .line 373
    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    .line 375
    .line 376
    iget v7, p0, LT0/f;->h:I

    .line 377
    .line 378
    if-eqz v7, :cond_10

    .line 379
    .line 380
    if-ne v6, v7, :cond_10

    .line 381
    .line 382
    iput v1, p0, LT0/f;->i:I

    .line 383
    .line 384
    :cond_10
    invoke-direct {p0, v5}, LT0/f;->setBadgeIfNeeded(LT0/d;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 388
    .line 389
    .line 390
    add-int/lit8 v1, v1, 0x1

    .line 391
    .line 392
    goto/16 :goto_6

    .line 393
    .line 394
    :cond_11
    iget-object v0, p0, LT0/f;->F:Lj/p;

    .line 395
    .line 396
    iget-object v0, v0, Lj/p;->f:Ljava/util/ArrayList;

    .line 397
    .line 398
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 399
    .line 400
    .line 401
    move-result v0

    .line 402
    sub-int/2addr v0, v2

    .line 403
    iget v1, p0, LT0/f;->i:I

    .line 404
    .line 405
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 406
    .line 407
    .line 408
    move-result v0

    .line 409
    iput v0, p0, LT0/f;->i:I

    .line 410
    .line 411
    iget-object v1, p0, LT0/f;->F:Lj/p;

    .line 412
    .line 413
    invoke-virtual {v1, v0}, Lj/p;->getItem(I)Landroid/view/MenuItem;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 418
    .line 419
    .line 420
    return-void
.end method

.method public final c()Landroid/content/res/ColorStateList;
    .locals 7

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const v2, 0x1010038

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    .line 30
    .line 31
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const v4, 0x7f040101

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v4, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_1

    .line 51
    .line 52
    :goto_0
    const/4 v0, 0x0

    .line 53
    return-object v0

    .line 54
    :cond_1
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    new-instance v3, Landroid/content/res/ColorStateList;

    .line 61
    .line 62
    sget-object v4, LT0/f;->G:[I

    .line 63
    .line 64
    sget-object v5, Landroid/view/ViewGroup;->EMPTY_STATE_SET:[I

    .line 65
    .line 66
    sget-object v6, LT0/f;->H:[I

    .line 67
    .line 68
    filled-new-array {v6, v4, v5}, [[I

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v1, v6, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    filled-new-array {v1, v0, v2}, [I

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-direct {v3, v4, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 81
    .line 82
    .line 83
    return-object v3
.end method

.method public final d()LY0/h;
    .locals 2

    .line 1
    iget-object v0, p0, LT0/f;->B:LY0/m;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LT0/f;->D:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, LY0/h;

    .line 10
    .line 11
    iget-object v1, p0, LT0/f;->B:LY0/m;

    .line 12
    .line 13
    invoke-direct {v0, v1}, LY0/h;-><init>(LY0/m;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, LT0/f;->D:Landroid/content/res/ColorStateList;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, LY0/h;->l(Landroid/content/res/ColorStateList;)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return-object v0
.end method

.method public getActiveIndicatorLabelPadding()I
    .locals 1

    .line 1
    iget v0, p0, LT0/f;->w:I

    .line 2
    .line 3
    return v0
.end method

.method public getBadgeDrawables()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "LD0/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LT0/f;->t:Landroid/util/SparseArray;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, LT0/f;->j:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getItemActiveIndicatorColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, LT0/f;->D:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getItemActiveIndicatorEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LT0/f;->x:Z

    .line 2
    .line 3
    return v0
.end method

.method public getItemActiveIndicatorHeight()I
    .locals 1

    .line 1
    iget v0, p0, LT0/f;->z:I

    .line 2
    .line 3
    return v0
.end method

.method public getItemActiveIndicatorMarginHorizontal()I
    .locals 1

    .line 1
    iget v0, p0, LT0/f;->A:I

    .line 2
    .line 3
    return v0
.end method

.method public getItemActiveIndicatorShapeAppearance()LY0/m;
    .locals 1

    .line 1
    iget-object v0, p0, LT0/f;->B:LY0/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public getItemActiveIndicatorWidth()I
    .locals 1

    .line 1
    iget v0, p0, LT0/f;->y:I

    .line 2
    .line 3
    return v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, LT0/f;->g:[LT0/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    if-lez v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    aget-object v0, v0, v1

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    iget-object v0, p0, LT0/f;->q:Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    return-object v0
.end method

.method public getItemBackgroundRes()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, LT0/f;->s:I

    .line 2
    .line 3
    return v0
.end method

.method public getItemIconSize()I
    .locals 1

    .line 1
    iget v0, p0, LT0/f;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public getItemPaddingBottom()I
    .locals 1

    .line 1
    iget v0, p0, LT0/f;->v:I

    .line 2
    .line 3
    return v0
.end method

.method public getItemPaddingTop()I
    .locals 1

    .line 1
    iget v0, p0, LT0/f;->u:I

    .line 2
    .line 3
    return v0
.end method

.method public getItemRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, LT0/f;->r:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getItemTextAppearanceActive()I
    .locals 1

    .line 1
    iget v0, p0, LT0/f;->o:I

    .line 2
    .line 3
    return v0
.end method

.method public getItemTextAppearanceInactive()I
    .locals 1

    .line 1
    iget v0, p0, LT0/f;->n:I

    .line 2
    .line 3
    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, LT0/f;->l:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLabelVisibilityMode()I
    .locals 1

    .line 1
    iget v0, p0, LT0/f;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public getMenu()Lj/p;
    .locals 1

    .line 1
    iget-object v0, p0, LT0/f;->F:Lj/p;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSelectedItemId()I
    .locals 1

    .line 1
    iget v0, p0, LT0/f;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .line 1
    iget v0, p0, LT0/f;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object v0, p0, LT0/f;->F:Lj/p;

    .line 9
    .line 10
    invoke-virtual {v0}, Lj/p;->l()Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-static {v2, v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public setActiveIndicatorLabelPadding(I)V
    .locals 4

    .line 1
    iput p1, p0, LT0/f;->w:I

    .line 2
    .line 3
    iget-object v0, p0, LT0/f;->g:[LT0/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3, p1}, LT0/d;->setActiveIndicatorLabelPadding(I)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 4

    .line 1
    iput-object p1, p0, LT0/f;->j:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    iget-object v0, p0, LT0/f;->g:[LT0/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3, p1}, LT0/d;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V
    .locals 4

    .line 1
    iput-object p1, p0, LT0/f;->D:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    iget-object p1, p0, LT0/f;->g:[LT0/d;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    array-length v0, p1

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_0

    .line 10
    .line 11
    aget-object v2, p1, v1

    .line 12
    .line 13
    invoke-virtual {p0}, LT0/f;->d()LY0/h;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v2, v3}, LT0/d;->setActiveIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorEnabled(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, LT0/f;->x:Z

    .line 2
    .line 3
    iget-object v0, p0, LT0/f;->g:[LT0/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3, p1}, LT0/d;->setActiveIndicatorEnabled(Z)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorHeight(I)V
    .locals 4

    .line 1
    iput p1, p0, LT0/f;->z:I

    .line 2
    .line 3
    iget-object v0, p0, LT0/f;->g:[LT0/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3, p1}, LT0/d;->setActiveIndicatorHeight(I)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorMarginHorizontal(I)V
    .locals 4

    .line 1
    iput p1, p0, LT0/f;->A:I

    .line 2
    .line 3
    iget-object v0, p0, LT0/f;->g:[LT0/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3, p1}, LT0/d;->setActiveIndicatorMarginHorizontal(I)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorResizeable(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, LT0/f;->C:Z

    .line 2
    .line 3
    iget-object v0, p0, LT0/f;->g:[LT0/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3, p1}, LT0/d;->setActiveIndicatorResizeable(Z)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorShapeAppearance(LY0/m;)V
    .locals 4

    .line 1
    iput-object p1, p0, LT0/f;->B:LY0/m;

    .line 2
    .line 3
    iget-object p1, p0, LT0/f;->g:[LT0/d;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    array-length v0, p1

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_0

    .line 10
    .line 11
    aget-object v2, p1, v1

    .line 12
    .line 13
    invoke-virtual {p0}, LT0/f;->d()LY0/h;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v2, v3}, LT0/d;->setActiveIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorWidth(I)V
    .locals 4

    .line 1
    iput p1, p0, LT0/f;->y:I

    .line 2
    .line 3
    iget-object v0, p0, LT0/f;->g:[LT0/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3, p1}, LT0/d;->setActiveIndicatorWidth(I)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 1
    iput-object p1, p0, LT0/f;->q:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    iget-object v0, p0, LT0/f;->g:[LT0/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3, p1}, LT0/d;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public setItemBackgroundRes(I)V
    .locals 4

    .line 1
    iput p1, p0, LT0/f;->s:I

    .line 2
    .line 3
    iget-object v0, p0, LT0/f;->g:[LT0/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3, p1}, LT0/d;->setItemBackground(I)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public setItemIconSize(I)V
    .locals 4

    .line 1
    iput p1, p0, LT0/f;->k:I

    .line 2
    .line 3
    iget-object v0, p0, LT0/f;->g:[LT0/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3, p1}, LT0/d;->setIconSize(I)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public setItemPaddingBottom(I)V
    .locals 4

    .line 1
    iput p1, p0, LT0/f;->v:I

    .line 2
    .line 3
    iget-object v0, p0, LT0/f;->g:[LT0/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3, p1}, LT0/d;->setItemPaddingBottom(I)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public setItemPaddingTop(I)V
    .locals 4

    .line 1
    iput p1, p0, LT0/f;->u:I

    .line 2
    .line 3
    iget-object v0, p0, LT0/f;->g:[LT0/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3, p1}, LT0/d;->setItemPaddingTop(I)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public setItemRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 4

    .line 1
    iput-object p1, p0, LT0/f;->r:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    iget-object v0, p0, LT0/f;->g:[LT0/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3, p1}, LT0/d;->setItemRippleColor(Landroid/content/res/ColorStateList;)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 5

    .line 1
    iput p1, p0, LT0/f;->o:I

    .line 2
    .line 3
    iget-object v0, p0, LT0/f;->g:[LT0/d;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_1

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3, p1}, LT0/d;->setTextAppearanceActive(I)V

    .line 14
    .line 15
    .line 16
    iget-object v4, p0, LT0/f;->l:Landroid/content/res/ColorStateList;

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    invoke-virtual {v3, v4}, LT0/d;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return-void
.end method

.method public setItemTextAppearanceActiveBoldEnabled(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, LT0/f;->p:Z

    .line 2
    .line 3
    iget-object v0, p0, LT0/f;->g:[LT0/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3, p1}, LT0/d;->setTextAppearanceActiveBoldEnabled(Z)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 5

    .line 1
    iput p1, p0, LT0/f;->n:I

    .line 2
    .line 3
    iget-object v0, p0, LT0/f;->g:[LT0/d;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_1

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3, p1}, LT0/d;->setTextAppearanceInactive(I)V

    .line 14
    .line 15
    .line 16
    iget-object v4, p0, LT0/f;->l:Landroid/content/res/ColorStateList;

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    invoke-virtual {v3, v4}, LT0/d;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4

    .line 1
    iput-object p1, p0, LT0/f;->l:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    iget-object v0, p0, LT0/f;->g:[LT0/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3, p1}, LT0/d;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 0

    .line 1
    iput p1, p0, LT0/f;->f:I

    .line 2
    .line 3
    return-void
.end method

.method public setPresenter(LT0/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, LT0/f;->E:LT0/h;

    .line 2
    .line 3
    return-void
.end method
