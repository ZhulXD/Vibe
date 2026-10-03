.class public final synthetic LN/f;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput p2, p0, LN/f;->b:I

    iput-object p1, p0, LN/f;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/profileinstaller/ProfileInstallerInitializer;Landroid/content/Context;)V
    .locals 0

    .line 2
    const/4 p1, 0x0

    iput p1, p0, LN/f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LN/f;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, LN/f;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/16 v2, 0x21

    .line 10
    .line 11
    if-lt v0, v2, :cond_5

    .line 12
    .line 13
    new-instance v3, Landroid/content/ComponentName;

    .line 14
    .line 15
    const-string v4, "androidx.appcompat.app.AppLocalesMetadataHolderService"

    .line 16
    .line 17
    iget-object v5, p0, LN/f;->c:Landroid/content/Context;

    .line 18
    .line 19
    invoke-direct {v3, v5, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eq v4, v1, :cond_5

    .line 31
    .line 32
    const-string v4, "locale"

    .line 33
    .line 34
    if-lt v0, v2, :cond_2

    .line 35
    .line 36
    sget-object v0, Le/p;->h:Lq/f;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    new-instance v2, Lq/a;

    .line 42
    .line 43
    invoke-direct {v2, v0}, Lq/a;-><init>(Lq/f;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {v2}, Lq/a;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    invoke-virtual {v2}, Lq/a;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Le/p;

    .line 63
    .line 64
    if-eqz v0, :cond_0

    .line 65
    .line 66
    check-cast v0, Le/B;

    .line 67
    .line 68
    iget-object v0, v0, Le/B;->l:Landroid/content/Context;

    .line 69
    .line 70
    if-eqz v0, :cond_0

    .line 71
    .line 72
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    const/4 v0, 0x0

    .line 78
    :goto_0
    if-eqz v0, :cond_3

    .line 79
    .line 80
    invoke-static {v0}, Le/m;->a(Ljava/lang/Object;)Landroid/os/LocaleList;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v0}, Landroidx/core/os/LocaleListCompat;->wrap(Landroid/os/LocaleList;)Landroidx/core/os/LocaleListCompat;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    sget-object v0, Le/p;->d:Landroidx/core/os/LocaleListCompat;

    .line 90
    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    invoke-static {}, Landroidx/core/os/LocaleListCompat;->getEmptyLocaleList()Landroidx/core/os/LocaleListCompat;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    :goto_1
    invoke-virtual {v0}, Landroidx/core/os/LocaleListCompat;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_4

    .line 103
    .line 104
    invoke-static {v5}, Landroidx/core/app/AppLocalesStorageHelper;->readLocales(Landroid/content/Context;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v5, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    if-eqz v2, :cond_4

    .line 113
    .line 114
    invoke-static {v0}, Le/l;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-static {v2, v0}, Le/m;->b(Ljava/lang/Object;Landroid/os/LocaleList;)V

    .line 119
    .line 120
    .line 121
    :cond_4
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0, v3, v1, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 126
    .line 127
    .line 128
    :cond_5
    sput-boolean v1, Le/p;->g:Z

    .line 129
    .line 130
    return-void

    .line 131
    :pswitch_0
    new-instance v0, LN/c;

    .line 132
    .line 133
    const/4 v1, 0x0

    .line 134
    invoke-direct {v0, v1}, LN/c;-><init>(I)V

    .line 135
    .line 136
    .line 137
    sget-object v1, LN/e;->a:LY0/e;

    .line 138
    .line 139
    const/4 v2, 0x0

    .line 140
    iget-object v3, p0, LN/f;->c:Landroid/content/Context;

    .line 141
    .line 142
    invoke-static {v3, v0, v1, v2}, LN/e;->s(Landroid/content/Context;Ljava/util/concurrent/Executor;LN/d;Z)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :pswitch_1
    new-instance v4, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 147
    .line 148
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 149
    .line 150
    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 151
    .line 152
    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 153
    .line 154
    .line 155
    const/4 v5, 0x0

    .line 156
    const/4 v6, 0x1

    .line 157
    const-wide/16 v7, 0x0

    .line 158
    .line 159
    invoke-direct/range {v4 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 160
    .line 161
    .line 162
    new-instance v0, LN/f;

    .line 163
    .line 164
    const/4 v1, 0x2

    .line 165
    iget-object v2, p0, LN/f;->c:Landroid/content/Context;

    .line 166
    .line 167
    invoke-direct {v0, v2, v1}, LN/f;-><init>(Landroid/content/Context;I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :pswitch_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 175
    .line 176
    const/16 v1, 0x1c

    .line 177
    .line 178
    if-lt v0, v1, :cond_6

    .line 179
    .line 180
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-static {v0}, LN/i;->a(Landroid/os/Looper;)Landroid/os/Handler;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    goto :goto_2

    .line 189
    :cond_6
    new-instance v0, Landroid/os/Handler;

    .line 190
    .line 191
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 196
    .line 197
    .line 198
    :goto_2
    new-instance v1, Ljava/util/Random;

    .line 199
    .line 200
    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 201
    .line 202
    .line 203
    const/16 v2, 0x3e8

    .line 204
    .line 205
    const/4 v3, 0x1

    .line 206
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    new-instance v2, LN/f;

    .line 215
    .line 216
    iget-object v4, p0, LN/f;->c:Landroid/content/Context;

    .line 217
    .line 218
    invoke-direct {v2, v4, v3}, LN/f;-><init>(Landroid/content/Context;I)V

    .line 219
    .line 220
    .line 221
    add-int/lit16 v1, v1, 0x1388

    .line 222
    .line 223
    int-to-long v3, v1

    .line 224
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 225
    .line 226
    .line 227
    return-void

    .line 228
    nop

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
