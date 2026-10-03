.class public Lcom/google/android/material/switchmaterial/SwitchMaterial;
.super Lk/U0;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final b0:[[I


# instance fields
.field public final U:LQ0/a;

.field public V:Landroid/content/res/ColorStateList;

.field public W:Landroid/content/res/ColorStateList;

.field public a0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const v0, 0x101009e

    .line 2
    .line 3
    .line 4
    const v1, 0x10100a0

    .line 5
    .line 6
    .line 7
    filled-new-array {v0, v1}, [I

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const v3, -0x10100a0

    .line 12
    .line 13
    .line 14
    filled-new-array {v0, v3}, [I

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const v4, -0x101009e

    .line 19
    .line 20
    .line 21
    filled-new-array {v4, v1}, [I

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    filled-new-array {v4, v3}, [I

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    filled-new-array {v2, v0, v1, v3}, [[I

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->b0:[[I

    .line 34
    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 1
    const v0, 0x7f130426

    .line 2
    .line 3
    .line 4
    const v4, 0x7f0403dc

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2, v4, v0}, Lf1/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, p1, p2}, Lk/U0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance p1, LQ0/a;

    .line 19
    .line 20
    invoke-direct {p1, v1}, LQ0/a;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->U:LQ0/a;

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    new-array v6, p1, [I

    .line 27
    .line 28
    const v5, 0x7f130426

    .line 29
    .line 30
    .line 31
    invoke-static {v1, p2, v4, v5}, LR0/p;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    .line 33
    .line 34
    sget-object v3, LA0/a;->I:[I

    .line 35
    .line 36
    move-object v2, p2

    .line 37
    invoke-static/range {v1 .. v6}, LR0/p;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p2, p1, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iput-boolean p1, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->a0:Z

    .line 49
    .line 50
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private getMaterialThemeColorsThumbTintList()Landroid/content/res/ColorStateList;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->V:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    const v0, 0x7f04010e

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Lcom/bumptech/glide/c;->m(Landroid/view/View;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const v1, 0x7f0400e5

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v1}, Lcom/bumptech/glide/c;->m(Landroid/view/View;I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const v3, 0x7f070307

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget-object v3, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->U:LQ0/a;

    .line 31
    .line 32
    iget-boolean v4, v3, LQ0/a;->a:Z

    .line 33
    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const/4 v5, 0x0

    .line 41
    :goto_0
    instance-of v6, v4, Landroid/view/View;

    .line 42
    .line 43
    if-eqz v6, :cond_0

    .line 44
    .line 45
    move-object v6, v4

    .line 46
    check-cast v6, Landroid/view/View;

    .line 47
    .line 48
    invoke-static {v6}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    add-float/2addr v5, v6

    .line 53
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    add-float/2addr v2, v5

    .line 59
    :cond_1
    invoke-virtual {v3, v0, v2}, LQ0/a;->a(IF)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    const/high16 v3, 0x3f800000    # 1.0f

    .line 64
    .line 65
    invoke-static {v0, v3, v1}, Lcom/bumptech/glide/c;->w(IFI)I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    const v4, 0x3ec28f5c    # 0.38f

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v4, v1}, Lcom/bumptech/glide/c;->w(IFI)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    filled-new-array {v3, v2, v0, v2}, [I

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    new-instance v1, Landroid/content/res/ColorStateList;

    .line 81
    .line 82
    sget-object v2, Lcom/google/android/material/switchmaterial/SwitchMaterial;->b0:[[I

    .line 83
    .line 84
    invoke-direct {v1, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 85
    .line 86
    .line 87
    iput-object v1, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->V:Landroid/content/res/ColorStateList;

    .line 88
    .line 89
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->V:Landroid/content/res/ColorStateList;

    .line 90
    .line 91
    return-object v0
.end method

.method private getMaterialThemeColorsTrackTintList()Landroid/content/res/ColorStateList;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->W:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const v0, 0x7f04010e

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Lcom/bumptech/glide/c;->m(Landroid/view/View;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const v1, 0x7f0400e5

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v1}, Lcom/bumptech/glide/c;->m(Landroid/view/View;I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const v2, 0x7f0400f8

    .line 20
    .line 21
    .line 22
    invoke-static {p0, v2}, Lcom/bumptech/glide/c;->m(Landroid/view/View;I)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const v3, 0x3f0a3d71    # 0.54f

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v3, v1}, Lcom/bumptech/glide/c;->w(IFI)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const v4, 0x3ea3d70a    # 0.32f

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v4, v2}, Lcom/bumptech/glide/c;->w(IFI)I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    const v5, 0x3df5c28f    # 0.12f

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v5, v1}, Lcom/bumptech/glide/c;->w(IFI)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-static {v0, v5, v2}, Lcom/bumptech/glide/c;->w(IFI)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    filled-new-array {v3, v4, v1, v0}, [I

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-instance v1, Landroid/content/res/ColorStateList;

    .line 56
    .line 57
    sget-object v2, Lcom/google/android/material/switchmaterial/SwitchMaterial;->b0:[[I

    .line 58
    .line 59
    invoke-direct {v1, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 60
    .line 61
    .line 62
    iput-object v1, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->W:Landroid/content/res/ColorStateList;

    .line 63
    .line 64
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->W:Landroid/content/res/ColorStateList;

    .line 65
    .line 66
    return-object v0
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->a0:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lk/U0;->getThumbTintList()Landroid/content/res/ColorStateList;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->getMaterialThemeColorsThumbTintList()Landroid/content/res/ColorStateList;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lk/U0;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->a0:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lk/U0;->getTrackTintList()Landroid/content/res/ColorStateList;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->getMaterialThemeColorsTrackTintList()Landroid/content/res/ColorStateList;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, v0}, Lk/U0;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public setUseMaterialThemeColors(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->a0:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->getMaterialThemeColorsThumbTintList()Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lk/U0;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->getMaterialThemeColorsTrackTintList()Landroid/content/res/ColorStateList;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Lk/U0;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1}, Lk/U0;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lk/U0;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
