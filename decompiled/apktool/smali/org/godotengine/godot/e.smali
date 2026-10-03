.class public final synthetic Lorg/godotengine/godot/e;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic b:Lorg/godotengine/godot/Godot;


# direct methods
.method public synthetic constructor <init>(Lorg/godotengine/godot/Godot;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/godotengine/godot/e;->b:Lorg/godotengine/godot/Godot;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/e;->b:Lorg/godotengine/godot/Godot;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lorg/godotengine/godot/Godot;->w(Lorg/godotengine/godot/Godot;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
