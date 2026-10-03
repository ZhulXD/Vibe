.class public final synthetic Lorg/godotengine/godot/f;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/godotengine/godot/Godot;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lorg/godotengine/godot/Godot;IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/godotengine/godot/f;->b:Lorg/godotengine/godot/Godot;

    .line 5
    .line 6
    iput p2, p0, Lorg/godotengine/godot/f;->c:I

    .line 7
    .line 8
    iput p3, p0, Lorg/godotengine/godot/f;->d:I

    .line 9
    .line 10
    iput-object p4, p0, Lorg/godotengine/godot/f;->e:Landroid/content/Intent;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lorg/godotengine/godot/f;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/godotengine/godot/f;->e:Landroid/content/Intent;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/godotengine/godot/f;->b:Lorg/godotengine/godot/Godot;

    .line 6
    .line 7
    iget v3, p0, Lorg/godotengine/godot/f;->c:I

    .line 8
    .line 9
    invoke-static {v2, v3, v0, v1}, Lorg/godotengine/godot/Godot;->n(Lorg/godotengine/godot/Godot;IILandroid/content/Intent;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
