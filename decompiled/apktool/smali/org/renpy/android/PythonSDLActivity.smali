.class public Lorg/renpy/android/PythonSDLActivity;
.super Lorg/libsdl/app/SDLActivity;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final LANGUAGE_RELOAD_CANCEL:I = 0x3

.field public static final LANGUAGE_RELOAD_NONE:I = 0x0

.field public static final LANGUAGE_RELOAD_OK:I = 0x2

.field public static final LANGUAGE_RELOAD_PENDING:I = 0x1

.field private static final URM_BUILD:Ljava/lang/String; = "6"

.field public static mActivity:Lorg/renpy/android/PythonSDLActivity;

.field private static volatile sLanguageReloadAnswer:I


# instance fields
.field private mCheatActive:Z

.field private mCheatBtn:Landroid/view/View;

.field private mFloatingMenuBtn:Landroid/view/View;

.field private mFontSizeEdit:Landroid/widget/EditText;

.field public mFrameLayout:Landroid/widget/FrameLayout;

.field private mGameId:I

.field private mGamePath:Ljava/lang/String;

.field private volatile mInterfaceReady:Z

.field private mLifecycleAdapter:LA1/v0;

.field private final mLoadingHandler:Landroid/os/Handler;

.field private mLoadingOverlay:Landroid/view/View;

.field private mLoadingTick:Ljava/lang/Runnable;

.field private mMenuOverlayPanel:Landroid/view/View;

.field public mPresplash:Landroid/widget/ImageView;

.field private final mSessionStartMs:J

.field public mStopDone:Z

.field public mVbox:Landroid/widget/LinearLayout;

.field resourceManager:Lorg/renpy/android/ResourceManager;

.field public wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/libsdl/app/SDLActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mPresplash:Landroid/widget/ImageView;

    .line 6
    .line 7
    iput-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mGamePath:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    iput v1, p0, Lorg/renpy/android/PythonSDLActivity;->mGameId:I

    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iput-wide v1, p0, Lorg/renpy/android/PythonSDLActivity;->mSessionStartMs:J

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-boolean v1, p0, Lorg/renpy/android/PythonSDLActivity;->mCheatActive:Z

    .line 20
    .line 21
    new-instance v2, Landroid/os/Handler;

    .line 22
    .line 23
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 28
    .line 29
    .line 30
    iput-object v2, p0, Lorg/renpy/android/PythonSDLActivity;->mLoadingHandler:Landroid/os/Handler;

    .line 31
    .line 32
    iput-boolean v1, p0, Lorg/renpy/android/PythonSDLActivity;->mInterfaceReady:Z

    .line 33
    .line 34
    iput-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mLifecycleAdapter:LA1/v0;

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    iput-boolean v1, p0, Lorg/renpy/android/PythonSDLActivity;->mStopDone:Z

    .line 38
    .line 39
    iput-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 40
    .line 41
    return-void
.end method

.method public static synthetic a(Lorg/renpy/android/PythonSDLActivity;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/renpy/android/PythonSDLActivity;->lambda$showExitDialog$13(Landroid/app/AlertDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$000()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mLayout:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object v0
.end method

.method private applyEarlyWindowBackground()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v1, "coverColor1"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "coverColor2"

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v3, "iconPath"

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const v3, -0xe5e5d2

    .line 27
    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_1

    .line 36
    .line 37
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :catch_0
    :cond_1
    const v1, -0xf9f4e8

    .line 42
    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_2

    .line 51
    .line 52
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 56
    :catch_1
    :cond_2
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    .line 57
    .line 58
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 59
    .line 60
    filled-new-array {v3, v1}, [I

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-direct {v2, v4, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 65
    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-nez v1, :cond_3

    .line 74
    .line 75
    :try_start_2
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-direct {v1, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 88
    .line 89
    .line 90
    const/16 v0, 0x11

    .line 91
    .line 92
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 93
    .line 94
    .line 95
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    .line 96
    .line 97
    const/4 v3, 0x2

    .line 98
    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    .line 99
    .line 100
    const/4 v4, 0x0

    .line 101
    aput-object v2, v3, v4

    .line 102
    .line 103
    const/4 v4, 0x1

    .line 104
    aput-object v1, v3, v4

    .line 105
    .line 106
    invoke-direct {v0, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 107
    .line 108
    .line 109
    move-object v2, v0

    .line 110
    :catch_2
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method private applyFontSizeFromEdit()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mFontSizeEdit:Landroid/widget/EditText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move v0, v1

    .line 25
    :goto_0
    const/16 v2, 0xc8

    .line 26
    .line 27
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const-string v2, "minhub_prefs"

    .line 36
    .line 37
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const-string v3, "renpy_font_px"

    .line 46
    .line 47
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 52
    .line 53
    .line 54
    const v0, 0x7f12036b

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 66
    .line 67
    .line 68
    const-string v0, "input_method"

    .line 69
    .line 70
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 75
    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    iget-object v2, p0, Lorg/renpy/android/PythonSDLActivity;->mFontSizeEdit:Landroid/widget/EditText;

    .line 79
    .line 80
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 85
    .line 86
    .line 87
    :cond_1
    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mFontSizeEdit:Landroid/widget/EditText;

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public static askLanguageReload()V
    .locals 3

    .line 1
    sget-object v0, Lorg/renpy/android/PythonSDLActivity;->mActivity:Lorg/renpy/android/PythonSDLActivity;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    sput v1, Lorg/renpy/android/PythonSDLActivity;->sLanguageReloadAnswer:I

    .line 14
    .line 15
    new-instance v1, Lorg/renpy/android/a;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-direct {v1, v0, v2}, Lorg/renpy/android/a;-><init>(Lorg/renpy/android/PythonSDLActivity;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    :goto_0
    const/4 v0, 0x2

    .line 26
    sput v0, Lorg/renpy/android/PythonSDLActivity;->sLanguageReloadAnswer:I

    .line 27
    .line 28
    return-void
.end method

.method public static synthetic b(Lorg/renpy/android/PythonSDLActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/renpy/android/PythonSDLActivity;->lambda$bindMenuOverlay$10(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private bindMenuOverlay(Landroid/view/View;)V
    .locals 3

    .line 1
    new-instance v0, Lorg/renpy/android/c;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/renpy/android/c;-><init>(Lorg/renpy/android/PythonSDLActivity;I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    .line 9
    .line 10
    const v0, 0x7f0901cc

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lorg/renpy/android/b;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-direct {v1, v2}, Lorg/renpy/android/b;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1}, Lorg/renpy/android/PythonSDLActivity;->setupDraggableMenuCard(Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    const v0, 0x7f0900c2

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Lorg/renpy/android/c;

    .line 37
    .line 38
    invoke-direct {v1, p0, v2}, Lorg/renpy/android/c;-><init>(Lorg/renpy/android/PythonSDLActivity;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    .line 43
    .line 44
    const v0, 0x7f0900b9

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/widget/Button;

    .line 52
    .line 53
    new-instance v1, LC1/j;

    .line 54
    .line 55
    const/16 v2, 0x17

    .line 56
    .line 57
    invoke-direct {v1, v2, p0, v0}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    const v0, 0x7f090153

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Landroid/widget/EditText;

    .line 71
    .line 72
    iput-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mFontSizeEdit:Landroid/widget/EditText;

    .line 73
    .line 74
    const-string v0, "minhub_prefs"

    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const-string v2, "renpy_font_px"

    .line 82
    .line 83
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-lez v0, :cond_0

    .line 88
    .line 89
    iget-object v1, p0, Lorg/renpy/android/PythonSDLActivity;->mFontSizeEdit:Landroid/widget/EditText;

    .line 90
    .line 91
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    .line 98
    :cond_0
    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mFontSizeEdit:Landroid/widget/EditText;

    .line 99
    .line 100
    new-instance v1, Lorg/renpy/android/d;

    .line 101
    .line 102
    invoke-direct {v1, p0}, Lorg/renpy/android/d;-><init>(Lorg/renpy/android/PythonSDLActivity;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 106
    .line 107
    .line 108
    const v0, 0x7f09009a

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    new-instance v1, Lorg/renpy/android/c;

    .line 116
    .line 117
    const/4 v2, 0x1

    .line 118
    invoke-direct {v1, p0, v2}, Lorg/renpy/android/c;-><init>(Lorg/renpy/android/PythonSDLActivity;I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    .line 123
    .line 124
    const v0, 0x7f09009b

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    new-instance v1, Lorg/renpy/android/c;

    .line 132
    .line 133
    const/4 v2, 0x2

    .line 134
    invoke-direct {v1, p0, v2}, Lorg/renpy/android/c;-><init>(Lorg/renpy/android/PythonSDLActivity;I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    .line 139
    .line 140
    const v0, 0x7f0900bb

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    new-instance v0, Lorg/renpy/android/c;

    .line 148
    .line 149
    const/4 v1, 0x3

    .line 150
    invoke-direct {v0, p0, v1}, Lorg/renpy/android/c;-><init>(Lorg/renpy/android/PythonSDLActivity;I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    .line 155
    .line 156
    return-void
.end method

.method public static synthetic c(Lorg/renpy/android/PythonSDLActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/renpy/android/PythonSDLActivity;->lambda$bindMenuOverlay$9(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private closeMenuOverlay()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mMenuOverlayPanel:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mFontSizeEdit:Landroid/widget/EditText;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    const-string v0, "input_method"

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lorg/renpy/android/PythonSDLActivity;->mFontSizeEdit:Landroid/widget/EditText;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mFontSizeEdit:Landroid/widget/EditText;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 37
    .line 38
    .line 39
    :cond_2
    return-void
.end method

.method public static synthetic d(Lorg/renpy/android/PythonSDLActivity;Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/renpy/android/PythonSDLActivity;->lambda$bindMenuOverlay$6(Landroid/widget/Button;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/renpy/android/PythonSDLActivity;->lambda$bindMenuOverlay$4(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lorg/renpy/android/PythonSDLActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/renpy/android/PythonSDLActivity;->showLanguageReloadDialog()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Lorg/renpy/android/PythonSDLActivity;Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lorg/renpy/android/PythonSDLActivity;->lambda$onCreate$0(Landroid/view/View;IIIIIIII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h(Lorg/renpy/android/PythonSDLActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/renpy/android/PythonSDLActivity;->lambda$bindMenuOverlay$5(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private hideSystemBars()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v2, 0x1e

    .line 12
    .line 13
    if-lt v1, v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Landroidx/core/view/o;->m(Landroid/view/Window;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, LP0/c;->l(Landroid/view/View;)Landroid/view/WindowInsetsController;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-static {}, Landroidx/core/view/o;->p()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-static {v0, v1}, LP0/c;->C(Landroid/view/WindowInsetsController;I)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Landroidx/core/view/o;->r(Landroid/view/WindowInsetsController;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void

    .line 39
    :cond_1
    const/16 v1, 0x1706

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static synthetic i(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/renpy/android/PythonSDLActivity;->lambda$showExitDialog$12(Landroid/app/AlertDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private injectDefaultDejaVuFont(Ljava/io/File;)V
    .locals 6

    .line 1
    const-string v0, "MinHub-Font"

    .line 2
    .line 3
    if-eqz p1, :cond_4

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_6

    .line 12
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 13
    .line 14
    const-string v2, "DejaVuSans.ttf"

    .line 15
    .line 16
    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    goto :goto_6

    .line 26
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v3, "x-renpy/x-common/x-DejaVuSans.ttf"

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 33
    .line 34
    .line 35
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    .line 37
    .line 38
    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    .line 40
    .line 41
    const/16 v1, 0x4000

    .line 42
    .line 43
    :try_start_2
    new-array v1, v1, [B

    .line 44
    .line 45
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    const/4 v5, -0x1

    .line 50
    if-eq v4, v5, :cond_2

    .line 51
    .line 52
    const/4 v5, 0x0

    .line 53
    invoke-virtual {v3, v1, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v4, "Injected fallback DejaVuSans.ttf into "

    .line 65
    .line 66
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    .line 78
    .line 79
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 80
    .line 81
    .line 82
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :catch_0
    move-exception p1

    .line 87
    goto :goto_5

    .line 88
    :catchall_1
    move-exception p1

    .line 89
    goto :goto_3

    .line 90
    :goto_1
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :catchall_2
    move-exception v1

    .line 95
    :try_start_6
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    :goto_2
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 99
    :goto_3
    if-eqz v2, :cond_3

    .line 100
    .line 101
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 102
    .line 103
    .line 104
    goto :goto_4

    .line 105
    :catchall_3
    move-exception v1

    .line 106
    :try_start_8
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    :cond_3
    :goto_4
    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 110
    :goto_5
    const-string v1, "Could not inject fallback DejaVuSans.ttf"

    .line 111
    .line 112
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    .line 114
    .line 115
    :cond_4
    :goto_6
    return-void
.end method

.method private injectFontRpy(Ljava/io/File;I)V
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 11
    .line 12
    const-string v1, "minhub_font.rpy"

    .line 13
    .line 14
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    if-gtz p2, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    const-string p1, "init 999 python:\n    import os as _mh_os\n    _mh_px = 0\n    try:\n        _mh_px = int(_mh_os.environ.get(\"MINHUB_FONT_SIZE\", \"0\"))\n    except Exception:\n        pass\n    if _mh_px > 0:\n        def _mh_apply_fs():\n            try:\n                style.default.size = _mh_px\n            except Exception:\n                pass\n            try:\n                _mh_base = float(style.default.size or 22)\n                _preferences.font_size = float(_mh_px) / _mh_base\n            except Exception:\n                pass\n        _mh_apply_fs()\n        _mh_fs_done = [False]\n        def _mh_fs_cb():\n            if not _mh_fs_done[0]:\n                _mh_fs_done[0] = True\n                _mh_apply_fs()\n        try:\n            config.interact_callbacks.append(_mh_fs_cb)\n        except Exception:\n            pass\n"

    .line 24
    .line 25
    invoke-direct {p0, v0, p1}, Lorg/renpy/android/PythonSDLActivity;->writeRpyIfChanged(Ljava/io/File;Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v0, "Injected minhub_font.rpy (px="

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p2, ")"

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string p2, "MinHub-Font"

    .line 51
    .line 52
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_0
    return-void
.end method

.method private injectMemorySaverRpy(Ljava/io/File;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_4

    .line 10
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "renpy/zzz_minhub_memory.rpy"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 17
    .line 18
    .line 19
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 23
    .line 24
    .line 25
    const/16 v2, 0x4000

    .line 26
    .line 27
    new-array v2, v2, [B

    .line 28
    .line 29
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v4, -0x1

    .line 34
    if-eq v3, v4, :cond_1

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    new-instance v2, Ljava/io/File;

    .line 44
    .line 45
    const-string v3, "zzz_minhub_memory.rpy"

    .line 46
    .line 47
    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string p1, "UTF-8"

    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {p0, v2, p1}, Lorg/renpy/android/PythonSDLActivity;->writeRpyIfChanged(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    .line 59
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :catch_0
    move-exception p1

    .line 64
    goto :goto_3

    .line 65
    :goto_1
    if-eqz v0, :cond_2

    .line 66
    .line 67
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :catchall_1
    move-exception v0

    .line 72
    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    :goto_2
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 76
    :goto_3
    const-string v0, "MinHub-Renpy"

    .line 77
    .line 78
    const-string v1, "Could not inject the memory saver"

    .line 79
    .line 80
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .line 82
    .line 83
    :cond_3
    :goto_4
    return-void
.end method

.method private injectSetTimerCompatRpy(Ljava/io/File;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 11
    .line 12
    const-string v1, "minhub_settimer_compat.rpy"

    .line 13
    .line 14
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string p1, "init -1100 python hide:\n    def _mh_patch_set_timer(_mod):\n        try:\n            _orig = _mod.set_timer\n        except Exception:\n            return\n        if getattr(_orig, \"_mh_patched\", False):\n            return\n        def _st(*a, **k):\n            if \"once\" in k:\n                _o = k.pop(\"once\")\n                if \"loops\" not in k:\n                    k[\"loops\"] = 1 if _o else 0\n            try:\n                return _orig(*a, **k)\n            except TypeError:\n                k.pop(\"loops\", None)\n                return _orig(*a, **k)\n        try:\n            _st._mh_patched = True\n            _mod.set_timer = _st\n        except Exception:\n            pass\n    for _mn in (\"renpy.pygame.pygame_time\", \"pygame_sdl2.time\"):\n        try:\n            _m = __import__(_mn, fromlist=[\"set_timer\"])\n            _mh_patch_set_timer(_m)\n        except Exception:\n            pass\n"

    .line 18
    .line 19
    invoke-direct {p0, v0, p1}, Lorg/renpy/android/PythonSDLActivity;->writeRpyIfChanged(Ljava/io/File;Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    const-string p1, "MinHub-Renpy"

    .line 26
    .line 27
    const-string v0, "Injected minhub_settimer_compat.rpy"

    .line 28
    .line 29
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method private injectStoreCompatRpy(Ljava/io/File;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 11
    .line 12
    const-string v1, "zzz_minhub_compat.rpy"

    .line 13
    .line 14
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string p1, "init -1100 python hide:\n    try:\n        from renpy.display.viewport import VPGrid as _MhVPGrid\n        if not getattr(_MhVPGrid, \"_mh_patched\", False):\n            _mh_orig_add = _MhVPGrid.add\n            def _mh_vpgrid_add(self, d):\n                try:\n                    _mh_orig_add(self, d)\n                except Exception as e:\n                    if \"overfull\" not in str(e).lower():\n                        raise\n                    n = len(self.children)\n                    grew = False\n                    for cn, rn in ((\"grid_cols\", \"grid_rows\"), (\"cols\", \"rows\")):\n                        c = getattr(self, cn, None)\n                        r = getattr(self, rn, None)\n                        if c:\n                            setattr(self, rn, (n + c - 1) // c)\n                            grew = True\n                            break\n                        if r:\n                            setattr(self, cn, (n + r - 1) // r)\n                            grew = True\n                            break\n                    if not grew:\n                        raise\n            _MhVPGrid.add = _mh_vpgrid_add\n            _MhVPGrid._mh_patched = True\n    except Exception:\n        pass\n\ninit -1500 python hide:\n    try:\n        import os, sys\n        import renpy.gl2.live2d as _mh_l2d\n        def _mh_l2d_log(m):\n            try:\n                import renpy.display.log as _mh_llog\n                _mh_llog.write(\"%s\", m)\n            except Exception:\n                pass\n        if not getattr(_mh_l2d, \"_mh_live2d_checked\", False):\n            _mh_l2d._mh_live2d_checked = True\n            _mh_model = getattr(_mh_l2d, \"live2dmodel\", None)\n            _mh_core_ok = False\n            _mh_exe = sys.executable or \"\"\n            _mh_plug = os.environ.get(\"MINHUB_RENPY_PLUGIN_DIR\", \"\")\n            _mh_l2d_log(\"MinHub: Live2D probe exe=[\" + _mh_exe + \"] plugdir=[\" + _mh_plug + \"]\")\n            _mh_cands = []\n            if _mh_exe and os.path.dirname(_mh_exe):\n                _mh_cands.append(os.path.join(os.path.dirname(_mh_exe), \"libLive2DCubismCore.so\"))\n            if _mh_plug:\n                _mh_cands.append(os.path.join(_mh_plug, \"libLive2DCubismCore.so\"))\n            _mh_cands.append(\"libLive2DCubismCore.so\")\n            if _mh_model is not None:\n                _mh_tried = []\n                for _mh_c in _mh_cands:\n                    _mh_ex = os.path.exists(_mh_c)\n                    _mh_ld = False\n                    if _mh_ex or _mh_c == \"libLive2DCubismCore.so\":\n                        try:\n                            _mh_ld = bool(_mh_model.load(_mh_c.encode(\"utf-8\")))\n                        except Exception as _mh_e:\n                            _mh_l2d_log(\"MinHub: Live2D load exc [\" + _mh_c + \"]: \" + str(_mh_e))\n                    _mh_tried.append(_mh_c + \" exists=\" + str(_mh_ex) + \" load=\" + str(_mh_ld))\n                    if _mh_ld:\n                        _mh_core_ok = True\n                        break\n                _mh_l2d_log(\"MinHub: Live2D tried: \" + \" | \".join(_mh_tried))\n                try:\n                    import ctypes as _mh_ct\n                    _mh_cdll_err = \"\"\n                    try:\n                        _mh_h = _mh_ct.CDLL(_mh_cands[1] if len(_mh_cands) > 1 else _mh_cands[0])\n                        _mh_cdll_err = \"CDLL-ok handle=\" + str(bool(_mh_h))\n                    except Exception as _mh_e2:\n                        _mh_cdll_err = \"CDLL-fail: \" + str(_mh_e2)\n                    _mh_l2d_log(\"MinHub: Live2D \" + _mh_cdll_err)\n                except Exception as _mh_e3:\n                    _mh_l2d_log(\"MinHub: Live2D ctypes missing: \" + str(_mh_e3))\n            _mh_l2d_log(\"MinHub: Live2D Cubism Core \" + (\"loaded\" if _mh_core_ok else \"missing\"))\n            if not _mh_core_ok:\n                def _mh_no_live2d(*a, **k):\n                    raise Exception(\"Live2D is not available: the Cubism Core library is missing.\")\n                _mh_l2d._has_live2d = False\n                _mh_l2d.init = _mh_no_live2d\n                _mh_l2d.onetime_init = _mh_no_live2d\n    except Exception:\n        pass\n\ninit -1100 python:\n    class _MhNull(str):\n        def __new__(cls):\n            return str.__new__(cls, \"\")\n        def __call__(self, *a, **k):\n            return self\n        def __getattr__(self, name):\n            if name.startswith(\'__\') and name.endswith(\'__\'):\n                raise AttributeError(name)\n            return self\n        def __bool__(self):\n            return False\n        def __int__(self):\n            return 0\n        def __float__(self):\n            return 0.0\n        def __index__(self):\n            return 0\n        def __iter__(self):\n            return iter(())\n        def __getitem__(self, k):\n            return self\n        def _mh_pair(self, other):\n            if isinstance(other, bool):\n                return 0, int(other)\n            if isinstance(other, (int, float)):\n                return 0, other\n            return \"\", other\n        def __eq__(self, other):\n            a, b = self._mh_pair(other)\n            return a == b\n        def __ne__(self, other):\n            return not self.__eq__(other)\n        def __lt__(self, other):\n            a, b = self._mh_pair(other)\n            return a < b\n        def __le__(self, other):\n            a, b = self._mh_pair(other)\n            return a <= b\n        def __gt__(self, other):\n            a, b = self._mh_pair(other)\n            return a > b\n        def __ge__(self, other):\n            a, b = self._mh_pair(other)\n            return a >= b\n        def __hash__(self):\n            return 0\n        def __radd__(self, other):\n            return other\n\n    def _mh_null_call(*a, **k):\n        return _MhNull()\n\ninit -1099 python hide:\n    try:\n        import renpy.game as _mh_rgame\n        if getattr(_mh_rgame, \"FunctionLib\", None) is None:\n            class _MhFunctionLib(object):\n                def max_min_float_value(self, value, maximum=None, minimum=None):\n                    try:\n                        v = value + 0\n                    except Exception:\n                        return 0\n                    if maximum is not None and v > maximum:\n                        return maximum\n                    if minimum is not None and v < minimum:\n                        return minimum\n                    return v\n                def __getattr__(self, name):\n                    return _mh_null_call\n            _mh_rgame.FunctionLib = _MhFunctionLib()\n    except Exception:\n        pass\n\n    try:\n        _mh_pnames = frozenset((\n            \"add_subs_in_table\", \"all_sponsors\", \"asdzzxa\", \"avaera\",\n            \"connection_pymysql\", \"create_cross_save_folder\",\n            \"cross_save_load_in_folder_with_game\", \"func_for_game\",\n            \"gift_from_npcs\", \"info_about_modification\", \"load_save_in_folder\",\n            \"non_avaera\", \"openAI_request\", \"search_name\", \"self_function\",\n            \"send_to_AI\", \"translate_via_server\",\n        ))\n        _MhP = type(persistent)\n        if not getattr(_MhP, \"_mh_patched\", False):\n            _mh_orig_ga = _MhP.__getattr__\n            def _mh_persistent_getattr(self, name, _o=_mh_orig_ga, _n=_mh_pnames):\n                value = _o(self, name)\n                if value is None and name in _n:\n                    return _mh_null_call\n                return value\n            _MhP.__getattr__ = _mh_persistent_getattr\n            _MhP._mh_patched = True\n    except Exception:\n        pass\n\ninit -100 python hide:\n    try:\n        import renpy, struct, sys\n        _orig = getattr(renpy, \"image_size\", None)\n        if _orig is None:\n            from renpy.exports import displayexports as _de\n            _orig = _de.image_size\n        _cache = {}\n        _mh_pcount = [0]\n        try:\n            import os as _mh_os\n            _mh_pdir = _mh_os.environ.get(\"RENPY_GAME_DIR\")\n        except Exception:\n            _mh_pdir = None\n\n        def _mh_dims(path):\n            f = renpy.loader.load(path)\n            try:\n                d = f.read(65536)\n            finally:\n                try:\n                    f.close()\n                except Exception:\n                    pass\n            if not d or len(d) < 16:\n                return None\n            if d[:8] == b\"\\x89PNG\\r\\n\\x1a\\n\":\n                if d[12:16] == b\"IHDR\":\n                    return struct.unpack(\">II\", d[16:24])\n                return None\n            if d[:6] in (b\"GIF87a\", b\"GIF89a\"):\n                return struct.unpack(\"<HH\", d[6:10])\n            if d[:4] == b\"RIFF\" and d[8:12] == b\"WEBP\":\n                c = d[12:16]\n                if c == b\"VP8X\":\n                    return ((d[24] | (d[25] << 8) | (d[26] << 16)) + 1,\n                            (d[27] | (d[28] << 8) | (d[29] << 16)) + 1)\n                if c == b\"VP8 \" and d[23:26] == b\"\\x9d\\x01\\x2a\":\n                    return (struct.unpack(\"<H\", d[26:28])[0] & 0x3FFF,\n                            struct.unpack(\"<H\", d[28:30])[0] & 0x3FFF)\n                if c == b\"VP8L\":\n                    bits = d[21] | (d[22] << 8) | (d[23] << 16) | (d[24] << 24)\n                    return ((bits & 0x3FFF) + 1, ((bits >> 14) & 0x3FFF) + 1)\n                return None\n            if d[:2] == b\"\\xff\\xd8\":\n                i, L = 2, len(d)\n                while i + 9 < L:\n                    if d[i] != 0xFF:\n                        i += 1\n                        continue\n                    m = d[i + 1]\n                    if m == 0xD8 or m == 0x01 or 0xD0 <= m <= 0xD7:\n                        i += 2\n                        continue\n                    seglen = struct.unpack(\">H\", d[i + 2:i + 4])[0]\n                    if 0xC0 <= m <= 0xCF and m not in (0xC4, 0xC8, 0xCC):\n                        h, w = struct.unpack(\">HH\", d[i + 5:i + 9])\n                        return (w, h)\n                    i += 2 + seglen\n                return None\n            return None\n\n        def _mh_image_size(im):\n            key = im if isinstance(im, str) else getattr(im, \"filename\", None)\n            if not isinstance(key, str):\n                return _orig(im)\n            if key in _cache:\n                return _cache[key]\n            r = None\n            try:\n                r = _mh_dims(key)\n            except Exception:\n                r = None\n            if r is None:\n                r = _orig(im)\n            _cache[key] = r\n            _mh_pcount[0] += 1\n            if _mh_pdir and (_mh_pcount[0] % 8) == 0:\n                try:\n                    with open(_mh_pdir + \"/.minhub_boot_progress\", \"w\") as _mh_pf:\n                        _mh_pf.write(\"images:\" + str(_mh_pcount[0]))\n                except Exception:\n                    pass\n            return r\n\n        for _mn in (\"renpy\", \"renpy.exports\", \"renpy.exports.displayexports\"):\n            _m = sys.modules.get(_mn)\n            if _m is not None and getattr(_m, \"image_size\", None) is not None:\n                setattr(_m, \"image_size\", _mh_image_size)\n        renpy.image_size = _mh_image_size\n    except Exception:\n        pass\n\ninit python:\n    import builtins as _mh_builtins\n    _mh_shadowed = {}\n    for _mh_n in (\n        \"sorted\", \"filter\", \"map\", \"input\", \"id\", \"type\", \"list\", \"dict\",\n        \"str\", \"int\", \"len\", \"next\", \"min\", \"max\", \"sum\", \"round\", \"format\",\n        \"open\", \"range\", \"set\", \"abs\", \"any\", \"all\", \"tuple\", \"bool\",\n    ):\n        _mh_v = globals().get(_mh_n, None)\n        if _mh_v is not None and not callable(_mh_v):\n            globals()[_mh_n] = getattr(_mh_builtins, _mh_n)\n"

    .line 18
    .line 19
    invoke-direct {p0, v0, p1}, Lorg/renpy/android/PythonSDLActivity;->writeRpyIfChanged(Ljava/io/File;Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    const-string p1, "MinHub-Renpy"

    .line 26
    .line 27
    const-string v0, "Injected zzz_minhub_compat.rpy"

    .line 28
    .line 29
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method private injectUrm(Ljava/io/File;)V
    .locals 11

    .line 1
    const-string v0, "1"

    .line 2
    .line 3
    const-string v1, "URM already injected ("

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v3, "injectUrm: gameRoot="

    .line 8
    .line 9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "MinHub-URM"

    .line 20
    .line 21
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v1, "gameRoot does not exist: "

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    const/4 v2, 0x0

    .line 49
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v4, v5, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    if-nez v4, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    move-object v0, v4

    .line 67
    :catch_0
    :goto_0
    new-instance v4, Ljava/io/File;

    .line 68
    .line 69
    const-string v5, "0x52-URM"

    .line 70
    .line 71
    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    new-instance v5, Ljava/io/File;

    .line 75
    .line 76
    const-string v6, ".minhub_urm"

    .line 77
    .line 78
    invoke-direct {v5, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string v6, "_urm6"

    .line 82
    .line 83
    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    const-string v7, "UTF-8"

    .line 92
    .line 93
    if-eqz v6, :cond_3

    .line 94
    .line 95
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    if-eqz v6, :cond_3

    .line 100
    .line 101
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    .line 102
    .line 103
    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    .line 105
    .line 106
    const/16 v8, 0x40

    .line 107
    .line 108
    :try_start_2
    new-array v8, v8, [B

    .line 109
    .line 110
    invoke-virtual {v6, v8}, Ljava/io/FileInputStream;->read([B)I

    .line 111
    .line 112
    .line 113
    move-result v9

    .line 114
    if-lez v9, :cond_2

    .line 115
    .line 116
    new-instance v10, Ljava/lang/String;

    .line 117
    .line 118
    invoke-direct {v10, v8, v2, v9, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v8

    .line 125
    if-eqz v8, :cond_2

    .line 126
    .line 127
    new-instance v8, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v1, ")"

    .line 136
    .line 137
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    .line 146
    .line 147
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 148
    .line 149
    .line 150
    goto/16 :goto_e

    .line 151
    .line 152
    :catchall_0
    move-exception v1

    .line 153
    goto :goto_1

    .line 154
    :cond_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 155
    .line 156
    .line 157
    goto :goto_3

    .line 158
    :goto_1
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :catchall_1
    move-exception v6

    .line 163
    :try_start_5
    invoke-virtual {v1, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 164
    .line 165
    .line 166
    :goto_2
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 167
    :catch_1
    :cond_3
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    const-string v6, "Injecting URM into "

    .line 170
    .line 171
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    :try_start_6
    invoke-virtual {p0, v4}, Lorg/renpy/android/PythonSDLActivity;->recursiveDelete(Ljava/io/File;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 192
    .line 193
    .line 194
    new-instance p1, Ljava/util/zip/ZipInputStream;

    .line 195
    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    const-string v6, "Cheat/Renpy/urm.zip"

    .line 201
    .line 202
    invoke-virtual {v1, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-direct {p1, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 207
    .line 208
    .line 209
    move v1, v2

    .line 210
    :goto_4
    :try_start_7
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    if-eqz v6, :cond_8

    .line 215
    .line 216
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v8

    .line 220
    const/16 v9, 0x5c

    .line 221
    .line 222
    const/16 v10, 0x2f

    .line 223
    .line 224
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v8

    .line 228
    const-string v9, "0x52-URM/"

    .line 229
    .line 230
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 231
    .line 232
    .line 233
    move-result v9

    .line 234
    if-eqz v9, :cond_4

    .line 235
    .line 236
    const/16 v9, 0x9

    .line 237
    .line 238
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v8

    .line 242
    goto :goto_5

    .line 243
    :catchall_2
    move-exception v0

    .line 244
    goto/16 :goto_b

    .line 245
    .line 246
    :cond_4
    :goto_5
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 247
    .line 248
    .line 249
    move-result v9

    .line 250
    if-eqz v9, :cond_5

    .line 251
    .line 252
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 253
    .line 254
    .line 255
    goto :goto_4

    .line 256
    :cond_5
    new-instance v9, Ljava/io/File;

    .line 257
    .line 258
    invoke-direct {v9, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    .line 262
    .line 263
    .line 264
    move-result v6

    .line 265
    if-eqz v6, :cond_6

    .line 266
    .line 267
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 268
    .line 269
    .line 270
    goto :goto_7

    .line 271
    :cond_6
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 272
    .line 273
    .line 274
    move-result-object v6

    .line 275
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 276
    .line 277
    .line 278
    new-instance v6, Ljava/io/FileOutputStream;

    .line 279
    .line 280
    invoke-direct {v6, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 281
    .line 282
    .line 283
    const/16 v8, 0x2000

    .line 284
    .line 285
    :try_start_8
    new-array v8, v8, [B

    .line 286
    .line 287
    :goto_6
    invoke-virtual {p1, v8}, Ljava/io/InputStream;->read([B)I

    .line 288
    .line 289
    .line 290
    move-result v9

    .line 291
    const/4 v10, -0x1

    .line 292
    if-eq v9, v10, :cond_7

    .line 293
    .line 294
    invoke-virtual {v6, v8, v2, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 295
    .line 296
    .line 297
    goto :goto_6

    .line 298
    :catchall_3
    move-exception v0

    .line 299
    goto :goto_8

    .line 300
    :cond_7
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 301
    .line 302
    .line 303
    add-int/lit8 v1, v1, 0x1

    .line 304
    .line 305
    :goto_7
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 306
    .line 307
    .line 308
    goto :goto_4

    .line 309
    :goto_8
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 310
    .line 311
    .line 312
    goto :goto_9

    .line 313
    :catchall_4
    move-exception v1

    .line 314
    :try_start_b
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 315
    .line 316
    .line 317
    :goto_9
    throw v0

    .line 318
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .line 322
    .line 323
    const-string v6, "Extracted "

    .line 324
    .line 325
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    const-string v1, " files to "

    .line 332
    .line 333
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 348
    .line 349
    .line 350
    :try_start_c
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->close()V

    .line 351
    .line 352
    .line 353
    new-instance p1, Ljava/io/FileOutputStream;

    .line 354
    .line 355
    invoke-direct {p1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 356
    .line 357
    .line 358
    :try_start_d
    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 363
    .line 364
    .line 365
    :try_start_e
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    .line 366
    .line 367
    .line 368
    goto :goto_e

    .line 369
    :catch_2
    move-exception p1

    .line 370
    goto :goto_d

    .line 371
    :catchall_5
    move-exception v0

    .line 372
    :try_start_f
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 373
    .line 374
    .line 375
    goto :goto_a

    .line 376
    :catchall_6
    move-exception p1

    .line 377
    :try_start_10
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 378
    .line 379
    .line 380
    :goto_a
    throw v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    .line 381
    :goto_b
    :try_start_11
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 382
    .line 383
    .line 384
    goto :goto_c

    .line 385
    :catchall_7
    move-exception p1

    .line 386
    :try_start_12
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 387
    .line 388
    .line 389
    :goto_c
    throw v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    .line 390
    :goto_d
    const-string v0, "URM injection failed"

    .line 391
    .line 392
    invoke-static {v3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    .line 394
    .line 395
    :goto_e
    return-void
.end method

.method private isUserPatreon()Z
    .locals 3

    .line 1
    const-string v0, "minhub_prefs"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v2, "is_patreon"

    .line 9
    .line 10
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public static synthetic j(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/renpy/android/PythonSDLActivity;->lambda$showCheatPatreonDialog$16(Landroid/app/AlertDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k(Landroid/view/View;[F[F[ZIFLandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Lorg/renpy/android/PythonSDLActivity;->lambda$setupDraggableMenuCard$11(Landroid/view/View;[F[F[ZIFLandroid/view/View;Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic l(Lorg/renpy/android/PythonSDLActivity;[F[F[ZIILandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lorg/renpy/android/PythonSDLActivity;->lambda$setupFloatingMenu$1([F[F[ZIILandroid/view/View;Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private synthetic lambda$bindMenuOverlay$10(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/renpy/android/PythonSDLActivity;->closeMenuOverlay()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lorg/renpy/android/PythonSDLActivity;->showExitDialog()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private synthetic lambda$bindMenuOverlay$3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/renpy/android/PythonSDLActivity;->closeMenuOverlay()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$bindMenuOverlay$4(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method private synthetic lambda$bindMenuOverlay$5(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/renpy/android/PythonSDLActivity;->closeMenuOverlay()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lorg/renpy/android/PythonSDLActivity;->takeScreenshot()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private synthetic lambda$bindMenuOverlay$6(Landroid/widget/Button;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/renpy/android/PythonSDLActivity;->isUserPatreon()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lorg/renpy/android/PythonSDLActivity;->closeMenuOverlay()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lorg/renpy/android/PythonSDLActivity;->showCheatPatreonDialog()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p2, p0, Lorg/renpy/android/PythonSDLActivity;->mCheatBtn:Landroid/view/View;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-nez p2, :cond_1

    .line 24
    .line 25
    const/4 p2, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move p2, v0

    .line 28
    :goto_0
    iget-object v1, p0, Lorg/renpy/android/PythonSDLActivity;->mCheatBtn:Landroid/view/View;

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    if-eqz p2, :cond_2

    .line 33
    .line 34
    const/16 v0, 0x8

    .line 35
    .line 36
    :cond_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    :cond_3
    if-eqz p2, :cond_4

    .line 40
    .line 41
    const p2, 0x7f1202bf

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_4
    const p2, 0x7f1202c0

    .line 46
    .line 47
    .line 48
    :goto_1
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method private synthetic lambda$bindMenuOverlay$7(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const/4 p1, 0x6

    .line 2
    if-ne p2, p1, :cond_0

    .line 3
    .line 4
    invoke-direct {p0}, Lorg/renpy/android/PythonSDLActivity;->applyFontSizeFromEdit()V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    return p1
.end method

.method private synthetic lambda$bindMenuOverlay$8(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/renpy/android/PythonSDLActivity;->applyFontSizeFromEdit()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$bindMenuOverlay$9(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lorg/renpy/android/PythonSDLActivity;->mFontSizeEdit:Landroid/widget/EditText;

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    const-string p1, "minhub_prefs"

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v1, "renpy_font_px"

    .line 20
    .line 21
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 26
    .line 27
    .line 28
    const p1, 0x7f12036b

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    new-instance p2, Lorg/renpy/android/a;

    .line 2
    .line 3
    const/4 p3, 0x0

    .line 4
    invoke-direct {p2, p0, p3}, Lorg/renpy/android/a;-><init>(Lorg/renpy/android/PythonSDLActivity;I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private static synthetic lambda$setupDraggableMenuCard$11(Landroid/view/View;[F[F[ZIFLandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    const p6, 0x7f0901cc

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p7}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 9
    .line 10
    .line 11
    move-result p6

    .line 12
    const/4 v0, 0x1

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz p6, :cond_4

    .line 15
    .line 16
    if-eq p6, v0, :cond_3

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    if-eq p6, v2, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x3

    .line 22
    if-eq p6, p0, :cond_3

    .line 23
    .line 24
    return v1

    .line 25
    :cond_0
    invoke-virtual {p7}, Landroid/view/MotionEvent;->getRawX()F

    .line 26
    .line 27
    .line 28
    move-result p6

    .line 29
    aget v2, p1, v1

    .line 30
    .line 31
    sub-float/2addr p6, v2

    .line 32
    invoke-virtual {p7}, Landroid/view/MotionEvent;->getRawY()F

    .line 33
    .line 34
    .line 35
    move-result p7

    .line 36
    aget p1, p1, v0

    .line 37
    .line 38
    sub-float/2addr p7, p1

    .line 39
    aget-boolean p1, p3, v1

    .line 40
    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    invoke-static {p6}, Ljava/lang/Math;->abs(F)F

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    int-to-float p4, p4

    .line 48
    cmpl-float p1, p1, p4

    .line 49
    .line 50
    if-gtz p1, :cond_1

    .line 51
    .line 52
    invoke-static {p7}, Ljava/lang/Math;->abs(F)F

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    cmpl-float p1, p1, p4

    .line 57
    .line 58
    if-lez p1, :cond_2

    .line 59
    .line 60
    :cond_1
    aput-boolean v0, p3, v1

    .line 61
    .line 62
    :cond_2
    aget-boolean p1, p3, v1

    .line 63
    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Landroid/view/View;

    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 73
    .line 74
    .line 75
    move-result p3

    .line 76
    int-to-float p3, p3

    .line 77
    sub-float p3, p5, p3

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 80
    .line 81
    .line 82
    move-result p4

    .line 83
    int-to-float p4, p4

    .line 84
    sub-float/2addr p4, p5

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    int-to-float v2, v2

    .line 90
    sub-float/2addr p4, v2

    .line 91
    invoke-static {p3, p4}, Ljava/lang/Math;->max(FF)F

    .line 92
    .line 93
    .line 94
    move-result p4

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    int-to-float v2, v2

    .line 100
    sub-float v2, p5, v2

    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    int-to-float p1, p1

    .line 107
    sub-float/2addr p1, p5

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 109
    .line 110
    .line 111
    move-result p5

    .line 112
    int-to-float p5, p5

    .line 113
    sub-float/2addr p1, p5

    .line 114
    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    aget p5, p2, v1

    .line 119
    .line 120
    add-float/2addr p5, p6

    .line 121
    invoke-static {p5, p4}, Ljava/lang/Math;->min(FF)F

    .line 122
    .line 123
    .line 124
    move-result p4

    .line 125
    invoke-static {p3, p4}, Ljava/lang/Math;->max(FF)F

    .line 126
    .line 127
    .line 128
    move-result p3

    .line 129
    invoke-virtual {p0, p3}, Landroid/view/View;->setTranslationX(F)V

    .line 130
    .line 131
    .line 132
    aget p2, p2, v0

    .line 133
    .line 134
    add-float/2addr p2, p7

    .line 135
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 144
    .line 145
    .line 146
    :cond_3
    return v0

    .line 147
    :cond_4
    invoke-virtual {p7}, Landroid/view/MotionEvent;->getRawX()F

    .line 148
    .line 149
    .line 150
    move-result p4

    .line 151
    aput p4, p1, v1

    .line 152
    .line 153
    invoke-virtual {p7}, Landroid/view/MotionEvent;->getRawY()F

    .line 154
    .line 155
    .line 156
    move-result p4

    .line 157
    aput p4, p1, v0

    .line 158
    .line 159
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    aput p1, p2, v1

    .line 164
    .line 165
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    aput p1, p2, v0

    .line 170
    .line 171
    aput-boolean v1, p3, v1

    .line 172
    .line 173
    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    .line 174
    .line 175
    .line 176
    return v0
.end method

.method private synthetic lambda$setupFloatingMenu$1([F[F[ZIILandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p7}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_6

    .line 8
    .line 9
    if-eq v0, v1, :cond_4

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    if-eq v0, v3, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    invoke-virtual {p7}, Landroid/view/MotionEvent;->getRawX()F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    aget v3, p1, v2

    .line 20
    .line 21
    sub-float/2addr v0, v3

    .line 22
    invoke-virtual {p7}, Landroid/view/MotionEvent;->getRawY()F

    .line 23
    .line 24
    .line 25
    move-result p7

    .line 26
    aget p1, p1, v1

    .line 27
    .line 28
    sub-float/2addr p7, p1

    .line 29
    aget-boolean p1, p3, v2

    .line 30
    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    int-to-float p4, p4

    .line 38
    cmpl-float p1, p1, p4

    .line 39
    .line 40
    if-gtz p1, :cond_1

    .line 41
    .line 42
    invoke-static {p7}, Ljava/lang/Math;->abs(F)F

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    cmpl-float p1, p1, p4

    .line 47
    .line 48
    if-lez p1, :cond_2

    .line 49
    .line 50
    :cond_1
    aput-boolean v1, p3, v2

    .line 51
    .line 52
    :cond_2
    aget-boolean p1, p3, v2

    .line 53
    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    invoke-virtual {p6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Landroid/view/View;

    .line 61
    .line 62
    invoke-virtual {p6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    check-cast p3, Landroid/widget/FrameLayout$LayoutParams;

    .line 67
    .line 68
    aget p4, p2, v2

    .line 69
    .line 70
    add-float/2addr p4, v0

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    sub-int/2addr v0, p5

    .line 76
    int-to-float v0, v0

    .line 77
    invoke-static {p4, v0}, Ljava/lang/Math;->min(FF)F

    .line 78
    .line 79
    .line 80
    move-result p4

    .line 81
    const/4 v0, 0x0

    .line 82
    invoke-static {v0, p4}, Ljava/lang/Math;->max(FF)F

    .line 83
    .line 84
    .line 85
    move-result p4

    .line 86
    float-to-int p4, p4

    .line 87
    iput p4, p3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 88
    .line 89
    aget p2, p2, v1

    .line 90
    .line 91
    add-float/2addr p2, p7

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    sub-int/2addr p1, p5

    .line 97
    int-to-float p1, p1

    .line 98
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    float-to-int p1, p1

    .line 107
    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 108
    .line 109
    invoke-virtual {p6, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    .line 111
    .line 112
    :cond_3
    return v1

    .line 113
    :cond_4
    aget-boolean p1, p3, v2

    .line 114
    .line 115
    if-nez p1, :cond_5

    .line 116
    .line 117
    invoke-direct {p0}, Lorg/renpy/android/PythonSDLActivity;->openMenuOverlay()V

    .line 118
    .line 119
    .line 120
    :cond_5
    return v1

    .line 121
    :cond_6
    invoke-virtual {p7}, Landroid/view/MotionEvent;->getRawX()F

    .line 122
    .line 123
    .line 124
    move-result p4

    .line 125
    aput p4, p1, v2

    .line 126
    .line 127
    invoke-virtual {p7}, Landroid/view/MotionEvent;->getRawY()F

    .line 128
    .line 129
    .line 130
    move-result p4

    .line 131
    aput p4, p1, v1

    .line 132
    .line 133
    invoke-virtual {p6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 138
    .line 139
    iget p4, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 140
    .line 141
    int-to-float p4, p4

    .line 142
    aput p4, p2, v2

    .line 143
    .line 144
    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 145
    .line 146
    int-to-float p1, p1

    .line 147
    aput p1, p2, v1

    .line 148
    .line 149
    aput-boolean v2, p3, v2

    .line 150
    .line 151
    return v1
.end method

.method private synthetic lambda$setupFloatingMenu$2([F[F[ZIILandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p7}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_6

    .line 8
    .line 9
    if-eq v0, v1, :cond_3

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    if-eq v0, v3, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    invoke-virtual {p7}, Landroid/view/MotionEvent;->getRawX()F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    aget v3, p1, v2

    .line 20
    .line 21
    sub-float/2addr v0, v3

    .line 22
    invoke-virtual {p7}, Landroid/view/MotionEvent;->getRawY()F

    .line 23
    .line 24
    .line 25
    move-result p7

    .line 26
    aget p1, p1, v1

    .line 27
    .line 28
    sub-float/2addr p7, p1

    .line 29
    aget-boolean p1, p3, v2

    .line 30
    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    int-to-float p4, p4

    .line 38
    cmpl-float p1, p1, p4

    .line 39
    .line 40
    if-gtz p1, :cond_1

    .line 41
    .line 42
    invoke-static {p7}, Ljava/lang/Math;->abs(F)F

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    cmpl-float p1, p1, p4

    .line 47
    .line 48
    if-lez p1, :cond_2

    .line 49
    .line 50
    :cond_1
    aput-boolean v1, p3, v2

    .line 51
    .line 52
    :cond_2
    aget-boolean p1, p3, v2

    .line 53
    .line 54
    if-eqz p1, :cond_5

    .line 55
    .line 56
    invoke-virtual {p6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Landroid/view/View;

    .line 61
    .line 62
    invoke-virtual {p6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    check-cast p3, Landroid/widget/FrameLayout$LayoutParams;

    .line 67
    .line 68
    aget p4, p2, v2

    .line 69
    .line 70
    add-float/2addr p4, v0

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    sub-int/2addr v0, p5

    .line 76
    int-to-float v0, v0

    .line 77
    invoke-static {p4, v0}, Ljava/lang/Math;->min(FF)F

    .line 78
    .line 79
    .line 80
    move-result p4

    .line 81
    const/4 v0, 0x0

    .line 82
    invoke-static {v0, p4}, Ljava/lang/Math;->max(FF)F

    .line 83
    .line 84
    .line 85
    move-result p4

    .line 86
    float-to-int p4, p4

    .line 87
    iput p4, p3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 88
    .line 89
    aget p2, p2, v1

    .line 90
    .line 91
    add-float/2addr p2, p7

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    sub-int/2addr p1, p5

    .line 97
    int-to-float p1, p1

    .line 98
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    float-to-int p1, p1

    .line 107
    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 108
    .line 109
    invoke-virtual {p6, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    .line 111
    .line 112
    return v1

    .line 113
    :cond_3
    aget-boolean p1, p3, v2

    .line 114
    .line 115
    if-nez p1, :cond_5

    .line 116
    .line 117
    iget-boolean p1, p0, Lorg/renpy/android/PythonSDLActivity;->mCheatActive:Z

    .line 118
    .line 119
    if-nez p1, :cond_4

    .line 120
    .line 121
    sget-object p1, Lcom/minhub/gamehub/data/GameEngine;->RENPY8:Lcom/minhub/gamehub/data/GameEngine;

    .line 122
    .line 123
    invoke-static {p0, p1}, Ly1/L1;->g(Landroid/app/Activity;Lcom/minhub/gamehub/data/GameEngine;)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-nez p1, :cond_4

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_4
    invoke-direct {p0}, Lorg/renpy/android/PythonSDLActivity;->toggleUrmViaSignal()V

    .line 131
    .line 132
    .line 133
    :cond_5
    :goto_0
    return v1

    .line 134
    :cond_6
    invoke-virtual {p7}, Landroid/view/MotionEvent;->getRawX()F

    .line 135
    .line 136
    .line 137
    move-result p4

    .line 138
    aput p4, p1, v2

    .line 139
    .line 140
    invoke-virtual {p7}, Landroid/view/MotionEvent;->getRawY()F

    .line 141
    .line 142
    .line 143
    move-result p4

    .line 144
    aput p4, p1, v1

    .line 145
    .line 146
    invoke-virtual {p6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 151
    .line 152
    iget p4, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 153
    .line 154
    int-to-float p4, p4

    .line 155
    aput p4, p2, v2

    .line 156
    .line 157
    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 158
    .line 159
    int-to-float p1, p1

    .line 160
    aput p1, p2, v1

    .line 161
    .line 162
    aput-boolean v2, p3, v2

    .line 163
    .line 164
    return v1
.end method

.method private static synthetic lambda$showCheatPatreonDialog$16(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$showExitDialog$12(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$showExitDialog$13(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private static synthetic lambda$showLanguageReloadDialog$14(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x3

    .line 2
    sput p1, Lorg/renpy/android/PythonSDLActivity;->sLanguageReloadAnswer:I

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private static synthetic lambda$showLanguageReloadDialog$15(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x2

    .line 2
    sput p1, Lorg/renpy/android/PythonSDLActivity;->sLanguageReloadAnswer:I

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static languageReloadAnswer()I
    .locals 2

    .line 1
    sget v0, Lorg/renpy/android/PythonSDLActivity;->sLanguageReloadAnswer:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    return v0

    .line 11
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 12
    sput v1, Lorg/renpy/android/PythonSDLActivity;->sLanguageReloadAnswer:I

    .line 13
    .line 14
    return v0
.end method

.method private loadGamePresplash()Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mGamePath:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    const-string v0, "android-presplash.png"

    .line 8
    .line 9
    const-string v2, "android-presplash.jpg"

    .line 10
    .line 11
    const-string v3, "presplash.png"

    .line 12
    .line 13
    const-string v4, "presplash.jpg"

    .line 14
    .line 15
    filled-new-array {v3, v4, v0, v2}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    const/4 v3, 0x4

    .line 21
    if-ge v2, v3, :cond_3

    .line 22
    .line 23
    aget-object v3, v0, v2

    .line 24
    .line 25
    new-instance v4, Ljava/io/File;

    .line 26
    .line 27
    iget-object v5, p0, Lorg/renpy/android/PythonSDLActivity;->mGamePath:Ljava/lang/String;

    .line 28
    .line 29
    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    .line 40
    .line 41
    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 42
    .line 43
    .line 44
    const/4 v5, 0x2

    .line 45
    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 52
    .line 53
    .line 54
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    return-object v3

    .line 58
    :catch_0
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    return-object v1
.end method

.method public static synthetic m(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/renpy/android/PythonSDLActivity;->lambda$showLanguageReloadDialog$14(Landroid/app/AlertDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n(Lorg/renpy/android/PythonSDLActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/renpy/android/PythonSDLActivity;->lambda$bindMenuOverlay$7(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic o(Lorg/renpy/android/PythonSDLActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/renpy/android/PythonSDLActivity;->lambda$bindMenuOverlay$8(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private openMenuOverlay()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mMenuOverlayPanel:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mMenuOverlayPanel:Landroid/view/View;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static synthetic p(Lorg/renpy/android/PythonSDLActivity;[F[F[ZIILandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lorg/renpy/android/PythonSDLActivity;->lambda$setupFloatingMenu$2([F[F[ZIILandroid/view/View;Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic q(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/renpy/android/PythonSDLActivity;->lambda$showLanguageReloadDialog$15(Landroid/app/AlertDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic r(Lorg/renpy/android/PythonSDLActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/renpy/android/PythonSDLActivity;->lambda$bindMenuOverlay$3(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private readBootStage()Ljava/lang/String;
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mGamePath:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/io/File;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/renpy/android/PythonSDLActivity;->mGamePath:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, ".minhub_boot_progress"

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    sub-long/2addr v1, v3

    .line 29
    const-wide/16 v3, 0x7d0

    .line 30
    .line 31
    cmp-long v1, v1, v3

    .line 32
    .line 33
    if-gez v1, :cond_0

    .line 34
    .line 35
    const/16 v1, 0x20

    .line 36
    .line 37
    new-array v1, v1, [B

    .line 38
    .line 39
    new-instance v2, Ljava/io/FileInputStream;

    .line 40
    .line 41
    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 42
    .line 43
    .line 44
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 45
    .line 46
    .line 47
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 49
    .line 50
    .line 51
    if-lez v0, :cond_0

    .line 52
    .line 53
    new-instance v2, Ljava/lang/String;

    .line 54
    .line 55
    const-string v3, "UTF-8"

    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    invoke-direct {v2, v1, v4, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v1, "images:"

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 71
    if-eqz v1, :cond_0

    .line 72
    .line 73
    const/4 v1, 0x7

    .line 74
    :try_start_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v4
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 86
    :catch_0
    :try_start_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const v1, 0x7f120371

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 101
    return-object v0

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catchall_1
    move-exception v1

    .line 108
    :try_start_6
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    :goto_0
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 112
    :catch_1
    :cond_0
    const v0, 0x7f120370

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    return-object v0
.end method

.method private removeLoadingOverlay()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mLoadingTick:Ljava/lang/Runnable;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lorg/renpy/android/PythonSDLActivity;->mLoadingHandler:Landroid/os/Handler;

    .line 7
    .line 8
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lorg/renpy/android/PythonSDLActivity;->mLoadingTick:Ljava/lang/Runnable;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mLoadingOverlay:Landroid/view/View;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    sget-object v2, Lorg/libsdl/app/SDLActivity;->mLayout:Landroid/view/ViewGroup;

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lorg/renpy/android/PythonSDLActivity;->mLoadingOverlay:Landroid/view/View;

    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public static bridge synthetic s(Lorg/renpy/android/PythonSDLActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/renpy/android/PythonSDLActivity;->mLoadingHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method private saveBitmapToGallery(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 8

    .line 1
    const-string v0, "is_pending"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5
    .line 6
    const/16 v3, 0x1d

    .line 7
    .line 8
    const/16 v4, 0x64

    .line 9
    .line 10
    const-string v5, "image/png"

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x1

    .line 14
    if-lt v2, v3, :cond_3

    .line 15
    .line 16
    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    .line 17
    .line 18
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, "_display_name"

    .line 22
    .line 23
    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string p2, "mime_type"

    .line 27
    .line 28
    invoke-virtual {v2, p2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string p2, "relative_path"

    .line 32
    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    sget-object v5, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v5, "/MinHub"

    .line 44
    .line 45
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v2, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {v2, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 67
    .line 68
    invoke-virtual {p2, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    if-nez p2, :cond_0

    .line 73
    .line 74
    return v1

    .line 75
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v3, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    .line 80
    .line 81
    .line 82
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 83
    if-eqz v3, :cond_1

    .line 84
    .line 85
    :try_start_2
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 86
    .line 87
    invoke-virtual {p1, v5, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :catchall_0
    move-exception p1

    .line 92
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catchall_1
    move-exception p2

    .line 97
    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    :goto_0
    throw p1

    .line 101
    :catchall_2
    move-exception p1

    .line 102
    goto :goto_3

    .line 103
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 104
    .line 105
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 106
    .line 107
    .line 108
    :cond_2
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 109
    .line 110
    .line 111
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {v2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p1, p2, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    return v7

    .line 126
    :cond_3
    new-instance v0, Ljava/io/File;

    .line 127
    .line 128
    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 129
    .line 130
    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    const-string v3, "MinHub"

    .line 135
    .line 136
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-nez v2, :cond_4

    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 146
    .line 147
    .line 148
    :cond_4
    new-instance v2, Ljava/io/File;

    .line 149
    .line 150
    invoke-direct {v2, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    new-instance p2, Ljava/io/FileOutputStream;

    .line 154
    .line 155
    invoke-direct {p2, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 156
    .line 157
    .line 158
    :try_start_5
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 159
    .line 160
    invoke-virtual {p1, v0, v4, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 161
    .line 162
    .line 163
    :try_start_6
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    filled-new-array {p1}, [Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    filled-new-array {v5}, [Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    invoke-static {p0, p1, p2, v6}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 179
    .line 180
    .line 181
    return v7

    .line 182
    :catchall_3
    move-exception p1

    .line 183
    :try_start_7
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 184
    .line 185
    .line 186
    goto :goto_2

    .line 187
    :catchall_4
    move-exception p2

    .line 188
    :try_start_8
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 189
    .line 190
    .line 191
    :goto_2
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 192
    :goto_3
    const-string p2, "python"

    .line 193
    .line 194
    const-string v0, "saveBitmap failed"

    .line 195
    .line 196
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    .line 198
    .line 199
    return v1
.end method

.method private setupDraggableMenuCard(Landroid/view/View;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    const/high16 v1, 0x41800000    # 16.0f

    .line 12
    .line 13
    mul-float v8, v0, v1

    .line 14
    .line 15
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    const/4 v0, 0x2

    .line 24
    new-array v4, v0, [F

    .line 25
    .line 26
    fill-array-data v4, :array_0

    .line 27
    .line 28
    .line 29
    new-array v5, v0, [F

    .line 30
    .line 31
    fill-array-data v5, :array_1

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    new-array v6, v0, [Z

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    aput-boolean v0, v6, v0

    .line 39
    .line 40
    const v0, 0x7f09036f

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v2, Lorg/renpy/android/f;

    .line 48
    .line 49
    move-object v3, p1

    .line 50
    invoke-direct/range {v2 .. v8}, Lorg/renpy/android/f;-><init>(Landroid/view/View;[F[F[ZIF)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private setupFloatingMenu()V
    .locals 17
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 12
    .line 13
    const/high16 v2, 0x42300000    # 44.0f

    .line 14
    .line 15
    mul-float/2addr v2, v0

    .line 16
    float-to-int v6, v2

    .line 17
    new-instance v8, Landroid/widget/ImageView;

    .line 18
    .line 19
    invoke-direct {v8, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    const v2, 0x7f0800d1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 26
    .line 27
    .line 28
    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 29
    .line 30
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 31
    .line 32
    .line 33
    const/high16 v2, 0x41000000    # 8.0f

    .line 34
    .line 35
    mul-float v10, v0, v2

    .line 36
    .line 37
    invoke-virtual {v8, v10}, Landroid/view/View;->setElevation(F)V

    .line 38
    .line 39
    .line 40
    const v0, 0x7f12003b

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v8, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 51
    .line 52
    invoke-direct {v11, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 53
    .line 54
    .line 55
    const v12, 0x800033

    .line 56
    .line 57
    .line 58
    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 59
    .line 60
    float-to-int v13, v10

    .line 61
    iput v13, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 62
    .line 63
    iput v13, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 64
    .line 65
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    const/4 v14, 0x2

    .line 74
    new-array v2, v14, [F

    .line 75
    .line 76
    fill-array-data v2, :array_0

    .line 77
    .line 78
    .line 79
    new-array v3, v14, [F

    .line 80
    .line 81
    fill-array-data v3, :array_1

    .line 82
    .line 83
    .line 84
    const/4 v15, 0x1

    .line 85
    new-array v4, v15, [Z

    .line 86
    .line 87
    const/4 v0, 0x0

    .line 88
    aput-boolean v0, v4, v0

    .line 89
    .line 90
    move v7, v0

    .line 91
    new-instance v0, Lorg/renpy/android/g;

    .line 92
    .line 93
    move/from16 v16, v7

    .line 94
    .line 95
    const/4 v7, 0x0

    .line 96
    invoke-direct/range {v0 .. v7}, Lorg/renpy/android/g;-><init>(Lorg/renpy/android/PythonSDLActivity;[F[F[ZIII)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v8, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, v1, Lorg/renpy/android/PythonSDLActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 103
    .line 104
    invoke-virtual {v0, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    .line 106
    .line 107
    iput-object v8, v1, Lorg/renpy/android/PythonSDLActivity;->mFloatingMenuBtn:Landroid/view/View;

    .line 108
    .line 109
    new-instance v8, Landroid/widget/ImageView;

    .line 110
    .line 111
    invoke-direct {v8, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 112
    .line 113
    .line 114
    const v0, 0x7f0800ae

    .line 115
    .line 116
    .line 117
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v8, v10}, Landroid/view/View;->setElevation(F)V

    .line 124
    .line 125
    .line 126
    const v0, 0x3f333333    # 0.7f

    .line 127
    .line 128
    .line 129
    invoke-virtual {v8, v0}, Landroid/view/View;->setAlpha(F)V

    .line 130
    .line 131
    .line 132
    const v0, 0x7f1202be

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v8, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 140
    .line 141
    .line 142
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 143
    .line 144
    invoke-direct {v9, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 145
    .line 146
    .line 147
    iput v12, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 148
    .line 149
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 150
    .line 151
    add-int/2addr v0, v6

    .line 152
    add-int/2addr v0, v13

    .line 153
    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 154
    .line 155
    iput v13, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 156
    .line 157
    const/16 v0, 0x8

    .line 158
    .line 159
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    .line 161
    .line 162
    new-array v2, v14, [F

    .line 163
    .line 164
    fill-array-data v2, :array_2

    .line 165
    .line 166
    .line 167
    new-array v3, v14, [F

    .line 168
    .line 169
    fill-array-data v3, :array_3

    .line 170
    .line 171
    .line 172
    new-array v4, v15, [Z

    .line 173
    .line 174
    const/4 v10, 0x0

    .line 175
    aput-boolean v10, v4, v10

    .line 176
    .line 177
    new-instance v0, Lorg/renpy/android/g;

    .line 178
    .line 179
    const/4 v7, 0x1

    .line 180
    invoke-direct/range {v0 .. v7}, Lorg/renpy/android/g;-><init>(Lorg/renpy/android/PythonSDLActivity;[F[F[ZIII)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v8, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 184
    .line 185
    .line 186
    iget-object v0, v1, Lorg/renpy/android/PythonSDLActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 187
    .line 188
    invoke-virtual {v0, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    .line 190
    .line 191
    iput-object v8, v1, Lorg/renpy/android/PythonSDLActivity;->mCheatBtn:Landroid/view/View;

    .line 192
    .line 193
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    const v2, 0x7f0c00bc

    .line 198
    .line 199
    .line 200
    iget-object v3, v1, Lorg/renpy/android/PythonSDLActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 201
    .line 202
    invoke-virtual {v0, v2, v3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-direct {v1, v0}, Lorg/renpy/android/PythonSDLActivity;->bindMenuOverlay(Landroid/view/View;)V

    .line 207
    .line 208
    .line 209
    iget-object v2, v1, Lorg/renpy/android/PythonSDLActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 210
    .line 211
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 212
    .line 213
    const/4 v4, -0x1

    .line 214
    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    .line 219
    .line 220
    iput-object v0, v1, Lorg/renpy/android/PythonSDLActivity;->mMenuOverlayPanel:Landroid/view/View;

    .line 221
    .line 222
    return-void

    .line 223
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private showCheatPatreonDialog()V
    .locals 5

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0c003d

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    const v2, 0x7f09007e

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    new-instance v2, Lorg/renpy/android/e;

    .line 53
    .line 54
    const/4 v3, 0x3

    .line 55
    invoke-direct {v2, v1, v3}, Lorg/renpy/android/e;-><init>(Landroid/app/AlertDialog;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method private showExitDialog()V
    .locals 5

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0c0040

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    const v2, 0x7f090092

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    new-instance v3, Lorg/renpy/android/e;

    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    invoke-direct {v3, v1, v4}, Lorg/renpy/android/e;-><init>(Landroid/app/AlertDialog;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    .line 60
    .line 61
    const v2, 0x7f090093

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    new-instance v2, LC1/j;

    .line 69
    .line 70
    const/16 v3, 0x18

    .line 71
    .line 72
    invoke-direct {v2, v3, p0, v1}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method private showLanguageReloadDialog()V
    .locals 5

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0c004a

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    .line 42
    .line 43
    invoke-direct {v4, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    const v2, 0x7f0900ae

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    new-instance v3, Lorg/renpy/android/e;

    .line 57
    .line 58
    const/4 v4, 0x1

    .line 59
    invoke-direct {v3, v1, v4}, Lorg/renpy/android/e;-><init>(Landroid/app/AlertDialog;I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    .line 64
    .line 65
    const v2, 0x7f0900af

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-instance v2, Lorg/renpy/android/e;

    .line 73
    .line 74
    const/4 v3, 0x2

    .line 75
    invoke-direct {v2, v1, v3}, Lorg/renpy/android/e;-><init>(Landroid/app/AlertDialog;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method private showLoadingOverlay()V
    .locals 8

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0c00a3

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "iconPath"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    move-object v3, p0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    const v3, 0x7f090190

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Landroid/widget/ImageView;

    .line 56
    .line 57
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-direct {p0}, Lorg/renpy/android/PythonSDLActivity;->loadGamePresplash()Landroid/graphics/Bitmap;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    const v3, 0x7f09018f

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Landroid/widget/ImageView;

    .line 77
    .line 78
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    :cond_2
    const v1, 0x7f090399

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    move-object v6, v1

    .line 92
    check-cast v6, Landroid/widget/TextView;

    .line 93
    .line 94
    const v1, 0x7f090398

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    move-object v7, v1

    .line 102
    check-cast v7, Landroid/widget/TextView;

    .line 103
    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 105
    .line 106
    .line 107
    move-result-wide v4

    .line 108
    new-instance v2, Lorg/renpy/android/PythonSDLActivity$2;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .line 110
    move-object v3, p0

    .line 111
    :try_start_1
    invoke-direct/range {v2 .. v7}, Lorg/renpy/android/PythonSDLActivity$2;-><init>(Lorg/renpy/android/PythonSDLActivity;JLandroid/widget/TextView;Landroid/widget/TextView;)V

    .line 112
    .line 113
    .line 114
    iput-object v2, v3, Lorg/renpy/android/PythonSDLActivity;->mLoadingTick:Ljava/lang/Runnable;

    .line 115
    .line 116
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 117
    .line 118
    .line 119
    iput-object v0, v3, Lorg/renpy/android/PythonSDLActivity;->mLoadingOverlay:Landroid/view/View;

    .line 120
    .line 121
    sget-object v1, Lorg/libsdl/app/SDLActivity;->mLayout:Landroid/view/ViewGroup;

    .line 122
    .line 123
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 124
    .line 125
    const/4 v4, -0x1

    .line 126
    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :catch_1
    move-exception v0

    .line 134
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string v2, "Could not show loading overlay: "

    .line 137
    .line 138
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    const-string v1, "MinHub-Renpy"

    .line 153
    .line 154
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    return-void
.end method

.method public static bridge synthetic t(Lorg/renpy/android/PythonSDLActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/renpy/android/PythonSDLActivity;->readBootStage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private takeScreenshot()V
    .locals 6

    .line 1
    const-string v0, "MinHub_renpy_"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    sget-object v2, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object v2, Lorg/libsdl/app/SDLActivity;->mLayout:Landroid/view/ViewGroup;

    .line 10
    .line 11
    :goto_0
    if-nez v2, :cond_1

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x1

    .line 19
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 32
    .line 33
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    new-instance v4, Landroid/graphics/Canvas;

    .line 38
    .line 39
    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 43
    .line 44
    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 51
    .line 52
    .line 53
    move-result-wide v4

    .line 54
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v0, ".png"

    .line 58
    .line 59
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-direct {p0, v3, v0}, Lorg/renpy/android/PythonSDLActivity;->saveBitmapToGallery(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    const v0, 0x7f12037f

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    const v0, 0x7f12037e

    .line 77
    .line 78
    .line 79
    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    const-string v2, "python"

    .line 93
    .line 94
    const-string v3, "screenshot failed"

    .line 95
    .line 96
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const v2, 0x7f1200f7

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method private toggleUrmViaSignal()V
    .locals 5

    .line 1
    const-string v0, "MinHub-URM"

    .line 2
    .line 3
    const-string v1, "Signal created (active="

    .line 4
    .line 5
    iget-object v2, p0, Lorg/renpy/android/PythonSDLActivity;->mGamePath:Ljava/lang/String;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-boolean v2, p0, Lorg/renpy/android/PythonSDLActivity;->mCheatActive:Z

    .line 11
    .line 12
    xor-int/lit8 v3, v2, 0x1

    .line 13
    .line 14
    iput-boolean v3, p0, Lorg/renpy/android/PythonSDLActivity;->mCheatActive:Z

    .line 15
    .line 16
    iget-object v3, p0, Lorg/renpy/android/PythonSDLActivity;->mCheatBtn:Landroid/view/View;

    .line 17
    .line 18
    if-eqz v3, :cond_2

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    const/high16 v2, 0x3f800000    # 1.0f

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/high16 v2, 0x3f000000    # 0.5f

    .line 26
    .line 27
    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 28
    .line 29
    .line 30
    :cond_2
    new-instance v2, Ljava/io/File;

    .line 31
    .line 32
    iget-object v3, p0, Lorg/renpy/android/PythonSDLActivity;->mGamePath:Ljava/lang/String;

    .line 33
    .line 34
    const-string v4, ".minhub_urm_open"

    .line 35
    .line 36
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 40
    .line 41
    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-boolean v1, p0, Lorg/renpy/android/PythonSDLActivity;->mCheatActive:Z

    .line 48
    .line 49
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, "): "

    .line 53
    .line 54
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :catch_0
    move-exception v1

    .line 73
    const-string v2, "Failed to create signal"

    .line 74
    .line 75
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public static bridge synthetic u(Lorg/renpy/android/PythonSDLActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/renpy/android/PythonSDLActivity;->removeLoadingOverlay()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private writeRpyIfChanged(Ljava/io/File;Ljava/lang/String;)Z
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "writeRpyIfChanged "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " existing="

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-wide/16 v1, -0x1

    .line 32
    .line 33
    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, " newlen="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    if-nez p2, :cond_1

    .line 42
    .line 43
    const/4 v1, -0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "MinHub-Renpy"

    .line 57
    .line 58
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    .line 63
    .line 64
    .line 65
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    const-string v3, "UTF-8"

    .line 67
    .line 68
    if-eqz v2, :cond_3

    .line 69
    .line 70
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 71
    .line 72
    .line 73
    move-result-wide v4

    .line 74
    long-to-int v2, v4

    .line 75
    new-array v4, v2, [B

    .line 76
    .line 77
    new-instance v5, Ljava/io/FileInputStream;

    .line 78
    .line 79
    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    .line 81
    .line 82
    move v6, v0

    .line 83
    :goto_2
    if-ge v6, v2, :cond_2

    .line 84
    .line 85
    sub-int v7, v2, v6

    .line 86
    .line 87
    :try_start_2
    invoke-virtual {v5, v4, v6, v7}, Ljava/io/FileInputStream;->read([BII)I

    .line 88
    .line 89
    .line 90
    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    if-lez v7, :cond_2

    .line 92
    .line 93
    add-int/2addr v6, v7

    .line 94
    goto :goto_2

    .line 95
    :catchall_0
    move-exception p2

    .line 96
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 97
    .line 98
    .line 99
    goto :goto_3

    .line 100
    :catchall_1
    move-exception v2

    .line 101
    :try_start_4
    invoke-virtual {p2, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    :goto_3
    throw p2

    .line 105
    :catch_0
    move-exception p2

    .line 106
    goto :goto_5

    .line 107
    :cond_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 108
    .line 109
    .line 110
    new-instance v2, Ljava/lang/String;

    .line 111
    .line 112
    invoke-direct {v2, v4, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_3

    .line 120
    .line 121
    return v0

    .line 122
    :cond_3
    new-instance v2, Ljava/io/FileOutputStream;

    .line 123
    .line 124
    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 125
    .line 126
    .line 127
    :try_start_5
    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 132
    .line 133
    .line 134
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 135
    .line 136
    .line 137
    const/4 p1, 0x1

    .line 138
    return p1

    .line 139
    :catchall_2
    move-exception p2

    .line 140
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 141
    .line 142
    .line 143
    goto :goto_4

    .line 144
    :catchall_3
    move-exception v2

    .line 145
    :try_start_8
    invoke-virtual {p2, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 146
    .line 147
    .line 148
    :goto_4
    throw p2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 149
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string v3, "writeRpyIfChanged failed for "

    .line 152
    .line 153
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-static {v1, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    .line 169
    .line 170
    return v0
.end method


# virtual methods
.method public addView(Landroid/view/View;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mVbox:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 4
    .line 5
    const/4 v2, -0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, -0x1

    .line 8
    invoke-direct {v1, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public armOnStop()V
    .locals 2

    .line 1
    const-string v0, "python"

    .line 2
    .line 3
    const-string v1, "armOnStop()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lorg/renpy/android/PythonSDLActivity;->mStopDone:Z

    .line 10
    .line 11
    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget v0, LS1/c;->d:I

    .line 2
    .line 3
    const-string v0, "base"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, LS1/d;->d(Landroid/content/Context;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {p1, v0}, Lcom/bumptech/glide/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public finishOnStop()V
    .locals 2

    .line 1
    const-string v0, "python"

    .line 2
    .line 3
    const-string v1, "finishOnStop()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    monitor-enter p0

    .line 9
    const/4 v0, 0x1

    .line 10
    :try_start_0
    iput-boolean v0, p0, Lorg/renpy/android/PythonSDLActivity;->mStopDone:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v0
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :catch_0
    const/4 p1, 0x0

    .line 18
    return-object p1
.end method

.method public getDPI()I
    .locals 2

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 15
    .line 16
    .line 17
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 18
    .line 19
    return v0
.end method

.method public getGamePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mGamePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLibraries()[Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    return-object v0
.end method

.method public getMainSharedObject()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "engine-plugins/renpy/"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lorg/renpy/android/PythonSDLActivity;->resolveRenpyAbi()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v2, Ljava/io/File;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, "/librenpython.so"

    .line 24
    .line 25
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    return-object v0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v2, "getMainSharedObject error: "

    .line 50
    .line 51
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v1, "PythonSDL"

    .line 66
    .line 67
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    :cond_0
    invoke-super {p0}, Lorg/libsdl/app/SDLActivity;->getMainSharedObject()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    return-object v0
.end method

.method public getRenpyPluginKey()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "renpy"

    .line 2
    .line 3
    return-object v0
.end method

.method public hidePresplash()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/renpy/android/PythonSDLActivity;->mInterfaceReady:Z

    .line 3
    .line 4
    sget-object v0, Ly1/B1;->a:Ljava/util/List;

    .line 5
    .line 6
    const-string v0, "ok:"

    .line 7
    .line 8
    const-string v1, "context"

    .line 9
    .line 10
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Ly1/B1;->a:Ljava/util/List;

    .line 14
    .line 15
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 16
    .line 17
    invoke-static {p0}, Ly1/B1;->c(Landroid/app/Activity;)Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v1, v0}, Lkotlin/io/FilesKt;->g(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 48
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    goto :goto_2

    .line 53
    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 54
    .line 55
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    :goto_2
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string v1, "Could not clear boot state: "

    .line 74
    .line 75
    const-string v2, "MinHub-RenpyBoot"

    .line 76
    .line 77
    invoke-static {v1, v0, v2}, LE/b;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    new-instance v0, Lorg/renpy/android/PythonSDLActivity$3;

    .line 81
    .line 82
    invoke-direct {v0, p0}, Lorg/renpy/android/PythonSDLActivity$3;-><init>(Lorg/renpy/android/PythonSDLActivity;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public loadLibraries()V
    .locals 7

    .line 1
    const-string v0, "PythonSDL"

    .line 2
    .line 3
    const-string v1, "Loading librenpython from: "

    .line 4
    .line 5
    const-string v2, "engine-plugins/renpy/"

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0}, Lorg/renpy/android/PythonSDLActivity;->resolveRenpyAbi()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    new-instance v4, Ljava/io/File;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    new-instance v6, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, "/librenpython.so"

    .line 28
    .line 29
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string v1, "librenpython.so loaded OK"

    .line 66
    .line 67
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :catch_0
    move-exception v1

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    .line 74
    .line 75
    const-string v2, "Thi\u1ebft b\u1ecb kh\u00f4ng h\u1ed7 tr\u1ee3 ABI cho Ren\'Py"

    .line 76
    .line 77
    invoke-direct {v1, v2}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw v1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v3, "Failed to load librenpython.so: "

    .line 84
    .line 85
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    throw v1
.end method

.method public native nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public onBackPressed()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mMenuOverlayPanel:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lorg/renpy/android/PythonSDLActivity;->closeMenuOverlay()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-direct {p0}, Lorg/renpy/android/PythonSDLActivity;->openMenuOverlay()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "engineKey"

    .line 7
    .line 8
    const-string v2, "renpy"

    .line 9
    .line 10
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {p0, v2, v1, v1}, La/a;->r(Landroid/app/Activity;Ljava/lang/String;Ly1/x;Ly1/x;)LA1/v0;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iput-object v2, p0, Lorg/renpy/android/PythonSDLActivity;->mLifecycleAdapter:LA1/v0;

    .line 19
    .line 20
    const-string v2, "python"

    .line 21
    .line 22
    const-string v3, "onCreate()"

    .line 23
    .line 24
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    const-string v3, "gamePath"

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    iput-object v3, p0, Lorg/renpy/android/PythonSDLActivity;->mGamePath:Ljava/lang/String;

    .line 46
    .line 47
    :cond_0
    const/4 v3, -0x1

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    const-string v4, "game_id"

    .line 51
    .line 52
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    iput v2, p0, Lorg/renpy/android/PythonSDLActivity;->mGameId:I

    .line 57
    .line 58
    :cond_1
    iget v2, p0, Lorg/renpy/android/PythonSDLActivity;->mGameId:I

    .line 59
    .line 60
    invoke-static {p0, v2}, Ly1/e0;->a(Landroid/app/Activity;I)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Lorg/renpy/android/PythonSDLActivity;->applyEarlyWindowBackground()V

    .line 64
    .line 65
    .line 66
    iget-object v2, p0, Lorg/renpy/android/PythonSDLActivity;->mGamePath:Ljava/lang/String;

    .line 67
    .line 68
    sget-object v4, Ly1/B1;->a:Ljava/util/List;

    .line 69
    .line 70
    const-string v4, "started:"

    .line 71
    .line 72
    const-string v5, "context"

    .line 73
    .line 74
    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    if-eqz v2, :cond_4

    .line 78
    .line 79
    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-nez v6, :cond_2

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    move-object v2, v1

    .line 87
    :goto_0
    if-eqz v2, :cond_4

    .line 88
    .line 89
    :try_start_0
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 90
    .line 91
    new-instance v6, Ljava/io/File;

    .line 92
    .line 93
    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-static {v6}, Ly1/B1;->b(Ljava/io/File;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    goto :goto_1

    .line 105
    :catchall_0
    move-exception v2

    .line 106
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 107
    .line 108
    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    :goto_1
    invoke-static {v2}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    if-eqz v6, :cond_3

    .line 121
    .line 122
    move-object v2, v1

    .line 123
    :cond_3
    check-cast v2, Ljava/lang/String;

    .line 124
    .line 125
    if-eqz v2, :cond_4

    .line 126
    .line 127
    const/16 v6, 0x3a

    .line 128
    .line 129
    const/16 v7, 0x20

    .line 130
    .line 131
    invoke-static {v2, v6, v7}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;CC)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    if-eqz v2, :cond_4

    .line 136
    .line 137
    const/16 v6, 0xa

    .line 138
    .line 139
    invoke-static {v2, v6, v7}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;CC)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    goto :goto_2

    .line 144
    :cond_4
    move-object v2, v1

    .line 145
    :goto_2
    if-nez v2, :cond_5

    .line 146
    .line 147
    const-string v2, ""

    .line 148
    .line 149
    :cond_5
    sget-object v6, Ly1/B1;->a:Ljava/util/List;

    .line 150
    .line 151
    :try_start_1
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 152
    .line 153
    invoke-static {p0}, Ly1/B1;->c(Landroid/app/Activity;)Ljava/io/File;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    if-eqz v6, :cond_6

    .line 158
    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 160
    .line 161
    .line 162
    move-result-wide v7

    .line 163
    new-instance v9, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v4, ":"

    .line 172
    .line 173
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-static {v6, v2}, Lkotlin/io/FilesKt;->g(Ljava/io/File;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :catchall_1
    move-exception v2

    .line 190
    goto :goto_4

    .line 191
    :cond_6
    move-object v2, v1

    .line 192
    :goto_3
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 196
    goto :goto_5

    .line 197
    :goto_4
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 198
    .line 199
    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    :goto_5
    invoke-static {v2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    if-eqz v2, :cond_7

    .line 212
    .line 213
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    const-string v4, "Could not write boot state: "

    .line 218
    .line 219
    const-string v6, "MinHub-RenpyBoot"

    .line 220
    .line 221
    invoke-static {v4, v2, v6}, LE/b;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    :cond_7
    invoke-super {p0, p1}, Lorg/libsdl/app/SDLActivity;->onCreate(Landroid/os/Bundle;)V

    .line 225
    .line 226
    .line 227
    sget-object p1, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    .line 228
    .line 229
    const/4 v2, 0x1

    .line 230
    const/4 v4, 0x0

    .line 231
    if-eqz p1, :cond_12

    .line 232
    .line 233
    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    const-string v6, "surface"

    .line 237
    .line 238
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    sget-object v5, Ly1/F1;->c:Ly1/c0;

    .line 245
    .line 246
    const-string v6, "minhub_prefs"

    .line 247
    .line 248
    invoke-virtual {p0, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    const-string v7, "renpy_render_resolution"

    .line 253
    .line 254
    invoke-interface {v6, v7, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v6

    .line 258
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    sget-object v5, Ly1/F1;->f:Lkotlin/enums/EnumEntries;

    .line 262
    .line 263
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 268
    .line 269
    .line 270
    move-result v7

    .line 271
    if-eqz v7, :cond_9

    .line 272
    .line 273
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v7

    .line 277
    move-object v8, v7

    .line 278
    check-cast v8, Ly1/F1;

    .line 279
    .line 280
    iget-object v8, v8, Ly1/F1;->b:Ljava/lang/String;

    .line 281
    .line 282
    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v8

    .line 286
    if-eqz v8, :cond_8

    .line 287
    .line 288
    goto :goto_6

    .line 289
    :cond_9
    move-object v7, v1

    .line 290
    :goto_6
    check-cast v7, Ly1/F1;

    .line 291
    .line 292
    if-nez v7, :cond_a

    .line 293
    .line 294
    sget-object v7, Ly1/F1;->d:Ly1/F1;

    .line 295
    .line 296
    :cond_a
    :try_start_2
    new-instance v5, Landroid/app/ActivityManager$MemoryInfo;

    .line 297
    .line 298
    invoke-direct {v5}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    const-string v6, "null cannot be cast to non-null type android.app.ActivityManager"

    .line 306
    .line 307
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    check-cast v0, Landroid/app/ActivityManager;

    .line 311
    .line 312
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 313
    .line 314
    .line 315
    iget-wide v5, v5, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 316
    .line 317
    const/high16 v0, 0x100000

    .line 318
    .line 319
    int-to-long v8, v0

    .line 320
    div-long/2addr v5, v8

    .line 321
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 329
    goto :goto_7

    .line 330
    :catchall_2
    move-exception v0

    .line 331
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 332
    .line 333
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    :goto_7
    const-wide/16 v5, 0x0

    .line 342
    .line 343
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 344
    .line 345
    .line 346
    move-result-object v5

    .line 347
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v6

    .line 351
    if-eqz v6, :cond_b

    .line 352
    .line 353
    move-object v0, v5

    .line 354
    :cond_b
    check-cast v0, Ljava/lang/Number;

    .line 355
    .line 356
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 357
    .line 358
    .line 359
    move-result-wide v5

    .line 360
    const-string v0, "mode"

    .line 361
    .line 362
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 366
    .line 367
    .line 368
    move-result v0

    .line 369
    const/16 v7, 0x438

    .line 370
    .line 371
    const/16 v8, 0x2d0

    .line 372
    .line 373
    if-eqz v0, :cond_f

    .line 374
    .line 375
    if-eq v0, v2, :cond_e

    .line 376
    .line 377
    const/4 v5, 0x2

    .line 378
    if-eq v0, v5, :cond_d

    .line 379
    .line 380
    const/4 v5, 0x3

    .line 381
    if-ne v0, v5, :cond_c

    .line 382
    .line 383
    goto :goto_8

    .line 384
    :cond_c
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 385
    .line 386
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 387
    .line 388
    .line 389
    throw p1

    .line 390
    :cond_d
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    goto :goto_8

    .line 395
    :cond_e
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    goto :goto_8

    .line 400
    :cond_f
    const-wide/16 v0, 0x1

    .line 401
    .line 402
    cmp-long v0, v0, v5

    .line 403
    .line 404
    if-gtz v0, :cond_10

    .line 405
    .line 406
    const-wide/16 v0, 0x1001

    .line 407
    .line 408
    cmp-long v0, v5, v0

    .line 409
    .line 410
    if-gez v0, :cond_10

    .line 411
    .line 412
    move v7, v8

    .line 413
    :cond_10
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    :goto_8
    if-nez v1, :cond_11

    .line 418
    .line 419
    const-string p1, "RenpyRenderResolution"

    .line 420
    .line 421
    const-string v0, "Ren\'Py renders at native resolution"

    .line 422
    .line 423
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    .line 425
    .line 426
    goto :goto_9

    .line 427
    :cond_11
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 428
    .line 429
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 430
    .line 431
    .line 432
    new-instance v5, Lorg/godotengine/godot/j;

    .line 433
    .line 434
    invoke-direct {v5, v2, v1, v0}, Lorg/godotengine/godot/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {p1, v5}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 438
    .line 439
    .line 440
    :cond_12
    :goto_9
    sget-boolean p1, Lorg/libsdl/app/SDLActivity;->mBrokenLibraries:Z

    .line 441
    .line 442
    if-nez p1, :cond_13

    .line 443
    .line 444
    invoke-virtual {p0}, Lorg/renpy/android/PythonSDLActivity;->preparePython()V

    .line 445
    .line 446
    .line 447
    :cond_13
    sget-object p1, Lorg/libsdl/app/SDLActivity;->mLayout:Landroid/view/ViewGroup;

    .line 448
    .line 449
    if-nez p1, :cond_14

    .line 450
    .line 451
    goto :goto_b

    .line 452
    :cond_14
    const-string p1, "android-presplash.png"

    .line 453
    .line 454
    invoke-virtual {p0, p1}, Lorg/renpy/android/PythonSDLActivity;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 455
    .line 456
    .line 457
    move-result-object p1

    .line 458
    if-nez p1, :cond_15

    .line 459
    .line 460
    const-string p1, "android-presplash.jpg"

    .line 461
    .line 462
    invoke-virtual {p0, p1}, Lorg/renpy/android/PythonSDLActivity;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 463
    .line 464
    .line 465
    move-result-object p1

    .line 466
    :cond_15
    if-eqz p1, :cond_16

    .line 467
    .line 468
    new-instance v0, Landroid/widget/ImageView;

    .line 469
    .line 470
    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 471
    .line 472
    .line 473
    iput-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mPresplash:Landroid/widget/ImageView;

    .line 474
    .line 475
    invoke-virtual {p1, v4, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    .line 476
    .line 477
    .line 478
    move-result v1

    .line 479
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 480
    .line 481
    .line 482
    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mPresplash:Landroid/widget/ImageView;

    .line 483
    .line 484
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 485
    .line 486
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 487
    .line 488
    .line 489
    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mPresplash:Landroid/widget/ImageView;

    .line 490
    .line 491
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 492
    .line 493
    .line 494
    sget-object p1, Lorg/libsdl/app/SDLActivity;->mLayout:Landroid/view/ViewGroup;

    .line 495
    .line 496
    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mPresplash:Landroid/widget/ImageView;

    .line 497
    .line 498
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 499
    .line 500
    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    .line 505
    .line 506
    goto :goto_a

    .line 507
    :cond_16
    invoke-direct {p0}, Lorg/renpy/android/PythonSDLActivity;->showLoadingOverlay()V

    .line 508
    .line 509
    .line 510
    :goto_a
    iget-object p1, p0, Lorg/renpy/android/PythonSDLActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 511
    .line 512
    if-eqz p1, :cond_17

    .line 513
    .line 514
    invoke-direct {p0}, Lorg/renpy/android/PythonSDLActivity;->setupFloatingMenu()V

    .line 515
    .line 516
    .line 517
    iget-object p1, p0, Lorg/renpy/android/PythonSDLActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 518
    .line 519
    if-eqz p1, :cond_17

    .line 520
    .line 521
    new-instance v0, LK0/a;

    .line 522
    .line 523
    invoke-direct {v0, v2, p0}, LK0/a;-><init>(ILjava/lang/Object;)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 527
    .line 528
    .line 529
    :cond_17
    :goto_b
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    const-string v0, "python"

    .line 2
    .line 3
    const-string v1, "onDestroy()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mLifecycleAdapter:LA1/v0;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, LA1/v0;->b()V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mLifecycleAdapter:LA1/v0;

    .line 17
    .line 18
    sget-object v0, Ly1/f0;->a:La2/e;

    .line 19
    .line 20
    iget v0, p0, Lorg/renpy/android/PythonSDLActivity;->mGameId:I

    .line 21
    .line 22
    iget-wide v1, p0, Lorg/renpy/android/PythonSDLActivity;->mSessionStartMs:J

    .line 23
    .line 24
    invoke-static {p0, v0, v1, v2}, Ly1/f0;->a(Landroid/app/Activity;IJ)V

    .line 25
    .line 26
    .line 27
    invoke-super {p0}, Lorg/libsdl/app/SDLActivity;->onDestroy()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-string v0, "python"

    .line 2
    .line 3
    const-string v1, "onNewIntent()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lorg/libsdl/app/SDLActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lorg/renpy/android/PythonSDLActivity;->hideSystemBars()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/renpy/android/PythonSDLActivity;->reassertFloatMenuOnTop()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onStop()V
    .locals 6

    .line 1
    const-string v0, "python"

    .line 2
    .line 3
    const-string v1, "onStop() start."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lorg/libsdl/app/SDLActivity;->onStop()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    monitor-enter p0

    .line 16
    :catch_0
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lorg/renpy/android/PythonSDLActivity;->mStopDone:Z

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const-wide/16 v2, 0x1f40

    .line 22
    .line 23
    add-long/2addr v2, v0

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v4

    .line 28
    cmp-long v2, v2, v4

    .line 29
    .line 30
    if-gez v2, :cond_1

    .line 31
    .line 32
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    const-string v0, "python"

    .line 34
    .line 35
    const-string v1, "onStop() done."

    .line 36
    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    const-wide/16 v2, 0x64

    .line 44
    .line 45
    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    throw v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/libsdl/app/SDLActivity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lorg/renpy/android/PythonSDLActivity;->hideSystemBars()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/renpy/android/PythonSDLActivity;->reassertFloatMenuOnTop()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public openUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/libsdl/app/SDLActivity;->openURL(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public preparePrivateData()V
    .locals 2

    .line 1
    const-string v0, "private"

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0, v0, v1}, Lorg/renpy/android/PythonSDLActivity;->unpackData(Ljava/lang/String;Ljava/io/File;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "ANDROID_PRIVATE"

    .line 19
    .line 20
    invoke-virtual {p0, v1, v0}, Lorg/renpy/android/PythonSDLActivity;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public preparePython()V
    .locals 13

    .line 1
    const-string v0, "MinHub-RenpyBoot"

    .line 2
    .line 3
    const-string v1, "Starting preparePython."

    .line 4
    .line 5
    const-string v2, "python"

    .line 6
    .line 7
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    sput-object p0, Lorg/renpy/android/PythonSDLActivity;->mActivity:Lorg/renpy/android/PythonSDLActivity;

    .line 11
    .line 12
    new-instance v1, Lorg/renpy/android/ResourceManager;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lorg/renpy/android/ResourceManager;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lorg/renpy/android/PythonSDLActivity;->resourceManager:Lorg/renpy/android/ResourceManager;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    new-instance v3, Ljava/io/File;

    .line 27
    .line 28
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {p0}, Lorg/renpy/android/PythonSDLActivity;->preparePrivateData()V

    .line 40
    .line 41
    .line 42
    sget-object v4, Lcom/minhub/gamehub/data/RenpySaveIsolation;->INSTANCE:Lcom/minhub/gamehub/data/RenpySaveIsolation;

    .line 43
    .line 44
    iget v5, p0, Lorg/renpy/android/PythonSDLActivity;->mGameId:I

    .line 45
    .line 46
    iget-object v6, p0, Lorg/renpy/android/PythonSDLActivity;->mGamePath:Ljava/lang/String;

    .line 47
    .line 48
    if-nez v6, :cond_1

    .line 49
    .line 50
    move-object v6, v1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    new-instance v6, Ljava/io/File;

    .line 53
    .line 54
    iget-object v7, p0, Lorg/renpy/android/PythonSDLActivity;->mGamePath:Ljava/lang/String;

    .line 55
    .line 56
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-virtual {v4, v3, v5, v6}, Lcom/minhub/gamehub/data/RenpySaveIsolation;->prepare(Ljava/io/File;ILjava/io/File;)Ljava/io/File;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    if-nez v4, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    move-object v3, v4

    .line 67
    :goto_1
    sget-object v4, Ly1/B1;->a:Ljava/util/List;

    .line 68
    .line 69
    const-string v4, "context"

    .line 70
    .line 71
    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string v4, "logDir"

    .line 75
    .line 76
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sget-object v5, Ly1/B1;->a:Ljava/util/List;

    .line 80
    .line 81
    :try_start_0
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 82
    .line 83
    invoke-static {p0}, Ly1/B1;->c(Landroid/app/Activity;)Ljava/io/File;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    if-nez v5, :cond_3

    .line 88
    .line 89
    goto/16 :goto_6

    .line 90
    .line 91
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    if-eqz v6, :cond_4

    .line 96
    .line 97
    move-object v6, v5

    .line 98
    goto :goto_2

    .line 99
    :cond_4
    move-object v6, v1

    .line 100
    :goto_2
    if-eqz v6, :cond_5

    .line 101
    .line 102
    invoke-static {v6}, Lkotlin/io/FilesKt;->f(Ljava/io/File;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    if-eqz v6, :cond_5

    .line 107
    .line 108
    invoke-static {v6}, Lkotlin/text/StringsKt;->lineSequence(Ljava/lang/CharSequence;)Lkotlin/sequences/Sequence;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    if-eqz v6, :cond_5

    .line 113
    .line 114
    invoke-static {v6}, Lkotlin/sequences/SequencesKt;->firstOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    check-cast v6, Ljava/lang/String;

    .line 119
    .line 120
    if-eqz v6, :cond_5

    .line 121
    .line 122
    invoke-static {v6}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    goto :goto_3

    .line 131
    :catchall_0
    move-exception v5

    .line 132
    goto :goto_4

    .line 133
    :cond_5
    move-object v6, v1

    .line 134
    :goto_3
    if-eqz v6, :cond_7

    .line 135
    .line 136
    const-string v7, "started:"

    .line 137
    .line 138
    invoke-static {v6, v7}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    if-nez v7, :cond_6

    .line 143
    .line 144
    goto :goto_6

    .line 145
    :cond_6
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    new-instance v8, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v6, "\nlogdir="

    .line 158
    .line 159
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    invoke-static {v5, v6}, Lkotlin/io/FilesKt;->g(Ljava/io/File;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 173
    .line 174
    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    goto :goto_5

    .line 179
    :goto_4
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 180
    .line 181
    invoke-static {v5}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    :goto_5
    invoke-static {v5}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    if-eqz v5, :cond_7

    .line 194
    .line 195
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    const-string v6, "Could not record log dir: "

    .line 200
    .line 201
    invoke-static {v6, v5, v0}, LE/b;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    :cond_7
    :goto_6
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    const/4 v4, 0x1

    .line 208
    const/4 v5, 0x0

    .line 209
    :try_start_1
    new-instance v6, Ljava/io/File;

    .line 210
    .line 211
    const-string v7, "renpy_boot.log"

    .line 212
    .line 213
    invoke-direct {v6, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    .line 217
    .line 218
    .line 219
    move-result v7

    .line 220
    if-eqz v7, :cond_c

    .line 221
    .line 222
    invoke-virtual {v6}, Ljava/io/File;->length()J

    .line 223
    .line 224
    .line 225
    move-result-wide v7

    .line 226
    const-wide/32 v9, 0xfa00

    .line 227
    .line 228
    .line 229
    cmp-long v7, v7, v9

    .line 230
    .line 231
    if-gtz v7, :cond_8

    .line 232
    .line 233
    goto :goto_c

    .line 234
    :cond_8
    new-instance v7, Ljava/io/RandomAccessFile;

    .line 235
    .line 236
    const-string v8, "r"

    .line 237
    .line 238
    invoke-direct {v7, v6, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 239
    .line 240
    .line 241
    :try_start_2
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    .line 242
    .line 243
    .line 244
    move-result-wide v8

    .line 245
    const/16 v10, 0x3e80

    .line 246
    .line 247
    int-to-long v11, v10

    .line 248
    sub-long/2addr v8, v11

    .line 249
    invoke-virtual {v7, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 250
    .line 251
    .line 252
    new-array v8, v10, [B

    .line 253
    .line 254
    invoke-virtual {v7, v8}, Ljava/io/RandomAccessFile;->readFully([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 255
    .line 256
    .line 257
    :try_start_3
    invoke-static {v7, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 258
    .line 259
    .line 260
    move v1, v5

    .line 261
    :goto_7
    if-ge v1, v10, :cond_a

    .line 262
    .line 263
    aget-byte v7, v8, v1

    .line 264
    .line 265
    const/16 v9, 0xa

    .line 266
    .line 267
    if-ne v7, v9, :cond_9

    .line 268
    .line 269
    goto :goto_8

    .line 270
    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 271
    .line 272
    goto :goto_7

    .line 273
    :catchall_1
    move-exception v1

    .line 274
    goto :goto_a

    .line 275
    :cond_a
    const/4 v1, -0x1

    .line 276
    :goto_8
    if-gez v1, :cond_b

    .line 277
    .line 278
    move v1, v5

    .line 279
    goto :goto_9

    .line 280
    :cond_b
    add-int/2addr v1, v4

    .line 281
    :goto_9
    invoke-static {v8, v1, v10}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-static {v6, v1}, Lkotlin/io/FilesKt;->writeBytes(Ljava/io/File;[B)V

    .line 286
    .line 287
    .line 288
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 289
    .line 290
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 294
    goto :goto_b

    .line 295
    :catchall_2
    move-exception v1

    .line 296
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 297
    :catchall_3
    move-exception v6

    .line 298
    :try_start_5
    invoke-static {v7, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 299
    .line 300
    .line 301
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 302
    :goto_a
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 303
    .line 304
    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    :goto_b
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    if-eqz v1, :cond_c

    .line 317
    .line 318
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    const-string v6, "Could not trim renpy_boot.log: "

    .line 323
    .line 324
    invoke-static {v6, v1, v0}, LE/b;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    :cond_c
    :goto_c
    const-string v0, "ANDROID_PUBLIC"

    .line 328
    .line 329
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-virtual {p0, v0, v1}, Lorg/renpy/android/PythonSDLActivity;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    const-string v0, "ANDROID_OLD_PUBLIC"

    .line 337
    .line 338
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    invoke-virtual {p0, v0, v1}, Lorg/renpy/android/PythonSDLActivity;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    :try_start_6
    invoke-virtual {p0}, Lorg/renpy/android/PythonSDLActivity;->resolveRenpyAbi()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    if-eqz v0, :cond_d

    .line 350
    .line 351
    new-instance v1, Ljava/io/File;

    .line 352
    .line 353
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    new-instance v6, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .line 361
    .line 362
    const-string v7, "engine-plugins/"

    .line 363
    .line 364
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {p0}, Lorg/renpy/android/PythonSDLActivity;->getRenpyPluginKey()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v7

    .line 371
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    const-string v7, "/"

    .line 375
    .line 376
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    const-string v0, "MINHUB_RENPY_PLUGIN_DIR"

    .line 390
    .line 391
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    invoke-virtual {p0, v0, v1}, Lorg/renpy/android/PythonSDLActivity;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 396
    .line 397
    .line 398
    goto :goto_d

    .line 399
    :catch_0
    move-exception v0

    .line 400
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 401
    .line 402
    .line 403
    :cond_d
    :goto_d
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    .line 420
    .line 421
    goto :goto_e

    .line 422
    :catch_1
    const-string v0, ""

    .line 423
    .line 424
    :goto_e
    const-string v1, "ANDROID_APK"

    .line 425
    .line 426
    invoke-virtual {p0, v1, v0}, Lorg/renpy/android/PythonSDLActivity;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mGamePath:Ljava/lang/String;

    .line 430
    .line 431
    if-eqz v0, :cond_10

    .line 432
    .line 433
    const-string v1, "RENPY_GAME_DIR"

    .line 434
    .line 435
    invoke-virtual {p0, v1, v0}, Lorg/renpy/android/PythonSDLActivity;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    new-instance v0, Ljava/io/File;

    .line 439
    .line 440
    iget-object v1, p0, Lorg/renpy/android/PythonSDLActivity;->mGamePath:Ljava/lang/String;

    .line 441
    .line 442
    const-string v3, ".minhub_boot_progress"

    .line 443
    .line 444
    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 448
    .line 449
    .line 450
    invoke-direct {p0}, Lorg/renpy/android/PythonSDLActivity;->isUserPatreon()Z

    .line 451
    .line 452
    .line 453
    move-result v0

    .line 454
    if-eqz v0, :cond_e

    .line 455
    .line 456
    new-instance v0, Ljava/io/File;

    .line 457
    .line 458
    iget-object v1, p0, Lorg/renpy/android/PythonSDLActivity;->mGamePath:Ljava/lang/String;

    .line 459
    .line 460
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    invoke-direct {p0, v0}, Lorg/renpy/android/PythonSDLActivity;->injectUrm(Ljava/io/File;)V

    .line 464
    .line 465
    .line 466
    :cond_e
    const-string v0, "minhub_prefs"

    .line 467
    .line 468
    invoke-virtual {p0, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    const-string v3, "renpy_font_px"

    .line 473
    .line 474
    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 475
    .line 476
    .line 477
    move-result v1

    .line 478
    const-string v3, "MINHUB_FONT_SIZE"

    .line 479
    .line 480
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v6

    .line 484
    invoke-virtual {p0, v3, v6}, Lorg/renpy/android/PythonSDLActivity;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    new-instance v3, Ljava/io/File;

    .line 488
    .line 489
    iget-object v6, p0, Lorg/renpy/android/PythonSDLActivity;->mGamePath:Ljava/lang/String;

    .line 490
    .line 491
    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    invoke-direct {p0, v3}, Lorg/renpy/android/PythonSDLActivity;->injectDefaultDejaVuFont(Ljava/io/File;)V

    .line 495
    .line 496
    .line 497
    new-instance v3, Ljava/io/File;

    .line 498
    .line 499
    iget-object v6, p0, Lorg/renpy/android/PythonSDLActivity;->mGamePath:Ljava/lang/String;

    .line 500
    .line 501
    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    invoke-direct {p0, v3, v1}, Lorg/renpy/android/PythonSDLActivity;->injectFontRpy(Ljava/io/File;I)V

    .line 505
    .line 506
    .line 507
    new-instance v1, Ljava/io/File;

    .line 508
    .line 509
    iget-object v3, p0, Lorg/renpy/android/PythonSDLActivity;->mGamePath:Ljava/lang/String;

    .line 510
    .line 511
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    invoke-direct {p0, v1}, Lorg/renpy/android/PythonSDLActivity;->injectSetTimerCompatRpy(Ljava/io/File;)V

    .line 515
    .line 516
    .line 517
    new-instance v1, Ljava/io/File;

    .line 518
    .line 519
    iget-object v3, p0, Lorg/renpy/android/PythonSDLActivity;->mGamePath:Ljava/lang/String;

    .line 520
    .line 521
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    invoke-direct {p0, v1}, Lorg/renpy/android/PythonSDLActivity;->injectStoreCompatRpy(Ljava/io/File;)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {p0, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    const-string v1, "renpy_memory_saver"

    .line 532
    .line 533
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 534
    .line 535
    .line 536
    move-result v0

    .line 537
    if-eqz v0, :cond_f

    .line 538
    .line 539
    const-string v0, "1"

    .line 540
    .line 541
    goto :goto_f

    .line 542
    :cond_f
    const-string v0, "0"

    .line 543
    .line 544
    :goto_f
    const-string v1, "MINHUB_RENPY_MEMORY_SAVER"

    .line 545
    .line 546
    invoke-virtual {p0, v1, v0}, Lorg/renpy/android/PythonSDLActivity;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    sget-object v0, Ly1/E1;->a:Ljava/util/Set;

    .line 550
    .line 551
    new-instance v0, Ljava/io/File;

    .line 552
    .line 553
    iget-object v1, p0, Lorg/renpy/android/PythonSDLActivity;->mGamePath:Ljava/lang/String;

    .line 554
    .line 555
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    invoke-static {v0}, Ly1/E1;->c(Ljava/io/File;)Ljava/io/File;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    invoke-direct {p0, v0}, Lorg/renpy/android/PythonSDLActivity;->injectMemorySaverRpy(Ljava/io/File;)V

    .line 563
    .line 564
    .line 565
    :cond_10
    const-string v0, "Finished preparePython."

    .line 566
    .line 567
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    .line 569
    .line 570
    return-void
.end method

.method public reassertFloatMenuOnTop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mFloatingMenuBtn:Landroid/view/View;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lorg/renpy/android/PythonSDLActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 15
    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mFloatingMenuBtn:Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mCheatBtn:Landroid/view/View;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lorg/renpy/android/PythonSDLActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 32
    .line 33
    if-ne v0, v1, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mCheatBtn:Landroid/view/View;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mMenuOverlayPanel:Landroid/view/View;

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Lorg/renpy/android/PythonSDLActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 49
    .line 50
    if-ne v0, v1, :cond_3

    .line 51
    .line 52
    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mMenuOverlayPanel:Landroid/view/View;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 55
    .line 56
    .line 57
    :cond_3
    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public recursiveDelete(Ljava/io/File;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    array-length v1, v0

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_0

    .line 14
    .line 15
    aget-object v3, v0, v2

    .line 16
    .line 17
    invoke-virtual {p0, v3}, Lorg/renpy/android/PythonSDLActivity;->recursiveDelete(Ljava/io/File;)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mVbox:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public resolveRenpyAbi()Ljava/lang/String;
    .locals 8

    .line 1
    const-string v0, "os.arch"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "aarch64"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const-string v2, "arm64-v8a"

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    return-object v2

    .line 20
    :cond_0
    const-string v1, "arm"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const-string v3, "armeabi-v7a"

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    return-object v3

    .line 31
    :cond_1
    const-string v1, "x86_64"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-nez v4, :cond_6

    .line 38
    .line 39
    const-string v4, "amd64"

    .line 40
    .line 41
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 49
    .line 50
    array-length v4, v0

    .line 51
    const/4 v5, 0x0

    .line 52
    :goto_0
    if-ge v5, v4, :cond_5

    .line 53
    .line 54
    aget-object v6, v0, v5

    .line 55
    .line 56
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    if-nez v7, :cond_4

    .line 61
    .line 62
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-nez v7, :cond_4

    .line 67
    .line 68
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-eqz v7, :cond_3

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    :goto_1
    return-object v6

    .line 79
    :cond_5
    const/4 v0, 0x0

    .line 80
    return-object v0

    .line 81
    :cond_6
    :goto_2
    return-object v1
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    .line 16
    .line 17
    new-instance p1, Landroid/widget/LinearLayout;

    .line 18
    .line 19
    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lorg/renpy/android/PythonSDLActivity;->mVbox:Landroid/widget/LinearLayout;

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lorg/renpy/android/PythonSDLActivity;->mVbox:Landroid/widget/LinearLayout;

    .line 29
    .line 30
    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 31
    .line 32
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    const/high16 v4, 0x3f800000    # 1.0f

    .line 36
    .line 37
    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lorg/renpy/android/PythonSDLActivity;->mVbox:Landroid/widget/LinearLayout;

    .line 44
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public setGamePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/renpy/android/PythonSDLActivity;->mGamePath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setOrientationBis(IIZLjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setWakeLock(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "power"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/os/PowerManager;

    .line 12
    .line 13
    const/16 v1, 0xa

    .line 14
    .line 15
    const-string v2, "Screen On"

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 25
    .line 26
    .line 27
    :cond_0
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Lorg/renpy/android/PythonSDLActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    iget-object p1, p0, Lorg/renpy/android/PythonSDLActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public toastError(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lorg/renpy/android/PythonSDLActivity$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p0, p1}, Lorg/renpy/android/PythonSDLActivity$1;-><init>(Lorg/renpy/android/PythonSDLActivity;Landroid/app/Activity;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    monitor-enter p0

    .line 10
    const-wide/16 v0, 0x3e8

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw p1
.end method

.method public unpackData(Ljava/lang/String;Ljava/io/File;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "main.pyo"

    .line 4
    .line 5
    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lorg/renpy/android/PythonSDLActivity;->resourceManager:Lorg/renpy/android/ResourceManager;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, "_version"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lorg/renpy/android/ResourceManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, "/"

    .line 47
    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ".version"

    .line 55
    .line 56
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    const/16 v2, 0x40

    .line 66
    .line 67
    :try_start_0
    new-array v2, v2, [B

    .line 68
    .line 69
    new-instance v3, Ljava/io/FileInputStream;

    .line 70
    .line 71
    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    new-instance v5, Ljava/lang/String;

    .line 79
    .line 80
    const/4 v6, 0x0

    .line 81
    invoke-direct {v5, v2, v6, v4}, Ljava/lang/String;-><init>([BII)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catch_0
    const-string v5, ""

    .line 89
    .line 90
    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-nez v2, :cond_3

    .line 95
    .line 96
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v3, "Extracting "

    .line 99
    .line 100
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v3, " assets."

    .line 107
    .line 108
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    const-string v3, "python"

    .line 116
    .line 117
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    new-instance v2, Ljava/io/File;

    .line 121
    .line 122
    const-string v4, "lib"

    .line 123
    .line 124
    invoke-direct {v2, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v2}, Lorg/renpy/android/PythonSDLActivity;->recursiveDelete(Ljava/io/File;)V

    .line 128
    .line 129
    .line 130
    new-instance v2, Ljava/io/File;

    .line 131
    .line 132
    const-string v4, "renpy"

    .line 133
    .line 134
    invoke-direct {v2, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v2}, Lorg/renpy/android/PythonSDLActivity;->recursiveDelete(Ljava/io/File;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 141
    .line 142
    .line 143
    new-instance v2, Lorg/renpy/android/AssetExtract;

    .line 144
    .line 145
    invoke-direct {v2, p0}, Lorg/renpy/android/AssetExtract;-><init>(Landroid/app/Activity;)V

    .line 146
    .line 147
    .line 148
    const-string v4, ".mp3"

    .line 149
    .line 150
    invoke-static {p1, v4}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    invoke-virtual {v2, v4, v5}, Lorg/renpy/android/AssetExtract;->extractTar(Ljava/lang/String;Ljava/lang/String;)Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-nez v2, :cond_1

    .line 163
    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string v4, "Could not extract "

    .line 167
    .line 168
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string p1, " data."

    .line 175
    .line 176
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {p0, p1}, Lorg/renpy/android/PythonSDLActivity;->toastError(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/File;

    .line 187
    .line 188
    const-string v2, ".nomedia"

    .line 189
    .line 190
    invoke-direct {p1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 194
    .line 195
    .line 196
    new-instance p1, Ljava/io/FileOutputStream;

    .line 197
    .line 198
    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    if-eqz v0, :cond_2

    .line 202
    .line 203
    goto :goto_1

    .line 204
    :cond_2
    const-string v0, "1"

    .line 205
    .line 206
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 214
    .line 215
    .line 216
    goto :goto_2

    .line 217
    :catch_1
    move-exception p1

    .line 218
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    .line 220
    .line 221
    :cond_3
    :goto_2
    return-void
.end method

.method public vibrate(D)V
    .locals 5

    .line 1
    const-string v0, "vibrator"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/os/Vibrator;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v2, 0x1a

    .line 14
    .line 15
    const-wide v3, 0x408f400000000000L    # 1000.0

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    if-lt v1, v2, :cond_0

    .line 21
    .line 22
    mul-double/2addr p1, v3

    .line 23
    double-to-int p1, p1

    .line 24
    int-to-long p1, p1

    .line 25
    invoke-static {p1, p2}, Landroidx/core/view/accessibility/a;->g(J)Landroid/os/VibrationEffect;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {v0, p1}, Lm0/o;->p(Landroid/os/Vibrator;Landroid/os/VibrationEffect;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    mul-double/2addr p1, v3

    .line 34
    double-to-int p1, p1

    .line 35
    int-to-long p1, p1

    .line 36
    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method
