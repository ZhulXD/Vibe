.class public final Lcom/hatkid/mkxpz/cheat/CheatsManager;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0010\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0011\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0086 J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0002J\u0012\u0010\n\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0007H\u0002J\u0012\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0007H\u0002J\u000e\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u0010\u001a\u00020\u0007J\u0006\u0010\u0011\u001a\u00020\u0007J\u0006\u0010\u0012\u001a\u00020\u0007J\u0018\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u000e\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000fJ\u001e\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u001c\u001a\u00020\u0007J\u0006\u0010\u001d\u001a\u00020\u0007J\u0006\u0010\u001e\u001a\u00020\u0007\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/hatkid/mkxpz/cheat/CheatsManager;",
        "",
        "<init>",
        "()V",
        "nativeExecuteScript",
        "",
        "script",
        "",
        "g",
        "name",
        "rubyPartyMembers",
        "v",
        "rubyAliveTroop",
        "addGoldScript",
        "amount",
        "",
        "healAllScript",
        "killAllEnemiesScript",
        "enemies1HPScript",
        "giveItemsScript",
        "dataGlobal",
        "giveAllItemsScript",
        "giveAllWeaponsScript",
        "giveAllArmorsScript",
        "levelUpScript",
        "memberIndex",
        "addStatScript",
        "paramId",
        "savePositionScript",
        "loadPositionScript",
        "toggleNoClipScript",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "$"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lkotlin/collections/unsigned/a;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method private final giveItemsScript(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "game_party"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/hatkid/mkxpz/cheat/CheatsManager;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/hatkid/mkxpz/cheat/CheatsManager;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v1, "; if gp; "

    .line 12
    .line 13
    const-string v2, ".each { |i| next unless i; begin; gp.gain_item(i,"

    .line 14
    .line 15
    const-string v3, "begin; gp="

    .line 16
    .line 17
    invoke-static {v3, v0, v1, p1, v2}, Lkotlin/collections/unsigned/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, "); rescue TypeError,ArgumentError; gp.gain_item(i.id,"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p2, ") rescue nil; end }; end; rescue; end"

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1
.end method

.method private final rubyAliveTroop(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, ".respond_to?(:alive_members) ? "

    .line 2
    .line 3
    const-string v1, ".alive_members : "

    .line 4
    .line 5
    const-string v2, "("

    .line 6
    .line 7
    invoke-static {v2, p1, v0, p1, v1}, Lkotlin/collections/unsigned/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, ".members.select { |e| !e.dead? rescue e.hp > 0 })"

    .line 12
    .line 13
    invoke-static {v0, p1, v1}, Lkotlin/collections/unsigned/a;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public static synthetic rubyAliveTroop$default(Lcom/hatkid/mkxpz/cheat/CheatsManager;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const-string p1, "gt"

    .line 6
    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lcom/hatkid/mkxpz/cheat/CheatsManager;->rubyAliveTroop(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private final rubyPartyMembers(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, ".respond_to?(:members) ? "

    .line 2
    .line 3
    const-string v1, ".members : "

    .line 4
    .line 5
    const-string v2, "("

    .line 6
    .line 7
    invoke-static {v2, p1, v0, p1, v1}, Lkotlin/collections/unsigned/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, ".actors)"

    .line 12
    .line 13
    invoke-static {v0, p1, v1}, Lkotlin/collections/unsigned/a;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public static synthetic rubyPartyMembers$default(Lcom/hatkid/mkxpz/cheat/CheatsManager;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const-string p1, "gp"

    .line 6
    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lcom/hatkid/mkxpz/cheat/CheatsManager;->rubyPartyMembers(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method


# virtual methods
.method public final addGoldScript(I)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "game_party"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/hatkid/mkxpz/cheat/CheatsManager;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, ".gain_gold("

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p1, ") if "

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method public final addStatScript(III)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "game_party"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/hatkid/mkxpz/cheat/CheatsManager;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-gez p1, :cond_0

    .line 10
    .line 11
    invoke-static {p0, v2, v1, v2}, Lcom/hatkid/mkxpz/cheat/CheatsManager;->rubyPartyMembers$default(Lcom/hatkid/mkxpz/cheat/CheatsManager;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p0, v2, v1, v2}, Lcom/hatkid/mkxpz/cheat/CheatsManager;->rubyPartyMembers$default(Lcom/hatkid/mkxpz/cheat/CheatsManager;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, "["

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, ", 1].compact"

    .line 37
    .line 38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :goto_0
    const-string v1, "; if gp; "

    .line 46
    .line 47
    const-string v2, ".each { |m| begin; m.add_param("

    .line 48
    .line 49
    const-string v3, "begin; gp="

    .line 50
    .line 51
    invoke-static {v3, v0, v1, p1, v2}, Lkotlin/collections/unsigned/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, ","

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v0, "); rescue NoMethodError; case "

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p2, "; when 0 then m.hp=[[m.hp+"

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string p2, ",1].max,m.maxhp].min rescue nil; when 1; sp=m.respond_to?(:mp)?:mp::sp; msp=m.respond_to?(:mmp)?:mmp::maxsp; m.send(:\"#{sp}=\",[[m.send(sp)+"

    .line 83
    .line 84
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string p2, ",0].max,m.send(msp)].min) rescue nil; end; end }; end; rescue; end"

    .line 91
    .line 92
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    return-object p1
.end method

.method public final enemies1HPScript()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "game_troop"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/hatkid/mkxpz/cheat/CheatsManager;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-static {p0, v1, v2, v1}, Lcom/hatkid/mkxpz/cheat/CheatsManager;->rubyAliveTroop$default(Lcom/hatkid/mkxpz/cheat/CheatsManager;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "; "

    .line 14
    .line 15
    const-string v3, ".each { |e| e.hp = 1 } if gt; rescue; end"

    .line 16
    .line 17
    const-string v4, "begin; gt="

    .line 18
    .line 19
    invoke-static {v4, v0, v2, v1, v3}, LE/b;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public final giveAllArmorsScript(I)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "data_armors"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/hatkid/mkxpz/cheat/CheatsManager;->giveItemsScript(Ljava/lang/String;I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final giveAllItemsScript(I)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "data_items"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/hatkid/mkxpz/cheat/CheatsManager;->giveItemsScript(Ljava/lang/String;I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final giveAllWeaponsScript(I)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "data_weapons"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/hatkid/mkxpz/cheat/CheatsManager;->giveItemsScript(Ljava/lang/String;I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final healAllScript()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "game_party"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/hatkid/mkxpz/cheat/CheatsManager;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-static {p0, v1, v2, v1}, Lcom/hatkid/mkxpz/cheat/CheatsManager;->rubyPartyMembers$default(Lcom/hatkid/mkxpz/cheat/CheatsManager;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "; "

    .line 14
    .line 15
    const-string v3, ".each { |m| m.recover_all } if gp; rescue; end"

    .line 16
    .line 17
    const-string v4, "begin; gp="

    .line 18
    .line 19
    invoke-static {v4, v0, v2, v1, v3}, LE/b;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public final killAllEnemiesScript()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "game_troop"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/hatkid/mkxpz/cheat/CheatsManager;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, ".members.each { |e| e.hp = 0 } if "

    .line 8
    .line 9
    invoke-static {v0, v1, v0}, Lkotlin/collections/unsigned/a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final levelUpScript(II)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "game_party"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/hatkid/mkxpz/cheat/CheatsManager;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-gez p1, :cond_0

    .line 10
    .line 11
    invoke-static {p0, v2, v1, v2}, Lcom/hatkid/mkxpz/cheat/CheatsManager;->rubyPartyMembers$default(Lcom/hatkid/mkxpz/cheat/CheatsManager;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p0, v2, v1, v2}, Lcom/hatkid/mkxpz/cheat/CheatsManager;->rubyPartyMembers$default(Lcom/hatkid/mkxpz/cheat/CheatsManager;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, "["

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, ", 1].compact"

    .line 37
    .line 38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :goto_0
    const-string v1, "; if gp; "

    .line 46
    .line 47
    const-string v2, ".each { |m| lv=[m.level+"

    .line 48
    .line 49
    const-string v3, "begin; gp="

    .line 50
    .line 51
    invoke-static {v3, v0, v1, p1, v2}, Lkotlin/collections/unsigned/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p2, ",99].min; begin; m.change_level(lv,false); rescue ArgumentError; m.change_level(lv) rescue nil; end; m.refresh rescue nil }; end; rescue; end"

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    return-object p1
.end method

.method public final loadPositionScript()Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "game_player"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/hatkid/mkxpz/cheat/CheatsManager;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "game_temp"

    .line 8
    .line 9
    invoke-direct {p0, v1}, Lcom/hatkid/mkxpz/cheat/CheatsManager;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "__cheat_pos"

    .line 14
    .line 15
    invoke-direct {p0, v2}, Lcom/hatkid/mkxpz/cheat/CheatsManager;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, " && "

    .line 20
    .line 21
    const-string v4, "; x,y,mid="

    .line 22
    .line 23
    const-string v5, "begin; if "

    .line 24
    .line 25
    invoke-static {v5, v2, v3, v0, v4}, Lkotlin/collections/unsigned/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const-string v4, "; dir="

    .line 30
    .line 31
    const-string v5, ".direction; begin; "

    .line 32
    .line 33
    invoke-static {v3, v2, v4, v0, v5}, Lkotlin/collections/unsigned/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v2, ".reserve_transfer(mid,x,y,dir); rescue NoMethodError; "

    .line 37
    .line 38
    const-string v4, ".player_transferring=true; "

    .line 39
    .line 40
    invoke-static {v3, v0, v2, v1, v4}, Lkotlin/collections/unsigned/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v0, ".player_new_map_id=mid; "

    .line 44
    .line 45
    const-string v2, ".player_new_x=x; "

    .line 46
    .line 47
    invoke-static {v3, v1, v0, v1, v2}, Lkotlin/collections/unsigned/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v0, ".player_new_y=y; "

    .line 54
    .line 55
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v0, ".player_new_direction=dir; end; end; rescue; end"

    .line 62
    .line 63
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    return-object v0
.end method

.method public final native nativeExecuteScript(Ljava/lang/String;)V
.end method

.method public final savePositionScript()Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "game_player"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/hatkid/mkxpz/cheat/CheatsManager;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "game_map"

    .line 8
    .line 9
    invoke-direct {p0, v1}, Lcom/hatkid/mkxpz/cheat/CheatsManager;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "__cheat_pos"

    .line 14
    .line 15
    invoke-direct {p0, v2}, Lcom/hatkid/mkxpz/cheat/CheatsManager;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "; if gpl; mid=gpl.respond_to?(:map_id)?gpl.map_id:("

    .line 20
    .line 21
    const-string v4, ".map_id rescue 0); "

    .line 22
    .line 23
    const-string v5, "begin; gpl="

    .line 24
    .line 25
    invoke-static {v5, v0, v3, v1, v4}, Lkotlin/collections/unsigned/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "=[gpl.x,gpl.y,mid]; end; rescue; end"

    .line 30
    .line 31
    invoke-static {v0, v2, v1}, Lkotlin/collections/unsigned/a;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method public final toggleNoClipScript()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "game_player"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/hatkid/mkxpz/cheat/CheatsManager;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, ".through=!"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, ".through if "

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
