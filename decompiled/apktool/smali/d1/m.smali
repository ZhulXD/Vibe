.class public final Ld1/m;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final a:Landroid/util/SparseArray;

.field public final b:Ld1/n;

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(Ld1/n;Lk/Z0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ld1/m;->a:Landroid/util/SparseArray;

    .line 10
    .line 11
    iput-object p1, p0, Ld1/m;->b:Ld1/n;

    .line 12
    .line 13
    iget-object p1, p2, Lk/Z0;->b:Landroid/content/res/TypedArray;

    .line 14
    .line 15
    const/16 p2, 0x1c

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    iput p2, p0, Ld1/m;->c:I

    .line 23
    .line 24
    const/16 p2, 0x34

    .line 25
    .line 26
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput p1, p0, Ld1/m;->d:I

    .line 31
    .line 32
    return-void
.end method
