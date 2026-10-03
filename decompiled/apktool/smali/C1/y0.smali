.class public final LC1/y0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lc1/c;


# instance fields
.field public final synthetic a:I

.field public final b:Landroid/view/KeyEvent$Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/view/KeyEvent$Callback;I)V
    .locals 0

    .line 1
    iput p2, p0, LC1/y0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, LC1/y0;->b:Landroid/view/KeyEvent$Callback;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final d(Lc1/f;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final e(Lc1/f;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final f(Lc1/f;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final g(Lc1/f;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final h(Lc1/f;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final a(Lc1/f;)V
    .locals 1

    .line 1
    iget v0, p0, LC1/y0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    return-void

    .line 7
    :pswitch_1
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget p1, p1, Lc1/f;->b:I

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, LC1/y0;->b:Landroid/view/KeyEvent$Callback;

    .line 15
    .line 16
    check-cast p1, Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 17
    .line 18
    invoke-static {p1}, LC1/R0;->d(Lcom/minhub/gamehub/hub/GameDetailActivity;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lc1/f;)V
    .locals 5

    .line 1
    iget v0, p0, LC1/y0;->a:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const-string v2, "tab"

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object v4, p0, LC1/y0;->b:Landroid/view/KeyEvent$Callback;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v4, Landroidx/viewpager2/widget/ViewPager2;

    .line 13
    .line 14
    iget p1, p1, Lc1/f;->b:I

    .line 15
    .line 16
    invoke-virtual {v4, p1, v3}, Landroidx/viewpager2/widget/ViewPager2;->b(IZ)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    check-cast v4, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;

    .line 24
    .line 25
    iget p1, p1, Lc1/f;->b:I

    .line 26
    .line 27
    if-eq p1, v3, :cond_1

    .line 28
    .line 29
    if-eq p1, v1, :cond_0

    .line 30
    .line 31
    sget-object p1, LC1/K1;->b:LC1/K1;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    sget-object p1, LC1/K1;->d:LC1/K1;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    sget-object p1, LC1/K1;->c:LC1/K1;

    .line 38
    .line 39
    :goto_0
    sget v0, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->i:I

    .line 40
    .line 41
    invoke-virtual {v4, p1}, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->p(LC1/K1;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_1
    check-cast v4, Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 46
    .line 47
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget p1, p1, Lc1/f;->b:I

    .line 51
    .line 52
    if-eqz p1, :cond_4

    .line 53
    .line 54
    if-eq p1, v3, :cond_3

    .line 55
    .line 56
    if-eq p1, v1, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    sget p1, Lcom/minhub/gamehub/hub/GameDetailActivity;->w:I

    .line 60
    .line 61
    invoke-virtual {v4, v1}, Lcom/minhub/gamehub/hub/GameDetailActivity;->t(I)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    sget p1, Lcom/minhub/gamehub/hub/GameDetailActivity;->w:I

    .line 66
    .line 67
    invoke-virtual {v4, v3}, Lcom/minhub/gamehub/hub/GameDetailActivity;->t(I)V

    .line 68
    .line 69
    .line 70
    invoke-static {v4}, LC1/R0;->d(Lcom/minhub/gamehub/hub/GameDetailActivity;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_4
    sget p1, Lcom/minhub/gamehub/hub/GameDetailActivity;->w:I

    .line 75
    .line 76
    const/4 p1, 0x0

    .line 77
    invoke-virtual {v4, p1}, Lcom/minhub/gamehub/hub/GameDetailActivity;->t(I)V

    .line 78
    .line 79
    .line 80
    :goto_1
    return-void

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lc1/f;)V
    .locals 0

    .line 1
    iget p1, p0, LC1/y0;->a:I

    .line 2
    .line 3
    return-void
.end method
