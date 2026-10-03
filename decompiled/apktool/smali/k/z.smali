.class public final Lk/z;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:LA1/b;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk/z;->a:Landroid/widget/TextView;

    .line 5
    .line 6
    new-instance v0, LA1/b;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "textView cannot be null"

    .line 12
    .line 13
    invoke-static {p1, v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    new-instance v1, LH/g;

    .line 17
    .line 18
    invoke-direct {v1, p1}, LH/g;-><init>(Landroid/widget/TextView;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, v0, LA1/b;->b:Ljava/lang/Object;

    .line 22
    .line 23
    iput-object v0, p0, Lk/z;->b:LA1/b;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/z;->b:LA1/b;

    .line 2
    .line 3
    iget-object v0, v0, LA1/b;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcom/bumptech/glide/c;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/c;->n([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final b(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lk/z;->a:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ld/a;->i:[I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/16 p2, 0xe

    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 24
    .line 25
    .line 26
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p2

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lk/z;->d(Z)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    .line 39
    .line 40
    throw p2
.end method

.method public final c(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/z;->b:LA1/b;

    .line 2
    .line 3
    iget-object v0, v0, LA1/b;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcom/bumptech/glide/c;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/c;->Q(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final d(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/z;->b:LA1/b;

    .line 2
    .line 3
    iget-object v0, v0, LA1/b;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcom/bumptech/glide/c;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/c;->R(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
