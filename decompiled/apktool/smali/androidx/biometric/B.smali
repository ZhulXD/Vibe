.class public final Landroidx/biometric/B;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/biometric/E;


# direct methods
.method public synthetic constructor <init>(Landroidx/biometric/E;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/biometric/B;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/biometric/B;->b:Landroidx/biometric/E;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 11

    .line 1
    iget v0, p0, Landroidx/biometric/B;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/CharSequence;

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/biometric/B;->b:Landroidx/biometric/E;

    .line 9
    .line 10
    iget-object v1, v0, Landroidx/biometric/E;->b:Landroid/os/Handler;

    .line 11
    .line 12
    iget-object v2, v0, Landroidx/biometric/E;->c:LA1/u0;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, v0, Landroidx/biometric/E;->h:Landroid/widget/TextView;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    const-wide/16 v3, 0x7d0

    .line 25
    .line 26
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    .line 31
    .line 32
    iget-object v0, p0, Landroidx/biometric/B;->b:Landroidx/biometric/E;

    .line 33
    .line 34
    iget-object v1, v0, Landroidx/biometric/E;->b:Landroid/os/Handler;

    .line 35
    .line 36
    iget-object v2, v0, Landroidx/biometric/E;->c:LA1/u0;

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    iget-object v4, v0, Landroidx/biometric/E;->g:Landroid/widget/ImageView;

    .line 46
    .line 47
    const/4 v5, 0x2

    .line 48
    if-nez v4, :cond_1

    .line 49
    .line 50
    goto :goto_4

    .line 51
    :cond_1
    iget-object v4, v0, Landroidx/biometric/E;->d:Landroidx/biometric/w;

    .line 52
    .line 53
    iget v4, v4, Landroidx/biometric/w;->v:I

    .line 54
    .line 55
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    const/4 v7, 0x1

    .line 60
    const/4 v8, 0x0

    .line 61
    if-nez v6, :cond_2

    .line 62
    .line 63
    const-string v6, "FingerprintFragment"

    .line 64
    .line 65
    const-string v9, "Unable to get asset. Context is null."

    .line 66
    .line 67
    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    const v9, 0x7f0800b8

    .line 72
    .line 73
    .line 74
    if-nez v4, :cond_3

    .line 75
    .line 76
    if-ne v3, v7, :cond_3

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    if-ne v4, v7, :cond_4

    .line 80
    .line 81
    if-ne v3, v5, :cond_4

    .line 82
    .line 83
    const v9, 0x7f0800b7

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    if-ne v4, v5, :cond_5

    .line 88
    .line 89
    if-ne v3, v7, :cond_5

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_5
    if-ne v4, v7, :cond_6

    .line 93
    .line 94
    const/4 v10, 0x3

    .line 95
    if-ne v3, v10, :cond_6

    .line 96
    .line 97
    :goto_0
    invoke-static {v6, v9}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    :cond_6
    :goto_1
    if-nez v8, :cond_7

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_7
    iget-object v6, v0, Landroidx/biometric/E;->g:Landroid/widget/ImageView;

    .line 105
    .line 106
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    .line 108
    .line 109
    if-nez v4, :cond_8

    .line 110
    .line 111
    if-ne v3, v7, :cond_8

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_8
    if-ne v4, v7, :cond_9

    .line 115
    .line 116
    if-ne v3, v5, :cond_9

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_9
    if-ne v4, v5, :cond_a

    .line 120
    .line 121
    if-ne v3, v7, :cond_a

    .line 122
    .line 123
    :goto_2
    invoke-static {v8}, Landroidx/biometric/C;->a(Landroid/graphics/drawable/Drawable;)V

    .line 124
    .line 125
    .line 126
    :cond_a
    :goto_3
    iget-object v4, v0, Landroidx/biometric/E;->d:Landroidx/biometric/w;

    .line 127
    .line 128
    iput v3, v4, Landroidx/biometric/w;->v:I

    .line 129
    .line 130
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    iget-object v3, v0, Landroidx/biometric/E;->h:Landroid/widget/TextView;

    .line 135
    .line 136
    if-eqz v3, :cond_c

    .line 137
    .line 138
    if-ne p1, v5, :cond_b

    .line 139
    .line 140
    iget p1, v0, Landroidx/biometric/E;->e:I

    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_b
    iget p1, v0, Landroidx/biometric/E;->f:I

    .line 144
    .line 145
    :goto_5
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    .line 147
    .line 148
    :cond_c
    const-wide/16 v3, 0x7d0

    .line 149
    .line 150
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    nop

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
