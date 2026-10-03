.class public final Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemData;,
        Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u0011\u0012B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\u0008\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0015\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge;",
        "",
        "<init>",
        "()V",
        "",
        "callbackUri",
        "",
        "useFallbackAddress",
        "buildPatreonStartUrl",
        "(Ljava/lang/String;Z)Ljava/lang/String;",
        "json",
        "Lcom/minhub/gamehub/hub/auth/MinHubPatreonSession;",
        "parseRedeemResponse",
        "(Ljava/lang/String;)Lcom/minhub/gamehub/hub/auth/MinHubPatreonSession;",
        "Li1/l;",
        "gson",
        "Li1/l;",
        "RedeemEnvelope",
        "RedeemData",
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
        "SMAP\nMinHubAuthBridge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MinHubAuthBridge.kt\ncom/minhub/gamehub/hub/auth/MinHubAuthBridge\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,73:1\n1#2:74\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge;

.field private static final gson:Li1/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge;->INSTANCE:Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge;

    .line 7
    .line 8
    new-instance v0, Li1/l;

    .line 9
    .line 10
    invoke-direct {v0}, Li1/l;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge;->gson:Li1/l;

    .line 14
    .line 15
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

.method public static synthetic buildPatreonStartUrl$default(Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const-string p1, "yunbierdika://patreon-callback"

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge;->buildPatreonStartUrl(Ljava/lang/String;Z)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method


# virtual methods
.method public final buildPatreonStartUrl(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "callbackUri"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "https://auth.h-game18.xyz/patreon/start"

    .line 17
    .line 18
    if-eqz p2, :cond_2

    .line 19
    .line 20
    const-string p2, "url"

    .line 21
    .line 22
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string p2, "https://auth.h-game18.xyz/"

    .line 26
    .line 27
    invoke-static {v0, p2}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    const-string p2, "https://auth.h-game18.xyz"

    .line 34
    .line 35
    invoke-static {v0, p2}, Lkotlin/text/StringsKt;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    const-string v1, "https://minhub-auth.blogluccisan.workers.dev"

    .line 40
    .line 41
    invoke-static {v1, p2}, Lkotlin/collections/unsigned/a;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 p2, 0x0

    .line 47
    :goto_0
    if-nez p2, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move-object v0, p2

    .line 51
    :cond_2
    :goto_1
    const-string p2, "?redirect="

    .line 52
    .line 53
    invoke-static {v0, p2, p1}, Lkotlin/collections/unsigned/a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    return-object p1
.end method

.method public final parseRedeemResponse(Ljava/lang/String;)Lcom/minhub/gamehub/hub/auth/MinHubPatreonSession;
    .locals 8

    .line 1
    const-string v0, "json"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge;->gson:Li1/l;

    .line 7
    .line 8
    const-class v1, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;

    .line 9
    .line 10
    invoke-virtual {v0, p1, v1}, Li1/l;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;

    .line 15
    .line 16
    if-eqz p1, :cond_9

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;->getSuccess()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz v0, :cond_5

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;->getData()Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemData;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    goto/16 :goto_3

    .line 32
    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;->getData()Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemData;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemData;->getLoginType()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v2, "toLowerCase(...)"

    .line 48
    .line 49
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string v2, "owner"

    .line 53
    .line 54
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    const/4 v0, 0x2

    .line 61
    :goto_0
    move v5, v0

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    const-string v2, "patreon"

    .line 64
    .line 65
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    const/4 v0, 0x1

    .line 72
    goto :goto_0

    .line 73
    :goto_1
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;->getData()Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemData;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemData;->getName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_2

    .line 86
    .line 87
    const-string v0, "VIP User"

    .line 88
    .line 89
    :cond_2
    move-object v3, v0

    .line 90
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;->getData()Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemData;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemData;->getPatreonUserId()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;->getData()Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemData;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemData;->getPledgeCents()I

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;->getData()Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemData;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemData;->getSessionToken()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    if-eqz p1, :cond_3

    .line 115
    .line 116
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-nez v0, :cond_3

    .line 121
    .line 122
    move-object v7, p1

    .line 123
    goto :goto_2

    .line 124
    :cond_3
    move-object v7, v1

    .line 125
    :goto_2
    new-instance v2, Lcom/minhub/gamehub/hub/auth/MinHubPatreonSession;

    .line 126
    .line 127
    invoke-direct/range {v2 .. v7}, Lcom/minhub/gamehub/hub/auth/MinHubPatreonSession;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return-object v2

    .line 131
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 132
    .line 133
    const-string v0, "Unsupported login type"

    .line 134
    .line 135
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw p1

    .line 139
    :cond_5
    :goto_3
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;->getMessage()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    if-eqz p1, :cond_7

    .line 144
    .line 145
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-nez v0, :cond_6

    .line 150
    .line 151
    move-object v1, p1

    .line 152
    :cond_6
    if-nez v1, :cond_8

    .line 153
    .line 154
    :cond_7
    const-string v1, "Auth failed"

    .line 155
    .line 156
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 157
    .line 158
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw p1

    .line 162
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 163
    .line 164
    const-string v0, "Invalid auth response"

    .line 165
    .line 166
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw p1
.end method
