.class Lorg/tvp/kirikiri2/KR2Activity$ShowTextInputTask;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tvp/kirikiri2/KR2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShowTextInputTask"
.end annotation


# static fields
.field static final HEIGHT_PADDING:I = 0xf


# instance fields
.field public h:I

.field public w:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/tvp/kirikiri2/KR2Activity$ShowTextInputTask;->x:I

    .line 5
    .line 6
    iput p2, p0, Lorg/tvp/kirikiri2/KR2Activity$ShowTextInputTask;->y:I

    .line 7
    .line 8
    iput p3, p0, Lorg/tvp/kirikiri2/KR2Activity$ShowTextInputTask;->w:I

    .line 9
    .line 10
    iput p4, p0, Lorg/tvp/kirikiri2/KR2Activity$ShowTextInputTask;->h:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    .line 3
    iget v1, p0, Lorg/tvp/kirikiri2/KR2Activity$ShowTextInputTask;->w:I

    .line 4
    .line 5
    iget v2, p0, Lorg/tvp/kirikiri2/KR2Activity$ShowTextInputTask;->h:I

    .line 6
    .line 7
    add-int/lit8 v2, v2, 0xf

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 10
    .line 11
    .line 12
    iget v1, p0, Lorg/tvp/kirikiri2/KR2Activity$ShowTextInputTask;->x:I

    .line 13
    .line 14
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 15
    .line 16
    iget v1, p0, Lorg/tvp/kirikiri2/KR2Activity$ShowTextInputTask;->y:I

    .line 17
    .line 18
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 19
    .line 20
    sget-object v1, Lorg/tvp/kirikiri2/KR2Activity;->mTextEdit:Landroid/view/View;

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    new-instance v1, Lorg/tvp/kirikiri2/DummyEdit;

    .line 25
    .line 26
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-direct {v1, v2}, Lorg/tvp/kirikiri2/DummyEdit;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    sput-object v1, Lorg/tvp/kirikiri2/KR2Activity;->mTextEdit:Landroid/view/View;

    .line 34
    .line 35
    sget-object v1, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    .line 36
    .line 37
    invoke-static {v1}, Lorg/tvp/kirikiri2/KR2Activity;->access$000(Lorg/tvp/kirikiri2/KR2Activity;)Lorg/cocos2dx/lib/ResizeLayout;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    sget-object v2, Lorg/tvp/kirikiri2/KR2Activity;->mTextEdit:Landroid/view/View;

    .line 42
    .line 43
    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->mTextEdit:Landroid/view/View;

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->mTextEdit:Landroid/view/View;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v2, "input_method"

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 72
    .line 73
    sget-object v2, Lorg/tvp/kirikiri2/KR2Activity;->mTextEdit:Landroid/view/View;

    .line 74
    .line 75
    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 76
    .line 77
    .line 78
    return-void
.end method
