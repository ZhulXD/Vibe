.class public final synthetic LE1/e;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic b:LE1/g;


# direct methods
.method public synthetic constructor <init>(LE1/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LE1/e;->b:LE1/g;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 8

    .line 1
    iget-object p1, p0, LE1/e;->b:LE1/g;

    .line 2
    .line 3
    iget-object v0, p1, LE1/g;->e:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    const/16 p3, 0x60

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-eq p2, p3, :cond_9

    .line 20
    .line 21
    const/16 p3, 0x61

    .line 22
    .line 23
    if-eq p2, p3, :cond_8

    .line 24
    .line 25
    const/16 p3, 0x63

    .line 26
    .line 27
    if-eq p2, p3, :cond_7

    .line 28
    .line 29
    const/16 p3, 0x64

    .line 30
    .line 31
    if-eq p2, p3, :cond_6

    .line 32
    .line 33
    const/16 p3, 0x66

    .line 34
    .line 35
    if-eq p2, p3, :cond_5

    .line 36
    .line 37
    const/16 p3, 0x67

    .line 38
    .line 39
    if-eq p2, p3, :cond_4

    .line 40
    .line 41
    const/16 p3, 0x6c

    .line 42
    .line 43
    if-eq p2, p3, :cond_3

    .line 44
    .line 45
    const/16 p3, 0x6d

    .line 46
    .line 47
    if-eq p2, p3, :cond_2

    .line 48
    .line 49
    packed-switch p2, :pswitch_data_0

    .line 50
    .line 51
    .line 52
    move-object p2, v2

    .line 53
    goto :goto_0

    .line 54
    :pswitch_0
    const-string p2, "DPAD_RIGHT"

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :pswitch_1
    const-string p2, "DPAD_LEFT"

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :pswitch_2
    const-string p2, "DPAD_DOWN"

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :pswitch_3
    const-string p2, "DPAD_UP"

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const-string p2, "KEYCODE_BUTTON_SELECT"

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const-string p2, "KEYCODE_BUTTON_START"

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    const-string p2, "KEYCODE_BUTTON_R1"

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_5
    const-string p2, "KEYCODE_BUTTON_L1"

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_6
    const-string p2, "KEYCODE_BUTTON_Y"

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_7
    const-string p2, "KEYCODE_BUTTON_X"

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_8
    const-string p2, "KEYCODE_BUTTON_B"

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_9
    const-string p2, "KEYCODE_BUTTON_A"

    .line 88
    .line 89
    :goto_0
    if-nez p2, :cond_a

    .line 90
    .line 91
    :goto_1
    return v1

    .line 92
    :cond_a
    iget-object p3, p1, LE1/g;->d:Ljava/util/ArrayList;

    .line 93
    .line 94
    new-instance v3, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    move v5, v1

    .line 108
    :goto_2
    if-ge v5, v4, :cond_c

    .line 109
    .line 110
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    add-int/lit8 v5, v5, 0x1

    .line 115
    .line 116
    check-cast v6, LB1/A;

    .line 117
    .line 118
    iget-object v7, v6, LB1/A;->a:Ljava/lang/String;

    .line 119
    .line 120
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    if-eqz v7, :cond_b

    .line 125
    .line 126
    const/4 v7, 0x3

    .line 127
    invoke-static {v6, v2, p2, v7}, LB1/A;->a(LB1/A;Ljava/lang/String;Ljava/lang/String;I)LB1/A;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    :cond_b
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_c
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 136
    .line 137
    .line 138
    iget-object p2, p1, LE1/g;->c:LB1/z;

    .line 139
    .line 140
    if-nez p2, :cond_d

    .line 141
    .line 142
    const-string p2, "mappingManager"

    .line 143
    .line 144
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_d
    move-object v2, p2

    .line 149
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    invoke-static {v3}, LB1/z;->f(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-static {p3, p2}, Lkotlin/collections/CollectionsKt;->c(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 157
    .line 158
    .line 159
    iput-object v0, p1, LE1/g;->e:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {p1}, LE1/g;->c()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, LE1/g;->f()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1}, LE1/g;->i()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    const p3, 0x7f120405

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-static {p2, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 186
    .line 187
    .line 188
    const/4 p1, 0x1

    .line 189
    return p1

    .line 190
    nop

    .line 191
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
