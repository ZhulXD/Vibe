.class public final synthetic LE1/d;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:LE1/g;


# direct methods
.method public synthetic constructor <init>(LE1/g;I)V
    .locals 0

    .line 1
    iput p2, p0, LE1/d;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LE1/d;->c:LE1/g;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget p1, p0, LE1/d;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, LE1/d;->c:LE1/g;

    .line 7
    .line 8
    invoke-virtual {p1}, LE1/g;->h()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object v3, p0, LE1/d;->c:LE1/g;

    .line 13
    .line 14
    invoke-virtual {v3}, LE1/g;->c()V

    .line 15
    .line 16
    .line 17
    new-instance v4, LH0/o;

    .line 18
    .line 19
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {v4, p1}, LH0/o;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const v0, 0x7f0c00ad

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const v0, 0x7f090156

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    move-object v1, v0

    .line 46
    check-cast v1, Landroid/widget/EditText;

    .line 47
    .line 48
    const v0, 0x7f090362

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    move-object v2, v0

    .line 56
    check-cast v2, Landroid/widget/TextView;

    .line 57
    .line 58
    const v0, 0x7f09007c

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const v5, 0x7f0900d8

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    new-instance v5, LC1/c1;

    .line 73
    .line 74
    const/4 v7, 0x1

    .line 75
    invoke-direct {v5, v7, v2}, LC1/c1;-><init>(ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 79
    .line 80
    .line 81
    new-instance v5, LC1/v;

    .line 82
    .line 83
    const/4 v7, 0x3

    .line 84
    invoke-direct {v5, v4, v7}, LC1/v;-><init>(LH0/o;I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    .line 89
    .line 90
    new-instance v0, LC1/G0;

    .line 91
    .line 92
    const/4 v5, 0x2

    .line 93
    invoke-direct/range {v0 .. v5}, LC1/G0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;LH0/o;I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    .line 98
    .line 99
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v4, p1}, LE1/g;->g(LH0/o;Landroid/view/View;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :pswitch_1
    iget-object p1, p0, LE1/d;->c:LE1/g;

    .line 110
    .line 111
    iget-object v0, p1, LE1/g;->d:Ljava/util/ArrayList;

    .line 112
    .line 113
    new-instance v1, LB1/A;

    .line 114
    .line 115
    iget v2, p1, LE1/g;->f:I

    .line 116
    .line 117
    const-string v3, "row_"

    .line 118
    .line 119
    invoke-static {v2, v3}, LE/b;->i(ILjava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    const/4 v3, 0x0

    .line 124
    invoke-direct {v1, v2, v3, v3}, LB1/A;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    iget v0, p1, LE1/g;->f:I

    .line 131
    .line 132
    add-int/lit8 v0, v0, 0x1

    .line 133
    .line 134
    iput v0, p1, LE1/g;->f:I

    .line 135
    .line 136
    invoke-virtual {p1}, LE1/g;->f()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, LE1/g;->i()V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
