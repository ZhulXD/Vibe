.class public Lorg/godotengine/godot/input/GodotTextInputWrapper;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "GodotTextInputWrapper"


# instance fields
.field private final mEdit:Lorg/godotengine/godot/input/GodotEditText;

.field private mHasSelection:Z

.field private mOriginText:Ljava/lang/String;

.field private final mRenderView:Lorg/godotengine/godot/GodotRenderView;


# direct methods
.method public constructor <init>(Lorg/godotengine/godot/GodotRenderView;Lorg/godotengine/godot/input/GodotEditText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/godotengine/godot/input/GodotTextInputWrapper;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/godotengine/godot/input/GodotTextInputWrapper;->mEdit:Lorg/godotengine/godot/input/GodotEditText;

    .line 7
    .line 8
    return-void
.end method

.method private isFullScreenEdit()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotTextInputWrapper;->mEdit:Lorg/godotengine/godot/input/GodotEditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "input_method"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    .line 1
    const/4 p1, 0x0

    .line 2
    move p2, p1

    .line 3
    :goto_0
    if-ge p2, p3, :cond_1

    .line 4
    .line 5
    iget-object p4, p0, Lorg/godotengine/godot/input/GodotTextInputWrapper;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    .line 6
    .line 7
    invoke-interface {p4}, Lorg/godotengine/godot/GodotRenderView;->getInputHandler()Lorg/godotengine/godot/input/GodotInputHandler;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v4, 0x1

    .line 12
    const/4 v5, 0x0

    .line 13
    const/16 v1, 0x43

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual/range {v0 .. v5}, Lorg/godotengine/godot/input/GodotInputHandler;->handleKeyEvent(IIIZZ)V

    .line 18
    .line 19
    .line 20
    iget-object p4, p0, Lorg/godotengine/godot/input/GodotTextInputWrapper;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    .line 21
    .line 22
    invoke-interface {p4}, Lorg/godotengine/godot/GodotRenderView;->getInputHandler()Lorg/godotengine/godot/input/GodotInputHandler;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-virtual/range {v0 .. v5}, Lorg/godotengine/godot/input/GodotInputHandler;->handleKeyEvent(IIIZZ)V

    .line 28
    .line 29
    .line 30
    iget-boolean p4, p0, Lorg/godotengine/godot/input/GodotTextInputWrapper;->mHasSelection:Z

    .line 31
    .line 32
    if-eqz p4, :cond_0

    .line 33
    .line 34
    iput-boolean p1, p0, Lorg/godotengine/godot/input/GodotTextInputWrapper;->mHasSelection:Z

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotTextInputWrapper;->mEdit:Lorg/godotengine/godot/input/GodotEditText;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lorg/godotengine/godot/input/GodotTextInputWrapper;->isFullScreenEdit()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    move p3, v1

    .line 21
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-ge p3, v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1, p3}, Ljava/lang/String;->codePointAt(I)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotTextInputWrapper;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    .line 32
    .line 33
    invoke-interface {v0}, Lorg/godotengine/godot/GodotRenderView;->getInputHandler()Lorg/godotengine/godot/input/GodotInputHandler;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const/4 v6, 0x1

    .line 38
    const/4 v7, 0x0

    .line 39
    const/4 v3, 0x0

    .line 40
    const/4 v5, 0x0

    .line 41
    invoke-virtual/range {v2 .. v7}, Lorg/godotengine/godot/input/GodotInputHandler;->handleKeyEvent(IIIZZ)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotTextInputWrapper;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    .line 45
    .line 46
    invoke-interface {v0}, Lorg/godotengine/godot/GodotRenderView;->getInputHandler()Lorg/godotengine/godot/input/GodotInputHandler;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const/4 v6, 0x0

    .line 51
    invoke-virtual/range {v2 .. v7}, Lorg/godotengine/godot/input/GodotInputHandler;->handleKeyEvent(IIIZZ)V

    .line 52
    .line 53
    .line 54
    add-int/lit8 p3, p3, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/4 p1, 0x6

    .line 58
    if-ne p2, p1, :cond_1

    .line 59
    .line 60
    iget-object p1, p0, Lorg/godotengine/godot/input/GodotTextInputWrapper;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    .line 61
    .line 62
    invoke-interface {p1}, Lorg/godotengine/godot/GodotRenderView;->getInputHandler()Lorg/godotengine/godot/input/GodotInputHandler;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const/4 v4, 0x1

    .line 67
    const/4 v5, 0x0

    .line 68
    const/16 v1, 0x42

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    const/4 v3, 0x0

    .line 72
    invoke-virtual/range {v0 .. v5}, Lorg/godotengine/godot/input/GodotInputHandler;->handleKeyEvent(IIIZZ)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lorg/godotengine/godot/input/GodotTextInputWrapper;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    .line 76
    .line 77
    invoke-interface {p1}, Lorg/godotengine/godot/GodotRenderView;->getInputHandler()Lorg/godotengine/godot/input/GodotInputHandler;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const/4 v4, 0x0

    .line 82
    invoke-virtual/range {v0 .. v5}, Lorg/godotengine/godot/input/GodotInputHandler;->handleKeyEvent(IIIZZ)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lorg/godotengine/godot/input/GodotTextInputWrapper;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    .line 86
    .line 87
    invoke-interface {p1}, Lorg/godotengine/godot/GodotRenderView;->getView()Landroid/view/SurfaceView;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 92
    .line 93
    .line 94
    const/4 p1, 0x1

    .line 95
    return p1

    .line 96
    :cond_1
    return v1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    .line 1
    new-array p3, p4, [I

    .line 2
    .line 3
    move v0, p2

    .line 4
    :goto_0
    add-int v1, p2, p4

    .line 5
    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    sub-int v1, v0, p2

    .line 9
    .line 10
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    aput v2, p3, v1

    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_1
    if-ge p1, p4, :cond_2

    .line 21
    .line 22
    aget v2, p3, p1

    .line 23
    .line 24
    const/16 p2, 0xa

    .line 25
    .line 26
    if-ne v2, p2, :cond_1

    .line 27
    .line 28
    iget-object p2, p0, Lorg/godotengine/godot/input/GodotTextInputWrapper;->mEdit:Lorg/godotengine/godot/input/GodotEditText;

    .line 29
    .line 30
    invoke-virtual {p2}, Lorg/godotengine/godot/input/GodotEditText;->getKeyboardType()Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    sget-object v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->KEYBOARD_TYPE_MULTILINE:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 35
    .line 36
    if-eq p2, v0, :cond_1

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_1
    iget-object p2, p0, Lorg/godotengine/godot/input/GodotTextInputWrapper;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    .line 40
    .line 41
    invoke-interface {p2}, Lorg/godotengine/godot/GodotRenderView;->getInputHandler()Lorg/godotengine/godot/input/GodotInputHandler;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const/4 v4, 0x1

    .line 46
    const/4 v5, 0x0

    .line 47
    const/4 v1, 0x0

    .line 48
    const/4 v3, 0x0

    .line 49
    invoke-virtual/range {v0 .. v5}, Lorg/godotengine/godot/input/GodotInputHandler;->handleKeyEvent(IIIZZ)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Lorg/godotengine/godot/input/GodotTextInputWrapper;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    .line 53
    .line 54
    invoke-interface {p2}, Lorg/godotengine/godot/GodotRenderView;->getInputHandler()Lorg/godotengine/godot/input/GodotInputHandler;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const/4 v4, 0x0

    .line 59
    invoke-virtual/range {v0 .. v5}, Lorg/godotengine/godot/input/GodotInputHandler;->handleKeyEvent(IIIZZ)V

    .line 60
    .line 61
    .line 62
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    return-void
.end method

.method public setOriginText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/godotengine/godot/input/GodotTextInputWrapper;->mOriginText:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSelection(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/godotengine/godot/input/GodotTextInputWrapper;->mHasSelection:Z

    .line 2
    .line 3
    return-void
.end method
