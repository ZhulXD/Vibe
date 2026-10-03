.class public final synthetic LC1/b1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:LC1/d1;


# direct methods
.method public synthetic constructor <init>(LC1/d1;I)V
    .locals 0

    .line 1
    iput p2, p0, LC1/b1;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LC1/b1;->c:LC1/d1;

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
    .locals 6

    .line 1
    iget p1, p0, LC1/b1;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, LC1/b1;->c:LC1/d1;

    .line 7
    .line 8
    iget-object v0, p1, LC1/d1;->b:Lw1/c;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, v0, Lw1/c;->g:Landroid/view/View;

    .line 14
    .line 15
    check-cast v0, Landroid/widget/EditText;

    .line 16
    .line 17
    const-string v1, "etSearch"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v2, 0x1

    .line 27
    const/4 v3, 0x0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    move v0, v2

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v0, v3

    .line 33
    :goto_0
    iget-object v4, p1, LC1/d1;->b:Lw1/c;

    .line 34
    .line 35
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object v4, v4, Lw1/c;->g:Landroid/view/View;

    .line 39
    .line 40
    check-cast v4, Landroid/widget/EditText;

    .line 41
    .line 42
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    move v5, v3

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const/16 v5, 0x8

    .line 50
    .line 51
    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    const-string v4, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    .line 55
    .line 56
    const-string v5, "input_method"

    .line 57
    .line 58
    if-nez v0, :cond_2

    .line 59
    .line 60
    iget-object v0, p1, LC1/d1;->b:Lw1/c;

    .line 61
    .line 62
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, v0, Lw1/c;->g:Landroid/view/View;

    .line 66
    .line 67
    check-cast v0, Landroid/widget/EditText;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 70
    .line 71
    .line 72
    iget-object v0, p1, LC1/d1;->b:Lw1/c;

    .line 73
    .line 74
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, v0, Lw1/c;->g:Landroid/view/View;

    .line 78
    .line 79
    check-cast v0, Landroid/widget/EditText;

    .line 80
    .line 81
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 96
    .line 97
    invoke-virtual {p1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_2
    iget-object v0, p1, LC1/d1;->b:Lw1/c;

    .line 102
    .line 103
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, v0, Lw1/c;->g:Landroid/view/View;

    .line 107
    .line 108
    check-cast v0, Landroid/widget/EditText;

    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    if-eqz v0, :cond_3

    .line 115
    .line 116
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 117
    .line 118
    .line 119
    :cond_3
    iget-object v0, p1, LC1/d1;->b:Lw1/c;

    .line 120
    .line 121
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, v0, Lw1/c;->g:Landroid/view/View;

    .line 125
    .line 126
    check-cast v0, Landroid/widget/EditText;

    .line 127
    .line 128
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 143
    .line 144
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {p1, v0, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 149
    .line 150
    .line 151
    :goto_2
    return-void

    .line 152
    :pswitch_0
    iget-object p1, p0, LC1/b1;->c:LC1/d1;

    .line 153
    .line 154
    iget v0, p1, LC1/d1;->g:I

    .line 155
    .line 156
    add-int/lit8 v0, v0, 0x1

    .line 157
    .line 158
    iput v0, p1, LC1/d1;->g:I

    .line 159
    .line 160
    invoke-virtual {p1}, LC1/d1;->c()V

    .line 161
    .line 162
    .line 163
    iget-object p1, p1, LC1/d1;->b:Lw1/c;

    .line 164
    .line 165
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    iget-object p1, p1, Lw1/c;->i:Landroid/view/View;

    .line 169
    .line 170
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 171
    .line 172
    const/4 v0, 0x0

    .line 173
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->f0(I)V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :pswitch_1
    iget-object p1, p0, LC1/b1;->c:LC1/d1;

    .line 178
    .line 179
    iget v0, p1, LC1/d1;->g:I

    .line 180
    .line 181
    add-int/lit8 v0, v0, -0x1

    .line 182
    .line 183
    iput v0, p1, LC1/d1;->g:I

    .line 184
    .line 185
    invoke-virtual {p1}, LC1/d1;->c()V

    .line 186
    .line 187
    .line 188
    iget-object p1, p1, LC1/d1;->b:Lw1/c;

    .line 189
    .line 190
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    iget-object p1, p1, Lw1/c;->i:Landroid/view/View;

    .line 194
    .line 195
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 196
    .line 197
    const/4 v0, 0x0

    .line 198
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->f0(I)V

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    nop

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
