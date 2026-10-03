.class public final synthetic LC1/P0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/minhub/gamehub/hub/GameDetailActivity;

.field public final synthetic c:Landroid/net/Uri;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/hub/GameDetailActivity;Landroid/net/Uri;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LC1/P0;->b:Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 5
    .line 6
    iput-object p2, p0, LC1/P0;->c:Landroid/net/Uri;

    .line 7
    .line 8
    iput-boolean p3, p0, LC1/P0;->d:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 1
    const/4 p1, 0x5

    .line 2
    const/16 v0, 0x3e7

    .line 3
    .line 4
    if-ne p2, p1, :cond_0

    .line 5
    .line 6
    move p2, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 9
    .line 10
    :goto_0
    iget-object p1, p0, LC1/P0;->b:Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 11
    .line 12
    if-ne p2, v0, :cond_1

    .line 13
    .line 14
    const v0, 0x7f1203de

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const v1, 0x7f120127

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p1, Lcom/minhub/gamehub/hub/GameDetailActivity;->k:Ljava/util/List;

    .line 41
    .line 42
    iget-object v2, p0, LC1/P0;->c:Landroid/net/Uri;

    .line 43
    .line 44
    iget-boolean v3, p0, LC1/P0;->d:Z

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_4

    .line 64
    .line 65
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Lcom/minhub/gamehub/data/Save;

    .line 70
    .line 71
    invoke-virtual {v4}, Lcom/minhub/gamehub/data/Save;->getSlotNumber()I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-ne v4, p2, :cond_3

    .line 76
    .line 77
    new-instance v1, LO0/b;

    .line 78
    .line 79
    const/4 v4, 0x0

    .line 80
    invoke-direct {v1, p1, v4}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 81
    .line 82
    .line 83
    iget-object v4, v1, Le/f;->c:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v4, Le/b;

    .line 86
    .line 87
    const v5, 0x7f1200c6

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    iput-object v5, v4, Le/b;->d:Ljava/lang/CharSequence;

    .line 95
    .line 96
    const v5, 0x7f1200c5

    .line 97
    .line 98
    .line 99
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p1, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iput-object v0, v4, Le/b;->f:Ljava/lang/CharSequence;

    .line 108
    .line 109
    const v0, 0x7f1200c4

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    new-instance v4, LC1/Q0;

    .line 117
    .line 118
    invoke-direct {v4, p1, v2, p2, v3}, LC1/Q0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;Landroid/net/Uri;IZ)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v0, v4}, LO0/b;->i(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 122
    .line 123
    .line 124
    const p2, 0x7f1200bc

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    const/4 p2, 0x0

    .line 132
    invoke-virtual {v1, p1, p2}, LO0/b;->g(Ljava/lang/String;LC1/h1;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Le/f;->e()Le/g;

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :cond_4
    :goto_2
    invoke-static {p1, v2, p2, v3}, LC1/R0;->a(Lcom/minhub/gamehub/hub/GameDetailActivity;Landroid/net/Uri;IZ)V

    .line 140
    .line 141
    .line 142
    return-void
.end method
