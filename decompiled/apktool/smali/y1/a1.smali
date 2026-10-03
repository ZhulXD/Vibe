.class public final Ly1/a1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Ljava/lang/String;

.field public final c:Li1/o;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Li1/o;)V
    .locals 1

    .line 1
    const-string v0, "file"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "root"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Ly1/a1;->a:Ljava/io/File;

    .line 15
    .line 16
    iput-object p2, p0, Ly1/a1;->b:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p3, p0, Ly1/a1;->c:Li1/o;

    .line 19
    .line 20
    return-void
.end method
