.class public final Ld1/f;
.super LY0/g;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final r:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(LY0/m;Landroid/graphics/RectF;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LY0/g;-><init>(LY0/m;)V

    .line 2
    iput-object p2, p0, Ld1/f;->r:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Ld1/f;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, LY0/g;-><init>(LY0/g;)V

    .line 4
    iget-object p1, p1, Ld1/f;->r:Landroid/graphics/RectF;

    iput-object p1, p0, Ld1/f;->r:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    new-instance v0, Ld1/g;

    .line 2
    .line 3
    invoke-direct {v0, p0}, LY0/h;-><init>(LY0/g;)V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Ld1/g;->y:Ld1/f;

    .line 7
    .line 8
    invoke-virtual {v0}, LY0/h;->invalidateSelf()V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
