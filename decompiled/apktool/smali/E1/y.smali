.class public final synthetic LE1/y;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:LE1/B;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;LE1/B;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LE1/y;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, LE1/y;->b:LE1/B;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(La1/d;F)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/material/slider/Slider;

    .line 2
    .line 3
    const-string v0, "<unused var>"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object p1, LS1/d;->a:Ljava/util/Set;

    .line 9
    .line 10
    float-to-int p1, p2

    .line 11
    const-string p2, "<this>"

    .line 12
    .line 13
    iget-object v0, p0, LE1/y;->a:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string p2, "minhub_prefs"

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const-string v0, "trans_size"

    .line 30
    .line 31
    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, LE1/y;->b:LE1/B;

    .line 39
    .line 40
    invoke-virtual {p1}, LE1/B;->d()V

    .line 41
    .line 42
    .line 43
    return-void
.end method
