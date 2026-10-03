.class public final Lj0/z;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lj0/r;
.implements Lr0/a;


# instance fields
.field public final synthetic b:I

.field public final c:Landroid/content/res/Resources;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/Resources;I)V
    .locals 0

    .line 1
    iput p2, p0, Lj0/z;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lj0/z;->c:Landroid/content/res/Resources;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lf0/F;Ld0/i;)Lf0/F;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    new-instance p2, Lm0/d;

    .line 6
    .line 7
    iget-object v0, p0, Lj0/z;->c:Landroid/content/res/Resources;

    .line 8
    .line 9
    invoke-direct {p2, v0, p1}, Lm0/d;-><init>(Landroid/content/res/Resources;Lf0/F;)V

    .line 10
    .line 11
    .line 12
    return-object p2
.end method

.method public l(Lj0/y;)Lj0/q;
    .locals 3

    .line 1
    iget v0, p0, Lj0/z;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Lj0/b;

    .line 7
    .line 8
    iget-object v0, p0, Lj0/z;->c:Landroid/content/res/Resources;

    .line 9
    .line 10
    sget-object v1, Lj0/C;->b:Lj0/C;

    .line 11
    .line 12
    invoke-direct {p1, v0, v1}, Lj0/b;-><init>(Landroid/content/res/Resources;Lj0/q;)V

    .line 13
    .line 14
    .line 15
    return-object p1

    .line 16
    :pswitch_0
    new-instance v0, Lj0/b;

    .line 17
    .line 18
    const-class v1, Landroid/net/Uri;

    .line 19
    .line 20
    const-class v2, Ljava/io/InputStream;

    .line 21
    .line 22
    invoke-virtual {p1, v1, v2}, Lj0/y;->a(Ljava/lang/Class;Ljava/lang/Class;)Lj0/q;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object v1, p0, Lj0/z;->c:Landroid/content/res/Resources;

    .line 27
    .line 28
    invoke-direct {v0, v1, p1}, Lj0/b;-><init>(Landroid/content/res/Resources;Lj0/q;)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :pswitch_1
    new-instance v0, Lj0/b;

    .line 33
    .line 34
    const-class v1, Landroid/net/Uri;

    .line 35
    .line 36
    const-class v2, Landroid/content/res/AssetFileDescriptor;

    .line 37
    .line 38
    invoke-virtual {p1, v1, v2}, Lj0/y;->a(Ljava/lang/Class;Ljava/lang/Class;)Lj0/q;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object v1, p0, Lj0/z;->c:Landroid/content/res/Resources;

    .line 43
    .line 44
    invoke-direct {v0, v1, p1}, Lj0/b;-><init>(Landroid/content/res/Resources;Lj0/q;)V

    .line 45
    .line 46
    .line 47
    return-object v0

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
