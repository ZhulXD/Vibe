.class public abstract LS1/l;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, LS1/k;

    .line 2
    .line 3
    const-string v1, "vi"

    .line 4
    .line 5
    const-string v2, "Vietnamese"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, LS1/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, LS1/k;

    .line 11
    .line 12
    const-string v2, "en"

    .line 13
    .line 14
    const-string v3, "English"

    .line 15
    .line 16
    invoke-direct {v1, v2, v3}, LS1/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v2, LS1/k;

    .line 20
    .line 21
    const-string v3, "ja"

    .line 22
    .line 23
    const-string v4, "Japanese"

    .line 24
    .line 25
    invoke-direct {v2, v3, v4}, LS1/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v3, LS1/k;

    .line 29
    .line 30
    const-string v4, "zh"

    .line 31
    .line 32
    const-string v5, "Chinese"

    .line 33
    .line 34
    invoke-direct {v3, v4, v5}, LS1/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v4, LS1/k;

    .line 38
    .line 39
    const-string v5, "ko"

    .line 40
    .line 41
    const-string v6, "Korean"

    .line 42
    .line 43
    invoke-direct {v4, v5, v6}, LS1/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance v5, LS1/k;

    .line 47
    .line 48
    const-string v6, "id"

    .line 49
    .line 50
    const-string v7, "Indonesian"

    .line 51
    .line 52
    invoke-direct {v5, v6, v7}, LS1/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    filled-new-array/range {v0 .. v5}, [LS1/k;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, LS1/l;->a:Ljava/util/List;

    .line 64
    .line 65
    return-void
.end method
