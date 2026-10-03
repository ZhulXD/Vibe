.class public final synthetic Lg2/a;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lorg/godotengine/godot/variant/Callable;


# direct methods
.method public synthetic constructor <init>(Lorg/godotengine/godot/variant/Callable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg2/a;->a:Lorg/godotengine/godot/variant/Callable;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lg2/a;->a:Lorg/godotengine/godot/variant/Callable;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/godotengine/godot/plugin/AndroidRuntimePlugin;->c(Lorg/godotengine/godot/variant/Callable;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
