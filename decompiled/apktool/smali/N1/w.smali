.class public final LN1/w;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lq/e;

    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lq/j;-><init>(I)V

    .line 5
    iput-object v0, p0, LN1/w;->a:Ljava/lang/Object;

    .line 6
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, LN1/w;->b:Ljava/lang/Object;

    .line 7
    new-instance v0, Lq/g;

    invoke-direct {v0}, Lq/g;-><init>()V

    iput-object v0, p0, LN1/w;->c:Ljava/lang/Object;

    .line 8
    new-instance v0, Lq/e;

    .line 9
    invoke-direct {v0, v1}, Lq/j;-><init>(I)V

    .line 10
    iput-object v0, p0, LN1/w;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Typeface;LG/b;)V
    .locals 7

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, LN1/w;->d:Ljava/lang/Object;

    .line 13
    iput-object p2, p0, LN1/w;->a:Ljava/lang/Object;

    .line 14
    new-instance p1, Landroidx/emoji2/text/s;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Landroidx/emoji2/text/s;-><init>(I)V

    iput-object p1, p0, LN1/w;->c:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 15
    invoke-virtual {p2, p1}, LG/c;->a(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 16
    iget v2, p2, LG/c;->a:I

    add-int/2addr v0, v2

    .line 17
    iget-object v2, p2, LG/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    add-int/2addr v2, v0

    .line 18
    iget-object v0, p2, LG/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x2

    .line 19
    new-array v0, v0, [C

    iput-object v0, p0, LN1/w;->b:Ljava/lang/Object;

    .line 20
    invoke-virtual {p2, p1}, LG/c;->a(I)I

    move-result p1

    if-eqz p1, :cond_1

    .line 21
    iget v0, p2, LG/c;->a:I

    add-int/2addr p1, v0

    .line 22
    iget-object v0, p2, LG/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr v0, p1

    .line 23
    iget-object p1, p2, LG/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    move p2, v1

    :goto_2
    if-ge p2, p1, :cond_6

    .line 24
    new-instance v0, Landroidx/emoji2/text/v;

    invoke-direct {v0, p0, p2}, Landroidx/emoji2/text/v;-><init>(LN1/w;I)V

    .line 25
    invoke-virtual {v0}, Landroidx/emoji2/text/v;->b()LG/a;

    move-result-object v2

    const/4 v3, 0x4

    .line 26
    invoke-virtual {v2, v3}, LG/c;->a(I)I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v4, v2, LG/c;->b:Ljava/nio/ByteBuffer;

    iget v2, v2, LG/c;->a:I

    add-int/2addr v3, v2

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    goto :goto_3

    :cond_2
    move v2, v1

    .line 27
    :goto_3
    iget-object v3, p0, LN1/w;->b:Ljava/lang/Object;

    check-cast v3, [C

    mul-int/lit8 v4, p2, 0x2

    invoke-static {v2, v3, v4}, Ljava/lang/Character;->toChars(I[CI)I

    .line 28
    const-string v2, "emoji metadata cannot be null"

    invoke-static {v0, v2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-virtual {v0}, Landroidx/emoji2/text/v;->b()LG/a;

    move-result-object v2

    const/16 v3, 0x10

    .line 30
    invoke-virtual {v2, v3}, LG/c;->a(I)I

    move-result v4

    if-eqz v4, :cond_3

    .line 31
    iget v5, v2, LG/c;->a:I

    add-int/2addr v4, v5

    .line 32
    iget-object v5, v2, LG/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    add-int/2addr v5, v4

    .line 33
    iget-object v2, v2, LG/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    goto :goto_4

    :cond_3
    move v2, v1

    :goto_4
    const/4 v4, 0x1

    if-lez v2, :cond_4

    move v2, v4

    goto :goto_5

    :cond_4
    move v2, v1

    .line 34
    :goto_5
    const-string v5, "invalid metadata codepoint length"

    invoke-static {v2, v5}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 35
    iget-object v2, p0, LN1/w;->c:Ljava/lang/Object;

    check-cast v2, Landroidx/emoji2/text/s;

    .line 36
    invoke-virtual {v0}, Landroidx/emoji2/text/v;->b()LG/a;

    move-result-object v5

    .line 37
    invoke-virtual {v5, v3}, LG/c;->a(I)I

    move-result v3

    if-eqz v3, :cond_5

    .line 38
    iget v6, v5, LG/c;->a:I

    add-int/2addr v3, v6

    .line 39
    iget-object v6, v5, LG/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    add-int/2addr v6, v3

    .line 40
    iget-object v3, v5, LG/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    goto :goto_6

    :cond_5
    move v3, v1

    :goto_6
    sub-int/2addr v3, v4

    .line 41
    invoke-virtual {v2, v0, v1, v3}, Landroidx/emoji2/text/s;->a(Landroidx/emoji2/text/v;II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    const-string v0, "x"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "y"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "z"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "t"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN1/w;->a:Ljava/lang/Object;

    iput-object p2, p0, LN1/w;->b:Ljava/lang/Object;

    iput-object p3, p0, LN1/w;->c:Ljava/lang/Object;

    iput-object p4, p0, LN1/w;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/security/Signature;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, LN1/w;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, LN1/w;->b:Ljava/lang/Object;

    .line 45
    iput-object p1, p0, LN1/w;->c:Ljava/lang/Object;

    .line 46
    iput-object p1, p0, LN1/w;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Cipher;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, LN1/w;->a:Ljava/lang/Object;

    .line 49
    iput-object p1, p0, LN1/w;->b:Ljava/lang/Object;

    .line 50
    iput-object v0, p0, LN1/w;->c:Ljava/lang/Object;

    .line 51
    iput-object v0, p0, LN1/w;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Mac;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, LN1/w;->a:Ljava/lang/Object;

    .line 54
    iput-object v0, p0, LN1/w;->b:Ljava/lang/Object;

    .line 55
    iput-object p1, p0, LN1/w;->c:Ljava/lang/Object;

    .line 56
    iput-object v0, p0, LN1/w;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .line 1
    int-to-float p1, p1

    .line 2
    iget-object v0, p0, LN1/w;->a:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 15
    .line 16
    mul-float/2addr p1, v0

    .line 17
    float-to-int p1, p1

    .line 18
    return p1
.end method

.method public b(Li/a;)Li/e;
    .locals 5

    .line 1
    iget-object v0, p0, LN1/w;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Li/e;

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    iget-object v4, v3, Li/e;->b:Li/a;

    .line 21
    .line 22
    if-ne v4, p1, :cond_0

    .line 23
    .line 24
    return-object v3

    .line 25
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    new-instance v1, Li/e;

    .line 29
    .line 30
    iget-object v2, p0, LN1/w;->b:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v2, Landroid/content/Context;

    .line 33
    .line 34
    invoke-direct {v1, v2, p1}, Li/e;-><init>(Landroid/content/Context;Li/a;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    return-object v1
.end method

.method public c(Li/a;Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    iget-object v0, p0, LN1/w;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ActionMode$Callback;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, LN1/w;->b(Li/a;)Li/e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v1, Lj/x;

    .line 10
    .line 11
    iget-object v2, p0, LN1/w;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Landroid/content/Context;

    .line 14
    .line 15
    check-cast p2, Landroidx/core/internal/view/SupportMenuItem;

    .line 16
    .line 17
    invoke-direct {v1, v2, p2}, Lj/x;-><init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenuItem;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, p1, v1}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public d(Li/a;Landroid/view/Menu;)Z
    .locals 5

    .line 1
    iget-object v0, p0, LN1/w;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ActionMode$Callback;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, LN1/w;->b(Li/a;)Li/e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v1, p0, LN1/w;->d:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Lq/j;

    .line 12
    .line 13
    invoke-virtual {v1, p2}, Lq/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroid/view/Menu;

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    new-instance v2, Lj/F;

    .line 22
    .line 23
    iget-object v3, p0, LN1/w;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v3, Landroid/content/Context;

    .line 26
    .line 27
    move-object v4, p2

    .line 28
    check-cast v4, Landroidx/core/internal/view/SupportMenu;

    .line 29
    .line 30
    invoke-direct {v2, v3, v4}, Lj/F;-><init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenu;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p2, v2}, Lq/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-interface {v0, p1, v2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1
.end method

.method public e(Ljava/util/List;Z)V
    .locals 10

    .line 1
    iget-object v0, p0, LN1/w;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/widget/PopupWindow;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, LN1/w;->d:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v1, p0, LN1/w;->a:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const v3, 0x7f0c00b8

    .line 22
    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const v3, 0x7f0901bd

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Landroid/widget/LinearLayout;

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    const-string v6, "apply(...)"

    .line 47
    .line 48
    const v7, 0x7f090327

    .line 49
    .line 50
    .line 51
    const v8, 0x7f0c0057

    .line 52
    .line 53
    .line 54
    if-eqz v5, :cond_1

    .line 55
    .line 56
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    check-cast v5, Ly1/e;

    .line 61
    .line 62
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    invoke-virtual {v9, v8, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    invoke-virtual {v8, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    check-cast v7, Landroid/widget/TextView;

    .line 75
    .line 76
    iget-object v9, v5, Ly1/e;->b:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    new-instance v7, LC1/j;

    .line 82
    .line 83
    const/16 v9, 0x1a

    .line 84
    .line 85
    invoke-direct {v7, v9, p0, v5}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v8, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    if-eqz p2, :cond_2

    .line 99
    .line 100
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p1, v8, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    check-cast p2, Landroid/widget/TextView;

    .line 113
    .line 114
    const-string v0, "Stats Menu"

    .line 115
    .line 116
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    new-instance p2, LC1/V;

    .line 120
    .line 121
    const/16 v0, 0x8

    .line 122
    .line 123
    invoke-direct {p2, v0, p0}, LC1/V;-><init>(ILjava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    .line 128
    .line 129
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 133
    .line 134
    .line 135
    :cond_2
    new-instance p1, Landroid/widget/PopupWindow;

    .line 136
    .line 137
    const/16 p2, 0xdc

    .line 138
    .line 139
    invoke-virtual {p0, p2}, LN1/w;->a(I)I

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    const/4 v0, -0x2

    .line 144
    const/4 v1, 0x1

    .line 145
    invoke-direct {p1, v2, p2, v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 149
    .line 150
    .line 151
    const/16 p2, 0xe

    .line 152
    .line 153
    invoke-virtual {p0, p2}, LN1/w;->a(I)I

    .line 154
    .line 155
    .line 156
    move-result p2

    .line 157
    int-to-float p2, p2

    .line 158
    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 159
    .line 160
    .line 161
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    .line 162
    .line 163
    invoke-direct {p2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    .line 168
    .line 169
    iget-object p2, p0, LN1/w;->b:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast p2, Landroid/view/View;

    .line 172
    .line 173
    const/4 v0, 0x6

    .line 174
    invoke-virtual {p0, v0}, LN1/w;->a(I)I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    const/16 v1, 0x8

    .line 179
    .line 180
    invoke-virtual {p0, v1}, LN1/w;->a(I)I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    const v2, 0x800005

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 188
    .line 189
    .line 190
    new-instance p2, Ly1/c;

    .line 191
    .line 192
    invoke-direct {p2, p0}, Ly1/c;-><init>(LN1/w;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 196
    .line 197
    .line 198
    iput-object p1, p0, LN1/w;->d:Ljava/lang/Object;

    .line 199
    .line 200
    return-void
.end method
