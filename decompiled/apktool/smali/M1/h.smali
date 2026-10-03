.class public abstract LM1/h;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final a:Ljava/util/Set;

.field public static final b:LM1/g;

.field public static final c:LM1/g;

.field public static final d:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v0, "armeabi-v7a"

    .line 2
    .line 3
    const-string v1, "x86_64"

    .line 4
    .line 5
    const-string v2, "arm64-v8a"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, LM1/h;->a:Ljava/util/Set;

    .line 16
    .line 17
    sget-object v1, LM1/i;->b:LM1/i;

    .line 18
    .line 19
    const-string v5, "renpy7-priv"

    .line 20
    .line 21
    sget-object v6, LM1/f;->b:LM1/f;

    .line 22
    .line 23
    const-string v2, "renpy-7.8.7"

    .line 24
    .line 25
    const-string v3, "librenpython7.so"

    .line 26
    .line 27
    const-string v4, ":renpy7"

    .line 28
    .line 29
    invoke-static/range {v1 .. v6}, LM1/h;->a(LM1/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LM1/f;)LM1/g;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, LM1/h;->b:LM1/g;

    .line 34
    .line 35
    sget-object v1, LM1/i;->c:LM1/i;

    .line 36
    .line 37
    const-string v5, "renpy8-priv"

    .line 38
    .line 39
    sget-object v6, LM1/f;->c:LM1/f;

    .line 40
    .line 41
    const-string v2, "renpy-8.5.3"

    .line 42
    .line 43
    const-string v3, "librenpython.so"

    .line 44
    .line 45
    const-string v4, ":renpy"

    .line 46
    .line 47
    invoke-static/range {v1 .. v6}, LM1/h;->a(LM1/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LM1/f;)LM1/g;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    sput-object v1, LM1/h;->c:LM1/g;

    .line 52
    .line 53
    filled-new-array {v0, v1}, [LM1/g;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v1, "unmodifiableList(...)"

    .line 66
    .line 67
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    sput-object v0, LM1/h;->d:Ljava/util/List;

    .line 71
    .line 72
    return-void
.end method

.method public static a(LM1/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LM1/f;)LM1/g;
    .locals 9

    .line 1
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    sget-object v3, LM1/h;->a:Ljava/util/Set;

    .line 4
    .line 5
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x10

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-direct {v4, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    move-object v2, v1

    .line 37
    check-cast v2, Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_1

    .line 65
    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Ljava/lang/String;

    .line 71
    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v2, "/"

    .line 81
    .line 82
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    sget-object p2, LM1/f;->b:LM1/f;

    .line 97
    .line 98
    if-ne p5, p2, :cond_2

    .line 99
    .line 100
    const-string p2, "private.mp3"

    .line 101
    .line 102
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    goto :goto_2

    .line 107
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    :goto_2
    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->t(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    new-instance v0, LM1/g;

    .line 116
    .line 117
    move-object v1, p0

    .line 118
    move-object v2, p1

    .line 119
    move-object v5, p3

    .line 120
    move-object v6, p4

    .line 121
    move-object v8, p5

    .line 122
    invoke-direct/range {v0 .. v8}, LM1/g;-><init>(LM1/i;Ljava/lang/String;Ljava/util/Set;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;LM1/f;)V

    .line 123
    .line 124
    .line 125
    return-object v0
.end method
