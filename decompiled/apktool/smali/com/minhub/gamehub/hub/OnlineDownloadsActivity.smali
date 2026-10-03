.class public final Lcom/minhub/gamehub/hub/OnlineDownloadsActivity;
.super LS1/c;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/minhub/gamehub/hub/OnlineDownloadsActivity;",
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
        "SMAP\nOnlineDownloadsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnlineDownloadsActivity.kt\ncom/minhub/gamehub/hub/OnlineDownloadsActivity\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,52:1\n161#2,8:53\n*S KotlinDebug\n*F\n+ 1 OnlineDownloadsActivity.kt\ncom/minhub/gamehub/hub/OnlineDownloadsActivity\n*L\n31#1:53,8\n*E\n"
    }
.end annotation


# static fields
.field public static final synthetic h:I


# instance fields
.field public e:LI1/j;

.field public f:LC1/G1;

.field public g:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;


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
    const v0, 0x7f0c0027

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
    if-eqz v5, :cond_6

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
    if-eqz v6, :cond_6

    .line 40
    .line 41
    const v0, 0x7f09026f

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
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    .line 51
    if-eqz v7, :cond_6

    .line 52
    .line 53
    const v0, 0x7f090346

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
    check-cast v8, Landroid/widget/TextView;

    .line 62
    .line 63
    if-eqz v8, :cond_6

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
    const/4 v9, 0x2

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
    iput-object v3, p0, Lcom/minhub/gamehub/hub/OnlineDownloadsActivity;->e:LI1/j;

    .line 80
    .line 81
    invoke-virtual {p0, v4}, Le/j;->setContentView(Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/minhub/gamehub/hub/OnlineDownloadsActivity;->e:LI1/j;

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
    const/4 v3, 0x3

    .line 101
    invoke-direct {v1, v3, p0}, LB1/b;-><init>(ILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 105
    .line 106
    .line 107
    sget-object p1, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->Companion:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue$Companion;

    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    const-string v3, "getApplicationContext(...)"

    .line 114
    .line 115
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v1}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue$Companion;->getInstance(Landroid/content/Context;)Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iput-object p1, p0, Lcom/minhub/gamehub/hub/OnlineDownloadsActivity;->g:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;

    .line 123
    .line 124
    new-instance p1, LC1/G1;

    .line 125
    .line 126
    invoke-direct {p1}, LP/W;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    iput-object v1, p1, LC1/G1;->d:Ljava/util/List;

    .line 134
    .line 135
    iput-object p1, p0, Lcom/minhub/gamehub/hub/OnlineDownloadsActivity;->f:LC1/G1;

    .line 136
    .line 137
    iget-object p1, p0, Lcom/minhub/gamehub/hub/OnlineDownloadsActivity;->e:LI1/j;

    .line 138
    .line 139
    if-nez p1, :cond_1

    .line 140
    .line 141
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    move-object p1, v2

    .line 145
    :cond_1
    iget-object p1, p1, LI1/j;->c:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast p1, Landroid/widget/ImageButton;

    .line 148
    .line 149
    new-instance v1, LC1/V;

    .line 150
    .line 151
    const/4 v3, 0x2

    .line 152
    invoke-direct {v1, v3, p0}, LC1/V;-><init>(ILjava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, Lcom/minhub/gamehub/hub/OnlineDownloadsActivity;->e:LI1/j;

    .line 159
    .line 160
    if-nez p1, :cond_2

    .line 161
    .line 162
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    move-object p1, v2

    .line 166
    :cond_2
    iget-object p1, p1, LI1/j;->e:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 169
    .line 170
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 171
    .line 172
    const/4 v3, 0x1

    .line 173
    invoke-direct {v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(LP/g0;)V

    .line 177
    .line 178
    .line 179
    iget-object p1, p0, Lcom/minhub/gamehub/hub/OnlineDownloadsActivity;->e:LI1/j;

    .line 180
    .line 181
    if-nez p1, :cond_3

    .line 182
    .line 183
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    move-object p1, v2

    .line 187
    :cond_3
    iget-object p1, p1, LI1/j;->e:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 190
    .line 191
    iget-object v0, p0, Lcom/minhub/gamehub/hub/OnlineDownloadsActivity;->f:LC1/G1;

    .line 192
    .line 193
    if-nez v0, :cond_4

    .line 194
    .line 195
    const-string v0, "adapter"

    .line 196
    .line 197
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    move-object v0, v2

    .line 201
    :cond_4
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(LP/W;)V

    .line 202
    .line 203
    .line 204
    iget-object p1, p0, Lcom/minhub/gamehub/hub/OnlineDownloadsActivity;->g:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;

    .line 205
    .line 206
    if-nez p1, :cond_5

    .line 207
    .line 208
    const-string p1, "queue"

    .line 209
    .line 210
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    goto :goto_0

    .line 214
    :cond_5
    move-object v2, p1

    .line 215
    :goto_0
    new-instance p1, LA1/p;

    .line 216
    .line 217
    const/4 v0, 0x7

    .line 218
    invoke-direct {p1, v0, p0}, LA1/p;-><init>(ILjava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2, p1}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->observe(Lkotlin/jvm/functions/Function1;)V

    .line 222
    .line 223
    .line 224
    return-void

    .line 225
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    new-instance v0, Ljava/lang/NullPointerException;

    .line 234
    .line 235
    const-string v1, "Missing required view with ID: "

    .line 236
    .line 237
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    throw v0
.end method
