.class public final Lcom/minhub/gamehub/data/RenpySaveIsolationProbe;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u000bB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\"\u0010\u0006\u001a\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/minhub/gamehub/data/RenpySaveIsolationProbe;",
        "",
        "<init>",
        "()V",
        "PERSISTENT",
        "",
        "compare",
        "Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;",
        "ownFileNames",
        "",
        "sharedFileNames",
        "Report",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRenpySaveIsolationProbe.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenpySaveIsolationProbe.kt\ncom/minhub/gamehub/data/RenpySaveIsolationProbe\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,61:1\n774#2:62\n865#2,2:63\n774#2:65\n865#2,2:66\n*S KotlinDebug\n*F\n+ 1 RenpySaveIsolationProbe.kt\ncom/minhub/gamehub/data/RenpySaveIsolationProbe\n*L\n49#1:62\n49#1:63,2\n50#1:65\n50#1:66,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/minhub/gamehub/data/RenpySaveIsolationProbe;

.field public static final PERSISTENT:Ljava/lang/String; = "persistent"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe;->INSTANCE:Lcom/minhub/gamehub/data/RenpySaveIsolationProbe;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final compare(Ljava/util/List;Ljava/util/List;)Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;"
        }
    .end annotation

    .line 1
    const-string v0, "ownFileNames"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sharedFileNames"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    move-object v2, v1

    .line 31
    check-cast v2, Ljava/lang/String;

    .line 32
    .line 33
    sget-object v3, Lcom/minhub/gamehub/data/RenpySaveNaming;->INSTANCE:Lcom/minhub/gamehub/data/RenpySaveNaming;

    .line 34
    .line 35
    invoke-virtual {v3, v2}, Lcom/minhub/gamehub/data/RenpySaveNaming;->isPlayableSave(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    move-object v3, v2

    .line 69
    check-cast v3, Ljava/lang/String;

    .line 70
    .line 71
    sget-object v4, Lcom/minhub/gamehub/data/RenpySaveNaming;->INSTANCE:Lcom/minhub/gamehub/data/RenpySaveNaming;

    .line 72
    .line 73
    invoke-virtual {v4, v3}, Lcom/minhub/gamehub/data/RenpySaveNaming;->isPlayableSave(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_2

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->m(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    new-instance v2, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;

    .line 92
    .line 93
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    invoke-static {v0, p1}, Lkotlin/collections/SetsKt;->b(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    const-string p1, "persistent"

    .line 114
    .line 115
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    invoke-direct/range {v2 .. v7}, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;-><init>(IIIIZ)V

    .line 120
    .line 121
    .line 122
    return-object v2
.end method
