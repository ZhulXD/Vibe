.class public final synthetic Ly1/j2;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/game/VxAceGameActivity;

.field public final synthetic d:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/game/VxAceGameActivity;Landroid/view/View;I)V
    .locals 0

    .line 1
    iput p3, p0, Ly1/j2;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ly1/j2;->c:Lcom/minhub/gamehub/game/VxAceGameActivity;

    .line 4
    .line 5
    iput-object p2, p0, Ly1/j2;->d:Landroid/view/View;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    iget p1, p0, Ly1/j2;->b:I

    .line 2
    .line 3
    iget-object v0, p0, Ly1/j2;->d:Landroid/view/View;

    .line 4
    .line 5
    iget-object v1, p0, Ly1/j2;->c:Lcom/minhub/gamehub/game/VxAceGameActivity;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/minhub/gamehub/game/VxAceGameActivity;->getMenuSectionState$app_release()Ly1/o1;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iget-boolean p1, v2, Ly1/o1;->d:Z

    .line 15
    .line 16
    xor-int/lit8 v6, p1, 0x1

    .line 17
    .line 18
    const/4 v7, 0x0

    .line 19
    const/16 v8, 0x17

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-static/range {v2 .. v8}, Ly1/o1;->a(Ly1/o1;ZZZZZI)Ly1/o1;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v1, p1}, Lcom/minhub/gamehub/game/VxAceGameActivity;->setMenuSectionState$app_release(Ly1/o1;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v0}, Ly1/k2;->g(Lcom/minhub/gamehub/game/VxAceGameActivity;Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_0
    invoke-virtual {v1}, Lcom/minhub/gamehub/game/VxAceGameActivity;->getMenuSectionState$app_release()Ly1/o1;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget-boolean p1, v2, Ly1/o1;->c:Z

    .line 40
    .line 41
    xor-int/lit8 v5, p1, 0x1

    .line 42
    .line 43
    const/4 v7, 0x0

    .line 44
    const/16 v8, 0x1b

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    const/4 v4, 0x0

    .line 48
    const/4 v6, 0x0

    .line 49
    invoke-static/range {v2 .. v8}, Ly1/o1;->a(Ly1/o1;ZZZZZI)Ly1/o1;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v1, p1}, Lcom/minhub/gamehub/game/VxAceGameActivity;->setMenuSectionState$app_release(Ly1/o1;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v0}, Ly1/k2;->g(Lcom/minhub/gamehub/game/VxAceGameActivity;Landroid/view/View;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :pswitch_1
    invoke-virtual {v1}, Lcom/minhub/gamehub/game/VxAceGameActivity;->getMenuSectionState$app_release()Ly1/o1;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    iget-boolean p1, v2, Ly1/o1;->b:Z

    .line 65
    .line 66
    xor-int/lit8 v4, p1, 0x1

    .line 67
    .line 68
    const/4 v7, 0x0

    .line 69
    const/16 v8, 0x1d

    .line 70
    .line 71
    const/4 v3, 0x0

    .line 72
    const/4 v5, 0x0

    .line 73
    const/4 v6, 0x0

    .line 74
    invoke-static/range {v2 .. v8}, Ly1/o1;->a(Ly1/o1;ZZZZZI)Ly1/o1;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v1, p1}, Lcom/minhub/gamehub/game/VxAceGameActivity;->setMenuSectionState$app_release(Ly1/o1;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v1, v0}, Ly1/k2;->g(Lcom/minhub/gamehub/game/VxAceGameActivity;Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :pswitch_2
    invoke-virtual {v1}, Lcom/minhub/gamehub/game/VxAceGameActivity;->getMenuSectionState$app_release()Ly1/o1;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    iget-boolean p1, v2, Ly1/o1;->a:Z

    .line 90
    .line 91
    xor-int/lit8 v3, p1, 0x1

    .line 92
    .line 93
    const/4 v7, 0x0

    .line 94
    const/16 v8, 0x1e

    .line 95
    .line 96
    const/4 v4, 0x0

    .line 97
    const/4 v5, 0x0

    .line 98
    const/4 v6, 0x0

    .line 99
    invoke-static/range {v2 .. v8}, Ly1/o1;->a(Ly1/o1;ZZZZZI)Ly1/o1;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {v1, p1}, Lcom/minhub/gamehub/game/VxAceGameActivity;->setMenuSectionState$app_release(Ly1/o1;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v1, v0}, Ly1/k2;->g(Lcom/minhub/gamehub/game/VxAceGameActivity;Landroid/view/View;)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :pswitch_3
    invoke-virtual {v1}, Lcom/minhub/gamehub/game/VxAceGameActivity;->getFpsEnabled$app_release()Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    xor-int/lit8 p1, p1, 0x1

    .line 115
    .line 116
    invoke-virtual {v1, p1}, Lcom/minhub/gamehub/game/VxAceGameActivity;->setFpsEnabled$app_release(Z)V

    .line 117
    .line 118
    .line 119
    sget-object p1, LS1/d;->a:Ljava/util/Set;

    .line 120
    .line 121
    invoke-virtual {v1}, Lcom/minhub/gamehub/game/VxAceGameActivity;->getFpsEnabled$app_release()Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    const-string v2, "<this>"

    .line 126
    .line 127
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const-string v2, "minhub_prefs"

    .line 131
    .line 132
    const/4 v3, 0x0

    .line 133
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    const-string v3, "show_fps"

    .line 142
    .line 143
    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 148
    .line 149
    .line 150
    invoke-static {v1, v0}, Ly1/k2;->a(Lcom/minhub/gamehub/game/VxAceGameActivity;Landroid/view/View;)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    nop

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
