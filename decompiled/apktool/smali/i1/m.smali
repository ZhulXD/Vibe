.class public final Li1/m;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final a:Lk1/g;

.field public final b:I

.field public final c:Li1/a;

.field public final d:Ljava/util/HashMap;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/ArrayList;

.field public g:Z

.field public final h:I

.field public final i:I

.field public j:Z

.field public final k:Z

.field public final l:Li1/t;

.field public final m:Li1/u;

.field public final n:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lk1/g;->d:Lk1/g;

    .line 5
    .line 6
    iput-object v0, p0, Li1/m;->a:Lk1/g;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput v0, p0, Li1/m;->b:I

    .line 10
    .line 11
    sget-object v1, Li1/h;->b:Li1/a;

    .line 12
    .line 13
    iput-object v1, p0, Li1/m;->c:Li1/a;

    .line 14
    .line 15
    new-instance v1, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Li1/m;->d:Ljava/util/HashMap;

    .line 21
    .line 22
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Li1/m;->e:Ljava/util/ArrayList;

    .line 28
    .line 29
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Li1/m;->f:Ljava/util/ArrayList;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    iput-boolean v1, p0, Li1/m;->g:Z

    .line 38
    .line 39
    const/4 v1, 0x2

    .line 40
    iput v1, p0, Li1/m;->h:I

    .line 41
    .line 42
    iput v1, p0, Li1/m;->i:I

    .line 43
    .line 44
    iput-boolean v0, p0, Li1/m;->j:Z

    .line 45
    .line 46
    iput-boolean v0, p0, Li1/m;->k:Z

    .line 47
    .line 48
    sget-object v0, Li1/x;->b:Li1/t;

    .line 49
    .line 50
    iput-object v0, p0, Li1/m;->l:Li1/t;

    .line 51
    .line 52
    sget-object v0, Li1/x;->c:Li1/u;

    .line 53
    .line 54
    iput-object v0, p0, Li1/m;->m:Li1/u;

    .line 55
    .line 56
    new-instance v0, Ljava/util/LinkedList;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Li1/m;->n:Ljava/util/LinkedList;

    .line 62
    .line 63
    return-void
.end method


# virtual methods
.method public final a()Li1/l;
    .locals 14

    .line 1
    new-instance v10, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v0, p0, Li1/m;->e:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Li1/m;->f:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    add-int/2addr v3, v1

    .line 16
    add-int/lit8 v3, v3, 0x3

    .line 17
    .line 18
    invoke-direct {v10, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    invoke-static {v10}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 36
    .line 37
    .line 38
    sget-boolean v1, Lo1/c;->a:Z

    .line 39
    .line 40
    iget v3, p0, Li1/m;->h:I

    .line 41
    .line 42
    const/4 v4, 0x2

    .line 43
    if-eq v3, v4, :cond_1

    .line 44
    .line 45
    iget v5, p0, Li1/m;->i:I

    .line 46
    .line 47
    if-eq v5, v4, :cond_1

    .line 48
    .line 49
    new-instance v4, Ll1/b;

    .line 50
    .line 51
    sget-object v6, Ll1/f;->b:Ll1/e;

    .line 52
    .line 53
    invoke-direct {v4, v6, v3, v5}, Ll1/b;-><init>(Ll1/f;II)V

    .line 54
    .line 55
    .line 56
    sget-object v6, Ll1/s;->a:Ll1/o;

    .line 57
    .line 58
    new-instance v6, Ll1/o;

    .line 59
    .line 60
    const-class v7, Ljava/util/Date;

    .line 61
    .line 62
    const/4 v8, 0x0

    .line 63
    invoke-direct {v6, v7, v4, v8}, Ll1/o;-><init>(Ljava/lang/Class;Li1/y;I)V

    .line 64
    .line 65
    .line 66
    if-eqz v1, :cond_0

    .line 67
    .line 68
    sget-object v4, Lo1/c;->c:Lo1/b;

    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    new-instance v7, Ll1/b;

    .line 74
    .line 75
    invoke-direct {v7, v4, v3, v5}, Ll1/b;-><init>(Ll1/f;II)V

    .line 76
    .line 77
    .line 78
    iget-object v4, v4, Ll1/f;->a:Ljava/lang/Class;

    .line 79
    .line 80
    new-instance v9, Ll1/o;

    .line 81
    .line 82
    invoke-direct {v9, v4, v7, v8}, Ll1/o;-><init>(Ljava/lang/Class;Li1/y;I)V

    .line 83
    .line 84
    .line 85
    sget-object v4, Lo1/c;->b:Lo1/b;

    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    new-instance v7, Ll1/b;

    .line 91
    .line 92
    invoke-direct {v7, v4, v3, v5}, Ll1/b;-><init>(Ll1/f;II)V

    .line 93
    .line 94
    .line 95
    iget-object v3, v4, Ll1/f;->a:Ljava/lang/Class;

    .line 96
    .line 97
    new-instance v4, Ll1/o;

    .line 98
    .line 99
    invoke-direct {v4, v3, v7, v8}, Ll1/o;-><init>(Ljava/lang/Class;Li1/y;I)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_0
    const/4 v9, 0x0

    .line 104
    move-object v4, v9

    .line 105
    :goto_0
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    if-eqz v1, :cond_1

    .line 109
    .line 110
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    :cond_1
    move-object v1, v0

    .line 117
    new-instance v0, Li1/l;

    .line 118
    .line 119
    new-instance v3, Ljava/util/HashMap;

    .line 120
    .line 121
    iget-object v4, p0, Li1/m;->d:Ljava/util/HashMap;

    .line 122
    .line 123
    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 124
    .line 125
    .line 126
    iget-boolean v4, p0, Li1/m;->g:Z

    .line 127
    .line 128
    iget-boolean v5, p0, Li1/m;->j:Z

    .line 129
    .line 130
    new-instance v8, Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 133
    .line 134
    .line 135
    new-instance v9, Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 138
    .line 139
    .line 140
    new-instance v13, Ljava/util/ArrayList;

    .line 141
    .line 142
    iget-object v1, p0, Li1/m;->n:Ljava/util/LinkedList;

    .line 143
    .line 144
    invoke-direct {v13, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 145
    .line 146
    .line 147
    iget-object v1, p0, Li1/m;->a:Lk1/g;

    .line 148
    .line 149
    iget-object v2, p0, Li1/m;->c:Li1/a;

    .line 150
    .line 151
    iget-boolean v6, p0, Li1/m;->k:Z

    .line 152
    .line 153
    iget v7, p0, Li1/m;->b:I

    .line 154
    .line 155
    iget-object v11, p0, Li1/m;->l:Li1/t;

    .line 156
    .line 157
    iget-object v12, p0, Li1/m;->m:Li1/u;

    .line 158
    .line 159
    invoke-direct/range {v0 .. v13}, Li1/l;-><init>(Lk1/g;Li1/a;Ljava/util/Map;ZZZILjava/util/List;Ljava/util/List;Ljava/util/List;Li1/t;Li1/u;Ljava/util/List;)V

    .line 160
    .line 161
    .line 162
    return-object v0
.end method
