.class public final synthetic Ly1/g1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ly1/j1;


# direct methods
.method public synthetic constructor <init>(Ly1/j1;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly1/g1;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ly1/g1;->c:Ly1/j1;

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
    .locals 3

    .line 1
    iget p1, p0, Ly1/g1;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Ly1/g1;->c:Ly1/j1;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p1, v0}, Ly1/j1;->e(Z)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_0
    iget-object p1, p0, Ly1/g1;->c:Ly1/j1;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, v0}, Ly1/j1;->e(Z)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_1
    iget-object p1, p0, Ly1/g1;->c:Ly1/j1;

    .line 21
    .line 22
    iget-object v0, p1, Ly1/j1;->i:Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/minhub/gamehub/editor/EditModeOverlay;->getSelectedButtonConfig()Lx1/a;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    if-nez v0, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-boolean v0, p1, Ly1/j1;->j:Z

    .line 36
    .line 37
    xor-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    iput-boolean v0, p1, Ly1/j1;->j:Z

    .line 40
    .line 41
    invoke-virtual {p1}, Ly1/j1;->g()V

    .line 42
    .line 43
    .line 44
    :goto_1
    return-void

    .line 45
    :pswitch_2
    const/4 p1, 0x0

    .line 46
    iget-object v0, p0, Ly1/g1;->c:Ly1/j1;

    .line 47
    .line 48
    iput-boolean p1, v0, Ly1/j1;->j:Z

    .line 49
    .line 50
    iget-object p1, v0, Ly1/j1;->i:Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-virtual {p1, v1}, Lcom/minhub/gamehub/editor/EditModeOverlay;->e(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-virtual {v0}, Ly1/j1;->g()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_3
    iget-object p1, p0, Ly1/g1;->c:Ly1/j1;

    .line 63
    .line 64
    iget-object v0, p1, Ly1/j1;->i:Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    new-instance v1, Lcom/minhub/gamehub/hub/catalog/h;

    .line 69
    .line 70
    const/16 v2, 0x1d

    .line 71
    .line 72
    invoke-direct {v1, v2}, Lcom/minhub/gamehub/hub/catalog/h;-><init>(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/minhub/gamehub/editor/EditModeOverlay;->g(Lkotlin/jvm/functions/Function1;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    invoke-virtual {p1}, Ly1/j1;->g()V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :pswitch_4
    iget-object p1, p0, Ly1/g1;->c:Ly1/j1;

    .line 83
    .line 84
    iget-object v0, p1, Ly1/j1;->i:Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 85
    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    new-instance v1, Lcom/minhub/gamehub/hub/catalog/h;

    .line 89
    .line 90
    const/16 v2, 0x1c

    .line 91
    .line 92
    invoke-direct {v1, v2}, Lcom/minhub/gamehub/hub/catalog/h;-><init>(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Lcom/minhub/gamehub/editor/EditModeOverlay;->g(Lkotlin/jvm/functions/Function1;)V

    .line 96
    .line 97
    .line 98
    :cond_4
    invoke-virtual {p1}, Ly1/j1;->g()V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :pswitch_5
    iget-object p1, p0, Ly1/g1;->c:Ly1/j1;

    .line 103
    .line 104
    iget-object v0, p1, Ly1/j1;->i:Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 105
    .line 106
    if-eqz v0, :cond_5

    .line 107
    .line 108
    new-instance v1, Ly1/f1;

    .line 109
    .line 110
    const/4 v2, 0x0

    .line 111
    invoke-direct {v1, v2}, Ly1/f1;-><init>(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Lcom/minhub/gamehub/editor/EditModeOverlay;->g(Lkotlin/jvm/functions/Function1;)V

    .line 115
    .line 116
    .line 117
    :cond_5
    invoke-virtual {p1}, Ly1/j1;->g()V

    .line 118
    .line 119
    .line 120
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
