.class public final LH/g;
.super Lcom/bumptech/glide/c;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final c:LH/f;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LH/f;

    .line 5
    .line 6
    invoke-direct {v0, p1}, LH/f;-><init>(Landroid/widget/TextView;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LH/g;->c:LH/f;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final Q(Z)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/emoji2/text/j;->k:Landroidx/emoji2/text/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-nez v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    iget-object v0, p0, LH/g;->c:LH/f;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, LH/f;->Q(Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final R(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, LH/g;->c:LH/f;

    .line 2
    .line 3
    sget-object v1, Landroidx/emoji2/text/j;->k:Landroidx/emoji2/text/j;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-nez v1, :cond_1

    .line 11
    .line 12
    iput-boolean p1, v0, LH/f;->e:Z

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    invoke-virtual {v0, p1}, LH/f;->R(Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final a0(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .locals 1

    .line 1
    sget-object v0, Landroidx/emoji2/text/j;->k:Landroidx/emoji2/text/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-nez v0, :cond_1

    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_1
    iget-object v0, p0, LH/g;->c:LH/f;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, LH/f;->a0(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final n([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 1

    .line 1
    sget-object v0, Landroidx/emoji2/text/j;->k:Landroidx/emoji2/text/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-nez v0, :cond_1

    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_1
    iget-object v0, p0, LH/g;->c:LH/f;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, LH/f;->n([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final r()Z
    .locals 1

    .line 1
    iget-object v0, p0, LH/g;->c:LH/f;

    .line 2
    .line 3
    iget-boolean v0, v0, LH/f;->e:Z

    .line 4
    .line 5
    return v0
.end method
