.class public final synthetic LE1/q;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:LE1/w;

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(LE1/w;Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput p3, p0, LE1/q;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LE1/q;->c:LE1/w;

    .line 4
    .line 5
    iput-object p2, p0, LE1/q;->d:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, LE1/q;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object v0, Ly1/v1;->h:Ly1/v1;

    .line 7
    .line 8
    iget-object v1, p0, LE1/q;->c:LE1/w;

    .line 9
    .line 10
    iget-object v2, v1, LE1/w;->b:LM1/g;

    .line 11
    .line 12
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, v2, LM1/g;->g:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Landroid/widget/TextView;

    .line 18
    .line 19
    const-string v3, "tvRenpy8Status"

    .line 20
    .line 21
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v3, v1, LE1/w;->b:LM1/g;

    .line 25
    .line 26
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v3, v3, LM1/g;->b:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v3, Landroid/widget/Button;

    .line 32
    .line 33
    const-string v4, "btnRenpy8Install"

    .line 34
    .line 35
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v4, p0, LE1/q;->d:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {v1, v4, v0, v2, v3}, LE1/w;->c(Landroid/content/Context;Ly1/v1;Landroid/widget/TextView;Landroid/widget/Button;)V

    .line 41
    .line 42
    .line 43
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 44
    .line 45
    return-object v0

    .line 46
    :pswitch_0
    sget-object v0, Ly1/v1;->g:Ly1/v1;

    .line 47
    .line 48
    iget-object v1, p0, LE1/q;->c:LE1/w;

    .line 49
    .line 50
    iget-object v2, v1, LE1/w;->b:LM1/g;

    .line 51
    .line 52
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object v2, v2, LM1/g;->h:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v2, Landroid/widget/TextView;

    .line 58
    .line 59
    const-string v3, "tvVxaceStatus"

    .line 60
    .line 61
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v3, v1, LE1/w;->b:LM1/g;

    .line 65
    .line 66
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iget-object v3, v3, LM1/g;->c:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v3, Landroid/widget/Button;

    .line 72
    .line 73
    const-string v4, "btnVxaceInstall"

    .line 74
    .line 75
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v4, p0, LE1/q;->d:Landroid/content/Context;

    .line 79
    .line 80
    invoke-virtual {v1, v4, v0, v2, v3}, LE1/w;->c(Landroid/content/Context;Ly1/v1;Landroid/widget/TextView;Landroid/widget/Button;)V

    .line 81
    .line 82
    .line 83
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 84
    .line 85
    return-object v0

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
