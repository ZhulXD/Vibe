.class public interface abstract Lj0/h;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final a:Lj0/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lj0/i;

    .line 2
    .line 3
    invoke-direct {v0}, Lj0/i;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lj0/i;->a:Z

    .line 8
    .line 9
    new-instance v1, Lj0/k;

    .line 10
    .line 11
    iget-object v0, v0, Lj0/i;->b:Ljava/util/Map;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lj0/k;-><init>(Ljava/util/Map;)V

    .line 14
    .line 15
    .line 16
    sput-object v1, Lj0/h;->a:Lj0/k;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Map;
.end method
