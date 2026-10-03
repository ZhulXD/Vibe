.class public final synthetic LC1/A;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic b:Lcom/minhub/gamehub/hub/AddGameActivity;

.field public final synthetic c:Le/g;

.field public final synthetic d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic e:LD1/b;

.field public final synthetic f:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/hub/AddGameActivity;Le/g;Ljava/util/concurrent/atomic/AtomicBoolean;LD1/b;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LC1/A;->b:Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 5
    .line 6
    iput-object p2, p0, LC1/A;->c:Le/g;

    .line 7
    .line 8
    iput-object p3, p0, LC1/A;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    iput-object p4, p0, LC1/A;->e:LD1/b;

    .line 11
    .line 12
    iput-object p5, p0, LC1/A;->f:Ljava/io/File;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1
    iget-object p1, p0, LC1/A;->b:Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 2
    .line 3
    iget-object v0, p0, LC1/A;->c:Le/g;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/minhub/gamehub/hub/AddGameActivity;->C(Landroid/app/Dialog;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, LC1/A;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    iget-object v1, p0, LC1/A;->e:LD1/b;

    .line 11
    .line 12
    iget-object v2, p0, LC1/A;->f:Ljava/io/File;

    .line 13
    .line 14
    invoke-static {v0, v1, p1, v2}, LC1/O;->j(Ljava/util/concurrent/atomic/AtomicBoolean;LD1/b;Lcom/minhub/gamehub/hub/AddGameActivity;Ljava/io/File;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
