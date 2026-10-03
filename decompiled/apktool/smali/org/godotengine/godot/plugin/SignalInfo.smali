.class public final Lorg/godotengine/godot/plugin/SignalInfo;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field private final name:Ljava/lang/String;

.field private final paramTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final paramTypesNames:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    iput-object p1, p0, Lorg/godotengine/godot/plugin/SignalInfo;->name:Ljava/lang/String;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    new-array p2, p1, [Ljava/lang/Class;

    .line 16
    .line 17
    :cond_0
    iput-object p2, p0, Lorg/godotengine/godot/plugin/SignalInfo;->paramTypes:[Ljava/lang/Class;

    .line 18
    .line 19
    array-length p2, p2

    .line 20
    new-array p2, p2, [Ljava/lang/String;

    .line 21
    .line 22
    iput-object p2, p0, Lorg/godotengine/godot/plugin/SignalInfo;->paramTypesNames:[Ljava/lang/String;

    .line 23
    .line 24
    :goto_0
    iget-object p2, p0, Lorg/godotengine/godot/plugin/SignalInfo;->paramTypes:[Ljava/lang/Class;

    .line 25
    .line 26
    array-length v0, p2

    .line 27
    if-ge p1, v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lorg/godotengine/godot/plugin/SignalInfo;->paramTypesNames:[Ljava/lang/String;

    .line 30
    .line 31
    aget-object p2, p2, p1

    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    aput-object p2, v0, p1

    .line 38
    .line 39
    add-int/lit8 p1, p1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-void

    .line 43
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    const-string v0, "Invalid signal name: "

    .line 46
    .line 47
    invoke-static {v0, p1}, Lkotlin/collections/unsigned/a;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Lorg/godotengine/godot/plugin/SignalInfo;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, Lorg/godotengine/godot/plugin/SignalInfo;

    .line 12
    .line 13
    iget-object v0, p0, Lorg/godotengine/godot/plugin/SignalInfo;->name:Ljava/lang/String;

    .line 14
    .line 15
    iget-object p1, p1, Lorg/godotengine/godot/plugin/SignalInfo;->name:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/plugin/SignalInfo;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getParamTypes()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/plugin/SignalInfo;->paramTypes:[Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method public getParamTypesNames()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/plugin/SignalInfo;->paramTypesNames:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/plugin/SignalInfo;->name:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SignalInfo{name=\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/godotengine/godot/plugin/SignalInfo;->name:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "\', paramsTypes="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lorg/godotengine/godot/plugin/SignalInfo;->paramTypes:[Ljava/lang/Class;

    .line 19
    .line 20
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const/16 v1, 0x7d

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method
