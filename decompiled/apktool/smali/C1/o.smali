.class public final synthetic LC1/o;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/io/Serializable;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LP/H0;Landroid/widget/LinearLayout;Ljava/util/LinkedHashMap;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Ly1/x0;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, LC1/o;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p6, p0, LC1/o;->e:Ljava/lang/Object;

    iput-object p4, p0, LC1/o;->f:Ljava/lang/Object;

    iput-object p1, p0, LC1/o;->c:Ljava/lang/Object;

    iput-object p3, p0, LC1/o;->g:Ljava/lang/Object;

    iput-object p2, p0, LC1/o;->h:Ljava/lang/Object;

    iput-object p5, p0, LC1/o;->d:Ljava/io/Serializable;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/minhub/gamehub/hub/AddGameActivity;Ljava/lang/String;Ljava/io/File;Le/g;LD1/b;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, LC1/o;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC1/o;->d:Ljava/io/Serializable;

    iput-object p2, p0, LC1/o;->c:Ljava/lang/Object;

    iput-object p3, p0, LC1/o;->e:Ljava/lang/Object;

    iput-object p4, p0, LC1/o;->f:Ljava/lang/Object;

    iput-object p5, p0, LC1/o;->g:Ljava/lang/Object;

    iput-object p6, p0, LC1/o;->h:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lcom/minhub/gamehub/hub/AddGameActivity;Landroid/widget/TextView;Landroidx/core/widget/NestedScrollView;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    iput v0, p0, LC1/o;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC1/o;->d:Ljava/io/Serializable;

    iput-object p2, p0, LC1/o;->e:Ljava/lang/Object;

    iput-object p3, p0, LC1/o;->f:Ljava/lang/Object;

    iput-object p4, p0, LC1/o;->c:Ljava/lang/Object;

    iput-object p5, p0, LC1/o;->g:Ljava/lang/Object;

    iput-object p6, p0, LC1/o;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 14

    .line 1
    iget p1, p0, LC1/o;->b:I

    .line 2
    .line 3
    iget-object v0, p0, LC1/o;->d:Ljava/io/Serializable;

    .line 4
    .line 5
    iget-object v1, p0, LC1/o;->h:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v2, p0, LC1/o;->g:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v3, p0, LC1/o;->c:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v4, p0, LC1/o;->f:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v5, p0, LC1/o;->e:Ljava/lang/Object;

    .line 14
    .line 15
    packed-switch p1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    move-object v6, v5

    .line 19
    check-cast v6, Ly1/x0;

    .line 20
    .line 21
    move-object v8, v4

    .line 22
    check-cast v8, Ljava/util/List;

    .line 23
    .line 24
    move-object v12, v3

    .line 25
    check-cast v12, LP/H0;

    .line 26
    .line 27
    move-object v9, v2

    .line 28
    check-cast v9, Ljava/util/LinkedHashMap;

    .line 29
    .line 30
    move-object v10, v1

    .line 31
    check-cast v10, Landroid/widget/LinearLayout;

    .line 32
    .line 33
    move-object v11, v0

    .line 34
    check-cast v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 35
    .line 36
    iget-object p1, v6, Ly1/x0;->a:Landroid/app/Activity;

    .line 37
    .line 38
    const v0, 0x7f120168

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v0, "getString(...)"

    .line 46
    .line 47
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->getIndices(Ljava/util/Collection;)Lkotlin/ranges/IntRange;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    new-instance v13, Ly1/p0;

    .line 59
    .line 60
    move-object v7, v6

    .line 61
    move-object v6, v13

    .line 62
    const/4 v13, 0x0

    .line 63
    invoke-direct/range {v6 .. v13}, Ly1/p0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;I)V

    .line 64
    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    const/4 v11, 0x1

    .line 68
    move-object v10, v0

    .line 69
    move-object v13, v6

    .line 70
    move-object v6, v7

    .line 71
    move-object v9, v8

    .line 72
    move-object v7, p1

    .line 73
    move-object v8, v1

    .line 74
    invoke-virtual/range {v6 .. v13}, Ly1/x0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLP/H0;Lkotlin/jvm/functions/Function1;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :pswitch_0
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    .line 80
    check-cast v3, Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 81
    .line 82
    check-cast v5, Ljava/lang/String;

    .line 83
    .line 84
    check-cast v4, Ljava/io/File;

    .line 85
    .line 86
    check-cast v2, Le/g;

    .line 87
    .line 88
    check-cast v1, LD1/b;

    .line 89
    .line 90
    const/4 p1, 0x0

    .line 91
    const/4 v6, 0x1

    .line 92
    invoke-virtual {v0, p1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_0

    .line 97
    .line 98
    invoke-virtual {v1}, LD1/b;->b()Z

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v1}, Lcom/minhub/gamehub/hub/AddGameActivity;->r(LD1/b;)V

    .line 102
    .line 103
    .line 104
    new-instance p1, Landroid/content/Intent;

    .line 105
    .line 106
    const-class v0, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;

    .line 107
    .line 108
    invoke-direct {p1, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    .line 110
    .line 111
    const-string v0, "kirikiri_source_dir"

    .line 112
    .line 113
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    const-string v0, "kirikiri_game_name"

    .line 122
    .line 123
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 131
    .line 132
    .line 133
    :cond_0
    invoke-virtual {v2}, Le/D;->dismiss()V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :pswitch_1
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 138
    .line 139
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 140
    .line 141
    check-cast v3, Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 142
    .line 143
    check-cast v2, Landroid/widget/TextView;

    .line 144
    .line 145
    check-cast v1, Landroidx/core/widget/NestedScrollView;

    .line 146
    .line 147
    sget p1, Lcom/minhub/gamehub/hub/AddGameActivity;->y:I

    .line 148
    .line 149
    iput-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 150
    .line 151
    invoke-interface {v4, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3, v2, v1}, Lcom/minhub/gamehub/hub/AddGameActivity;->p(Landroid/widget/TextView;Landroid/view/View;)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    nop

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
