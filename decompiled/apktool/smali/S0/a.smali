.class public abstract LS0/a;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final a:Landroid/animation/TimeInterpolator;

.field public final b:Landroid/view/View;

.field public final c:I

.field public final d:I

.field public final e:I

.field public f:Landroidx/activity/BackEventCompat;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LS0/a;->b:Landroid/view/View;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    .line 13
    invoke-static {v0, v0, v0, v1}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const v1, 0x7f040316

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v1, v0}, Lcom/bumptech/glide/c;->O(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, LS0/a;->a:Landroid/animation/TimeInterpolator;

    .line 25
    .line 26
    const v0, 0x7f040305

    .line 27
    .line 28
    .line 29
    const/16 v1, 0x12c

    .line 30
    .line 31
    invoke-static {p1, v0, v1}, Lcom/bumptech/glide/c;->N(Landroid/content/Context;II)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, LS0/a;->c:I

    .line 36
    .line 37
    const v0, 0x7f04030a

    .line 38
    .line 39
    .line 40
    const/16 v1, 0x96

    .line 41
    .line 42
    invoke-static {p1, v0, v1}, Lcom/bumptech/glide/c;->N(Landroid/content/Context;II)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iput v0, p0, LS0/a;->d:I

    .line 47
    .line 48
    const v0, 0x7f040309

    .line 49
    .line 50
    .line 51
    const/16 v1, 0x64

    .line 52
    .line 53
    invoke-static {p1, v0, v1}, Lcom/bumptech/glide/c;->N(Landroid/content/Context;II)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    iput p1, p0, LS0/a;->e:I

    .line 58
    .line 59
    return-void
.end method
