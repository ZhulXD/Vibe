.class public final synthetic LE1/s;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Landroid/view/View;

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LE1/w;Landroid/content/Context;Landroid/widget/TextView;LL1/a;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;I)V
    .locals 0

    .line 1
    iput p8, p0, LE1/s;->b:I

    iput-object p1, p0, LE1/s;->c:Ljava/lang/Object;

    iput-object p2, p0, LE1/s;->d:Ljava/lang/Object;

    iput-object p3, p0, LE1/s;->e:Ljava/lang/Object;

    iput-object p4, p0, LE1/s;->f:Ljava/lang/Object;

    iput-object p5, p0, LE1/s;->g:Ljava/lang/Object;

    iput-object p6, p0, LE1/s;->h:Landroid/view/View;

    iput-object p7, p0, LE1/s;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/EditText;Ljava/util/List;Ly1/x0;Ljava/util/LinkedHashMap;LP/H0;Landroid/widget/LinearLayout;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    iput v0, p0, LE1/s;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE1/s;->c:Ljava/lang/Object;

    iput-object p2, p0, LE1/s;->d:Ljava/lang/Object;

    iput-object p3, p0, LE1/s;->e:Ljava/lang/Object;

    iput-object p4, p0, LE1/s;->g:Ljava/lang/Object;

    iput-object p5, p0, LE1/s;->f:Ljava/lang/Object;

    iput-object p6, p0, LE1/s;->h:Landroid/view/View;

    iput-object p7, p0, LE1/s;->i:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget p1, p0, LE1/s;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, LE1/s;->c:Ljava/lang/Object;

    .line 7
    .line 8
    move-object v0, p1

    .line 9
    check-cast v0, Landroid/widget/EditText;

    .line 10
    .line 11
    iget-object p1, p0, LE1/s;->d:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v1, p1

    .line 14
    check-cast v1, Ljava/util/List;

    .line 15
    .line 16
    iget-object p1, p0, LE1/s;->e:Ljava/lang/Object;

    .line 17
    .line 18
    move-object v2, p1

    .line 19
    check-cast v2, Ly1/x0;

    .line 20
    .line 21
    iget-object p1, p0, LE1/s;->g:Ljava/lang/Object;

    .line 22
    .line 23
    move-object v3, p1

    .line 24
    check-cast v3, Ljava/util/LinkedHashMap;

    .line 25
    .line 26
    iget-object p1, p0, LE1/s;->f:Ljava/lang/Object;

    .line 27
    .line 28
    move-object v4, p1

    .line 29
    check-cast v4, LP/H0;

    .line 30
    .line 31
    iget-object p1, p0, LE1/s;->h:Landroid/view/View;

    .line 32
    .line 33
    move-object v5, p1

    .line 34
    check-cast v5, Landroid/widget/LinearLayout;

    .line 35
    .line 36
    iget-object p1, p0, LE1/s;->i:Ljava/lang/Object;

    .line 37
    .line 38
    move-object v6, p1

    .line 39
    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 40
    .line 41
    invoke-static/range {v0 .. v6}, Ly1/x0;->e(Landroid/widget/EditText;Ljava/util/List;Ly1/x0;Ljava/util/LinkedHashMap;LP/H0;Landroid/widget/LinearLayout;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_0
    iget-object p1, p0, LE1/s;->c:Ljava/lang/Object;

    .line 46
    .line 47
    move-object v1, p1

    .line 48
    check-cast v1, LE1/w;

    .line 49
    .line 50
    iget-object p1, p0, LE1/s;->d:Ljava/lang/Object;

    .line 51
    .line 52
    move-object v2, p1

    .line 53
    check-cast v2, Landroid/content/Context;

    .line 54
    .line 55
    iget-object p1, p0, LE1/s;->e:Ljava/lang/Object;

    .line 56
    .line 57
    move-object v3, p1

    .line 58
    check-cast v3, Landroid/widget/TextView;

    .line 59
    .line 60
    iget-object p1, p0, LE1/s;->f:Ljava/lang/Object;

    .line 61
    .line 62
    move-object v4, p1

    .line 63
    check-cast v4, LL1/a;

    .line 64
    .line 65
    iget-object p1, p0, LE1/s;->g:Ljava/lang/Object;

    .line 66
    .line 67
    move-object v5, p1

    .line 68
    check-cast v5, Landroid/widget/TextView;

    .line 69
    .line 70
    iget-object p1, p0, LE1/s;->h:Landroid/view/View;

    .line 71
    .line 72
    move-object v6, p1

    .line 73
    check-cast v6, Landroid/widget/Button;

    .line 74
    .line 75
    iget-object p1, p0, LE1/s;->i:Ljava/lang/Object;

    .line 76
    .line 77
    move-object v7, p1

    .line 78
    check-cast v7, Landroid/widget/Button;

    .line 79
    .line 80
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const-string v0, "getViewLifecycleOwner(...)"

    .line 85
    .line 86
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    new-instance v0, LE1/u;

    .line 94
    .line 95
    const/4 v8, 0x0

    .line 96
    const/4 v9, 0x1

    .line 97
    invoke-direct/range {v0 .. v9}, LE1/u;-><init>(LE1/w;Landroid/content/Context;Landroid/widget/TextView;LL1/a;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;Lkotlin/coroutines/Continuation;I)V

    .line 98
    .line 99
    .line 100
    const/4 v1, 0x3

    .line 101
    const/4 v2, 0x0

    .line 102
    invoke-static {p1, v2, v0, v1}, LV1/A;->c(LV1/x;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)LV1/p0;

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :pswitch_1
    iget-object p1, p0, LE1/s;->c:Ljava/lang/Object;

    .line 107
    .line 108
    move-object v1, p1

    .line 109
    check-cast v1, LE1/w;

    .line 110
    .line 111
    iget-object p1, p0, LE1/s;->d:Ljava/lang/Object;

    .line 112
    .line 113
    move-object v2, p1

    .line 114
    check-cast v2, Landroid/content/Context;

    .line 115
    .line 116
    iget-object p1, p0, LE1/s;->e:Ljava/lang/Object;

    .line 117
    .line 118
    move-object v3, p1

    .line 119
    check-cast v3, Landroid/widget/TextView;

    .line 120
    .line 121
    iget-object p1, p0, LE1/s;->f:Ljava/lang/Object;

    .line 122
    .line 123
    move-object v4, p1

    .line 124
    check-cast v4, LL1/a;

    .line 125
    .line 126
    iget-object p1, p0, LE1/s;->g:Ljava/lang/Object;

    .line 127
    .line 128
    move-object v5, p1

    .line 129
    check-cast v5, Landroid/widget/TextView;

    .line 130
    .line 131
    iget-object p1, p0, LE1/s;->h:Landroid/view/View;

    .line 132
    .line 133
    move-object v6, p1

    .line 134
    check-cast v6, Landroid/widget/Button;

    .line 135
    .line 136
    iget-object p1, p0, LE1/s;->i:Ljava/lang/Object;

    .line 137
    .line 138
    move-object v7, p1

    .line 139
    check-cast v7, Landroid/widget/Button;

    .line 140
    .line 141
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    const-string v0, "getViewLifecycleOwner(...)"

    .line 146
    .line 147
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    new-instance v0, LE1/u;

    .line 155
    .line 156
    const/4 v8, 0x0

    .line 157
    const/4 v9, 0x0

    .line 158
    invoke-direct/range {v0 .. v9}, LE1/u;-><init>(LE1/w;Landroid/content/Context;Landroid/widget/TextView;LL1/a;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;Lkotlin/coroutines/Continuation;I)V

    .line 159
    .line 160
    .line 161
    const/4 v1, 0x3

    .line 162
    const/4 v2, 0x0

    .line 163
    invoke-static {p1, v2, v0, v1}, LV1/A;->c(LV1/x;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)LV1/p0;

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
