.class Lorg/libsdl/app/SDLActivity$3;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/libsdl/app/SDLActivity;->messageboxShowMessageBox(ILjava/lang/String;Ljava/lang/String;[I[I[Ljava/lang/String;[I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/libsdl/app/SDLActivity;

.field final synthetic val$args:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lorg/libsdl/app/SDLActivity;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/libsdl/app/SDLActivity$3;->this$0:Lorg/libsdl/app/SDLActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/libsdl/app/SDLActivity$3;->val$args:Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/libsdl/app/SDLActivity$3;->this$0:Lorg/libsdl/app/SDLActivity;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/libsdl/app/SDLActivity$3;->val$args:Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/libsdl/app/SDLActivity;->messageboxCreateAndShow(Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
