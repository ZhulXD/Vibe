.class public final synthetic LC1/i2;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/hub/SetupAppLockActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/hub/SetupAppLockActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, LC1/i2;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LC1/i2;->c:Lcom/minhub/gamehub/hub/SetupAppLockActivity;

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
    iget v0, p0, LC1/i2;->b:I

    .line 2
    .line 3
    iget-object v1, p0, LC1/i2;->c:Lcom/minhub/gamehub/hub/SetupAppLockActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, v1, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->g:Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/text/StringsKt;->m(Ljava/lang/StringBuilder;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->n()V

    .line 14
    .line 15
    .line 16
    iget-object v0, v1, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->f:LC1/V1;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const-string v0, "ui"

    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    :cond_0
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->m()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, LC1/V1;->c(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 34
    .line 35
    return-object v0

    .line 36
    :pswitch_0
    sget v0, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->j:I

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 45
    .line 46
    .line 47
    const/high16 v0, 0x10a0000

    .line 48
    .line 49
    const v2, 0x10a0001

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 53
    .line 54
    .line 55
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 56
    .line 57
    return-object v0

    .line 58
    :pswitch_1
    iget-object v0, v1, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->g:Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-static {v0}, Lkotlin/text/StringsKt;->m(Ljava/lang/StringBuilder;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->n()V

    .line 64
    .line 65
    .line 66
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 67
    .line 68
    return-object v0

    .line 69
    :pswitch_2
    iget-object v0, v1, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->g:Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-lez v2, :cond_2

    .line 76
    .line 77
    invoke-static {v0}, Lkotlin/text/StringsKt;->m(Ljava/lang/StringBuilder;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->n()V

    .line 81
    .line 82
    .line 83
    :cond_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 84
    .line 85
    return-object v0

    .line 86
    :pswitch_3
    iget-object v0, v1, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->g:Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-lez v2, :cond_3

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    add-int/lit8 v2, v2, -0x1

    .line 99
    .line 100
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->n()V

    .line 104
    .line 105
    .line 106
    :cond_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 107
    .line 108
    return-object v0

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
