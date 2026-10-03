.class public final synthetic Landroidx/activity/d;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic b:Landroidx/activity/OnBackPressedDispatcher;

.field public final synthetic c:Landroidx/activity/ComponentActivity;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/ComponentActivity;Landroidx/activity/OnBackPressedDispatcher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/activity/d;->b:Landroidx/activity/OnBackPressedDispatcher;

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/activity/d;->c:Landroidx/activity/ComponentActivity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/activity/d;->b:Landroidx/activity/OnBackPressedDispatcher;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/activity/d;->c:Landroidx/activity/ComponentActivity;

    .line 4
    .line 5
    invoke-static {v0, v1, p1, p2}, Landroidx/activity/ComponentActivity;->a(Landroidx/activity/OnBackPressedDispatcher;Landroidx/activity/ComponentActivity;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
