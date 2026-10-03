.class public final synthetic LC1/G;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/hub/AddGameActivity;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/io/File;

.field public final synthetic f:LD1/b;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/hub/AddGameActivity;Ljava/lang/String;Ljava/io/File;LD1/b;I)V
    .locals 0

    .line 1
    iput p5, p0, LC1/G;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LC1/G;->c:Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 4
    .line 5
    iput-object p2, p0, LC1/G;->d:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p3, p0, LC1/G;->e:Ljava/io/File;

    .line 8
    .line 9
    iput-object p4, p0, LC1/G;->f:LD1/b;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, LC1/G;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LC1/G;->e:Ljava/io/File;

    .line 7
    .line 8
    iget-object v1, p0, LC1/G;->f:LD1/b;

    .line 9
    .line 10
    iget-object v2, p0, LC1/G;->c:Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 11
    .line 12
    iget-object v3, p0, LC1/G;->d:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v2, v3, v0, v1}, LC1/O;->i(Lcom/minhub/gamehub/hub/AddGameActivity;Ljava/lang/String;Ljava/io/File;LD1/b;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object v0, p0, LC1/G;->e:Ljava/io/File;

    .line 19
    .line 20
    iget-object v1, p0, LC1/G;->f:LD1/b;

    .line 21
    .line 22
    iget-object v2, p0, LC1/G;->c:Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 23
    .line 24
    iget-object v3, p0, LC1/G;->d:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v2, v3, v0, v1}, LC1/O;->i(Lcom/minhub/gamehub/hub/AddGameActivity;Ljava/lang/String;Ljava/io/File;LD1/b;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
