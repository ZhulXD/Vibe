.class public final Lk1/j;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:Lk1/l;

.field public c:Lk1/l;

.field public d:I

.field public final synthetic e:Lk1/m;

.field public final synthetic f:I


# direct methods
.method public constructor <init>(Lk1/m;I)V
    .locals 0

    .line 1
    iput p2, p0, Lk1/j;->f:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lk1/j;->e:Lk1/m;

    .line 7
    .line 8
    iget-object p2, p1, Lk1/m;->g:Lk1/l;

    .line 9
    .line 10
    iget-object p2, p2, Lk1/l;->e:Lk1/l;

    .line 11
    .line 12
    iput-object p2, p0, Lk1/j;->b:Lk1/l;

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    iput-object p2, p0, Lk1/j;->c:Lk1/l;

    .line 16
    .line 17
    iget p1, p1, Lk1/m;->f:I

    .line 18
    .line 19
    iput p1, p0, Lk1/j;->d:I

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk1/j;->b()Lk1/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final b()Lk1/l;
    .locals 3

    .line 1
    iget-object v0, p0, Lk1/j;->b:Lk1/l;

    .line 2
    .line 3
    iget-object v1, p0, Lk1/j;->e:Lk1/m;

    .line 4
    .line 5
    iget-object v2, v1, Lk1/m;->g:Lk1/l;

    .line 6
    .line 7
    if-eq v0, v2, :cond_1

    .line 8
    .line 9
    iget v1, v1, Lk1/m;->f:I

    .line 10
    .line 11
    iget v2, p0, Lk1/j;->d:I

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    iget-object v1, v0, Lk1/l;->e:Lk1/l;

    .line 16
    .line 17
    iput-object v1, p0, Lk1/j;->b:Lk1/l;

    .line 18
    .line 19
    iput-object v0, p0, Lk1/j;->c:Lk1/l;

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 31
    .line 32
    .line 33
    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lk1/j;->b:Lk1/l;

    .line 2
    .line 3
    iget-object v1, p0, Lk1/j;->e:Lk1/m;

    .line 4
    .line 5
    iget-object v1, v1, Lk1/m;->g:Lk1/l;

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lk1/j;->f:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lk1/j;->a()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    invoke-virtual {p0}, Lk1/j;->b()Lk1/l;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Lk1/l;->g:Ljava/lang/Object;

    .line 16
    .line 17
    return-object v0

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk1/j;->c:Lk1/l;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iget-object v2, p0, Lk1/j;->e:Lk1/m;

    .line 7
    .line 8
    invoke-virtual {v2, v0, v1}, Lk1/m;->c(Lk1/l;Z)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lk1/j;->c:Lk1/l;

    .line 13
    .line 14
    iget v0, v2, Lk1/m;->f:I

    .line 15
    .line 16
    iput v0, p0, Lk1/j;->d:I

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 22
    .line 23
    .line 24
    throw v0
.end method
