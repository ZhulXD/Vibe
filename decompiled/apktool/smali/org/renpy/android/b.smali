.class public final synthetic Lorg/renpy/android/b;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/renpy/android/b;->b:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final a(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/renpy/android/b;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget p1, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o:I

    .line 7
    .line 8
    :pswitch_0
    return-void

    .line 9
    :pswitch_1
    sget p1, Lcom/minhub/gamehub/game/GodotGameActivity;->q:I

    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_2
    sget p1, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_3
    invoke-static {p1}, Lorg/renpy/android/PythonSDLActivity;->e(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
