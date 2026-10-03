.class public final Ly1/h1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ly1/j1;


# direct methods
.method public synthetic constructor <init>(Ly1/j1;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly1/h1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ly1/h1;->b:Ly1/j1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final a(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final b(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final c(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final d(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 1
    iget p1, p0, Ly1/h1;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    int-to-float p1, p2

    .line 10
    const/high16 p2, 0x42c80000    # 100.0f

    .line 11
    .line 12
    div-float/2addr p1, p2

    .line 13
    const p2, 0x3dcccccd    # 0.1f

    .line 14
    .line 15
    .line 16
    const/high16 p3, 0x3f800000    # 1.0f

    .line 17
    .line 18
    invoke-static {p1, p2, p3}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget-object p2, p0, Ly1/h1;->b:Ly1/j1;

    .line 23
    .line 24
    iget-object p3, p2, Ly1/j1;->i:Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 25
    .line 26
    if-eqz p3, :cond_1

    .line 27
    .line 28
    new-instance v0, Ly1/i1;

    .line 29
    .line 30
    invoke-direct {v0, p1}, Ly1/i1;-><init>(F)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3, v0}, Lcom/minhub/gamehub/editor/EditModeOverlay;->g(Lkotlin/jvm/functions/Function1;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p2}, Ly1/j1;->g()V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void

    .line 40
    :pswitch_0
    if-nez p3, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    const/16 p1, 0x14

    .line 44
    .line 45
    const/16 p3, 0x8c

    .line 46
    .line 47
    invoke-static {p2, p1, p3}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iget-object p2, p0, Ly1/h1;->b:Ly1/j1;

    .line 52
    .line 53
    iget-object p3, p2, Ly1/j1;->i:Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 54
    .line 55
    if-eqz p3, :cond_3

    .line 56
    .line 57
    new-instance v0, LT1/k;

    .line 58
    .line 59
    const/4 v1, 0x4

    .line 60
    invoke-direct {v0, p1, v1}, LT1/k;-><init>(II)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3, v0}, Lcom/minhub/gamehub/editor/EditModeOverlay;->g(Lkotlin/jvm/functions/Function1;)V

    .line 64
    .line 65
    .line 66
    :cond_3
    invoke-virtual {p2}, Ly1/j1;->g()V

    .line 67
    .line 68
    .line 69
    :goto_1
    return-void

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    iget p1, p0, Ly1/h1;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    iget p1, p0, Ly1/h1;->a:I

    .line 2
    .line 3
    return-void
.end method
