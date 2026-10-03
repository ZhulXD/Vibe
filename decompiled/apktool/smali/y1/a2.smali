.class public final synthetic Ly1/a2;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/game/VxAceCheatActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/game/VxAceCheatActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly1/a2;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ly1/a2;->c:Lcom/minhub/gamehub/game/VxAceCheatActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Ly1/a2;->b:I

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Ly1/a2;->c:Lcom/minhub/gamehub/game/VxAceCheatActivity;

    .line 13
    .line 14
    iput p1, v0, Lcom/minhub/gamehub/game/VxAceCheatActivity;->f:I

    .line 15
    .line 16
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p1

    .line 19
    :pswitch_0
    iget-object v0, p0, Ly1/a2;->c:Lcom/minhub/gamehub/game/VxAceCheatActivity;

    .line 20
    .line 21
    iput p1, v0, Lcom/minhub/gamehub/game/VxAceCheatActivity;->g:I

    .line 22
    .line 23
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p1

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
