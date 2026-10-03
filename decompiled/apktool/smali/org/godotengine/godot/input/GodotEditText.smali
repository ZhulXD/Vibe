.class public Lorg/godotengine/godot/input/GodotEditText;
.super Landroid/widget/EditText;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/input/GodotEditText$EditHandler;,
        Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;
    }
.end annotation


# static fields
.field private static final HANDLER_CLOSE_IME_KEYBOARD:I = 0x3

.field private static final HANDLER_OPEN_IME_KEYBOARD:I = 0x2


# instance fields
.field private mInputWrapper:Lorg/godotengine/godot/input/GodotTextInputWrapper;

.field private mKeyboardType:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

.field private mMaxInputLength:I

.field private mOriginText:Ljava/lang/String;

.field private mRenderView:Lorg/godotengine/godot/GodotRenderView;

.field private sHandler:Lorg/godotengine/godot/input/GodotEditText$EditHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lorg/godotengine/godot/input/GodotEditText$EditHandler;

    invoke-direct {p1, p0}, Lorg/godotengine/godot/input/GodotEditText$EditHandler;-><init>(Lorg/godotengine/godot/input/GodotEditText;)V

    iput-object p1, p0, Lorg/godotengine/godot/input/GodotEditText;->sHandler:Lorg/godotengine/godot/input/GodotEditText$EditHandler;

    const p1, 0x7fffffff

    .line 3
    iput p1, p0, Lorg/godotengine/godot/input/GodotEditText;->mMaxInputLength:I

    .line 4
    sget-object p1, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->KEYBOARD_TYPE_DEFAULT:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    iput-object p1, p0, Lorg/godotengine/godot/input/GodotEditText;->mKeyboardType:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 5
    invoke-virtual {p0}, Lorg/godotengine/godot/input/GodotEditText;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    new-instance p1, Lorg/godotengine/godot/input/GodotEditText$EditHandler;

    invoke-direct {p1, p0}, Lorg/godotengine/godot/input/GodotEditText$EditHandler;-><init>(Lorg/godotengine/godot/input/GodotEditText;)V

    iput-object p1, p0, Lorg/godotengine/godot/input/GodotEditText;->sHandler:Lorg/godotengine/godot/input/GodotEditText$EditHandler;

    const p1, 0x7fffffff

    .line 8
    iput p1, p0, Lorg/godotengine/godot/input/GodotEditText;->mMaxInputLength:I

    .line 9
    sget-object p1, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->KEYBOARD_TYPE_DEFAULT:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    iput-object p1, p0, Lorg/godotengine/godot/input/GodotEditText;->mKeyboardType:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 10
    invoke-virtual {p0}, Lorg/godotengine/godot/input/GodotEditText;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    new-instance p1, Lorg/godotengine/godot/input/GodotEditText$EditHandler;

    invoke-direct {p1, p0}, Lorg/godotengine/godot/input/GodotEditText$EditHandler;-><init>(Lorg/godotengine/godot/input/GodotEditText;)V

    iput-object p1, p0, Lorg/godotengine/godot/input/GodotEditText;->sHandler:Lorg/godotengine/godot/input/GodotEditText$EditHandler;

    const p1, 0x7fffffff

    .line 13
    iput p1, p0, Lorg/godotengine/godot/input/GodotEditText;->mMaxInputLength:I

    .line 14
    sget-object p1, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->KEYBOARD_TYPE_DEFAULT:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    iput-object p1, p0, Lorg/godotengine/godot/input/GodotEditText;->mKeyboardType:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 15
    invoke-virtual {p0}, Lorg/godotengine/godot/input/GodotEditText;->initView()V

    return-void
.end method

.method public static bridge synthetic a(Lorg/godotengine/godot/input/GodotEditText;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/godotengine/godot/input/GodotEditText;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const-string v1, "input_method"

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x2

    .line 8
    if-eq v0, v4, :cond_1

    .line 9
    .line 10
    if-eq v0, v2, :cond_0

    .line 11
    .line 12
    goto/16 :goto_3

    .line 13
    .line 14
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Lorg/godotengine/godot/input/GodotEditText;

    .line 17
    .line 18
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotEditText;->mInputWrapper:Lorg/godotengine/godot/input/GodotTextInputWrapper;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotEditText;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    .line 24
    .line 25
    invoke-interface {v0}, Lorg/godotengine/godot/GodotRenderView;->getView()Landroid/view/SurfaceView;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 44
    .line 45
    .line 46
    iget-object p1, p1, Lorg/godotengine/godot/input/GodotEditText;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    .line 47
    .line 48
    invoke-interface {p1}, Lorg/godotengine/godot/GodotRenderView;->getView()Landroid/view/SurfaceView;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Lorg/godotengine/godot/input/GodotEditText;

    .line 59
    .line 60
    iget-object v5, v0, Lorg/godotengine/godot/input/GodotEditText;->mOriginText:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_5

    .line 67
    .line 68
    iget-object v6, v0, Lorg/godotengine/godot/input/GodotEditText;->mInputWrapper:Lorg/godotengine/godot/input/GodotTextInputWrapper;

    .line 69
    .line 70
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, v0}, Lorg/godotengine/godot/input/GodotEditText;->setMaxInputLength(Landroid/widget/EditText;)V

    .line 74
    .line 75
    .line 76
    const-string v6, ""

    .line 77
    .line 78
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    iget v6, p1, Landroid/os/Message;->arg2:I

    .line 85
    .line 86
    const/4 v7, -0x1

    .line 87
    const/4 v8, 0x1

    .line 88
    if-eq v6, v7, :cond_2

    .line 89
    .line 90
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 91
    .line 92
    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    invoke-virtual {v0, v6, p1}, Landroid/widget/EditText;->setSelection(II)V

    .line 111
    .line 112
    .line 113
    iget-object p1, v0, Lorg/godotengine/godot/input/GodotEditText;->mInputWrapper:Lorg/godotengine/godot/input/GodotTextInputWrapper;

    .line 114
    .line 115
    invoke-virtual {p1, v8}, Lorg/godotengine/godot/input/GodotTextInputWrapper;->setSelection(Z)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_2
    iget-object p1, v0, Lorg/godotengine/godot/input/GodotEditText;->mInputWrapper:Lorg/godotengine/godot/input/GodotTextInputWrapper;

    .line 120
    .line 121
    invoke-virtual {p1, v3}, Lorg/godotengine/godot/input/GodotTextInputWrapper;->setSelection(Z)V

    .line 122
    .line 123
    .line 124
    :goto_0
    invoke-virtual {v0}, Lorg/godotengine/godot/input/GodotEditText;->getKeyboardType()Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    const/4 v6, 0x0

    .line 133
    packed-switch p1, :pswitch_data_0

    .line 134
    .line 135
    .line 136
    move v2, v8

    .line 137
    goto :goto_1

    .line 138
    :pswitch_0
    const/16 v2, 0x11

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :pswitch_1
    const/16 v2, 0x81

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :pswitch_2
    const/16 v2, 0x21

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :pswitch_3
    const/16 v2, 0x3002

    .line 148
    .line 149
    const-string v6, "0123456789,.- "

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :pswitch_4
    move v2, v4

    .line 153
    goto :goto_1

    .line 154
    :pswitch_5
    const v2, 0x20001

    .line 155
    .line 156
    .line 157
    :goto_1
    :pswitch_6
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 158
    .line 159
    .line 160
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    if-nez p1, :cond_4

    .line 165
    .line 166
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 167
    .line 168
    const/16 v2, 0x1a

    .line 169
    .line 170
    if-lt p1, v2, :cond_3

    .line 171
    .line 172
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-static {p1}, Lm0/o;->j(Ljava/util/Locale;)Landroid/text/method/DigitsKeyListener;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_3
    invoke-static {v6}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 189
    .line 190
    .line 191
    :cond_4
    :goto_2
    iget-object p1, v0, Lorg/godotengine/godot/input/GodotEditText;->mInputWrapper:Lorg/godotengine/godot/input/GodotTextInputWrapper;

    .line 192
    .line 193
    invoke-virtual {p1, v5}, Lorg/godotengine/godot/input/GodotTextInputWrapper;->setOriginText(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    iget-object p1, v0, Lorg/godotengine/godot/input/GodotEditText;->mInputWrapper:Lorg/godotengine/godot/input/GodotTextInputWrapper;

    .line 197
    .line 198
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 199
    .line 200
    .line 201
    iget-object p1, p0, Lorg/godotengine/godot/input/GodotEditText;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    .line 202
    .line 203
    invoke-interface {p1}, Lorg/godotengine/godot/GodotRenderView;->getView()Landroid/view/SurfaceView;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 216
    .line 217
    invoke-virtual {p1, v0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 218
    .line 219
    .line 220
    :cond_5
    :goto_3
    return-void

    .line 221
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private needHandlingInGodot(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    const/16 v0, 0x13

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    const/16 v0, 0x14

    .line 8
    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    const/16 v0, 0x15

    .line 12
    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    const/16 v0, 0x16

    .line 16
    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v2

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    move v0, v1

    .line 23
    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_3

    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_3

    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSymPressed()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_3

    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isFunctionPressed()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_3

    .line 46
    .line 47
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-eqz p2, :cond_2

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    move p2, v2

    .line 55
    goto :goto_3

    .line 56
    :cond_3
    :goto_2
    move p2, v1

    .line 57
    :goto_3
    if-nez v0, :cond_5

    .line 58
    .line 59
    const/16 v0, 0x3d

    .line 60
    .line 61
    if-eq p1, v0, :cond_5

    .line 62
    .line 63
    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_5

    .line 68
    .line 69
    if-eqz p2, :cond_4

    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_4
    return v2

    .line 73
    :cond_5
    :goto_4
    return v1
.end method

.method private setMaxInputLength(Landroid/widget/EditText;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    .line 2
    .line 3
    iget v1, p0, Lorg/godotengine/godot/input/GodotEditText;->mMaxInputLength:I

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    new-array v1, v1, [Landroid/text/InputFilter;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    aput-object v0, v1, v2

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public getKeyboardType()Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotEditText;->mKeyboardType:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasHardwareKeyboard()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotEditText;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/godotengine/godot/GodotRenderView;->getInputHandler()Lorg/godotengine/godot/input/GodotInputHandler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/godotengine/godot/input/GodotInputHandler;->hasHardwareKeyboard()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public hideKeyboard()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/godotengine/godot/input/GodotEditText;->hasHardwareKeyboard()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Landroid/os/Message;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    iput v1, v0, Landroid/os/Message;->what:I

    .line 15
    .line 16
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v1, p0, Lorg/godotengine/godot/input/GodotEditText;->sHandler:Lorg/godotengine/godot/input/GodotEditText$EditHandler;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public initView()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 3
    .line 4
    .line 5
    const v0, 0x10000006

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotEditText;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    .line 8
    .line 9
    invoke-interface {v0}, Lorg/godotengine/godot/GodotRenderView;->getView()Landroid/view/SurfaceView;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotEditText;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    .line 17
    .line 18
    invoke-interface {v0}, Lorg/godotengine/godot/GodotRenderView;->getInputHandler()Lorg/godotengine/godot/input/GodotInputHandler;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p1, p2}, Lorg/godotengine/godot/input/GodotInputHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :cond_0
    invoke-virtual {p0}, Lorg/godotengine/godot/input/GodotEditText;->hasHardwareKeyboard()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotEditText;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    .line 34
    .line 35
    invoke-interface {v0}, Lorg/godotengine/godot/GodotRenderView;->getInputHandler()Lorg/godotengine/godot/input/GodotInputHandler;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, p1, p2}, Lorg/godotengine/godot/input/GodotInputHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    return p1

    .line 44
    :cond_1
    const/16 v0, 0x43

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    if-ne p1, v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_2

    .line 54
    .line 55
    iget-object p1, p0, Lorg/godotengine/godot/input/GodotEditText;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    .line 56
    .line 57
    invoke-interface {p1}, Lorg/godotengine/godot/GodotRenderView;->getInputHandler()Lorg/godotengine/godot/input/GodotInputHandler;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    const/4 v6, 0x1

    .line 62
    const/4 v7, 0x0

    .line 63
    const/16 v3, 0x43

    .line 64
    .line 65
    const/4 v4, 0x0

    .line 66
    const/4 v5, 0x0

    .line 67
    invoke-virtual/range {v2 .. v7}, Lorg/godotengine/godot/input/GodotInputHandler;->handleKeyEvent(IIIZZ)V

    .line 68
    .line 69
    .line 70
    return v1

    .line 71
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/godotengine/godot/input/GodotEditText;->needHandlingInGodot(ILandroid/view/KeyEvent;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotEditText;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    .line 78
    .line 79
    invoke-interface {v0}, Lorg/godotengine/godot/GodotRenderView;->getInputHandler()Lorg/godotengine/godot/input/GodotInputHandler;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0, p1, p2}, Lorg/godotengine/godot/input/GodotInputHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    return v1

    .line 90
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lorg/godotengine/godot/input/GodotEditText;->hasHardwareKeyboard()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotEditText;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    .line 8
    .line 9
    invoke-interface {v0}, Lorg/godotengine/godot/GodotRenderView;->getInputHandler()Lorg/godotengine/godot/input/GodotInputHandler;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1, p2}, Lorg/godotengine/godot/input/GodotInputHandler;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_0
    const/4 v0, 0x4

    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotEditText;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    .line 28
    .line 29
    invoke-interface {v0}, Lorg/godotengine/godot/GodotRenderView;->getInputHandler()Lorg/godotengine/godot/input/GodotInputHandler;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, p1, p2}, Lorg/godotengine/godot/input/GodotInputHandler;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1

    .line 38
    :cond_1
    const/16 v0, 0x43

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    if-ne p1, v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    iget-object p1, p0, Lorg/godotengine/godot/input/GodotEditText;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    .line 50
    .line 51
    invoke-interface {p1}, Lorg/godotengine/godot/GodotRenderView;->getInputHandler()Lorg/godotengine/godot/input/GodotInputHandler;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const/4 v6, 0x0

    .line 56
    const/4 v7, 0x0

    .line 57
    const/16 v3, 0x43

    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    const/4 v5, 0x0

    .line 61
    invoke-virtual/range {v2 .. v7}, Lorg/godotengine/godot/input/GodotInputHandler;->handleKeyEvent(IIIZZ)V

    .line 62
    .line 63
    .line 64
    return v1

    .line 65
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/godotengine/godot/input/GodotEditText;->needHandlingInGodot(ILandroid/view/KeyEvent;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotEditText;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    .line 72
    .line 73
    invoke-interface {v0}, Lorg/godotengine/godot/GodotRenderView;->getInputHandler()Lorg/godotengine/godot/input/GodotInputHandler;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0, p1, p2}, Lorg/godotengine/godot/input/GodotInputHandler;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    return v1

    .line 84
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    return p1
.end method

.method public setView(Lorg/godotengine/godot/GodotRenderView;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/godotengine/godot/input/GodotEditText;->mRenderView:Lorg/godotengine/godot/GodotRenderView;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotEditText;->mInputWrapper:Lorg/godotengine/godot/input/GodotTextInputWrapper;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lorg/godotengine/godot/input/GodotTextInputWrapper;

    .line 8
    .line 9
    invoke-direct {v0, p1, p0}, Lorg/godotengine/godot/input/GodotTextInputWrapper;-><init>(Lorg/godotengine/godot/GodotRenderView;Lorg/godotengine/godot/input/GodotEditText;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/godotengine/godot/input/GodotEditText;->mInputWrapper:Lorg/godotengine/godot/input/GodotTextInputWrapper;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotEditText;->mInputWrapper:Lorg/godotengine/godot/input/GodotTextInputWrapper;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Lorg/godotengine/godot/GodotRenderView;->getView()Landroid/view/SurfaceView;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public showKeyboard(Ljava/lang/String;Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;III)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/godotengine/godot/input/GodotEditText;->hasHardwareKeyboard()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-gtz p3, :cond_1

    .line 9
    .line 10
    const p3, 0x7fffffff

    .line 11
    .line 12
    .line 13
    :cond_1
    const/4 v0, -0x1

    .line 14
    if-ne p4, v0, :cond_2

    .line 15
    .line 16
    iput-object p1, p0, Lorg/godotengine/godot/input/GodotEditText;->mOriginText:Ljava/lang/String;

    .line 17
    .line 18
    iput p3, p0, Lorg/godotengine/godot/input/GodotEditText;->mMaxInputLength:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    const/4 v1, 0x0

    .line 22
    if-ne p5, v0, :cond_3

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-static {v0, p4}, Ljava/lang/Math;->min(II)I

    .line 29
    .line 30
    .line 31
    move-result p4

    .line 32
    invoke-virtual {p1, v1, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lorg/godotengine/godot/input/GodotEditText;->mOriginText:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    sub-int/2addr p1, p4

    .line 43
    sub-int/2addr p3, p1

    .line 44
    iput p3, p0, Lorg/godotengine/godot/input/GodotEditText;->mMaxInputLength:I

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-static {v0, p5}, Ljava/lang/Math;->min(II)I

    .line 52
    .line 53
    .line 54
    move-result p5

    .line 55
    invoke-virtual {p1, v1, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lorg/godotengine/godot/input/GodotEditText;->mOriginText:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    sub-int/2addr p1, p5

    .line 66
    sub-int/2addr p3, p1

    .line 67
    iput p3, p0, Lorg/godotengine/godot/input/GodotEditText;->mMaxInputLength:I

    .line 68
    .line 69
    :goto_0
    iput-object p2, p0, Lorg/godotengine/godot/input/GodotEditText;->mKeyboardType:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 70
    .line 71
    new-instance p1, Landroid/os/Message;

    .line 72
    .line 73
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 74
    .line 75
    .line 76
    const/4 p2, 0x2

    .line 77
    iput p2, p1, Landroid/os/Message;->what:I

    .line 78
    .line 79
    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 80
    .line 81
    iput p4, p1, Landroid/os/Message;->arg1:I

    .line 82
    .line 83
    iput p5, p1, Landroid/os/Message;->arg2:I

    .line 84
    .line 85
    iget-object p2, p0, Lorg/godotengine/godot/input/GodotEditText;->sHandler:Lorg/godotengine/godot/input/GodotEditText$EditHandler;

    .line 86
    .line 87
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 88
    .line 89
    .line 90
    return-void
.end method
