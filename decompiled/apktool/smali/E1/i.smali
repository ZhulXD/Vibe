.class public final synthetic LE1/i;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:LE1/n;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;LE1/n;I)V
    .locals 0

    .line 1
    iput p3, p0, LE1/i;->a:I

    .line 2
    .line 3
    iput-object p1, p0, LE1/i;->b:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p2, p0, LE1/i;->c:LE1/n;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7

    .line 1
    iget p1, p0, LE1/i;->a:I

    .line 2
    .line 3
    const-class v0, Lcom/minhub/gamehub/hub/AppLockActivity;

    .line 4
    .line 5
    const-string v1, "ctx"

    .line 6
    .line 7
    const-string v2, "disable"

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    iget-object v5, p0, LE1/i;->c:LE1/n;

    .line 12
    .line 13
    iget-object v6, p0, LE1/i;->b:Landroid/content/Context;

    .line 14
    .line 15
    packed-switch p1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    invoke-static {v6}, LS1/d;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-lez p1, :cond_0

    .line 27
    .line 28
    move p1, v3

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move p1, v4

    .line 31
    :goto_0
    if-eqz p2, :cond_2

    .line 32
    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    iget-object p1, v5, LE1/n;->b:Lw1/i;

    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p1, Lw1/i;->h:Landroid/widget/Switch;

    .line 41
    .line 42
    invoke-virtual {p1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 43
    .line 44
    .line 45
    iget-object p1, v5, LE1/n;->e:Landroidx/activity/result/ActivityResultLauncher;

    .line 46
    .line 47
    sget p2, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->j:I

    .line 48
    .line 49
    invoke-static {v6}, Lcom/bumptech/glide/c;->j(Landroid/content/Context;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p1, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    invoke-static {v6, v3}, LS1/d;->v(Landroid/content/Context;Z)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5, v6}, LE1/n;->b(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    if-eqz p1, :cond_3

    .line 65
    .line 66
    iget-object p1, v5, LE1/n;->b:Lw1/i;

    .line 67
    .line 68
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p1, Lw1/i;->h:Landroid/widget/Switch;

    .line 72
    .line 73
    invoke-virtual {p1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 74
    .line 75
    .line 76
    iput-object v2, v5, LE1/n;->c:Ljava/lang/String;

    .line 77
    .line 78
    iget-object p1, v5, LE1/n;->d:Landroidx/activity/result/ActivityResultLauncher;

    .line 79
    .line 80
    sget p2, Lcom/minhub/gamehub/hub/AppLockActivity;->i:I

    .line 81
    .line 82
    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance p2, Landroid/content/Intent;

    .line 86
    .line 87
    invoke-direct {p2, v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    invoke-static {v6, v4}, LS1/d;->v(Landroid/content/Context;Z)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, v6}, LE1/n;->b(Landroid/content/Context;)V

    .line 98
    .line 99
    .line 100
    :goto_1
    return-void

    .line 101
    :pswitch_0
    invoke-static {v6}, LS1/d;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-lez p1, :cond_4

    .line 110
    .line 111
    move p1, v3

    .line 112
    goto :goto_2

    .line 113
    :cond_4
    move p1, v4

    .line 114
    :goto_2
    if-eqz p2, :cond_6

    .line 115
    .line 116
    if-nez p1, :cond_5

    .line 117
    .line 118
    iget-object p1, v5, LE1/n;->b:Lw1/i;

    .line 119
    .line 120
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    iget-object p1, p1, Lw1/i;->h:Landroid/widget/Switch;

    .line 124
    .line 125
    invoke-virtual {p1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 126
    .line 127
    .line 128
    iget-object p1, v5, LE1/n;->e:Landroidx/activity/result/ActivityResultLauncher;

    .line 129
    .line 130
    sget p2, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->j:I

    .line 131
    .line 132
    invoke-static {v6}, Lcom/bumptech/glide/c;->j(Landroid/content/Context;)Landroid/content/Intent;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-virtual {p1, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_5
    invoke-static {v6, v3}, LS1/d;->v(Landroid/content/Context;Z)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v5, v6}, LE1/n;->b(Landroid/content/Context;)V

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_6
    if-eqz p1, :cond_7

    .line 148
    .line 149
    iget-object p1, v5, LE1/n;->b:Lw1/i;

    .line 150
    .line 151
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    iget-object p1, p1, Lw1/i;->h:Landroid/widget/Switch;

    .line 155
    .line 156
    invoke-virtual {p1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 157
    .line 158
    .line 159
    iput-object v2, v5, LE1/n;->c:Ljava/lang/String;

    .line 160
    .line 161
    iget-object p1, v5, LE1/n;->d:Landroidx/activity/result/ActivityResultLauncher;

    .line 162
    .line 163
    sget p2, Lcom/minhub/gamehub/hub/AppLockActivity;->i:I

    .line 164
    .line 165
    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    new-instance p2, Landroid/content/Intent;

    .line 169
    .line 170
    invoke-direct {p2, v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_7
    invoke-static {v6, v4}, LS1/d;->v(Landroid/content/Context;Z)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v5, v6}, LE1/n;->b(Landroid/content/Context;)V

    .line 181
    .line 182
    .line 183
    :goto_3
    return-void

    .line 184
    nop

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
