.class public final synthetic LC1/y;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic c:LD1/b;

.field public final synthetic d:Lcom/minhub/gamehub/hub/AddGameActivity;

.field public final synthetic e:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;LD1/b;Lcom/minhub/gamehub/hub/AddGameActivity;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LC1/y;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    iput-object p2, p0, LC1/y;->c:LD1/b;

    .line 7
    .line 8
    iput-object p3, p0, LC1/y;->d:Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 9
    .line 10
    iput-object p4, p0, LC1/y;->e:Ljava/io/File;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1
    iget-object p1, p0, LC1/y;->d:Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 2
    .line 3
    iget-object v0, p0, LC1/y;->e:Ljava/io/File;

    .line 4
    .line 5
    iget-object v1, p0, LC1/y;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    iget-object v2, p0, LC1/y;->c:LD1/b;

    .line 8
    .line 9
    invoke-static {v1, v2, p1, v0}, LC1/O;->j(Ljava/util/concurrent/atomic/AtomicBoolean;LD1/b;Lcom/minhub/gamehub/hub/AddGameActivity;Ljava/io/File;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
