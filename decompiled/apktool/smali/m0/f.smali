.class public final Lm0/f;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ld0/k;


# instance fields
.field public final synthetic a:I

.field public final b:Lm0/q;


# direct methods
.method public synthetic constructor <init>(Lm0/q;I)V
    .locals 0

    .line 1
    iput p2, p0, Lm0/f;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lm0/f;->b:Lm0/q;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ld0/i;)Z
    .locals 2

    .line 1
    iget p2, p0, Lm0/f;->a:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 7
    .line 8
    sget-object p2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "HUAWEI"

    .line 11
    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const-string v0, "HONOR"

    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    :cond_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    .line 27
    .line 28
    .line 29
    move-result-wide p1

    .line 30
    const-wide/32 v0, 0x20000000

    .line 31
    .line 32
    .line 33
    cmp-long p1, p1, v0

    .line 34
    .line 35
    if-gtz p1, :cond_2

    .line 36
    .line 37
    :cond_1
    const-string p1, "robolectric"

    .line 38
    .line 39
    sget-object p2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_2

    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 p1, 0x0

    .line 50
    :goto_0
    return p1

    .line 51
    :pswitch_0
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 52
    .line 53
    iget-object p1, p0, Lm0/f;->b:Lm0/q;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    const/4 p1, 0x1

    .line 59
    return p1

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;IILd0/i;)Lf0/F;
    .locals 6

    .line 1
    iget v0, p0, Lm0/f;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 7
    .line 8
    new-instance v1, LF/b;

    .line 9
    .line 10
    iget-object v0, p0, Lm0/f;->b:Lm0/q;

    .line 11
    .line 12
    iget-object v2, v0, Lm0/q;->d:Ljava/util/ArrayList;

    .line 13
    .line 14
    iget-object v3, v0, Lm0/q;->c:Lg0/g;

    .line 15
    .line 16
    invoke-direct {v1, p1, v2, v3}, LF/b;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/util/ArrayList;Lg0/g;)V

    .line 17
    .line 18
    .line 19
    sget-object v5, Lm0/q;->j:Lcom/google/android/material/datepicker/c;

    .line 20
    .line 21
    move v2, p2

    .line 22
    move v3, p3

    .line 23
    move-object v4, p4

    .line 24
    invoke-virtual/range {v0 .. v5}, Lm0/q;->a(LF/b;IILd0/i;Lm0/p;)Lm0/d;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :pswitch_0
    move v2, p2

    .line 30
    move v3, p3

    .line 31
    move-object v4, p4

    .line 32
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    new-instance v1, LF/b;

    .line 35
    .line 36
    iget-object v0, p0, Lm0/f;->b:Lm0/q;

    .line 37
    .line 38
    iget-object p2, v0, Lm0/q;->d:Ljava/util/ArrayList;

    .line 39
    .line 40
    iget-object p3, v0, Lm0/q;->c:Lg0/g;

    .line 41
    .line 42
    const/16 p4, 0xa

    .line 43
    .line 44
    invoke-direct {v1, p1, p2, p3, p4}, LF/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 45
    .line 46
    .line 47
    sget-object v5, Lm0/q;->j:Lcom/google/android/material/datepicker/c;

    .line 48
    .line 49
    invoke-virtual/range {v0 .. v5}, Lm0/q;->a(LF/b;IILd0/i;Lm0/p;)Lm0/d;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
