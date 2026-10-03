.class public final Lo1/a;
.super Li1/y;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final c:Ll1/a;

.field public static final d:Ll1/a;

.field public static final e:Ll1/a;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ll1/a;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Ll1/a;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lo1/a;->c:Ll1/a;

    .line 8
    .line 9
    new-instance v0, Ll1/a;

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    invoke-direct {v0, v1}, Ll1/a;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lo1/a;->d:Ll1/a;

    .line 16
    .line 17
    new-instance v0, Ll1/a;

    .line 18
    .line 19
    const/4 v1, 0x5

    .line 20
    invoke-direct {v0, v1}, Ll1/a;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lo1/a;->e:Ll1/a;

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lo1/a;->a:I

    packed-switch p1, :pswitch_data_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "MMM d, yyyy"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lo1/a;->b:Ljava/lang/Object;

    return-void

    .line 3
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "hh:mm:ss a"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lo1/a;->b:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Li1/y;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lo1/a;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lo1/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lp1/a;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lo1/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo1/a;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Li1/y;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Li1/y;->a(Lp1/a;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/util/Date;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    new-instance v0, Ljava/sql/Timestamp;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    return-object v0

    .line 30
    :pswitch_0
    invoke-virtual {p1}, Lp1/a;->v()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/16 v1, 0x9

    .line 35
    .line 36
    if-ne v0, v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1}, Lp1/a;->r()V

    .line 39
    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {p1}, Lp1/a;->t()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :try_start_1
    iget-object v1, p0, Lo1/a;->b:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v1, Ljava/text/SimpleDateFormat;

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    new-instance v2, Ljava/sql/Time;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 59
    .line 60
    .line 61
    move-result-wide v3

    .line 62
    invoke-direct {v2, v3, v4}, Ljava/sql/Time;-><init>(J)V

    .line 63
    .line 64
    .line 65
    monitor-exit p0

    .line 66
    move-object p1, v2

    .line 67
    :goto_1
    return-object p1

    .line 68
    :catchall_0
    move-exception v1

    .line 69
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    .line 71
    :catch_0
    move-exception v1

    .line 72
    new-instance v2, Li1/p;

    .line 73
    .line 74
    const-string v3, "Failed parsing \'"

    .line 75
    .line 76
    const-string v4, "\' as SQL Time; at path "

    .line 77
    .line 78
    invoke-static {v3, v0, v4}, LE/b;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const/4 v3, 0x1

    .line 83
    invoke-virtual {p1, v3}, Lp1/a;->h(Z)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-direct {v2, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    throw v2

    .line 98
    :pswitch_1
    invoke-virtual {p1}, Lp1/a;->v()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    const/16 v1, 0x9

    .line 103
    .line 104
    if-ne v0, v1, :cond_2

    .line 105
    .line 106
    invoke-virtual {p1}, Lp1/a;->r()V

    .line 107
    .line 108
    .line 109
    const/4 p1, 0x0

    .line 110
    goto :goto_2

    .line 111
    :cond_2
    invoke-virtual {p1}, Lp1/a;->t()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1

    .line 116
    :try_start_4
    iget-object v1, p0, Lo1/a;->b:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v1, Ljava/text/SimpleDateFormat;

    .line 119
    .line 120
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 125
    :try_start_5
    new-instance v2, Ljava/sql/Date;

    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 128
    .line 129
    .line 130
    move-result-wide v3

    .line 131
    invoke-direct {v2, v3, v4}, Ljava/sql/Date;-><init>(J)V
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_1

    .line 132
    .line 133
    .line 134
    move-object p1, v2

    .line 135
    :goto_2
    return-object p1

    .line 136
    :catch_1
    move-exception v1

    .line 137
    goto :goto_3

    .line 138
    :catchall_1
    move-exception v1

    .line 139
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 140
    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/text/ParseException; {:try_start_7 .. :try_end_7} :catch_1

    .line 141
    :goto_3
    new-instance v2, Li1/p;

    .line 142
    .line 143
    const-string v3, "Failed parsing \'"

    .line 144
    .line 145
    const-string v4, "\' as SQL Date; at path "

    .line 146
    .line 147
    invoke-static {v3, v0, v4}, LE/b;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    const/4 v3, 0x1

    .line 152
    invoke-virtual {p1, v3}, Lp1/a;->h(Z)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-direct {v2, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    .line 165
    .line 166
    throw v2

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lp1/b;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lo1/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p2, Ljava/sql/Timestamp;

    .line 7
    .line 8
    iget-object v0, p0, Lo1/a;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Li1/y;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Li1/y;->b(Lp1/b;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p2, Ljava/sql/Time;

    .line 17
    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Lp1/b;->i()Lp1/b;

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    monitor-enter p0

    .line 25
    :try_start_0
    iget-object v0, p0, Lo1/a;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 28
    .line 29
    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-virtual {p1, p2}, Lp1/b;->o(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p1

    .line 41
    :pswitch_1
    check-cast p2, Ljava/sql/Date;

    .line 42
    .line 43
    if-nez p2, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1}, Lp1/b;->i()Lp1/b;

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    monitor-enter p0

    .line 50
    :try_start_2
    iget-object v0, p0, Lo1/a;->b:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 53
    .line 54
    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 59
    invoke-virtual {p1, p2}, Lp1/b;->o(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :goto_1
    return-void

    .line 63
    :catchall_1
    move-exception p1

    .line 64
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 65
    throw p1

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
