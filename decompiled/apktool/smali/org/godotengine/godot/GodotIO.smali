.class public Lorg/godotengine/godot/GodotIO;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final SYSTEM_DIR_DCIM:I = 0x1

.field public static final SYSTEM_DIR_DESKTOP:I = 0x0

.field public static final SYSTEM_DIR_DOCUMENTS:I = 0x2

.field public static final SYSTEM_DIR_DOWNLOADS:I = 0x3

.field public static final SYSTEM_DIR_MOVIES:I = 0x4

.field public static final SYSTEM_DIR_MUSIC:I = 0x5

.field public static final SYSTEM_DIR_PICTURES:I = 0x6

.field public static final SYSTEM_DIR_RINGTONES:I = 0x7

.field private static final TAG:Ljava/lang/String; = "GodotIO"


# instance fields
.field final SCREEN_LANDSCAPE:I

.field final SCREEN_PORTRAIT:I

.field final SCREEN_REVERSE_LANDSCAPE:I

.field final SCREEN_REVERSE_PORTRAIT:I

.field final SCREEN_SENSOR:I

.field final SCREEN_SENSOR_LANDSCAPE:I

.field final SCREEN_SENSOR_PORTRAIT:I

.field edit:Lorg/godotengine/godot/input/GodotEditText;

.field private final godot:Lorg/godotengine/godot/Godot;

.field private final uniqueId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/godotengine/godot/Godot;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/godotengine/godot/GodotIO;->SCREEN_LANDSCAPE:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lorg/godotengine/godot/GodotIO;->SCREEN_PORTRAIT:I

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    iput v0, p0, Lorg/godotengine/godot/GodotIO;->SCREEN_REVERSE_LANDSCAPE:I

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    iput v0, p0, Lorg/godotengine/godot/GodotIO;->SCREEN_REVERSE_PORTRAIT:I

    .line 15
    .line 16
    const/4 v0, 0x4

    .line 17
    iput v0, p0, Lorg/godotengine/godot/GodotIO;->SCREEN_SENSOR_LANDSCAPE:I

    .line 18
    .line 19
    const/4 v0, 0x5

    .line 20
    iput v0, p0, Lorg/godotengine/godot/GodotIO;->SCREEN_SENSOR_PORTRAIT:I

    .line 21
    .line 22
    const/4 v0, 0x6

    .line 23
    iput v0, p0, Lorg/godotengine/godot/GodotIO;->SCREEN_SENSOR:I

    .line 24
    .line 25
    iput-object p1, p0, Lorg/godotengine/godot/GodotIO;->godot:Lorg/godotengine/godot/Godot;

    .line 26
    .line 27
    invoke-virtual {p1}, Lorg/godotengine/godot/Godot;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v0, "android_id"

    .line 36
    .line 37
    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-nez p1, :cond_0

    .line 42
    .line 43
    const-string p1, ""

    .line 44
    .line 45
    :cond_0
    iput-object p1, p0, Lorg/godotengine/godot/GodotIO;->uniqueId:Ljava/lang/String;

    .line 46
    .line 47
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotIO;->godot:Lorg/godotengine/godot/Godot;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/godotengine/godot/Godot;->getActivity()Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/godotengine/godot/GodotIO;->godot:Lorg/godotengine/godot/Godot;

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/godotengine/godot/Godot;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getCacheDir()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/godotengine/godot/GodotIO;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getDataDir()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/godotengine/godot/GodotIO;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getDisplayCutouts()[I
    .locals 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    new-array v0, v2, [I

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    iget-object v0, p0, Lorg/godotengine/godot/GodotIO;->godot:Lorg/godotengine/godot/Godot;

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/godotengine/godot/Godot;->getActivity()Landroid/app/Activity;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lorg/godotengine/godot/GodotIO;->godot:Lorg/godotengine/godot/Godot;

    .line 20
    .line 21
    invoke-virtual {v0}, Lorg/godotengine/godot/Godot;->getActivity()Landroid/app/Activity;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, p0, Lorg/godotengine/godot/GodotIO;->godot:Lorg/godotengine/godot/Godot;

    .line 35
    .line 36
    invoke-virtual {v0}, Lorg/godotengine/godot/Godot;->getRenderView()Lorg/godotengine/godot/GodotRenderView;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lorg/godotengine/godot/GodotIO;->godot:Lorg/godotengine/godot/Godot;

    .line 43
    .line 44
    invoke-virtual {v0}, Lorg/godotengine/godot/Godot;->getRenderView()Lorg/godotengine/godot/GodotRenderView;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v0}, Lorg/godotengine/godot/GodotRenderView;->getView()Landroid/view/SurfaceView;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/4 v0, 0x0

    .line 54
    :goto_0
    if-nez v0, :cond_3

    .line 55
    .line 56
    new-array v0, v2, [I

    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, LV0/e;->u(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-nez v0, :cond_4

    .line 68
    .line 69
    new-array v0, v2, [I

    .line 70
    .line 71
    return-object v0

    .line 72
    :cond_4
    invoke-static {v0}, Lo0/a;->e(Landroid/view/DisplayCutout;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    mul-int/lit8 v1, v1, 0x4

    .line 81
    .line 82
    new-array v1, v1, [I

    .line 83
    .line 84
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_5

    .line 93
    .line 94
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    check-cast v3, Landroid/graphics/Rect;

    .line 99
    .line 100
    add-int/lit8 v4, v2, 0x1

    .line 101
    .line 102
    iget v5, v3, Landroid/graphics/Rect;->left:I

    .line 103
    .line 104
    aput v5, v1, v2

    .line 105
    .line 106
    add-int/lit8 v5, v2, 0x2

    .line 107
    .line 108
    iget v6, v3, Landroid/graphics/Rect;->top:I

    .line 109
    .line 110
    aput v6, v1, v4

    .line 111
    .line 112
    add-int/lit8 v4, v2, 0x3

    .line 113
    .line 114
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    aput v6, v1, v5

    .line 119
    .line 120
    add-int/lit8 v2, v2, 0x4

    .line 121
    .line 122
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    aput v3, v1, v4

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_5
    return-object v1
.end method

.method public getDisplayRotation()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotIO;->godot:Lorg/godotengine/godot/Godot;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/godotengine/godot/Godot;->getActivity()Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .line 20
    const/16 v1, 0x1e

    .line 21
    .line 22
    if-lt v0, v1, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lorg/godotengine/godot/GodotIO;->godot:Lorg/godotengine/godot/Godot;

    .line 25
    .line 26
    invoke-virtual {v0}, Lorg/godotengine/godot/Godot;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Landroidx/core/view/o;->c(Landroid/content/Context;)Landroid/view/Display;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 36
    :goto_0
    if-eqz v0, :cond_4

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v1, 0x1

    .line 43
    if-ne v0, v1, :cond_2

    .line 44
    .line 45
    const/16 v0, 0x5a

    .line 46
    .line 47
    return v0

    .line 48
    :cond_2
    const/4 v1, 0x2

    .line 49
    if-ne v0, v1, :cond_3

    .line 50
    .line 51
    const/16 v0, 0xb4

    .line 52
    .line 53
    return v0

    .line 54
    :cond_3
    const/4 v1, 0x3

    .line 55
    if-ne v0, v1, :cond_4

    .line 56
    .line 57
    const/16 v0, 0x10e

    .line 58
    .line 59
    return v0

    .line 60
    :cond_4
    const/4 v0, 0x0

    .line 61
    return v0
.end method

.method public getDisplaySafeArea()[I
    .locals 6

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    new-array v0, v0, [I

    .line 8
    .line 9
    iget-object v1, p0, Lorg/godotengine/godot/GodotIO;->godot:Lorg/godotengine/godot/Godot;

    .line 10
    .line 11
    invoke-virtual {v1}, Lorg/godotengine/godot/Godot;->getActivity()Landroid/app/Activity;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lorg/godotengine/godot/GodotIO;->godot:Lorg/godotengine/godot/Godot;

    .line 18
    .line 19
    invoke-virtual {v1}, Lorg/godotengine/godot/Godot;->getActivity()Landroid/app/Activity;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v1, p0, Lorg/godotengine/godot/GodotIO;->godot:Lorg/godotengine/godot/Godot;

    .line 33
    .line 34
    invoke-virtual {v1}, Lorg/godotengine/godot/Godot;->getRenderView()Lorg/godotengine/godot/GodotRenderView;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    iget-object v1, p0, Lorg/godotengine/godot/GodotIO;->godot:Lorg/godotengine/godot/Godot;

    .line 41
    .line 42
    invoke-virtual {v1}, Lorg/godotengine/godot/Godot;->getRenderView()Lorg/godotengine/godot/GodotRenderView;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v1}, Lorg/godotengine/godot/GodotRenderView;->getView()Landroid/view/SurfaceView;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 v1, 0x0

    .line 52
    :goto_0
    if-eqz v1, :cond_5

    .line 53
    .line 54
    iget-object v2, p0, Lorg/godotengine/godot/GodotIO;->godot:Lorg/godotengine/godot/Godot;

    .line 55
    .line 56
    invoke-virtual {v2}, Lorg/godotengine/godot/Godot;->isInImmersiveMode()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    or-int/2addr v2, v3

    .line 76
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    if-eqz v3, :cond_5

    .line 81
    .line 82
    invoke-virtual {v1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-static {v3, v1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v3, v2}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    iget-object v3, p0, Lorg/godotengine/godot/GodotIO;->godot:Lorg/godotengine/godot/Godot;

    .line 95
    .line 96
    invoke-virtual {v3}, Lorg/godotengine/godot/Godot;->isInEdgeToEdgeMode()Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    const/4 v4, 0x1

    .line 101
    const/4 v5, 0x0

    .line 102
    if-nez v3, :cond_4

    .line 103
    .line 104
    iget-object v3, p0, Lorg/godotengine/godot/GodotIO;->godot:Lorg/godotengine/godot/Godot;

    .line 105
    .line 106
    invoke-virtual {v3}, Lorg/godotengine/godot/Godot;->isInImmersiveMode()Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-eqz v3, :cond_3

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_3
    aput v5, v0, v5

    .line 114
    .line 115
    aput v5, v0, v4

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_4
    :goto_2
    iget v3, v2, Landroidx/core/graphics/Insets;->left:I

    .line 119
    .line 120
    aput v3, v0, v5

    .line 121
    .line 122
    iget v3, v2, Landroidx/core/graphics/Insets;->top:I

    .line 123
    .line 124
    aput v3, v0, v4

    .line 125
    .line 126
    :goto_3
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    iget v4, v2, Landroidx/core/graphics/Insets;->right:I

    .line 131
    .line 132
    sub-int/2addr v3, v4

    .line 133
    iget v4, v2, Landroidx/core/graphics/Insets;->left:I

    .line 134
    .line 135
    sub-int/2addr v3, v4

    .line 136
    const/4 v4, 0x2

    .line 137
    aput v3, v0, v4

    .line 138
    .line 139
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    iget v3, v2, Landroidx/core/graphics/Insets;->bottom:I

    .line 144
    .line 145
    sub-int/2addr v1, v3

    .line 146
    iget v2, v2, Landroidx/core/graphics/Insets;->top:I

    .line 147
    .line 148
    sub-int/2addr v1, v2

    .line 149
    const/4 v2, 0x3

    .line 150
    aput v1, v0, v2

    .line 151
    .line 152
    :cond_5
    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScaledDensity()F
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/godotengine/godot/GodotIO;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 14
    .line 15
    const/16 v1, 0x280

    .line 16
    .line 17
    if-lt v0, v1, :cond_0

    .line 18
    .line 19
    const/high16 v0, 0x40800000    # 4.0f

    .line 20
    .line 21
    return v0

    .line 22
    :cond_0
    const/16 v1, 0x1e0

    .line 23
    .line 24
    if-lt v0, v1, :cond_1

    .line 25
    .line 26
    const/high16 v0, 0x40400000    # 3.0f

    .line 27
    .line 28
    return v0

    .line 29
    :cond_1
    const/16 v1, 0x140

    .line 30
    .line 31
    if-lt v0, v1, :cond_2

    .line 32
    .line 33
    const/high16 v0, 0x40000000    # 2.0f

    .line 34
    .line 35
    return v0

    .line 36
    :cond_2
    const/16 v1, 0xf0

    .line 37
    .line 38
    if-lt v0, v1, :cond_3

    .line 39
    .line 40
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 41
    .line 42
    return v0

    .line 43
    :cond_3
    const/16 v1, 0xa0

    .line 44
    .line 45
    if-lt v0, v1, :cond_4

    .line 46
    .line 47
    const/high16 v0, 0x3f800000    # 1.0f

    .line 48
    .line 49
    return v0

    .line 50
    :cond_4
    const/high16 v0, 0x3f400000    # 0.75f

    .line 51
    .line 52
    return v0
.end method

.method public getScreenDPI()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/godotengine/godot/GodotIO;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 14
    .line 15
    return v0
.end method

.method public getScreenOrientation()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotIO;->godot:Lorg/godotengine/godot/Godot;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/godotengine/godot/Godot;->getActivity()Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-eq v0, v2, :cond_2

    .line 19
    .line 20
    const/4 v2, 0x4

    .line 21
    if-eq v0, v2, :cond_1

    .line 22
    .line 23
    packed-switch v0, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    return v1

    .line 27
    :pswitch_0
    const/4 v0, 0x3

    .line 28
    return v0

    .line 29
    :pswitch_1
    const/4 v0, 0x2

    .line 30
    return v0

    .line 31
    :pswitch_2
    const/4 v0, 0x5

    .line 32
    return v0

    .line 33
    :pswitch_3
    return v2

    .line 34
    :cond_1
    :pswitch_4
    const/4 v0, 0x6

    .line 35
    return v0

    .line 36
    :cond_2
    return v2

    .line 37
    :cond_3
    const/4 v0, 0x0

    .line 38
    return v0

    .line 39
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public getScreenRefreshRate(D)D
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotIO;->godot:Lorg/godotengine/godot/Godot;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/godotengine/godot/Godot;->getActivity()Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .line 20
    const/16 v1, 0x1e

    .line 21
    .line 22
    if-lt v0, v1, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lorg/godotengine/godot/GodotIO;->godot:Lorg/godotengine/godot/Godot;

    .line 25
    .line 26
    invoke-virtual {v0}, Lorg/godotengine/godot/Godot;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Landroidx/core/view/o;->c(Landroid/content/Context;)Landroid/view/Display;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 36
    :goto_0
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    float-to-double p1, p1

    .line 43
    :cond_2
    return-wide p1
.end method

.method public getSystemDir(IZ)Ljava/lang/String;
    .locals 1

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    goto :goto_0

    .line 6
    :pswitch_0
    sget-object p1, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_1
    sget-object p1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :pswitch_2
    sget-object p1, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_3
    sget-object p1, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :pswitch_4
    sget-object p1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :pswitch_5
    sget-object p1, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :pswitch_6
    sget-object p1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    .line 25
    .line 26
    :goto_0
    if-eqz p2, :cond_2

    .line 27
    .line 28
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 29
    .line 30
    const/16 v0, 0x1d

    .line 31
    .line 32
    if-lt p2, v0, :cond_0

    .line 33
    .line 34
    sget-object p2, Lorg/godotengine/godot/GodotIO;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    const-string v0, "Shared storage access is limited on Android 10 and higher."

    .line 37
    .line 38
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_1

    .line 46
    .line 47
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    return-object p1

    .line 56
    :cond_1
    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1

    .line 65
    :cond_2
    invoke-direct {p0}, Lorg/godotengine/godot/GodotIO;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {p2, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    return-object p1

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTempDir()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotIO;->getCacheDir()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, "/tmp"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    sget-object v1, Lorg/godotengine/godot/GodotIO;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    const-string v2, "Unable to create temp dir"

    .line 42
    .line 43
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0
.end method

.method public getUniqueID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotIO;->uniqueId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasHardwareKeyboard()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotIO;->edit:Lorg/godotengine/godot/input/GodotEditText;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/godotengine/godot/input/GodotEditText;->hasHardwareKeyboard()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public hideKeyboard()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotIO;->edit:Lorg/godotengine/godot/input/GodotEditText;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/godotengine/godot/input/GodotEditText;->hideKeyboard()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public openURI(Ljava/lang/String;)I
    .locals 8

    .line 1
    :try_start_0
    invoke-direct {p0}, Lorg/godotengine/godot/GodotIO;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "/"

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    const/4 v2, 0x1

    .line 12
    const-string v3, ""

    .line 13
    .line 14
    const-string v4, "file://"

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    :try_start_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v4, 0x0

    .line 30
    goto :goto_2

    .line 31
    :catch_0
    move-exception v0

    .line 32
    goto :goto_4

    .line 33
    :cond_1
    :goto_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move-object v1, p1

    .line 45
    :goto_1
    new-instance v3, Ljava/io/File;

    .line 46
    .line 47
    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v4, ".fileprovider"

    .line 63
    .line 64
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {v0, v1, v3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v3, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    move v4, v2

    .line 84
    :goto_2
    new-instance v5, Landroid/content/Intent;

    .line 85
    .line 86
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v6, "android.intent.action.VIEW"

    .line 90
    .line 91
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    const/high16 v7, 0x10000000

    .line 96
    .line 97
    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 98
    .line 99
    .line 100
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    if-eqz v6, :cond_3

    .line 105
    .line 106
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 107
    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_3
    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    .line 112
    .line 113
    :goto_3
    if-eqz v4, :cond_4

    .line 114
    .line 115
    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 116
    .line 117
    .line 118
    :cond_4
    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 119
    .line 120
    .line 121
    sget-object v0, Lorg/godotengine/godot/error/Error;->OK:Lorg/godotengine/godot/error/Error;

    .line 122
    .line 123
    invoke-virtual {v0}, Lorg/godotengine/godot/error/Error;->toNativeValue()I

    .line 124
    .line 125
    .line 126
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    return p1

    .line 128
    :goto_4
    sget-object v1, Lorg/godotengine/godot/GodotIO;->TAG:Ljava/lang/String;

    .line 129
    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v3, "Unable to open uri "

    .line 133
    .line 134
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    .line 146
    .line 147
    sget-object p1, Lorg/godotengine/godot/error/Error;->FAILED:Lorg/godotengine/godot/error/Error;

    .line 148
    .line 149
    invoke-virtual {p1}, Lorg/godotengine/godot/error/Error;->toNativeValue()I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    return p1
.end method

.method public setEdit(Lorg/godotengine/godot/input/GodotEditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/godotengine/godot/GodotIO;->edit:Lorg/godotengine/godot/input/GodotEditText;

    .line 2
    .line 3
    return-void
.end method

.method public setScreenOrientation(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotIO;->godot:Lorg/godotengine/godot/Godot;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/godotengine/godot/Godot;->getActivity()Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void

    .line 14
    :pswitch_0
    const/16 p1, 0xd

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_1
    const/16 p1, 0xc

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_2
    const/16 p1, 0xb

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_3
    const/16 p1, 0x9

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_4
    const/16 p1, 0x8

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_5
    const/4 p1, 0x1

    .line 45
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_6
    const/4 p1, 0x0

    .line 50
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public showKeyboard(Ljava/lang/String;IIII)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotIO;->edit:Lorg/godotengine/godot/input/GodotEditText;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->values()[Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    aget-object v2, v1, p2

    .line 10
    .line 11
    move-object v1, p1

    .line 12
    move v3, p3

    .line 13
    move v4, p4

    .line 14
    move v5, p5

    .line 15
    invoke-virtual/range {v0 .. v5}, Lorg/godotengine/godot/input/GodotEditText;->showKeyboard(Ljava/lang/String;Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;III)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
