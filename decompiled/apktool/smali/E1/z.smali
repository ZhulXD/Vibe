.class public final synthetic LE1/z;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:LE1/B;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;LE1/B;I)V
    .locals 0

    .line 1
    iput p4, p0, LE1/z;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LE1/z;->c:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p2, p0, LE1/z;->d:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p3, p0, LE1/z;->e:LE1/B;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget p1, p0, LE1/z;->b:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "minhub_prefs"

    .line 5
    .line 6
    const-string v2, "v"

    .line 7
    .line 8
    const-string v3, "<this>"

    .line 9
    .line 10
    iget-object v4, p0, LE1/z;->e:LE1/B;

    .line 11
    .line 12
    iget-object v5, p0, LE1/z;->d:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v6, p0, LE1/z;->c:Landroid/content/Context;

    .line 15
    .line 16
    packed-switch p1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    sget-object p1, LS1/d;->a:Ljava/util/Set;

    .line 20
    .line 21
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v6, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v0, "trans_style"

    .line 36
    .line 37
    invoke-interface {p1, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, LE1/B;->c()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, LE1/B;->d()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_0
    sget-object p1, LS1/d;->a:Ljava/util/Set;

    .line 52
    .line 53
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const-string v0, "trans_color"

    .line 68
    .line 69
    invoke-interface {p1, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, LE1/B;->b()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4}, LE1/B;->d()V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
