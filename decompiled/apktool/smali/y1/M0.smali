.class public final synthetic Ly1/M0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ly1/M0;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Ly1/M0;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Ly1/M0;->d:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget p1, p0, Ly1/M0;->b:I

    .line 2
    .line 3
    iget-object v0, p0, Ly1/M0;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v1, p0, Ly1/M0;->c:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v1, Le/g;

    .line 11
    .line 12
    check-cast v0, Lcom/minhub/gamehub/game/VxAceGameActivity;

    .line 13
    .line 14
    invoke-virtual {v1}, Le/D;->dismiss()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    check-cast v1, Landroid/app/Dialog;

    .line 22
    .line 23
    check-cast v0, Lcom/minhub/gamehub/game/KiriKiriGameActivity;

    .line 24
    .line 25
    sget p1, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->e:I

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_1
    check-cast v1, Ly1/j1;

    .line 35
    .line 36
    check-cast v0, Ljava/lang/String;

    .line 37
    .line 38
    iget-object p1, v1, Ly1/j1;->i:Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 39
    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    new-instance v2, LE1/a;

    .line 43
    .line 44
    const/4 v3, 0x3

    .line 45
    invoke-direct {v2, v0, v3}, LE1/a;-><init>(Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v2}, Lcom/minhub/gamehub/editor/EditModeOverlay;->g(Lkotlin/jvm/functions/Function1;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-virtual {v1}, Ly1/j1;->g()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_2
    check-cast v1, LI1/j;

    .line 56
    .line 57
    check-cast v0, LB1/x;

    .line 58
    .line 59
    iget-object p1, v1, LI1/j;->d:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p1, Ly1/F0;

    .line 62
    .line 63
    iget-object v0, v0, LB1/x;->a:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Ly1/F0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, LI1/j;->c()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
