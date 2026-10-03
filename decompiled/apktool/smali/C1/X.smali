.class public final LC1/X;
.super Lcom/bumptech/glide/c;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final synthetic c:Lcom/minhub/gamehub/hub/AppLockActivity;


# direct methods
.method public constructor <init>(Lcom/minhub/gamehub/hub/AppLockActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LC1/X;->c:Lcom/minhub/gamehub/hub/AppLockActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final A(Landroidx/biometric/s;)V
    .locals 3

    .line 1
    const-string v0, "result"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, LC1/X;->c:Lcom/minhub/gamehub/hub/AppLockActivity;

    .line 7
    .line 8
    iget-object v0, p1, Lcom/minhub/gamehub/hub/AppLockActivity;->f:LC1/V1;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string v0, "ui"

    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    :cond_0
    new-instance v1, LC1/W;

    .line 19
    .line 20
    const/4 v2, 0x4

    .line 21
    invoke-direct {v1, p1, v2}, LC1/W;-><init>(Lcom/minhub/gamehub/hub/AppLockActivity;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, LC1/V1;->g(Lkotlin/jvm/functions/Function0;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final z(ILjava/lang/CharSequence;)V
    .locals 1

    .line 1
    const-string v0, "msg"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0xa

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    const/16 v0, 0xd

    .line 11
    .line 12
    if-eq p1, v0, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, LC1/X;->c:Lcom/minhub/gamehub/hub/AppLockActivity;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
