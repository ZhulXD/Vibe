.class public final synthetic Ly1/z0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/game/GodotGameActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/game/GodotGameActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly1/z0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ly1/z0;->c:Lcom/minhub/gamehub/game/GodotGameActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget p1, p0, Ly1/z0;->b:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Ly1/z0;->c:Lcom/minhub/gamehub/game/GodotGameActivity;

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object p1, v3, Lcom/minhub/gamehub/game/GodotGameActivity;->m:Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/minhub/gamehub/editor/EditModeOverlay;->getSelectedButtonConfig()Lx1/a;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    :cond_0
    if-nez v2, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-boolean p1, v3, Lcom/minhub/gamehub/game/GodotGameActivity;->p:Z

    .line 23
    .line 24
    xor-int/2addr p1, v1

    .line 25
    iput-boolean p1, v3, Lcom/minhub/gamehub/game/GodotGameActivity;->p:Z

    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/minhub/gamehub/game/GodotGameActivity;->r()V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void

    .line 31
    :pswitch_0
    iput-boolean v0, v3, Lcom/minhub/gamehub/game/GodotGameActivity;->p:Z

    .line 32
    .line 33
    iget-object p1, v3, Lcom/minhub/gamehub/game/GodotGameActivity;->m:Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1, v2}, Lcom/minhub/gamehub/editor/EditModeOverlay;->e(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-virtual {v3}, Lcom/minhub/gamehub/game/GodotGameActivity;->r()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_1
    iget-object p1, v3, Lcom/minhub/gamehub/game/GodotGameActivity;->m:Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    new-instance v0, Lcom/minhub/gamehub/hub/catalog/h;

    .line 49
    .line 50
    const/16 v1, 0x16

    .line 51
    .line 52
    invoke-direct {v0, v1}, Lcom/minhub/gamehub/hub/catalog/h;-><init>(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Lcom/minhub/gamehub/editor/EditModeOverlay;->g(Lkotlin/jvm/functions/Function1;)V

    .line 56
    .line 57
    .line 58
    :cond_3
    invoke-virtual {v3}, Lcom/minhub/gamehub/game/GodotGameActivity;->r()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_2
    iget-object p1, v3, Lcom/minhub/gamehub/game/GodotGameActivity;->m:Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 63
    .line 64
    if-eqz p1, :cond_4

    .line 65
    .line 66
    new-instance v0, Lcom/minhub/gamehub/hub/catalog/h;

    .line 67
    .line 68
    const/16 v1, 0x18

    .line 69
    .line 70
    invoke-direct {v0, v1}, Lcom/minhub/gamehub/hub/catalog/h;-><init>(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Lcom/minhub/gamehub/editor/EditModeOverlay;->g(Lkotlin/jvm/functions/Function1;)V

    .line 74
    .line 75
    .line 76
    :cond_4
    invoke-virtual {v3}, Lcom/minhub/gamehub/game/GodotGameActivity;->r()V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :pswitch_3
    iget-object p1, v3, Lcom/minhub/gamehub/game/GodotGameActivity;->m:Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 81
    .line 82
    if-eqz p1, :cond_5

    .line 83
    .line 84
    new-instance v0, Lcom/minhub/gamehub/hub/catalog/h;

    .line 85
    .line 86
    const/16 v1, 0x17

    .line 87
    .line 88
    invoke-direct {v0, v1}, Lcom/minhub/gamehub/hub/catalog/h;-><init>(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v0}, Lcom/minhub/gamehub/editor/EditModeOverlay;->g(Lkotlin/jvm/functions/Function1;)V

    .line 92
    .line 93
    .line 94
    :cond_5
    invoke-virtual {v3}, Lcom/minhub/gamehub/game/GodotGameActivity;->r()V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :pswitch_4
    sget p1, Lcom/minhub/gamehub/game/GodotGameActivity;->q:I

    .line 99
    .line 100
    invoke-virtual {v3, v1}, Lcom/minhub/gamehub/game/GodotGameActivity;->l(Z)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :pswitch_5
    sget p1, Lcom/minhub/gamehub/game/GodotGameActivity;->q:I

    .line 105
    .line 106
    invoke-virtual {v3, v0}, Lcom/minhub/gamehub/game/GodotGameActivity;->l(Z)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :pswitch_6
    sget p1, Lcom/minhub/gamehub/game/GodotGameActivity;->q:I

    .line 111
    .line 112
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    nop

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
