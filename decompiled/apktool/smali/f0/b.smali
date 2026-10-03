.class public final Lf0/b;
.super Ljava/lang/ref/WeakReference;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final a:Ld0/f;

.field public final b:Z

.field public c:Lf0/F;


# direct methods
.method public constructor <init>(Ld0/f;Lf0/z;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 2
    .line 3
    .line 4
    const-string p3, "Argument must not be null"

    .line 5
    .line 6
    invoke-static {p1, p3}, Ly0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lf0/b;->a:Ld0/f;

    .line 10
    .line 11
    iget-boolean p1, p2, Lf0/z;->b:Z

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    iput-object p2, p0, Lf0/b;->c:Lf0/F;

    .line 15
    .line 16
    iput-boolean p1, p0, Lf0/b;->b:Z

    .line 17
    .line 18
    return-void
.end method
