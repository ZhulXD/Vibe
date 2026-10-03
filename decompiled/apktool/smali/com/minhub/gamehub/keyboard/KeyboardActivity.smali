.class public final Lcom/minhub/gamehub/keyboard/KeyboardActivity;
.super LS1/c;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/minhub/gamehub/keyboard/KeyboardActivity;",
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
        "SMAP\nKeyboardActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KeyboardActivity.kt\ncom/minhub/gamehub/keyboard/KeyboardActivity\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,143:1\n161#2,8:144\n1#3:152\n*S KotlinDebug\n*F\n+ 1 KeyboardActivity.kt\ncom/minhub/gamehub/keyboard/KeyboardActivity\n*L\n31#1:144,8\n*E\n"
    }
.end annotation


# static fields
.field public static final synthetic f:I


# instance fields
.field public e:Lk/m1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LS1/c;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const v0, 0x7f0c0024

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const v0, 0x7f090079

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    move-object v5, v1

    .line 25
    check-cast v5, Landroid/widget/ImageButton;

    .line 26
    .line 27
    if-eqz v5, :cond_6

    .line 28
    .line 29
    const v0, 0x7f0900b3

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    move-object v6, v1

    .line 37
    check-cast v6, Landroid/widget/Button;

    .line 38
    .line 39
    if-eqz v6, :cond_6

    .line 40
    .line 41
    const v0, 0x7f0900e4

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    move-object v7, v1

    .line 49
    check-cast v7, Landroid/widget/Button;

    .line 50
    .line 51
    if-eqz v7, :cond_6

    .line 52
    .line 53
    const v0, 0x7f0901c3

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    move-object v8, v1

    .line 61
    check-cast v8, Landroid/widget/LinearLayout;

    .line 62
    .line 63
    if-eqz v8, :cond_6

    .line 64
    .line 65
    const v0, 0x7f090391

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    move-object v9, v1

    .line 73
    check-cast v9, Landroid/widget/TextView;

    .line 74
    .line 75
    if-eqz v9, :cond_6

    .line 76
    .line 77
    const v0, 0x7f0903c7

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    move-object v10, v1

    .line 85
    check-cast v10, Lcom/minhub/gamehub/keyboard/VirtualKeyboardView;

    .line 86
    .line 87
    if-eqz v10, :cond_6

    .line 88
    .line 89
    new-instance v3, Lk/m1;

    .line 90
    .line 91
    move-object v4, p1

    .line 92
    check-cast v4, Landroid/widget/LinearLayout;

    .line 93
    .line 94
    invoke-direct/range {v3 .. v10}, Lk/m1;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/minhub/gamehub/keyboard/VirtualKeyboardView;)V

    .line 95
    .line 96
    .line 97
    const-string p1, "inflate(...)"

    .line 98
    .line 99
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iput-object v3, p0, Lcom/minhub/gamehub/keyboard/KeyboardActivity;->e:Lk/m1;

    .line 103
    .line 104
    invoke-virtual {p0, v4}, Le/j;->setContentView(Landroid/view/View;)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcom/minhub/gamehub/keyboard/KeyboardActivity;->e:Lk/m1;

    .line 108
    .line 109
    const-string v0, "b"

    .line 110
    .line 111
    if-nez p1, :cond_0

    .line 112
    .line 113
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    move-object p1, v2

    .line 117
    :cond_0
    iget-object p1, p1, Lk/m1;->b:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast p1, Landroid/widget/LinearLayout;

    .line 120
    .line 121
    new-instance v1, LB1/b;

    .line 122
    .line 123
    const/4 v3, 0x7

    .line 124
    invoke-direct {v1, v3, p0}, LB1/b;-><init>(ILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/minhub/gamehub/keyboard/KeyboardActivity;->e:Lk/m1;

    .line 131
    .line 132
    if-nez p1, :cond_1

    .line 133
    .line 134
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    move-object p1, v2

    .line 138
    :cond_1
    iget-object p1, p1, Lk/m1;->g:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast p1, Lcom/minhub/gamehub/keyboard/VirtualKeyboardView;

    .line 141
    .line 142
    new-instance v1, LF1/d;

    .line 143
    .line 144
    const/4 v3, 0x0

    .line 145
    invoke-direct {v1, p0, v3}, LF1/d;-><init>(Lcom/minhub/gamehub/keyboard/KeyboardActivity;I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v1}, Lcom/minhub/gamehub/keyboard/VirtualKeyboardView;->setOnKeyPress(Lkotlin/jvm/functions/Function1;)V

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Lcom/minhub/gamehub/keyboard/KeyboardActivity;->e:Lk/m1;

    .line 152
    .line 153
    if-nez p1, :cond_2

    .line 154
    .line 155
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    move-object p1, v2

    .line 159
    :cond_2
    iget-object p1, p1, Lk/m1;->g:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast p1, Lcom/minhub/gamehub/keyboard/VirtualKeyboardView;

    .line 162
    .line 163
    new-instance v1, LF1/d;

    .line 164
    .line 165
    const/4 v3, 0x1

    .line 166
    invoke-direct {v1, p0, v3}, LF1/d;-><init>(Lcom/minhub/gamehub/keyboard/KeyboardActivity;I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v1}, Lcom/minhub/gamehub/keyboard/VirtualKeyboardView;->setOnKeyRelease(Lkotlin/jvm/functions/Function1;)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lcom/minhub/gamehub/keyboard/KeyboardActivity;->e:Lk/m1;

    .line 173
    .line 174
    if-nez p1, :cond_3

    .line 175
    .line 176
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    move-object p1, v2

    .line 180
    :cond_3
    iget-object p1, p1, Lk/m1;->c:Landroid/view/View;

    .line 181
    .line 182
    check-cast p1, Landroid/widget/ImageButton;

    .line 183
    .line 184
    new-instance v1, LF1/c;

    .line 185
    .line 186
    const/4 v3, 0x0

    .line 187
    invoke-direct {v1, p0, v3}, LF1/c;-><init>(Lcom/minhub/gamehub/keyboard/KeyboardActivity;I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    .line 192
    .line 193
    iget-object p1, p0, Lcom/minhub/gamehub/keyboard/KeyboardActivity;->e:Lk/m1;

    .line 194
    .line 195
    if-nez p1, :cond_4

    .line 196
    .line 197
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    move-object p1, v2

    .line 201
    :cond_4
    iget-object p1, p1, Lk/m1;->e:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast p1, Landroid/widget/Button;

    .line 204
    .line 205
    new-instance v1, LF1/c;

    .line 206
    .line 207
    const/4 v3, 0x1

    .line 208
    invoke-direct {v1, p0, v3}, LF1/c;-><init>(Lcom/minhub/gamehub/keyboard/KeyboardActivity;I)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    .line 213
    .line 214
    iget-object p1, p0, Lcom/minhub/gamehub/keyboard/KeyboardActivity;->e:Lk/m1;

    .line 215
    .line 216
    if-nez p1, :cond_5

    .line 217
    .line 218
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    goto :goto_0

    .line 222
    :cond_5
    move-object v2, p1

    .line 223
    :goto_0
    iget-object p1, v2, Lk/m1;->d:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast p1, Landroid/widget/Button;

    .line 226
    .line 227
    new-instance v0, LF1/c;

    .line 228
    .line 229
    const/4 v1, 0x2

    .line 230
    invoke-direct {v0, p0, v1}, LF1/c;-><init>(Lcom/minhub/gamehub/keyboard/KeyboardActivity;I)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    new-instance v0, Ljava/lang/NullPointerException;

    .line 246
    .line 247
    const-string v1, "Missing required view with ID: "

    .line 248
    .line 249
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    throw v0
.end method
