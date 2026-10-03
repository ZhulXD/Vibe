.class public final synthetic LC1/e1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, LC1/e1;->b:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, LC1/e1;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget v0, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->e:I

    .line 7
    .line 8
    sget-object v1, Lz1/k;->a:Lz1/k;

    .line 9
    .line 10
    const-string v0, "surface trace:\n"

    .line 11
    .line 12
    const-string v2, "  never reached: "

    .line 13
    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v3, Lz1/k;->b:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    const-string v0, "surface trace: nothing recorded"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    monitor-exit v1

    .line 26
    goto :goto_1

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto/16 :goto_5

    .line 29
    .line 30
    :cond_0
    :try_start_1
    const-string v4, "\n"

    .line 31
    .line 32
    new-instance v7, Ly1/f1;

    .line 33
    .line 34
    const/16 v5, 0x11

    .line 35
    .line 36
    invoke-direct {v7, v5}, Ly1/f1;-><init>(I)V

    .line 37
    .line 38
    .line 39
    const/16 v8, 0x1e

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    const/4 v6, 0x0

    .line 43
    invoke-static/range {v3 .. v8}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v1}, Lz1/k;->a()Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_1

    .line 56
    .line 57
    const-string v2, "  complete"

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const-string v5, ", "

    .line 61
    .line 62
    const/4 v8, 0x0

    .line 63
    const/16 v9, 0x3e

    .line 64
    .line 65
    const/4 v6, 0x0

    .line 66
    const/4 v7, 0x0

    .line 67
    invoke-static/range {v4 .. v9}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v0, "\n"

    .line 92
    .line 93
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    monitor-exit v1

    .line 104
    :goto_1
    invoke-static {}, Lorg/tvp/kirikiri2/KR2Activity;->getStartupPathReadCount()I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    const-string v3, "KiriKiriGame"

    .line 109
    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v5, "TVPCheckStartupArg was asked "

    .line 113
    .line 114
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v2, " time(s)"

    .line 121
    .line 122
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    monitor-enter v1

    .line 133
    :try_start_2
    sget-object v2, Lz1/j;->e:Lz1/j;

    .line 134
    .line 135
    invoke-virtual {v1, v2}, Lz1/k;->b(Lz1/j;)Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-eqz v2, :cond_2

    .line 140
    .line 141
    sget-object v2, Lz1/j;->i:Lz1/j;

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Lz1/k;->b(Lz1/j;)Z

    .line 144
    .line 145
    .line 146
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 147
    if-nez v2, :cond_2

    .line 148
    .line 149
    const/4 v2, 0x1

    .line 150
    goto :goto_2

    .line 151
    :catchall_1
    move-exception v0

    .line 152
    goto :goto_4

    .line 153
    :cond_2
    const/4 v2, 0x0

    .line 154
    :goto_2
    monitor-exit v1

    .line 155
    if-eqz v2, :cond_3

    .line 156
    .line 157
    const-string v1, "KiriKiriGame"

    .line 158
    .line 159
    const-string v2, "KiriKiri start-up stalled after the surface was created\n"

    .line 160
    .line 161
    invoke-static {v2, v0, v1}, LE/b;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_3
    const-string v1, "KiriKiriGame"

    .line 166
    .line 167
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    :goto_3
    return-void

    .line 171
    :goto_4
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 172
    throw v0

    .line 173
    :goto_5
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 174
    throw v0

    .line 175
    :pswitch_0
    invoke-static {}, Lorg/godotengine/godot/Godot;->i()V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :pswitch_1
    invoke-static {}, Lorg/godotengine/godot/Godot;->m()V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :pswitch_2
    sget v0, Lcom/minhub/gamehub/hub/HubActivity;->j:I

    .line 184
    .line 185
    sget-object v0, Lcom/minhub/gamehub/data/protect/GameContentProtection;->INSTANCE:Lcom/minhub/gamehub/data/protect/GameContentProtection;

    .line 186
    .line 187
    invoke-virtual {v0}, Lcom/minhub/gamehub/data/protect/GameContentProtection;->isUsable()Z

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
