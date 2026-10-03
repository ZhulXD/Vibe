.class Lorg/libsdl/app/SDLActivity$5;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/libsdl/app/SDLActivity;->messageboxCreateAndShow(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/libsdl/app/SDLActivity;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$id:I


# direct methods
.method public constructor <init>(Lorg/libsdl/app/SDLActivity;ILandroid/app/AlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/libsdl/app/SDLActivity$5;->this$0:Lorg/libsdl/app/SDLActivity;

    .line 2
    .line 3
    iput p2, p0, Lorg/libsdl/app/SDLActivity$5;->val$id:I

    .line 4
    .line 5
    iput-object p3, p0, Lorg/libsdl/app/SDLActivity$5;->val$dialog:Landroid/app/AlertDialog;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lorg/libsdl/app/SDLActivity$5;->this$0:Lorg/libsdl/app/SDLActivity;

    .line 2
    .line 3
    iget-object p1, p1, Lorg/libsdl/app/SDLActivity;->messageboxSelection:[I

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iget v1, p0, Lorg/libsdl/app/SDLActivity$5;->val$id:I

    .line 7
    .line 8
    aput v1, p1, v0

    .line 9
    .line 10
    iget-object p1, p0, Lorg/libsdl/app/SDLActivity$5;->val$dialog:Landroid/app/AlertDialog;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
