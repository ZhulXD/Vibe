.class public final synthetic Lorg/godotengine/godot/i;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lorg/godotengine/godot/GodotActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/godotengine/godot/GodotActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/godotengine/godot/i;->b:Lorg/godotengine/godot/GodotActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/i;->b:Lorg/godotengine/godot/GodotActivity;

    .line 2
    .line 3
    check-cast p1, Landroidx/activity/OnBackPressedCallback;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lorg/godotengine/godot/GodotActivity;->l(Lorg/godotengine/godot/GodotActivity;Landroidx/activity/OnBackPressedCallback;)Lkotlin/Unit;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
