.class public final Lcom/minhub/gamehub/gamepad/ButtonCatalogActivity;
.super LS1/c;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/minhub/gamehub/gamepad/ButtonCatalogActivity;",
        "LS1/c;",
        "<init>",
        "()V",
        "B1/e",
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
        "SMAP\nButtonCatalogActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ButtonCatalogActivity.kt\ncom/minhub/gamehub/gamepad/ButtonCatalogActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,100:1\n1869#2,2:101\n1869#2,2:103\n1193#2,2:107\n1267#2,4:109\n216#3,2:105\n161#4,8:113\n*S KotlinDebug\n*F\n+ 1 ButtonCatalogActivity.kt\ncom/minhub/gamehub/gamepad/ButtonCatalogActivity\n*L\n61#1:101,2\n66#1:103,2\n88#1:107,2\n88#1:109,4\n83#1:105,2\n39#1:113,8\n*E\n"
    }
.end annotation


# static fields
.field public static final synthetic h:I


# instance fields
.field public e:LI1/j;

.field public f:LB1/h;

.field public final g:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 14

    .line 1
    invoke-direct {p0}, LS1/c;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LB1/e;

    .line 5
    .line 6
    const-string v1, "dpad"

    .line 7
    .line 8
    const-string v2, "D-Pad"

    .line 9
    .line 10
    const-string v3, "Arrow keys"

    .line 11
    .line 12
    const-string v4, "#666666"

    .line 13
    .line 14
    invoke-direct {v0, v1, v2, v3, v4}, LB1/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v1, LB1/e;

    .line 18
    .line 19
    const-string v2, "Joystick"

    .line 20
    .line 21
    const-string v3, "Analog \u2192 Arrow keys"

    .line 22
    .line 23
    const-string v5, "joystick"

    .line 24
    .line 25
    invoke-direct {v1, v5, v2, v3, v4}, LB1/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v2, LB1/e;

    .line 29
    .line 30
    const-string v3, "Confirm (Z)"

    .line 31
    .line 32
    const-string v4, "#22C55E"

    .line 33
    .line 34
    const-string v5, "btn_a"

    .line 35
    .line 36
    const-string v6, "A Button"

    .line 37
    .line 38
    invoke-direct {v2, v5, v6, v3, v4}, LB1/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v3, LB1/e;

    .line 42
    .line 43
    const-string v4, "Cancel (X)"

    .line 44
    .line 45
    const-string v5, "#EF4444"

    .line 46
    .line 47
    const-string v6, "btn_b"

    .line 48
    .line 49
    const-string v7, "B Button"

    .line 50
    .line 51
    invoke-direct {v3, v6, v7, v4, v5}, LB1/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance v4, LB1/e;

    .line 55
    .line 56
    const-string v5, "Action (A)"

    .line 57
    .line 58
    const-string v6, "#3B82F6"

    .line 59
    .line 60
    const-string v7, "btn_x"

    .line 61
    .line 62
    const-string v8, "X Button"

    .line 63
    .line 64
    invoke-direct {v4, v7, v8, v5, v6}, LB1/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    new-instance v5, LB1/e;

    .line 68
    .line 69
    const-string v6, "Action (S)"

    .line 70
    .line 71
    const-string v7, "#F59E0B"

    .line 72
    .line 73
    const-string v8, "btn_y"

    .line 74
    .line 75
    const-string v9, "Y Button"

    .line 76
    .line 77
    invoke-direct {v5, v8, v9, v6, v7}, LB1/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    new-instance v6, LB1/e;

    .line 81
    .line 82
    const-string v7, "btn_lb"

    .line 83
    .line 84
    const-string v8, "LB"

    .line 85
    .line 86
    const-string v9, "Shoulder (Q)"

    .line 87
    .line 88
    const-string v10, "#888888"

    .line 89
    .line 90
    invoke-direct {v6, v7, v8, v9, v10}, LB1/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    new-instance v7, LB1/e;

    .line 94
    .line 95
    const-string v8, "RB"

    .line 96
    .line 97
    const-string v9, "Shoulder (W)"

    .line 98
    .line 99
    const-string v11, "btn_rb"

    .line 100
    .line 101
    invoke-direct {v7, v11, v8, v9, v10}, LB1/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    new-instance v8, LB1/e;

    .line 105
    .line 106
    const-string v9, "Enter"

    .line 107
    .line 108
    const-string v11, "Keyboard Enter"

    .line 109
    .line 110
    const-string v12, "btn_select"

    .line 111
    .line 112
    invoke-direct {v8, v12, v9, v11, v10}, LB1/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    new-instance v9, LB1/e;

    .line 116
    .line 117
    const-string v11, "Esc"

    .line 118
    .line 119
    const-string v12, "Keyboard Escape"

    .line 120
    .line 121
    const-string v13, "btn_start"

    .line 122
    .line 123
    invoke-direct {v9, v13, v11, v12, v10}, LB1/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    filled-new-array/range {v0 .. v9}, [LB1/e;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    iput-object v0, p0, Lcom/minhub/gamehub/gamepad/ButtonCatalogActivity;->g:Ljava/util/List;

    .line 135
    .line 136
    return-void
.end method


# virtual methods
.method public final m()Ljava/util/LinkedHashMap;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/minhub/gamehub/gamepad/ButtonCatalogActivity;->g:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, LB1/e;

    .line 23
    .line 24
    iget-object v3, v3, LB1/e;->a:Ljava/lang/String;

    .line 25
    .line 26
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 33
    .line 34
    sget-object v3, LS1/d;->a:Ljava/util/Set;

    .line 35
    .line 36
    const-string v3, "<this>"

    .line 37
    .line 38
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v3, "minhub_prefs"

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const-string v4, "button_visibility"

    .line 49
    .line 50
    const-string v5, "{}"

    .line 51
    .line 52
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    if-nez v3, :cond_1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    move-object v5, v3

    .line 60
    :goto_1
    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_3

    .line 72
    .line 73
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, LB1/e;

    .line 78
    .line 79
    iget-object v4, v3, LB1/e;->a:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_2

    .line 86
    .line 87
    iget-object v3, v3, LB1/e;->a:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :catch_0
    :cond_3
    return-object v0
.end method

.method public final n(Ljava/util/Map;)V
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/util/Map$Entry;

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/String;

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    sget-object p1, LS1/d;->a:Ljava/util/Set;

    .line 47
    .line 48
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v0, "toString(...)"

    .line 53
    .line 54
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v0, "<this>"

    .line 58
    .line 59
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string v0, "v"

    .line 63
    .line 64
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v0, "minhub_prefs"

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v1, "button_visibility"

    .line 79
    .line 80
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const v0, 0x7f0c001e

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const v0, 0x7f090079

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    move-object v5, v1

    .line 25
    check-cast v5, Landroid/widget/ImageButton;

    .line 26
    .line 27
    if-eqz v5, :cond_6

    .line 28
    .line 29
    const v0, 0x7f0900d1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    move-object v6, v1

    .line 37
    check-cast v6, Landroid/widget/Button;

    .line 38
    .line 39
    if-eqz v6, :cond_6

    .line 40
    .line 41
    const v0, 0x7f0901c3

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    move-object v7, v1

    .line 49
    check-cast v7, Landroid/widget/LinearLayout;

    .line 50
    .line 51
    if-eqz v7, :cond_6

    .line 52
    .line 53
    const v0, 0x7f09026d

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    move-object v8, v1

    .line 61
    check-cast v8, Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    .line 63
    if-eqz v8, :cond_6

    .line 64
    .line 65
    new-instance v3, LI1/j;

    .line 66
    .line 67
    move-object v4, p1

    .line 68
    check-cast v4, Landroid/widget/LinearLayout;

    .line 69
    .line 70
    const/4 v9, 0x1

    .line 71
    invoke-direct/range {v3 .. v9}, LI1/j;-><init>(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 72
    .line 73
    .line 74
    const-string p1, "inflate(...)"

    .line 75
    .line 76
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iput-object v3, p0, Lcom/minhub/gamehub/gamepad/ButtonCatalogActivity;->e:LI1/j;

    .line 80
    .line 81
    invoke-virtual {p0, v4}, Le/j;->setContentView(Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/minhub/gamehub/gamepad/ButtonCatalogActivity;->e:LI1/j;

    .line 85
    .line 86
    const-string v0, "b"

    .line 87
    .line 88
    if-nez p1, :cond_0

    .line 89
    .line 90
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    move-object p1, v2

    .line 94
    :cond_0
    iget-object p1, p1, LI1/j;->b:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast p1, Landroid/widget/LinearLayout;

    .line 97
    .line 98
    new-instance v1, LB1/b;

    .line 99
    .line 100
    const/4 v3, 0x0

    .line 101
    invoke-direct {v1, v3, p0}, LB1/b;-><init>(ILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcom/minhub/gamehub/gamepad/ButtonCatalogActivity;->e:LI1/j;

    .line 108
    .line 109
    if-nez p1, :cond_1

    .line 110
    .line 111
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    move-object p1, v2

    .line 115
    :cond_1
    iget-object p1, p1, LI1/j;->c:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast p1, Landroid/widget/ImageButton;

    .line 118
    .line 119
    new-instance v1, LB1/c;

    .line 120
    .line 121
    const/4 v3, 0x0

    .line 122
    invoke-direct {v1, p0, v3}, LB1/c;-><init>(Lcom/minhub/gamehub/gamepad/ButtonCatalogActivity;I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Lcom/minhub/gamehub/gamepad/ButtonCatalogActivity;->e:LI1/j;

    .line 129
    .line 130
    if-nez p1, :cond_2

    .line 131
    .line 132
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    move-object p1, v2

    .line 136
    :cond_2
    iget-object p1, p1, LI1/j;->d:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast p1, Landroid/widget/Button;

    .line 139
    .line 140
    new-instance v1, LB1/c;

    .line 141
    .line 142
    const/4 v3, 0x1

    .line 143
    invoke-direct {v1, p0, v3}, LB1/c;-><init>(Lcom/minhub/gamehub/gamepad/ButtonCatalogActivity;I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/minhub/gamehub/gamepad/ButtonCatalogActivity;->m()Ljava/util/LinkedHashMap;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    new-instance v1, LB1/h;

    .line 154
    .line 155
    new-instance v3, LB1/d;

    .line 156
    .line 157
    const/4 v4, 0x0

    .line 158
    invoke-direct {v3, p0, v4}, LB1/d;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 159
    .line 160
    .line 161
    iget-object v4, p0, Lcom/minhub/gamehub/gamepad/ButtonCatalogActivity;->g:Ljava/util/List;

    .line 162
    .line 163
    invoke-direct {v1, v4, p1, v3}, LB1/h;-><init>(Ljava/util/List;Ljava/util/LinkedHashMap;LB1/d;)V

    .line 164
    .line 165
    .line 166
    iput-object v1, p0, Lcom/minhub/gamehub/gamepad/ButtonCatalogActivity;->f:LB1/h;

    .line 167
    .line 168
    iget-object p1, p0, Lcom/minhub/gamehub/gamepad/ButtonCatalogActivity;->e:LI1/j;

    .line 169
    .line 170
    if-nez p1, :cond_3

    .line 171
    .line 172
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    move-object p1, v2

    .line 176
    :cond_3
    iget-object p1, p1, LI1/j;->f:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 179
    .line 180
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 181
    .line 182
    const/4 v3, 0x1

    .line 183
    invoke-direct {v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(LP/g0;)V

    .line 187
    .line 188
    .line 189
    iget-object p1, p0, Lcom/minhub/gamehub/gamepad/ButtonCatalogActivity;->e:LI1/j;

    .line 190
    .line 191
    if-nez p1, :cond_4

    .line 192
    .line 193
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    move-object p1, v2

    .line 197
    :cond_4
    iget-object p1, p1, LI1/j;->f:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 200
    .line 201
    iget-object v0, p0, Lcom/minhub/gamehub/gamepad/ButtonCatalogActivity;->f:LB1/h;

    .line 202
    .line 203
    if-nez v0, :cond_5

    .line 204
    .line 205
    const-string v0, "adapter"

    .line 206
    .line 207
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    goto :goto_0

    .line 211
    :cond_5
    move-object v2, v0

    .line 212
    :goto_0
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(LP/W;)V

    .line 213
    .line 214
    .line 215
    return-void

    .line 216
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    new-instance v0, Ljava/lang/NullPointerException;

    .line 225
    .line 226
    const-string v1, "Missing required view with ID: "

    .line 227
    .line 228
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw v0
.end method
