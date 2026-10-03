.class public final synthetic Landroidx/activity/c;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroidx/activity/contextaware/OnContextAvailableListener;


# instance fields
.field public final synthetic a:Landroidx/activity/ComponentActivity;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/ComponentActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/activity/c;->a:Landroidx/activity/ComponentActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onContextAvailable(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/c;->a:Landroidx/activity/ComponentActivity;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/activity/ComponentActivity;->b(Landroidx/activity/ComponentActivity;Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
