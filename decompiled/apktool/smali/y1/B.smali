.class public final synthetic Ly1/B;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Lcom/minhub/gamehub/game/GameActivity;

.field public final synthetic c:LQ1/d;

.field public final synthetic d:Landroid/webkit/WebView;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/game/GameActivity;LQ1/d;Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly1/B;->b:Lcom/minhub/gamehub/game/GameActivity;

    .line 5
    .line 6
    iput-object p2, p0, Ly1/B;->c:LQ1/d;

    .line 7
    .line 8
    iput-object p3, p0, Ly1/B;->d:Landroid/webkit/WebView;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result v6

    .line 7
    move-object v3, p2

    .line 8
    check-cast v3, Ljava/lang/String;

    .line 9
    .line 10
    move-object v4, p3

    .line 11
    check-cast v4, Ljava/lang/String;

    .line 12
    .line 13
    sget p1, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 14
    .line 15
    const-string p1, "title"

    .line 16
    .line 17
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string p1, "defaultValue"

    .line 21
    .line 22
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Ly1/D;

    .line 26
    .line 27
    iget-object v1, p0, Ly1/B;->b:Lcom/minhub/gamehub/game/GameActivity;

    .line 28
    .line 29
    iget-object v2, p0, Ly1/B;->c:LQ1/d;

    .line 30
    .line 31
    iget-object v5, p0, Ly1/B;->d:Landroid/webkit/WebView;

    .line 32
    .line 33
    invoke-direct/range {v0 .. v6}, Ly1/D;-><init>(Lcom/minhub/gamehub/game/GameActivity;LQ1/d;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebView;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p1
.end method
