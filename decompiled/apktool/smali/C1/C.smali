.class public final synthetic LC1/C;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p3, p0, LC1/C;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LC1/C;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iput p2, p0, LC1/C;->c:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, LC1/C;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LC1/C;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/core/content/res/ResourcesCompat$FontCallback;

    .line 9
    .line 10
    iget v1, p0, LC1/C;->c:I

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->b(Landroidx/core/content/res/ResourcesCompat$FontCallback;I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, LC1/C;->d:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 19
    .line 20
    iget-object v1, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroid/view/View;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    iget v3, p0, LC1/C;->c:I

    .line 32
    .line 33
    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->y(Landroid/view/View;IZ)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void

    .line 37
    :pswitch_1
    iget-object v0, p0, LC1/C;->d:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 40
    .line 41
    iget v1, p0, LC1/C;->c:I

    .line 42
    .line 43
    mul-int/lit8 v1, v1, 0x37

    .line 44
    .line 45
    div-int/lit8 v1, v1, 0x64

    .line 46
    .line 47
    add-int/lit8 v1, v1, 0x28

    .line 48
    .line 49
    const/16 v2, 0x29

    .line 50
    .line 51
    const/16 v3, 0x5f

    .line 52
    .line 53
    invoke-static {v1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {v0, v1}, Lcom/minhub/gamehub/hub/AddGameActivity;->D(I)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
