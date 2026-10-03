.class public Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field private static final TAG:Ljava/lang/String; = "Cocos2dxEditBoxHelper"

.field private static mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity; = null

.field private static mEditBoxArray:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/cocos2dx/lib/Cocos2dxEditBox;",
            ">;"
        }
    .end annotation
.end field

.field private static mFrameLayout:Lorg/cocos2dx/lib/ResizeLayout; = null

.field private static mPadding:F = 5.0f

.field private static mViewTag:I


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/ResizeLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sput-object p1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mFrameLayout:Lorg/cocos2dx/lib/ResizeLayout;

    .line 5
    .line 6
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 11
    .line 12
    sput-object p1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 13
    .line 14
    new-instance p1, Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 17
    .line 18
    .line 19
    sput-object p1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mEditBoxArray:Landroid/util/SparseArray;

    .line 20
    .line 21
    return-void
.end method

.method public static __editBoxEditingChanged(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->editBoxEditingChanged(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static __editBoxEditingDidBegin(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->editBoxEditingDidBegin(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static __editBoxEditingDidEnd(ILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->editBoxEditingDidEnd(ILjava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static bridge synthetic b()Lorg/cocos2dx/lib/Cocos2dxActivity;
    .locals 1

    .line 1
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 2
    .line 3
    return-object v0
.end method

.method public static bridge synthetic c()Landroid/util/SparseArray;
    .locals 1

    .line 1
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mEditBoxArray:Landroid/util/SparseArray;

    .line 2
    .line 3
    return-object v0
.end method

.method public static closeKeyboard(I)V
    .locals 2

    .line 1
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 2
    .line 3
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$16;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$16;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static closeKeyboardOnUiThread(I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    sget-object p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "closeKeyboardOnUiThread doesn\'t run on UI thread!"

    .line 14
    .line 15
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "input_method"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 30
    .line 31
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mEditBoxArray:Landroid/util/SparseArray;

    .line 32
    .line 33
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;

    .line 38
    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 47
    .line 48
    .line 49
    sget-object p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 50
    .line 51
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLSurfaceView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setSoftKeyboardShown(Z)V

    .line 56
    .line 57
    .line 58
    sget-object p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 59
    .line 60
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLSurfaceView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 65
    .line 66
    .line 67
    sget-object p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 68
    .line 69
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->hideVirtualButton()V

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void
.end method

.method public static createEditBox(IIIIF)I
    .locals 8

    .line 1
    sget v6, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mViewTag:I

    .line 2
    .line 3
    sget-object v7, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 4
    .line 5
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;

    .line 6
    .line 7
    move v2, p0

    .line 8
    move v3, p1

    .line 9
    move v4, p2

    .line 10
    move v5, p3

    .line 11
    move v1, p4

    .line 12
    invoke-direct/range {v0 .. v6}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;-><init>(FIIIII)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v7, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    sget p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mViewTag:I

    .line 19
    .line 20
    add-int/lit8 p1, p0, 0x1

    .line 21
    .line 22
    sput p1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mViewTag:I

    .line 23
    .line 24
    return p0
.end method

.method public static bridge synthetic d()Lorg/cocos2dx/lib/ResizeLayout;
    .locals 1

    .line 1
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mFrameLayout:Lorg/cocos2dx/lib/ResizeLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public static bridge synthetic e(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->closeKeyboardOnUiThread(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static native editBoxEditingChanged(ILjava/lang/String;)V
.end method

.method private static native editBoxEditingDidBegin(I)V
.end method

.method private static native editBoxEditingDidEnd(ILjava/lang/String;I)V
.end method

.method public static bridge synthetic f(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->openKeyboardOnUiThread(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getPadding(F)I
    .locals 1

    .line 1
    sget v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mPadding:F

    .line 2
    .line 3
    mul-float/2addr v0, p0

    .line 4
    float-to-int p0, v0

    .line 5
    return p0
.end method

.method public static openKeyboard(I)V
    .locals 2

    .line 1
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 2
    .line 3
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$15;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$15;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static openKeyboardOnUiThread(I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    sget-object p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "openKeyboardOnUiThread doesn\'t run on UI thread!"

    .line 14
    .line 15
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "input_method"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 30
    .line 31
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mEditBoxArray:Landroid/util/SparseArray;

    .line 32
    .line 33
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;

    .line 38
    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 42
    .line 43
    .line 44
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 45
    .line 46
    invoke-virtual {v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLSurfaceView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 51
    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 55
    .line 56
    .line 57
    sget-object p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 58
    .line 59
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLSurfaceView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    const/4 v0, 0x1

    .line 64
    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setSoftKeyboardShown(Z)V

    .line 65
    .line 66
    .line 67
    :cond_1
    return-void
.end method

.method public static removeEditBox(I)V
    .locals 2

    .line 1
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 2
    .line 3
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$2;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$2;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static setEditBoxViewRect(IIIII)V
    .locals 7

    .line 1
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 2
    .line 3
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$14;

    .line 4
    .line 5
    move v2, p0

    .line 6
    move v3, p1

    .line 7
    move v4, p2

    .line 8
    move v5, p3

    .line 9
    move v6, p4

    .line 10
    invoke-direct/range {v1 .. v6}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$14;-><init>(IIIII)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static setFont(ILjava/lang/String;F)V
    .locals 2

    .line 1
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 2
    .line 3
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$3;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$3;-><init>(ILjava/lang/String;F)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static setFontColor(IIIII)V
    .locals 7

    .line 1
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 2
    .line 3
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$4;

    .line 4
    .line 5
    move v2, p0

    .line 6
    move v4, p1

    .line 7
    move v5, p2

    .line 8
    move v6, p3

    .line 9
    move v3, p4

    .line 10
    invoke-direct/range {v1 .. v6}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$4;-><init>(IIIII)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static setInputFlag(II)V
    .locals 2

    .line 1
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 2
    .line 3
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$13;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$13;-><init>(II)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static setInputMode(II)V
    .locals 2

    .line 1
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 2
    .line 3
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$12;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$12;-><init>(II)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static setMaxLength(II)V
    .locals 2

    .line 1
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 2
    .line 3
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$7;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$7;-><init>(II)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static setPlaceHolderText(ILjava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 2
    .line 3
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$5;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$5;-><init>(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static setPlaceHolderTextColor(IIIII)V
    .locals 7

    .line 1
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 2
    .line 3
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$6;

    .line 4
    .line 5
    move v2, p0

    .line 6
    move v4, p1

    .line 7
    move v5, p2

    .line 8
    move v6, p3

    .line 9
    move v3, p4

    .line 10
    invoke-direct/range {v1 .. v6}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$6;-><init>(IIIII)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static setReturnType(II)V
    .locals 2

    .line 1
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 2
    .line 3
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$10;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$10;-><init>(II)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static setText(ILjava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 2
    .line 3
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$9;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$9;-><init>(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static setTextHorizontalAlignment(II)V
    .locals 2

    .line 1
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 2
    .line 3
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$11;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$11;-><init>(II)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static setVisible(IZ)V
    .locals 2

    .line 1
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 2
    .line 3
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$8;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$8;-><init>(IZ)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
