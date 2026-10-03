.class final Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/minhub/gamehub/data/RpgMakerPluginParamParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MutableParam"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0017\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0003J\u000e\u0010#\u001a\u00020!2\u0006\u0010$\u001a\u00020\u0003J\u0008\u0010%\u001a\u00020!H\u0002J\u0006\u0010&\u001a\u00020\'R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\u0007\"\u0004\u0008\n\u0010\u0005R\u001a\u0010\u000b\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u0007\"\u0004\u0008\r\u0010\u0005R\u001a\u0010\u000e\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0007\"\u0004\u0008\u0010\u0010\u0005R\u001a\u0010\u0011\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0007\"\u0004\u0008\u0013\u0010\u0005R\u001a\u0010\u0014\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0007\"\u0004\u0008\u0016\u0010\u0005R\u001a\u0010\u0017\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0007\"\u0004\u0008\u0019\u0010\u0005R\u0017\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;",
        "",
        "name",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "getName",
        "()Ljava/lang/String;",
        "text",
        "getText",
        "setText",
        "type",
        "getType",
        "setType",
        "desc",
        "getDesc",
        "setDesc",
        "default",
        "getDefault",
        "setDefault",
        "on",
        "getOn",
        "setOn",
        "off",
        "getOff",
        "setOff",
        "options",
        "",
        "Lcom/minhub/gamehub/data/PluginParamOption;",
        "getOptions",
        "()Ljava/util/List;",
        "pendingLabel",
        "startOption",
        "",
        "label",
        "setOptionValue",
        "value",
        "flushPending",
        "toSpec",
        "Lcom/minhub/gamehub/data/PluginParamSpec;",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRpgMakerPluginParamSpec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RpgMakerPluginParamSpec.kt\ncom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,119:1\n1#2:120\n*E\n"
    }
.end annotation


# instance fields
.field private default:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private off:Ljava/lang/String;

.field private on:Ljava/lang/String;

.field private final options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/minhub/gamehub/data/PluginParamOption;",
            ">;"
        }
    .end annotation
.end field

.field private pendingLabel:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;->name:Ljava/lang/String;

    .line 10
    .line 11
    const-string p1, ""

    .line 12
    .line 13
    iput-object p1, p0, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;->text:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;->type:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;->desc:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;->default:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;->on:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;->off:Ljava/lang/String;

    .line 24
    .line 25
    new-instance p1, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;->options:Ljava/util/List;

    .line 31
    .line 32
    return-void
.end method

.method private final flushPending()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;->pendingLabel:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;->options:Ljava/util/List;

    .line 6
    .line 7
    new-instance v2, Lcom/minhub/gamehub/data/PluginParamOption;

    .line 8
    .line 9
    invoke-direct {v2, v0, v0}, Lcom/minhub/gamehub/data/PluginParamOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;->pendingLabel:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getDefault()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;->default:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;->desc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOff()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;->off:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;->on:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/minhub/gamehub/data/PluginParamOption;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;->options:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;->text:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setDefault(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;->default:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setDesc(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;->desc:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setOff(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;->off:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setOn(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;->on:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setOptionValue(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;->pendingLabel:Ljava/lang/String;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    move-object v0, p1

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;->options:Ljava/util/List;

    .line 12
    .line 13
    new-instance v2, Lcom/minhub/gamehub/data/PluginParamOption;

    .line 14
    .line 15
    invoke-direct {v2, v0, p1}, Lcom/minhub/gamehub/data/PluginParamOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;->pendingLabel:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;->text:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;->type:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final startOption(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "label"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;->flushPending()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;->pendingLabel:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public final toSpec()Lcom/minhub/gamehub/data/PluginParamSpec;
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;->flushPending()V

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;->name:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;->text:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;->name:Ljava/lang/String;

    .line 15
    .line 16
    :cond_0
    move-object v2, v0

    .line 17
    iget-object v3, p0, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;->type:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;->options:Ljava/util/List;

    .line 20
    .line 21
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget-object v5, p0, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;->default:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v6, p0, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;->desc:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;->on:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    if-eqz v7, :cond_1

    .line 36
    .line 37
    const-string v0, "ON"

    .line 38
    .line 39
    :cond_1
    move-object v7, v0

    .line 40
    iget-object v0, p0, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;->off:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    if-eqz v8, :cond_2

    .line 47
    .line 48
    const-string v0, "OFF"

    .line 49
    .line 50
    :cond_2
    move-object v8, v0

    .line 51
    new-instance v0, Lcom/minhub/gamehub/data/PluginParamSpec;

    .line 52
    .line 53
    invoke-direct/range {v0 .. v8}, Lcom/minhub/gamehub/data/PluginParamSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-object v0
.end method
