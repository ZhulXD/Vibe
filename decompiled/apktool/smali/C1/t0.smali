.class public final synthetic LC1/t0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/minhub/gamehub/data/Game;

.field public final synthetic d:LG1/b;

.field public final synthetic e:Lcom/minhub/gamehub/hub/GameDetailActivity;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/minhub/gamehub/data/Game;LG1/b;Lcom/minhub/gamehub/hub/GameDetailActivity;)V
    .locals 1

    .line 1
    sget-object v0, LG1/g;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, LC1/t0;->b:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p2, p0, LC1/t0;->c:Lcom/minhub/gamehub/data/Game;

    .line 9
    .line 10
    iput-object p3, p0, LC1/t0;->d:LG1/b;

    .line 11
    .line 12
    iput-object p4, p0, LC1/t0;->e:Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 1
    sget-object p2, LG1/g;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p2, p0, LC1/t0;->b:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, LC1/t0;->c:Lcom/minhub/gamehub/data/Game;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/minhub/gamehub/data/Game;->getCatalogPostId()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget-object v2, p0, LC1/t0;->d:LG1/b;

    .line 15
    .line 16
    iget-object v2, v2, LG1/b;->a:Ljava/lang/String;

    .line 17
    .line 18
    const-string v3, "ctx"

    .line 19
    .line 20
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v3, "version"

    .line 24
    .line 25
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object v3, LG1/g;->a:Ljava/lang/String;

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-virtual {p2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v4, "declined_"

    .line 42
    .line 43
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 58
    .line 59
    .line 60
    iget-object p2, p0, LC1/t0;->e:Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    iget-object p2, p2, Lw1/e;->e:Landroid/widget/Button;

    .line 67
    .line 68
    const/4 v0, 0x1

    .line 69
    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 70
    .line 71
    .line 72
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 73
    .line 74
    .line 75
    return-void
.end method
