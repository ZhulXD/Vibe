.class public final Lorg/godotengine/godot/utils/DialogUtils;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/utils/DialogUtils$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lorg/godotengine/godot/utils/DialogUtils;",
        "",
        "<init>",
        "()V",
        "Companion",
        "lib_templateRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lorg/godotengine/godot/utils/DialogUtils$Companion;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/godotengine/godot/utils/DialogUtils$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/godotengine/godot/utils/DialogUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/godotengine/godot/utils/DialogUtils;->Companion:Lorg/godotengine/godot/utils/DialogUtils$Companion;

    .line 8
    .line 9
    const-string v0, "DialogUtils"

    .line 10
    .line 11
    sput-object v0, Lorg/godotengine/godot/utils/DialogUtils;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$dialogCallback(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/godotengine/godot/utils/DialogUtils;->dialogCallback(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$inputDialogCallback(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/godotengine/godot/utils/DialogUtils;->inputDialogCallback(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final native dialogCallback(I)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native inputDialogCallback(Ljava/lang/String;)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method
