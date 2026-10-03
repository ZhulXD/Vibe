.class public final Lcom/minhub/gamehub/hub/catalog/UnsupportedGameImportException;
.super Ljava/lang/Exception;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00060\u0001j\u0002`\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/minhub/gamehub/hub/catalog/UnsupportedGameImportException;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "reason",
        "Lcom/minhub/gamehub/hub/catalog/UnsupportedImportReason;",
        "<init>",
        "(Lcom/minhub/gamehub/hub/catalog/UnsupportedImportReason;)V",
        "getReason",
        "()Lcom/minhub/gamehub/hub/catalog/UnsupportedImportReason;",
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


# instance fields
.field private final reason:Lcom/minhub/gamehub/hub/catalog/UnsupportedImportReason;


# direct methods
.method public constructor <init>(Lcom/minhub/gamehub/hub/catalog/UnsupportedImportReason;)V
    .locals 1

    .line 1
    const-string v0, "reason"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/minhub/gamehub/hub/catalog/UnsupportedGameImportException;->reason:Lcom/minhub/gamehub/hub/catalog/UnsupportedImportReason;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getReason()Lcom/minhub/gamehub/hub/catalog/UnsupportedImportReason;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/UnsupportedGameImportException;->reason:Lcom/minhub/gamehub/hub/catalog/UnsupportedImportReason;

    .line 2
    .line 3
    return-object v0
.end method
