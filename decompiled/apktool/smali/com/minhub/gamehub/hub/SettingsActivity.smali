.class public final Lcom/minhub/gamehub/hub/SettingsActivity;
.super LS1/c;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/minhub/gamehub/hub/SettingsActivity;",
        "LS1/c;",
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
        "SMAP\nSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsActivity.kt\ncom/minhub/gamehub/hub/SettingsActivity\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,38:1\n161#2,8:39\n*S KotlinDebug\n*F\n+ 1 SettingsActivity.kt\ncom/minhub/gamehub/hub/SettingsActivity\n*L\n22#1:39,8\n*E\n"
    }
.end annotation


# static fields
.field public static final synthetic f:I


# instance fields
.field public e:LI1/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LS1/c;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const v0, 0x7f0c0029

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const v0, 0x7f090079

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    move-object v5, v1

    .line 25
    check-cast v5, Landroid/widget/ImageButton;

    .line 26
    .line 27
    if-eqz v5, :cond_7

    .line 28
    .line 29
    const v0, 0x7f0901c3

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    move-object v6, v1

    .line 37
    check-cast v6, Landroid/widget/LinearLayout;

    .line 38
    .line 39
    if-eqz v6, :cond_7

    .line 40
    .line 41
    const v0, 0x7f0902e9

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    move-object v7, v1

    .line 49
    check-cast v7, Lcom/google/android/material/tabs/TabLayout;

    .line 50
    .line 51
    if-eqz v7, :cond_7

    .line 52
    .line 53
    const v0, 0x7f0903c2

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    move-object v8, v1

    .line 61
    check-cast v8, Landroidx/viewpager2/widget/ViewPager2;

    .line 62
    .line 63
    if-eqz v8, :cond_7

    .line 64
    .line 65
    new-instance v3, LI1/j;

    .line 66
    .line 67
    move-object v4, p1

    .line 68
    check-cast v4, Landroid/widget/LinearLayout;

    .line 69
    .line 70
    const/4 v9, 0x3

    .line 71
    invoke-direct/range {v3 .. v9}, LI1/j;-><init>(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 72
    .line 73
    .line 74
    const-string p1, "inflate(...)"

    .line 75
    .line 76
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iput-object v3, p0, Lcom/minhub/gamehub/hub/SettingsActivity;->e:LI1/j;

    .line 80
    .line 81
    invoke-virtual {p0, v4}, Le/j;->setContentView(Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/minhub/gamehub/hub/SettingsActivity;->e:LI1/j;

    .line 85
    .line 86
    const-string v0, "b"

    .line 87
    .line 88
    if-nez p1, :cond_0

    .line 89
    .line 90
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    move-object p1, v2

    .line 94
    :cond_0
    iget-object p1, p1, LI1/j;->b:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast p1, Landroid/widget/LinearLayout;

    .line 97
    .line 98
    new-instance v1, LB1/b;

    .line 99
    .line 100
    const/4 v3, 0x5

    .line 101
    invoke-direct {v1, v3, p0}, LB1/b;-><init>(ILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcom/minhub/gamehub/hub/SettingsActivity;->e:LI1/j;

    .line 108
    .line 109
    if-nez p1, :cond_1

    .line 110
    .line 111
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    move-object p1, v2

    .line 115
    :cond_1
    iget-object p1, p1, LI1/j;->c:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast p1, Landroid/widget/ImageButton;

    .line 118
    .line 119
    new-instance v1, LC1/V;

    .line 120
    .line 121
    const/4 v3, 0x3

    .line 122
    invoke-direct {v1, v3, p0}, LC1/V;-><init>(ILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    .line 127
    .line 128
    new-instance p1, LE1/x;

    .line 129
    .line 130
    invoke-direct {p1, p0}, LE1/x;-><init>(Lcom/minhub/gamehub/hub/SettingsActivity;)V

    .line 131
    .line 132
    .line 133
    iget-object v1, p0, Lcom/minhub/gamehub/hub/SettingsActivity;->e:LI1/j;

    .line 134
    .line 135
    if-nez v1, :cond_2

    .line 136
    .line 137
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    move-object v1, v2

    .line 141
    :cond_2
    iget-object v1, v1, LI1/j;->f:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v1, Landroidx/viewpager2/widget/ViewPager2;

    .line 144
    .line 145
    invoke-virtual {v1, p1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(LP/W;)V

    .line 146
    .line 147
    .line 148
    new-instance v1, Lc1/j;

    .line 149
    .line 150
    iget-object v3, p0, Lcom/minhub/gamehub/hub/SettingsActivity;->e:LI1/j;

    .line 151
    .line 152
    if-nez v3, :cond_3

    .line 153
    .line 154
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    move-object v3, v2

    .line 158
    :cond_3
    iget-object v3, v3, LI1/j;->e:Ljava/lang/Object;

    .line 159
    .line 160
    move-object v4, v3

    .line 161
    check-cast v4, Lcom/google/android/material/tabs/TabLayout;

    .line 162
    .line 163
    iget-object v3, p0, Lcom/minhub/gamehub/hub/SettingsActivity;->e:LI1/j;

    .line 164
    .line 165
    if-nez v3, :cond_4

    .line 166
    .line 167
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_4
    move-object v2, v3

    .line 172
    :goto_0
    iget-object v0, v2, LI1/j;->f:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 175
    .line 176
    new-instance v2, LB1/b;

    .line 177
    .line 178
    const/4 v3, 0x6

    .line 179
    invoke-direct {v2, v3, p1}, LB1/b;-><init>(ILjava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    invoke-direct {v1, v4, v0, v2}, Lc1/j;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;LB1/b;)V

    .line 183
    .line 184
    .line 185
    iget-boolean p1, v1, Lc1/j;->e:Z

    .line 186
    .line 187
    if-nez p1, :cond_6

    .line 188
    .line 189
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()LP/W;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    iput-object p1, v1, Lc1/j;->d:LP/W;

    .line 194
    .line 195
    if-eqz p1, :cond_5

    .line 196
    .line 197
    const/4 p1, 0x1

    .line 198
    iput-boolean p1, v1, Lc1/j;->e:Z

    .line 199
    .line 200
    new-instance p1, Lc1/i;

    .line 201
    .line 202
    invoke-direct {p1, v4}, Lc1/i;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    .line 203
    .line 204
    .line 205
    iget-object v2, v0, Landroidx/viewpager2/widget/ViewPager2;->d:LX/b;

    .line 206
    .line 207
    iget-object v2, v2, LX/b;->b:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast v2, Ljava/util/ArrayList;

    .line 210
    .line 211
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    new-instance p1, LC1/y0;

    .line 215
    .line 216
    const/4 v2, 0x2

    .line 217
    invoke-direct {p1, v0, v2}, LC1/y0;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v4, p1}, Lcom/google/android/material/tabs/TabLayout;->a(Lc1/b;)V

    .line 221
    .line 222
    .line 223
    new-instance p1, LP/q0;

    .line 224
    .line 225
    invoke-direct {p1, v2, v1}, LP/q0;-><init>(ILjava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    iget-object v2, v1, Lc1/j;->d:LP/W;

    .line 229
    .line 230
    iget-object v2, v2, LP/W;->a:LP/X;

    .line 231
    .line 232
    invoke-virtual {v2, p1}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1}, Lc1/j;->a()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 239
    .line 240
    .line 241
    move-result v5

    .line 242
    const/4 v8, 0x1

    .line 243
    const/4 v9, 0x1

    .line 244
    const/4 v6, 0x0

    .line 245
    const/4 v7, 0x1

    .line 246
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/material/tabs/TabLayout;->l(IFZZZ)V

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 251
    .line 252
    const-string v0, "TabLayoutMediator attached before ViewPager2 has an adapter"

    .line 253
    .line 254
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    throw p1

    .line 258
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 259
    .line 260
    const-string v0, "TabLayoutMediator is already attached"

    .line 261
    .line 262
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    throw p1

    .line 266
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    new-instance v0, Ljava/lang/NullPointerException;

    .line 275
    .line 276
    const-string v1, "Missing required view with ID: "

    .line 277
    .line 278
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    throw v0
.end method
