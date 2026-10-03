.class public final Lj0/a;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lj0/r;


# instance fields
.field public final synthetic b:I

.field public final c:Landroid/content/res/AssetManager;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/AssetManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lj0/a;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lj0/a;->c:Landroid/content/res/AssetManager;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final l(Lj0/y;)Lj0/q;
    .locals 1

    .line 1
    iget p1, p0, Lj0/a;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Lj0/b;

    .line 7
    .line 8
    iget-object v0, p0, Lj0/a;->c:Landroid/content/res/AssetManager;

    .line 9
    .line 10
    invoke-direct {p1, v0, p0}, Lj0/b;-><init>(Landroid/content/res/AssetManager;Lj0/a;)V

    .line 11
    .line 12
    .line 13
    return-object p1

    .line 14
    :pswitch_0
    new-instance p1, Lj0/b;

    .line 15
    .line 16
    iget-object v0, p0, Lj0/a;->c:Landroid/content/res/AssetManager;

    .line 17
    .line 18
    invoke-direct {p1, v0, p0}, Lj0/b;-><init>(Landroid/content/res/AssetManager;Lj0/a;)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
