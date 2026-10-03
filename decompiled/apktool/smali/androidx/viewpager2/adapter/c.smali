.class public final Landroidx/viewpager2/adapter/c;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public a:LX/b;

.field public b:LP/q0;

.field public c:Landroidx/lifecycle/LifecycleEventObserver;

.field public d:Landroidx/viewpager2/widget/ViewPager2;

.field public e:J

.field public final synthetic f:Landroidx/viewpager2/adapter/d;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/adapter/d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/viewpager2/adapter/c;->f:Landroidx/viewpager2/adapter/d;

    .line 5
    .line 6
    const-wide/16 v0, -0x1

    .line 7
    .line 8
    iput-wide v0, p0, Landroidx/viewpager2/adapter/c;->e:J

    .line 9
    .line 10
    return-void
.end method

.method public static a(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Landroidx/viewpager2/widget/ViewPager2;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "Expected ViewPager2 instance. Got: "

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method


# virtual methods
.method public final b(Z)V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/adapter/c;->f:Landroidx/viewpager2/adapter/d;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/viewpager2/adapter/d;->j:Landroidx/viewpager2/adapter/b;

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/viewpager2/adapter/d;->f:Lq/g;

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/viewpager2/adapter/d;->e:Landroidx/fragment/app/FragmentManager;

    .line 8
    .line 9
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    goto/16 :goto_6

    .line 16
    .line 17
    :cond_0
    iget-object v4, p0, Landroidx/viewpager2/adapter/c;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 18
    .line 19
    invoke-virtual {v4}, Landroidx/viewpager2/widget/ViewPager2;->getScrollState()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    goto/16 :goto_6

    .line 26
    .line 27
    :cond_1
    invoke-virtual {v2}, Lq/g;->g()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-nez v4, :cond_2

    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    check-cast v0, LE1/x;

    .line 35
    .line 36
    iget-object v0, v0, LE1/x;->n:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_3

    .line 43
    .line 44
    goto/16 :goto_6

    .line 45
    .line 46
    :cond_3
    iget-object v4, p0, Landroidx/viewpager2/adapter/c;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 47
    .line 48
    invoke-virtual {v4}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-lt v4, v0, :cond_4

    .line 57
    .line 58
    goto/16 :goto_6

    .line 59
    .line 60
    :cond_4
    int-to-long v4, v4

    .line 61
    iget-wide v6, p0, Landroidx/viewpager2/adapter/c;->e:J

    .line 62
    .line 63
    cmp-long v0, v4, v6

    .line 64
    .line 65
    if-nez v0, :cond_5

    .line 66
    .line 67
    if-nez p1, :cond_5

    .line 68
    .line 69
    goto/16 :goto_6

    .line 70
    .line 71
    :cond_5
    invoke-virtual {v2, v4, v5}, Lq/g;->b(J)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 76
    .line 77
    if-eqz p1, :cond_e

    .line 78
    .line 79
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-nez p1, :cond_6

    .line 84
    .line 85
    goto/16 :goto_6

    .line 86
    .line 87
    :cond_6
    iput-wide v4, p0, Landroidx/viewpager2/adapter/c;->e:J

    .line 88
    .line 89
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .line 97
    .line 98
    const/4 v3, 0x0

    .line 99
    const/4 v4, 0x0

    .line 100
    move v5, v3

    .line 101
    :goto_0
    invoke-virtual {v2}, Lq/g;->g()I

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-ge v5, v6, :cond_b

    .line 106
    .line 107
    invoke-virtual {v2, v5}, Lq/g;->d(I)J

    .line 108
    .line 109
    .line 110
    move-result-wide v6

    .line 111
    invoke-virtual {v2, v5}, Lq/g;->h(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    check-cast v8, Landroidx/fragment/app/Fragment;

    .line 116
    .line 117
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 118
    .line 119
    .line 120
    move-result v9

    .line 121
    if-nez v9, :cond_7

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_7
    iget-wide v9, p0, Landroidx/viewpager2/adapter/c;->e:J

    .line 125
    .line 126
    cmp-long v9, v6, v9

    .line 127
    .line 128
    if-eqz v9, :cond_9

    .line 129
    .line 130
    sget-object v9, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 131
    .line 132
    invoke-virtual {p1, v8, v9}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    new-instance v9, Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .line 142
    .line 143
    iget-object v10, v1, Landroidx/viewpager2/adapter/b;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 144
    .line 145
    invoke-virtual {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 146
    .line 147
    .line 148
    move-result-object v10

    .line 149
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 150
    .line 151
    .line 152
    move-result v11

    .line 153
    if-nez v11, :cond_8

    .line 154
    .line 155
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_8
    invoke-static {v10}, LE/b;->g(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    throw p1

    .line 164
    :cond_9
    move-object v4, v8

    .line 165
    :goto_1
    iget-wide v9, p0, Landroidx/viewpager2/adapter/c;->e:J

    .line 166
    .line 167
    cmp-long v6, v6, v9

    .line 168
    .line 169
    if-nez v6, :cond_a

    .line 170
    .line 171
    const/4 v6, 0x1

    .line 172
    goto :goto_2

    .line 173
    :cond_a
    move v6, v3

    .line 174
    :goto_2
    invoke-virtual {v8, v6}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 175
    .line 176
    .line 177
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 178
    .line 179
    goto :goto_0

    .line 180
    :cond_b
    if-eqz v4, :cond_d

    .line 181
    .line 182
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 183
    .line 184
    invoke-virtual {p1, v4, v2}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    new-instance v2, Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .line 194
    .line 195
    iget-object v4, v1, Landroidx/viewpager2/adapter/b;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 196
    .line 197
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 202
    .line 203
    .line 204
    move-result v5

    .line 205
    if-nez v5, :cond_c

    .line 206
    .line 207
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_c
    invoke-static {v4}, LE/b;->g(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    throw p1

    .line 216
    :cond_d
    :goto_4
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->isEmpty()Z

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    if-nez v2, :cond_e

    .line 221
    .line 222
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    .line 223
    .line 224
    .line 225
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 229
    .line 230
    .line 231
    move-result p1

    .line 232
    :goto_5
    if-ge v3, p1, :cond_e

    .line 233
    .line 234
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    add-int/lit8 v3, v3, 0x1

    .line 239
    .line 240
    check-cast v2, Ljava/util/List;

    .line 241
    .line 242
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    invoke-static {v2}, Landroidx/viewpager2/adapter/b;->a(Ljava/util/List;)V

    .line 246
    .line 247
    .line 248
    goto :goto_5

    .line 249
    :cond_e
    :goto_6
    return-void
.end method
