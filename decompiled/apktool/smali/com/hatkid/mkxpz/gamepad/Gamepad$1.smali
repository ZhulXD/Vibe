.class Lcom/hatkid/mkxpz/gamepad/Gamepad$1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$OnButtonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hatkid/mkxpz/gamepad/Gamepad;->createDynamicButton(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hatkid/mkxpz/gamepad/Gamepad;


# direct methods
.method public constructor <init>(Lcom/hatkid/mkxpz/gamepad/Gamepad;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad$1;->this$0:Lcom/hatkid/mkxpz/gamepad/Gamepad;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onButtonDown(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad$1;->this$0:Lcom/hatkid/mkxpz/gamepad/Gamepad;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->h(Lcom/hatkid/mkxpz/gamepad/Gamepad;)Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyDownListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyDownListener;->onKeyDown(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onButtonUp(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad$1;->this$0:Lcom/hatkid/mkxpz/gamepad/Gamepad;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->i(Lcom/hatkid/mkxpz/gamepad/Gamepad;)Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyUpListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyUpListener;->onKeyUp(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
