.class public final Lcom/minhub/gamehub/editor/ButtonEditorActivity;
.super LS1/c;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/minhub/gamehub/editor/ButtonEditorActivity;",
        "LS1/c;",
        "<init>",
        "()V",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nButtonEditorActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ButtonEditorActivity.kt\ncom/minhub/gamehub/editor/ButtonEditorActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,244:1\n1#2:245\n*E\n"
    }
.end annotation


# static fields
.field public static final synthetic i:I


# instance fields
.field public e:Lw1/c;

.field public f:Ljava/util/List;

.field public g:Ljava/lang/String;

.field public h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LS1/c;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->f:Ljava/util/List;

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->h:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final m(Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "b"

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez p1, :cond_4

    .line 6
    .line 7
    iget-object p1, p0, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->e:Lw1/c;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    move-object p1, v2

    .line 15
    :cond_0
    iget-object p1, p1, Lw1/c;->d:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    const/16 v3, 0x8

    .line 18
    .line 19
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->e:Lw1/c;

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    move-object p1, v2

    .line 30
    :cond_1
    iget-object p1, p1, Lw1/c;->e:Landroid/widget/TextView;

    .line 31
    .line 32
    const v3, 0x7f120209

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->e:Lw1/c;

    .line 43
    .line 44
    if-nez p1, :cond_2

    .line 45
    .line 46
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    move-object p1, v2

    .line 50
    :cond_2
    iget-object p1, p1, Lw1/c;->f:Landroid/view/View;

    .line 51
    .line 52
    check-cast p1, Landroid/widget/Button;

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->e:Lw1/c;

    .line 58
    .line 59
    if-nez p1, :cond_3

    .line 60
    .line 61
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    move-object v2, p1

    .line 66
    :goto_0
    iget-object p1, v2, Lw1/c;->b:Landroid/view/View;

    .line 67
    .line 68
    check-cast p1, Landroid/widget/Button;

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_4
    iget-object v3, p0, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->e:Lw1/c;

    .line 75
    .line 76
    if-nez v3, :cond_5

    .line 77
    .line 78
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    move-object v3, v2

    .line 82
    :cond_5
    iget-object v3, v3, Lw1/c;->d:Landroid/widget/LinearLayout;

    .line 83
    .line 84
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    iget-object v3, p0, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->f:Ljava/util/List;

    .line 88
    .line 89
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-eqz v4, :cond_7

    .line 98
    .line 99
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    move-object v5, v4

    .line 104
    check-cast v5, Lx1/a;

    .line 105
    .line 106
    iget-object v5, v5, Lx1/a;->a:Ljava/lang/String;

    .line 107
    .line 108
    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-eqz v5, :cond_6

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_7
    move-object v4, v2

    .line 116
    :goto_1
    check-cast v4, Lx1/a;

    .line 117
    .line 118
    if-nez v4, :cond_8

    .line 119
    .line 120
    return-void

    .line 121
    :cond_8
    iget-object p1, p0, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->e:Lw1/c;

    .line 122
    .line 123
    if-nez p1, :cond_9

    .line 124
    .line 125
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    move-object p1, v2

    .line 129
    :cond_9
    iget-object p1, p1, Lw1/c;->e:Landroid/widget/TextView;

    .line 130
    .line 131
    iget-object v3, v4, Lx1/a;->b:Ljava/lang/String;

    .line 132
    .line 133
    iget-object v5, v4, Lx1/a;->c:Ljava/lang/String;

    .line 134
    .line 135
    filled-new-array {v3, v5}, [Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    const v5, 0x7f12011e

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    .line 148
    .line 149
    iget p1, v4, Lx1/a;->f:I

    .line 150
    .line 151
    add-int/lit8 p1, p1, -0x1c

    .line 152
    .line 153
    const/16 v3, 0x64

    .line 154
    .line 155
    mul-int/2addr p1, v3

    .line 156
    div-int/lit8 p1, p1, 0x54

    .line 157
    .line 158
    invoke-static {p1, v0, v3}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    iget-object v5, p0, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->e:Lw1/c;

    .line 163
    .line 164
    if-nez v5, :cond_a

    .line 165
    .line 166
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    move-object v5, v2

    .line 170
    :cond_a
    iget-object v5, v5, Lw1/c;->k:Landroid/view/View;

    .line 171
    .line 172
    check-cast v5, Landroid/widget/SeekBar;

    .line 173
    .line 174
    invoke-virtual {v5, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 175
    .line 176
    .line 177
    iget p1, v4, Lx1/a;->j:F

    .line 178
    .line 179
    int-to-float v4, v3

    .line 180
    mul-float/2addr p1, v4

    .line 181
    float-to-int p1, p1

    .line 182
    invoke-static {p1, v0, v3}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    iget-object v0, p0, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->e:Lw1/c;

    .line 187
    .line 188
    if-nez v0, :cond_b

    .line 189
    .line 190
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    move-object v0, v2

    .line 194
    :cond_b
    iget-object v0, v0, Lw1/c;->j:Landroid/view/View;

    .line 195
    .line 196
    check-cast v0, Landroid/widget/SeekBar;

    .line 197
    .line 198
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 199
    .line 200
    .line 201
    iget-object p1, p0, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->e:Lw1/c;

    .line 202
    .line 203
    if-nez p1, :cond_c

    .line 204
    .line 205
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    move-object p1, v2

    .line 209
    :cond_c
    iget-object p1, p1, Lw1/c;->f:Landroid/view/View;

    .line 210
    .line 211
    check-cast p1, Landroid/widget/Button;

    .line 212
    .line 213
    const/4 v0, 0x1

    .line 214
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 215
    .line 216
    .line 217
    iget-object p1, p0, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->e:Lw1/c;

    .line 218
    .line 219
    if-nez p1, :cond_d

    .line 220
    .line 221
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    goto :goto_2

    .line 225
    :cond_d
    move-object v2, p1

    .line 226
    :goto_2
    iget-object p1, v2, Lw1/c;->b:Landroid/view/View;

    .line 227
    .line 228
    check-cast p1, Landroid/widget/Button;

    .line 229
    .line 230
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 231
    .line 232
    .line 233
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "game_id"

    .line 11
    .line 12
    const/4 v3, -0x1

    .line 13
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x0

    .line 22
    if-ltz v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v2, v3

    .line 26
    :goto_0
    if-nez v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iput v1, v0, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->h:I

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const v2, 0x7f0c001f

    .line 43
    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const v2, 0x7f090070

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    move-object v7, v4

    .line 58
    check-cast v7, Landroid/widget/Button;

    .line 59
    .line 60
    if-eqz v7, :cond_d

    .line 61
    .line 62
    const v2, 0x7f090079

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    move-object v8, v4

    .line 70
    check-cast v8, Landroid/widget/ImageButton;

    .line 71
    .line 72
    if-eqz v8, :cond_d

    .line 73
    .line 74
    const v2, 0x7f09008b

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    move-object v9, v4

    .line 82
    check-cast v9, Landroid/widget/Button;

    .line 83
    .line 84
    if-eqz v9, :cond_d

    .line 85
    .line 86
    const v2, 0x7f0900a8

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    move-object v10, v4

    .line 94
    check-cast v10, Landroid/widget/Button;

    .line 95
    .line 96
    if-eqz v10, :cond_d

    .line 97
    .line 98
    const v2, 0x7f0900d3

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    move-object v11, v4

    .line 106
    check-cast v11, Landroid/widget/Button;

    .line 107
    .line 108
    if-eqz v11, :cond_d

    .line 109
    .line 110
    const v2, 0x7f0900d8

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    move-object v12, v4

    .line 118
    check-cast v12, Landroid/widget/Button;

    .line 119
    .line 120
    if-eqz v12, :cond_d

    .line 121
    .line 122
    const v2, 0x7f090148

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    move-object v13, v4

    .line 130
    check-cast v13, Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 131
    .line 132
    if-eqz v13, :cond_d

    .line 133
    .line 134
    const v2, 0x7f090174

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    check-cast v4, Landroid/widget/FrameLayout;

    .line 142
    .line 143
    if-eqz v4, :cond_d

    .line 144
    .line 145
    const v2, 0x7f09024e

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    move-object v14, v4

    .line 153
    check-cast v14, Landroid/widget/LinearLayout;

    .line 154
    .line 155
    if-eqz v14, :cond_d

    .line 156
    .line 157
    const v2, 0x7f090290

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    move-object v15, v4

    .line 165
    check-cast v15, Landroid/widget/SeekBar;

    .line 166
    .line 167
    if-eqz v15, :cond_d

    .line 168
    .line 169
    const v2, 0x7f090291

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    move-object/from16 v16, v4

    .line 177
    .line 178
    check-cast v16, Landroid/widget/SeekBar;

    .line 179
    .line 180
    if-eqz v16, :cond_d

    .line 181
    .line 182
    const v2, 0x7f09039f

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    move-object/from16 v17, v4

    .line 190
    .line 191
    check-cast v17, Landroid/widget/TextView;

    .line 192
    .line 193
    if-eqz v17, :cond_d

    .line 194
    .line 195
    new-instance v5, Lw1/c;

    .line 196
    .line 197
    move-object v6, v1

    .line 198
    check-cast v6, Landroid/widget/FrameLayout;

    .line 199
    .line 200
    invoke-direct/range {v5 .. v17}, Lw1/c;-><init>(Landroid/widget/FrameLayout;Landroid/widget/Button;Landroid/widget/ImageButton;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Lcom/minhub/gamehub/editor/EditModeOverlay;Landroid/widget/LinearLayout;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/TextView;)V

    .line 201
    .line 202
    .line 203
    const-string v1, "inflate(...)"

    .line 204
    .line 205
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    iput-object v5, v0, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->e:Lw1/c;

    .line 209
    .line 210
    invoke-virtual {v0, v6}, Le/j;->setContentView(Landroid/view/View;)V

    .line 211
    .line 212
    .line 213
    iget-object v1, v0, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->e:Lw1/c;

    .line 214
    .line 215
    const-string v2, "b"

    .line 216
    .line 217
    if-nez v1, :cond_2

    .line 218
    .line 219
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    move-object v1, v3

    .line 223
    :cond_2
    iget-object v1, v1, Lw1/c;->i:Landroid/view/View;

    .line 224
    .line 225
    check-cast v1, Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 226
    .line 227
    new-instance v4, Lx1/b;

    .line 228
    .line 229
    const/4 v5, 0x0

    .line 230
    invoke-direct {v4, v0, v5}, Lx1/b;-><init>(Lcom/minhub/gamehub/editor/ButtonEditorActivity;I)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1, v4}, Lcom/minhub/gamehub/editor/EditModeOverlay;->setOnButtonSelected(Lkotlin/jvm/functions/Function1;)V

    .line 234
    .line 235
    .line 236
    iget-object v1, v0, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->e:Lw1/c;

    .line 237
    .line 238
    if-nez v1, :cond_3

    .line 239
    .line 240
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    move-object v1, v3

    .line 244
    :cond_3
    iget-object v1, v1, Lw1/c;->i:Landroid/view/View;

    .line 245
    .line 246
    check-cast v1, Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 247
    .line 248
    new-instance v4, Lx1/b;

    .line 249
    .line 250
    const/4 v5, 0x1

    .line 251
    invoke-direct {v4, v0, v5}, Lx1/b;-><init>(Lcom/minhub/gamehub/editor/ButtonEditorActivity;I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1, v4}, Lcom/minhub/gamehub/editor/EditModeOverlay;->setOnLayoutChanged(Lkotlin/jvm/functions/Function1;)V

    .line 255
    .line 256
    .line 257
    iget-object v1, v0, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->e:Lw1/c;

    .line 258
    .line 259
    if-nez v1, :cond_4

    .line 260
    .line 261
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    move-object v1, v3

    .line 265
    :cond_4
    iget-object v1, v1, Lw1/c;->c:Landroid/view/View;

    .line 266
    .line 267
    check-cast v1, Landroid/widget/ImageButton;

    .line 268
    .line 269
    new-instance v4, Lx1/c;

    .line 270
    .line 271
    const/4 v5, 0x0

    .line 272
    invoke-direct {v4, v0, v5}, Lx1/c;-><init>(Lcom/minhub/gamehub/editor/ButtonEditorActivity;I)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    .line 277
    .line 278
    iget-object v1, v0, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->e:Lw1/c;

    .line 279
    .line 280
    if-nez v1, :cond_5

    .line 281
    .line 282
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    move-object v1, v3

    .line 286
    :cond_5
    iget-object v1, v1, Lw1/c;->h:Landroid/view/View;

    .line 287
    .line 288
    check-cast v1, Landroid/widget/Button;

    .line 289
    .line 290
    new-instance v4, Lx1/c;

    .line 291
    .line 292
    const/4 v5, 0x1

    .line 293
    invoke-direct {v4, v0, v5}, Lx1/c;-><init>(Lcom/minhub/gamehub/editor/ButtonEditorActivity;I)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    .line 298
    .line 299
    iget-object v1, v0, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->e:Lw1/c;

    .line 300
    .line 301
    if-nez v1, :cond_6

    .line 302
    .line 303
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    move-object v1, v3

    .line 307
    :cond_6
    iget-object v1, v1, Lw1/c;->k:Landroid/view/View;

    .line 308
    .line 309
    check-cast v1, Landroid/widget/SeekBar;

    .line 310
    .line 311
    new-instance v4, Lx1/d;

    .line 312
    .line 313
    const/4 v5, 0x0

    .line 314
    invoke-direct {v4, v0, v5}, Lx1/d;-><init>(LS1/c;I)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 318
    .line 319
    .line 320
    iget-object v1, v0, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->e:Lw1/c;

    .line 321
    .line 322
    if-nez v1, :cond_7

    .line 323
    .line 324
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    move-object v1, v3

    .line 328
    :cond_7
    iget-object v1, v1, Lw1/c;->j:Landroid/view/View;

    .line 329
    .line 330
    check-cast v1, Landroid/widget/SeekBar;

    .line 331
    .line 332
    new-instance v4, Lx1/d;

    .line 333
    .line 334
    const/4 v5, 0x1

    .line 335
    invoke-direct {v4, v0, v5}, Lx1/d;-><init>(LS1/c;I)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 339
    .line 340
    .line 341
    iget-object v1, v0, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->e:Lw1/c;

    .line 342
    .line 343
    if-nez v1, :cond_8

    .line 344
    .line 345
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    move-object v1, v3

    .line 349
    :cond_8
    iget-object v1, v1, Lw1/c;->g:Landroid/view/View;

    .line 350
    .line 351
    check-cast v1, Landroid/widget/Button;

    .line 352
    .line 353
    new-instance v4, Lx1/c;

    .line 354
    .line 355
    const/4 v5, 0x2

    .line 356
    invoke-direct {v4, v0, v5}, Lx1/c;-><init>(Lcom/minhub/gamehub/editor/ButtonEditorActivity;I)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    .line 361
    .line 362
    iget-object v1, v0, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->e:Lw1/c;

    .line 363
    .line 364
    if-nez v1, :cond_9

    .line 365
    .line 366
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    move-object v1, v3

    .line 370
    :cond_9
    iget-object v1, v1, Lw1/c;->f:Landroid/view/View;

    .line 371
    .line 372
    check-cast v1, Landroid/widget/Button;

    .line 373
    .line 374
    new-instance v4, Lx1/c;

    .line 375
    .line 376
    const/4 v5, 0x3

    .line 377
    invoke-direct {v4, v0, v5}, Lx1/c;-><init>(Lcom/minhub/gamehub/editor/ButtonEditorActivity;I)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    .line 382
    .line 383
    iget-object v1, v0, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->e:Lw1/c;

    .line 384
    .line 385
    if-nez v1, :cond_a

    .line 386
    .line 387
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    move-object v1, v3

    .line 391
    :cond_a
    iget-object v1, v1, Lw1/c;->a:Landroid/view/View;

    .line 392
    .line 393
    check-cast v1, Landroid/widget/Button;

    .line 394
    .line 395
    new-instance v4, Lx1/c;

    .line 396
    .line 397
    const/4 v5, 0x4

    .line 398
    invoke-direct {v4, v0, v5}, Lx1/c;-><init>(Lcom/minhub/gamehub/editor/ButtonEditorActivity;I)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    .line 403
    .line 404
    iget-object v1, v0, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->e:Lw1/c;

    .line 405
    .line 406
    if-nez v1, :cond_b

    .line 407
    .line 408
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    move-object v1, v3

    .line 412
    :cond_b
    iget-object v1, v1, Lw1/c;->b:Landroid/view/View;

    .line 413
    .line 414
    check-cast v1, Landroid/widget/Button;

    .line 415
    .line 416
    new-instance v4, Lx1/c;

    .line 417
    .line 418
    const/4 v5, 0x5

    .line 419
    invoke-direct {v4, v0, v5}, Lx1/c;-><init>(Lcom/minhub/gamehub/editor/ButtonEditorActivity;I)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    .line 424
    .line 425
    iget-object v1, v0, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->e:Lw1/c;

    .line 426
    .line 427
    if-nez v1, :cond_c

    .line 428
    .line 429
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    goto :goto_1

    .line 433
    :cond_c
    move-object v3, v1

    .line 434
    :goto_1
    iget-object v1, v3, Lw1/c;->i:Landroid/view/View;

    .line 435
    .line 436
    check-cast v1, Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 437
    .line 438
    new-instance v2, LC1/g1;

    .line 439
    .line 440
    const/16 v3, 0x11

    .line 441
    .line 442
    invoke-direct {v2, v3, v0}, LC1/g1;-><init>(ILjava/lang/Object;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 446
    .line 447
    .line 448
    return-void

    .line 449
    :cond_d
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    new-instance v2, Ljava/lang/NullPointerException;

    .line 458
    .line 459
    const-string v3, "Missing required view with ID: "

    .line 460
    .line 461
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    throw v2
.end method
