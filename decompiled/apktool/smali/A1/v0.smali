.class public final LA1/v0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:LA1/l;

.field public final h:LA1/l;

.field public final i:LA1/m;

.field public final j:LA1/m;

.field public final k:LA1/e;

.field public final l:LA1/r0;

.field public final m:LA1/s0;

.field public final n:LA1/b;

.field public final o:LA1/d;

.field public final p:Landroid/os/Handler;

.field public q:LA1/L0;

.field public r:Z

.field public s:LA1/u0;

.field public t:J

.field public final u:LA1/t0;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILA1/l;LA1/l;LA1/m;LA1/m;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    move-object/from16 v4, p5

    .line 10
    .line 11
    move-object/from16 v5, p7

    .line 12
    .line 13
    move-object/from16 v6, p8

    .line 14
    .line 15
    move-object/from16 v7, p9

    .line 16
    .line 17
    move-object/from16 v8, p10

    .line 18
    .line 19
    new-instance v9, LA1/e;

    .line 20
    .line 21
    const/16 v10, 0xc

    .line 22
    .line 23
    invoke-direct {v9, v10}, LA1/e;-><init>(I)V

    .line 24
    .line 25
    .line 26
    new-instance v11, LA1/r0;

    .line 27
    .line 28
    const-string v16, "registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V"

    .line 29
    .line 30
    const/16 v17, 0x0

    .line 31
    .line 32
    const/4 v12, 0x3

    .line 33
    sget-object v13, LA1/D;->a:LA1/D;

    .line 34
    .line 35
    const-class v14, LA1/D;

    .line 36
    .line 37
    const-string v15, "registerReceiver"

    .line 38
    .line 39
    invoke-direct/range {v11 .. v17}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    new-instance v12, LA1/s0;

    .line 43
    .line 44
    const-string v17, "unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V"

    .line 45
    .line 46
    const/16 v18, 0x0

    .line 47
    .line 48
    const/4 v13, 0x2

    .line 49
    sget-object v14, LA1/D;->a:LA1/D;

    .line 50
    .line 51
    const-class v15, LA1/D;

    .line 52
    .line 53
    const-string v16, "unregisterReceiver"

    .line 54
    .line 55
    invoke-direct/range {v12 .. v18}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    const-string v10, "sessionId"

    .line 59
    .line 60
    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v10, "sessionToken"

    .line 64
    .line 65
    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v10, "engine"

    .line 69
    .line 70
    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string v10, "processName"

    .line 74
    .line 75
    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string v10, "postToMain"

    .line 79
    .line 80
    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v10, "emit"

    .line 84
    .line 85
    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string v10, "gracefulTeardown"

    .line 89
    .line 90
    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string v10, "forceTeardown"

    .line 94
    .line 95
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-string v10, "onRegistrationFailure"

    .line 99
    .line 100
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string v10, "register"

    .line 104
    .line 105
    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string v10, "unregister"

    .line 109
    .line 110
    invoke-static {v12, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 114
    .line 115
    .line 116
    move-object/from16 v10, p1

    .line 117
    .line 118
    iput-object v10, v0, LA1/v0;->a:Landroid/app/Activity;

    .line 119
    .line 120
    iput-object v1, v0, LA1/v0;->b:Ljava/lang/String;

    .line 121
    .line 122
    iput-object v2, v0, LA1/v0;->c:Ljava/lang/String;

    .line 123
    .line 124
    iput-object v3, v0, LA1/v0;->d:Ljava/lang/String;

    .line 125
    .line 126
    iput-object v4, v0, LA1/v0;->e:Ljava/lang/String;

    .line 127
    .line 128
    move/from16 v1, p6

    .line 129
    .line 130
    iput v1, v0, LA1/v0;->f:I

    .line 131
    .line 132
    iput-object v5, v0, LA1/v0;->g:LA1/l;

    .line 133
    .line 134
    iput-object v6, v0, LA1/v0;->h:LA1/l;

    .line 135
    .line 136
    iput-object v7, v0, LA1/v0;->i:LA1/m;

    .line 137
    .line 138
    iput-object v8, v0, LA1/v0;->j:LA1/m;

    .line 139
    .line 140
    iput-object v9, v0, LA1/v0;->k:LA1/e;

    .line 141
    .line 142
    iput-object v11, v0, LA1/v0;->l:LA1/r0;

    .line 143
    .line 144
    iput-object v12, v0, LA1/v0;->m:LA1/s0;

    .line 145
    .line 146
    new-instance v1, LA1/b;

    .line 147
    .line 148
    const/4 v2, 0x1

    .line 149
    invoke-direct {v1, v2}, LA1/b;-><init>(I)V

    .line 150
    .line 151
    .line 152
    iput-object v1, v0, LA1/v0;->n:LA1/b;

    .line 153
    .line 154
    new-instance v1, LA1/d;

    .line 155
    .line 156
    invoke-direct {v1, v2}, LA1/d;-><init>(I)V

    .line 157
    .line 158
    .line 159
    iput-object v1, v0, LA1/v0;->o:LA1/d;

    .line 160
    .line 161
    new-instance v1, Landroid/os/Handler;

    .line 162
    .line 163
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 168
    .line 169
    .line 170
    iput-object v1, v0, LA1/v0;->p:Landroid/os/Handler;

    .line 171
    .line 172
    sget-object v1, LA1/L0;->b:LA1/L0;

    .line 173
    .line 174
    iput-object v1, v0, LA1/v0;->q:LA1/L0;

    .line 175
    .line 176
    new-instance v1, LA1/t0;

    .line 177
    .line 178
    const/4 v2, 0x0

    .line 179
    invoke-direct {v1, v2, v0}, LA1/t0;-><init>(ILjava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    iput-object v1, v0, LA1/v0;->u:LA1/t0;

    .line 183
    .line 184
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;LA1/j;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "sessionId"

    .line 7
    .line 8
    iget-object v1, p0, LA1/v0;->b:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string p1, "sessionToken"

    .line 14
    .line 15
    iget-object v1, p0, LA1/v0;->c:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    const-string p1, "issuedAt"

    .line 21
    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    const-string p1, "messageTimestamp"

    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, LA1/v0;->q:LA1/L0;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string v1, "state"

    .line 45
    .line 46
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    if-eqz p2, :cond_0

    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 p1, 0x0

    .line 57
    :goto_0
    const-string p2, "closeResult"

    .line 58
    .line 59
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    const-string p1, "engine"

    .line 63
    .line 64
    iget-object p2, p0, LA1/v0;->d:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    const-string p1, "processName"

    .line 70
    .line 71
    iget-object p2, p0, LA1/v0;->e:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    const-string p1, "pid"

    .line 77
    .line 78
    iget p2, p0, LA1/v0;->f:I

    .line 79
    .line 80
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, LA1/v0;->h:LA1/l;

    .line 84
    .line 85
    invoke-virtual {p1, v0}, LA1/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-boolean v0, p0, LA1/v0;->r:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, LA1/v0;->s:LA1/u0;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, LA1/v0;->p:Landroid/os/Handler;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, LA1/v0;->s:LA1/u0;

    .line 17
    .line 18
    iget-wide v0, p0, LA1/v0;->t:J

    .line 19
    .line 20
    const-wide/16 v2, 0x1

    .line 21
    .line 22
    add-long/2addr v0, v2

    .line 23
    iput-wide v0, p0, LA1/v0;->t:J

    .line 24
    .line 25
    iget-object v0, p0, LA1/v0;->q:LA1/L0;

    .line 26
    .line 27
    sget-object v1, LA1/L0;->c:LA1/L0;

    .line 28
    .line 29
    const-string v2, "com.minhub.gamehub.action.GAME_SESSION_STATUS"

    .line 30
    .line 31
    if-ne v0, v1, :cond_2

    .line 32
    .line 33
    sget-object v0, LA1/L0;->d:LA1/L0;

    .line 34
    .line 35
    iput-object v0, p0, LA1/v0;->q:LA1/L0;

    .line 36
    .line 37
    sget-object v0, LA1/j;->b:LA1/j;

    .line 38
    .line 39
    invoke-virtual {p0, v2, v0}, LA1/v0;->a(Ljava/lang/String;LA1/j;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    iget-object v0, p0, LA1/v0;->q:LA1/L0;

    .line 43
    .line 44
    sget-object v1, LA1/L0;->d:LA1/L0;

    .line 45
    .line 46
    if-eq v0, v1, :cond_3

    .line 47
    .line 48
    sget-object v1, LA1/L0;->e:LA1/L0;

    .line 49
    .line 50
    if-ne v0, v1, :cond_4

    .line 51
    .line 52
    :cond_3
    sget-object v0, LA1/L0;->f:LA1/L0;

    .line 53
    .line 54
    iput-object v0, p0, LA1/v0;->q:LA1/L0;

    .line 55
    .line 56
    sget-object v0, LA1/j;->b:LA1/j;

    .line 57
    .line 58
    invoke-virtual {p0, v2, v0}, LA1/v0;->a(Ljava/lang/String;LA1/j;)V

    .line 59
    .line 60
    .line 61
    :cond_4
    :try_start_0
    iget-object v0, p0, LA1/v0;->a:Landroid/app/Activity;

    .line 62
    .line 63
    if-eqz v0, :cond_5

    .line 64
    .line 65
    iget-object v1, p0, LA1/v0;->m:LA1/s0;

    .line 66
    .line 67
    iget-object v2, p0, LA1/v0;->u:LA1/t0;

    .line 68
    .line 69
    invoke-virtual {v1, v0, v2}, LA1/s0;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    :catchall_0
    :cond_5
    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, LA1/v0;->r:Z

    .line 74
    .line 75
    return-void
.end method
