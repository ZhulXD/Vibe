.class Lorg/renpy/android/PythonSDLActivity$1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/renpy/android/PythonSDLActivity;->toastError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/renpy/android/PythonSDLActivity;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$thisActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lorg/renpy/android/PythonSDLActivity;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/renpy/android/PythonSDLActivity$1;->this$0:Lorg/renpy/android/PythonSDLActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/renpy/android/PythonSDLActivity$1;->val$thisActivity:Landroid/app/Activity;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/renpy/android/PythonSDLActivity$1;->val$msg:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity$1;->val$thisActivity:Landroid/app/Activity;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/renpy/android/PythonSDLActivity$1;->val$msg:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
