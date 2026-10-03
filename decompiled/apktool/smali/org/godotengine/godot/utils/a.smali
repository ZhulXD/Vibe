.class public final synthetic Lorg/godotengine/godot/utils/a;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/widget/PopupWindow;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/PopupWindow;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/godotengine/godot/utils/a;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/godotengine/godot/utils/a;->c:Landroid/widget/PopupWindow;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/godotengine/godot/utils/a;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/godotengine/godot/utils/a;->c:Landroid/widget/PopupWindow;

    .line 7
    .line 8
    invoke-static {v0}, Lorg/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1;->a(Landroid/widget/PopupWindow;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object v0, p0, Lorg/godotengine/godot/utils/a;->c:Landroid/widget/PopupWindow;

    .line 13
    .line 14
    invoke-static {v0}, Lorg/godotengine/godot/utils/DialogUtils$Companion;->e(Landroid/widget/PopupWindow;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
