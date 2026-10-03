.class public final Lcom/minhub/gamehub/data/SaveExportNamingPolicy;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/minhub/gamehub/data/SaveExportNamingPolicy;",
        "",
        "<init>",
        "()V",
        "fileNameFor",
        "",
        "save",
        "Lcom/minhub/gamehub/data/Save;",
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
.field public static final INSTANCE:Lcom/minhub/gamehub/data/SaveExportNamingPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/minhub/gamehub/data/SaveExportNamingPolicy;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/minhub/gamehub/data/SaveExportNamingPolicy;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/minhub/gamehub/data/SaveExportNamingPolicy;->INSTANCE:Lcom/minhub/gamehub/data/SaveExportNamingPolicy;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final fileNameFor(Lcom/minhub/gamehub/data/Save;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "save"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Save;->getFileName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method
