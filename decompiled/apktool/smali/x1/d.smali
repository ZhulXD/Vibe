.class public final Lx1/d;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LS1/c;


# direct methods
.method public synthetic constructor <init>(LS1/c;I)V
    .locals 0

    .line 1
    iput p2, p0, Lx1/d;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lx1/d;->b:LS1/c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final a(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final b(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final c(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final d(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final e(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    iget v2, v0, Lx1/d;->a:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v2, v0, Lx1/d;->b:LS1/c;

    .line 11
    .line 12
    check-cast v2, Lcom/minhub/gamehub/game/GameActivity;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    iget-object v3, v3, Lw1/d;->p0:Landroid/widget/TextView;

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    const v5, 0x7f120450

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    iget-object v3, v2, Lcom/minhub/gamehub/game/GameActivity;->m:Ly1/t1;

    .line 39
    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iget-object v2, v2, Lw1/d;->q0:Landroid/webkit/WebView;

    .line 47
    .line 48
    const-string v3, "webView"

    .line 49
    .line 50
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v2, v1}, Ly1/t1;->a(Landroid/webkit/WebView;I)V

    .line 54
    .line 55
    .line 56
    :cond_0
    return-void

    .line 57
    :pswitch_0
    if-eqz p3, :cond_5

    .line 58
    .line 59
    iget-object v2, v0, Lx1/d;->b:LS1/c;

    .line 60
    .line 61
    check-cast v2, Lcom/minhub/gamehub/editor/ButtonEditorActivity;

    .line 62
    .line 63
    iget-object v3, v2, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->g:Ljava/lang/String;

    .line 64
    .line 65
    if-eqz v3, :cond_5

    .line 66
    .line 67
    iget-object v4, v2, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->f:Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    const/4 v6, 0x0

    .line 78
    if-eqz v5, :cond_2

    .line 79
    .line 80
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    move-object v7, v5

    .line 85
    check-cast v7, Lx1/a;

    .line 86
    .line 87
    iget-object v7, v7, Lx1/a;->a:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-eqz v7, :cond_1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    move-object v5, v6

    .line 97
    :goto_0
    move-object v7, v5

    .line 98
    check-cast v7, Lx1/a;

    .line 99
    .line 100
    if-nez v7, :cond_3

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_3
    int-to-float v1, v1

    .line 104
    const/high16 v4, 0x42c80000    # 100.0f

    .line 105
    .line 106
    div-float v15, v1, v4

    .line 107
    .line 108
    const/16 v16, 0x0

    .line 109
    .line 110
    const/16 v17, 0x5ff

    .line 111
    .line 112
    const/4 v8, 0x0

    .line 113
    const/4 v9, 0x0

    .line 114
    const/4 v10, 0x0

    .line 115
    const/4 v11, 0x0

    .line 116
    const/4 v12, 0x0

    .line 117
    const/4 v13, 0x0

    .line 118
    const/4 v14, 0x0

    .line 119
    invoke-static/range {v7 .. v17}, Lx1/a;->a(Lx1/a;Ljava/lang/String;FFIILjava/lang/String;Ljava/lang/String;FZI)Lx1/a;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iget-object v2, v2, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->e:Lw1/c;

    .line 124
    .line 125
    if-nez v2, :cond_4

    .line 126
    .line 127
    const-string v2, "b"

    .line 128
    .line 129
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_4
    move-object v6, v2

    .line 134
    :goto_1
    iget-object v2, v6, Lw1/c;->i:Landroid/view/View;

    .line 135
    .line 136
    check-cast v2, Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 137
    .line 138
    invoke-virtual {v2, v3, v1}, Lcom/minhub/gamehub/editor/EditModeOverlay;->f(Ljava/lang/String;Lx1/a;)V

    .line 139
    .line 140
    .line 141
    :cond_5
    :goto_2
    return-void

    .line 142
    :pswitch_1
    if-eqz p3, :cond_a

    .line 143
    .line 144
    iget-object v2, v0, Lx1/d;->b:LS1/c;

    .line 145
    .line 146
    check-cast v2, Lcom/minhub/gamehub/editor/ButtonEditorActivity;

    .line 147
    .line 148
    iget-object v3, v2, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->g:Ljava/lang/String;

    .line 149
    .line 150
    if-eqz v3, :cond_a

    .line 151
    .line 152
    iget-object v4, v2, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->f:Ljava/util/List;

    .line 153
    .line 154
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    const/4 v6, 0x0

    .line 163
    if-eqz v5, :cond_7

    .line 164
    .line 165
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    move-object v7, v5

    .line 170
    check-cast v7, Lx1/a;

    .line 171
    .line 172
    iget-object v7, v7, Lx1/a;->a:Ljava/lang/String;

    .line 173
    .line 174
    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    if-eqz v7, :cond_6

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_7
    move-object v5, v6

    .line 182
    :goto_3
    move-object v7, v5

    .line 183
    check-cast v7, Lx1/a;

    .line 184
    .line 185
    if-nez v7, :cond_8

    .line 186
    .line 187
    goto :goto_5

    .line 188
    :cond_8
    mul-int/lit8 v1, v1, 0x54

    .line 189
    .line 190
    div-int/lit8 v1, v1, 0x64

    .line 191
    .line 192
    add-int/lit8 v11, v1, 0x1c

    .line 193
    .line 194
    const/16 v16, 0x0

    .line 195
    .line 196
    const/16 v17, 0x79f

    .line 197
    .line 198
    const/4 v8, 0x0

    .line 199
    const/4 v9, 0x0

    .line 200
    const/4 v10, 0x0

    .line 201
    const/4 v13, 0x0

    .line 202
    const/4 v14, 0x0

    .line 203
    const/4 v15, 0x0

    .line 204
    move v12, v11

    .line 205
    invoke-static/range {v7 .. v17}, Lx1/a;->a(Lx1/a;Ljava/lang/String;FFIILjava/lang/String;Ljava/lang/String;FZI)Lx1/a;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    iget-object v2, v2, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->e:Lw1/c;

    .line 210
    .line 211
    if-nez v2, :cond_9

    .line 212
    .line 213
    const-string v2, "b"

    .line 214
    .line 215
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_9
    move-object v6, v2

    .line 220
    :goto_4
    iget-object v2, v6, Lw1/c;->i:Landroid/view/View;

    .line 221
    .line 222
    check-cast v2, Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 223
    .line 224
    invoke-virtual {v2, v3, v1}, Lcom/minhub/gamehub/editor/EditModeOverlay;->f(Ljava/lang/String;Lx1/a;)V

    .line 225
    .line 226
    .line 227
    :cond_a
    :goto_5
    return-void

    .line 228
    nop

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    iget p1, p0, Lx1/d;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 1
    iget v0, p0, Lx1/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object v0, LS1/d;->a:Ljava/util/Set;

    .line 7
    .line 8
    iget-object v0, p0, Lx1/d;->b:LS1/c;

    .line 9
    .line 10
    check-cast v0, Lcom/minhub/gamehub/game/GameActivity;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/16 p1, 0x4b

    .line 20
    .line 21
    :goto_0
    const-string v1, "<this>"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v1, "minhub_prefs"

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/16 v1, 0x64

    .line 38
    .line 39
    invoke-static {p1, v2, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    const-string v1, "game_volume"

    .line 44
    .line 45
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 50
    .line 51
    .line 52
    :pswitch_0
    return-void

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
