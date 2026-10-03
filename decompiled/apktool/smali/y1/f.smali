.class public abstract Ly1/f;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Ly1/e;

    .line 2
    .line 3
    sget-object v1, Ly1/b;->b:Ly1/b;

    .line 4
    .line 5
    const-string v2, "Added 99,999 gold"

    .line 6
    .line 7
    const-string v3, "$gameParty.gainGold(99999);"

    .line 8
    .line 9
    const-string v4, "Gold +99,999"

    .line 10
    .line 11
    invoke-direct {v0, v1, v4, v2, v3}, Ly1/e;-><init>(Ly1/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ly1/e;

    .line 15
    .line 16
    sget-object v2, Ly1/b;->c:Ly1/b;

    .line 17
    .line 18
    const-string v3, "Recovered HP/MP"

    .line 19
    .line 20
    const-string v4, "$gameParty.members().forEach(function(actor) {\n    actor._hp = actor.mhp;\n    actor._mp = actor.mmp;\n});"

    .line 21
    .line 22
    const-string v5, "Recovery HP/MP"

    .line 23
    .line 24
    invoke-direct {v1, v2, v5, v3, v4}, Ly1/e;-><init>(Ly1/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Ly1/e;

    .line 28
    .line 29
    sget-object v3, Ly1/b;->d:Ly1/b;

    .line 30
    .line 31
    const-string v4, "All members +10 levels"

    .line 32
    .line 33
    const-string v5, "$gameParty.members().forEach(function(actor) {\n    actor.changeLevel(actor.level + 10, false);\n});"

    .line 34
    .line 35
    const-string v6, "Level +10"

    .line 36
    .line 37
    invoke-direct {v2, v3, v6, v4, v5}, Ly1/e;-><init>(Ly1/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v3, Ly1/e;

    .line 41
    .line 42
    sget-object v4, Ly1/b;->e:Ly1/b;

    .line 43
    .line 44
    const-string v5, "All stats maxed"

    .line 45
    .line 46
    const-string v6, "$gameParty.members().forEach(function(actor) {\n    actor._hp = actor.mhp;\n    actor._mp = actor.mmp;\n    actor.changeLevel(99, false);\n    for (var i = 0; i < 8; i++) {\n        actor._paramPlus[i] += 999;\n    }\n});"

    .line 47
    .line 48
    const-string v7, "Max All Stats"

    .line 49
    .line 50
    invoke-direct {v3, v4, v7, v5, v6}, Ly1/e;-><init>(Ly1/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v4, Ly1/e;

    .line 54
    .line 55
    sget-object v5, Ly1/b;->f:Ly1/b;

    .line 56
    .line 57
    const-string v6, "HP +500"

    .line 58
    .line 59
    const-string v7, "$gameParty.members().forEach(function(actor) { actor._paramPlus[0] += 500; });"

    .line 60
    .line 61
    invoke-direct {v4, v5, v6, v6, v7}, Ly1/e;-><init>(Ly1/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    new-instance v5, Ly1/e;

    .line 65
    .line 66
    sget-object v6, Ly1/b;->g:Ly1/b;

    .line 67
    .line 68
    const-string v7, "MP +500"

    .line 69
    .line 70
    const-string v8, "$gameParty.members().forEach(function(actor) { actor._paramPlus[1] += 500; });"

    .line 71
    .line 72
    invoke-direct {v5, v6, v7, v7, v8}, Ly1/e;-><init>(Ly1/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance v6, Ly1/e;

    .line 76
    .line 77
    sget-object v7, Ly1/b;->h:Ly1/b;

    .line 78
    .line 79
    const-string v8, "ATK +50"

    .line 80
    .line 81
    const-string v9, "$gameParty.members().forEach(function(actor) { actor._paramPlus[2] += 50; });"

    .line 82
    .line 83
    invoke-direct {v6, v7, v8, v8, v9}, Ly1/e;-><init>(Ly1/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    new-instance v7, Ly1/e;

    .line 87
    .line 88
    sget-object v8, Ly1/b;->i:Ly1/b;

    .line 89
    .line 90
    const-string v9, "DEF +50"

    .line 91
    .line 92
    const-string v10, "$gameParty.members().forEach(function(actor) { actor._paramPlus[3] += 50; });"

    .line 93
    .line 94
    invoke-direct {v7, v8, v9, v9, v10}, Ly1/e;-><init>(Ly1/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    new-instance v8, Ly1/e;

    .line 98
    .line 99
    sget-object v9, Ly1/b;->j:Ly1/b;

    .line 100
    .line 101
    const-string v10, "AGI +50"

    .line 102
    .line 103
    const-string v11, "$gameParty.members().forEach(function(actor) { actor._paramPlus[6] += 50; });"

    .line 104
    .line 105
    invoke-direct {v8, v9, v10, v10, v11}, Ly1/e;-><init>(Ly1/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    new-instance v9, Ly1/e;

    .line 109
    .line 110
    sget-object v10, Ly1/b;->k:Ly1/b;

    .line 111
    .line 112
    const-string v11, "LUK +50"

    .line 113
    .line 114
    const-string v12, "$gameParty.members().forEach(function(actor) { actor._paramPlus[7] += 50; });"

    .line 115
    .line 116
    invoke-direct {v9, v10, v11, v11, v12}, Ly1/e;-><init>(Ly1/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    new-instance v10, Ly1/e;

    .line 120
    .line 121
    sget-object v11, Ly1/b;->l:Ly1/b;

    .line 122
    .line 123
    const-string v12, "All stats +100"

    .line 124
    .line 125
    const-string v13, "$gameParty.members().forEach(function(actor) {\n    for (var i = 0; i < 8; i++) {\n        actor._paramPlus[i] += 100;\n    }\n});"

    .line 126
    .line 127
    const-string v14, "All Stats +100"

    .line 128
    .line 129
    invoke-direct {v10, v11, v14, v12, v13}, Ly1/e;-><init>(Ly1/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    filled-new-array/range {v0 .. v10}, [Ly1/e;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    sput-object v0, Ly1/f;->a:Ljava/util/List;

    .line 141
    .line 142
    return-void
.end method

.method public static a(Ly1/b;)Ly1/e;
    .locals 3

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Ly1/f;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    move-object v2, v1

    .line 23
    check-cast v2, Ly1/e;

    .line 24
    .line 25
    iget-object v2, v2, Ly1/e;->a:Ly1/b;

    .line 26
    .line 27
    if-ne v2, p0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v1, 0x0

    .line 31
    :goto_0
    check-cast v1, Ly1/e;

    .line 32
    .line 33
    return-object v1
.end method
