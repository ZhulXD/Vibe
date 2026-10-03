.class public final synthetic Lf2/a;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lf2/a;->b:I

    iput-object p1, p0, Lf2/a;->d:Ljava/lang/Object;

    iput-boolean p2, p0, Lf2/a;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/Object;I)V
    .locals 0

    .line 2
    iput p3, p0, Lf2/a;->b:I

    iput-boolean p1, p0, Lf2/a;->c:Z

    iput-object p2, p0, Lf2/a;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lf2/a;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Lf2/a;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iget-boolean v2, p0, Lf2/a;->c:Z

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v1, Lcom/minhub/gamehub/game/GameActivity;

    .line 11
    .line 12
    sget v0, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    const v2, 0x7f120379

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 29
    .line 30
    .line 31
    iget-object v0, v1, Lcom/minhub/gamehub/game/GameActivity;->o:Lcom/minhub/gamehub/data/Game;

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    new-instance v3, Ly1/L;

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    invoke-direct {v3, v1, v0, v4}, Ly1/L;-><init>(Lcom/minhub/gamehub/game/GameActivity;Lcom/minhub/gamehub/data/Game;Lkotlin/coroutines/Continuation;)V

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x3

    .line 47
    invoke-static {v2, v4, v3, v0}, LV1/A;->c(LV1/x;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)LV1/p0;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const v2, 0x7f120378

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-void

    .line 66
    :pswitch_0
    check-cast v1, Lorg/godotengine/godot/Godot;

    .line 67
    .line 68
    invoke-static {v2, v1}, Lorg/godotengine/godot/Godot;->r(ZLorg/godotengine/godot/Godot;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :pswitch_1
    check-cast v1, Lorg/godotengine/godot/GodotActivity;

    .line 73
    .line 74
    invoke-static {v1, v2}, Lorg/godotengine/godot/nativeapi/GodotNativeBridge;->b(Lorg/godotengine/godot/GodotActivity;Z)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :pswitch_2
    check-cast v1, Lorg/godotengine/godot/nativeapi/GodotNativeBridge;

    .line 79
    .line 80
    invoke-static {v1, v2}, Lorg/godotengine/godot/nativeapi/GodotNativeBridge;->d(Lorg/godotengine/godot/nativeapi/GodotNativeBridge;Z)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
