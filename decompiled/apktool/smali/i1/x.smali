.class public abstract enum Li1/x;
.super Ljava/lang/Enum;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final enum b:Li1/t;

.field public static final enum c:Li1/u;

.field public static final synthetic d:[Li1/x;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Li1/t;

    .line 2
    .line 3
    invoke-direct {v0}, Li1/t;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Li1/x;->b:Li1/t;

    .line 7
    .line 8
    new-instance v1, Li1/u;

    .line 9
    .line 10
    invoke-direct {v1}, Li1/u;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Li1/x;->c:Li1/u;

    .line 14
    .line 15
    new-instance v2, Li1/v;

    .line 16
    .line 17
    invoke-direct {v2}, Li1/v;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v3, Li1/w;

    .line 21
    .line 22
    invoke-direct {v3}, Li1/w;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 v4, 0x4

    .line 26
    new-array v4, v4, [Li1/x;

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    aput-object v0, v4, v5

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    aput-object v1, v4, v0

    .line 33
    .line 34
    const/4 v0, 0x2

    .line 35
    aput-object v2, v4, v0

    .line 36
    .line 37
    const/4 v0, 0x3

    .line 38
    aput-object v3, v4, v0

    .line 39
    .line 40
    sput-object v4, Li1/x;->d:[Li1/x;

    .line 41
    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Li1/x;
    .locals 1

    .line 1
    const-class v0, Li1/x;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Li1/x;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Li1/x;
    .locals 1

    .line 1
    sget-object v0, Li1/x;->d:[Li1/x;

    .line 2
    .line 3
    invoke-virtual {v0}, [Li1/x;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Li1/x;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public abstract a(Lp1/a;)Ljava/lang/Number;
.end method
