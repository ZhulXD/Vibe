.class public final Lk/K;
.super Lk/y0;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final synthetic k:Lk/P;

.field public final synthetic l:Lk/T;


# direct methods
.method public constructor <init>(Lk/T;Lk/T;Lk/P;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/K;->l:Lk/T;

    .line 2
    .line 3
    iput-object p3, p0, Lk/K;->k:Lk/P;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lk/y0;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b()Lj/G;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/K;->k:Lk/P;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lk/K;->l:Lk/T;

    .line 2
    .line 3
    invoke-virtual {v0}, Lk/T;->getInternalPopup()Lk/S;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Lk/S;->b()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object v1, v0, Lk/T;->g:Lk/S;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getTextDirection()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getTextAlignment()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-interface {v1, v2, v0}, Lk/S;->m(II)V

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 v0, 0x1

    .line 27
    return v0
.end method
