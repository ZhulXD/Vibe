.class public final synthetic LC1/e2;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:LC1/g2;

.field public final synthetic d:Lcom/minhub/gamehub/data/Save;


# direct methods
.method public synthetic constructor <init>(LC1/g2;Lcom/minhub/gamehub/data/Save;I)V
    .locals 0

    .line 1
    iput p3, p0, LC1/e2;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LC1/e2;->c:LC1/g2;

    .line 4
    .line 5
    iput-object p2, p0, LC1/e2;->d:Lcom/minhub/gamehub/data/Save;

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
    .locals 1

    .line 1
    iget p1, p0, LC1/e2;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, LC1/e2;->d:Lcom/minhub/gamehub/data/Save;

    .line 7
    .line 8
    iget-object v0, p0, LC1/e2;->c:LC1/g2;

    .line 9
    .line 10
    iget-object v0, v0, LC1/g2;->f:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object p1, p0, LC1/e2;->d:Lcom/minhub/gamehub/data/Save;

    .line 17
    .line 18
    iget-object v0, p0, LC1/e2;->c:LC1/g2;

    .line 19
    .line 20
    iget-object v0, v0, LC1/g2;->e:Lkotlin/jvm/functions/Function1;

    .line 21
    .line 22
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_1
    iget-object p1, p0, LC1/e2;->d:Lcom/minhub/gamehub/data/Save;

    .line 27
    .line 28
    iget-object v0, p0, LC1/e2;->c:LC1/g2;

    .line 29
    .line 30
    iget-object v0, v0, LC1/g2;->d:Lkotlin/jvm/functions/Function1;

    .line 31
    .line 32
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
