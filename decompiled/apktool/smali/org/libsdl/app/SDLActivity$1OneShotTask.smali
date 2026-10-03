.class Lorg/libsdl/app/SDLActivity$1OneShotTask;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/libsdl/app/SDLActivity;->showToast(Ljava/lang/String;IIII)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OneShotTask"
.end annotation


# instance fields
.field mDuration:I

.field mGravity:I

.field mMessage:Ljava/lang/String;

.field mXOffset:I

.field mYOffset:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/libsdl/app/SDLActivity$1OneShotTask;->mMessage:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lorg/libsdl/app/SDLActivity$1OneShotTask;->mDuration:I

    .line 7
    .line 8
    iput p3, p0, Lorg/libsdl/app/SDLActivity$1OneShotTask;->mGravity:I

    .line 9
    .line 10
    iput p4, p0, Lorg/libsdl/app/SDLActivity$1OneShotTask;->mXOffset:I

    .line 11
    .line 12
    iput p5, p0, Lorg/libsdl/app/SDLActivity$1OneShotTask;->mYOffset:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/libsdl/app/SDLActivity$1OneShotTask;->mMessage:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lorg/libsdl/app/SDLActivity$1OneShotTask;->mDuration:I

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, p0, Lorg/libsdl/app/SDLActivity$1OneShotTask;->mGravity:I

    .line 12
    .line 13
    if-ltz v1, :cond_0

    .line 14
    .line 15
    iget v2, p0, Lorg/libsdl/app/SDLActivity$1OneShotTask;->mXOffset:I

    .line 16
    .line 17
    iget v3, p0, Lorg/libsdl/app/SDLActivity$1OneShotTask;->mYOffset:I

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :goto_1
    const-string v1, "SDL"

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    return-void
.end method
