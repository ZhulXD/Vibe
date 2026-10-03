.class public final Landroidx/biometric/i;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/biometric/p;


# direct methods
.method public synthetic constructor <init>(Landroidx/biometric/p;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/biometric/i;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/biometric/i;->c:Landroidx/biometric/p;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/biometric/i;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/biometric/i;->c:Landroidx/biometric/p;

    .line 7
    .line 8
    iget-object v0, v0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, v0, Landroidx/biometric/w;->t:Z

    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, Landroidx/biometric/i;->c:Landroidx/biometric/p;

    .line 15
    .line 16
    iget-object v0, v0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 17
    .line 18
    iget-object v1, v0, Landroidx/biometric/w;->b:Lcom/bumptech/glide/c;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    new-instance v1, Landroidx/biometric/t;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, v0, Landroidx/biometric/w;->b:Lcom/bumptech/glide/c;

    .line 28
    .line 29
    :cond_0
    iget-object v0, v0, Landroidx/biometric/w;->b:Lcom/bumptech/glide/c;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
