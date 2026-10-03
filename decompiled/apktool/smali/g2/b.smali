.class public final synthetic Lg2/b;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lorg/godotengine/godot/variant/Callable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lorg/godotengine/godot/variant/Callable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg2/b;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lg2/b;->b:Lorg/godotengine/godot/variant/Callable;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lg2/b;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lg2/b;->b:Lorg/godotengine/godot/variant/Callable;

    .line 4
    .line 5
    invoke-static {v0, v1, p1, p2, p3}, Lorg/godotengine/godot/plugin/AndroidRuntimePlugin$Companion;->a(Ljava/lang/String;Lorg/godotengine/godot/variant/Callable;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
