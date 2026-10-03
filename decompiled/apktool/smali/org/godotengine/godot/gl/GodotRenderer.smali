.class public Lorg/godotengine/godot/gl/GodotRenderer;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lorg/godotengine/godot/gl/GLSurfaceView$Renderer;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private activityJustResumed:Z

.field private final pluginRegistry:Lorg/godotengine/godot/plugin/GodotPluginRegistry;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "GodotRenderer"

    .line 5
    .line 6
    iput-object v0, p0, Lorg/godotengine/godot/gl/GodotRenderer;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lorg/godotengine/godot/gl/GodotRenderer;->activityJustResumed:Z

    .line 10
    .line 11
    invoke-static {}, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->getPluginRegistry()Lorg/godotengine/godot/plugin/GodotPluginRegistry;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lorg/godotengine/godot/gl/GodotRenderer;->pluginRegistry:Lorg/godotengine/godot/plugin/GodotPluginRegistry;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public onActivityPaused()V
    .locals 0

    .line 1
    invoke-static {}, Lorg/godotengine/godot/GodotLib;->onRendererPaused()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onActivityResumed()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/godotengine/godot/gl/GodotRenderer;->activityJustResumed:Z

    .line 3
    .line 4
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/godotengine/godot/gl/GodotRenderer;->activityJustResumed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lorg/godotengine/godot/GodotLib;->onRendererResumed()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lorg/godotengine/godot/gl/GodotRenderer;->activityJustResumed:Z

    .line 10
    .line 11
    :cond_0
    invoke-static {}, Lorg/godotengine/godot/GodotLib;->step()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lorg/godotengine/godot/gl/GodotRenderer;->pluginRegistry:Lorg/godotengine/godot/plugin/GodotPluginRegistry;

    .line 16
    .line 17
    invoke-virtual {v1}, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->getAllPlugins()Ljava/util/Collection;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lorg/godotengine/godot/plugin/GodotPlugin;

    .line 36
    .line 37
    invoke-virtual {v2, p1}, Lorg/godotengine/godot/plugin/GodotPlugin;->onGLDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return v0
.end method

.method public onRenderThreadExiting()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/gl/GodotRenderer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Destroying Godot Engine"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lorg/godotengine/godot/GodotLib;->ondestroy()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p2, p3}, Lorg/godotengine/godot/GodotLib;->resize(Landroid/view/Surface;II)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lorg/godotengine/godot/gl/GodotRenderer;->pluginRegistry:Lorg/godotengine/godot/plugin/GodotPluginRegistry;

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->getAllPlugins()Ljava/util/Collection;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lorg/godotengine/godot/plugin/GodotPlugin;

    .line 26
    .line 27
    invoke-virtual {v1, p1, p2, p3}, Lorg/godotengine/godot/plugin/GodotPlugin;->onGLSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lorg/godotengine/godot/GodotLib;->newcontext(Landroid/view/Surface;)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lorg/godotengine/godot/gl/GodotRenderer;->pluginRegistry:Lorg/godotengine/godot/plugin/GodotPluginRegistry;

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->getAllPlugins()Ljava/util/Collection;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lorg/godotengine/godot/plugin/GodotPlugin;

    .line 26
    .line 27
    invoke-virtual {v1, p1, p2}, Lorg/godotengine/godot/plugin/GodotPlugin;->onGLSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method
