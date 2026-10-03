.class public final Lk/F0;
.super Landroid/database/DataSetObserver;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final synthetic a:Lk/I0;


# direct methods
.method public constructor <init>(Lk/I0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/F0;->a:Lk/I0;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk/F0;->a:Lk/I0;

    .line 2
    .line 3
    iget-object v1, v0, Lk/I0;->A:Lk/D;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lk/I0;->c()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/F0;->a:Lk/I0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lk/I0;->dismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
