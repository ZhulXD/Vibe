.class public final LX/k;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroidx/core/view/accessibility/AccessibilityViewCommand;


# instance fields
.field public final synthetic a:LX/m;


# direct methods
.method public constructor <init>(LX/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LX/k;->a:LX/m;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final perform(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;)Z
    .locals 2

    .line 1
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 p2, 0x1

    .line 8
    add-int/2addr p1, p2

    .line 9
    iget-object v0, p0, LX/k;->a:LX/m;

    .line 10
    .line 11
    iget-object v0, v0, LX/m;->e:Landroidx/viewpager2/widget/ViewPager2;

    .line 12
    .line 13
    iget-boolean v1, v0, Landroidx/viewpager2/widget/ViewPager2;->s:Z

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->c(IZ)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return p2
.end method
