.class public final Lv1/a;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lr1/a;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lv1/a;->a:Landroid/content/Context;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Lcom/minhub/gamehub/data/Game;Landroid/webkit/WebView;Lkotlin/jvm/functions/Function1;)V
    .locals 4

    .line 1
    const-string v0, "game"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "webView"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "onUnsupported"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, LF/b;

    .line 17
    .line 18
    new-instance p3, Ls1/a;

    .line 19
    .line 20
    const-string v0, "title"

    .line 21
    .line 22
    const-string v1, "Scan Stores"

    .line 23
    .line 24
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v0, "description"

    .line 28
    .line 29
    const-string v1, "Inspect localStorage size for this runtime"

    .line 30
    .line 31
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v0, "jsCode"

    .line 35
    .line 36
    const-string v1, "(function() {\n    return \'localStorage:\' + localStorage.length;\n})();"

    .line 37
    .line 38
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    iget-object v0, p0, Lv1/a;->a:Landroid/content/Context;

    .line 49
    .line 50
    invoke-direct {p1, v0, p2, p3}, LF/b;-><init>(Landroid/content/Context;Landroid/webkit/WebView;Ljava/util/List;)V

    .line 51
    .line 52
    .line 53
    new-instance p2, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    .line 61
    .line 62
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_0

    .line 71
    .line 72
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Ls1/a;

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    const-string v1, "Scan Stores\nInspect localStorage size for this runtime"

    .line 82
    .line 83
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    const/4 p3, 0x0

    .line 88
    new-array p3, p3, [Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    check-cast p2, [Ljava/lang/String;

    .line 95
    .line 96
    new-instance p3, LO0/b;

    .line 97
    .line 98
    const v1, 0x7f1302f4

    .line 99
    .line 100
    .line 101
    invoke-direct {p3, v0, v1}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 102
    .line 103
    .line 104
    const v1, 0x7f1200ac

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    iget-object v2, p3, Le/f;->c:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v2, Le/b;

    .line 114
    .line 115
    iput-object v1, v2, Le/b;->d:Ljava/lang/CharSequence;

    .line 116
    .line 117
    check-cast p2, [Ljava/lang/CharSequence;

    .line 118
    .line 119
    new-instance v1, LC1/I1;

    .line 120
    .line 121
    const/4 v3, 0x2

    .line 122
    invoke-direct {v1, v3, p1}, LC1/I1;-><init>(ILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    iput-object p2, v2, Le/b;->q:[Ljava/lang/CharSequence;

    .line 126
    .line 127
    iput-object v1, v2, Le/b;->s:Landroid/content/DialogInterface$OnClickListener;

    .line 128
    .line 129
    const p1, 0x7f120038

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    const/4 p2, 0x0

    .line 137
    invoke-virtual {p3, p1, p2}, LO0/b;->g(Ljava/lang/String;LC1/h1;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p3}, Le/f;->e()Le/g;

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method public final b(Lr1/b;)Z
    .locals 1

    .line 1
    const-string v0, "runtime"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lr1/b;->f:Lr1/b;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1
.end method
