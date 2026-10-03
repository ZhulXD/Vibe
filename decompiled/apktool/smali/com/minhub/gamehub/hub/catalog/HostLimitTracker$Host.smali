.class public final enum Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;
.super Ljava/lang/Enum;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/minhub/gamehub/hub/catalog/HostLimitTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Host"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\n\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B!\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;",
        "",
        "id",
        "",
        "displayName",
        "resetWindowMillis",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V",
        "getId",
        "()Ljava/lang/String;",
        "getDisplayName",
        "getResetWindowMillis",
        "()J",
        "PIXELDRAIN",
        "GOFILE",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;

.field public static final enum GOFILE:Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;

.field public static final enum PIXELDRAIN:Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;


# instance fields
.field private final displayName:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final resetWindowMillis:J


# direct methods
.method private static final synthetic $values()[Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;
    .locals 2

    .line 1
    sget-object v0, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;->PIXELDRAIN:Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;

    .line 2
    .line 3
    sget-object v1, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;->GOFILE:Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;

    .line 2
    .line 3
    const-string v4, "Pixeldrain"

    .line 4
    .line 5
    const-wide/32 v5, 0x240c8400

    .line 6
    .line 7
    .line 8
    const-string v1, "PIXELDRAIN"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const-string v3, "pixeldrain"

    .line 12
    .line 13
    invoke-direct/range {v0 .. v6}, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;->PIXELDRAIN:Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;

    .line 17
    .line 18
    new-instance v1, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;

    .line 19
    .line 20
    const-string v5, "Gofile"

    .line 21
    .line 22
    const-wide/32 v6, 0x5265c00

    .line 23
    .line 24
    .line 25
    const-string v2, "GOFILE"

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    const-string v4, "gofile"

    .line 29
    .line 30
    invoke-direct/range {v1 .. v7}, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    .line 31
    .line 32
    .line 33
    sput-object v1, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;->GOFILE:Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;

    .line 34
    .line 35
    invoke-static {}, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;->$values()[Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;->$VALUES:[Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;

    .line 40
    .line 41
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 46
    .line 47
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;->id:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;->displayName:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p5, p0, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;->resetWindowMillis:J

    .line 9
    .line 10
    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;
    .locals 1

    .line 1
    const-class v0, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;
    .locals 1

    .line 1
    sget-object v0, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;->$VALUES:[Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;->displayName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getResetWindowMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;->resetWindowMillis:J

    .line 2
    .line 3
    return-wide v0
.end method
