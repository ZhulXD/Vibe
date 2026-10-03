.class public final LF/b;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lr0/a;


# static fields
.field public static f:LF/b;


# instance fields
.field public final synthetic b:I

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    iput p1, p0, LF/b;->b:I

    packed-switch p1, :pswitch_data_0

    .line 6
    new-instance p1, Lf0/a;

    .line 7
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LF/b;->c:Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, LF/b;->d:Ljava/lang/Object;

    .line 12
    new-instance v0, LA1/u0;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, LA1/u0;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 13
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(LA1/b;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LF/b;->b:I

    .line 54
    iput v0, p0, LF/b;->b:I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, LF/b;->c:Ljava/lang/Object;

    .line 57
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, LF/b;->d:Ljava/lang/Object;

    .line 58
    new-instance p1, LF/a;

    invoke-direct {p1, p0}, LF/a;-><init>(LF/b;)V

    iput-object p1, p0, LF/b;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LA1/h;)V
    .locals 4

    const/4 v0, 0x2

    iput v0, p0, LF/b;->b:I

    .line 65
    iget-object v0, p1, LA1/h;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, LF/b;->c:Ljava/lang/Object;

    .line 67
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt p1, v2, :cond_0

    .line 68
    invoke-static {v0}, Landroidx/biometric/q;->b(Landroid/content/Context;)Landroid/hardware/biometrics/BiometricManager;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 69
    :goto_0
    iput-object v3, p0, LF/b;->d:Ljava/lang/Object;

    if-gt p1, v2, :cond_1

    .line 70
    invoke-static {v0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    move-result-object v1

    .line 71
    :cond_1
    iput-object v1, p0, LF/b;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LN1/w;LY0/e;Landroidx/emoji2/text/d;Ljava/util/Set;)V
    .locals 7

    const/4 v0, 0x4

    iput v0, p0, LF/b;->b:I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, LF/b;->c:Ljava/lang/Object;

    .line 41
    iput-object p1, p0, LF/b;->d:Ljava/lang/Object;

    .line 42
    iput-object p3, p0, LF/b;->e:Ljava/lang/Object;

    .line 43
    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 44
    :cond_0
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    .line 45
    new-instance v1, Ljava/lang/String;

    const/4 p3, 0x0

    array-length p4, p2

    invoke-direct {v1, p2, p3, p4}, Ljava/lang/String;-><init>([III)V

    .line 46
    new-instance v6, La2/w;

    const/4 p2, 0x1

    invoke-direct {v6, v1, p2}, La2/w;-><init>(Ljava/lang/String;I)V

    .line 47
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, LF/b;->k(Ljava/lang/CharSequence;IIIZLandroidx/emoji2/text/n;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public constructor <init>(LS0/b;Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, LF/b;->b:I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 20
    new-instance v0, LS0/f;

    .line 21
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    .line 22
    new-instance v0, LS0/d;

    .line 23
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 24
    :goto_0
    iput-object v0, p0, LF/b;->c:Ljava/lang/Object;

    .line 25
    iput-object p1, p0, LF/b;->d:Ljava/lang/Object;

    .line 26
    iput-object p2, p0, LF/b;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, LF/b;->b:I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Le/J;

    .line 29
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, LF/b;->e:Ljava/lang/Object;

    .line 31
    iput-object p1, p0, LF/b;->c:Ljava/lang/Object;

    .line 32
    iput-object p2, p0, LF/b;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;Ljava/util/List;)V
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, LF/b;->b:I

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LF/b;->c:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, LF/b;->d:Ljava/lang/Object;

    .line 5
    iput-object p3, p0, LF/b;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;Ljava/util/ArrayList;Lg0/g;)V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, LF/b;->b:I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "Argument must not be null"

    invoke-static {p3, v0}, Ly0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iput-object p3, p0, LF/b;->c:Ljava/lang/Object;

    .line 62
    invoke-static {p2, v0}, Ly0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iput-object p2, p0, LF/b;->d:Ljava/lang/Object;

    .line 64
    new-instance p2, Lcom/bumptech/glide/load/data/i;

    invoke-direct {p2, p1}, Lcom/bumptech/glide/load/data/i;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object p2, p0, LF/b;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    const/16 p1, 0x11

    iput p1, p0, LF/b;->b:I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p2, p0, LF/b;->c:Ljava/lang/Object;

    .line 16
    iput-object p3, p0, LF/b;->d:Ljava/lang/Object;

    .line 17
    iput-object p4, p0, LF/b;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lf0/r;Lu0/f;Lf0/v;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, LF/b;->b:I

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LF/b;->e:Ljava/lang/Object;

    .line 73
    iput-object p2, p0, LF/b;->d:Ljava/lang/Object;

    .line 74
    iput-object p3, p0, LF/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, LF/b;->b:I

    iput-object p1, p0, LF/b;->c:Ljava/lang/Object;

    iput-object p2, p0, LF/b;->d:Ljava/lang/Object;

    iput-object p3, p0, LF/b;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lv/e;)V
    .locals 1

    const/16 v0, 0xf

    iput v0, p0, LF/b;->b:I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LF/b;->c:Ljava/lang/Object;

    .line 35
    new-instance v0, Lw/b;

    .line 36
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, LF/b;->d:Ljava/lang/Object;

    .line 38
    iput-object p1, p0, LF/b;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ly0/k;Ljava/util/ArrayList;Lg0/g;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, LF/b;->b:I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "Argument must not be null"

    invoke-static {p3, v0}, Ly0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p3, p0, LF/b;->d:Ljava/lang/Object;

    .line 51
    invoke-static {p2, v0}, Ly0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iput-object p2, p0, LF/b;->e:Ljava/lang/Object;

    .line 53
    new-instance p2, Lcom/bumptech/glide/load/data/i;

    invoke-direct {p2, p1, p3}, Lcom/bumptech/glide/load/data/i;-><init>(Ljava/io/InputStream;Lg0/g;)V

    iput-object p2, p0, LF/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public static g(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, -0x1

    .line 22
    if-eq p1, v2, :cond_6

    .line 23
    .line 24
    if-eq v1, v2, :cond_6

    .line 25
    .line 26
    if-eq p1, v1, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const-class v2, Landroidx/emoji2/text/w;

    .line 30
    .line 31
    invoke-interface {p0, p1, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, [Landroidx/emoji2/text/w;

    .line 36
    .line 37
    if-eqz v1, :cond_6

    .line 38
    .line 39
    array-length v2, v1

    .line 40
    if-lez v2, :cond_6

    .line 41
    .line 42
    array-length v2, v1

    .line 43
    move v3, v0

    .line 44
    :goto_0
    if-ge v3, v2, :cond_6

    .line 45
    .line 46
    aget-object v4, v1, v3

    .line 47
    .line 48
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz p2, :cond_2

    .line 57
    .line 58
    if-eq v5, p1, :cond_4

    .line 59
    .line 60
    :cond_2
    if-nez p2, :cond_3

    .line 61
    .line 62
    if-eq v4, p1, :cond_4

    .line 63
    .line 64
    :cond_3
    if-le p1, v5, :cond_5

    .line 65
    .line 66
    if-ge p1, v4, :cond_5

    .line 67
    .line 68
    :cond_4
    invoke-interface {p0, v5, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 69
    .line 70
    .line 71
    const/4 p0, 0x1

    .line 72
    return p0

    .line 73
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_6
    :goto_1
    return v0
.end method

.method private final m()V
    .locals 0

    .line 1
    return-void
.end method

.method private final n()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public a(Lf0/F;Ld0/i;)Lf0/F;
    .locals 2

    .line 1
    invoke-interface {p1}, Lf0/F;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, LF/b;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Le/f;

    .line 14
    .line 15
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, LF/b;->c:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Lg0/b;

    .line 24
    .line 25
    invoke-static {v0, v1}, Lm0/d;->b(Landroid/graphics/Bitmap;Lg0/b;)Lm0/d;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0, p2}, Le/f;->a(Lf0/F;Ld0/i;)Lf0/F;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :cond_0
    instance-of v0, v0, Lq0/b;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, LF/b;->e:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Lr0/c;

    .line 41
    .line 42
    invoke-virtual {v0, p1, p2}, Lr0/c;->a(Lf0/F;Ld0/i;)Lf0/F;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1

    .line 47
    :cond_1
    const/4 p1, 0x0

    .line 48
    return-object p1
.end method

.method public declared-synchronized b(Ld0/f;Lf0/z;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lf0/b;

    .line 3
    .line 4
    iget-object v1, p0, LF/b;->d:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Ljava/lang/ref/ReferenceQueue;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2, v1}, Lf0/b;-><init>(Ld0/f;Lf0/z;Ljava/lang/ref/ReferenceQueue;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, LF/b;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p2, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lf0/b;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    iput-object p2, p1, Lf0/b;->c:Lf0/F;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    :cond_0
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    throw p1
.end method

.method public c()I
    .locals 8

    .line 1
    iget-object v0, p0, LF/b;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LA1/h;

    .line 4
    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v2, 0x1e

    .line 8
    .line 9
    const-string v3, "Failure in canAuthenticate(). BiometricManager was null."

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    const/16 v5, 0xff

    .line 13
    .line 14
    const-string v6, "BiometricManager"

    .line 15
    .line 16
    if-lt v1, v2, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, LF/b;->d:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Landroid/hardware/biometrics/BiometricManager;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    return v4

    .line 28
    :cond_0
    invoke-static {v0, v5}, Landroidx/biometric/r;->a(Landroid/hardware/biometrics/BiometricManager;I)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    return v0

    .line 33
    :cond_1
    invoke-static {v5}, La/a;->t(I)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    const/4 v0, -0x2

    .line 40
    return v0

    .line 41
    :cond_2
    iget-object v2, v0, LA1/h;->c:Landroid/content/Context;

    .line 42
    .line 43
    invoke-static {v2}, Landroidx/biometric/F;->a(Landroid/content/Context;)Landroid/app/KeyguardManager;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    if-eqz v7, :cond_d

    .line 48
    .line 49
    invoke-static {v5}, La/a;->s(I)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    const/4 v7, 0x0

    .line 54
    if-eqz v5, :cond_5

    .line 55
    .line 56
    invoke-static {v2}, Landroidx/biometric/F;->a(Landroid/content/Context;)Landroid/app/KeyguardManager;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    move v0, v7

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    invoke-static {v0}, Landroidx/biometric/F;->b(Landroid/app/KeyguardManager;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    :goto_0
    if-eqz v0, :cond_4

    .line 69
    .line 70
    return v7

    .line 71
    :cond_4
    const/16 v0, 0xb

    .line 72
    .line 73
    return v0

    .line 74
    :cond_5
    const/16 v5, 0x1d

    .line 75
    .line 76
    if-ne v1, v5, :cond_7

    .line 77
    .line 78
    iget-object v0, p0, LF/b;->d:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v0, Landroid/hardware/biometrics/BiometricManager;

    .line 81
    .line 82
    if-nez v0, :cond_6

    .line 83
    .line 84
    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    return v4

    .line 88
    :cond_6
    invoke-static {v0}, Landroidx/biometric/q;->a(Landroid/hardware/biometrics/BiometricManager;)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    return v0

    .line 93
    :cond_7
    const/16 v3, 0x1c

    .line 94
    .line 95
    if-ne v1, v3, :cond_c

    .line 96
    .line 97
    if-eqz v2, :cond_8

    .line 98
    .line 99
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    if-eqz v1, :cond_8

    .line 104
    .line 105
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-static {v1}, Landroidx/biometric/G;->a(Landroid/content/pm/PackageManager;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_8

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_8
    move v4, v7

    .line 117
    :goto_1
    if-eqz v4, :cond_d

    .line 118
    .line 119
    iget-object v0, v0, LA1/h;->c:Landroid/content/Context;

    .line 120
    .line 121
    invoke-static {v0}, Landroidx/biometric/F;->a(Landroid/content/Context;)Landroid/app/KeyguardManager;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    if-nez v0, :cond_9

    .line 126
    .line 127
    move v0, v7

    .line 128
    goto :goto_2

    .line 129
    :cond_9
    invoke-static {v0}, Landroidx/biometric/F;->b(Landroid/app/KeyguardManager;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    :goto_2
    if-nez v0, :cond_a

    .line 134
    .line 135
    invoke-virtual {p0}, LF/b;->d()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    return v0

    .line 140
    :cond_a
    invoke-virtual {p0}, LF/b;->d()I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-nez v0, :cond_b

    .line 145
    .line 146
    return v7

    .line 147
    :cond_b
    const/4 v0, -0x1

    .line 148
    return v0

    .line 149
    :cond_c
    invoke-virtual {p0}, LF/b;->d()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    return v0

    .line 154
    :cond_d
    const/16 v0, 0xc

    .line 155
    .line 156
    return v0
.end method

.method public d()I
    .locals 2

    .line 1
    iget-object v0, p0, LF/b;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "BiometricManager"

    .line 8
    .line 9
    const-string v1, "Failure in canAuthenticate(). FingerprintManager was null."

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    return v0

    .line 16
    :cond_0
    invoke-virtual {v0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    const/16 v0, 0xc

    .line 23
    .line 24
    return v0

    .line 25
    :cond_1
    invoke-virtual {v0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->hasEnrolledFingerprints()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    const/16 v0, 0xb

    .line 32
    .line 33
    return v0

    .line 34
    :cond_2
    const/4 v0, 0x0

    .line 35
    return v0
.end method

.method public e(Lf0/b;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, LF/b;->c:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Ljava/util/HashMap;

    .line 5
    .line 6
    iget-object v1, p1, Lf0/b;->a:Ld0/f;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p1, Lf0/b;->b:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v2, p1, Lf0/b;->c:Lf0/F;

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    new-instance v1, Lf0/z;

    .line 22
    .line 23
    iget-object v5, p1, Lf0/b;->a:Ld0/f;

    .line 24
    .line 25
    iget-object v0, p0, LF/b;->e:Ljava/lang/Object;

    .line 26
    .line 27
    move-object v6, v0

    .line 28
    check-cast v6, Lf0/r;

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-direct/range {v1 .. v6}, Lf0/z;-><init>(Lf0/F;ZZLd0/f;Lf0/y;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, LF/b;->e:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Lf0/r;

    .line 38
    .line 39
    iget-object p1, p1, Lf0/b;->a:Ld0/f;

    .line 40
    .line 41
    invoke-virtual {v0, p1, v1}, Lf0/r;->e(Ld0/f;Lf0/z;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    move-object p1, v0

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 49
    return-void

    .line 50
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    throw p1
.end method

.method public f(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget v0, p0, LF/b;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LF/b;->e:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/bumptech/glide/load/data/i;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/i;->e()Landroid/os/ParcelFileDescriptor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :pswitch_0
    iget-object v0, p0, LF/b;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Lcom/bumptech/glide/load/data/i;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/bumptech/glide/load/data/i;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Lm0/x;

    .line 31
    .line 32
    invoke-virtual {v0}, Lm0/x;->reset()V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :pswitch_1
    iget-object v0, p0, LF/b;->c:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 44
    .line 45
    invoke-static {v0}, Ly0/b;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v1, Ly0/a;

    .line 50
    .line 51
    invoke-direct {v1, v0}, Ly0/a;-><init>(Ljava/nio/ByteBuffer;)V

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-static {v1, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public h()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 10

    .line 1
    iget v0, p0, LF/b;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LF/b;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/util/List;

    .line 9
    .line 10
    iget-object v1, p0, LF/b;->e:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lcom/bumptech/glide/load/data/i;

    .line 13
    .line 14
    iget-object v2, p0, LF/b;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Lg0/g;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x0

    .line 23
    :goto_0
    if-ge v4, v3, :cond_2

    .line 24
    .line 25
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Ld0/e;

    .line 30
    .line 31
    const/4 v6, 0x0

    .line 32
    :try_start_0
    new-instance v7, Lm0/x;

    .line 33
    .line 34
    new-instance v8, Ljava/io/FileInputStream;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/bumptech/glide/load/data/i;->e()Landroid/os/ParcelFileDescriptor;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {v7, v8, v2}, Lm0/x;-><init>(Ljava/io/InputStream;Lg0/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    .line 49
    .line 50
    :try_start_1
    invoke-interface {v5, v7}, Ld0/e;->d(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 51
    .line 52
    .line 53
    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    invoke-virtual {v7}, Lm0/x;->b()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/bumptech/glide/load/data/i;->e()Landroid/os/ParcelFileDescriptor;

    .line 58
    .line 59
    .line 60
    sget-object v6, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 61
    .line 62
    if-eq v5, v6, :cond_0

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    move-object v6, v7

    .line 70
    goto :goto_1

    .line 71
    :catchall_1
    move-exception v0

    .line 72
    :goto_1
    if-eqz v6, :cond_1

    .line 73
    .line 74
    invoke-virtual {v6}, Lm0/x;->b()V

    .line 75
    .line 76
    .line 77
    :cond_1
    invoke-virtual {v1}, Lcom/bumptech/glide/load/data/i;->e()Landroid/os/ParcelFileDescriptor;

    .line 78
    .line 79
    .line 80
    throw v0

    .line 81
    :cond_2
    sget-object v5, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 82
    .line 83
    :goto_2
    return-object v5

    .line 84
    :pswitch_0
    iget-object v0, p0, LF/b;->e:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v0, Ljava/util/List;

    .line 87
    .line 88
    iget-object v1, p0, LF/b;->c:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v1, Lcom/bumptech/glide/load/data/i;

    .line 91
    .line 92
    iget-object v1, v1, Lcom/bumptech/glide/load/data/i;->c:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v1, Lm0/x;

    .line 95
    .line 96
    invoke-virtual {v1}, Lm0/x;->reset()V

    .line 97
    .line 98
    .line 99
    iget-object v2, p0, LF/b;->d:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v2, Lg0/g;

    .line 102
    .line 103
    invoke-static {v0, v1, v2}, La/a;->m(Ljava/util/List;Ljava/io/InputStream;Lg0/g;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    return-object v0

    .line 108
    :pswitch_1
    iget-object v0, p0, LF/b;->d:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v0, Ljava/util/List;

    .line 111
    .line 112
    iget-object v1, p0, LF/b;->c:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v1, Ljava/nio/ByteBuffer;

    .line 115
    .line 116
    invoke-static {v1}, Ly0/b;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-static {v0, v1}, La/a;->n(Ljava/util/List;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    return-object v0

    .line 125
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public i(Ljava/lang/CharSequence;IILandroidx/emoji2/text/v;)Z
    .locals 7

    .line 1
    iget v0, p4, Landroidx/emoji2/text/v;->c:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x3

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-nez v0, :cond_4

    .line 9
    .line 10
    iget-object v0, p0, LF/b;->e:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Landroidx/emoji2/text/g;

    .line 13
    .line 14
    invoke-virtual {p4}, Landroidx/emoji2/text/v;->b()LG/a;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    const/16 v5, 0x8

    .line 19
    .line 20
    invoke-virtual {v4, v5}, LG/c;->a(I)I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    iget-object v6, v4, LG/c;->b:Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    iget v4, v4, LG/c;->a:I

    .line 29
    .line 30
    add-int/2addr v5, v4

    .line 31
    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 32
    .line 33
    .line 34
    :cond_0
    check-cast v0, Landroidx/emoji2/text/d;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    sget-object v4, Landroidx/emoji2/text/d;->b:Ljava/lang/ThreadLocal;

    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    if-nez v5, :cond_1

    .line 46
    .line 47
    new-instance v5, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 62
    .line 63
    .line 64
    :goto_0
    if-ge p2, p3, :cond_2

    .line 65
    .line 66
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    add-int/lit8 p2, p2, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    iget-object p1, v0, Landroidx/emoji2/text/d;->a:Landroid/text/TextPaint;

    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-static {p1, p2}, Landroidx/core/graphics/PaintCompat;->hasGlyph(Landroid/graphics/Paint;Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    iget p2, p4, Landroidx/emoji2/text/v;->c:I

    .line 87
    .line 88
    and-int/lit8 p2, p2, 0x4

    .line 89
    .line 90
    if-eqz p1, :cond_3

    .line 91
    .line 92
    or-int/lit8 p1, p2, 0x2

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    or-int/lit8 p1, p2, 0x1

    .line 96
    .line 97
    :goto_1
    iput p1, p4, Landroidx/emoji2/text/v;->c:I

    .line 98
    .line 99
    :cond_4
    iget p1, p4, Landroidx/emoji2/text/v;->c:I

    .line 100
    .line 101
    and-int/lit8 p1, p1, 0x3

    .line 102
    .line 103
    if-ne p1, v1, :cond_5

    .line 104
    .line 105
    return v3

    .line 106
    :cond_5
    return v2
.end method

.method public j(Lx/f;Lv/d;Z)Z
    .locals 6

    .line 1
    iget-object v0, p0, LF/b;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lw/b;

    .line 4
    .line 5
    iget-object v1, p2, Lv/d;->c0:[I

    .line 6
    .line 7
    iget-object v2, p2, Lv/d;->l:[I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    aget v4, v1, v3

    .line 11
    .line 12
    iput v4, v0, Lw/b;->a:I

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    aget v1, v1, v4

    .line 16
    .line 17
    iput v1, v0, Lw/b;->b:I

    .line 18
    .line 19
    invoke-virtual {p2}, Lv/d;->l()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iput v1, v0, Lw/b;->c:I

    .line 24
    .line 25
    invoke-virtual {p2}, Lv/d;->i()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iput v1, v0, Lw/b;->d:I

    .line 30
    .line 31
    iput-boolean v3, v0, Lw/b;->i:Z

    .line 32
    .line 33
    iput-boolean p3, v0, Lw/b;->j:Z

    .line 34
    .line 35
    iget p3, v0, Lw/b;->a:I

    .line 36
    .line 37
    const/4 v1, 0x3

    .line 38
    if-ne p3, v1, :cond_0

    .line 39
    .line 40
    move p3, v4

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move p3, v3

    .line 43
    :goto_0
    iget v5, v0, Lw/b;->b:I

    .line 44
    .line 45
    if-ne v5, v1, :cond_1

    .line 46
    .line 47
    move v1, v4

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move v1, v3

    .line 50
    :goto_1
    const/4 v5, 0x0

    .line 51
    if-eqz p3, :cond_2

    .line 52
    .line 53
    iget p3, p2, Lv/d;->L:F

    .line 54
    .line 55
    cmpl-float p3, p3, v5

    .line 56
    .line 57
    if-lez p3, :cond_2

    .line 58
    .line 59
    move p3, v4

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    move p3, v3

    .line 62
    :goto_2
    if-eqz v1, :cond_3

    .line 63
    .line 64
    iget v1, p2, Lv/d;->L:F

    .line 65
    .line 66
    cmpl-float v1, v1, v5

    .line 67
    .line 68
    if-lez v1, :cond_3

    .line 69
    .line 70
    move v1, v4

    .line 71
    goto :goto_3

    .line 72
    :cond_3
    move v1, v3

    .line 73
    :goto_3
    const/4 v5, 0x4

    .line 74
    if-eqz p3, :cond_4

    .line 75
    .line 76
    aget p3, v2, v3

    .line 77
    .line 78
    if-ne p3, v5, :cond_4

    .line 79
    .line 80
    iput v4, v0, Lw/b;->a:I

    .line 81
    .line 82
    :cond_4
    if-eqz v1, :cond_5

    .line 83
    .line 84
    aget p3, v2, v4

    .line 85
    .line 86
    if-ne p3, v5, :cond_5

    .line 87
    .line 88
    iput v4, v0, Lw/b;->b:I

    .line 89
    .line 90
    :cond_5
    invoke-virtual {p1, p2, v0}, Lx/f;->a(Lv/d;Lw/b;)V

    .line 91
    .line 92
    .line 93
    iget p1, v0, Lw/b;->e:I

    .line 94
    .line 95
    invoke-virtual {p2, p1}, Lv/d;->y(I)V

    .line 96
    .line 97
    .line 98
    iget p1, v0, Lw/b;->f:I

    .line 99
    .line 100
    invoke-virtual {p2, p1}, Lv/d;->v(I)V

    .line 101
    .line 102
    .line 103
    iget-boolean p1, v0, Lw/b;->h:Z

    .line 104
    .line 105
    iput-boolean p1, p2, Lv/d;->w:Z

    .line 106
    .line 107
    iget p1, v0, Lw/b;->g:I

    .line 108
    .line 109
    iput p1, p2, Lv/d;->P:I

    .line 110
    .line 111
    if-lez p1, :cond_6

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_6
    move v4, v3

    .line 115
    :goto_4
    iput-boolean v4, p2, Lv/d;->w:Z

    .line 116
    .line 117
    iput-boolean v3, v0, Lw/b;->j:Z

    .line 118
    .line 119
    iget-boolean p1, v0, Lw/b;->i:Z

    .line 120
    .line 121
    return p1
.end method

.method public k(Ljava/lang/CharSequence;IIIZLandroidx/emoji2/text/n;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move/from16 v3, p4

    .line 8
    .line 9
    move-object/from16 v4, p6

    .line 10
    .line 11
    new-instance v5, Landroidx/emoji2/text/o;

    .line 12
    .line 13
    iget-object v6, v0, LF/b;->d:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v6, LN1/w;

    .line 16
    .line 17
    iget-object v6, v6, LN1/w;->c:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v6, Landroidx/emoji2/text/s;

    .line 20
    .line 21
    invoke-direct {v5, v6}, Landroidx/emoji2/text/o;-><init>(Landroidx/emoji2/text/s;)V

    .line 22
    .line 23
    .line 24
    invoke-static/range {p1 .. p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v8, 0x1

    .line 30
    move v9, v6

    .line 31
    move v10, v7

    .line 32
    move v11, v8

    .line 33
    move/from16 v6, p2

    .line 34
    .line 35
    :cond_0
    :goto_0
    move v7, v6

    .line 36
    :goto_1
    const/4 v12, 0x2

    .line 37
    if-ge v6, v2, :cond_f

    .line 38
    .line 39
    if-ge v10, v3, :cond_f

    .line 40
    .line 41
    if-eqz v11, :cond_f

    .line 42
    .line 43
    iget-object v13, v5, Landroidx/emoji2/text/o;->c:Landroidx/emoji2/text/s;

    .line 44
    .line 45
    iget-object v13, v13, Landroidx/emoji2/text/s;->a:Landroid/util/SparseArray;

    .line 46
    .line 47
    if-nez v13, :cond_1

    .line 48
    .line 49
    const/4 v13, 0x0

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    invoke-virtual {v13, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v13

    .line 55
    check-cast v13, Landroidx/emoji2/text/s;

    .line 56
    .line 57
    :goto_2
    iget v14, v5, Landroidx/emoji2/text/o;->a:I

    .line 58
    .line 59
    const/4 v15, 0x3

    .line 60
    if-eq v14, v12, :cond_3

    .line 61
    .line 62
    if-nez v13, :cond_2

    .line 63
    .line 64
    invoke-virtual {v5}, Landroidx/emoji2/text/o;->a()V

    .line 65
    .line 66
    .line 67
    :goto_3
    move v13, v8

    .line 68
    goto :goto_6

    .line 69
    :cond_2
    iput v12, v5, Landroidx/emoji2/text/o;->a:I

    .line 70
    .line 71
    iput-object v13, v5, Landroidx/emoji2/text/o;->c:Landroidx/emoji2/text/s;

    .line 72
    .line 73
    iput v8, v5, Landroidx/emoji2/text/o;->f:I

    .line 74
    .line 75
    :goto_4
    move v13, v12

    .line 76
    goto :goto_6

    .line 77
    :cond_3
    if-eqz v13, :cond_4

    .line 78
    .line 79
    iput-object v13, v5, Landroidx/emoji2/text/o;->c:Landroidx/emoji2/text/s;

    .line 80
    .line 81
    iget v13, v5, Landroidx/emoji2/text/o;->f:I

    .line 82
    .line 83
    add-int/2addr v13, v8

    .line 84
    iput v13, v5, Landroidx/emoji2/text/o;->f:I

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_4
    const v13, 0xfe0e

    .line 88
    .line 89
    .line 90
    if-ne v9, v13, :cond_5

    .line 91
    .line 92
    invoke-virtual {v5}, Landroidx/emoji2/text/o;->a()V

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_5
    const v13, 0xfe0f

    .line 97
    .line 98
    .line 99
    if-ne v9, v13, :cond_6

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_6
    iget-object v13, v5, Landroidx/emoji2/text/o;->c:Landroidx/emoji2/text/s;

    .line 103
    .line 104
    iget-object v14, v13, Landroidx/emoji2/text/s;->b:Landroidx/emoji2/text/v;

    .line 105
    .line 106
    if-eqz v14, :cond_9

    .line 107
    .line 108
    iget v14, v5, Landroidx/emoji2/text/o;->f:I

    .line 109
    .line 110
    if-ne v14, v8, :cond_8

    .line 111
    .line 112
    invoke-virtual {v5}, Landroidx/emoji2/text/o;->b()Z

    .line 113
    .line 114
    .line 115
    move-result v13

    .line 116
    if-eqz v13, :cond_7

    .line 117
    .line 118
    iget-object v13, v5, Landroidx/emoji2/text/o;->c:Landroidx/emoji2/text/s;

    .line 119
    .line 120
    iput-object v13, v5, Landroidx/emoji2/text/o;->d:Landroidx/emoji2/text/s;

    .line 121
    .line 122
    invoke-virtual {v5}, Landroidx/emoji2/text/o;->a()V

    .line 123
    .line 124
    .line 125
    :goto_5
    move v13, v15

    .line 126
    goto :goto_6

    .line 127
    :cond_7
    invoke-virtual {v5}, Landroidx/emoji2/text/o;->a()V

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_8
    iput-object v13, v5, Landroidx/emoji2/text/o;->d:Landroidx/emoji2/text/s;

    .line 132
    .line 133
    invoke-virtual {v5}, Landroidx/emoji2/text/o;->a()V

    .line 134
    .line 135
    .line 136
    goto :goto_5

    .line 137
    :cond_9
    invoke-virtual {v5}, Landroidx/emoji2/text/o;->a()V

    .line 138
    .line 139
    .line 140
    goto :goto_3

    .line 141
    :goto_6
    iput v9, v5, Landroidx/emoji2/text/o;->e:I

    .line 142
    .line 143
    if-eq v13, v8, :cond_e

    .line 144
    .line 145
    if-eq v13, v12, :cond_c

    .line 146
    .line 147
    if-eq v13, v15, :cond_a

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_a
    if-nez p5, :cond_b

    .line 151
    .line 152
    iget-object v12, v5, Landroidx/emoji2/text/o;->d:Landroidx/emoji2/text/s;

    .line 153
    .line 154
    iget-object v12, v12, Landroidx/emoji2/text/s;->b:Landroidx/emoji2/text/v;

    .line 155
    .line 156
    invoke-virtual {v0, v1, v7, v6, v12}, LF/b;->i(Ljava/lang/CharSequence;IILandroidx/emoji2/text/v;)Z

    .line 157
    .line 158
    .line 159
    move-result v12

    .line 160
    if-nez v12, :cond_0

    .line 161
    .line 162
    :cond_b
    iget-object v11, v5, Landroidx/emoji2/text/o;->d:Landroidx/emoji2/text/s;

    .line 163
    .line 164
    iget-object v11, v11, Landroidx/emoji2/text/s;->b:Landroidx/emoji2/text/v;

    .line 165
    .line 166
    invoke-interface {v4, v1, v7, v6, v11}, Landroidx/emoji2/text/n;->a(Ljava/lang/CharSequence;IILandroidx/emoji2/text/v;)Z

    .line 167
    .line 168
    .line 169
    move-result v11

    .line 170
    add-int/lit8 v10, v10, 0x1

    .line 171
    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :cond_c
    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    .line 175
    .line 176
    .line 177
    move-result v12

    .line 178
    add-int/2addr v12, v6

    .line 179
    if-ge v12, v2, :cond_d

    .line 180
    .line 181
    invoke-static {v1, v12}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    move v9, v6

    .line 186
    :cond_d
    move v6, v12

    .line 187
    goto/16 :goto_1

    .line 188
    .line 189
    :cond_e
    invoke-static {v1, v7}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    add-int/2addr v6, v7

    .line 198
    if-ge v6, v2, :cond_0

    .line 199
    .line 200
    invoke-static {v1, v6}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 201
    .line 202
    .line 203
    move-result v7

    .line 204
    move v9, v7

    .line 205
    goto/16 :goto_0

    .line 206
    .line 207
    :cond_f
    iget v2, v5, Landroidx/emoji2/text/o;->a:I

    .line 208
    .line 209
    if-ne v2, v12, :cond_12

    .line 210
    .line 211
    iget-object v2, v5, Landroidx/emoji2/text/o;->c:Landroidx/emoji2/text/s;

    .line 212
    .line 213
    iget-object v2, v2, Landroidx/emoji2/text/s;->b:Landroidx/emoji2/text/v;

    .line 214
    .line 215
    if-eqz v2, :cond_12

    .line 216
    .line 217
    iget v2, v5, Landroidx/emoji2/text/o;->f:I

    .line 218
    .line 219
    if-gt v2, v8, :cond_10

    .line 220
    .line 221
    invoke-virtual {v5}, Landroidx/emoji2/text/o;->b()Z

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    if-eqz v2, :cond_12

    .line 226
    .line 227
    :cond_10
    if-ge v10, v3, :cond_12

    .line 228
    .line 229
    if-eqz v11, :cond_12

    .line 230
    .line 231
    if-nez p5, :cond_11

    .line 232
    .line 233
    iget-object v2, v5, Landroidx/emoji2/text/o;->c:Landroidx/emoji2/text/s;

    .line 234
    .line 235
    iget-object v2, v2, Landroidx/emoji2/text/s;->b:Landroidx/emoji2/text/v;

    .line 236
    .line 237
    invoke-virtual {v0, v1, v7, v6, v2}, LF/b;->i(Ljava/lang/CharSequence;IILandroidx/emoji2/text/v;)Z

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    if-nez v2, :cond_12

    .line 242
    .line 243
    :cond_11
    iget-object v2, v5, Landroidx/emoji2/text/o;->c:Landroidx/emoji2/text/s;

    .line 244
    .line 245
    iget-object v2, v2, Landroidx/emoji2/text/s;->b:Landroidx/emoji2/text/v;

    .line 246
    .line 247
    invoke-interface {v4, v1, v7, v6, v2}, Landroidx/emoji2/text/n;->a(Ljava/lang/CharSequence;IILandroidx/emoji2/text/v;)Z

    .line 248
    .line 249
    .line 250
    :cond_12
    invoke-interface {v4}, Landroidx/emoji2/text/n;->getResult()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    return-object v1
.end method

.method public l(Lv/e;II)V
    .locals 3

    .line 1
    iget v0, p1, Lv/d;->Q:I

    .line 2
    .line 3
    iget v1, p1, Lv/d;->R:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput v2, p1, Lv/d;->Q:I

    .line 7
    .line 8
    iput v2, p1, Lv/d;->R:I

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lv/d;->y(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p3}, Lv/d;->v(I)V

    .line 14
    .line 15
    .line 16
    if-gez v0, :cond_0

    .line 17
    .line 18
    iput v2, p1, Lv/d;->Q:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iput v0, p1, Lv/d;->Q:I

    .line 22
    .line 23
    :goto_0
    if-gez v1, :cond_1

    .line 24
    .line 25
    iput v2, p1, Lv/d;->R:I

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    iput v1, p1, Lv/d;->R:I

    .line 29
    .line 30
    :goto_1
    iget-object p1, p0, LF/b;->e:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p1, Lv/e;

    .line 33
    .line 34
    invoke-virtual {p1}, Lv/e;->E()V

    .line 35
    .line 36
    .line 37
    return-void
.end method
