.class public final LH0/j;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LH0/j;->b:I

    .line 2
    .line 3
    iput-object p2, p0, LH0/j;->c:Ljava/lang/Object;

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
    iget v0, p0, LH0/j;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, LH0/j;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 9
    .line 10
    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->M:Lk/d1;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p1, Lk/d1;->c:Lj/s;

    .line 17
    .line 18
    :goto_0
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lj/s;->collapseActionView()Z

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void

    .line 24
    :pswitch_0
    iget-object p1, p0, LH0/j;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Li/a;

    .line 27
    .line 28
    invoke-virtual {p1}, Li/a;->a()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_1
    iget-object v0, p0, LH0/j;->c:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Le/e;

    .line 35
    .line 36
    iget-object v1, v0, Le/e;->i:Landroid/widget/Button;

    .line 37
    .line 38
    if-ne p1, v1, :cond_2

    .line 39
    .line 40
    iget-object v1, v0, Le/e;->k:Landroid/os/Message;

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    iget-object v1, v0, Le/e;->l:Landroid/widget/Button;

    .line 50
    .line 51
    if-ne p1, v1, :cond_3

    .line 52
    .line 53
    iget-object v1, v0, Le/e;->n:Landroid/os/Message;

    .line 54
    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    iget-object v1, v0, Le/e;->o:Landroid/widget/Button;

    .line 63
    .line 64
    if-ne p1, v1, :cond_4

    .line 65
    .line 66
    iget-object p1, v0, Le/e;->q:Landroid/os/Message;

    .line 67
    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    goto :goto_1

    .line 75
    :cond_4
    const/4 p1, 0x0

    .line 76
    :goto_1
    if-eqz p1, :cond_5

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 79
    .line 80
    .line 81
    :cond_5
    iget-object p1, v0, Le/e;->E:Le/c;

    .line 82
    .line 83
    const/4 v1, 0x1

    .line 84
    iget-object v0, v0, Le/e;->b:Le/g;

    .line 85
    .line 86
    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :pswitch_2
    iget-object p1, p0, LH0/j;->c:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast p1, Lcom/google/android/material/datepicker/l;

    .line 97
    .line 98
    iget v0, p1, Lcom/google/android/material/datepicker/l;->f:I

    .line 99
    .line 100
    const/4 v1, 0x1

    .line 101
    const/4 v2, 0x2

    .line 102
    if-ne v0, v2, :cond_6

    .line 103
    .line 104
    invoke-virtual {p1, v1}, Lcom/google/android/material/datepicker/l;->c(I)V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_6
    if-ne v0, v1, :cond_7

    .line 109
    .line 110
    invoke-virtual {p1, v2}, Lcom/google/android/material/datepicker/l;->c(I)V

    .line 111
    .line 112
    .line 113
    :cond_7
    :goto_2
    return-void

    .line 114
    :pswitch_3
    check-cast p1, LT0/d;

    .line 115
    .line 116
    invoke-virtual {p1}, LT0/d;->getItemData()Lj/s;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iget-object v0, p0, LH0/j;->c:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v0, LG0/b;

    .line 123
    .line 124
    iget-object v1, v0, LT0/f;->F:Lj/p;

    .line 125
    .line 126
    iget-object v0, v0, LT0/f;->E:LT0/h;

    .line 127
    .line 128
    const/4 v2, 0x0

    .line 129
    invoke-virtual {v1, p1, v0, v2}, Lj/p;->q(Landroid/view/MenuItem;Lj/C;I)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-nez v0, :cond_8

    .line 134
    .line 135
    const/4 v0, 0x1

    .line 136
    invoke-virtual {p1, v0}, Lj/s;->setChecked(Z)Landroid/view/MenuItem;

    .line 137
    .line 138
    .line 139
    :cond_8
    return-void

    .line 140
    :pswitch_4
    iget-object p1, p0, LH0/j;->c:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast p1, LH0/o;

    .line 143
    .line 144
    iget-boolean v0, p1, LH0/o;->h:Z

    .line 145
    .line 146
    if-eqz v0, :cond_a

    .line 147
    .line 148
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_a

    .line 153
    .line 154
    iget-boolean v0, p1, LH0/o;->j:Z

    .line 155
    .line 156
    if-nez v0, :cond_9

    .line 157
    .line 158
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    const v1, 0x101035b

    .line 163
    .line 164
    .line 165
    filled-new-array {v1}, [I

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    const/4 v1, 0x0

    .line 174
    const/4 v2, 0x1

    .line 175
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    iput-boolean v1, p1, LH0/o;->i:Z

    .line 180
    .line 181
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    .line 183
    .line 184
    iput-boolean v2, p1, LH0/o;->j:Z

    .line 185
    .line 186
    :cond_9
    iget-boolean v0, p1, LH0/o;->i:Z

    .line 187
    .line 188
    if-eqz v0, :cond_a

    .line 189
    .line 190
    invoke-virtual {p1}, LH0/o;->cancel()V

    .line 191
    .line 192
    .line 193
    :cond_a
    return-void

    .line 194
    nop

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
