.class public Le/f;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lr0/a;


# instance fields
.field public b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 1
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Le/f;->c:Ljava/lang/Object;

    const/16 p1, 0x64

    .line 4
    iput p1, p0, Le/f;->b:I

    return-void

    .line 5
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x100

    .line 6
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Le/f;->c:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-static {p1, v0}, Le/g;->e(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Le/f;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Le/b;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 10
    invoke-static {p1, p2}, Le/g;->e(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Le/b;-><init>(Landroid/view/ContextThemeWrapper;)V

    iput-object v0, p0, Le/f;->c:Ljava/lang/Object;

    .line 11
    iput p2, p0, Le/f;->b:I

    return-void
.end method

.method public constructor <init>(Lf0/j;I)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/f;->c:Ljava/lang/Object;

    .line 13
    iput p2, p0, Le/f;->b:I

    return-void
.end method


# virtual methods
.method public a(Lf0/F;Ld0/i;)Lf0/F;
    .locals 3

    .line 1
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lf0/F;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/graphics/Bitmap;

    .line 11
    .line 12
    iget-object v1, p0, Le/f;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Landroid/graphics/Bitmap$CompressFormat;

    .line 15
    .line 16
    iget v2, p0, Le/f;->b:I

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Lf0/F;->e()V

    .line 22
    .line 23
    .line 24
    new-instance p1, Lm0/A;

    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-direct {p1, p2}, Lm0/A;-><init>([B)V

    .line 31
    .line 32
    .line 33
    return-object p1
.end method

.method public b()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Le/f;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    add-int/lit8 v2, v0, -0x1

    .line 7
    .line 8
    iget-object v3, p0, Le/f;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v3, [Ljava/lang/Object;

    .line 11
    .line 12
    aget-object v4, v3, v2

    .line 13
    .line 14
    aput-object v1, v3, v2

    .line 15
    .line 16
    add-int/lit8 v0, v0, -0x1

    .line 17
    .line 18
    iput v0, p0, Le/f;->b:I

    .line 19
    .line 20
    return-object v4

    .line 21
    :cond_0
    return-object v1
.end method

.method public c()Le/g;
    .locals 11

    .line 1
    new-instance v0, Le/g;

    .line 2
    .line 3
    iget-object v1, p0, Le/f;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Le/b;

    .line 6
    .line 7
    iget-object v2, v1, Le/b;->a:Landroid/view/ContextThemeWrapper;

    .line 8
    .line 9
    iget v3, p0, Le/f;->b:I

    .line 10
    .line 11
    invoke-direct {v0, v2, v3}, Le/g;-><init>(Landroid/view/ContextThemeWrapper;I)V

    .line 12
    .line 13
    .line 14
    iget-object v2, v1, Le/b;->e:Landroid/view/View;

    .line 15
    .line 16
    iget-object v3, v0, Le/g;->d:Le/e;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    iput-object v2, v3, Le/e;->w:Landroid/view/View;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v2, v1, Le/b;->d:Ljava/lang/CharSequence;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    iput-object v2, v3, Le/e;->d:Ljava/lang/CharSequence;

    .line 29
    .line 30
    iget-object v5, v3, Le/e;->u:Landroid/widget/TextView;

    .line 31
    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v2, v1, Le/b;->c:Landroid/graphics/drawable/Drawable;

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    iput-object v2, v3, Le/e;->s:Landroid/graphics/drawable/Drawable;

    .line 42
    .line 43
    iget-object v5, v3, Le/e;->t:Landroid/widget/ImageView;

    .line 44
    .line 45
    if-eqz v5, :cond_2

    .line 46
    .line 47
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    iget-object v5, v3, Le/e;->t:Landroid/widget/ImageView;

    .line 51
    .line 52
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_0
    iget-object v2, v1, Le/b;->f:Ljava/lang/CharSequence;

    .line 56
    .line 57
    if-eqz v2, :cond_3

    .line 58
    .line 59
    iput-object v2, v3, Le/e;->e:Ljava/lang/CharSequence;

    .line 60
    .line 61
    iget-object v5, v3, Le/e;->v:Landroid/widget/TextView;

    .line 62
    .line 63
    if-eqz v5, :cond_3

    .line 64
    .line 65
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    iget-object v2, v1, Le/b;->g:Ljava/lang/CharSequence;

    .line 69
    .line 70
    if-nez v2, :cond_4

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    const/4 v5, -0x1

    .line 74
    iget-object v6, v1, Le/b;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 75
    .line 76
    invoke-virtual {v3, v5, v2, v6}, Le/e;->c(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    :goto_1
    iget-object v2, v1, Le/b;->i:Ljava/lang/CharSequence;

    .line 80
    .line 81
    if-nez v2, :cond_5

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_5
    const/4 v5, -0x2

    .line 85
    iget-object v6, v1, Le/b;->j:Landroid/content/DialogInterface$OnClickListener;

    .line 86
    .line 87
    invoke-virtual {v3, v5, v2, v6}, Le/e;->c(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 88
    .line 89
    .line 90
    :goto_2
    iget-object v2, v1, Le/b;->k:Ljava/lang/CharSequence;

    .line 91
    .line 92
    if-nez v2, :cond_6

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_6
    const/4 v5, -0x3

    .line 96
    iget-object v6, v1, Le/b;->l:Landroid/content/DialogInterface$OnClickListener;

    .line 97
    .line 98
    invoke-virtual {v3, v5, v2, v6}, Le/e;->c(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 99
    .line 100
    .line 101
    :goto_3
    iget-object v2, v1, Le/b;->q:[Ljava/lang/CharSequence;

    .line 102
    .line 103
    const/4 v5, 0x1

    .line 104
    if-nez v2, :cond_7

    .line 105
    .line 106
    iget-object v2, v1, Le/b;->r:Landroid/widget/ListAdapter;

    .line 107
    .line 108
    if-eqz v2, :cond_c

    .line 109
    .line 110
    :cond_7
    iget-object v2, v1, Le/b;->b:Landroid/view/LayoutInflater;

    .line 111
    .line 112
    iget v6, v3, Le/e;->A:I

    .line 113
    .line 114
    const/4 v7, 0x0

    .line 115
    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    check-cast v2, Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 120
    .line 121
    iget-boolean v6, v1, Le/b;->u:Z

    .line 122
    .line 123
    if-eqz v6, :cond_8

    .line 124
    .line 125
    iget v6, v3, Le/e;->B:I

    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_8
    iget v6, v3, Le/e;->C:I

    .line 129
    .line 130
    :goto_4
    iget-object v7, v1, Le/b;->r:Landroid/widget/ListAdapter;

    .line 131
    .line 132
    if-eqz v7, :cond_9

    .line 133
    .line 134
    goto :goto_5

    .line 135
    :cond_9
    new-instance v7, Le/d;

    .line 136
    .line 137
    iget-object v8, v1, Le/b;->a:Landroid/view/ContextThemeWrapper;

    .line 138
    .line 139
    const v9, 0x1020014

    .line 140
    .line 141
    .line 142
    iget-object v10, v1, Le/b;->q:[Ljava/lang/CharSequence;

    .line 143
    .line 144
    invoke-direct {v7, v8, v6, v9, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    :goto_5
    iput-object v7, v3, Le/e;->x:Landroid/widget/ListAdapter;

    .line 148
    .line 149
    iget v6, v1, Le/b;->v:I

    .line 150
    .line 151
    iput v6, v3, Le/e;->y:I

    .line 152
    .line 153
    iget-object v6, v1, Le/b;->s:Landroid/content/DialogInterface$OnClickListener;

    .line 154
    .line 155
    if-eqz v6, :cond_a

    .line 156
    .line 157
    new-instance v6, Le/a;

    .line 158
    .line 159
    invoke-direct {v6, v1, v3}, Le/a;-><init>(Le/b;Le/e;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, v6}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 163
    .line 164
    .line 165
    :cond_a
    iget-boolean v6, v1, Le/b;->u:Z

    .line 166
    .line 167
    if-eqz v6, :cond_b

    .line 168
    .line 169
    invoke-virtual {v2, v5}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 170
    .line 171
    .line 172
    :cond_b
    iput-object v2, v3, Le/e;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 173
    .line 174
    :cond_c
    iget-object v2, v1, Le/b;->t:Landroid/view/View;

    .line 175
    .line 176
    if-eqz v2, :cond_d

    .line 177
    .line 178
    iput-object v2, v3, Le/e;->g:Landroid/view/View;

    .line 179
    .line 180
    iput-boolean v4, v3, Le/e;->h:Z

    .line 181
    .line 182
    :cond_d
    iget-boolean v2, v1, Le/b;->m:Z

    .line 183
    .line 184
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 185
    .line 186
    .line 187
    iget-boolean v2, v1, Le/b;->m:Z

    .line 188
    .line 189
    if-eqz v2, :cond_e

    .line 190
    .line 191
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 192
    .line 193
    .line 194
    :cond_e
    iget-object v2, v1, Le/b;->n:Landroid/content/DialogInterface$OnCancelListener;

    .line 195
    .line 196
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 197
    .line 198
    .line 199
    iget-object v2, v1, Le/b;->o:Landroid/content/DialogInterface$OnDismissListener;

    .line 200
    .line 201
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 202
    .line 203
    .line 204
    iget-object v1, v1, Le/b;->p:Lj/q;

    .line 205
    .line 206
    if-eqz v1, :cond_f

    .line 207
    .line 208
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 209
    .line 210
    .line 211
    :cond_f
    return-object v0
.end method

.method public d(Lu/c;)V
    .locals 3

    .line 1
    iget v0, p0, Le/f;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Le/f;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, [Ljava/lang/Object;

    .line 6
    .line 7
    array-length v2, v1

    .line 8
    if-ge v0, v2, :cond_0

    .line 9
    .line 10
    aput-object p1, v1, v0

    .line 11
    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    iput v0, p0, Le/f;->b:I

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public e()Le/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/f;->c()Le/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
