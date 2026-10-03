.class public final synthetic Ly1/k;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/game/GameActivity;

.field public final synthetic d:LQ1/d;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/game/GameActivity;LQ1/d;I)V
    .locals 0

    .line 1
    iput p3, p0, Ly1/k;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ly1/k;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 4
    .line 5
    iput-object p2, p0, Ly1/k;->d:LQ1/d;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Ly1/k;->b:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Ly1/k;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 8
    .line 9
    iget-object v2, p0, Ly1/k;->d:LQ1/d;

    .line 10
    .line 11
    sget v3, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Lcom/minhub/gamehub/game/GameActivity;->y(LQ1/d;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-boolean v2, Ly1/L1;->b:Z

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    sput-boolean v1, Ly1/L1;->b:Z

    .line 25
    .line 26
    const v2, 0x7f12040a

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const v2, 0x7f1203f8

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 59
    .line 60
    .line 61
    :goto_0
    return-void

    .line 62
    :pswitch_0
    iget-object v0, p0, Ly1/k;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 63
    .line 64
    iget-object v1, p0, Ly1/k;->d:LQ1/d;

    .line 65
    .line 66
    sget v2, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/minhub/gamehub/game/GameActivity;->y(LQ1/d;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/minhub/gamehub/game/GameActivity;->t()V

    .line 75
    .line 76
    .line 77
    :cond_2
    return-void

    .line 78
    :pswitch_1
    iget-object v0, p0, Ly1/k;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 79
    .line 80
    iget-object v1, p0, Ly1/k;->d:LQ1/d;

    .line 81
    .line 82
    sget v2, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lcom/minhub/gamehub/game/GameActivity;->y(LQ1/d;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_3

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/minhub/gamehub/game/GameActivity;->D()V

    .line 91
    .line 92
    .line 93
    :cond_3
    return-void

    .line 94
    :pswitch_2
    iget-object v0, p0, Ly1/k;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 95
    .line 96
    iget-object v2, p0, Ly1/k;->d:LQ1/d;

    .line 97
    .line 98
    sget v3, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 99
    .line 100
    invoke-virtual {v0, v2}, Lcom/minhub/gamehub/game/GameActivity;->y(LQ1/d;)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-nez v2, :cond_4

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_4
    const v2, 0x7f1203ee

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 119
    .line 120
    .line 121
    :goto_1
    return-void

    .line 122
    :pswitch_3
    iget-object v0, p0, Ly1/k;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 123
    .line 124
    iget-object v1, p0, Ly1/k;->d:LQ1/d;

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Lcom/minhub/gamehub/game/GameActivity;->y(LQ1/d;)Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-nez v2, :cond_5

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_5
    const/4 v2, 0x0

    .line 134
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 147
    .line 148
    const/16 v5, 0x1c

    .line 149
    .line 150
    if-lt v4, v5, :cond_6

    .line 151
    .line 152
    invoke-static {v3}, Lo0/a;->d(Landroid/content/pm/PackageInfo;)J

    .line 153
    .line 154
    .line 155
    move-result-wide v2

    .line 156
    long-to-int v2, v2

    .line 157
    goto :goto_2

    .line 158
    :cond_6
    iget v2, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .line 160
    :catch_0
    :goto_2
    invoke-static {v0, v2}, LG1/m;->c(Landroid/content/Context;I)LG1/i;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {v0, v1}, Lcom/minhub/gamehub/game/GameActivity;->y(LQ1/d;)Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    if-nez v3, :cond_7

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_7
    new-instance v3, LC1/A1;

    .line 172
    .line 173
    const/16 v4, 0xb

    .line 174
    .line 175
    invoke-direct {v3, v0, v1, v2, v4}, LC1/A1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 179
    .line 180
    .line 181
    :goto_3
    return-void

    .line 182
    nop

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
