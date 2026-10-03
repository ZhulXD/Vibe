.class public final synthetic LC1/H;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LS1/c;Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p4, p0, LC1/H;->b:I

    iput-object p1, p0, LC1/H;->d:Ljava/lang/Object;

    iput-object p2, p0, LC1/H;->e:Ljava/lang/Object;

    iput p3, p0, LC1/H;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, LC1/H;->b:I

    iput-object p1, p0, LC1/H;->d:Ljava/lang/Object;

    iput p2, p0, LC1/H;->c:I

    iput-object p3, p0, LC1/H;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, LC1/H;->b:I

    .line 2
    .line 3
    iget v1, p0, LC1/H;->c:I

    .line 4
    .line 5
    iget-object v2, p0, LC1/H;->e:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, LC1/H;->d:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v3, Lcom/minhub/gamehub/game/GameActivity;

    .line 13
    .line 14
    check-cast v2, LQ1/d;

    .line 15
    .line 16
    sget v0, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 17
    .line 18
    invoke-virtual {v3, v2}, Lcom/minhub/gamehub/game/GameActivity;->y(LQ1/d;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v0, v0, Lw1/d;->f0:Landroid/widget/TextView;

    .line 29
    .line 30
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const v2, 0x7f12011b

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void

    .line 49
    :pswitch_0
    check-cast v3, Landroid/view/View;

    .line 50
    .line 51
    check-cast v2, Lorg/godotengine/godot/Godot;

    .line 52
    .line 53
    invoke-static {v3, v1, v2}, Lorg/godotengine/godot/Godot;->a(Landroid/view/View;ILorg/godotengine/godot/Godot;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_1
    check-cast v3, Landroidx/activity/ComponentActivity$activityResultRegistry$1;

    .line 58
    .line 59
    check-cast v2, Landroid/content/IntentSender$SendIntentException;

    .line 60
    .line 61
    invoke-static {v3, v1, v2}, Landroidx/activity/ComponentActivity$activityResultRegistry$1;->b(Landroidx/activity/ComponentActivity$activityResultRegistry$1;ILandroid/content/IntentSender$SendIntentException;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_2
    check-cast v3, Landroidx/activity/ComponentActivity$activityResultRegistry$1;

    .line 66
    .line 67
    check-cast v2, Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    .line 68
    .line 69
    invoke-static {v3, v1, v2}, Landroidx/activity/ComponentActivity$activityResultRegistry$1;->c(Landroidx/activity/ComponentActivity$activityResultRegistry$1;ILandroidx/activity/result/contract/ActivityResultContract$SynchronousResult;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :pswitch_3
    check-cast v3, LN/a;

    .line 74
    .line 75
    iget-object v0, v3, LN/a;->b:LN/d;

    .line 76
    .line 77
    invoke-interface {v0, v1, v2}, LN/d;->e(ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :pswitch_4
    check-cast v3, Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 82
    .line 83
    check-cast v2, Lkotlin/jvm/internal/Ref$IntRef;

    .line 84
    .line 85
    iget v0, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 86
    .line 87
    const/16 v2, 0x5f

    .line 88
    .line 89
    mul-int/2addr v0, v2

    .line 90
    div-int/2addr v0, v1

    .line 91
    const/4 v1, 0x1

    .line 92
    invoke-static {v0, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    invoke-virtual {v3, v0}, Lcom/minhub/gamehub/hub/AddGameActivity;->D(I)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
