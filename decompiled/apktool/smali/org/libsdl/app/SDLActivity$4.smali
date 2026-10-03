.class Lorg/libsdl/app/SDLActivity$4;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method public constructor <init>(Lorg/libsdl/app/SDLActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/libsdl/app/SDLActivity$4;->this$0:Lorg/libsdl/app/SDLActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/libsdl/app/SDLActivity$4;->this$0:Lorg/libsdl/app/SDLActivity;

    .line 2
    .line 3
    iget-object p1, p1, Lorg/libsdl/app/SDLActivity;->messageboxSelection:[I

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object v0, p0, Lorg/libsdl/app/SDLActivity$4;->this$0:Lorg/libsdl/app/SDLActivity;

    .line 7
    .line 8
    iget-object v0, v0, Lorg/libsdl/app/SDLActivity;->messageboxSelection:[I

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 11
    .line 12
    .line 13
    monitor-exit p1

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw v0
.end method
