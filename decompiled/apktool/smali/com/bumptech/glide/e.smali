.class public final Lcom/bumptech/glide/e;
.super Landroid/content/ContextWrapper;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final k:Lcom/bumptech/glide/a;


# instance fields
.field public final a:Lg0/g;

.field public final b:Lf0/q;

.field public final c:Lr/b;

.field public final d:LY0/e;

.field public final e:Ljava/util/List;

.field public final f:Lq/e;

.field public final g:Lf0/r;

.field public final h:LA1/b;

.field public final i:I

.field public j:Lu0/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bumptech/glide/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lw0/b;->a:Lw0/a;

    .line 7
    .line 8
    iput-object v1, v0, Lcom/bumptech/glide/a;->b:Lw0/a;

    .line 9
    .line 10
    sput-object v0, Lcom/bumptech/glide/e;->k:Lcom/bumptech/glide/a;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lg0/g;Lcom/bumptech/glide/manager/q;Lr/b;LY0/e;Lq/e;Ljava/util/List;Lf0/r;LA1/b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Lcom/bumptech/glide/e;->a:Lg0/g;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/bumptech/glide/e;->c:Lr/b;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/bumptech/glide/e;->d:LY0/e;

    .line 13
    .line 14
    iput-object p7, p0, Lcom/bumptech/glide/e;->e:Ljava/util/List;

    .line 15
    .line 16
    iput-object p6, p0, Lcom/bumptech/glide/e;->f:Lq/e;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/bumptech/glide/e;->g:Lf0/r;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/bumptech/glide/e;->h:LA1/b;

    .line 21
    .line 22
    const/4 p1, 0x4

    .line 23
    iput p1, p0, Lcom/bumptech/glide/e;->i:I

    .line 24
    .line 25
    new-instance p1, Lf0/q;

    .line 26
    .line 27
    invoke-direct {p1, p3}, Lf0/q;-><init>(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/bumptech/glide/e;->b:Lf0/q;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final a()Lcom/bumptech/glide/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/e;->b:Lf0/q;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf0/q;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/bumptech/glide/i;

    .line 8
    .line 9
    return-object v0
.end method
