.class public final LC1/S0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/util/List;I)V
    .locals 0

    .line 1
    iput p3, p0, LC1/S0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LC1/S0;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, LC1/S0;->d:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final a(Landroid/widget/AdapterView;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final b(Landroid/widget/AdapterView;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget p1, p0, LC1/S0;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, LC1/S0;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Landroid/content/Context;

    .line 9
    .line 10
    iget-object p2, p0, LC1/S0;->d:Ljava/util/List;

    .line 11
    .line 12
    check-cast p2, Lkotlin/enums/EnumEntries;

    .line 13
    .line 14
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    check-cast p2, Ly1/F1;

    .line 19
    .line 20
    const-string p3, "context"

    .line 21
    .line 22
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string p3, "mode"

    .line 26
    .line 27
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string p3, "minhub_prefs"

    .line 31
    .line 32
    const/4 p4, 0x0

    .line 33
    invoke-virtual {p1, p3, p4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string p3, "renpy_render_resolution"

    .line 42
    .line 43
    iget-object p2, p2, Ly1/F1;->b:Ljava/lang/String;

    .line 44
    .line 45
    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_0
    iget-object p1, p0, LC1/S0;->c:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 56
    .line 57
    iget-object p2, p0, LC1/S0;->d:Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_1
    iget-object p1, p0, LC1/S0;->c:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p1, Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 70
    .line 71
    iget-object p2, p0, LC1/S0;->d:Ljava/util/List;

    .line 72
    .line 73
    check-cast p2, Ljava/util/ArrayList;

    .line 74
    .line 75
    const/4 p4, 0x1

    .line 76
    sub-int/2addr p3, p4

    .line 77
    invoke-static {p2, p3}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    check-cast p2, Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;

    .line 82
    .line 83
    iput-object p2, p1, Lcom/minhub/gamehub/hub/GameDetailActivity;->o:Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    iget-object p2, p2, Lw1/e;->g:Landroid/widget/Button;

    .line 90
    .line 91
    iget-object p3, p1, Lcom/minhub/gamehub/hub/GameDetailActivity;->o:Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;

    .line 92
    .line 93
    if-eqz p3, :cond_0

    .line 94
    .line 95
    iget-boolean p1, p1, Lcom/minhub/gamehub/hub/GameDetailActivity;->m:Z

    .line 96
    .line 97
    if-nez p1, :cond_0

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    const/4 p4, 0x0

    .line 101
    :goto_0
    invoke-virtual {p2, p4}, Landroid/view/View;->setEnabled(Z)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1

    .line 1
    iget p1, p0, LC1/S0;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    return-void

    .line 7
    :pswitch_1
    iget-object p1, p0, LC1/S0;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p1, Lcom/minhub/gamehub/hub/GameDetailActivity;->o:Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object p1, p1, Lw1/e;->g:Landroid/widget/Button;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
