.class public final Lj0/e;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lcom/bumptech/glide/load/data/e;


# instance fields
.field public final b:Landroid/content/res/Resources$Theme;

.field public final c:Landroid/content/res/Resources;

.field public final d:LA1/h;

.field public final e:I

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;LA1/h;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj0/e;->b:Landroid/content/res/Resources$Theme;

    .line 5
    .line 6
    iput-object p2, p0, Lj0/e;->c:Landroid/content/res/Resources;

    .line 7
    .line 8
    iput-object p3, p0, Lj0/e;->d:LA1/h;

    .line 9
    .line 10
    iput p4, p0, Lj0/e;->e:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lj0/e;->d:LA1/h;

    .line 2
    .line 3
    iget v0, v0, LA1/h;->b:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const-class v0, Ljava/io/InputStream;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    const-class v0, Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :pswitch_1
    const-class v0, Landroid/content/res/AssetFileDescriptor;

    .line 15
    .line 16
    :goto_0
    return-object v0

    .line 17
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lj0/e;->f:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lj0/e;->d:LA1/h;

    .line 6
    .line 7
    iget v1, v1, LA1/h;->b:I

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v0, Ljava/io/InputStream;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :pswitch_0
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :pswitch_1
    check-cast v0, Landroid/content/res/AssetFileDescriptor;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    :catch_0
    :cond_0
    :goto_0
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final cancel()V
    .locals 0

    .line 1
    return-void
.end method

.method public final d()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final f(Lcom/bumptech/glide/g;Lcom/bumptech/glide/load/data/d;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object p1, p0, Lj0/e;->d:LA1/h;

    .line 2
    .line 3
    iget-object v0, p0, Lj0/e;->b:Landroid/content/res/Resources$Theme;

    .line 4
    .line 5
    iget-object v1, p0, Lj0/e;->c:Landroid/content/res/Resources;

    .line 6
    .line 7
    iget v2, p0, Lj0/e;->e:I

    .line 8
    .line 9
    iget v3, p1, LA1/h;->b:I

    .line 10
    .line 11
    packed-switch v3, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :pswitch_0
    iget-object p1, p1, LA1/h;->c:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {p1, p1, v2, v0}, La/a;->j(Landroid/content/Context;Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    goto :goto_0

    .line 26
    :pswitch_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :goto_0
    iput-object p1, p0, Lj0/e;->f:Ljava/lang/Object;

    .line 31
    .line 32
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/d;->e(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catch_0
    move-exception p1

    .line 37
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/d;->c(Ljava/lang/Exception;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
