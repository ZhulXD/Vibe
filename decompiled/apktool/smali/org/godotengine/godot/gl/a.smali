.class public final synthetic Lorg/godotengine/godot/gl/a;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/lang/Runnable;

.field public final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/godotengine/godot/gl/a;->b:Ljava/lang/Runnable;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/godotengine/godot/gl/a;->c:Ljava/lang/Runnable;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/gl/a;->b:Ljava/lang/Runnable;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/godotengine/godot/gl/a;->c:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
