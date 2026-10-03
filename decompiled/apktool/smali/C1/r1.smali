.class public final LC1/r1;
.super Landroidx/activity/OnBackPressedCallback;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final synthetic a:Lcom/minhub/gamehub/hub/ImageViewerActivity;


# direct methods
.method public constructor <init>(Lcom/minhub/gamehub/hub/ImageViewerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, LC1/r1;->a:Lcom/minhub/gamehub/hub/ImageViewerActivity;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final handleOnBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, LC1/r1;->a:Lcom/minhub/gamehub/hub/ImageViewerActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
