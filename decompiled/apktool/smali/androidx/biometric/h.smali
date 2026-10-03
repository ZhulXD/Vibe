.class public final Landroidx/biometric/h;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/CharSequence;

.field public final synthetic e:Landroidx/biometric/p;


# direct methods
.method public synthetic constructor <init>(Landroidx/biometric/p;ILjava/lang/CharSequence;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/biometric/h;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/biometric/h;->e:Landroidx/biometric/p;

    .line 4
    .line 5
    iput p2, p0, Landroidx/biometric/h;->c:I

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/biometric/h;->d:Ljava/lang/CharSequence;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/biometric/h;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroidx/biometric/h;->c:I

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/biometric/h;->d:Ljava/lang/CharSequence;

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/biometric/h;->e:Landroidx/biometric/p;

    .line 11
    .line 12
    invoke-virtual {v2, v0, v1}, Landroidx/biometric/p;->g(ILjava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, Landroidx/biometric/h;->e:Landroidx/biometric/p;

    .line 17
    .line 18
    iget-object v0, v0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 19
    .line 20
    iget-object v1, v0, Landroidx/biometric/w;->b:Lcom/bumptech/glide/c;

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    new-instance v1, Landroidx/biometric/t;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v1, v0, Landroidx/biometric/w;->b:Lcom/bumptech/glide/c;

    .line 30
    .line 31
    :cond_0
    iget-object v0, v0, Landroidx/biometric/w;->b:Lcom/bumptech/glide/c;

    .line 32
    .line 33
    iget v1, p0, Landroidx/biometric/h;->c:I

    .line 34
    .line 35
    iget-object v2, p0, Landroidx/biometric/h;->d:Ljava/lang/CharSequence;

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/c;->z(ILjava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
