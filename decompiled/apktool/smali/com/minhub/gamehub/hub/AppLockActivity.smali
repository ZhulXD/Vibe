.class public final Lcom/minhub/gamehub/hub/AppLockActivity;
.super LS1/c;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/minhub/gamehub/hub/AppLockActivity;",
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


# static fields
.field public static final synthetic i:I


# instance fields
.field public e:Lw1/b;

.field public f:LC1/V1;

.field public final g:Ljava/lang/StringBuilder;

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LS1/c;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/minhub/gamehub/hub/AppLockActivity;->g:Ljava/lang/StringBuilder;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final m()V
    .locals 6

    .line 1
    new-instance v0, LC1/X;

    .line 2
    .line 3
    invoke-direct {v0, p0}, LC1/X;-><init>(Lcom/minhub/gamehub/hub/AppLockActivity;)V

    .line 4
    .line 5
    .line 6
    const v1, 0x7f120029

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const v2, 0x7f120028

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const v3, 0x7f120034

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-nez v4, :cond_b

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-static {v4}, La/a;->t(I)Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_a

    .line 39
    .line 40
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_9

    .line 45
    .line 46
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    new-instance v4, LF/b;

    .line 50
    .line 51
    const/4 v5, 0x3

    .line 52
    invoke-direct {v4, v1, v2, v3, v5}, LF/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 53
    .line 54
    .line 55
    const-string v1, "build(...)"

    .line 56
    .line 57
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {p0}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-eqz v1, :cond_8

    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    new-instance v3, Landroidx/lifecycle/ViewModelProvider;

    .line 71
    .line 72
    invoke-direct {v3, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 73
    .line 74
    .line 75
    const-class v5, Landroidx/biometric/w;

    .line 76
    .line 77
    invoke-virtual {v3, v5}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    check-cast v3, Landroidx/biometric/w;

    .line 82
    .line 83
    if-eqz v3, :cond_0

    .line 84
    .line 85
    iput-object v1, v3, Landroidx/biometric/w;->a:Ljava/util/concurrent/Executor;

    .line 86
    .line 87
    iput-object v0, v3, Landroidx/biometric/w;->b:Lcom/bumptech/glide/c;

    .line 88
    .line 89
    :cond_0
    const-string v0, "BiometricPromptCompat"

    .line 90
    .line 91
    if-nez v2, :cond_1

    .line 92
    .line 93
    const-string v1, "Unable to start authentication. Client fragment manager was null."

    .line 94
    .line 95
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_1
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_2

    .line 104
    .line 105
    const-string v1, "Unable to start authentication. Called after onSaveInstanceState()."

    .line 106
    .line 107
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_2
    const-string v0, "androidx.biometric.BiometricFragment"

    .line 112
    .line 113
    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    check-cast v1, Landroidx/biometric/p;

    .line 118
    .line 119
    if-nez v1, :cond_3

    .line 120
    .line 121
    new-instance v1, Landroidx/biometric/p;

    .line 122
    .line 123
    invoke-direct {v1}, Landroidx/biometric/p;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-virtual {v3, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 138
    .line 139
    .line 140
    :cond_3
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    if-nez v0, :cond_4

    .line 145
    .line 146
    const-string v0, "BiometricFragment"

    .line 147
    .line 148
    const-string v1, "Not launching prompt. Client activity was null."

    .line 149
    .line 150
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :cond_4
    iget-object v2, v1, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 155
    .line 156
    iput-object v4, v2, Landroidx/biometric/w;->c:LF/b;

    .line 157
    .line 158
    const/4 v3, 0x0

    .line 159
    iput-object v3, v2, Landroidx/biometric/w;->d:LN1/w;

    .line 160
    .line 161
    invoke-virtual {v1}, Landroidx/biometric/p;->d()Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-eqz v2, :cond_5

    .line 166
    .line 167
    iget-object v2, v1, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 168
    .line 169
    const v3, 0x7f1200b7

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    iput-object v3, v2, Landroidx/biometric/w;->h:Ljava/lang/String;

    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_5
    iget-object v2, v1, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 180
    .line 181
    iput-object v3, v2, Landroidx/biometric/w;->h:Ljava/lang/String;

    .line 182
    .line 183
    :goto_0
    invoke-virtual {v1}, Landroidx/biometric/p;->d()Z

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    if-eqz v2, :cond_6

    .line 188
    .line 189
    new-instance v2, LF/b;

    .line 190
    .line 191
    new-instance v3, LA1/h;

    .line 192
    .line 193
    const/4 v4, 0x1

    .line 194
    invoke-direct {v3, v0, v4}, LA1/h;-><init>(Landroid/content/Context;I)V

    .line 195
    .line 196
    .line 197
    invoke-direct {v2, v3}, LF/b;-><init>(LA1/h;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2}, LF/b;->c()I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    if-eqz v0, :cond_6

    .line 205
    .line 206
    iget-object v0, v1, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 207
    .line 208
    const/4 v2, 0x1

    .line 209
    iput-boolean v2, v0, Landroidx/biometric/w;->k:Z

    .line 210
    .line 211
    invoke-virtual {v1}, Landroidx/biometric/p;->f()V

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :cond_6
    iget-object v0, v1, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 216
    .line 217
    iget-boolean v0, v0, Landroidx/biometric/w;->m:Z

    .line 218
    .line 219
    if-eqz v0, :cond_7

    .line 220
    .line 221
    iget-object v0, v1, Landroidx/biometric/p;->b:Landroid/os/Handler;

    .line 222
    .line 223
    new-instance v2, Landroidx/biometric/o;

    .line 224
    .line 225
    invoke-direct {v2, v1}, Landroidx/biometric/o;-><init>(Landroidx/biometric/p;)V

    .line 226
    .line 227
    .line 228
    const-wide/16 v3, 0x258

    .line 229
    .line 230
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 231
    .line 232
    .line 233
    return-void

    .line 234
    :cond_7
    invoke-virtual {v1}, Landroidx/biometric/p;->k()V

    .line 235
    .line 236
    .line 237
    return-void

    .line 238
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 239
    .line 240
    const-string v1, "Executor must not be null."

    .line 241
    .line 242
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    throw v0

    .line 246
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 247
    .line 248
    const-string v1, "Negative text must be set and non-empty."

    .line 249
    .line 250
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    throw v0

    .line 254
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 255
    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    const-string v2, "Authenticator combination is unsupported on API "

    .line 259
    .line 260
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 264
    .line 265
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    const-string v2, ": "

    .line 269
    .line 270
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    throw v0

    .line 288
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 289
    .line 290
    const-string v1, "Title must be set and non-empty."

    .line 291
    .line 292
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    throw v0
.end method

.method public final n()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/minhub/gamehub/hub/AppLockActivity;->h:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/minhub/gamehub/hub/AppLockActivity;->h:Z

    .line 14
    .line 15
    const/4 v0, -0x1

    .line 16
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 20
    .line 21
    .line 22
    const/high16 v0, 0x10a0000

    .line 23
    .line 24
    const v1, 0x10a0001

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public final o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/AppLockActivity;->f:LC1/V1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "ui"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/minhub/gamehub/hub/AppLockActivity;->g:Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, LC1/V1;->f(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const v2, 0x7f0c001d

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const v2, 0x7f090065

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    move-object v8, v5

    .line 27
    check-cast v8, Landroid/widget/Button;

    .line 28
    .line 29
    if-eqz v8, :cond_1c

    .line 30
    .line 31
    const v2, 0x7f090066

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    move-object v9, v5

    .line 39
    check-cast v9, Landroid/widget/Button;

    .line 40
    .line 41
    if-eqz v9, :cond_1c

    .line 42
    .line 43
    const v2, 0x7f090067

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    move-object v10, v5

    .line 51
    check-cast v10, Landroid/widget/Button;

    .line 52
    .line 53
    if-eqz v10, :cond_1c

    .line 54
    .line 55
    const v2, 0x7f090068

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    move-object v11, v5

    .line 63
    check-cast v11, Landroid/widget/Button;

    .line 64
    .line 65
    if-eqz v11, :cond_1c

    .line 66
    .line 67
    const v2, 0x7f090069

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    move-object v12, v5

    .line 75
    check-cast v12, Landroid/widget/Button;

    .line 76
    .line 77
    if-eqz v12, :cond_1c

    .line 78
    .line 79
    const v2, 0x7f09006a

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    move-object v13, v5

    .line 87
    check-cast v13, Landroid/widget/Button;

    .line 88
    .line 89
    if-eqz v13, :cond_1c

    .line 90
    .line 91
    const v2, 0x7f09006b

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    move-object v14, v5

    .line 99
    check-cast v14, Landroid/widget/Button;

    .line 100
    .line 101
    if-eqz v14, :cond_1c

    .line 102
    .line 103
    const v2, 0x7f09006c

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    move-object v15, v5

    .line 111
    check-cast v15, Landroid/widget/Button;

    .line 112
    .line 113
    if-eqz v15, :cond_1c

    .line 114
    .line 115
    const v2, 0x7f09006d

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    move-object/from16 v16, v5

    .line 123
    .line 124
    check-cast v16, Landroid/widget/Button;

    .line 125
    .line 126
    if-eqz v16, :cond_1c

    .line 127
    .line 128
    const v2, 0x7f09006e

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    move-object/from16 v17, v5

    .line 136
    .line 137
    check-cast v17, Landroid/widget/Button;

    .line 138
    .line 139
    if-eqz v17, :cond_1c

    .line 140
    .line 141
    const v2, 0x7f09007a

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    move-object/from16 v18, v5

    .line 149
    .line 150
    check-cast v18, Landroid/widget/ImageButton;

    .line 151
    .line 152
    if-eqz v18, :cond_1c

    .line 153
    .line 154
    const v2, 0x7f090097

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    move-object/from16 v19, v5

    .line 162
    .line 163
    check-cast v19, Landroid/widget/ImageButton;

    .line 164
    .line 165
    if-eqz v19, :cond_1c

    .line 166
    .line 167
    const v2, 0x7f090137

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    move-object/from16 v20, v5

    .line 175
    .line 176
    check-cast v20, Landroid/widget/ImageView;

    .line 177
    .line 178
    if-eqz v20, :cond_1c

    .line 179
    .line 180
    const v2, 0x7f090138

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    move-object/from16 v21, v5

    .line 188
    .line 189
    check-cast v21, Landroid/widget/ImageView;

    .line 190
    .line 191
    if-eqz v21, :cond_1c

    .line 192
    .line 193
    const v2, 0x7f090139

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    move-object/from16 v22, v5

    .line 201
    .line 202
    check-cast v22, Landroid/widget/ImageView;

    .line 203
    .line 204
    if-eqz v22, :cond_1c

    .line 205
    .line 206
    const v2, 0x7f09013a

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    move-object/from16 v23, v5

    .line 214
    .line 215
    check-cast v23, Landroid/widget/ImageView;

    .line 216
    .line 217
    if-eqz v23, :cond_1c

    .line 218
    .line 219
    const v2, 0x7f09013c

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    move-object/from16 v24, v5

    .line 227
    .line 228
    check-cast v24, Landroid/widget/LinearLayout;

    .line 229
    .line 230
    if-eqz v24, :cond_1c

    .line 231
    .line 232
    const v2, 0x7f09025c

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    move-object/from16 v25, v5

    .line 240
    .line 241
    check-cast v25, Landroid/widget/LinearLayout;

    .line 242
    .line 243
    if-eqz v25, :cond_1c

    .line 244
    .line 245
    const v2, 0x7f090368

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    move-object/from16 v26, v5

    .line 253
    .line 254
    check-cast v26, Landroid/widget/TextView;

    .line 255
    .line 256
    if-eqz v26, :cond_1c

    .line 257
    .line 258
    const v2, 0x7f090383

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    move-object/from16 v27, v5

    .line 266
    .line 267
    check-cast v27, Landroid/widget/TextView;

    .line 268
    .line 269
    if-eqz v27, :cond_1c

    .line 270
    .line 271
    new-instance v6, Lw1/b;

    .line 272
    .line 273
    move-object v7, v1

    .line 274
    check-cast v7, Landroid/widget/LinearLayout;

    .line 275
    .line 276
    invoke-direct/range {v6 .. v27}, Lw1/b;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 277
    .line 278
    .line 279
    const-string v1, "inflate(...)"

    .line 280
    .line 281
    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    iput-object v6, v0, Lcom/minhub/gamehub/hub/AppLockActivity;->e:Lw1/b;

    .line 285
    .line 286
    invoke-virtual {v0, v7}, Le/j;->setContentView(Landroid/view/View;)V

    .line 287
    .line 288
    .line 289
    new-instance v8, LC1/V1;

    .line 290
    .line 291
    iget-object v1, v0, Lcom/minhub/gamehub/hub/AppLockActivity;->e:Lw1/b;

    .line 292
    .line 293
    const-string v2, "b"

    .line 294
    .line 295
    if-nez v1, :cond_0

    .line 296
    .line 297
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    move-object v1, v3

    .line 301
    :cond_0
    iget-object v9, v1, Lw1/b;->s:Landroid/widget/TextView;

    .line 302
    .line 303
    const-string v1, "tvLockTitle"

    .line 304
    .line 305
    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    iget-object v1, v0, Lcom/minhub/gamehub/hub/AppLockActivity;->e:Lw1/b;

    .line 309
    .line 310
    if-nez v1, :cond_1

    .line 311
    .line 312
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    move-object v1, v3

    .line 316
    :cond_1
    iget-object v10, v1, Lw1/b;->q:Landroid/widget/LinearLayout;

    .line 317
    .line 318
    const-string v1, "dotsRow"

    .line 319
    .line 320
    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    iget-object v1, v0, Lcom/minhub/gamehub/hub/AppLockActivity;->e:Lw1/b;

    .line 324
    .line 325
    if-nez v1, :cond_2

    .line 326
    .line 327
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    move-object v1, v3

    .line 331
    :cond_2
    iget-object v1, v1, Lw1/b;->m:Landroid/widget/ImageView;

    .line 332
    .line 333
    iget-object v5, v0, Lcom/minhub/gamehub/hub/AppLockActivity;->e:Lw1/b;

    .line 334
    .line 335
    if-nez v5, :cond_3

    .line 336
    .line 337
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    move-object v5, v3

    .line 341
    :cond_3
    iget-object v5, v5, Lw1/b;->n:Landroid/widget/ImageView;

    .line 342
    .line 343
    iget-object v6, v0, Lcom/minhub/gamehub/hub/AppLockActivity;->e:Lw1/b;

    .line 344
    .line 345
    if-nez v6, :cond_4

    .line 346
    .line 347
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    move-object v6, v3

    .line 351
    :cond_4
    iget-object v6, v6, Lw1/b;->o:Landroid/widget/ImageView;

    .line 352
    .line 353
    iget-object v7, v0, Lcom/minhub/gamehub/hub/AppLockActivity;->e:Lw1/b;

    .line 354
    .line 355
    if-nez v7, :cond_5

    .line 356
    .line 357
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    move-object v7, v3

    .line 361
    :cond_5
    iget-object v7, v7, Lw1/b;->p:Landroid/widget/ImageView;

    .line 362
    .line 363
    filled-new-array {v1, v5, v6, v7}, [Landroid/widget/ImageView;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 368
    .line 369
    .line 370
    move-result-object v11

    .line 371
    iget-object v1, v0, Lcom/minhub/gamehub/hub/AppLockActivity;->e:Lw1/b;

    .line 372
    .line 373
    if-nez v1, :cond_6

    .line 374
    .line 375
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    move-object v1, v3

    .line 379
    :cond_6
    iget-object v12, v1, Lw1/b;->t:Landroid/widget/TextView;

    .line 380
    .line 381
    const-string v1, "tvPinHint"

    .line 382
    .line 383
    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    iget-object v1, v0, Lcom/minhub/gamehub/hub/AppLockActivity;->e:Lw1/b;

    .line 387
    .line 388
    if-nez v1, :cond_7

    .line 389
    .line 390
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    move-object v1, v3

    .line 394
    :cond_7
    iget-object v13, v1, Lw1/b;->r:Landroid/widget/LinearLayout;

    .line 395
    .line 396
    const-string v1, "pinPad"

    .line 397
    .line 398
    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    invoke-direct/range {v8 .. v13}, LC1/V1;-><init>(Landroid/widget/TextView;Landroid/widget/LinearLayout;Ljava/util/List;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V

    .line 402
    .line 403
    .line 404
    iput-object v8, v0, Lcom/minhub/gamehub/hub/AppLockActivity;->f:LC1/V1;

    .line 405
    .line 406
    iget-object v1, v0, Lcom/minhub/gamehub/hub/AppLockActivity;->e:Lw1/b;

    .line 407
    .line 408
    if-nez v1, :cond_8

    .line 409
    .line 410
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    move-object v1, v3

    .line 414
    :cond_8
    iget-object v9, v1, Lw1/b;->a:Landroid/widget/Button;

    .line 415
    .line 416
    iget-object v1, v0, Lcom/minhub/gamehub/hub/AppLockActivity;->e:Lw1/b;

    .line 417
    .line 418
    if-nez v1, :cond_9

    .line 419
    .line 420
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    move-object v1, v3

    .line 424
    :cond_9
    iget-object v10, v1, Lw1/b;->b:Landroid/widget/Button;

    .line 425
    .line 426
    iget-object v1, v0, Lcom/minhub/gamehub/hub/AppLockActivity;->e:Lw1/b;

    .line 427
    .line 428
    if-nez v1, :cond_a

    .line 429
    .line 430
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    move-object v1, v3

    .line 434
    :cond_a
    iget-object v11, v1, Lw1/b;->c:Landroid/widget/Button;

    .line 435
    .line 436
    iget-object v1, v0, Lcom/minhub/gamehub/hub/AppLockActivity;->e:Lw1/b;

    .line 437
    .line 438
    if-nez v1, :cond_b

    .line 439
    .line 440
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    move-object v1, v3

    .line 444
    :cond_b
    iget-object v12, v1, Lw1/b;->d:Landroid/widget/Button;

    .line 445
    .line 446
    iget-object v1, v0, Lcom/minhub/gamehub/hub/AppLockActivity;->e:Lw1/b;

    .line 447
    .line 448
    if-nez v1, :cond_c

    .line 449
    .line 450
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    move-object v1, v3

    .line 454
    :cond_c
    iget-object v13, v1, Lw1/b;->e:Landroid/widget/Button;

    .line 455
    .line 456
    iget-object v1, v0, Lcom/minhub/gamehub/hub/AppLockActivity;->e:Lw1/b;

    .line 457
    .line 458
    if-nez v1, :cond_d

    .line 459
    .line 460
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    move-object v1, v3

    .line 464
    :cond_d
    iget-object v14, v1, Lw1/b;->f:Landroid/widget/Button;

    .line 465
    .line 466
    iget-object v1, v0, Lcom/minhub/gamehub/hub/AppLockActivity;->e:Lw1/b;

    .line 467
    .line 468
    if-nez v1, :cond_e

    .line 469
    .line 470
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    move-object v1, v3

    .line 474
    :cond_e
    iget-object v15, v1, Lw1/b;->g:Landroid/widget/Button;

    .line 475
    .line 476
    iget-object v1, v0, Lcom/minhub/gamehub/hub/AppLockActivity;->e:Lw1/b;

    .line 477
    .line 478
    if-nez v1, :cond_f

    .line 479
    .line 480
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    move-object v1, v3

    .line 484
    :cond_f
    iget-object v1, v1, Lw1/b;->h:Landroid/widget/Button;

    .line 485
    .line 486
    iget-object v5, v0, Lcom/minhub/gamehub/hub/AppLockActivity;->e:Lw1/b;

    .line 487
    .line 488
    if-nez v5, :cond_10

    .line 489
    .line 490
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    move-object v5, v3

    .line 494
    :cond_10
    iget-object v5, v5, Lw1/b;->i:Landroid/widget/Button;

    .line 495
    .line 496
    iget-object v6, v0, Lcom/minhub/gamehub/hub/AppLockActivity;->e:Lw1/b;

    .line 497
    .line 498
    if-nez v6, :cond_11

    .line 499
    .line 500
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    move-object v6, v3

    .line 504
    :cond_11
    iget-object v6, v6, Lw1/b;->j:Landroid/widget/Button;

    .line 505
    .line 506
    move-object/from16 v16, v1

    .line 507
    .line 508
    move-object/from16 v17, v5

    .line 509
    .line 510
    move-object/from16 v18, v6

    .line 511
    .line 512
    filled-new-array/range {v9 .. v18}, [Landroid/widget/Button;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 517
    .line 518
    .line 519
    move-result-object v1

    .line 520
    new-instance v5, LA1/p;

    .line 521
    .line 522
    const/4 v6, 0x4

    .line 523
    invoke-direct {v5, v6, v0}, LA1/p;-><init>(ILjava/lang/Object;)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v8, v1, v5}, LC1/V1;->b(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 527
    .line 528
    .line 529
    iget-object v1, v0, Lcom/minhub/gamehub/hub/AppLockActivity;->f:LC1/V1;

    .line 530
    .line 531
    const-string v5, "ui"

    .line 532
    .line 533
    if-nez v1, :cond_12

    .line 534
    .line 535
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    move-object v1, v3

    .line 539
    :cond_12
    iget-object v7, v0, Lcom/minhub/gamehub/hub/AppLockActivity;->e:Lw1/b;

    .line 540
    .line 541
    if-nez v7, :cond_13

    .line 542
    .line 543
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    move-object v7, v3

    .line 547
    :cond_13
    iget-object v7, v7, Lw1/b;->k:Landroid/widget/ImageButton;

    .line 548
    .line 549
    const-string v8, "btnBackspace"

    .line 550
    .line 551
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    new-instance v8, LC1/W;

    .line 555
    .line 556
    invoke-direct {v8, v0, v4}, LC1/W;-><init>(Lcom/minhub/gamehub/hub/AppLockActivity;I)V

    .line 557
    .line 558
    .line 559
    new-instance v9, LC1/W;

    .line 560
    .line 561
    const/4 v10, 0x1

    .line 562
    invoke-direct {v9, v0, v10}, LC1/W;-><init>(Lcom/minhub/gamehub/hub/AppLockActivity;I)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v1, v7, v8, v9}, LC1/V1;->a(Landroid/widget/ImageButton;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/AppLockActivity;->o()V

    .line 569
    .line 570
    .line 571
    if-nez p1, :cond_15

    .line 572
    .line 573
    iget-object v1, v0, Lcom/minhub/gamehub/hub/AppLockActivity;->f:LC1/V1;

    .line 574
    .line 575
    if-nez v1, :cond_14

    .line 576
    .line 577
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    move-object v1, v3

    .line 581
    :cond_14
    invoke-virtual {v1}, LC1/V1;->e()V

    .line 582
    .line 583
    .line 584
    :cond_15
    sget-object v1, LS1/d;->a:Ljava/util/Set;

    .line 585
    .line 586
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 587
    .line 588
    .line 589
    move-result-object v1

    .line 590
    const-string v7, "getApplicationContext(...)"

    .line 591
    .line 592
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 593
    .line 594
    .line 595
    const-string v7, "<this>"

    .line 596
    .line 597
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    invoke-static {v1}, LS1/d;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 601
    .line 602
    .line 603
    move-result-object v1

    .line 604
    const-string v7, "app_lock_biometric"

    .line 605
    .line 606
    invoke-interface {v1, v7, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 607
    .line 608
    .line 609
    move-result v1

    .line 610
    if-eqz v1, :cond_1a

    .line 611
    .line 612
    new-instance v1, LF/b;

    .line 613
    .line 614
    new-instance v7, LA1/h;

    .line 615
    .line 616
    invoke-direct {v7, v0, v10}, LA1/h;-><init>(Landroid/content/Context;I)V

    .line 617
    .line 618
    .line 619
    invoke-direct {v1, v7}, LF/b;-><init>(LA1/h;)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {v1}, LF/b;->c()I

    .line 623
    .line 624
    .line 625
    move-result v1

    .line 626
    if-nez v1, :cond_1a

    .line 627
    .line 628
    iget-object v1, v0, Lcom/minhub/gamehub/hub/AppLockActivity;->e:Lw1/b;

    .line 629
    .line 630
    if-nez v1, :cond_16

    .line 631
    .line 632
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 633
    .line 634
    .line 635
    move-object v1, v3

    .line 636
    :cond_16
    iget-object v1, v1, Lw1/b;->l:Landroid/widget/ImageButton;

    .line 637
    .line 638
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 639
    .line 640
    .line 641
    iget-object v1, v0, Lcom/minhub/gamehub/hub/AppLockActivity;->f:LC1/V1;

    .line 642
    .line 643
    if-nez v1, :cond_17

    .line 644
    .line 645
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    move-object v1, v3

    .line 649
    :cond_17
    iget-object v5, v0, Lcom/minhub/gamehub/hub/AppLockActivity;->e:Lw1/b;

    .line 650
    .line 651
    if-nez v5, :cond_18

    .line 652
    .line 653
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 654
    .line 655
    .line 656
    move-object v5, v3

    .line 657
    :cond_18
    iget-object v5, v5, Lw1/b;->l:Landroid/widget/ImageButton;

    .line 658
    .line 659
    const-string v6, "btnFingerprint"

    .line 660
    .line 661
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 662
    .line 663
    .line 664
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 665
    .line 666
    .line 667
    const-string v1, "v"

    .line 668
    .line 669
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 670
    .line 671
    .line 672
    new-instance v1, LC1/S1;

    .line 673
    .line 674
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 675
    .line 676
    .line 677
    invoke-virtual {v5, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 678
    .line 679
    .line 680
    iget-object v1, v0, Lcom/minhub/gamehub/hub/AppLockActivity;->e:Lw1/b;

    .line 681
    .line 682
    if-nez v1, :cond_19

    .line 683
    .line 684
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 685
    .line 686
    .line 687
    goto :goto_0

    .line 688
    :cond_19
    move-object v3, v1

    .line 689
    :goto_0
    iget-object v1, v3, Lw1/b;->l:Landroid/widget/ImageButton;

    .line 690
    .line 691
    new-instance v2, LC1/V;

    .line 692
    .line 693
    invoke-direct {v2, v4, v0}, LC1/V;-><init>(ILjava/lang/Object;)V

    .line 694
    .line 695
    .line 696
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 697
    .line 698
    .line 699
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/AppLockActivity;->m()V

    .line 700
    .line 701
    .line 702
    return-void

    .line 703
    :cond_1a
    iget-object v1, v0, Lcom/minhub/gamehub/hub/AppLockActivity;->e:Lw1/b;

    .line 704
    .line 705
    if-nez v1, :cond_1b

    .line 706
    .line 707
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    goto :goto_1

    .line 711
    :cond_1b
    move-object v3, v1

    .line 712
    :goto_1
    iget-object v1, v3, Lw1/b;->l:Landroid/widget/ImageButton;

    .line 713
    .line 714
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 715
    .line 716
    .line 717
    return-void

    .line 718
    :cond_1c
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 719
    .line 720
    .line 721
    move-result-object v1

    .line 722
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v1

    .line 726
    new-instance v2, Ljava/lang/NullPointerException;

    .line 727
    .line 728
    const-string v3, "Missing required view with ID: "

    .line 729
    .line 730
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object v1

    .line 734
    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    throw v2
.end method
