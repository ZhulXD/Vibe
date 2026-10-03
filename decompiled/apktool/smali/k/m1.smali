.class public final Lk/m1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Ljava/lang/Object;

.field public final c:Landroid/view/View;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lk/m1;->d:Ljava/lang/Object;

    .line 11
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lk/m1;->e:Ljava/lang/Object;

    const/4 v1, 0x2

    .line 12
    new-array v2, v1, [I

    iput-object v2, p0, Lk/m1;->f:Ljava/lang/Object;

    .line 13
    new-array v1, v1, [I

    iput-object v1, p0, Lk/m1;->g:Ljava/lang/Object;

    .line 14
    iput-object p1, p0, Lk/m1;->b:Ljava/lang/Object;

    .line 15
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c001b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lk/m1;->c:Landroid/view/View;

    const v2, 0x7f090202

    .line 16
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lk/m1;->a:Landroid/widget/TextView;

    .line 17
    const-class v1, Lk/m1;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const/16 p1, 0x3ea

    .line 19
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 p1, -0x2

    .line 20
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 21
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 p1, -0x3

    .line 22
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const p1, 0x7f130004

    .line 23
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 p1, 0x18

    .line 24
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/core/widget/NestedScrollView;Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p4, p0, Lk/m1;->b:Ljava/lang/Object;

    .line 27
    iput-object p9, p0, Lk/m1;->c:Landroid/view/View;

    .line 28
    iput-object p10, p0, Lk/m1;->d:Ljava/lang/Object;

    .line 29
    iput-object p11, p0, Lk/m1;->a:Landroid/widget/TextView;

    .line 30
    iput-object p12, p0, Lk/m1;->e:Ljava/lang/Object;

    .line 31
    iput-object p13, p0, Lk/m1;->f:Ljava/lang/Object;

    .line 32
    iput-object p14, p0, Lk/m1;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/minhub/gamehub/keyboard/VirtualKeyboardView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk/m1;->b:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lk/m1;->c:Landroid/view/View;

    .line 4
    iput-object p3, p0, Lk/m1;->d:Ljava/lang/Object;

    .line 5
    iput-object p4, p0, Lk/m1;->e:Ljava/lang/Object;

    .line 6
    iput-object p5, p0, Lk/m1;->f:Ljava/lang/Object;

    .line 7
    iput-object p6, p0, Lk/m1;->a:Landroid/widget/TextView;

    .line 8
    iput-object p7, p0, Lk/m1;->g:Ljava/lang/Object;

    return-void
.end method
