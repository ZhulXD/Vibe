.class public Lorg/cocos2dx/lib/Cocos2dxEditBox;
.super Landroid/widget/EditText;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final kEndActionNext:I = 0x1

.field public static final kEndActionReturn:I = 0x3

.field public static final kEndActionUnknown:I = 0x0

.field private static final kTextHorizontalAlignmentCenter:I = 0x1

.field private static final kTextHorizontalAlignmentLeft:I = 0x0

.field private static final kTextHorizontalAlignmentRight:I = 0x2

.field private static final kTextVerticalAlignmentBottom:I = 0x2

.field private static final kTextVerticalAlignmentCenter:I = 0x1

.field private static final kTextVerticalAlignmentTop:I


# instance fields
.field private changedTextProgrammatically:Ljava/lang/Boolean;

.field endAction:I

.field private final kEditBoxInputFlagInitialCapsAllCharacters:I

.field private final kEditBoxInputFlagInitialCapsSentence:I

.field private final kEditBoxInputFlagInitialCapsWord:I

.field private final kEditBoxInputFlagLowercaseAllCharacters:I

.field private final kEditBoxInputFlagPassword:I

.field private final kEditBoxInputFlagSensitive:I

.field private final kEditBoxInputModeAny:I

.field private final kEditBoxInputModeDecimal:I

.field private final kEditBoxInputModeEmailAddr:I

.field private final kEditBoxInputModeNumeric:I

.field private final kEditBoxInputModePhoneNumber:I

.field private final kEditBoxInputModeSingleLine:I

.field private final kEditBoxInputModeUrl:I

.field private final kKeyboardReturnTypeDefault:I

.field private final kKeyboardReturnTypeDone:I

.field private final kKeyboardReturnTypeGo:I

.field private final kKeyboardReturnTypeNext:I

.field private final kKeyboardReturnTypeSearch:I

.field private final kKeyboardReturnTypeSend:I

.field private mInputFlagConstraints:I

.field private mInputModeConstraints:I

.field private mMaxLength:I

.field private mScaleX:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputModeAny:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputModeEmailAddr:I

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputModeNumeric:I

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputModePhoneNumber:I

    .line 15
    .line 16
    const/4 v3, 0x4

    .line 17
    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputModeUrl:I

    .line 18
    .line 19
    const/4 v4, 0x5

    .line 20
    iput v4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputModeDecimal:I

    .line 21
    .line 22
    const/4 v5, 0x6

    .line 23
    iput v5, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputModeSingleLine:I

    .line 24
    .line 25
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputFlagPassword:I

    .line 26
    .line 27
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputFlagSensitive:I

    .line 28
    .line 29
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputFlagInitialCapsWord:I

    .line 30
    .line 31
    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputFlagInitialCapsSentence:I

    .line 32
    .line 33
    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputFlagInitialCapsAllCharacters:I

    .line 34
    .line 35
    iput v4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputFlagLowercaseAllCharacters:I

    .line 36
    .line 37
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kKeyboardReturnTypeDefault:I

    .line 38
    .line 39
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kKeyboardReturnTypeDone:I

    .line 40
    .line 41
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kKeyboardReturnTypeSend:I

    .line 42
    .line 43
    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kKeyboardReturnTypeSearch:I

    .line 44
    .line 45
    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kKeyboardReturnTypeGo:I

    .line 46
    .line 47
    iput v4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kKeyboardReturnTypeNext:I

    .line 48
    .line 49
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 50
    .line 51
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->changedTextProgrammatically:Ljava/lang/Boolean;

    .line 52
    .line 53
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->endAction:I

    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public getChangedTextProgrammatically()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->changedTextProgrammatically:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOpenGLViewScaleX()F
    .locals 1

    .line 1
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mScaleX:F

    .line 2
    .line 3
    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 14
    .line 15
    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLSurfaceView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    return p1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public setChangedTextProgrammatically(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->changedTextProgrammatically:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setEditBoxViewRect(IIII)V
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 8
    .line 9
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 10
    .line 11
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 12
    .line 13
    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 14
    .line 15
    const/16 p1, 0x33

    .line 16
    .line 17
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public setInputFlag(I)V
    .locals 2

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_4

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq p1, v1, :cond_3

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    if-eq p1, v1, :cond_2

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    if-eq p1, v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x5

    .line 16
    if-eq p1, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputFlagConstraints:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/16 p1, 0x1000

    .line 23
    .line 24
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputFlagConstraints:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const/16 p1, 0x4000

    .line 28
    .line 29
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputFlagConstraints:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_3
    const/16 p1, 0x2000

    .line 33
    .line 34
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputFlagConstraints:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_4
    const/high16 p1, 0x80000

    .line 38
    .line 39
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputFlagConstraints:I

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_5
    const/16 p1, 0x81

    .line 43
    .line 44
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputFlagConstraints:I

    .line 45
    .line 46
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 49
    .line 50
    .line 51
    new-instance p1, Landroid/text/method/PasswordTransformationMethod;

    .line 52
    .line 53
    invoke-direct {p1}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    iget p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputFlagConstraints:I

    .line 60
    .line 61
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    .line 62
    .line 63
    or-int/2addr p1, v0

    .line 64
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setInputType(I)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public setInputMode(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setTextHorizontalAlignment(I)V

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setTextVerticalAlignment(I)V

    .line 7
    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_0
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :pswitch_1
    const/16 p1, 0x3002

    .line 17
    .line 18
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :pswitch_2
    const/16 p1, 0x11

    .line 22
    .line 23
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :pswitch_3
    const/4 p1, 0x3

    .line 27
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :pswitch_4
    const/16 p1, 0x1002

    .line 31
    .line 32
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :pswitch_5
    const/16 p1, 0x21

    .line 36
    .line 37
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :pswitch_6
    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setTextVerticalAlignment(I)V

    .line 41
    .line 42
    .line 43
    const p1, 0x20001

    .line 44
    .line 45
    .line 46
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    .line 47
    .line 48
    :goto_0
    iget p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    .line 49
    .line 50
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputFlagConstraints:I

    .line 51
    .line 52
    or-int/2addr p1, v0

    .line 53
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setInputType(I)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMaxLength(I)V
    .locals 2

    .line 1
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mMaxLength:I

    .line 2
    .line 3
    new-instance p1, Landroid/text/InputFilter$LengthFilter;

    .line 4
    .line 5
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mMaxLength:I

    .line 6
    .line 7
    invoke-direct {p1, v0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    new-array v0, v0, [Landroid/text/InputFilter;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    aput-object p1, v0, v1

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public setMultilineEnabled(Z)V
    .locals 1

    .line 1
    iget p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    .line 2
    .line 3
    const/high16 v0, 0x20000

    .line 4
    .line 5
    or-int/2addr p1, v0

    .line 6
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    .line 7
    .line 8
    return-void
.end method

.method public setOpenGLViewScaleX(F)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mScaleX:F

    .line 2
    .line 3
    return-void
.end method

.method public setReturnType(I)V
    .locals 2

    .line 1
    const v0, 0x10000001

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_5

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-eq p1, v1, :cond_4

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-eq p1, v1, :cond_3

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    if-eq p1, v1, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x4

    .line 16
    if-eq p1, v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x5

    .line 19
    if-eq p1, v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    const p1, 0x10000005

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    const p1, 0x10000002

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    const p1, 0x10000003

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_3
    const p1, 0x10000004

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_4
    const p1, 0x10000006

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_5
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public setTextHorizontalAlignment(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq p1, v1, :cond_2

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    if-eq p1, v1, :cond_1

    .line 12
    .line 13
    :cond_0
    and-int/lit8 p1, v0, -0x6

    .line 14
    .line 15
    or-int/lit8 p1, p1, 0x3

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    and-int/lit8 p1, v0, -0x4

    .line 19
    .line 20
    or-int/lit8 p1, p1, 0x5

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    and-int/lit8 p1, v0, -0x8

    .line 24
    .line 25
    or-int/2addr p1, v1

    .line 26
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public setTextVerticalAlignment(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mScaleX:F

    .line 6
    .line 7
    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->getPadding(F)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-eq p1, v3, :cond_1

    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    if-eq p1, v3, :cond_0

    .line 19
    .line 20
    div-int/lit8 p1, v1, 0x2

    .line 21
    .line 22
    invoke-virtual {p0, v1, v2, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 23
    .line 24
    .line 25
    :goto_0
    and-int/lit8 p1, v0, -0x71

    .line 26
    .line 27
    or-int/lit8 p1, p1, 0x10

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    and-int/lit8 p1, v0, -0x31

    .line 31
    .line 32
    or-int/lit8 p1, p1, 0x50

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    div-int/lit8 p1, v1, 0x2

    .line 36
    .line 37
    invoke-virtual {p0, v1, v2, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    mul-int/lit8 p1, v1, 0x3

    .line 42
    .line 43
    div-int/lit8 p1, p1, 0x4

    .line 44
    .line 45
    invoke-virtual {p0, v1, p1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 46
    .line 47
    .line 48
    and-int/lit8 p1, v0, -0x51

    .line 49
    .line 50
    or-int/lit8 p1, p1, 0x30

    .line 51
    .line 52
    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 53
    .line 54
    .line 55
    return-void
.end method
