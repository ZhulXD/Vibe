.class public final LV0/c;
.super La/a;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final synthetic m:Landroid/content/Context;

.field public final synthetic n:Landroid/text/TextPaint;

.field public final synthetic o:La/a;

.field public final synthetic p:LV0/d;


# direct methods
.method public constructor <init>(LV0/d;Landroid/content/Context;Landroid/text/TextPaint;La/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LV0/c;->p:LV0/d;

    .line 5
    .line 6
    iput-object p2, p0, LV0/c;->m:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, LV0/c;->n:Landroid/text/TextPaint;

    .line 9
    .line 10
    iput-object p4, p0, LV0/c;->o:La/a;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final w(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LV0/c;->o:La/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, La/a;->w(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final x(Landroid/graphics/Typeface;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, LV0/c;->m:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, LV0/c;->n:Landroid/text/TextPaint;

    .line 4
    .line 5
    iget-object v2, p0, LV0/c;->p:LV0/d;

    .line 6
    .line 7
    invoke-virtual {v2, v0, v1, p1}, LV0/d;->f(Landroid/content/Context;Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, LV0/c;->o:La/a;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, La/a;->x(Landroid/graphics/Typeface;Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
