.class public final LT0/a;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public c:I

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILX/p;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LT0/a;->b:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, LT0/a;->c:I

    .line 4
    iput-object p2, p0, LT0/a;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(La1/d;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LT0/a;->b:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT0/a;->d:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 10
    iput p1, p0, LT0/a;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p3, p0, LT0/a;->b:I

    iput-object p1, p0, LT0/a;->d:Ljava/lang/Object;

    iput p2, p0, LT0/a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILjava/lang/Throwable;)V
    .locals 0

    const/4 p3, 0x3

    iput p3, p0, LT0/a;->b:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string p3, "initCallbacks cannot be null"

    invoke-static {p1, p3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p3, p0, LT0/a;->d:Ljava/lang/Object;

    .line 8
    iput p2, p0, LT0/a;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, LT0/a;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LT0/a;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/material/datepicker/l;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/google/android/material/datepicker/l;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    .line 12
    iget v1, p0, LT0/a;->c:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object v0, p0, LT0/a;->d:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iget v2, p0, LT0/a;->c:I

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    const/4 v4, 0x0

    .line 30
    if-eq v2, v3, :cond_0

    .line 31
    .line 32
    :goto_0
    if-ge v4, v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Landroidx/emoji2/text/h;

    .line 39
    .line 40
    invoke-virtual {v2}, Landroidx/emoji2/text/h;->a()V

    .line 41
    .line 42
    .line 43
    add-int/lit8 v4, v4, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    :goto_1
    if-ge v4, v1, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Landroidx/emoji2/text/h;

    .line 53
    .line 54
    invoke-virtual {v2}, Landroidx/emoji2/text/h;->b()V

    .line 55
    .line 56
    .line 57
    add-int/lit8 v4, v4, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    return-void

    .line 61
    :pswitch_1
    iget-object v0, p0, LT0/a;->d:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, La1/d;

    .line 64
    .line 65
    iget-object v0, v0, La1/d;->i:La1/b;

    .line 66
    .line 67
    iget v1, p0, LT0/a;->c:I

    .line 68
    .line 69
    const/4 v2, 0x4

    .line 70
    invoke-virtual {v0, v1, v2}, LD/b;->o(II)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :pswitch_2
    iget-object v0, p0, LT0/a;->d:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 77
    .line 78
    iget v1, p0, LT0/a;->c:I

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :pswitch_3
    iget-object v0, p0, LT0/a;->d:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v0, LT0/d;

    .line 87
    .line 88
    iget v1, p0, LT0/a;->c:I

    .line 89
    .line 90
    invoke-virtual {v0, v1}, LT0/d;->i(I)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    nop

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
