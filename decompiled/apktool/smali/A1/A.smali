.class public final LA1/A;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final synthetic a:La2/e;

.field public final synthetic b:LA1/Y;


# direct methods
.method public constructor <init>(La2/e;LA1/Y;)V
    .locals 0

    .line 1
    iput-object p1, p0, LA1/A;->a:La2/e;

    .line 2
    .line 3
    iput-object p2, p0, LA1/A;->b:LA1/Y;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    .line 1
    const-string v0, "c"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "intent"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v6

    .line 15
    if-nez v6, :cond_0

    .line 16
    .line 17
    goto/16 :goto_5

    .line 18
    .line 19
    :cond_0
    const-string p1, "sessionId"

    .line 20
    .line 21
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_b

    .line 26
    .line 27
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v10, 0x0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    move-object v2, p1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move-object v2, v10

    .line 37
    :goto_0
    if-nez v2, :cond_2

    .line 38
    .line 39
    goto/16 :goto_5

    .line 40
    .line 41
    :cond_2
    const-string p1, "sessionToken"

    .line 42
    .line 43
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_b

    .line 48
    .line 49
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_3

    .line 54
    .line 55
    move-object v3, p1

    .line 56
    goto :goto_1

    .line 57
    :cond_3
    move-object v3, v10

    .line 58
    :goto_1
    if-nez v3, :cond_4

    .line 59
    .line 60
    goto/16 :goto_5

    .line 61
    .line 62
    :cond_4
    const-string p1, "processName"

    .line 63
    .line 64
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_b

    .line 69
    .line 70
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_5

    .line 75
    .line 76
    move-object v4, p1

    .line 77
    goto :goto_2

    .line 78
    :cond_5
    move-object v4, v10

    .line 79
    :goto_2
    if-nez v4, :cond_6

    .line 80
    .line 81
    goto/16 :goto_5

    .line 82
    .line 83
    :cond_6
    const-string p1, "pid"

    .line 84
    .line 85
    const/4 v0, 0x0

    .line 86
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-gtz v5, :cond_7

    .line 91
    .line 92
    goto :goto_5

    .line 93
    :cond_7
    const-string p1, "issuedAt"

    .line 94
    .line 95
    const-wide/16 v0, 0x0

    .line 96
    .line 97
    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 98
    .line 99
    .line 100
    move-result-wide v7

    .line 101
    const-string p1, "messageTimestamp"

    .line 102
    .line 103
    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 104
    .line 105
    .line 106
    move-result-wide v0

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 108
    .line 109
    .line 110
    move-result-wide v11

    .line 111
    invoke-static {v7, v8, v11, v12}, LA1/D;->a(JJ)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_b

    .line 116
    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 118
    .line 119
    .line 120
    move-result-wide v7

    .line 121
    invoke-static {v0, v1, v7, v8}, LA1/D;->a(JJ)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-nez p1, :cond_8

    .line 126
    .line 127
    goto :goto_5

    .line 128
    :cond_8
    const-string p1, "state"

    .line 129
    .line 130
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    if-eqz p1, :cond_a

    .line 135
    .line 136
    :try_start_0
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 137
    .line 138
    invoke-static {p1}, LA1/L0;->valueOf(Ljava/lang/String;)LA1/L0;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    goto :goto_3

    .line 147
    :catchall_0
    move-exception v0

    .line 148
    move-object p1, v0

    .line 149
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 150
    .line 151
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    :goto_3
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    if-eqz p2, :cond_9

    .line 164
    .line 165
    move-object p1, v10

    .line 166
    :cond_9
    check-cast p1, LA1/L0;

    .line 167
    .line 168
    move-object v7, p1

    .line 169
    goto :goto_4

    .line 170
    :cond_a
    move-object v7, v10

    .line 171
    :goto_4
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    new-instance v0, LA1/z;

    .line 176
    .line 177
    iget-object v1, p0, LA1/A;->b:LA1/Y;

    .line 178
    .line 179
    const/4 v9, 0x0

    .line 180
    invoke-direct/range {v0 .. v9}, LA1/z;-><init>(LA1/Y;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;LA1/L0;Landroid/content/BroadcastReceiver$PendingResult;Lkotlin/coroutines/Continuation;)V

    .line 181
    .line 182
    .line 183
    const/4 p1, 0x3

    .line 184
    iget-object p2, p0, LA1/A;->a:La2/e;

    .line 185
    .line 186
    invoke-static {p2, v10, v0, p1}, LV1/A;->c(LV1/x;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)LV1/p0;

    .line 187
    .line 188
    .line 189
    :cond_b
    :goto_5
    return-void
.end method
