.class public final Ly1/w0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic b:Landroid/widget/LinearLayout;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Ly1/x0;

.field public final synthetic f:LP/H0;

.field public final synthetic g:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic h:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Ljava/util/List;Ljava/util/List;Ly1/x0;LP/H0;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly1/w0;->b:Landroid/widget/LinearLayout;

    .line 5
    .line 6
    iput-object p2, p0, Ly1/w0;->c:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Ly1/w0;->d:Ljava/util/List;

    .line 9
    .line 10
    iput-object p4, p0, Ly1/w0;->e:Ly1/x0;

    .line 11
    .line 12
    iput-object p5, p0, Ly1/w0;->f:LP/H0;

    .line 13
    .line 14
    iput-object p6, p0, Ly1/w0;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 15
    .line 16
    iput-object p7, p0, Ly1/w0;->h:Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 8

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    if-nez p1, :cond_1

    .line 10
    .line 11
    const-string p1, ""

    .line 12
    .line 13
    :cond_1
    move-object v7, p1

    .line 14
    iget-object v0, p0, Ly1/w0;->b:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    iget-object v1, p0, Ly1/w0;->c:Ljava/util/List;

    .line 17
    .line 18
    iget-object v2, p0, Ly1/w0;->d:Ljava/util/List;

    .line 19
    .line 20
    iget-object v3, p0, Ly1/w0;->e:Ly1/x0;

    .line 21
    .line 22
    iget-object v4, p0, Ly1/w0;->f:LP/H0;

    .line 23
    .line 24
    iget-object v5, p0, Ly1/w0;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 25
    .line 26
    iget-object v6, p0, Ly1/w0;->h:Lkotlin/jvm/functions/Function1;

    .line 27
    .line 28
    invoke-static/range {v0 .. v7}, Ly1/x0;->j(Landroid/widget/LinearLayout;Ljava/util/List;Ljava/util/List;Ly1/x0;LP/H0;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method
