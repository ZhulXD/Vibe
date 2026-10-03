.class public final synthetic LC1/z1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/hub/LoginActivity;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Lcom/minhub/gamehub/hub/LoginActivity;Le/g;I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, LC1/z1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC1/z1;->e:Ljava/lang/Object;

    iput-object p2, p0, LC1/z1;->c:Lcom/minhub/gamehub/hub/LoginActivity;

    iput-object p3, p0, LC1/z1;->f:Ljava/lang/Object;

    iput p4, p0, LC1/z1;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/PopupWindow;Lcom/minhub/gamehub/hub/LoginActivity;ILandroid/content/Context;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, LC1/z1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC1/z1;->e:Ljava/lang/Object;

    iput-object p2, p0, LC1/z1;->c:Lcom/minhub/gamehub/hub/LoginActivity;

    iput p3, p0, LC1/z1;->d:I

    iput-object p4, p0, LC1/z1;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget p1, p0, LC1/z1;->b:I

    .line 2
    .line 3
    iget v0, p0, LC1/z1;->d:I

    .line 4
    .line 5
    iget-object v1, p0, LC1/z1;->f:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v2, p0, LC1/z1;->c:Lcom/minhub/gamehub/hub/LoginActivity;

    .line 8
    .line 9
    iget-object v3, p0, LC1/z1;->e:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch p1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v3, Landroid/widget/EditText;

    .line 15
    .line 16
    check-cast v1, Le/g;

    .line 17
    .line 18
    sget p1, Lcom/minhub/gamehub/hub/LoginActivity;->l:I

    .line 19
    .line 20
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    const/4 v4, 0x0

    .line 41
    if-nez v3, :cond_0

    .line 42
    .line 43
    const p1, 0x7f120259

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {v2, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_1

    .line 58
    .line 59
    :cond_0
    move v3, v4

    .line 60
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    const/4 v6, 0x1

    .line 65
    const-string v7, "getString(...)"

    .line 66
    .line 67
    if-ge v3, v5, :cond_2

    .line 68
    .line 69
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-nez v5, :cond_1

    .line 78
    .line 79
    const p1, 0x7f120288

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, p1, v6}, Lcom/minhub/gamehub/hub/LoginActivity;->s(Ljava/lang/String;Z)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    const/4 v5, 0x4

    .line 101
    if-eq v3, v5, :cond_3

    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    const v0, 0x7f120287

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, p1, v6}, Lcom/minhub/gamehub/hub/LoginActivity;->s(Ljava/lang/String;Z)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_3
    invoke-virtual {v1}, Le/D;->dismiss()V

    .line 130
    .line 131
    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string v3, "game"

    .line 135
    .line 136
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v2, v4}, Lcom/minhub/gamehub/hub/LoginActivity;->r(Z)V

    .line 147
    .line 148
    .line 149
    const v1, 0x7f12026b

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget-object v3, v2, Lcom/minhub/gamehub/hub/LoginActivity;->f:Le/g;

    .line 160
    .line 161
    if-eqz v3, :cond_4

    .line 162
    .line 163
    invoke-virtual {v3}, Le/D;->dismiss()V

    .line 164
    .line 165
    .line 166
    :cond_4
    new-instance v3, LO0/b;

    .line 167
    .line 168
    invoke-direct {v3, v2, v4}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 169
    .line 170
    .line 171
    iget-object v5, v3, Le/f;->c:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v5, Le/b;

    .line 174
    .line 175
    iput-object v1, v5, Le/b;->f:Ljava/lang/CharSequence;

    .line 176
    .line 177
    iput-boolean v4, v5, Le/b;->m:Z

    .line 178
    .line 179
    invoke-virtual {v3}, LO0/b;->c()Le/g;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    iput-object v1, v2, Lcom/minhub/gamehub/hub/LoginActivity;->f:Le/g;

    .line 184
    .line 185
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 186
    .line 187
    .line 188
    new-instance v1, Ljava/lang/Thread;

    .line 189
    .line 190
    new-instance v3, LC1/A1;

    .line 191
    .line 192
    invoke-direct {v3, v2, v0, p1, v4}, LC1/A1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 193
    .line 194
    .line 195
    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 196
    .line 197
    .line 198
    const-string p1, "account-verify"

    .line 199
    .line 200
    invoke-virtual {v1, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 204
    .line 205
    .line 206
    :goto_1
    return-void

    .line 207
    :pswitch_0
    check-cast v3, Landroid/widget/PopupWindow;

    .line 208
    .line 209
    check-cast v1, Landroid/content/Context;

    .line 210
    .line 211
    sget p1, Lcom/minhub/gamehub/hub/LoginActivity;->l:I

    .line 212
    .line 213
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 214
    .line 215
    .line 216
    iget-object p1, v2, Lcom/minhub/gamehub/hub/LoginActivity;->j:[Ljava/lang/String;

    .line 217
    .line 218
    aget-object p1, p1, v0

    .line 219
    .line 220
    sget-object v0, LS1/d;->a:Ljava/util/Set;

    .line 221
    .line 222
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    invoke-static {v1}, LS1/d;->d(Landroid/content/Context;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    if-nez v0, :cond_5

    .line 234
    .line 235
    invoke-static {v1, p1}, LS1/d;->w(Landroid/content/Context;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2}, Landroid/app/Activity;->recreate()V

    .line 239
    .line 240
    .line 241
    :cond_5
    return-void

    .line 242
    nop

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
