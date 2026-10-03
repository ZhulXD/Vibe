.class public final Ly1/K0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/minhub/gamehub/game/GodotGameActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/game/GodotGameActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly1/K0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ly1/K0;->b:Lcom/minhub/gamehub/game/GodotGameActivity;

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
    iget p1, p0, Ly1/K0;->a:I

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
    iget-object p1, p0, Ly1/K0;->b:Lcom/minhub/gamehub/game/GodotGameActivity;

    .line 10
    .line 11
    iget-object p3, p1, Lcom/minhub/gamehub/game/GodotGameActivity;->m:Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 12
    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    new-instance v0, LT1/k;

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    invoke-direct {v0, p2, v1}, LT1/k;-><init>(II)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3, v0}, Lcom/minhub/gamehub/editor/EditModeOverlay;->g(Lkotlin/jvm/functions/Function1;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GodotGameActivity;->r()V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void

    .line 28
    :pswitch_0
    if-nez p3, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    iget-object p1, p0, Ly1/K0;->b:Lcom/minhub/gamehub/game/GodotGameActivity;

    .line 32
    .line 33
    iget-object p3, p1, Lcom/minhub/gamehub/game/GodotGameActivity;->m:Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 34
    .line 35
    if-eqz p3, :cond_3

    .line 36
    .line 37
    new-instance v0, LT1/k;

    .line 38
    .line 39
    const/4 v1, 0x2

    .line 40
    invoke-direct {v0, p2, v1}, LT1/k;-><init>(II)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3, v0}, Lcom/minhub/gamehub/editor/EditModeOverlay;->g(Lkotlin/jvm/functions/Function1;)V

    .line 44
    .line 45
    .line 46
    :cond_3
    invoke-virtual {p1}, Lcom/minhub/gamehub/game/GodotGameActivity;->r()V

    .line 47
    .line 48
    .line 49
    :goto_1
    return-void

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    iget p1, p0, Ly1/K0;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    iget p1, p0, Ly1/K0;->a:I

    .line 2
    .line 3
    return-void
.end method
