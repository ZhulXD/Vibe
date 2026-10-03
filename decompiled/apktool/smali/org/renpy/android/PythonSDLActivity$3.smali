.class Lorg/renpy/android/PythonSDLActivity$3;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/renpy/android/PythonSDLActivity;->hidePresplash()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/renpy/android/PythonSDLActivity;


# direct methods
.method public constructor <init>(Lorg/renpy/android/PythonSDLActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/renpy/android/PythonSDLActivity$3;->this$0:Lorg/renpy/android/PythonSDLActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget-object v0, Lorg/renpy/android/PythonSDLActivity;->mActivity:Lorg/renpy/android/PythonSDLActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/renpy/android/PythonSDLActivity;->mPresplash:Landroid/widget/ImageView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lorg/renpy/android/PythonSDLActivity;->access$000()Landroid/view/ViewGroup;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lorg/renpy/android/PythonSDLActivity;->mActivity:Lorg/renpy/android/PythonSDLActivity;

    .line 12
    .line 13
    iget-object v1, v1, Lorg/renpy/android/PythonSDLActivity;->mPresplash:Landroid/widget/ImageView;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lorg/renpy/android/PythonSDLActivity;->mActivity:Lorg/renpy/android/PythonSDLActivity;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput-object v1, v0, Lorg/renpy/android/PythonSDLActivity;->mPresplash:Landroid/widget/ImageView;

    .line 22
    .line 23
    :cond_0
    sget-object v0, Lorg/renpy/android/PythonSDLActivity;->mActivity:Lorg/renpy/android/PythonSDLActivity;

    .line 24
    .line 25
    invoke-static {v0}, Lorg/renpy/android/PythonSDLActivity;->u(Lorg/renpy/android/PythonSDLActivity;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lorg/renpy/android/PythonSDLActivity;->mActivity:Lorg/renpy/android/PythonSDLActivity;

    .line 29
    .line 30
    invoke-virtual {v0}, Lorg/renpy/android/PythonSDLActivity;->reassertFloatMenuOnTop()V

    .line 31
    .line 32
    .line 33
    return-void
.end method
