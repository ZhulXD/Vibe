.class public final synthetic Ly1/p0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/io/Serializable;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p7, p0, Ly1/p0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ly1/p0;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Ly1/p0;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Ly1/p0;->e:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Ly1/p0;->f:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p5, p0, Ly1/p0;->g:Ljava/io/Serializable;

    .line 12
    .line 13
    iput-object p6, p0, Ly1/p0;->h:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Ly1/p0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ly1/p0;->c:Ljava/lang/Object;

    .line 7
    .line 8
    move-object v2, v0

    .line 9
    check-cast v2, Lcom/minhub/gamehub/game/GameActivity;

    .line 10
    .line 11
    iget-object v0, p0, Ly1/p0;->d:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v4, v0

    .line 14
    check-cast v4, Lcom/minhub/gamehub/data/Game;

    .line 15
    .line 16
    iget-object v0, p0, Ly1/p0;->e:Ljava/lang/Object;

    .line 17
    .line 18
    move-object v3, v0

    .line 19
    check-cast v3, LQ1/d;

    .line 20
    .line 21
    iget-object v0, p0, Ly1/p0;->f:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, LQ1/c;

    .line 24
    .line 25
    iget-object v1, p0, Ly1/p0;->g:Ljava/io/Serializable;

    .line 26
    .line 27
    check-cast v1, Ljava/lang/String;

    .line 28
    .line 29
    iget-object v5, p0, Ly1/p0;->h:Ljava/lang/Object;

    .line 30
    .line 31
    move-object v6, v5

    .line 32
    check-cast v6, Ljava/lang/String;

    .line 33
    .line 34
    move-object v7, p1

    .line 35
    check-cast v7, Lorg/json/JSONObject;

    .line 36
    .line 37
    iget-object p1, v0, LQ1/c;->b:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v5, v0, LQ1/c;->c:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v0, v0, LQ1/c;->d:Ljava/lang/String;

    .line 42
    .line 43
    const-string v8, "title"

    .line 44
    .line 45
    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v8, "diagnostics"

    .line 49
    .line 50
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string v8, "debugLog"

    .line 54
    .line 55
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    move-object v8, v5

    .line 59
    new-instance v5, LQ1/c;

    .line 60
    .line 61
    invoke-direct {v5, v1, p1, v8, v0}, LQ1/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v3}, Lcom/minhub/gamehub/game/GameActivity;->y(LQ1/d;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_0

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    new-instance p1, Ljava/lang/Thread;

    .line 72
    .line 73
    new-instance v1, Ly1/j;

    .line 74
    .line 75
    invoke-direct/range {v1 .. v7}, Ly1/j;-><init>(Lcom/minhub/gamehub/game/GameActivity;LQ1/d;Lcom/minhub/gamehub/data/Game;LQ1/c;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 76
    .line 77
    .line 78
    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 82
    .line 83
    .line 84
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 85
    .line 86
    return-object p1

    .line 87
    :pswitch_0
    iget-object v0, p0, Ly1/p0;->c:Ljava/lang/Object;

    .line 88
    .line 89
    move-object v7, v0

    .line 90
    check-cast v7, Ly1/x0;

    .line 91
    .line 92
    iget-object v0, p0, Ly1/p0;->d:Ljava/lang/Object;

    .line 93
    .line 94
    move-object v5, v0

    .line 95
    check-cast v5, Ljava/util/List;

    .line 96
    .line 97
    iget-object v0, p0, Ly1/p0;->e:Ljava/lang/Object;

    .line 98
    .line 99
    move-object v4, v0

    .line 100
    check-cast v4, Ljava/util/LinkedHashMap;

    .line 101
    .line 102
    iget-object v0, p0, Ly1/p0;->f:Ljava/lang/Object;

    .line 103
    .line 104
    move-object v3, v0

    .line 105
    check-cast v3, Landroid/widget/LinearLayout;

    .line 106
    .line 107
    iget-object v0, p0, Ly1/p0;->g:Ljava/io/Serializable;

    .line 108
    .line 109
    move-object v6, v0

    .line 110
    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 111
    .line 112
    iget-object v0, p0, Ly1/p0;->h:Ljava/lang/Object;

    .line 113
    .line 114
    move-object v2, v0

    .line 115
    check-cast v2, LP/H0;

    .line 116
    .line 117
    check-cast p1, Ljava/lang/Integer;

    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    new-instance v1, Ly1/v0;

    .line 124
    .line 125
    invoke-direct/range {v1 .. v7}, Ly1/v0;-><init>(LP/H0;Landroid/widget/LinearLayout;Ljava/util/LinkedHashMap;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Ly1/x0;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7, v5, p1, v4, v1}, Ly1/x0;->h(Ljava/util/List;ILjava/util/LinkedHashMap;Lkotlin/jvm/functions/Function0;)V

    .line 129
    .line 130
    .line 131
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 132
    .line 133
    return-object p1

    .line 134
    :pswitch_1
    iget-object v0, p0, Ly1/p0;->c:Ljava/lang/Object;

    .line 135
    .line 136
    move-object v7, v0

    .line 137
    check-cast v7, Ly1/x0;

    .line 138
    .line 139
    iget-object v0, p0, Ly1/p0;->d:Ljava/lang/Object;

    .line 140
    .line 141
    move-object v5, v0

    .line 142
    check-cast v5, Ljava/util/List;

    .line 143
    .line 144
    iget-object v0, p0, Ly1/p0;->e:Ljava/lang/Object;

    .line 145
    .line 146
    move-object v4, v0

    .line 147
    check-cast v4, Ljava/util/LinkedHashMap;

    .line 148
    .line 149
    iget-object v0, p0, Ly1/p0;->f:Ljava/lang/Object;

    .line 150
    .line 151
    move-object v3, v0

    .line 152
    check-cast v3, Landroid/widget/LinearLayout;

    .line 153
    .line 154
    iget-object v0, p0, Ly1/p0;->g:Ljava/io/Serializable;

    .line 155
    .line 156
    move-object v6, v0

    .line 157
    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 158
    .line 159
    iget-object v0, p0, Ly1/p0;->h:Ljava/lang/Object;

    .line 160
    .line 161
    move-object v2, v0

    .line 162
    check-cast v2, LP/H0;

    .line 163
    .line 164
    check-cast p1, Ljava/lang/Integer;

    .line 165
    .line 166
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    new-instance v1, Ly1/t0;

    .line 171
    .line 172
    invoke-direct/range {v1 .. v7}, Ly1/t0;-><init>(LP/H0;Landroid/widget/LinearLayout;Ljava/util/LinkedHashMap;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Ly1/x0;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v7, v5, p1, v4, v1}, Ly1/x0;->h(Ljava/util/List;ILjava/util/LinkedHashMap;Lkotlin/jvm/functions/Function0;)V

    .line 176
    .line 177
    .line 178
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 179
    .line 180
    return-object p1

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
