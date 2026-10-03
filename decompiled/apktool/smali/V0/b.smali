.class public final LV0/b;
.super Landroidx/core/content/res/ResourcesCompat$FontCallback;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final synthetic a:La/a;

.field public final synthetic b:LV0/d;


# direct methods
.method public constructor <init>(LV0/d;La/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, LV0/b;->b:LV0/d;

    .line 2
    .line 3
    iput-object p2, p0, LV0/b;->a:La/a;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/core/content/res/ResourcesCompat$FontCallback;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onFontRetrievalFailed(I)V
    .locals 2

    .line 1
    iget-object v0, p0, LV0/b;->b:LV0/d;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, LV0/d;->m:Z

    .line 5
    .line 6
    iget-object v0, p0, LV0/b;->a:La/a;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, La/a;->w(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onFontRetrieved(Landroid/graphics/Typeface;)V
    .locals 2

    .line 1
    iget-object v0, p0, LV0/b;->b:LV0/d;

    .line 2
    .line 3
    iget v1, v0, LV0/d;->c:I

    .line 4
    .line 5
    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, v0, LV0/d;->n:Landroid/graphics/Typeface;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, v0, LV0/d;->m:Z

    .line 13
    .line 14
    iget-object p1, v0, LV0/d;->n:Landroid/graphics/Typeface;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iget-object v1, p0, LV0/b;->a:La/a;

    .line 18
    .line 19
    invoke-virtual {v1, p1, v0}, La/a;->x(Landroid/graphics/Typeface;Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
