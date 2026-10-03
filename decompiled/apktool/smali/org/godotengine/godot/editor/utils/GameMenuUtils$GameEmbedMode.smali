.class public final enum Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;
.super Ljava/lang/Enum;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/editor/utils/GameMenuUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GameEmbedMode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u0000 \u000b2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000bB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;",
        "",
        "nativeValue",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getNativeValue$lib_templateRelease",
        "()I",
        "DISABLED",
        "AUTO",
        "ENABLED",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;

.field public static final enum AUTO:Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;

.field public static final Companion:Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode$Companion;

.field public static final enum DISABLED:Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;

.field public static final enum ENABLED:Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;

.field public static final SETTING_KEY:Ljava/lang/String; = "run/window_placement/game_embed_mode"


# instance fields
.field private final nativeValue:I


# direct methods
.method private static final synthetic $values()[Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;
    .locals 3

    .line 1
    sget-object v0, Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;->DISABLED:Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;

    .line 2
    .line 3
    sget-object v1, Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;->AUTO:Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;

    .line 4
    .line 5
    sget-object v2, Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;->ENABLED:Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const-string v2, "DISABLED"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v2, v3, v1}, Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;->DISABLED:Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;

    .line 11
    .line 12
    new-instance v0, Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;

    .line 13
    .line 14
    const-string v1, "AUTO"

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-direct {v0, v1, v2, v3}, Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;->AUTO:Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;

    .line 21
    .line 22
    new-instance v0, Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;

    .line 23
    .line 24
    const-string v1, "ENABLED"

    .line 25
    .line 26
    const/4 v3, 0x2

    .line 27
    invoke-direct {v0, v1, v3, v2}, Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;->ENABLED:Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;

    .line 31
    .line 32
    invoke-static {}, Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;->$values()[Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;->$VALUES:[Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;

    .line 37
    .line 38
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sput-object v0, Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 43
    .line 44
    new-instance v0, Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode$Companion;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-direct {v0, v1}, Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;->Companion:Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode$Companion;

    .line 51
    .line 52
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;->nativeValue:I

    .line 5
    .line 6
    return-void
.end method

.method public static final fromNativeValue$lib_templateRelease(I)Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;->Companion:Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode$Companion;->fromNativeValue$lib_templateRelease(I)Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;
    .locals 1

    .line 1
    const-class v0, Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;
    .locals 1

    .line 1
    sget-object v0, Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;->$VALUES:[Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getNativeValue$lib_templateRelease()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;->nativeValue:I

    .line 2
    .line 3
    return v0
.end method
