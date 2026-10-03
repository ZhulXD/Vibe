.class public final synthetic Lcom/minhub/gamehub/data/a;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field public final synthetic a:Lcom/minhub/gamehub/data/Game;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/data/Game;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/minhub/gamehub/data/a;->a:Lcom/minhub/gamehub/data/Game;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/data/a;->a:Lcom/minhub/gamehub/data/Game;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/minhub/gamehub/data/SaveRepository;->b(Lcom/minhub/gamehub/data/Game;Ljava/io/File;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
