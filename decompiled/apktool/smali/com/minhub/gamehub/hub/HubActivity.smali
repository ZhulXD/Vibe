.class public final Lcom/minhub/gamehub/hub/HubActivity;
.super LS1/c;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/minhub/gamehub/hub/HubActivity;",
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
        "SMAP\nHubActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HubActivity.kt\ncom/minhub/gamehub/hub/HubActivity\n+ 2 ActivityViewModelLazy.kt\nandroidx/activity/ActivityViewModelLazyKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,301:1\n75#2,13:302\n1#3:315\n161#4,8:316\n161#4,8:324\n*S KotlinDebug\n*F\n+ 1 HubActivity.kt\ncom/minhub/gamehub/hub/HubActivity\n*L\n40#1:302,13\n107#1:316,8\n108#1:324,8\n*E\n"
    }
.end annotation


# static fields
.field public static final synthetic j:I


# instance fields
.field public e:LF/b;

.field public f:J

.field public g:Z

.field public h:J

.field public final i:Landroidx/activity/result/ActivityResultLauncher;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, LS1/c;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LC1/m1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, LC1/m1;-><init>(Lcom/minhub/gamehub/hub/HubActivity;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 10
    .line 11
    const-class v2, LC1/Z0;

    .line 12
    .line 13
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-instance v3, LC1/n1;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-direct {v3, p0, v4}, LC1/n1;-><init>(Lcom/minhub/gamehub/hub/HubActivity;I)V

    .line 21
    .line 22
    .line 23
    new-instance v4, LC1/n1;

    .line 24
    .line 25
    const/4 v5, 0x1

    .line 26
    invoke-direct {v4, p0, v5}, LC1/n1;-><init>(Lcom/minhub/gamehub/hub/HubActivity;I)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 33
    .line 34
    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance v1, LC1/f1;

    .line 38
    .line 39
    invoke-direct {v1, p0}, LC1/f1;-><init>(Lcom/minhub/gamehub/hub/HubActivity;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/minhub/gamehub/hub/HubActivity;->i:Landroidx/activity/result/ActivityResultLauncher;

    .line 47
    .line 48
    return-void
.end method

.method public static final m(Lcom/minhub/gamehub/hub/HubActivity;LA1/m0;)V
    .locals 2

    .line 1
    const-string v0, "result"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, LA1/i0;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    instance-of v1, p1, LA1/h0;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    check-cast p1, LA1/h0;

    .line 16
    .line 17
    iget-object p1, p1, LA1/h0;->b:LA1/d0;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    instance-of v1, p1, LA1/f0;

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    const-string p1, "UNKNOWN_SESSION"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    instance-of v1, p1, LA1/l0;

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    const-string p1, "WAITING_FOR_CLOSE"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    instance-of v1, p1, LA1/j0;

    .line 39
    .line 40
    if-eqz v1, :cond_4

    .line 41
    .line 42
    const-string p1, "RUNTIME_INSTALL_REQUIRED"

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_4
    instance-of v1, p1, LA1/k0;

    .line 46
    .line 47
    if-eqz v1, :cond_5

    .line 48
    .line 49
    const-string p1, "SUPERSEDED"

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_5
    sget-object v1, LA1/g0;->a:LA1/g0;

    .line 53
    .line 54
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_6

    .line 59
    .line 60
    const-string p1, "CANCELLED"

    .line 61
    .line 62
    :goto_0
    const v0, 0x7f12015d

    .line 63
    .line 64
    .line 65
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const/4 v0, 0x1

    .line 74
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_6
    if-eqz v0, :cond_7

    .line 83
    .line 84
    return-void

    .line 85
    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 86
    .line 87
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 88
    .line 89
    .line 90
    throw p0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, LC1/i1;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-direct {v1, p0, v3, v2}, LC1/i1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    invoke-static {v0, v3, v1, v2}, LV1/A;->c(LV1/x;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)LV1/p0;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const v1, 0x7f0c0022

    .line 24
    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-virtual {v0, v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const v1, 0x7f090063

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 39
    .line 40
    if-eqz v4, :cond_4

    .line 41
    .line 42
    const v1, 0x7f090171

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    check-cast v5, Landroid/widget/FrameLayout;

    .line 50
    .line 51
    if-eqz v5, :cond_4

    .line 52
    .line 53
    new-instance v6, LF/b;

    .line 54
    .line 55
    check-cast v0, Landroid/widget/LinearLayout;

    .line 56
    .line 57
    const/16 v7, 0x10

    .line 58
    .line 59
    invoke-direct {v6, v0, v4, v5, v7}, LF/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 60
    .line 61
    .line 62
    const-string v4, "inflate(...)"

    .line 63
    .line 64
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iput-object v6, p0, Lcom/minhub/gamehub/hub/HubActivity;->e:LF/b;

    .line 68
    .line 69
    invoke-virtual {p0, v0}, Le/j;->setContentView(Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    new-instance v0, Ljava/lang/Thread;

    .line 73
    .line 74
    new-instance v4, LC1/e1;

    .line 75
    .line 76
    const/4 v5, 0x0

    .line 77
    invoke-direct {v4, v5}, LC1/e1;-><init>(I)V

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 81
    .line 82
    .line 83
    const/4 v4, 0x1

    .line 84
    invoke-virtual {v0, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 85
    .line 86
    .line 87
    const-string v4, "content-protect-probe"

    .line 88
    .line 89
    invoke-virtual {v0, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/minhub/gamehub/hub/HubActivity;->e:LF/b;

    .line 96
    .line 97
    const-string v4, "b"

    .line 98
    .line 99
    if-nez v0, :cond_0

    .line 100
    .line 101
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    move-object v0, v3

    .line 105
    :cond_0
    iget-object v0, v0, LF/b;->c:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v0, Landroid/widget/LinearLayout;

    .line 108
    .line 109
    new-instance v5, LC1/f1;

    .line 110
    .line 111
    invoke-direct {v5, p0}, LC1/f1;-><init>(Lcom/minhub/gamehub/hub/HubActivity;)V

    .line 112
    .line 113
    .line 114
    invoke-static {v0, v5}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 115
    .line 116
    .line 117
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    sget-object v5, LV1/H;->b:Lc2/c;

    .line 122
    .line 123
    new-instance v6, LC1/O0;

    .line 124
    .line 125
    const/4 v7, 0x2

    .line 126
    invoke-direct {v6, p0, v3, v7}, LC1/O0;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 127
    .line 128
    .line 129
    invoke-static {v0, v5, v6, v7}, LV1/A;->c(LV1/x;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)LV1/p0;

    .line 130
    .line 131
    .line 132
    new-instance v0, LC1/d1;

    .line 133
    .line 134
    invoke-direct {v0}, LC1/d1;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    invoke-virtual {v6}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    const-string v8, "home"

    .line 146
    .line 147
    invoke-virtual {v6, v1, v0, v8}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lcom/minhub/gamehub/hub/HubActivity;->e:LF/b;

    .line 155
    .line 156
    if-nez v0, :cond_1

    .line 157
    .line 158
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    move-object v0, v3

    .line 162
    :cond_1
    iget-object v0, v0, LF/b;->d:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 165
    .line 166
    new-instance v1, LC1/f1;

    .line 167
    .line 168
    invoke-direct {v1, p0}, LC1/f1;-><init>(Lcom/minhub/gamehub/hub/HubActivity;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v1}, LT0/l;->setOnItemSelectedListener(LT0/j;)V

    .line 172
    .line 173
    .line 174
    if-nez p1, :cond_3

    .line 175
    .line 176
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    const-string v0, "extra_game_id"

    .line 181
    .line 182
    const-wide/16 v8, 0x0

    .line 183
    .line 184
    invoke-virtual {p1, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 185
    .line 186
    .line 187
    move-result-wide v0

    .line 188
    cmp-long p1, v0, v8

    .line 189
    .line 190
    if-lez p1, :cond_2

    .line 191
    .line 192
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    new-instance v4, LC1/k1;

    .line 197
    .line 198
    invoke-direct {v4, p0, v0, v1, v3}, LC1/k1;-><init>(Lcom/minhub/gamehub/hub/HubActivity;JLkotlin/coroutines/Continuation;)V

    .line 199
    .line 200
    .line 201
    invoke-static {p1, v3, v4, v2}, LV1/A;->c(LV1/x;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)LV1/p0;

    .line 202
    .line 203
    .line 204
    :cond_2
    new-instance p1, Landroid/os/Handler;

    .line 205
    .line 206
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 211
    .line 212
    .line 213
    new-instance v0, LC1/g1;

    .line 214
    .line 215
    const/4 v1, 0x0

    .line 216
    invoke-direct {v0, v1, p0}, LC1/g1;-><init>(ILjava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    const-wide/16 v1, 0x7d0

    .line 220
    .line 221
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 222
    .line 223
    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 225
    .line 226
    .line 227
    move-result-wide v0

    .line 228
    iput-wide v0, p0, Lcom/minhub/gamehub/hub/HubActivity;->h:J

    .line 229
    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    new-instance v1, LC1/l1;

    .line 239
    .line 240
    const/4 v2, 0x0

    .line 241
    invoke-direct {v1, v2, p1, v3}, LC1/l1;-><init>(ILandroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 242
    .line 243
    .line 244
    invoke-static {v0, v5, v1, v7}, LV1/A;->c(LV1/x;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)LV1/p0;

    .line 245
    .line 246
    .line 247
    :cond_3
    return-void

    .line 248
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    new-instance v0, Ljava/lang/NullPointerException;

    .line 257
    .line 258
    const-string v1, "Missing required view with ID: "

    .line 259
    .line 260
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    throw v0
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 5

    .line 1
    const-string v0, "intent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "extra_game_id"

    .line 13
    .line 14
    const-wide/16 v1, 0x0

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    cmp-long p1, v3, v1

    .line 21
    .line 22
    if-lez p1, :cond_0

    .line 23
    .line 24
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    new-instance v0, LC1/k1;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-direct {v0, p0, v3, v4, v1}, LC1/k1;-><init>(Lcom/minhub/gamehub/hub/HubActivity;JLkotlin/coroutines/Continuation;)V

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x3

    .line 35
    invoke-static {p1, v1, v0, v2}, LV1/A;->c(LV1/x;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)LV1/p0;

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 7

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, LS1/d;->a:Ljava/util/Set;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, LS1/d;->n(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_9

    .line 18
    .line 19
    invoke-static {v0}, LS1/d;->o(Landroid/content/Context;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    goto/16 :goto_1

    .line 26
    .line 27
    :cond_0
    iget-wide v1, p0, Lcom/minhub/gamehub/hub/HubActivity;->f:J

    .line 28
    .line 29
    const-wide/16 v3, 0x0

    .line 30
    .line 31
    cmp-long v1, v1, v3

    .line 32
    .line 33
    if-lez v1, :cond_1

    .line 34
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    iget-wide v5, p0, Lcom/minhub/gamehub/hub/HubActivity;->f:J

    .line 40
    .line 41
    sub-long/2addr v1, v5

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move-wide v1, v3

    .line 44
    :goto_0
    const-wide/16 v5, 0x7530

    .line 45
    .line 46
    cmp-long v1, v1, v5

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    if-lez v1, :cond_2

    .line 50
    .line 51
    const-string v1, "<this>"

    .line 52
    .line 53
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, LS1/d;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const-string v5, "app_lock_enabled"

    .line 61
    .line 62
    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    invoke-static {v0}, LS1/d;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-lez v0, :cond_2

    .line 77
    .line 78
    iput-wide v3, p0, Lcom/minhub/gamehub/hub/HubActivity;->f:J

    .line 79
    .line 80
    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/minhub/gamehub/hub/HubActivity;->g:Z

    .line 82
    .line 83
    const-string v0, "ctx"

    .line 84
    .line 85
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Landroid/content/Intent;

    .line 89
    .line 90
    const-class v1, Lcom/minhub/gamehub/hub/AppLockActivity;

    .line 91
    .line 92
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lcom/minhub/gamehub/hub/HubActivity;->i:Landroidx/activity/result/ActivityResultLauncher;

    .line 96
    .line 97
    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 101
    .line 102
    .line 103
    move-result-wide v0

    .line 104
    iget-wide v3, p0, Lcom/minhub/gamehub/hub/HubActivity;->h:J

    .line 105
    .line 106
    sub-long/2addr v0, v3

    .line 107
    const-wide/32 v3, 0xdbba0

    .line 108
    .line 109
    .line 110
    cmp-long v0, v0, v3

    .line 111
    .line 112
    const/4 v1, 0x0

    .line 113
    if-ltz v0, :cond_3

    .line 114
    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 116
    .line 117
    .line 118
    move-result-wide v3

    .line 119
    iput-wide v3, p0, Lcom/minhub/gamehub/hub/HubActivity;->h:J

    .line 120
    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    sget-object v4, LV1/H;->b:Lc2/c;

    .line 130
    .line 131
    new-instance v5, LC1/l1;

    .line 132
    .line 133
    invoke-direct {v5, v2, v0, v1}, LC1/l1;-><init>(ILandroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 134
    .line 135
    .line 136
    const/4 v0, 0x2

    .line 137
    invoke-static {v3, v4, v5, v0}, LV1/A;->c(LV1/x;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)LV1/p0;

    .line 138
    .line 139
    .line 140
    :cond_3
    invoke-static {p0}, Ly1/B1;->e(LS1/c;)Ly1/A1;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    if-eqz v0, :cond_8

    .line 145
    .line 146
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    const v4, 0x7f0c0049

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    iget-object v3, v0, Ly1/A1;->b:Ljava/lang/String;

    .line 158
    .line 159
    if-nez v3, :cond_4

    .line 160
    .line 161
    const v3, 0x7f120368

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    const-string v4, "getString(...)"

    .line 169
    .line 170
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    :cond_4
    iget-object v4, v0, Ly1/A1;->c:Ljava/lang/String;

    .line 174
    .line 175
    if-eqz v4, :cond_5

    .line 176
    .line 177
    const v5, 0x7f120369

    .line 178
    .line 179
    .line 180
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-virtual {p0, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    const-string v5, "\n\n"

    .line 189
    .line 190
    invoke-static {v4, v5, v3}, Lkotlin/collections/unsigned/a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    if-eqz v4, :cond_5

    .line 195
    .line 196
    move-object v3, v4

    .line 197
    :cond_5
    const v4, 0x7f090396

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    check-cast v4, Landroid/widget/TextView;

    .line 205
    .line 206
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    .line 208
    .line 209
    iget-boolean v0, v0, Ly1/A1;->d:Z

    .line 210
    .line 211
    if-eqz v0, :cond_6

    .line 212
    .line 213
    const v0, 0x7f090395

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    check-cast v0, Landroid/widget/TextView;

    .line 221
    .line 222
    const v4, 0x7f120363

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    .line 231
    .line 232
    :cond_6
    new-instance v0, LO0/b;

    .line 233
    .line 234
    invoke-direct {v0, p0, v2}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 235
    .line 236
    .line 237
    iget-object v2, v0, Le/f;->c:Ljava/lang/Object;

    .line 238
    .line 239
    check-cast v2, Le/b;

    .line 240
    .line 241
    iput-object v1, v2, Le/b;->t:Landroid/view/View;

    .line 242
    .line 243
    invoke-virtual {v0}, LO0/b;->c()Le/g;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    const-string v2, "create(...)"

    .line 248
    .line 249
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    if-eqz v2, :cond_7

    .line 257
    .line 258
    const v4, 0x106000d

    .line 259
    .line 260
    .line 261
    invoke-virtual {v2, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 262
    .line 263
    .line 264
    :cond_7
    const v2, 0x7f0900d0

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    new-instance v4, LC1/j;

    .line 272
    .line 273
    const/4 v5, 0x4

    .line 274
    invoke-direct {v4, v5, p0, v3}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    .line 279
    .line 280
    const v2, 0x7f0900cf

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    new-instance v2, LC1/z;

    .line 288
    .line 289
    invoke-direct {v2, v0, v5}, LC1/z;-><init>(Le/g;I)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 296
    .line 297
    .line 298
    :cond_8
    return-void

    .line 299
    :cond_9
    :goto_1
    invoke-static {v0}, LS1/d;->a(Landroid/content/Context;)V

    .line 300
    .line 301
    .line 302
    new-instance v0, Landroid/content/Intent;

    .line 303
    .line 304
    const-class v1, Lcom/minhub/gamehub/hub/LoginActivity;

    .line 305
    .line 306
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 307
    .line 308
    .line 309
    const v1, 0x10008000

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 313
    .line 314
    .line 315
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 316
    .line 317
    .line 318
    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Le/j;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/minhub/gamehub/hub/HubActivity;->g:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iput-wide v0, p0, Lcom/minhub/gamehub/hub/HubActivity;->f:J

    .line 13
    .line 14
    :cond_0
    return-void
.end method
