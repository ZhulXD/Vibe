.class public final LI0/e;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final e:LY0/a;


# instance fields
.field public final a:LY0/c;

.field public final b:LY0/c;

.field public final c:LY0/c;

.field public final d:LY0/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LY0/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, LY0/a;-><init>(F)V

    .line 5
    .line 6
    .line 7
    sput-object v0, LI0/e;->e:LY0/a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(LY0/c;LY0/c;LY0/c;LY0/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LI0/e;->a:LY0/c;

    .line 5
    .line 6
    iput-object p3, p0, LI0/e;->b:LY0/c;

    .line 7
    .line 8
    iput-object p4, p0, LI0/e;->c:LY0/c;

    .line 9
    .line 10
    iput-object p2, p0, LI0/e;->d:LY0/c;

    .line 11
    .line 12
    return-void
.end method
