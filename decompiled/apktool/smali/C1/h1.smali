.class public final synthetic LC1/h1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/hub/HubActivity;

.field public final synthetic d:LA1/y;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/hub/HubActivity;LA1/y;I)V
    .locals 0

    .line 1
    iput p3, p0, LC1/h1;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LC1/h1;->c:Lcom/minhub/gamehub/hub/HubActivity;

    .line 4
    .line 5
    iput-object p2, p0, LC1/h1;->d:LA1/y;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1
    iget p1, p0, LC1/h1;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, LC1/h1;->c:Lcom/minhub/gamehub/hub/HubActivity;

    .line 7
    .line 8
    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    new-instance v0, LC1/w0;

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    iget-object v2, p0, LC1/h1;->d:LA1/y;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v0, v2, p1, v3, v1}, LC1/w0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x3

    .line 22
    invoke-static {p2, v3, v0, p1}, LV1/A;->c(LV1/x;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)LV1/p0;

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    iget-object p1, p0, LC1/h1;->c:Lcom/minhub/gamehub/hub/HubActivity;

    .line 27
    .line 28
    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    new-instance v0, LC1/i1;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    iget-object v2, p0, LC1/h1;->d:LA1/y;

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-direct {v0, v2, p1, v3, v1}, LC1/i1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 39
    .line 40
    .line 41
    const/4 p1, 0x3

    .line 42
    invoke-static {p2, v3, v0, p1}, LV1/A;->c(LV1/x;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)LV1/p0;

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
