.class public final LC1/q1;
.super LX/j;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Landroid/widget/LinearLayout;

.field public final synthetic c:Landroid/widget/TextView;

.field public final synthetic d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(ZLandroid/widget/LinearLayout;Landroid/widget/TextView;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, LC1/q1;->a:Z

    .line 5
    .line 6
    iput-object p2, p0, LC1/q1;->b:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    iput-object p3, p0, LC1/q1;->c:Landroid/widget/TextView;

    .line 9
    .line 10
    iput-object p4, p0, LC1/q1;->d:Ljava/util/ArrayList;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final c(I)V
    .locals 4

    .line 1
    iget-object v0, p0, LC1/q1;->c:Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v1, p0, LC1/q1;->d:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-boolean v2, p0, LC1/q1;->a:Z

    .line 6
    .line 7
    iget-object v3, p0, LC1/q1;->b:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    invoke-static {v2, v3, v0, v1, p1}, Lcom/minhub/gamehub/hub/ImageViewerActivity;->m(ZLandroid/widget/LinearLayout;Landroid/widget/TextView;Ljava/util/ArrayList;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
