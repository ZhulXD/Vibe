.class public final LF0/a;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LF0/a;->a:I

    .line 2
    .line 3
    iput-object p2, p0, LF0/a;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget p2, p0, LF0/a;->a:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, LF0/a;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p2, Lg1/a;

    .line 9
    .line 10
    const/4 p3, 0x2

    .line 11
    new-array p3, p3, [I

    .line 12
    .line 13
    invoke-virtual {p1, p3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 14
    .line 15
    .line 16
    const/4 p4, 0x0

    .line 17
    aget p3, p3, p4

    .line 18
    .line 19
    iput p3, p2, Lg1/a;->K:I

    .line 20
    .line 21
    iget-object p2, p2, Lg1/a;->D:Landroid/graphics/Rect;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_0
    iget-object p1, p0, LF0/a;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, LG0/a;

    .line 30
    .line 31
    iget-object p2, p1, LT0/d;->o:Landroid/widget/ImageView;

    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    if-nez p3, :cond_0

    .line 38
    .line 39
    iget-object p1, p1, LT0/d;->G:LD0/a;

    .line 40
    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    new-instance p3, Landroid/graphics/Rect;

    .line 44
    .line 45
    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 52
    .line 53
    .line 54
    const/4 p3, 0x0

    .line 55
    invoke-virtual {p1, p2, p3}, LD0/a;->i(Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void

    .line 59
    :pswitch_1
    const/4 p1, 0x0

    .line 60
    throw p1

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
