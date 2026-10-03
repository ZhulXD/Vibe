.class public final Lcom/minhub/gamehub/hub/catalog/CfWebViewRenderHost;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0016\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/minhub/gamehub/hub/catalog/CfWebViewRenderHost;",
        "",
        "<init>",
        "()V",
        "canRender",
        "",
        "context",
        "Landroid/content/Context;",
        "attach",
        "Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;",
        "webView",
        "Landroid/webkit/WebView;",
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
        "SMAP\nCfWebViewRenderHost.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CfWebViewRenderHost.kt\ncom/minhub/gamehub/hub/catalog/CfWebViewRenderHost\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,131:1\n1#2:132\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/minhub/gamehub/hub/catalog/CfWebViewRenderHost;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/minhub/gamehub/hub/catalog/CfWebViewRenderHost;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/minhub/gamehub/hub/catalog/CfWebViewRenderHost;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/minhub/gamehub/hub/catalog/CfWebViewRenderHost;->INSTANCE:Lcom/minhub/gamehub/hub/catalog/CfWebViewRenderHost;

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

.method public static synthetic a()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/minhub/gamehub/hub/catalog/CfWebViewRenderHost;->attach$lambda$2()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final attach$lambda$0()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final attach$lambda$1()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final attach$lambda$10()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final attach$lambda$11()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final attach$lambda$2()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final attach$lambda$3()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final attach$lambda$6(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/WindowManager;Landroid/webkit/WebView;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 7
    .line 8
    :try_start_0
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 9
    .line 10
    invoke-interface {p1, p2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 14
    .line 15
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 21
    .line 22
    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_0
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 30
    .line 31
    return-object p0
.end method

.method private static final attach$lambda$9(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/util/DisplayMetrics;ILandroid/view/WindowManager;Landroid/webkit/WebView;)Lkotlin/Unit;
    .locals 6

    .line 1
    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    iget-boolean p0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    iput-boolean p0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 11
    .line 12
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 13
    .line 14
    iget v1, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 15
    .line 16
    iget v2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 17
    .line 18
    const/16 v4, 0x28

    .line 19
    .line 20
    const/4 v5, -0x2

    .line 21
    move v3, p3

    .line 22
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 23
    .line 24
    .line 25
    const p0, 0x800033

    .line 26
    .line 27
    .line 28
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 32
    .line 33
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 34
    .line 35
    :try_start_0
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 36
    .line 37
    invoke-interface {p4, p5, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    .line 39
    .line 40
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 41
    .line 42
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    move-object p0, v0

    .line 48
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 49
    .line 50
    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    :goto_0
    const-string p0, "MinHub-DL"

    .line 58
    .line 59
    const-string p1, "CfRenderHost: overlay shown on-screen (Turnstile detected)"

    .line 60
    .line 61
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 65
    .line 66
    return-object p0
.end method

.method public static synthetic b()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/minhub/gamehub/hub/catalog/CfWebViewRenderHost;->attach$lambda$0()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/minhub/gamehub/hub/catalog/CfWebViewRenderHost;->attach$lambda$1()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic d(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/util/DisplayMetrics;ILandroid/view/WindowManager;Landroid/webkit/WebView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/minhub/gamehub/hub/catalog/CfWebViewRenderHost;->attach$lambda$9(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/util/DisplayMetrics;ILandroid/view/WindowManager;Landroid/webkit/WebView;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/WindowManager;Landroid/webkit/WebView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/minhub/gamehub/hub/catalog/CfWebViewRenderHost;->attach$lambda$6(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/WindowManager;Landroid/webkit/WebView;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/minhub/gamehub/hub/catalog/CfWebViewRenderHost;->attach$lambda$11()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic g()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/minhub/gamehub/hub/catalog/CfWebViewRenderHost;->attach$lambda$10()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic h()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/minhub/gamehub/hub/catalog/CfWebViewRenderHost;->attach$lambda$3()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public final attach(Landroid/content/Context;Landroid/webkit/WebView;)Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;
    .locals 14

    .line 1
    move-object/from16 v6, p2

    .line 2
    .line 3
    const-string v0, "context"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "webView"

    .line 9
    .line 10
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p0 .. p1}, Lcom/minhub/gamehub/hub/catalog/CfWebViewRenderHost;->canRender(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const-string v7, "MinHub-DL"

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const-string p1, "CfRenderHost: no overlay permission \u2014 WebView runs unattached, Cloudflare challenge will likely NOT clear"

    .line 22
    .line 23
    invoke-static {v7, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    new-instance p1, Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;

    .line 27
    .line 28
    new-instance v0, LA1/q;

    .line 29
    .line 30
    const/16 v1, 0xa

    .line 31
    .line 32
    invoke-direct {v0, v1}, LA1/q;-><init>(I)V

    .line 33
    .line 34
    .line 35
    new-instance v1, LA1/q;

    .line 36
    .line 37
    const/16 v2, 0xb

    .line 38
    .line 39
    invoke-direct {v1, v2}, LA1/q;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, v0, v1}, Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 43
    .line 44
    .line 45
    return-object p1

    .line 46
    :cond_0
    const-string v0, "window"

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    instance-of v1, v0, Landroid/view/WindowManager;

    .line 53
    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    check-cast v0, Landroid/view/WindowManager;

    .line 57
    .line 58
    :goto_0
    move-object v5, v0

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const/4 v0, 0x0

    .line 61
    goto :goto_0

    .line 62
    :goto_1
    if-nez v5, :cond_2

    .line 63
    .line 64
    new-instance p1, Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;

    .line 65
    .line 66
    new-instance v0, LA1/q;

    .line 67
    .line 68
    const/16 v1, 0xc

    .line 69
    .line 70
    invoke-direct {v0, v1}, LA1/q;-><init>(I)V

    .line 71
    .line 72
    .line 73
    new-instance v1, LA1/q;

    .line 74
    .line 75
    const/16 v2, 0xd

    .line 76
    .line 77
    invoke-direct {v1, v2}, LA1/q;-><init>(I)V

    .line 78
    .line 79
    .line 80
    invoke-direct {p1, v0, v1}, Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 81
    .line 82
    .line 83
    return-object p1

    .line 84
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 85
    .line 86
    const/16 v1, 0x1a

    .line 87
    .line 88
    if-lt v0, v1, :cond_3

    .line 89
    .line 90
    const/16 v0, 0x7f6

    .line 91
    .line 92
    :goto_2
    move v4, v0

    .line 93
    goto :goto_3

    .line 94
    :cond_3
    const/16 v0, 0x7d2

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    .line 106
    .line 107
    iget v9, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 108
    .line 109
    iget v10, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 110
    .line 111
    const/16 v12, 0x38

    .line 112
    .line 113
    const/4 v13, -0x2

    .line 114
    move v11, v4

    .line 115
    invoke-direct/range {v8 .. v13}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 116
    .line 117
    .line 118
    const p1, 0x800033

    .line 119
    .line 120
    .line 121
    iput p1, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 122
    .line 123
    iget p1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 124
    .line 125
    neg-int p1, p1

    .line 126
    iput p1, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 127
    .line 128
    const/4 p1, 0x0

    .line 129
    iput p1, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 130
    .line 131
    :try_start_0
    invoke-interface {v5, v6, v8}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    .line 133
    .line 134
    const-string p1, "CfRenderHost: WebView attached (hidden, off-screen)"

    .line 135
    .line 136
    invoke-static {v7, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 140
    .line 141
    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 142
    .line 143
    .line 144
    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 145
    .line 146
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 147
    .line 148
    .line 149
    new-instance p1, LI1/e;

    .line 150
    .line 151
    const/4 v0, 0x1

    .line 152
    invoke-direct {p1, v1, v5, v6, v0}, LI1/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 153
    .line 154
    .line 155
    new-instance v0, Lcom/minhub/gamehub/hub/catalog/g;

    .line 156
    .line 157
    invoke-direct/range {v0 .. v6}, Lcom/minhub/gamehub/hub/catalog/g;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/util/DisplayMetrics;ILandroid/view/WindowManager;Landroid/webkit/WebView;)V

    .line 158
    .line 159
    .line 160
    new-instance v1, Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;

    .line 161
    .line 162
    invoke-direct {v1, p1, v0}, Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .line 164
    .line 165
    return-object v1

    .line 166
    :catch_0
    move-exception v0

    .line 167
    move-object p1, v0

    .line 168
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    const-string v1, "CfRenderHost: overlay attach failed: "

    .line 175
    .line 176
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-static {v7, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    new-instance p1, Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;

    .line 190
    .line 191
    new-instance v0, LA1/q;

    .line 192
    .line 193
    const/16 v1, 0xe

    .line 194
    .line 195
    invoke-direct {v0, v1}, LA1/q;-><init>(I)V

    .line 196
    .line 197
    .line 198
    new-instance v1, LA1/q;

    .line 199
    .line 200
    const/16 v2, 0xf

    .line 201
    .line 202
    invoke-direct {v1, v2}, LA1/q;-><init>(I)V

    .line 203
    .line 204
    .line 205
    invoke-direct {p1, v0, v1}, Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 206
    .line 207
    .line 208
    return-object p1
.end method

.method public final canRender(Landroid/content/Context;)Z
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method
