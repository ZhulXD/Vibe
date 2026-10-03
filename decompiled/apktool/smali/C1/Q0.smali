.class public final synthetic LC1/Q0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/minhub/gamehub/hub/GameDetailActivity;

.field public final synthetic c:Landroid/net/Uri;

.field public final synthetic d:I

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/hub/GameDetailActivity;Landroid/net/Uri;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LC1/Q0;->b:Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 5
    .line 6
    iput-object p2, p0, LC1/Q0;->c:Landroid/net/Uri;

    .line 7
    .line 8
    iput p3, p0, LC1/Q0;->d:I

    .line 9
    .line 10
    iput-boolean p4, p0, LC1/Q0;->e:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget p1, p0, LC1/Q0;->d:I

    .line 2
    .line 3
    iget-boolean p2, p0, LC1/Q0;->e:Z

    .line 4
    .line 5
    iget-object v0, p0, LC1/Q0;->b:Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 6
    .line 7
    iget-object v1, p0, LC1/Q0;->c:Landroid/net/Uri;

    .line 8
    .line 9
    invoke-static {v0, v1, p1, p2}, LC1/R0;->a(Lcom/minhub/gamehub/hub/GameDetailActivity;Landroid/net/Uri;IZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
