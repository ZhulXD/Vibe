.class public final synthetic LE1/b;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:LE1/g;

.field public final synthetic d:LH0/o;

.field public final synthetic e:LB1/B;


# direct methods
.method public synthetic constructor <init>(LE1/g;LB1/B;LH0/o;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, LE1/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE1/b;->c:LE1/g;

    iput-object p2, p0, LE1/b;->e:LB1/B;

    iput-object p3, p0, LE1/b;->d:LH0/o;

    return-void
.end method

.method public synthetic constructor <init>(LE1/g;LH0/o;LB1/B;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, LE1/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE1/b;->c:LE1/g;

    iput-object p2, p0, LE1/b;->d:LH0/o;

    iput-object p3, p0, LE1/b;->e:LB1/B;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget p1, p0, LE1/b;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, LE1/b;->e:LB1/B;

    .line 7
    .line 8
    iget-object p1, p1, LB1/B;->a:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v0, LO0/b;

    .line 11
    .line 12
    iget-object v1, p0, LE1/b;->c:LE1/g;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-direct {v0, v2, v3}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 20
    .line 21
    .line 22
    const v2, 0x7f1200bf

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, LO0/b;->j(I)V

    .line 26
    .line 27
    .line 28
    const v2, 0x7f1200be

    .line 29
    .line 30
    .line 31
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget-object v3, v0, Le/f;->c:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v3, Le/b;

    .line 42
    .line 43
    iput-object v2, v3, Le/b;->f:Ljava/lang/CharSequence;

    .line 44
    .line 45
    const v2, 0x7f1200bc

    .line 46
    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    invoke-virtual {v0, v2, v3}, LO0/b;->f(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 50
    .line 51
    .line 52
    new-instance v2, LC1/s0;

    .line 53
    .line 54
    iget-object v3, p0, LE1/b;->d:LH0/o;

    .line 55
    .line 56
    invoke-direct {v2, v1, p1, v3}, LC1/s0;-><init>(LE1/g;Ljava/lang/String;LH0/o;)V

    .line 57
    .line 58
    .line 59
    const p1, 0x7f1200bd

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1, v2}, LO0/b;->h(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Le/f;->e()Le/g;

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_0
    iget-object p1, p0, LE1/b;->c:LE1/g;

    .line 70
    .line 71
    iget-object v0, p1, LE1/g;->c:LB1/z;

    .line 72
    .line 73
    const/4 v1, 0x0

    .line 74
    if-nez v0, :cond_0

    .line 75
    .line 76
    const-string v0, "mappingManager"

    .line 77
    .line 78
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    move-object v0, v1

    .line 82
    :cond_0
    iget-object v2, p0, LE1/b;->e:LB1/B;

    .line 83
    .line 84
    iget-object v2, v2, LB1/B;->a:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    const-string v3, "name"

    .line 90
    .line 91
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_1
    invoke-virtual {v0}, LB1/z;->d()Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-eqz v4, :cond_3

    .line 122
    .line 123
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    move-object v5, v4

    .line 128
    check-cast v5, LB1/B;

    .line 129
    .line 130
    iget-object v5, v5, LB1/B;->a:Ljava/lang/String;

    .line 131
    .line 132
    const/4 v6, 0x1

    .line 133
    invoke-static {v5, v2, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    if-eqz v5, :cond_2

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_3
    move-object v4, v1

    .line 141
    :goto_0
    check-cast v4, LB1/B;

    .line 142
    .line 143
    if-nez v4, :cond_4

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_4
    iget-object v2, v4, LB1/B;->b:Ljava/util/LinkedHashMap;

    .line 147
    .line 148
    invoke-virtual {v0, v2}, LB1/z;->h(Ljava/util/LinkedHashMap;)V

    .line 149
    .line 150
    .line 151
    iput-object v1, p1, LE1/g;->e:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {p1}, LE1/g;->e()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, LE1/g;->f()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, LE1/g;->i()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    const v1, 0x7f1203fe

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    const/4 v1, 0x0

    .line 174
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 179
    .line 180
    .line 181
    :goto_1
    iget-object p1, p0, LE1/b;->d:LH0/o;

    .line 182
    .line 183
    invoke-virtual {p1}, Le/D;->dismiss()V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
