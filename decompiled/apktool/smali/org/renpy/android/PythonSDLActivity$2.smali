.class Lorg/renpy/android/PythonSDLActivity$2;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/renpy/android/PythonSDLActivity;->showLoadingOverlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/renpy/android/PythonSDLActivity;

.field final synthetic val$stage:Landroid/widget/TextView;

.field final synthetic val$start:J

.field final synthetic val$status:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lorg/renpy/android/PythonSDLActivity;JLandroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/renpy/android/PythonSDLActivity$2;->this$0:Lorg/renpy/android/PythonSDLActivity;

    .line 2
    .line 3
    iput-wide p2, p0, Lorg/renpy/android/PythonSDLActivity$2;->val$start:J

    .line 4
    .line 5
    iput-object p4, p0, Lorg/renpy/android/PythonSDLActivity$2;->val$status:Landroid/widget/TextView;

    .line 6
    .line 7
    iput-object p5, p0, Lorg/renpy/android/PythonSDLActivity$2;->val$stage:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lorg/renpy/android/PythonSDLActivity$2;->val$start:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0x3e8

    .line 9
    .line 10
    div-long/2addr v0, v2

    .line 11
    long-to-int v0, v0

    .line 12
    iget-object v1, p0, Lorg/renpy/android/PythonSDLActivity$2;->val$status:Landroid/widget/TextView;

    .line 13
    .line 14
    iget-object v2, p0, Lorg/renpy/android/PythonSDLActivity$2;->this$0:Lorg/renpy/android/PythonSDLActivity;

    .line 15
    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const v3, 0x7f12036e

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity$2;->val$stage:Landroid/widget/TextView;

    .line 35
    .line 36
    iget-object v1, p0, Lorg/renpy/android/PythonSDLActivity$2;->this$0:Lorg/renpy/android/PythonSDLActivity;

    .line 37
    .line 38
    invoke-static {v1}, Lorg/renpy/android/PythonSDLActivity;->t(Lorg/renpy/android/PythonSDLActivity;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity$2;->this$0:Lorg/renpy/android/PythonSDLActivity;

    .line 46
    .line 47
    invoke-static {v0}, Lorg/renpy/android/PythonSDLActivity;->s(Lorg/renpy/android/PythonSDLActivity;)Landroid/os/Handler;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-wide/16 v1, 0xfa

    .line 52
    .line 53
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    .line 55
    .line 56
    return-void
.end method
