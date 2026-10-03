.class public final synthetic Lkotlin/io/path/f;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Lkotlin/jvm/functions/Function3;

.field public final synthetic d:Ljava/nio/file/Path;

.field public final synthetic e:Ljava/nio/file/Path;

.field public final synthetic f:Ljava/nio/file/Path;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlin/io/path/f;->b:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p2, p0, Lkotlin/io/path/f;->c:Lkotlin/jvm/functions/Function3;

    .line 7
    .line 8
    iput-object p3, p0, Lkotlin/io/path/f;->d:Ljava/nio/file/Path;

    .line 9
    .line 10
    iput-object p4, p0, Lkotlin/io/path/f;->e:Ljava/nio/file/Path;

    .line 11
    .line 12
    iput-object p5, p0, Lkotlin/io/path/f;->f:Ljava/nio/file/Path;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v2, p0, Lkotlin/io/path/f;->d:Ljava/nio/file/Path;

    .line 2
    .line 3
    iget-object v3, p0, Lkotlin/io/path/f;->e:Ljava/nio/file/Path;

    .line 4
    .line 5
    iget-object v4, p0, Lkotlin/io/path/f;->f:Ljava/nio/file/Path;

    .line 6
    .line 7
    move-object v5, p1

    .line 8
    check-cast v5, Ljava/nio/file/Path;

    .line 9
    .line 10
    move-object v6, p2

    .line 11
    check-cast v6, Ljava/io/IOException;

    .line 12
    .line 13
    iget-object v0, p0, Lkotlin/io/path/f;->b:Ljava/util/ArrayList;

    .line 14
    .line 15
    iget-object v1, p0, Lkotlin/io/path/f;->c:Lkotlin/jvm/functions/Function3;

    .line 16
    .line 17
    invoke-static/range {v0 .. v6}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->b(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method
