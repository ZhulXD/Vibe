.class public Lorg/godotengine/godot/GodotFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lorg/godotengine/godot/GodotHost;


# static fields
.field private static final TAG:Ljava/lang/String; = "GodotFragment"


# instance fields
.field private godot:Lorg/godotengine/godot/Godot;

.field private godotContainerLayout:Landroid/widget/FrameLayout;

.field private parentHost:Lorg/godotengine/godot/GodotHost;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private performEngineInitialization()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->godot:Lorg/godotengine/godot/Godot;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotFragment;->getCommandLine()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lorg/godotengine/godot/GodotFragment;->godot:Lorg/godotengine/godot/Godot;

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Lorg/godotengine/godot/GodotFragment;->getHostPlugins(Lorg/godotengine/godot/Godot;)Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0, p0, v1, v2}, Lorg/godotengine/godot/Godot;->initEngine(Lorg/godotengine/godot/GodotHost;Ljava/util/List;Ljava/util/Set;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->godot:Lorg/godotengine/godot/Godot;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Lorg/godotengine/godot/Godot;->onInitRenderView(Lorg/godotengine/godot/GodotHost;)Landroid/widget/FrameLayout;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lorg/godotengine/godot/GodotFragment;->godotContainerLayout:Landroid/widget/FrameLayout;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v1, "Unable to initialize engine render view"

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string v1, "Unable to initialize Godot engine"

    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    sget-object v1, Lorg/godotengine/godot/GodotFragment;->TAG:Ljava/lang/String;

    .line 49
    .line 50
    const-string v2, "Engine initialization failed"

    .line 51
    .line 52
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    sget v0, Lorg/godotengine/godot/R$string;->error_engine_setup_message:I

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    :goto_1
    iget-object v1, p0, Lorg/godotengine/godot/GodotFragment;->godot:Lorg/godotengine/godot/Godot;

    .line 77
    .line 78
    sget v2, Lorg/godotengine/godot/R$string;->text_error_title:I

    .line 79
    .line 80
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    iget-object v3, p0, Lorg/godotengine/godot/GodotFragment;->godot:Lorg/godotengine/godot/Godot;

    .line 85
    .line 86
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    new-instance v4, Lorg/godotengine/godot/c;

    .line 90
    .line 91
    const/4 v5, 0x4

    .line 92
    invoke-direct {v4, v3, v5}, Lorg/godotengine/godot/c;-><init>(Lorg/godotengine/godot/Godot;I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v0, v2, v4}, Lorg/godotengine/godot/Godot;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method


# virtual methods
.method public bridge synthetic getActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getBuildProvider()Lorg/godotengine/godot/BuildProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->parentHost:Lorg/godotengine/godot/GodotHost;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lorg/godotengine/godot/GodotHost;->getBuildProvider()Lorg/godotengine/godot/BuildProvider;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getCommandLine()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->parentHost:Lorg/godotengine/godot/GodotHost;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lorg/godotengine/godot/GodotHost;->getCommandLine()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 11
    .line 12
    return-object v0
.end method

.method public getGodot()Lorg/godotengine/godot/Godot;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->godot:Lorg/godotengine/godot/Godot;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHostPlugins(Lorg/godotengine/godot/Godot;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/godotengine/godot/Godot;",
            ")",
            "Ljava/util/Set<",
            "Lorg/godotengine/godot/plugin/GodotPlugin;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->parentHost:Lorg/godotengine/godot/GodotHost;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lorg/godotengine/godot/GodotHost;->getHostPlugins(Lorg/godotengine/godot/Godot;)Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 11
    .line 12
    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->godot:Lorg/godotengine/godot/Godot;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2, p3}, Lorg/godotengine/godot/Godot;->onActivityResult(IILandroid/content/Intent;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    instance-of p1, p1, Lorg/godotengine/godot/GodotHost;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lorg/godotengine/godot/GodotHost;

    .line 17
    .line 18
    iput-object p1, p0, Lorg/godotengine/godot/GodotFragment;->parentHost:Lorg/godotengine/godot/GodotHost;

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    instance-of p1, p1, Lorg/godotengine/godot/GodotHost;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lorg/godotengine/godot/GodotHost;

    .line 34
    .line 35
    iput-object p1, p0, Lorg/godotengine/godot/GodotFragment;->parentHost:Lorg/godotengine/godot/GodotHost;

    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->godot:Lorg/godotengine/godot/Godot;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/godotengine/godot/Godot;->onBackPressed()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->godot:Lorg/godotengine/godot/Godot;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lorg/godotengine/godot/Godot;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "Startup"

    .line 2
    .line 3
    const-string v1, "GodotFragment::onCreate"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/godotengine/godot/utils/BenchmarkUtils;->beginBenchmarkMeasure(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lorg/godotengine/godot/GodotFragment;->parentHost:Lorg/godotengine/godot/GodotHost;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-interface {p1}, Lorg/godotengine/godot/GodotHost;->getGodot()Lorg/godotengine/godot/Godot;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lorg/godotengine/godot/GodotFragment;->godot:Lorg/godotengine/godot/Godot;

    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lorg/godotengine/godot/GodotFragment;->godot:Lorg/godotengine/godot/Godot;

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Lorg/godotengine/godot/Godot;->getInstance(Landroid/content/Context;)Lorg/godotengine/godot/Godot;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lorg/godotengine/godot/GodotFragment;->godot:Lorg/godotengine/godot/Godot;

    .line 34
    .line 35
    :cond_1
    invoke-direct {p0}, Lorg/godotengine/godot/GodotFragment;->performEngineInitialization()V

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Lorg/godotengine/godot/utils/BenchmarkUtils;->endBenchmarkMeasure(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/godotengine/godot/GodotFragment;->godotContainerLayout:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    sget-object p1, Lorg/godotengine/godot/GodotFragment;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-string p2, "Godot container layout already has a parent, removing it."

    .line 14
    .line 15
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lorg/godotengine/godot/GodotFragment;->godotContainerLayout:Landroid/widget/FrameLayout;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroid/view/ViewGroup;

    .line 25
    .line 26
    iget-object p2, p0, Lorg/godotengine/godot/GodotFragment;->godotContainerLayout:Landroid/widget/FrameLayout;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object p1, p0, Lorg/godotengine/godot/GodotFragment;->godotContainerLayout:Landroid/widget/FrameLayout;

    .line 32
    .line 33
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->godotContainerLayout:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lorg/godotengine/godot/GodotFragment;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "Removing Godot container layout from parent during destruction."

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->godotContainerLayout:Landroid/widget/FrameLayout;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/view/ViewGroup;

    .line 25
    .line 26
    iget-object v1, p0, Lorg/godotengine/godot/GodotFragment;->godotContainerLayout:Landroid/widget/FrameLayout;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->godot:Lorg/godotengine/godot/Godot;

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Lorg/godotengine/godot/Godot;->onDestroy(Lorg/godotengine/godot/GodotHost;)V

    .line 34
    .line 35
    .line 36
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->godotContainerLayout:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lorg/godotengine/godot/GodotFragment;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "Cleaning up Godot container layout during detach."

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->godotContainerLayout:Landroid/widget/FrameLayout;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/view/ViewGroup;

    .line 25
    .line 26
    iget-object v1, p0, Lorg/godotengine/godot/GodotFragment;->godotContainerLayout:Landroid/widget/FrameLayout;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lorg/godotengine/godot/GodotFragment;->parentHost:Lorg/godotengine/godot/GodotHost;

    .line 36
    .line 37
    return-void
.end method

.method public onDistractionFreeModeChanged(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->parentHost:Lorg/godotengine/godot/GodotHost;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lorg/godotengine/godot/GodotHost;->onDistractionFreeModeChanged(Ljava/lang/Boolean;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onEditorWorkspaceSelected(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->parentHost:Lorg/godotengine/godot/GodotHost;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lorg/godotengine/godot/GodotHost;->onEditorWorkspaceSelected(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onGodotForceQuit(Lorg/godotengine/godot/Godot;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->parentHost:Lorg/godotengine/godot/GodotHost;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lorg/godotengine/godot/GodotHost;->onGodotForceQuit(Lorg/godotengine/godot/Godot;)V

    :cond_0
    return-void
.end method

.method public onGodotForceQuit(I)Z
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->parentHost:Lorg/godotengine/godot/GodotHost;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/godotengine/godot/GodotHost;->onGodotForceQuit(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onGodotMainLoopStarted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->parentHost:Lorg/godotengine/godot/GodotHost;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lorg/godotengine/godot/GodotHost;->onGodotMainLoopStarted()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onGodotRestartRequested(Lorg/godotengine/godot/Godot;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->parentHost:Lorg/godotengine/godot/GodotHost;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lorg/godotengine/godot/GodotHost;->onGodotRestartRequested(Lorg/godotengine/godot/Godot;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onGodotSetupCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->parentHost:Lorg/godotengine/godot/GodotHost;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lorg/godotengine/godot/GodotHost;->onGodotSetupCompleted()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onNewGodotInstanceRequested([Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->parentHost:Lorg/godotengine/godot/GodotHost;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lorg/godotengine/godot/GodotHost;->onNewGodotInstanceRequested([Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, -0x1

    .line 11
    return p1
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->godot:Lorg/godotengine/godot/Godot;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lorg/godotengine/godot/Godot;->onPause(Lorg/godotengine/godot/GodotHost;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->godot:Lorg/godotengine/godot/Godot;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2, p3}, Lorg/godotengine/godot/Godot;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->godot:Lorg/godotengine/godot/Godot;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lorg/godotengine/godot/Godot;->onResume(Lorg/godotengine/godot/GodotHost;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->godot:Lorg/godotengine/godot/Godot;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lorg/godotengine/godot/Godot;->onStart(Lorg/godotengine/godot/GodotHost;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->godot:Lorg/godotengine/godot/Godot;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lorg/godotengine/godot/Godot;->onStop(Lorg/godotengine/godot/GodotHost;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public signApk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/godotengine/godot/error/Error;
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->parentHost:Lorg/godotengine/godot/GodotHost;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move-object v3, p3

    .line 8
    move-object v4, p4

    .line 9
    move-object v5, p5

    .line 10
    invoke-interface/range {v0 .. v5}, Lorg/godotengine/godot/GodotHost;->signApk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/godotengine/godot/error/Error;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    sget-object p1, Lorg/godotengine/godot/error/Error;->ERR_UNAVAILABLE:Lorg/godotengine/godot/error/Error;

    .line 16
    .line 17
    return-object p1
.end method

.method public supportsFeature(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->parentHost:Lorg/godotengine/godot/GodotHost;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lorg/godotengine/godot/GodotHost;->supportsFeature(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public verifyApk(Ljava/lang/String;)Lorg/godotengine/godot/error/Error;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->parentHost:Lorg/godotengine/godot/GodotHost;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lorg/godotengine/godot/GodotHost;->verifyApk(Ljava/lang/String;)Lorg/godotengine/godot/error/Error;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    sget-object p1, Lorg/godotengine/godot/error/Error;->ERR_UNAVAILABLE:Lorg/godotengine/godot/error/Error;

    .line 11
    .line 12
    return-object p1
.end method
