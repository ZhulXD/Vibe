.class public final Lcom/minhub/gamehub/hub/LoginActivity;
.super LS1/c;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/minhub/gamehub/hub/LoginActivity;",
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
        "SMAP\nLoginActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginActivity.kt\ncom/minhub/gamehub/hub/LoginActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,662:1\n1#2:663\n13537#3,3:664\n1088#4,2:667\n*S KotlinDebug\n*F\n+ 1 LoginActivity.kt\ncom/minhub/gamehub/hub/LoginActivity\n*L\n160#1:664,3\n481#1:667,2\n*E\n"
    }
.end annotation


# static fields
.field public static final synthetic l:I


# instance fields
.field public e:LF/b;

.field public f:Le/g;

.field public g:Z

.field public h:J

.field public final i:Landroidx/activity/result/ActivityResultLauncher;

.field public final j:[Ljava/lang/String;

.field public final k:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, LS1/c;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, LB1/b;

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    invoke-direct {v1, v2, p0}, LB1/b;-><init>(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/minhub/gamehub/hub/LoginActivity;->i:Landroidx/activity/result/ActivityResultLauncher;

    .line 20
    .line 21
    const-string v5, "ja"

    .line 22
    .line 23
    const-string v6, "ko"

    .line 24
    .line 25
    const-string v1, "vi"

    .line 26
    .line 27
    const-string v2, "en"

    .line 28
    .line 29
    const-string v3, "in"

    .line 30
    .line 31
    const-string v4, "zh"

    .line 32
    .line 33
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/minhub/gamehub/hub/LoginActivity;->j:[Ljava/lang/String;

    .line 38
    .line 39
    const-string v5, "\ud83c\uddef\ud83c\uddf5 \u65e5\u672c\u8a9e"

    .line 40
    .line 41
    const-string v6, "\ud83c\uddf0\ud83c\uddf7 \ud55c\uad6d\uc5b4"

    .line 42
    .line 43
    const-string v1, "\ud83c\uddfb\ud83c\uddf3 Ti\u1ebfng Vi\u1ec7t"

    .line 44
    .line 45
    const-string v2, "\ud83c\uddec\ud83c\udde7 English"

    .line 46
    .line 47
    const-string v3, "\ud83c\uddee\ud83c\udde9 Indonesia"

    .line 48
    .line 49
    const-string v4, "\ud83c\udde8\ud83c\uddf3 \u4e2d\u6587"

    .line 50
    .line 51
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/minhub/gamehub/hub/LoginActivity;->k:[Ljava/lang/String;

    .line 56
    .line 57
    return-void
.end method

.method public static n(Landroid/content/Intent;)J
    .locals 3

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "minhub"

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "game"

    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const-string v0, "id"

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    if-eqz p0, :cond_3

    .line 44
    .line 45
    invoke-static {p0}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    if-eqz p0, :cond_3

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    return-wide v0

    .line 56
    :cond_3
    :goto_0
    const-wide/16 v0, 0x0

    .line 57
    .line 58
    return-wide v0
.end method


# virtual methods
.method public final m()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_c

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_5

    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "yunbierdika"

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-static {v1, v2, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v4, "patreon-callback"

    .line 34
    .line 35
    invoke-static {v1, v4, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    move v1, v3

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move v1, v2

    .line 44
    :goto_0
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    const-string v5, "https"

    .line 49
    .line 50
    invoke-static {v4, v5, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    const-string v5, "h-game18.xyz"

    .line 61
    .line 62
    invoke-static {v4, v5, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_2

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    const-string v5, "/patreon-callback.php"

    .line 73
    .line 74
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_2

    .line 79
    .line 80
    move v4, v3

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    move v4, v2

    .line 83
    :goto_1
    if-nez v1, :cond_3

    .line 84
    .line 85
    if-eqz v4, :cond_c

    .line 86
    .line 87
    :cond_3
    iget-boolean v1, p0, Lcom/minhub/gamehub/hub/LoginActivity;->g:Z

    .line 88
    .line 89
    if-eqz v1, :cond_4

    .line 90
    .line 91
    goto/16 :goto_5

    .line 92
    .line 93
    :cond_4
    iput-boolean v3, p0, Lcom/minhub/gamehub/hub/LoginActivity;->g:Z

    .line 94
    .line 95
    const-string v1, "error"

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    if-eqz v1, :cond_8

    .line 102
    .line 103
    const-string v2, "error_description"

    .line 104
    .line 105
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    if-nez v0, :cond_5

    .line 110
    .line 111
    move-object v0, v1

    .line 112
    :cond_5
    const-string v2, "not eligible"

    .line 113
    .line 114
    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-nez v2, :cond_7

    .line 119
    .line 120
    const-string v2, "Minimum pledge"

    .line 121
    .line 122
    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-nez v1, :cond_7

    .line 127
    .line 128
    const-string v1, "does not meet"

    .line 129
    .line 130
    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_6

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_6
    const-string v1, "Patreon login failed: "

    .line 138
    .line 139
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    goto :goto_3

    .line 144
    :cond_7
    :goto_2
    const v0, 0x7f120286

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    :goto_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, v0}, Lcom/minhub/gamehub/hub/LoginActivity;->t(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, v3}, Lcom/minhub/gamehub/hub/LoginActivity;->r(Z)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_8
    const-string v1, "code"

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    if-eqz v0, :cond_b

    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-nez v1, :cond_9

    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_9
    iget-object v1, p0, Lcom/minhub/gamehub/hub/LoginActivity;->f:Le/g;

    .line 177
    .line 178
    if-eqz v1, :cond_a

    .line 179
    .line 180
    invoke-virtual {v1}, Le/D;->dismiss()V

    .line 181
    .line 182
    .line 183
    :cond_a
    new-instance v1, LO0/b;

    .line 184
    .line 185
    invoke-direct {v1, p0, v2}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 186
    .line 187
    .line 188
    iget-object v3, v1, Le/f;->c:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast v3, Le/b;

    .line 191
    .line 192
    const-string v4, "Authenticating with Patreon\u2026"

    .line 193
    .line 194
    iput-object v4, v3, Le/b;->f:Ljava/lang/CharSequence;

    .line 195
    .line 196
    iput-boolean v2, v3, Le/b;->m:Z

    .line 197
    .line 198
    invoke-virtual {v1}, LO0/b;->c()Le/g;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    iput-object v1, p0, Lcom/minhub/gamehub/hub/LoginActivity;->f:Le/g;

    .line 203
    .line 204
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 205
    .line 206
    .line 207
    new-instance v1, Ljava/lang/Thread;

    .line 208
    .line 209
    new-instance v2, LC1/y1;

    .line 210
    .line 211
    const/4 v3, 0x1

    .line 212
    invoke-direct {v2, p0, v0, v3}, LC1/y1;-><init>(Lcom/minhub/gamehub/hub/LoginActivity;Ljava/lang/String;I)V

    .line 213
    .line 214
    .line 215
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 216
    .line 217
    .line 218
    const-string v0, "patreon-redeem"

    .line 219
    .line 220
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 224
    .line 225
    .line 226
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 227
    .line 228
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 233
    .line 234
    .line 235
    const/4 v1, 0x0

    .line 236
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .line 241
    .line 242
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    const-string v1, "LoginActivity"

    .line 245
    .line 246
    const-string v2, "Unable to clear intent data"

    .line 247
    .line 248
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    .line 250
    .line 251
    return-void

    .line 252
    :cond_b
    :goto_4
    const-string v0, "Patreon login failed: missing authorization code"

    .line 253
    .line 254
    invoke-virtual {p0, v0}, Lcom/minhub/gamehub/hub/LoginActivity;->t(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0, v3}, Lcom/minhub/gamehub/hub/LoginActivity;->r(Z)V

    .line 258
    .line 259
    .line 260
    :cond_c
    :goto_5
    return-void
.end method

.method public final o()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, LS1/d;->a:Ljava/util/Set;

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "<this>"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, LS1/d;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "app_lock_enabled"

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-static {v0}, LS1/d;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-lez v0, :cond_0

    .line 37
    .line 38
    const-string v0, "ctx"

    .line 39
    .line 40
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Landroid/content/Intent;

    .line 44
    .line 45
    const-class v1, Lcom/minhub/gamehub/hub/AppLockActivity;

    .line 46
    .line 47
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/minhub/gamehub/hub/LoginActivity;->i:Landroidx/activity/result/ActivityResultLauncher;

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/LoginActivity;->p()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 14

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
    const v0, 0x7f0c0026

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const v0, 0x7f09006f

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Landroid/widget/Button;

    .line 25
    .line 26
    if-eqz v3, :cond_d

    .line 27
    .line 28
    const v0, 0x7f0900ad

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Landroid/widget/Button;

    .line 36
    .line 37
    if-eqz v4, :cond_d

    .line 38
    .line 39
    const v0, 0x7f0900c7

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Landroid/widget/Button;

    .line 47
    .line 48
    if-eqz v5, :cond_d

    .line 49
    .line 50
    new-instance v0, LF/b;

    .line 51
    .line 52
    check-cast p1, Landroid/widget/FrameLayout;

    .line 53
    .line 54
    invoke-direct {v0, p1, v3, v4, v5}, LF/b;-><init>(Landroid/widget/FrameLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V

    .line 55
    .line 56
    .line 57
    const-string v3, "inflate(...)"

    .line 58
    .line 59
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/minhub/gamehub/hub/LoginActivity;->e:LF/b;

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Le/j;->setContentView(Landroid/view/View;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p1}, Lcom/minhub/gamehub/hub/LoginActivity;->n(Landroid/content/Intent;)J

    .line 72
    .line 73
    .line 74
    move-result-wide v3

    .line 75
    iput-wide v3, p0, Lcom/minhub/gamehub/hub/LoginActivity;->h:J

    .line 76
    .line 77
    iget-object p1, p0, Lcom/minhub/gamehub/hub/LoginActivity;->e:LF/b;

    .line 78
    .line 79
    const-string v0, "b"

    .line 80
    .line 81
    if-nez p1, :cond_0

    .line 82
    .line 83
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    move-object p1, v1

    .line 87
    :cond_0
    iget-object p1, p1, LF/b;->e:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast p1, Landroid/widget/Button;

    .line 90
    .line 91
    new-instance v3, LC1/C1;

    .line 92
    .line 93
    invoke-direct {v3, p0, v2}, LC1/C1;-><init>(Lcom/minhub/gamehub/hub/LoginActivity;I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/minhub/gamehub/hub/LoginActivity;->e:LF/b;

    .line 100
    .line 101
    if-nez p1, :cond_1

    .line 102
    .line 103
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    move-object p1, v1

    .line 107
    :cond_1
    iget-object p1, p1, LF/b;->c:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast p1, Landroid/widget/Button;

    .line 110
    .line 111
    new-instance v3, LC1/C1;

    .line 112
    .line 113
    const/4 v4, 0x1

    .line 114
    invoke-direct {v3, p0, v4}, LC1/C1;-><init>(Lcom/minhub/gamehub/hub/LoginActivity;I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    .line 119
    .line 120
    sget-object p1, LS1/d;->a:Ljava/util/Set;

    .line 121
    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    const-string v3, "getApplicationContext(...)"

    .line 127
    .line 128
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-static {p1}, LS1/d;->d(Landroid/content/Context;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iget-object v3, p0, Lcom/minhub/gamehub/hub/LoginActivity;->j:[Ljava/lang/String;

    .line 136
    .line 137
    invoke-static {p1, v3}, Lkotlin/collections/ArraysKt;->s(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    invoke-static {p1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    iget-object v3, p0, Lcom/minhub/gamehub/hub/LoginActivity;->e:LF/b;

    .line 146
    .line 147
    if-nez v3, :cond_2

    .line 148
    .line 149
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    move-object v3, v1

    .line 153
    :cond_2
    iget-object v3, v3, LF/b;->d:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v3, Landroid/widget/Button;

    .line 156
    .line 157
    iget-object v5, p0, Lcom/minhub/gamehub/hub/LoginActivity;->k:[Ljava/lang/String;

    .line 158
    .line 159
    aget-object p1, v5, p1

    .line 160
    .line 161
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    .line 163
    .line 164
    iget-object p1, p0, Lcom/minhub/gamehub/hub/LoginActivity;->e:LF/b;

    .line 165
    .line 166
    if-nez p1, :cond_3

    .line 167
    .line 168
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    move-object p1, v1

    .line 172
    :cond_3
    iget-object p1, p1, LF/b;->d:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast p1, Landroid/widget/Button;

    .line 175
    .line 176
    new-instance v0, LC1/C1;

    .line 177
    .line 178
    const/4 v3, 0x2

    .line 179
    invoke-direct {v0, p0, v3}, LC1/C1;-><init>(Lcom/minhub/gamehub/hub/LoginActivity;I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    invoke-static {p1}, LS1/d;->n(Landroid/content/Context;)Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-eqz v0, :cond_4

    .line 197
    .line 198
    invoke-static {p1}, LS1/d;->o(Landroid/content/Context;)Z

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    if-nez p1, :cond_4

    .line 203
    .line 204
    move p1, v4

    .line 205
    goto :goto_0

    .line 206
    :cond_4
    move p1, v2

    .line 207
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    invoke-static {v0}, LS1/d;->n(Landroid/content/Context;)Z

    .line 215
    .line 216
    .line 217
    move-result v5

    .line 218
    if-eqz v5, :cond_9

    .line 219
    .line 220
    invoke-static {v0}, LS1/d;->o(Landroid/content/Context;)Z

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    if-eqz v5, :cond_9

    .line 225
    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    const-string v1, "<this>"

    .line 231
    .line 232
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-static {v0}, LS1/d;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    const-string v5, "login_type"

    .line 243
    .line 244
    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    if-eqz v1, :cond_8

    .line 249
    .line 250
    if-eq v1, v4, :cond_7

    .line 251
    .line 252
    if-eq v1, v3, :cond_6

    .line 253
    .line 254
    const/4 v2, 0x3

    .line 255
    if-eq v1, v2, :cond_5

    .line 256
    .line 257
    const-string v1, "UNKNOWN"

    .line 258
    .line 259
    goto :goto_1

    .line 260
    :cond_5
    const-string v1, "ACCOUNT"

    .line 261
    .line 262
    goto :goto_1

    .line 263
    :cond_6
    const-string v1, "OWNER"

    .line 264
    .line 265
    goto :goto_1

    .line 266
    :cond_7
    const-string v1, "PATREON"

    .line 267
    .line 268
    goto :goto_1

    .line 269
    :cond_8
    const-string v1, "GUEST"

    .line 270
    .line 271
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    const-string v3, "Welcome back ("

    .line 274
    .line 275
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    const-string v1, ")"

    .line 282
    .line 283
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    invoke-static {p1, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 295
    .line 296
    .line 297
    sget-object p1, Lcom/minhub/gamehub/hub/auth/SessionVerifier;->INSTANCE:Lcom/minhub/gamehub/hub/auth/SessionVerifier;

    .line 298
    .line 299
    new-instance v1, LB1/l;

    .line 300
    .line 301
    invoke-direct {v1, v0, v4}, LB1/l;-><init>(Landroid/content/Context;I)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p1, v0, v1}, Lcom/minhub/gamehub/hub/auth/SessionVerifier;->verifyInBackground(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/LoginActivity;->o()V

    .line 308
    .line 309
    .line 310
    return-void

    .line 311
    :cond_9
    invoke-static {v0}, LS1/d;->n(Landroid/content/Context;)Z

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    if-eqz v2, :cond_a

    .line 316
    .line 317
    invoke-static {v0}, LS1/d;->a(Landroid/content/Context;)V

    .line 318
    .line 319
    .line 320
    :cond_a
    if-eqz p1, :cond_c

    .line 321
    .line 322
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    if-eqz p1, :cond_b

    .line 327
    .line 328
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    :cond_b
    if-nez v1, :cond_c

    .line 333
    .line 334
    sget-object v2, Lcom/minhub/gamehub/hub/auth/LoginAlertDialog;->INSTANCE:Lcom/minhub/gamehub/hub/auth/LoginAlertDialog;

    .line 335
    .line 336
    sget-object v4, Lcom/minhub/gamehub/hub/auth/LoginAlertDialog$Kind;->INFO:Lcom/minhub/gamehub/hub/auth/LoginAlertDialog$Kind;

    .line 337
    .line 338
    const p1, 0x7f12028c

    .line 339
    .line 340
    .line 341
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v5

    .line 345
    const-string p1, "getString(...)"

    .line 346
    .line 347
    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    const v0, 0x7f12028b

    .line 351
    .line 352
    .line 353
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v6

    .line 357
    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    const/16 v12, 0x1f0

    .line 361
    .line 362
    const/4 v13, 0x0

    .line 363
    const/4 v7, 0x0

    .line 364
    const/4 v8, 0x0

    .line 365
    const/4 v9, 0x0

    .line 366
    const/4 v10, 0x0

    .line 367
    const/4 v11, 0x0

    .line 368
    move-object v3, p0

    .line 369
    invoke-static/range {v2 .. v13}, Lcom/minhub/gamehub/hub/auth/LoginAlertDialog;->show$default(Lcom/minhub/gamehub/hub/auth/LoginAlertDialog;Landroid/app/Activity;Lcom/minhub/gamehub/hub/auth/LoginAlertDialog$Kind;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Le/g;

    .line 370
    .line 371
    .line 372
    :cond_c
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/LoginActivity;->m()V

    .line 373
    .line 374
    .line 375
    return-void

    .line 376
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 377
    .line 378
    .line 379
    move-result-object p1

    .line 380
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object p1

    .line 384
    new-instance v0, Ljava/lang/NullPointerException;

    .line 385
    .line 386
    const-string v1, "Missing required view with ID: "

    .line 387
    .line 388
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object p1

    .line 392
    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    throw v0
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/LoginActivity;->f:Le/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Le/D;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Le/j;->onDestroy()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 4

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
    invoke-static {p1}, Lcom/minhub/gamehub/hub/LoginActivity;->n(Landroid/content/Intent;)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    const-wide/16 v2, 0x0

    .line 17
    .line 18
    cmp-long p1, v0, v2

    .line 19
    .line 20
    if-lez p1, :cond_0

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/minhub/gamehub/hub/LoginActivity;->h:J

    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/LoginActivity;->m()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/minhub/gamehub/hub/LoginActivity;->g:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/LoginActivity;->m()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final p()V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/minhub/gamehub/hub/HubActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lcom/minhub/gamehub/hub/LoginActivity;->h:J

    .line 9
    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    cmp-long v3, v1, v3

    .line 13
    .line 14
    if-lez v3, :cond_0

    .line 15
    .line 16
    const-string v3, "extra_game_id"

    .line 17
    .line 18
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    :cond_0
    const/high16 v1, 0x24000000

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final q(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V
    .locals 12

    .line 1
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    .line 2
    .line 3
    .line 4
    move-result v3

    .line 5
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 6
    .line 7
    const/4 v6, 0x1

    .line 8
    if-ne p3, v6, :cond_0

    .line 9
    .line 10
    const/16 v7, 0x258

    .line 11
    .line 12
    if-ge v3, v7, :cond_0

    .line 13
    .line 14
    int-to-double v2, v3

    .line 15
    div-double/2addr v2, v4

    .line 16
    sget-object v0, Lcom/minhub/gamehub/hub/auth/LoginAlertDialog;->INSTANCE:Lcom/minhub/gamehub/hub/auth/LoginAlertDialog;

    .line 17
    .line 18
    move-wide v3, v2

    .line 19
    sget-object v2, Lcom/minhub/gamehub/hub/auth/LoginAlertDialog$Kind;->INFO:Lcom/minhub/gamehub/hub/auth/LoginAlertDialog$Kind;

    .line 20
    .line 21
    const v5, 0x7f120285

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    const-string v7, "getString(...)"

    .line 29
    .line 30
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 v8, 0x6

    .line 34
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    filled-new-array {v8, v3}, [Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const v4, 0x7f120284

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    new-instance v9, LC1/B1;

    .line 57
    .line 58
    invoke-direct {v9, p0, v6}, LC1/B1;-><init>(Lcom/minhub/gamehub/hub/LoginActivity;I)V

    .line 59
    .line 60
    .line 61
    const/16 v10, 0x70

    .line 62
    .line 63
    const/4 v11, 0x0

    .line 64
    move-object v3, v5

    .line 65
    const/4 v5, 0x0

    .line 66
    const/4 v6, 0x0

    .line 67
    const/4 v7, 0x0

    .line 68
    const/4 v8, 0x0

    .line 69
    move-object v1, p0

    .line 70
    invoke-static/range {v0 .. v11}, Lcom/minhub/gamehub/hub/auth/LoginAlertDialog;->show$default(Lcom/minhub/gamehub/hub/auth/LoginAlertDialog;Landroid/app/Activity;Lcom/minhub/gamehub/hub/auth/LoginAlertDialog$Kind;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Le/g;

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    sget-object v8, LS1/d;->a:Ljava/util/Set;

    .line 79
    .line 80
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-static {v7, v6}, LS1/d;->y(Landroid/content/Context;Z)V

    .line 84
    .line 85
    .line 86
    if-eqz p3, :cond_1

    .line 87
    .line 88
    move v8, v6

    .line 89
    goto :goto_0

    .line 90
    :cond_1
    const/4 v8, 0x0

    .line 91
    :goto_0
    invoke-static {v7, v8}, LS1/d;->A(Landroid/content/Context;Z)V

    .line 92
    .line 93
    .line 94
    invoke-static {v7, p1}, LS1/d;->D(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v7, p3}, LS1/d;->z(Landroid/content/Context;I)V

    .line 98
    .line 99
    .line 100
    invoke-static {v7, p2}, LS1/d;->B(Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 104
    .line 105
    .line 106
    move-result-wide v8

    .line 107
    invoke-static {v7, v8, v9}, LS1/d;->x(Landroid/content/Context;J)V

    .line 108
    .line 109
    .line 110
    move-object/from16 v8, p5

    .line 111
    .line 112
    invoke-static {v7, v8}, LS1/d;->C(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    if-eq p3, v6, :cond_3

    .line 116
    .line 117
    const/4 v3, 0x2

    .line 118
    if-eq p3, v3, :cond_2

    .line 119
    .line 120
    const-string v2, "Guest access"

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_2
    const-string v2, "Owner access granted"

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_3
    int-to-double v2, v3

    .line 127
    div-double/2addr v2, v4

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string v5, "Patreon supporter ($"

    .line 131
    .line 132
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v2, "/month)"

    .line 139
    .line 140
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v0, " \u2014 "

    .line 160
    .line 161
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-static {v3, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, v6}, Lcom/minhub/gamehub/hub/LoginActivity;->r(Z)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/LoginActivity;->o()V

    .line 182
    .line 183
    .line 184
    return-void
.end method

.method public final r(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/LoginActivity;->e:LF/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "b"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    iget-object v0, v0, LF/b;->e:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Landroid/widget/Button;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/minhub/gamehub/hub/LoginActivity;->e:LF/b;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    move-object v0, v1

    .line 27
    :cond_1
    iget-object v0, v0, LF/b;->c:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Landroid/widget/Button;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/minhub/gamehub/hub/LoginActivity;->e:LF/b;

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    move-object v0, v1

    .line 42
    :cond_2
    iget-object v0, v0, LF/b;->e:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Landroid/widget/Button;

    .line 45
    .line 46
    const v3, 0x3f19999a    # 0.6f

    .line 47
    .line 48
    .line 49
    const/high16 v4, 0x3f800000    # 1.0f

    .line 50
    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    move v5, v4

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    move v5, v3

    .line 56
    :goto_0
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/minhub/gamehub/hub/LoginActivity;->e:LF/b;

    .line 60
    .line 61
    if-nez v0, :cond_4

    .line 62
    .line 63
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_4
    move-object v1, v0

    .line 68
    :goto_1
    iget-object v0, v1, LF/b;->c:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v0, Landroid/widget/Button;

    .line 71
    .line 72
    if-eqz p1, :cond_5

    .line 73
    .line 74
    move v3, v4

    .line 75
    :cond_5
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final s(Ljava/lang/String;Z)V
    .locals 12

    .line 1
    sget-object v0, Lcom/minhub/gamehub/hub/auth/LoginAlertDialog;->INSTANCE:Lcom/minhub/gamehub/hub/auth/LoginAlertDialog;

    .line 2
    .line 3
    sget-object v2, Lcom/minhub/gamehub/hub/auth/LoginAlertDialog$Kind;->ERROR:Lcom/minhub/gamehub/hub/auth/LoginAlertDialog$Kind;

    .line 4
    .line 5
    const v1, 0x7f120281

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    const-string v1, "getString(...)"

    .line 13
    .line 14
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    const p2, 0x7f120260

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    :goto_0
    move-object v6, p2

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    const/4 p2, 0x0

    .line 29
    goto :goto_0

    .line 30
    :goto_1
    new-instance v7, LC1/B1;

    .line 31
    .line 32
    const/4 p2, 0x0

    .line 33
    invoke-direct {v7, p0, p2}, LC1/B1;-><init>(Lcom/minhub/gamehub/hub/LoginActivity;I)V

    .line 34
    .line 35
    .line 36
    const/16 v10, 0x190

    .line 37
    .line 38
    const/4 v11, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v8, 0x0

    .line 41
    const/4 v9, 0x0

    .line 42
    move-object v1, p0

    .line 43
    move-object v4, p1

    .line 44
    invoke-static/range {v0 .. v11}, Lcom/minhub/gamehub/hub/auth/LoginAlertDialog;->show$default(Lcom/minhub/gamehub/hub/auth/LoginAlertDialog;Landroid/app/Activity;Lcom/minhub/gamehub/hub/auth/LoginAlertDialog$Kind;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Le/g;

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .locals 12

    .line 1
    sget-object v0, Lcom/minhub/gamehub/hub/auth/LoginAlertDialog;->INSTANCE:Lcom/minhub/gamehub/hub/auth/LoginAlertDialog;

    .line 2
    .line 3
    sget-object v2, Lcom/minhub/gamehub/hub/auth/LoginAlertDialog$Kind;->ERROR:Lcom/minhub/gamehub/hub/auth/LoginAlertDialog$Kind;

    .line 4
    .line 5
    const v1, 0x7f120281

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    const-string v1, "getString(...)"

    .line 13
    .line 14
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/16 v10, 0x1f0

    .line 18
    .line 19
    const/4 v11, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x0

    .line 23
    const/4 v8, 0x0

    .line 24
    const/4 v9, 0x0

    .line 25
    move-object v1, p0

    .line 26
    move-object v4, p1

    .line 27
    invoke-static/range {v0 .. v11}, Lcom/minhub/gamehub/hub/auth/LoginAlertDialog;->show$default(Lcom/minhub/gamehub/hub/auth/LoginAlertDialog;Landroid/app/Activity;Lcom/minhub/gamehub/hub/auth/LoginAlertDialog$Kind;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Le/g;

    .line 28
    .line 29
    .line 30
    return-void
.end method
