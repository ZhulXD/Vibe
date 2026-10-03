.class public final Lorg/godotengine/godot/vulkan/VkRenderer;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/vulkan/VkRenderer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0000\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u001e\u0010\n\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cJ\u0006\u0010\u000e\u001a\u00020\u0007J\u0006\u0010\u000f\u001a\u00020\u0007J\u0006\u0010\u0010\u001a\u00020\u0007J\u0006\u0010\u0011\u001a\u00020\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lorg/godotengine/godot/vulkan/VkRenderer;",
        "",
        "<init>",
        "()V",
        "pluginRegistry",
        "Lorg/godotengine/godot/plugin/GodotPluginRegistry;",
        "onVkSurfaceCreated",
        "",
        "surface",
        "Landroid/view/Surface;",
        "onVkSurfaceChanged",
        "width",
        "",
        "height",
        "onVkDrawFrame",
        "onVkResume",
        "onVkPause",
        "onRenderThreadExiting",
        "Companion",
        "lib_templateRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lorg/godotengine/godot/vulkan/VkRenderer$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final pluginRegistry:Lorg/godotengine/godot/plugin/GodotPluginRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/godotengine/godot/vulkan/VkRenderer$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/godotengine/godot/vulkan/VkRenderer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/godotengine/godot/vulkan/VkRenderer;->Companion:Lorg/godotengine/godot/vulkan/VkRenderer$Companion;

    .line 8
    .line 9
    const-string v0, "VkRenderer"

    .line 10
    .line 11
    sput-object v0, Lorg/godotengine/godot/vulkan/VkRenderer;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->getPluginRegistry()Lorg/godotengine/godot/plugin/GodotPluginRegistry;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "getPluginRegistry(...)"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lorg/godotengine/godot/vulkan/VkRenderer;->pluginRegistry:Lorg/godotengine/godot/plugin/GodotPluginRegistry;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final onRenderThreadExiting()V
    .locals 2

    .line 1
    sget-object v0, Lorg/godotengine/godot/vulkan/VkRenderer;->TAG:Ljava/lang/String;

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

.method public final onVkDrawFrame()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/godotengine/godot/GodotLib;->step()Z

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/godotengine/godot/vulkan/VkRenderer;->pluginRegistry:Lorg/godotengine/godot/plugin/GodotPluginRegistry;

    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->getAllPlugins()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lorg/godotengine/godot/plugin/GodotPlugin;

    .line 25
    .line 26
    invoke-virtual {v1}, Lorg/godotengine/godot/plugin/GodotPlugin;->onVkDrawFrame()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method public final onVkPause()V
    .locals 0

    .line 1
    invoke-static {}, Lorg/godotengine/godot/GodotLib;->onRendererPaused()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onVkResume()V
    .locals 0

    .line 1
    invoke-static {}, Lorg/godotengine/godot/GodotLib;->onRendererResumed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onVkSurfaceChanged(Landroid/view/Surface;II)V
    .locals 2

    .line 1
    const-string v0, "surface"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2, p3}, Lorg/godotengine/godot/GodotLib;->resize(Landroid/view/Surface;II)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/godotengine/godot/vulkan/VkRenderer;->pluginRegistry:Lorg/godotengine/godot/plugin/GodotPluginRegistry;

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->getAllPlugins()Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lorg/godotengine/godot/plugin/GodotPlugin;

    .line 30
    .line 31
    invoke-virtual {v1, p1, p2, p3}, Lorg/godotengine/godot/plugin/GodotPlugin;->onVkSurfaceChanged(Landroid/view/Surface;II)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method

.method public final onVkSurfaceCreated(Landroid/view/Surface;)V
    .locals 2

    .line 1
    const-string v0, "surface"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lorg/godotengine/godot/GodotLib;->newcontext(Landroid/view/Surface;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/godotengine/godot/vulkan/VkRenderer;->pluginRegistry:Lorg/godotengine/godot/plugin/GodotPluginRegistry;

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->getAllPlugins()Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lorg/godotengine/godot/plugin/GodotPlugin;

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Lorg/godotengine/godot/plugin/GodotPlugin;->onVkSurfaceCreated(Landroid/view/Surface;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method
