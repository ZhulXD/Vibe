.class public final Ly1/P1;
.super Lv0/d;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final synthetic d:Lcom/minhub/gamehub/game/SplashGameActivity;

.field public final synthetic e:Lcom/minhub/gamehub/data/Game;

.field public final synthetic f:Ly1/T1;


# direct methods
.method public constructor <init>(Lcom/minhub/gamehub/game/SplashGameActivity;Lcom/minhub/gamehub/data/Game;Ly1/T1;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly1/P1;->d:Lcom/minhub/gamehub/game/SplashGameActivity;

    .line 2
    .line 3
    iput-object p2, p0, Ly1/P1;->e:Lcom/minhub/gamehub/data/Game;

    .line 4
    .line 5
    iput-object p3, p0, Ly1/P1;->f:Ly1/T1;

    .line 6
    .line 7
    invoke-direct {p0, p4}, Lv0/d;-><init>(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ly1/P1;->e:Lcom/minhub/gamehub/data/Game;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Ly1/L1;->G(Lcom/minhub/gamehub/data/Game;Z)Ly1/T1;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Ly1/P1;->d:Lcom/minhub/gamehub/game/SplashGameActivity;

    .line 9
    .line 10
    invoke-static {v1, v0, p1}, Lcom/minhub/gamehub/game/SplashGameActivity;->m(Lcom/minhub/gamehub/game/SplashGameActivity;Ly1/T1;Landroid/graphics/drawable/Drawable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final h(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    const-string v0, "resource"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Ly1/P1;->d:Lcom/minhub/gamehub/game/SplashGameActivity;

    .line 9
    .line 10
    iget-object v1, p0, Ly1/P1;->f:Ly1/T1;

    .line 11
    .line 12
    invoke-static {v0, v1, p1}, Lcom/minhub/gamehub/game/SplashGameActivity;->m(Lcom/minhub/gamehub/game/SplashGameActivity;Ly1/T1;Landroid/graphics/drawable/Drawable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final j(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    sget p1, Lcom/minhub/gamehub/game/SplashGameActivity;->h:I

    .line 2
    .line 3
    new-instance p1, Ly1/T1;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {p1, v0, v1}, Ly1/T1;-><init>(Ljava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    const-string v0, "binding"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance p1, Ly1/U1;

    .line 16
    .line 17
    sget-object v0, Ly1/V1;->b:Ly1/V1;

    .line 18
    .line 19
    invoke-direct {p1, v1, v1, v1, v0}, Ly1/U1;-><init>(ZZZLy1/V1;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Ly1/P1;->d:Lcom/minhub/gamehub/game/SplashGameActivity;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/minhub/gamehub/game/SplashGameActivity;->n(Ly1/U1;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
