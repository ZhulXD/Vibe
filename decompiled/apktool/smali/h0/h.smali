.class public final Lh0/h;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lz0/e;


# instance fields
.field public final b:Ljava/security/MessageDigest;

.field public final c:Lz0/h;


# direct methods
.method public constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lz0/h;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lh0/h;->c:Lz0/h;

    .line 10
    .line 11
    iput-object p1, p0, Lh0/h;->b:Ljava/security/MessageDigest;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final b()Lz0/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lh0/h;->c:Lz0/h;

    .line 2
    .line 3
    return-object v0
.end method
