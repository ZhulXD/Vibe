.class public final synthetic Landroidx/activity/j;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field public final synthetic a:LX1/p;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(LX1/p;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/activity/j;->a:LX1/p;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/activity/j;->b:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onScrollChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/activity/j;->a:LX1/p;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/activity/j;->b:Landroid/view/View;

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/activity/PipHintTrackerKt$trackPipAnimationHintView$flow$1;->b(LX1/p;Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
