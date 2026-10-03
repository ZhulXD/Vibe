.class public final synthetic Lorg/godotengine/godot/g;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/godotengine/godot/Godot;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/godotengine/godot/Godot;ZZZZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/godotengine/godot/g;->b:Lorg/godotengine/godot/Godot;

    .line 5
    .line 6
    iput-boolean p2, p0, Lorg/godotengine/godot/g;->c:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lorg/godotengine/godot/g;->d:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lorg/godotengine/godot/g;->e:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lorg/godotengine/godot/g;->f:Z

    .line 13
    .line 14
    iput-object p6, p0, Lorg/godotengine/godot/g;->g:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-boolean v4, p0, Lorg/godotengine/godot/g;->f:Z

    .line 2
    .line 3
    iget-object v5, p0, Lorg/godotengine/godot/g;->g:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Lorg/godotengine/godot/g;->b:Lorg/godotengine/godot/Godot;

    .line 6
    .line 7
    iget-boolean v1, p0, Lorg/godotengine/godot/g;->c:Z

    .line 8
    .line 9
    iget-boolean v2, p0, Lorg/godotengine/godot/g;->d:Z

    .line 10
    .line 11
    iget-boolean v3, p0, Lorg/godotengine/godot/g;->e:Z

    .line 12
    .line 13
    invoke-static/range {v0 .. v5}, Lorg/godotengine/godot/Godot;->h(Lorg/godotengine/godot/Godot;ZZZZLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
