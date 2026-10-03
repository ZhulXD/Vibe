.class Lorg/tvp/kirikiri2/SDLInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p2}, Lorg/tvp/kirikiri2/KR2Activity;->nativeCommitText(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public deleteSurroundingText(II)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_1

    .line 3
    .line 4
    if-nez p2, :cond_1

    .line 5
    .line 6
    new-instance p1, Landroid/view/KeyEvent;

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    const/16 v1, 0x43

    .line 10
    .line 11
    invoke-direct {p1, p2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 12
    .line 13
    .line 14
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    new-instance p1, Landroid/view/KeyEvent;

    .line 21
    .line 22
    invoke-direct {p1, v0, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 23
    .line 24
    .line 25
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    return v0

    .line 32
    :cond_0
    return p2

    .line 33
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0x43

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-nez v1, :cond_2

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isPrintingKey()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    int-to-char p1, p1

    .line 25
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1, v3}, Lorg/tvp/kirikiri2/SDLInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lorg/tvp/kirikiri2/KR2Activity;->nativeCharInput(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    if-ne v0, v2, :cond_1

    .line 37
    .line 38
    invoke-static {v0, v3}, Lorg/tvp/kirikiri2/KR2Activity;->nativeKeyAction(IZ)Z

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    return v3

    .line 42
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-ne v1, v3, :cond_4

    .line 47
    .line 48
    if-ne v0, v2, :cond_3

    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    invoke-static {v0, p1}, Lorg/tvp/kirikiri2/KR2Activity;->nativeKeyAction(IZ)Z

    .line 52
    .line 53
    .line 54
    :cond_3
    return v3

    .line 55
    :cond_4
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    return p1
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
