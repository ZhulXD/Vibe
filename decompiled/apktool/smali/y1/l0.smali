.class public final synthetic Ly1/l0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ly1/x0;

.field public final synthetic d:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ly1/x0;Ljava/io/File;I)V
    .locals 0

    .line 1
    iput p3, p0, Ly1/l0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ly1/l0;->c:Ly1/x0;

    .line 4
    .line 5
    iput-object p2, p0, Ly1/l0;->d:Ljava/io/File;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Ly1/l0;->b:I

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    iget-object v2, p0, Ly1/l0;->d:Ljava/io/File;

    .line 6
    .line 7
    iget-object v3, p0, Ly1/l0;->c:Ly1/x0;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    :try_start_0
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 14
    .line 15
    iget-object v4, v3, Ly1/x0;->b:Ljava/io/File;

    .line 16
    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    invoke-static {v4}, Ly1/b1;->d(Ljava/io/File;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v2

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    move-object v4, v0

    .line 27
    :goto_0
    if-nez v4, :cond_1

    .line 28
    .line 29
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    :cond_1
    invoke-static {v2, v4}, Ly1/b1;->g(Ljava/io/File;Ljava/util/List;)Ly1/a1;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    goto :goto_2

    .line 42
    :goto_1
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 43
    .line 44
    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    :goto_2
    invoke-static {v2}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    move-object v2, v0

    .line 59
    :cond_2
    check-cast v2, Ly1/a1;

    .line 60
    .line 61
    if-eqz v2, :cond_4

    .line 62
    .line 63
    :try_start_1
    sget-object v4, Ly1/b1;->a:Lkotlin/text/Regex;

    .line 64
    .line 65
    iget-object v4, v2, Ly1/a1;->c:Li1/o;

    .line 66
    .line 67
    const-string v5, "root"

    .line 68
    .line 69
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    new-instance v5, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    const/4 v7, 0x0

    .line 82
    invoke-static {v5, v7, v4, v6}, Ly1/b1;->c(Ljava/util/ArrayList;ZLi1/o;Ljava/util/List;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 89
    goto :goto_3

    .line 90
    :catchall_1
    move-exception v4

    .line 91
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 92
    .line 93
    invoke-static {v4}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    :goto_3
    invoke-static {v4}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    if-eqz v5, :cond_3

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_3
    move-object v0, v4

    .line 109
    :goto_4
    check-cast v0, Ljava/util/List;

    .line 110
    .line 111
    :cond_4
    new-instance v4, LI1/e;

    .line 112
    .line 113
    const/4 v5, 0x3

    .line 114
    invoke-direct {v4, v2, v0, v3, v5}, LI1/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 115
    .line 116
    .line 117
    iget-object v0, v3, Ly1/x0;->a:Landroid/app/Activity;

    .line 118
    .line 119
    new-instance v2, LC1/k;

    .line 120
    .line 121
    invoke-direct {v2, v1, v3, v4}, LC1/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :pswitch_0
    :try_start_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 129
    .line 130
    invoke-static {v2}, Ly1/b1;->f(Ljava/io/File;)Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 138
    goto :goto_5

    .line 139
    :catchall_2
    move-exception v0

    .line 140
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 141
    .line 142
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    :goto_5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-eqz v5, :cond_5

    .line 159
    .line 160
    move-object v0, v4

    .line 161
    :cond_5
    check-cast v0, Ljava/util/List;

    .line 162
    .line 163
    new-instance v4, LI1/e;

    .line 164
    .line 165
    const/4 v5, 0x2

    .line 166
    invoke-direct {v4, v0, v3, v2, v5}, LI1/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 167
    .line 168
    .line 169
    iget-object v0, v3, Ly1/x0;->a:Landroid/app/Activity;

    .line 170
    .line 171
    new-instance v2, LC1/k;

    .line 172
    .line 173
    invoke-direct {v2, v1, v3, v4}, LC1/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    nop

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
