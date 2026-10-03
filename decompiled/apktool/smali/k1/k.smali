.class public final Lk1/k;
.super Ljava/util/AbstractSet;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(ILjava/util/Map;)V
    .locals 0

    .line 1
    iput p1, p0, Lk1/k;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Lk1/k;->c:Ljava/util/Map;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget v0, p0, Lk1/k;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/util/AbstractCollection;->clear()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object v0, p0, Lk1/k;->c:Ljava/util/Map;

    .line 11
    .line 12
    check-cast v0, Lk1/m;

    .line 13
    .line 14
    invoke-virtual {v0}, Lk1/m;->clear()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    iget-object v0, p0, Lk1/k;->c:Ljava/util/Map;

    .line 19
    .line 20
    check-cast v0, Lk1/m;

    .line 21
    .line 22
    invoke-virtual {v0}, Lk1/m;->clear()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    iget v0, p0, Lk1/k;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :pswitch_0
    iget-object v0, p0, Lk1/k;->c:Ljava/util/Map;

    .line 12
    .line 13
    check-cast v0, Lk1/m;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lk1/m;->containsKey(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :pswitch_1
    instance-of v0, p1, Ljava/util/Map$Entry;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Lk1/k;->c:Ljava/util/Map;

    .line 26
    .line 27
    check-cast v0, Lk1/m;

    .line 28
    .line 29
    check-cast p1, Ljava/util/Map$Entry;

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const/4 v3, 0x0

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    :try_start_0
    invoke-virtual {v0, v2, v1}, Lk1/m;->a(Ljava/lang/Object;Z)Lk1/l;

    .line 39
    .line 40
    .line 41
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    :cond_0
    move-object v0, v3

    .line 44
    :goto_0
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object v2, v0, Lk1/l;->i:Ljava/lang/Object;

    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    move-object v3, v0

    .line 59
    :cond_1
    if-eqz v3, :cond_2

    .line 60
    .line 61
    const/4 v1, 0x1

    .line 62
    :cond_2
    return v1

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    .line 1
    iget v0, p0, Lk1/k;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lq/c;

    .line 7
    .line 8
    iget-object v1, p0, Lk1/k;->c:Ljava/util/Map;

    .line 9
    .line 10
    check-cast v1, Lq/e;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lq/c;-><init>(Lq/e;)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :pswitch_0
    new-instance v0, Lk1/j;

    .line 17
    .line 18
    iget-object v1, p0, Lk1/k;->c:Ljava/util/Map;

    .line 19
    .line 20
    check-cast v1, Lk1/m;

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-direct {v0, v1, v2}, Lk1/j;-><init>(Lk1/m;I)V

    .line 24
    .line 25
    .line 26
    return-object v0

    .line 27
    :pswitch_1
    new-instance v0, Lk1/j;

    .line 28
    .line 29
    iget-object v1, p0, Lk1/k;->c:Ljava/util/Map;

    .line 30
    .line 31
    check-cast v1, Lk1/m;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-direct {v0, v1, v2}, Lk1/j;-><init>(Lk1/m;I)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    iget v0, p0, Lk1/k;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :pswitch_0
    iget-object v0, p0, Lk1/k;->c:Ljava/util/Map;

    .line 12
    .line 13
    check-cast v0, Lk1/m;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    :try_start_0
    invoke-virtual {v0, p1, v1}, Lk1/m;->a(Ljava/lang/Object;Z)Lk1/l;

    .line 20
    .line 21
    .line 22
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :catch_0
    :cond_0
    const/4 p1, 0x1

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0, v2, p1}, Lk1/m;->c(Lk1/l;Z)V

    .line 27
    .line 28
    .line 29
    :cond_1
    if-eqz v2, :cond_2

    .line 30
    .line 31
    move v1, p1

    .line 32
    :cond_2
    return v1

    .line 33
    :pswitch_1
    iget-object v0, p0, Lk1/k;->c:Ljava/util/Map;

    .line 34
    .line 35
    check-cast v0, Lk1/m;

    .line 36
    .line 37
    instance-of v1, p1, Ljava/util/Map$Entry;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    check-cast p1, Ljava/util/Map$Entry;

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const/4 v3, 0x0

    .line 50
    if-eqz v1, :cond_4

    .line 51
    .line 52
    :try_start_1
    invoke-virtual {v0, v1, v2}, Lk1/m;->a(Ljava/lang/Object;Z)Lk1/l;

    .line 53
    .line 54
    .line 55
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 56
    goto :goto_0

    .line 57
    :catch_1
    :cond_4
    move-object v1, v3

    .line 58
    :goto_0
    if-eqz v1, :cond_5

    .line 59
    .line 60
    iget-object v4, v1, Lk1/l;->i:Ljava/lang/Object;

    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {v4, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_5

    .line 71
    .line 72
    move-object v3, v1

    .line 73
    :cond_5
    if-nez v3, :cond_6

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_6
    const/4 v2, 0x1

    .line 77
    invoke-virtual {v0, v3, v2}, Lk1/m;->c(Lk1/l;Z)V

    .line 78
    .line 79
    .line 80
    :goto_1
    return v2

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Lk1/k;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lk1/k;->c:Ljava/util/Map;

    .line 7
    .line 8
    check-cast v0, Lq/e;

    .line 9
    .line 10
    iget v0, v0, Lq/j;->d:I

    .line 11
    .line 12
    return v0

    .line 13
    :pswitch_0
    iget-object v0, p0, Lk1/k;->c:Ljava/util/Map;

    .line 14
    .line 15
    check-cast v0, Lk1/m;

    .line 16
    .line 17
    iget v0, v0, Lk1/m;->e:I

    .line 18
    .line 19
    return v0

    .line 20
    :pswitch_1
    iget-object v0, p0, Lk1/k;->c:Ljava/util/Map;

    .line 21
    .line 22
    check-cast v0, Lk1/m;

    .line 23
    .line 24
    iget v0, v0, Lk1/m;->e:I

    .line 25
    .line 26
    return v0

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
