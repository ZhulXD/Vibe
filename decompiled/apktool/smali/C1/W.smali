.class public final synthetic LC1/W;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/hub/AppLockActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/hub/AppLockActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, LC1/W;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LC1/W;->c:Lcom/minhub/gamehub/hub/AppLockActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, LC1/W;->b:I

    .line 2
    .line 3
    iget-object v1, p0, LC1/W;->c:Lcom/minhub/gamehub/hub/AppLockActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Lcom/minhub/gamehub/hub/AppLockActivity;->i:I

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/AppLockActivity;->n()V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 14
    .line 15
    return-object v0

    .line 16
    :pswitch_0
    iget-object v0, v1, Lcom/minhub/gamehub/hub/AppLockActivity;->g:Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/text/StringsKt;->m(Ljava/lang/StringBuilder;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/AppLockActivity;->o()V

    .line 22
    .line 23
    .line 24
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 25
    .line 26
    return-object v0

    .line 27
    :pswitch_1
    sget v0, Lcom/minhub/gamehub/hub/AppLockActivity;->i:I

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/AppLockActivity;->n()V

    .line 30
    .line 31
    .line 32
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 33
    .line 34
    return-object v0

    .line 35
    :pswitch_2
    iget-object v0, v1, Lcom/minhub/gamehub/hub/AppLockActivity;->g:Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-lez v2, :cond_0

    .line 42
    .line 43
    invoke-static {v0}, Lkotlin/text/StringsKt;->m(Ljava/lang/StringBuilder;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/AppLockActivity;->o()V

    .line 47
    .line 48
    .line 49
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 50
    .line 51
    return-object v0

    .line 52
    :pswitch_3
    iget-object v0, v1, Lcom/minhub/gamehub/hub/AppLockActivity;->g:Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-lez v2, :cond_1

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    add-int/lit8 v2, v2, -0x1

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/AppLockActivity;->o()V

    .line 70
    .line 71
    .line 72
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 73
    .line 74
    return-object v0

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
