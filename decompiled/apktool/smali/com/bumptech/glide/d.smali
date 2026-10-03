.class public abstract Lcom/bumptech/glide/d;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static a:Z = true


# direct methods
.method public static I(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 1

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    if-eq p0, v0, :cond_6

    .line 4
    .line 5
    const/16 v0, 0x21

    .line 6
    .line 7
    if-eq p0, v0, :cond_4

    .line 8
    .line 9
    const/16 v0, 0x42

    .line 10
    .line 11
    if-eq p0, v0, :cond_2

    .line 12
    .line 13
    const/16 v0, 0x82

    .line 14
    .line 15
    if-ne p0, v0, :cond_1

    .line 16
    .line 17
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 18
    .line 19
    iget v0, p2, Landroid/graphics/Rect;->top:I

    .line 20
    .line 21
    if-lt p0, v0, :cond_0

    .line 22
    .line 23
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 24
    .line 25
    if-gt p0, v0, :cond_8

    .line 26
    .line 27
    :cond_0
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 28
    .line 29
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 30
    .line 31
    if-ge p0, p1, :cond_8

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 37
    .line 38
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0

    .line 42
    :cond_2
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 43
    .line 44
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 45
    .line 46
    if-lt p0, v0, :cond_3

    .line 47
    .line 48
    iget p0, p1, Landroid/graphics/Rect;->right:I

    .line 49
    .line 50
    if-gt p0, v0, :cond_8

    .line 51
    .line 52
    :cond_3
    iget p0, p1, Landroid/graphics/Rect;->right:I

    .line 53
    .line 54
    iget p1, p2, Landroid/graphics/Rect;->right:I

    .line 55
    .line 56
    if-ge p0, p1, :cond_8

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_4
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 60
    .line 61
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 62
    .line 63
    if-gt p0, v0, :cond_5

    .line 64
    .line 65
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 66
    .line 67
    if-lt p0, v0, :cond_8

    .line 68
    .line 69
    :cond_5
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 70
    .line 71
    iget p1, p2, Landroid/graphics/Rect;->top:I

    .line 72
    .line 73
    if-le p0, p1, :cond_8

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_6
    iget p0, p1, Landroid/graphics/Rect;->right:I

    .line 77
    .line 78
    iget v0, p2, Landroid/graphics/Rect;->right:I

    .line 79
    .line 80
    if-gt p0, v0, :cond_7

    .line 81
    .line 82
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 83
    .line 84
    if-lt p0, v0, :cond_8

    .line 85
    .line 86
    :cond_7
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 87
    .line 88
    iget p1, p2, Landroid/graphics/Rect;->left:I

    .line 89
    .line 90
    if-le p0, p1, :cond_8

    .line 91
    .line 92
    :goto_0
    const/4 p0, 0x1

    .line 93
    return p0

    .line 94
    :cond_8
    const/4 p0, 0x0

    .line 95
    return p0
.end method

.method public static K(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 10
    .line 11
    const v0, 0x3fa66666    # 1.3f

    .line 12
    .line 13
    .line 14
    cmpl-float p0, p0, v0

    .line 15
    .line 16
    if-ltz p0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public static O(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    if-eq p0, v0, :cond_3

    .line 4
    .line 5
    const/16 v0, 0x21

    .line 6
    .line 7
    if-eq p0, v0, :cond_2

    .line 8
    .line 9
    const/16 v0, 0x42

    .line 10
    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0x82

    .line 14
    .line 15
    if-ne p0, v0, :cond_0

    .line 16
    .line 17
    iget p0, p2, Landroid/graphics/Rect;->top:I

    .line 18
    .line 19
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 20
    .line 21
    :goto_0
    sub-int/2addr p0, p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 26
    .line 27
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :cond_1
    iget p0, p2, Landroid/graphics/Rect;->left:I

    .line 32
    .line 33
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 37
    .line 38
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 42
    .line 43
    iget p1, p2, Landroid/graphics/Rect;->right:I

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :goto_1
    const/4 p1, 0x0

    .line 47
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    return p0
.end method

.method public static P(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    if-eq p0, v0, :cond_2

    .line 4
    .line 5
    const/16 v0, 0x21

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x42

    .line 10
    .line 11
    if-eq p0, v0, :cond_2

    .line 12
    .line 13
    const/16 v0, 0x82

    .line 14
    .line 15
    if-ne p0, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 21
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0

    .line 26
    :cond_1
    :goto_0
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    div-int/lit8 p1, p1, 0x2

    .line 33
    .line 34
    add-int/2addr p1, p0

    .line 35
    iget p0, p2, Landroid/graphics/Rect;->left:I

    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    div-int/lit8 p2, p2, 0x2

    .line 42
    .line 43
    add-int/2addr p2, p0

    .line 44
    sub-int/2addr p1, p2

    .line 45
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0

    .line 50
    :cond_2
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    div-int/lit8 p1, p1, 0x2

    .line 57
    .line 58
    add-int/2addr p1, p0

    .line 59
    iget p0, p2, Landroid/graphics/Rect;->top:I

    .line 60
    .line 61
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    div-int/lit8 p2, p2, 0x2

    .line 66
    .line 67
    add-int/2addr p2, p0

    .line 68
    sub-int/2addr p1, p2

    .line 69
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    return p0
.end method

.method public static final Q(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string v0, "toUpperCase(...)"

    .line 20
    .line 21
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    if-eqz p0, :cond_5

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    sparse-switch v0, :sswitch_data_0

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :sswitch_0
    const-string v0, "KIRIKIRI"

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-nez p0, :cond_3

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :sswitch_1
    const-string v0, "VXACE"

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-nez p0, :cond_1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const-string p0, "vxace"

    .line 55
    .line 56
    return-object p0

    .line 57
    :sswitch_2
    const-string v0, "RENPY"

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-nez p0, :cond_4

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :sswitch_3
    const-string v0, "GODOT"

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-nez p0, :cond_2

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    const-string p0, "godot"

    .line 76
    .line 77
    return-object p0

    .line 78
    :sswitch_4
    const-string v0, "KIRI"

    .line 79
    .line 80
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-nez p0, :cond_3

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    const-string p0, "kirikiri"

    .line 88
    .line 89
    return-object p0

    .line 90
    :sswitch_5
    const-string v0, "RENPY8"

    .line 91
    .line 92
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    if-nez p0, :cond_4

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :sswitch_6
    const-string v0, "RENPY7"

    .line 100
    .line 101
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-nez p0, :cond_4

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_4
    const-string p0, "renpy"

    .line 109
    .line 110
    return-object p0

    .line 111
    :cond_5
    :goto_1
    const-string p0, "web"

    .line 112
    .line 113
    return-object p0

    .line 114
    nop

    .line 115
    :sswitch_data_0
    .sparse-switch
        -0x70219b0d -> :sswitch_6
        -0x70219b0c -> :sswitch_5
        0x233415 -> :sswitch_4
        0x40d7741 -> :sswitch_3
        0x4a413c4 -> :sswitch_2
        0x4e4e261 -> :sswitch_1
        0x14b455aa -> :sswitch_0
    .end sparse-switch
.end method

.method public static R(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    iget-object p0, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :goto_0
    instance-of p1, p0, Landroid/view/View;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method

.method public static S(Lorg/json/JSONObject;Ljava/lang/String;)LR1/a;
    .locals 8

    .line 1
    new-instance v0, LR1/a;

    .line 2
    .line 3
    const-string v1, "version_code"

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    const-string v3, "version_name"

    .line 10
    .line 11
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const-string v4, "getString(...)"

    .line 16
    .line 17
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v4, "download_url"

    .line 21
    .line 22
    const-string v5, ""

    .line 23
    .line 24
    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    const-string v6, "optString(...)"

    .line 29
    .line 30
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v6, "json"

    .line 34
    .line 35
    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v6, "lang"

    .line 39
    .line 40
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v6, "changelog"

    .line 44
    .line 45
    invoke-virtual {p0, v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    const-string v7, "vi"

    .line 50
    .line 51
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_0

    .line 56
    .line 57
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    move-object v5, v6

    .line 61
    goto :goto_2

    .line 62
    :cond_0
    const-string p1, "changelog_en"

    .line 63
    .line 64
    invoke-virtual {p0, p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    move-object v6, p0

    .line 76
    :goto_1
    const-string p0, "ifBlank(...)"

    .line 77
    .line 78
    invoke-static {v6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :goto_2
    invoke-direct/range {v0 .. v5}, LR1/a;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-object v0
.end method

.method public static T(LH1/a;)LH1/b;
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, LH1/a;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v1, LH1/a;->g:Ljava/util/Set;

    .line 6
    .line 7
    const-string v3, "fixture"

    .line 8
    .line 9
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v3, LO1/a;->a:Ljava/util/List;

    .line 13
    .line 14
    new-instance v4, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-eqz v6, :cond_1

    .line 28
    .line 29
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    check-cast v6, LO1/b;

    .line 34
    .line 35
    iget-object v6, v6, LO1/b;->f:Ljava/lang/String;

    .line 36
    .line 37
    if-eqz v6, :cond_0

    .line 38
    .line 39
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/Collection;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    new-instance v10, Ljava/util/LinkedHashMap;

    .line 52
    .line 53
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    invoke-static {v5}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    const/16 v6, 0x10

    .line 62
    .line 63
    invoke-static {v5, v6}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    invoke-direct {v10, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 68
    .line 69
    .line 70
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    if-eqz v7, :cond_2

    .line 79
    .line 80
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    move-object v8, v7

    .line 85
    check-cast v8, Ljava/lang/String;

    .line 86
    .line 87
    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    invoke-interface {v10, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    if-eqz v7, :cond_5

    .line 113
    .line 114
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    move-object v8, v7

    .line 119
    check-cast v8, LO1/b;

    .line 120
    .line 121
    iget-object v9, v8, LO1/b;->b:LO1/c;

    .line 122
    .line 123
    iget-object v9, v9, LO1/c;->b:Ljava/lang/String;

    .line 124
    .line 125
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    if-eqz v9, :cond_3

    .line 130
    .line 131
    iget-boolean v9, v8, LO1/b;->e:Z

    .line 132
    .line 133
    if-eqz v9, :cond_3

    .line 134
    .line 135
    iget-object v8, v8, LO1/b;->f:Ljava/lang/String;

    .line 136
    .line 137
    if-eqz v8, :cond_4

    .line 138
    .line 139
    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    if-eqz v8, :cond_3

    .line 144
    .line 145
    :cond_4
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .line 153
    .line 154
    const-string v7, "mv"

    .line 155
    .line 156
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v8

    .line 160
    const-string v9, "."

    .line 161
    .line 162
    const-string v11, "mz"

    .line 163
    .line 164
    if-nez v8, :cond_6

    .line 165
    .line 166
    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v8

    .line 170
    if-nez v8, :cond_6

    .line 171
    .line 172
    new-instance v8, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    const-string v12, "No strict MV/MZ match for engine="

    .line 175
    .line 176
    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    :cond_6
    const-string v8, "Engine version is unknown; no synthetic core can be selected."

    .line 193
    .line 194
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    new-instance v8, Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .line 201
    .line 202
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 207
    .line 208
    .line 209
    move-result v12

    .line 210
    if-eqz v12, :cond_8

    .line 211
    .line 212
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v12

    .line 216
    move-object v13, v12

    .line 217
    check-cast v13, Ljava/lang/String;

    .line 218
    .line 219
    invoke-interface {v2, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v13

    .line 223
    if-nez v13, :cond_7

    .line 224
    .line 225
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    .line 230
    .line 231
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    const/4 v13, 0x0

    .line 243
    :goto_4
    if-ge v13, v4, :cond_9

    .line 244
    .line 245
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v14

    .line 249
    add-int/lit8 v13, v13, 0x1

    .line 250
    .line 251
    check-cast v14, Ljava/lang/String;

    .line 252
    .line 253
    new-instance v15, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    const-string v12, "Utility gate "

    .line 256
    .line 257
    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    const-string v12, " not enabled (explicit input required)."

    .line 264
    .line 265
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v12

    .line 272
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    goto :goto_4

    .line 276
    :cond_9
    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->c(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 277
    .line 278
    .line 279
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    const/4 v4, 0x0

    .line 284
    if-nez v2, :cond_b

    .line 285
    .line 286
    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    if-eqz v2, :cond_a

    .line 291
    .line 292
    goto :goto_5

    .line 293
    :cond_a
    move-object/from16 v18, v3

    .line 294
    .line 295
    move-object v2, v4

    .line 296
    move-object/from16 v17, v10

    .line 297
    .line 298
    goto/16 :goto_f

    .line 299
    .line 300
    :cond_b
    :goto_5
    new-instance v2, Ljava/util/ArrayList;

    .line 301
    .line 302
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 303
    .line 304
    .line 305
    move-result v7

    .line 306
    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 310
    .line 311
    .line 312
    move-result v7

    .line 313
    const/4 v8, 0x0

    .line 314
    :goto_6
    if-ge v8, v7, :cond_c

    .line 315
    .line 316
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v11

    .line 320
    add-int/lit8 v8, v8, 0x1

    .line 321
    .line 322
    check-cast v11, LO1/b;

    .line 323
    .line 324
    iget-object v12, v1, LH1/a;->a:Ljava/lang/String;

    .line 325
    .line 326
    new-instance v17, LK1/f;

    .line 327
    .line 328
    iget-object v13, v11, LO1/b;->a:Ljava/lang/String;

    .line 329
    .line 330
    iget v14, v11, LO1/b;->d:I

    .line 331
    .line 332
    const/16 v15, 0x40

    .line 333
    .line 334
    const-string v6, "0"

    .line 335
    .line 336
    invoke-static {v15, v6}, Lkotlin/text/StringsKt;->D(ILjava/lang/String;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v21

    .line 340
    iget-object v6, v11, LO1/b;->c:LK1/g;

    .line 341
    .line 342
    move-object/from16 v22, v6

    .line 343
    .line 344
    move-object/from16 v19, v12

    .line 345
    .line 346
    move-object/from16 v18, v13

    .line 347
    .line 348
    move/from16 v20, v14

    .line 349
    .line 350
    invoke-direct/range {v17 .. v22}, LK1/f;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;LK1/g;)V

    .line 351
    .line 352
    .line 353
    move-object/from16 v6, v17

    .line 354
    .line 355
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    const/16 v6, 0x10

    .line 359
    .line 360
    goto :goto_6

    .line 361
    :cond_c
    const-string v5, "dry-run-"

    .line 362
    .line 363
    invoke-static {v5, v0}, Lkotlin/collections/unsigned/a;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v5

    .line 367
    new-instance v6, Ljava/util/ArrayList;

    .line 368
    .line 369
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 370
    .line 371
    .line 372
    move-result v7

    .line 373
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 377
    .line 378
    .line 379
    move-result v7

    .line 380
    const/4 v12, 0x0

    .line 381
    :goto_7
    if-ge v12, v7, :cond_d

    .line 382
    .line 383
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v8

    .line 387
    add-int/lit8 v12, v12, 0x1

    .line 388
    .line 389
    check-cast v8, LK1/f;

    .line 390
    .line 391
    iget-object v8, v8, LK1/f;->a:Ljava/lang/String;

    .line 392
    .line 393
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    goto :goto_7

    .line 397
    :cond_d
    new-instance v7, LK1/h;

    .line 398
    .line 399
    invoke-direct {v7, v5, v0, v6}, LK1/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 400
    .line 401
    .line 402
    new-instance v0, LK1/k;

    .line 403
    .line 404
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->p(LK1/e;)Ljava/util/List;

    .line 405
    .line 406
    .line 407
    move-result-object v5

    .line 408
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 409
    .line 410
    .line 411
    move-result-object v6

    .line 412
    invoke-direct {v0, v5, v6, v2}, LK1/k;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 413
    .line 414
    .line 415
    new-instance v11, LK1/a;

    .line 416
    .line 417
    iget-object v12, v1, LH1/a;->a:Ljava/lang/String;

    .line 418
    .line 419
    iget-object v13, v1, LH1/a;->b:Ljava/lang/String;

    .line 420
    .line 421
    iget-object v2, v1, LH1/a;->f:Ljava/util/List;

    .line 422
    .line 423
    if-eqz v2, :cond_f

    .line 424
    .line 425
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 426
    .line 427
    .line 428
    move-result-object v2

    .line 429
    if-nez v2, :cond_e

    .line 430
    .line 431
    goto :goto_9

    .line 432
    :cond_e
    :goto_8
    move-object v14, v2

    .line 433
    goto :goto_a

    .line 434
    :cond_f
    :goto_9
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    .line 435
    .line 436
    .line 437
    move-result-object v2

    .line 438
    goto :goto_8

    .line 439
    :goto_a
    iget v15, v1, LH1/a;->c:I

    .line 440
    .line 441
    iget-object v2, v1, LH1/a;->d:LK1/i;

    .line 442
    .line 443
    sget-object v5, LI1/i;->b:LI1/i;

    .line 444
    .line 445
    iget-object v5, v1, LH1/a;->e:LI1/i;

    .line 446
    .line 447
    move-object/from16 v16, v2

    .line 448
    .line 449
    move-object/from16 v17, v5

    .line 450
    .line 451
    invoke-direct/range {v11 .. v17}, LK1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;ILK1/i;LI1/i;)V

    .line 452
    .line 453
    .line 454
    const-string v6, "manifest"

    .line 455
    .line 456
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    const-string v7, "input"

    .line 460
    .line 461
    invoke-static {v11, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    new-instance v6, LK1/k;

    .line 468
    .line 469
    invoke-direct {v6, v0}, LK1/k;-><init>(LK1/k;)V

    .line 470
    .line 471
    .line 472
    const-string v8, "PINNED is recorded as requested only; dry-run does not activate it."

    .line 473
    .line 474
    const-string v13, "; actual mode=LEGACY; activation=false."

    .line 475
    .line 476
    const-string v14, "Requested mode="

    .line 477
    .line 478
    const-string v4, "No compatible core for engine="

    .line 479
    .line 480
    move-object/from16 v17, v10

    .line 481
    .line 482
    const-string v10, "Selected profile: "

    .line 483
    .line 484
    const-string v1, "registry"

    .line 485
    .line 486
    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    invoke-static {v11, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    new-instance v1, Ljava/util/ArrayList;

    .line 493
    .line 494
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 495
    .line 496
    .line 497
    new-instance v6, Ljava/util/ArrayList;

    .line 498
    .line 499
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 500
    .line 501
    .line 502
    :try_start_0
    invoke-static {v0, v11}, LK1/d;->d(LK1/k;LK1/a;)LK1/b;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    iget-object v7, v0, LK1/b;->a:LK1/h;

    .line 507
    .line 508
    if-nez v7, :cond_10

    .line 509
    .line 510
    const-string v7, "No matching profile; using core fallback and no profile patches."

    .line 511
    .line 512
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    .line 514
    .line 515
    move-object/from16 v18, v3

    .line 516
    .line 517
    goto :goto_c

    .line 518
    :catch_0
    move-exception v0

    .line 519
    move-object/from16 v18, v3

    .line 520
    .line 521
    :goto_b
    const/4 v4, 0x0

    .line 522
    goto :goto_e

    .line 523
    :cond_10
    iget-object v7, v7, LK1/h;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    .line 525
    move-object/from16 v18, v3

    .line 526
    .line 527
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 528
    .line 529
    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v3

    .line 542
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    .line 544
    .line 545
    :goto_c
    new-instance v3, Ljava/lang/StringBuilder;

    .line 546
    .line 547
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    const-string v4, ", version="

    .line 554
    .line 555
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 556
    .line 557
    .line 558
    const/4 v4, 0x0

    .line 559
    :try_start_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    const-string v7, ", app="

    .line 563
    .line 564
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    const-string v7, ", channel="

    .line 571
    .line 572
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v2

    .line 585
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    .line 587
    .line 588
    new-instance v2, Ljava/lang/StringBuilder;

    .line 589
    .line 590
    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 594
    .line 595
    .line 596
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v2

    .line 603
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    .line 605
    .line 606
    sget-object v2, LI1/i;->c:LI1/i;

    .line 607
    .line 608
    if-ne v5, v2, :cond_11

    .line 609
    .line 610
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    .line 612
    .line 613
    goto :goto_d

    .line 614
    :catch_1
    move-exception v0

    .line 615
    goto :goto_e

    .line 616
    :cond_11
    :goto_d
    new-instance v2, LK1/k;

    .line 617
    .line 618
    iget-object v0, v0, LK1/b;->b:Ljava/util/List;

    .line 619
    .line 620
    invoke-direct {v2, v0, v5, v1, v6}, LK1/k;-><init>(Ljava/util/List;LI1/i;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 621
    .line 622
    .line 623
    goto :goto_f

    .line 624
    :catch_2
    move-exception v0

    .line 625
    goto :goto_b

    .line 626
    :goto_e
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v0

    .line 630
    if-nez v0, :cond_12

    .line 631
    .line 632
    const-string v0, "registry validation or dependency error"

    .line 633
    .line 634
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 635
    .line 636
    const-string v3, "Patch plan rejected: "

    .line 637
    .line 638
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 639
    .line 640
    .line 641
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    .line 643
    .line 644
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    .line 653
    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    .line 655
    .line 656
    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 657
    .line 658
    .line 659
    iget-object v2, v11, LK1/a;->f:LI1/i;

    .line 660
    .line 661
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    .line 666
    .line 667
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v0

    .line 671
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    .line 673
    .line 674
    sget-object v0, LI1/i;->c:LI1/i;

    .line 675
    .line 676
    if-ne v2, v0, :cond_13

    .line 677
    .line 678
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    .line 680
    .line 681
    :cond_13
    new-instance v0, LK1/k;

    .line 682
    .line 683
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 684
    .line 685
    .line 686
    move-result-object v3

    .line 687
    invoke-direct {v0, v3, v2, v1, v6}, LK1/k;-><init>(Ljava/util/List;LI1/i;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 688
    .line 689
    .line 690
    move-object v2, v0

    .line 691
    :goto_f
    if-eqz v2, :cond_14

    .line 692
    .line 693
    iget-object v0, v2, LK1/k;->c:Ljava/util/List;

    .line 694
    .line 695
    move-object/from16 v1, v18

    .line 696
    .line 697
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->c(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 698
    .line 699
    .line 700
    :goto_10
    move-object/from16 v3, p0

    .line 701
    .line 702
    goto :goto_11

    .line 703
    :cond_14
    move-object/from16 v1, v18

    .line 704
    .line 705
    goto :goto_10

    .line 706
    :goto_11
    iget-object v0, v3, LH1/a;->e:LI1/i;

    .line 707
    .line 708
    sget-object v5, LI1/i;->c:LI1/i;

    .line 709
    .line 710
    if-ne v0, v5, :cond_15

    .line 711
    .line 712
    const-string v0, "PINNED is recorded as requested only; actual mode remains LEGACY."

    .line 713
    .line 714
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    .line 716
    .line 717
    :cond_15
    if-eqz v2, :cond_17

    .line 718
    .line 719
    iget-object v0, v2, LK1/k;->a:Ljava/util/List;

    .line 720
    .line 721
    if-eqz v0, :cond_17

    .line 722
    .line 723
    new-instance v2, Ljava/util/ArrayList;

    .line 724
    .line 725
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 726
    .line 727
    .line 728
    move-result v5

    .line 729
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 730
    .line 731
    .line 732
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 733
    .line 734
    .line 735
    move-result-object v0

    .line 736
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 737
    .line 738
    .line 739
    move-result v5

    .line 740
    if-eqz v5, :cond_16

    .line 741
    .line 742
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 743
    .line 744
    .line 745
    move-result-object v5

    .line 746
    check-cast v5, LK1/f;

    .line 747
    .line 748
    iget-object v5, v5, LK1/f;->a:Ljava/lang/String;

    .line 749
    .line 750
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    .line 752
    .line 753
    goto :goto_12

    .line 754
    :cond_16
    :goto_13
    move-object v6, v2

    .line 755
    goto :goto_14

    .line 756
    :cond_17
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 757
    .line 758
    .line 759
    move-result-object v2

    .line 760
    goto :goto_13

    .line 761
    :goto_14
    sget-object v0, LO1/a;->b:Ljava/util/List;

    .line 762
    .line 763
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 764
    .line 765
    .line 766
    move-result v2

    .line 767
    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    .line 768
    .line 769
    .line 770
    move-result v2

    .line 771
    const/16 v5, 0x10

    .line 772
    .line 773
    invoke-static {v2, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 774
    .line 775
    .line 776
    move-result v2

    .line 777
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 778
    .line 779
    invoke-direct {v5, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 780
    .line 781
    .line 782
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 783
    .line 784
    .line 785
    move-result-object v0

    .line 786
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 787
    .line 788
    .line 789
    move-result v2

    .line 790
    if-eqz v2, :cond_18

    .line 791
    .line 792
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 793
    .line 794
    .line 795
    move-result-object v2

    .line 796
    move-object v7, v2

    .line 797
    check-cast v7, LO1/d;

    .line 798
    .line 799
    iget-object v7, v7, LO1/d;->c:Ljava/lang/String;

    .line 800
    .line 801
    invoke-interface {v5, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    .line 803
    .line 804
    goto :goto_15

    .line 805
    :cond_18
    sget-object v0, LI1/i;->b:LI1/i;

    .line 806
    .line 807
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    .line 808
    .line 809
    .line 810
    move-result-object v7

    .line 811
    new-instance v8, Ljava/util/ArrayList;

    .line 812
    .line 813
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 814
    .line 815
    .line 816
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 817
    .line 818
    .line 819
    move-result-object v0

    .line 820
    :cond_19
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 821
    .line 822
    .line 823
    move-result v1

    .line 824
    if-eqz v1, :cond_1b

    .line 825
    .line 826
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 827
    .line 828
    .line 829
    move-result-object v1

    .line 830
    check-cast v1, Ljava/lang/String;

    .line 831
    .line 832
    invoke-virtual {v5, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    .line 834
    .line 835
    move-result-object v2

    .line 836
    check-cast v2, LO1/d;

    .line 837
    .line 838
    if-eqz v2, :cond_1a

    .line 839
    .line 840
    new-instance v9, LH1/c;

    .line 841
    .line 842
    iget-object v10, v2, LO1/d;->a:Ljava/lang/String;

    .line 843
    .line 844
    iget v2, v2, LO1/d;->b:I

    .line 845
    .line 846
    sget-object v11, LO1/a;->a:Ljava/util/List;

    .line 847
    .line 848
    invoke-static {v1}, LO1/a;->b(Ljava/lang/String;)LO1/b;

    .line 849
    .line 850
    .line 851
    move-result-object v11

    .line 852
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 853
    .line 854
    .line 855
    iget-object v11, v11, LO1/b;->c:LK1/g;

    .line 856
    .line 857
    invoke-direct {v9, v1, v10, v2, v11}, LH1/c;-><init>(Ljava/lang/String;Ljava/lang/String;ILK1/g;)V

    .line 858
    .line 859
    .line 860
    goto :goto_17

    .line 861
    :cond_1a
    move-object v9, v4

    .line 862
    :goto_17
    if-eqz v9, :cond_19

    .line 863
    .line 864
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 865
    .line 866
    .line 867
    goto :goto_16

    .line 868
    :cond_1b
    new-instance v9, Ljava/util/LinkedHashMap;

    .line 869
    .line 870
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 871
    .line 872
    .line 873
    move-result v0

    .line 874
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    .line 875
    .line 876
    .line 877
    move-result v0

    .line 878
    const/16 v5, 0x10

    .line 879
    .line 880
    invoke-static {v0, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 881
    .line 882
    .line 883
    move-result v0

    .line 884
    invoke-direct {v9, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 885
    .line 886
    .line 887
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 888
    .line 889
    .line 890
    move-result-object v0

    .line 891
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 892
    .line 893
    .line 894
    move-result v1

    .line 895
    if-eqz v1, :cond_1c

    .line 896
    .line 897
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 898
    .line 899
    .line 900
    move-result-object v1

    .line 901
    move-object v2, v1

    .line 902
    check-cast v2, Ljava/lang/String;

    .line 903
    .line 904
    sget-object v4, LO1/a;->a:Ljava/util/List;

    .line 905
    .line 906
    invoke-static {v2}, LO1/a;->b(Ljava/lang/String;)LO1/b;

    .line 907
    .line 908
    .line 909
    move-result-object v2

    .line 910
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 911
    .line 912
    .line 913
    iget-object v2, v2, LO1/b;->c:LK1/g;

    .line 914
    .line 915
    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    .line 917
    .line 918
    goto :goto_18

    .line 919
    :cond_1c
    iget-object v11, v3, LH1/a;->e:LI1/i;

    .line 920
    .line 921
    new-instance v5, LH1/b;

    .line 922
    .line 923
    move-object/from16 v10, v17

    .line 924
    .line 925
    invoke-direct/range {v5 .. v11}, LH1/b;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;LI1/i;)V

    .line 926
    .line 927
    .line 928
    return-object v5
.end method

.method public static W(Ljava/util/List;LL1/e;)LL1/c;
    .locals 6

    .line 1
    const-string v0, "builds"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    move-object v2, v1

    .line 17
    goto :goto_2

    .line 18
    :cond_0
    if-eqz p1, :cond_3

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    move-object v3, v2

    .line 35
    check-cast v3, LL1/a;

    .line 36
    .line 37
    iget-object v3, v3, LL1/a;->b:LL1/e;

    .line 38
    .line 39
    invoke-virtual {v3, p1}, LL1/e;->a(LL1/e;)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    move-object v2, v1

    .line 47
    :goto_0
    check-cast v2, LL1/a;

    .line 48
    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_4

    .line 61
    .line 62
    move-object v0, v1

    .line 63
    goto :goto_1

    .line 64
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-nez v2, :cond_5

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_5
    move-object v2, v0

    .line 76
    check-cast v2, LL1/a;

    .line 77
    .line 78
    iget-object v2, v2, LL1/a;->b:LL1/e;

    .line 79
    .line 80
    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    move-object v4, v3

    .line 85
    check-cast v4, LL1/a;

    .line 86
    .line 87
    iget-object v4, v4, LL1/a;->b:LL1/e;

    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v4}, LL1/e;->a(LL1/e;)I

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-gez v5, :cond_7

    .line 97
    .line 98
    move-object v0, v3

    .line 99
    move-object v2, v4

    .line 100
    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-nez v3, :cond_6

    .line 105
    .line 106
    :goto_1
    move-object v2, v0

    .line 107
    check-cast v2, LL1/a;

    .line 108
    .line 109
    :goto_2
    if-nez v2, :cond_8

    .line 110
    .line 111
    return-object v1

    .line 112
    :cond_8
    iget-object p0, v2, LL1/a;->b:LL1/e;

    .line 113
    .line 114
    if-nez p1, :cond_9

    .line 115
    .line 116
    sget-object p0, LL1/b;->e:LL1/b;

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_9
    invoke-virtual {p0, p1}, LL1/e;->a(LL1/e;)I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-nez v0, :cond_a

    .line 124
    .line 125
    sget-object p0, LL1/b;->b:LL1/b;

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_a
    invoke-virtual {p0, p1}, LL1/e;->a(LL1/e;)I

    .line 129
    .line 130
    .line 131
    move-result p0

    .line 132
    if-lez p0, :cond_b

    .line 133
    .line 134
    sget-object p0, LL1/b;->c:LL1/b;

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_b
    sget-object p0, LL1/b;->d:LL1/b;

    .line 138
    .line 139
    :goto_3
    new-instance p1, LL1/c;

    .line 140
    .line 141
    invoke-direct {p1, v2, p0}, LL1/c;-><init>(LL1/a;LL1/b;)V

    .line 142
    .line 143
    .line 144
    return-object p1
.end method

.method public static Y(Landroid/view/ViewGroup;Z)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, LS/G;->b(Landroid/view/ViewGroup;Z)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sget-boolean v0, Lcom/bumptech/glide/d;->a:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    :try_start_0
    invoke-static {p0, p1}, LS/G;->b(Landroid/view/ViewGroup;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    const/4 p0, 0x0

    .line 20
    sput-boolean p0, Lcom/bumptech/glide/d;->a:Z

    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public static final Z(Ljava/lang/String;)I
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 7
    .line 8
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 23
    .line 24
    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    :goto_0
    const-string v0, "#EF4444"

    .line 33
    .line 34
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    move-object p0, v0

    .line 49
    :cond_0
    check-cast p0, Ljava/lang/Number;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "langCode"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/Locale;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 17
    .line 18
    .line 19
    new-instance p1, Landroid/content/res/Configuration;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {p1, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string p1, "createConfigurationContext(...)"

    .line 40
    .line 41
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object p0
.end method

.method public static final a0(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;)Ljava/io/File;
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "g"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/minhub/gamehub/data/TranslationOverlayPaths;->INSTANCE:Lcom/minhub/gamehub/data/TranslationOverlayPaths;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v1, "getFilesDir(...)"

    .line 18
    .line 19
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-virtual {v0, p0, p1}, Lcom/minhub/gamehub/data/TranslationOverlayPaths;->backupRoot(Ljava/io/File;I)Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public static b(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 8

    .line 1
    invoke-static {p0, p1, p2}, Lcom/bumptech/glide/d;->c(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0, p1, p3}, Lcom/bumptech/glide/d;->c(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_b

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_4

    .line 14
    .line 15
    :cond_0
    const-string v0, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 16
    .line 17
    const/16 v1, 0x82

    .line 18
    .line 19
    const/16 v2, 0x21

    .line 20
    .line 21
    const/16 v3, 0x42

    .line 22
    .line 23
    const/16 v4, 0x11

    .line 24
    .line 25
    const/4 v5, 0x1

    .line 26
    if-eq p0, v4, :cond_4

    .line 27
    .line 28
    if-eq p0, v2, :cond_3

    .line 29
    .line 30
    if-eq p0, v3, :cond_2

    .line 31
    .line 32
    if-ne p0, v1, :cond_1

    .line 33
    .line 34
    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    .line 35
    .line 36
    iget v7, p3, Landroid/graphics/Rect;->top:I

    .line 37
    .line 38
    if-gt v6, v7, :cond_a

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p0

    .line 47
    :cond_2
    iget v6, p1, Landroid/graphics/Rect;->right:I

    .line 48
    .line 49
    iget v7, p3, Landroid/graphics/Rect;->left:I

    .line 50
    .line 51
    if-gt v6, v7, :cond_a

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    iget v6, p1, Landroid/graphics/Rect;->top:I

    .line 55
    .line 56
    iget v7, p3, Landroid/graphics/Rect;->bottom:I

    .line 57
    .line 58
    if-lt v6, v7, :cond_a

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_4
    iget v6, p1, Landroid/graphics/Rect;->left:I

    .line 62
    .line 63
    iget v7, p3, Landroid/graphics/Rect;->right:I

    .line 64
    .line 65
    if-lt v6, v7, :cond_a

    .line 66
    .line 67
    :goto_0
    if-eq p0, v4, :cond_a

    .line 68
    .line 69
    if-ne p0, v3, :cond_5

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_5
    invoke-static {p0, p1, p2}, Lcom/bumptech/glide/d;->O(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-eq p0, v4, :cond_9

    .line 77
    .line 78
    if-eq p0, v2, :cond_8

    .line 79
    .line 80
    if-eq p0, v3, :cond_7

    .line 81
    .line 82
    if-ne p0, v1, :cond_6

    .line 83
    .line 84
    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    .line 85
    .line 86
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 87
    .line 88
    :goto_1
    sub-int/2addr p0, p1

    .line 89
    goto :goto_2

    .line 90
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 91
    .line 92
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p0

    .line 96
    :cond_7
    iget p0, p3, Landroid/graphics/Rect;->right:I

    .line 97
    .line 98
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_8
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 102
    .line 103
    iget p1, p3, Landroid/graphics/Rect;->top:I

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_9
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 107
    .line 108
    iget p1, p3, Landroid/graphics/Rect;->left:I

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :goto_2
    invoke-static {v5, p0}, Ljava/lang/Math;->max(II)I

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    if-ge p2, p0, :cond_b

    .line 116
    .line 117
    :cond_a
    :goto_3
    return v5

    .line 118
    :cond_b
    :goto_4
    const/4 p0, 0x0

    .line 119
    return p0
.end method

.method public static c(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 1

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    if-eq p0, v0, :cond_2

    .line 4
    .line 5
    const/16 v0, 0x21

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x42

    .line 10
    .line 11
    if-eq p0, v0, :cond_2

    .line 12
    .line 13
    const/16 v0, 0x82

    .line 14
    .line 15
    if-ne p0, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 21
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0

    .line 26
    :cond_1
    :goto_0
    iget p0, p2, Landroid/graphics/Rect;->right:I

    .line 27
    .line 28
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 29
    .line 30
    if-lt p0, v0, :cond_3

    .line 31
    .line 32
    iget p0, p2, Landroid/graphics/Rect;->left:I

    .line 33
    .line 34
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 35
    .line 36
    if-gt p0, p1, :cond_3

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    .line 40
    .line 41
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 42
    .line 43
    if-lt p0, v0, :cond_3

    .line 44
    .line 45
    iget p0, p2, Landroid/graphics/Rect;->top:I

    .line 46
    .line 47
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 48
    .line 49
    if-gt p0, p1, :cond_3

    .line 50
    .line 51
    :goto_1
    const/4 p0, 0x1

    .line 52
    return p0

    .line 53
    :cond_3
    const/4 p0, 0x0

    .line 54
    return p0
.end method

.method public static final d(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;)V
    .locals 13

    .line 1
    const-string v1, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v2, "g"

    .line 7
    .line 8
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, LC1/X0;->a:Li1/l;

    .line 12
    .line 13
    const-string v0, "game"

    .line 14
    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 19
    .line 20
    sget-object v0, LC1/X0;->a:Li1/l;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->getTranslationPackagesJson()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    new-instance v4, Lcom/minhub/gamehub/hub/GameDetailPureFunctionsKt$installedTranslationPackages$rawPackages$1$1;

    .line 27
    .line 28
    invoke-direct {v4}, Lcom/minhub/gamehub/hub/GameDetailPureFunctionsKt$installedTranslationPackages$rawPackages$1$1;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {v4}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v0, v3, v4}, Li1/l;->b(Ljava/lang/String;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/util/List;

    .line 47
    .line 48
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 55
    .line 56
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    const/4 v4, 0x0

    .line 69
    if-eqz v3, :cond_0

    .line 70
    .line 71
    move-object v0, v4

    .line 72
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 73
    .line 74
    if-nez v0, :cond_1

    .line 75
    .line 76
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_5

    .line 94
    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    check-cast v3, Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;

    .line 100
    .line 101
    invoke-virtual {v3}, Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;->getLabel()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-static {v6}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-virtual {v3}, Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;->getUrl()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    invoke-static {v7}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 126
    .line 127
    .line 128
    move-result v8

    .line 129
    if-nez v8, :cond_4

    .line 130
    .line 131
    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 132
    .line 133
    .line 134
    move-result v8

    .line 135
    if-eqz v8, :cond_3

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_3
    invoke-virtual {v3}, Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;->getCode()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    invoke-static {v8}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    invoke-virtual {v3, v6, v7, v8}, Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    goto :goto_3

    .line 155
    :cond_4
    :goto_2
    move-object v3, v4

    .line 156
    :goto_3
    if-eqz v3, :cond_2

    .line 157
    .line 158
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_5
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-static {p0, p1}, Lcom/bumptech/glide/d;->a0(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;)Ljava/io/File;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    new-instance v1, Ljava/io/File;

    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->getGamePath()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    const-string v3, "game.zip"

    .line 179
    .line 180
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-static {p1}, Lcom/minhub/gamehub/data/GameKt;->getEngineEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameEngine;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    sget-object v3, Lcom/minhub/gamehub/data/GameEngine;->RENPY8:Lcom/minhub/gamehub/data/GameEngine;

    .line 188
    .line 189
    const/4 v11, 0x1

    .line 190
    const/4 v12, 0x0

    .line 191
    if-eq v2, v3, :cond_8

    .line 192
    .line 193
    invoke-static {p1}, Lcom/minhub/gamehub/data/GameKt;->getEngineEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameEngine;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    sget-object v3, Lcom/minhub/gamehub/data/GameEngine;->RENPY7:Lcom/minhub/gamehub/data/GameEngine;

    .line 198
    .line 199
    if-ne v2, v3, :cond_6

    .line 200
    .line 201
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-eqz v1, :cond_6

    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_6
    sget-object v1, Lcom/minhub/gamehub/data/TranslationOverlayInstaller;->INSTANCE:Lcom/minhub/gamehub/data/TranslationOverlayInstaller;

    .line 209
    .line 210
    invoke-virtual {v1, v0}, Lcom/minhub/gamehub/data/TranslationOverlayInstaller;->readManifest(Ljava/io/File;)Lcom/minhub/gamehub/data/TranslationBackupManifest;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lcom/minhub/gamehub/data/TranslationBackupManifest;->getEntries()Ljava/util/List;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-nez v0, :cond_7

    .line 223
    .line 224
    move v0, v11

    .line 225
    goto :goto_5

    .line 226
    :cond_7
    move v0, v12

    .line 227
    goto :goto_5

    .line 228
    :cond_8
    :goto_4
    sget-object v1, Lcom/minhub/gamehub/data/TranslationOverlayInstaller;->INSTANCE:Lcom/minhub/gamehub/data/TranslationOverlayInstaller;

    .line 229
    .line 230
    invoke-virtual {v1, v0}, Lcom/minhub/gamehub/data/TranslationOverlayInstaller;->hasRenpyGameZipBackup(Ljava/io/File;)Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    :goto_5
    iget-object v1, p0, Lcom/minhub/gamehub/hub/GameDetailActivity;->n:Ljava/lang/String;

    .line 235
    .line 236
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    if-eqz v2, :cond_a

    .line 241
    .line 242
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->getActiveTranslationLabel()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    if-eqz v1, :cond_9

    .line 251
    .line 252
    const v1, 0x7f120158

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    goto :goto_6

    .line 260
    :cond_9
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->getActiveTranslationLabel()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    const v2, 0x7f120156

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    :goto_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    :cond_a
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    iget-object v2, v2, Lw1/e;->p:Landroid/widget/LinearLayout;

    .line 283
    .line 284
    const-string v3, "layoutTranslationSection"

    .line 285
    .line 286
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    if-eqz v3, :cond_c

    .line 294
    .line 295
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->getActiveTranslationLabel()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 300
    .line 301
    .line 302
    move-result v3

    .line 303
    if-eqz v3, :cond_c

    .line 304
    .line 305
    if-eqz v0, :cond_b

    .line 306
    .line 307
    goto :goto_7

    .line 308
    :cond_b
    const/16 v3, 0x8

    .line 309
    .line 310
    goto :goto_8

    .line 311
    :cond_c
    :goto_7
    move v3, v12

    .line 312
    :goto_8
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    iget-object v2, v2, Lw1/e;->N:Landroid/widget/TextView;

    .line 320
    .line 321
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    iget-object v1, v1, Lw1/e;->M:Landroid/widget/TextView;

    .line 329
    .line 330
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 331
    .line 332
    .line 333
    move-result v2

    .line 334
    if-eqz v2, :cond_d

    .line 335
    .line 336
    const v2, 0x7f12014b

    .line 337
    .line 338
    .line 339
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    goto :goto_9

    .line 344
    :cond_d
    new-instance v9, LA1/e;

    .line 345
    .line 346
    const/16 v2, 0x10

    .line 347
    .line 348
    invoke-direct {v9, v2}, LA1/e;-><init>(I)V

    .line 349
    .line 350
    .line 351
    const/16 v10, 0x1e

    .line 352
    .line 353
    const-string v6, ", "

    .line 354
    .line 355
    const/4 v7, 0x0

    .line 356
    const/4 v8, 0x0

    .line 357
    invoke-static/range {v5 .. v10}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    const v3, 0x7f120147

    .line 366
    .line 367
    .line 368
    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    :goto_9
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    .line 374
    .line 375
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    const v2, 0x7f120155

    .line 380
    .line 381
    .line 382
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    const-string v3, "getString(...)"

    .line 387
    .line 388
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    new-instance v2, Ljava/util/ArrayList;

    .line 395
    .line 396
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 397
    .line 398
    .line 399
    move-result v3

    .line 400
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 404
    .line 405
    .line 406
    move-result v3

    .line 407
    move v6, v12

    .line 408
    :goto_a
    if-ge v6, v3, :cond_e

    .line 409
    .line 410
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v7

    .line 414
    add-int/lit8 v6, v6, 0x1

    .line 415
    .line 416
    check-cast v7, Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;

    .line 417
    .line 418
    invoke-static {v7}, LC1/X0;->b(Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v7

    .line 422
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    goto :goto_a

    .line 426
    :cond_e
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 427
    .line 428
    .line 429
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    new-instance v2, Landroid/widget/ArrayAdapter;

    .line 434
    .line 435
    const v3, 0x1090008

    .line 436
    .line 437
    .line 438
    invoke-direct {v2, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 439
    .line 440
    .line 441
    const v1, 0x1090009

    .line 442
    .line 443
    .line 444
    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    iget-object v1, v1, Lw1/e;->v:Landroid/widget/Spinner;

    .line 452
    .line 453
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->getActiveTranslationLabel()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->getActiveTranslationCode()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    const-string v3, "packages"

    .line 465
    .line 466
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    const-string v3, "activeLabel"

    .line 470
    .line 471
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    const-string v3, "activeCode"

    .line 475
    .line 476
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 480
    .line 481
    .line 482
    move-result v3

    .line 483
    move v6, v12

    .line 484
    move v7, v6

    .line 485
    :goto_b
    const/4 v8, -0x1

    .line 486
    if-ge v7, v3, :cond_10

    .line 487
    .line 488
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v9

    .line 492
    add-int/lit8 v7, v7, 0x1

    .line 493
    .line 494
    check-cast v9, Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;

    .line 495
    .line 496
    invoke-virtual {v9}, Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;->getLabel()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v10

    .line 500
    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 501
    .line 502
    .line 503
    move-result v10

    .line 504
    if-eqz v10, :cond_f

    .line 505
    .line 506
    invoke-virtual {v9}, Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;->getCode()Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v9

    .line 510
    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    move-result v9

    .line 514
    if-eqz v9, :cond_f

    .line 515
    .line 516
    goto :goto_c

    .line 517
    :cond_f
    add-int/lit8 v6, v6, 0x1

    .line 518
    .line 519
    goto :goto_b

    .line 520
    :cond_10
    move v6, v8

    .line 521
    :goto_c
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 522
    .line 523
    .line 524
    move-result-object v3

    .line 525
    if-ltz v6, :cond_11

    .line 526
    .line 527
    goto :goto_d

    .line 528
    :cond_11
    move-object v3, v4

    .line 529
    :goto_d
    if-eqz v3, :cond_12

    .line 530
    .line 531
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 532
    .line 533
    .line 534
    move-result v1

    .line 535
    goto :goto_f

    .line 536
    :cond_12
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 537
    .line 538
    .line 539
    move-result v3

    .line 540
    move v6, v12

    .line 541
    move v7, v6

    .line 542
    :goto_e
    if-ge v7, v3, :cond_14

    .line 543
    .line 544
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v9

    .line 548
    add-int/lit8 v7, v7, 0x1

    .line 549
    .line 550
    check-cast v9, Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;

    .line 551
    .line 552
    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 553
    .line 554
    .line 555
    move-result v10

    .line 556
    if-eqz v10, :cond_13

    .line 557
    .line 558
    invoke-virtual {v9}, Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;->getLabel()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v9

    .line 562
    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 563
    .line 564
    .line 565
    move-result v9

    .line 566
    if-eqz v9, :cond_13

    .line 567
    .line 568
    move v1, v6

    .line 569
    goto :goto_f

    .line 570
    :cond_13
    add-int/lit8 v6, v6, 0x1

    .line 571
    .line 572
    goto :goto_e

    .line 573
    :cond_14
    move v1, v8

    .line 574
    :goto_f
    iget-boolean v2, p0, Lcom/minhub/gamehub/hub/GameDetailActivity;->m:Z

    .line 575
    .line 576
    if-nez v2, :cond_1a

    .line 577
    .line 578
    iget-object v2, p0, Lcom/minhub/gamehub/hub/GameDetailActivity;->o:Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;

    .line 579
    .line 580
    if-eqz v2, :cond_18

    .line 581
    .line 582
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 583
    .line 584
    .line 585
    move-result v3

    .line 586
    if-eqz v3, :cond_15

    .line 587
    .line 588
    goto :goto_10

    .line 589
    :cond_15
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 590
    .line 591
    .line 592
    move-result v3

    .line 593
    move v6, v12

    .line 594
    :cond_16
    if-ge v6, v3, :cond_17

    .line 595
    .line 596
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    move-result-object v7

    .line 600
    add-int/lit8 v6, v6, 0x1

    .line 601
    .line 602
    check-cast v7, Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;

    .line 603
    .line 604
    invoke-virtual {v7}, Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;->getUrl()Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v7

    .line 608
    invoke-virtual {v2}, Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;->getUrl()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v9

    .line 612
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 613
    .line 614
    .line 615
    move-result v7

    .line 616
    if-eqz v7, :cond_16

    .line 617
    .line 618
    goto :goto_11

    .line 619
    :cond_17
    :goto_10
    move-object v2, v4

    .line 620
    :goto_11
    if-nez v2, :cond_19

    .line 621
    .line 622
    :cond_18
    invoke-static {v5, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 623
    .line 624
    .line 625
    move-result-object v1

    .line 626
    move-object v2, v1

    .line 627
    check-cast v2, Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;

    .line 628
    .line 629
    :cond_19
    iput-object v2, p0, Lcom/minhub/gamehub/hub/GameDetailActivity;->o:Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;

    .line 630
    .line 631
    :cond_1a
    iget-object v1, p0, Lcom/minhub/gamehub/hub/GameDetailActivity;->o:Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;

    .line 632
    .line 633
    if-eqz v1, :cond_1e

    .line 634
    .line 635
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 636
    .line 637
    .line 638
    move-result v2

    .line 639
    move v3, v12

    .line 640
    move v6, v3

    .line 641
    :goto_12
    if-ge v6, v2, :cond_1c

    .line 642
    .line 643
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 644
    .line 645
    .line 646
    move-result-object v7

    .line 647
    add-int/lit8 v6, v6, 0x1

    .line 648
    .line 649
    check-cast v7, Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;

    .line 650
    .line 651
    invoke-virtual {v7}, Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;->getUrl()Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v7

    .line 655
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;->getUrl()Ljava/lang/String;

    .line 656
    .line 657
    .line 658
    move-result-object v9

    .line 659
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 660
    .line 661
    .line 662
    move-result v7

    .line 663
    if-eqz v7, :cond_1b

    .line 664
    .line 665
    move v8, v3

    .line 666
    goto :goto_13

    .line 667
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    .line 668
    .line 669
    goto :goto_12

    .line 670
    :cond_1c
    :goto_13
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 671
    .line 672
    .line 673
    move-result-object v1

    .line 674
    if-ltz v8, :cond_1d

    .line 675
    .line 676
    move-object v4, v1

    .line 677
    :cond_1d
    if-eqz v4, :cond_1e

    .line 678
    .line 679
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 680
    .line 681
    .line 682
    move-result v1

    .line 683
    add-int/2addr v1, v11

    .line 684
    goto :goto_14

    .line 685
    :cond_1e
    move v1, v12

    .line 686
    :goto_14
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 687
    .line 688
    .line 689
    move-result-object v2

    .line 690
    iget-object v2, v2, Lw1/e;->v:Landroid/widget/Spinner;

    .line 691
    .line 692
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 693
    .line 694
    .line 695
    move-result v2

    .line 696
    if-eq v2, v1, :cond_1f

    .line 697
    .line 698
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 699
    .line 700
    .line 701
    move-result-object v2

    .line 702
    iget-object v2, v2, Lw1/e;->v:Landroid/widget/Spinner;

    .line 703
    .line 704
    invoke-virtual {v2, v1, v12}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    .line 705
    .line 706
    .line 707
    :cond_1f
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 708
    .line 709
    .line 710
    move-result-object v1

    .line 711
    iget-object v1, v1, Lw1/e;->v:Landroid/widget/Spinner;

    .line 712
    .line 713
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 714
    .line 715
    .line 716
    move-result v2

    .line 717
    if-nez v2, :cond_20

    .line 718
    .line 719
    iget-boolean v2, p0, Lcom/minhub/gamehub/hub/GameDetailActivity;->m:Z

    .line 720
    .line 721
    if-nez v2, :cond_20

    .line 722
    .line 723
    move v2, v11

    .line 724
    goto :goto_15

    .line 725
    :cond_20
    move v2, v12

    .line 726
    :goto_15
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 727
    .line 728
    .line 729
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 730
    .line 731
    .line 732
    move-result-object v1

    .line 733
    iget-object v1, v1, Lw1/e;->v:Landroid/widget/Spinner;

    .line 734
    .line 735
    new-instance v2, LC1/S0;

    .line 736
    .line 737
    invoke-direct {v2, p0, v5, v12}, LC1/S0;-><init>(Ljava/lang/Object;Ljava/util/List;I)V

    .line 738
    .line 739
    .line 740
    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 741
    .line 742
    .line 743
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 744
    .line 745
    .line 746
    move-result-object v1

    .line 747
    iget-object v1, v1, Lw1/e;->g:Landroid/widget/Button;

    .line 748
    .line 749
    iget-object v2, p0, Lcom/minhub/gamehub/hub/GameDetailActivity;->o:Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;

    .line 750
    .line 751
    if-eqz v2, :cond_21

    .line 752
    .line 753
    iget-boolean v2, p0, Lcom/minhub/gamehub/hub/GameDetailActivity;->m:Z

    .line 754
    .line 755
    if-nez v2, :cond_21

    .line 756
    .line 757
    move v2, v11

    .line 758
    goto :goto_16

    .line 759
    :cond_21
    move v2, v12

    .line 760
    :goto_16
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 761
    .line 762
    .line 763
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 764
    .line 765
    .line 766
    move-result-object v1

    .line 767
    iget-object v1, v1, Lw1/e;->h:Landroid/widget/Button;

    .line 768
    .line 769
    if-eqz v0, :cond_22

    .line 770
    .line 771
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->getActiveTranslationLabel()Ljava/lang/String;

    .line 772
    .line 773
    .line 774
    move-result-object v0

    .line 775
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 776
    .line 777
    .line 778
    move-result v0

    .line 779
    if-nez v0, :cond_22

    .line 780
    .line 781
    iget-boolean v0, p0, Lcom/minhub/gamehub/hub/GameDetailActivity;->m:Z

    .line 782
    .line 783
    if-nez v0, :cond_22

    .line 784
    .line 785
    goto :goto_17

    .line 786
    :cond_22
    move v11, v12

    .line 787
    :goto_17
    invoke-virtual {v1, v11}, Landroid/view/View;->setEnabled(Z)V

    .line 788
    .line 789
    .line 790
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 791
    .line 792
    .line 793
    move-result-object v0

    .line 794
    iget-object v0, v0, Lw1/e;->g:Landroid/widget/Button;

    .line 795
    .line 796
    new-instance v1, LC1/n0;

    .line 797
    .line 798
    const/4 v2, 0x4

    .line 799
    invoke-direct {v1, p0, p1, v2}, LC1/n0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;I)V

    .line 800
    .line 801
    .line 802
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 803
    .line 804
    .line 805
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 806
    .line 807
    .line 808
    move-result-object v0

    .line 809
    iget-object v0, v0, Lw1/e;->h:Landroid/widget/Button;

    .line 810
    .line 811
    new-instance v1, LC1/n0;

    .line 812
    .line 813
    const/4 v2, 0x5

    .line 814
    invoke-direct {v1, p0, p1, v2}, LC1/n0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;I)V

    .line 815
    .line 816
    .line 817
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 818
    .line 819
    .line 820
    return-void
.end method

.method public static d0(Ljava/io/File;[B)Z
    .locals 6

    .line 1
    const-string v0, "target"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "bytes"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const-string v3, "."

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    new-instance v2, Ljava/io/File;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    const-string v5, ".minhub-orig"

    .line 35
    .line 36
    invoke-static {v3, v4, v5}, LE/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v4, 0x4

    .line 51
    :try_start_0
    invoke-static {p0, v2, v1, v4}, Lkotlin/io/FilesKt;->d(Ljava/io/File;Ljava/io/File;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 56
    .line 57
    .line 58
    :goto_0
    new-instance v2, Ljava/io/File;

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    const-string v5, ".minhub-tmp"

    .line 65
    .line 66
    invoke-static {v3, v4, v5}, LE/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    .line 74
    .line 75
    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    .line 77
    .line 78
    :try_start_2
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V

    .line 89
    .line 90
    .line 91
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    .line 93
    const/4 p1, 0x0

    .line 94
    :try_start_3
    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    const/4 v0, 0x1

    .line 102
    if-eqz p1, :cond_3

    .line 103
    .line 104
    :goto_1
    move v1, v0

    .line 105
    goto :goto_2

    .line 106
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-eqz p1, :cond_4

    .line 111
    .line 112
    invoke-virtual {v2, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    if-eqz p0, :cond_4

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :catchall_0
    move-exception p0

    .line 124
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 125
    :catchall_1
    move-exception p1

    .line 126
    :try_start_5
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 127
    .line 128
    .line 129
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 130
    :catch_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 131
    .line 132
    .line 133
    :goto_2
    return v1
.end method

.method public static j(Lcom/bumptech/glide/b;Ljava/util/ArrayList;)Lcom/bumptech/glide/i;
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/bumptech/glide/b;->b:Lg0/b;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/bumptech/glide/b;->e:Lg0/g;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/bumptech/glide/b;->d:Lcom/bumptech/glide/e;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iget-object v0, v0, Lcom/bumptech/glide/e;->h:LA1/b;

    .line 14
    .line 15
    new-instance v4, Lcom/bumptech/glide/i;

    .line 16
    .line 17
    invoke-direct {v4}, Lcom/bumptech/glide/i;-><init>()V

    .line 18
    .line 19
    .line 20
    const-class v5, Lc0/d;

    .line 21
    .line 22
    const-string v6, "BitmapDrawable"

    .line 23
    .line 24
    const-class v7, Ljava/lang/String;

    .line 25
    .line 26
    const-string v8, "legacy_append"

    .line 27
    .line 28
    const-class v9, Lq0/b;

    .line 29
    .line 30
    const-string v10, "Animation"

    .line 31
    .line 32
    const-class v11, [B

    .line 33
    .line 34
    const-class v12, Ljava/lang/Integer;

    .line 35
    .line 36
    const-class v13, Landroid/graphics/drawable/BitmapDrawable;

    .line 37
    .line 38
    const-string v14, "Bitmap"

    .line 39
    .line 40
    const-class v15, Ljava/io/File;

    .line 41
    .line 42
    move-object/from16 p0, v11

    .line 43
    .line 44
    const-class v11, Landroid/os/ParcelFileDescriptor;

    .line 45
    .line 46
    move-object/from16 v16, v7

    .line 47
    .line 48
    const-class v7, Landroid/content/res/AssetFileDescriptor;

    .line 49
    .line 50
    move-object/from16 v17, v12

    .line 51
    .line 52
    const-class v12, Ljava/nio/ByteBuffer;

    .line 53
    .line 54
    move-object/from16 v18, v15

    .line 55
    .line 56
    const-class v15, Landroid/graphics/drawable/Drawable;

    .line 57
    .line 58
    move-object/from16 v19, v8

    .line 59
    .line 60
    const-class v8, Landroid/graphics/Bitmap;

    .line 61
    .line 62
    move-object/from16 v20, v5

    .line 63
    .line 64
    const-class v5, Landroid/net/Uri;

    .line 65
    .line 66
    move-object/from16 v21, v5

    .line 67
    .line 68
    const-class v5, Ljava/io/InputStream;

    .line 69
    .line 70
    move-object/from16 v22, v9

    .line 71
    .line 72
    new-instance v9, Lm0/m;

    .line 73
    .line 74
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 75
    .line 76
    .line 77
    move-object/from16 v23, v6

    .line 78
    .line 79
    iget-object v6, v4, Lcom/bumptech/glide/i;->g:LY/c;

    .line 80
    .line 81
    monitor-enter v6

    .line 82
    move-object/from16 v24, v13

    .line 83
    .line 84
    :try_start_0
    iget-object v13, v6, LY/c;->a:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 87
    .line 88
    .line 89
    monitor-exit v6

    .line 90
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 91
    .line 92
    const/16 v9, 0x1b

    .line 93
    .line 94
    if-lt v6, v9, :cond_0

    .line 95
    .line 96
    new-instance v9, Lm0/u;

    .line 97
    .line 98
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 99
    .line 100
    .line 101
    iget-object v13, v4, Lcom/bumptech/glide/i;->g:LY/c;

    .line 102
    .line 103
    monitor-enter v13

    .line 104
    move-object/from16 v25, v7

    .line 105
    .line 106
    :try_start_1
    iget-object v7, v13, LY/c;->a:Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    .line 110
    .line 111
    monitor-exit v13

    .line 112
    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    .line 114
    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    throw v0

    .line 116
    :cond_0
    move-object/from16 v25, v7

    .line 117
    .line 118
    :goto_0
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    invoke-virtual {v4}, Lcom/bumptech/glide/i;->e()Ljava/util/ArrayList;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    new-instance v13, Lq0/a;

    .line 127
    .line 128
    invoke-direct {v13, v3, v9, v1, v2}, Lq0/a;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lg0/b;Lg0/g;)V

    .line 129
    .line 130
    .line 131
    move-object/from16 v26, v13

    .line 132
    .line 133
    new-instance v13, Lm0/E;

    .line 134
    .line 135
    move-object/from16 v27, v7

    .line 136
    .line 137
    new-instance v7, Lcom/google/android/material/datepicker/c;

    .line 138
    .line 139
    move-object/from16 v28, v11

    .line 140
    .line 141
    const/16 v11, 0x19

    .line 142
    .line 143
    invoke-direct {v7, v11}, Lcom/google/android/material/datepicker/c;-><init>(I)V

    .line 144
    .line 145
    .line 146
    invoke-direct {v13, v1, v7}, Lm0/E;-><init>(Lg0/b;Lcom/google/android/material/datepicker/c;)V

    .line 147
    .line 148
    .line 149
    new-instance v7, Lm0/q;

    .line 150
    .line 151
    invoke-virtual {v4}, Lcom/bumptech/glide/i;->e()Ljava/util/ArrayList;

    .line 152
    .line 153
    .line 154
    move-result-object v11

    .line 155
    move-object/from16 v29, v13

    .line 156
    .line 157
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 158
    .line 159
    .line 160
    move-result-object v13

    .line 161
    invoke-direct {v7, v11, v13, v1, v2}, Lm0/q;-><init>(Ljava/util/ArrayList;Landroid/util/DisplayMetrics;Lg0/b;Lg0/g;)V

    .line 162
    .line 163
    .line 164
    const/16 v11, 0x1c

    .line 165
    .line 166
    if-lt v6, v11, :cond_1

    .line 167
    .line 168
    const-class v13, Lcom/bumptech/glide/c;

    .line 169
    .line 170
    iget-object v0, v0, LA1/b;->b:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v0, Ljava/util/Map;

    .line 173
    .line 174
    invoke-interface {v0, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_1

    .line 179
    .line 180
    new-instance v0, Lm0/g;

    .line 181
    .line 182
    const/4 v13, 0x1

    .line 183
    invoke-direct {v0, v13}, Lm0/g;-><init>(I)V

    .line 184
    .line 185
    .line 186
    new-instance v13, Lm0/g;

    .line 187
    .line 188
    const/4 v11, 0x0

    .line 189
    invoke-direct {v13, v11}, Lm0/g;-><init>(I)V

    .line 190
    .line 191
    .line 192
    :goto_1
    const/16 v11, 0x1c

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_1
    new-instance v13, Lm0/f;

    .line 196
    .line 197
    const/4 v0, 0x0

    .line 198
    invoke-direct {v13, v7, v0}, Lm0/f;-><init>(Lm0/q;I)V

    .line 199
    .line 200
    .line 201
    new-instance v0, Lm0/a;

    .line 202
    .line 203
    const/4 v11, 0x2

    .line 204
    invoke-direct {v0, v11, v7, v2}, Lm0/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    goto :goto_1

    .line 208
    :goto_2
    if-lt v6, v11, :cond_2

    .line 209
    .line 210
    new-instance v11, Lo0/b;

    .line 211
    .line 212
    move/from16 v30, v6

    .line 213
    .line 214
    new-instance v6, LA1/d;

    .line 215
    .line 216
    move-object/from16 v31, v1

    .line 217
    .line 218
    const/16 v1, 0x12

    .line 219
    .line 220
    invoke-direct {v6, v1, v9, v2}, LA1/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    const/4 v1, 0x1

    .line 224
    invoke-direct {v11, v6, v1}, Lo0/b;-><init>(LA1/d;I)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v4, v10, v5, v15, v11}, Lcom/bumptech/glide/i;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ld0/k;)V

    .line 228
    .line 229
    .line 230
    new-instance v1, Lo0/b;

    .line 231
    .line 232
    new-instance v6, LA1/d;

    .line 233
    .line 234
    const/16 v11, 0x12

    .line 235
    .line 236
    invoke-direct {v6, v11, v9, v2}, LA1/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    const/4 v11, 0x0

    .line 240
    invoke-direct {v1, v6, v11}, Lo0/b;-><init>(LA1/d;I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v4, v10, v12, v15, v1}, Lcom/bumptech/glide/i;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ld0/k;)V

    .line 244
    .line 245
    .line 246
    goto :goto_3

    .line 247
    :cond_2
    move-object/from16 v31, v1

    .line 248
    .line 249
    move/from16 v30, v6

    .line 250
    .line 251
    :goto_3
    new-instance v1, Lo0/d;

    .line 252
    .line 253
    invoke-direct {v1, v3}, Lo0/d;-><init>(Landroid/content/Context;)V

    .line 254
    .line 255
    .line 256
    new-instance v6, Lm0/b;

    .line 257
    .line 258
    invoke-direct {v6, v2}, Lm0/b;-><init>(Lg0/g;)V

    .line 259
    .line 260
    .line 261
    new-instance v11, Le/f;

    .line 262
    .line 263
    move-object/from16 v32, v3

    .line 264
    .line 265
    const/4 v3, 0x2

    .line 266
    invoke-direct {v11, v3}, Le/f;-><init>(I)V

    .line 267
    .line 268
    .line 269
    new-instance v3, Lr0/c;

    .line 270
    .line 271
    move-object/from16 v33, v11

    .line 272
    .line 273
    const/4 v11, 0x1

    .line 274
    invoke-direct {v3, v11}, Lr0/c;-><init>(I)V

    .line 275
    .line 276
    .line 277
    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 278
    .line 279
    .line 280
    move-result-object v11

    .line 281
    move-object/from16 v34, v3

    .line 282
    .line 283
    new-instance v3, Lj0/B;

    .line 284
    .line 285
    move-object/from16 v35, v11

    .line 286
    .line 287
    const/4 v11, 0x5

    .line 288
    invoke-direct {v3, v11}, Lj0/B;-><init>(I)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v4, v12, v3}, Lcom/bumptech/glide/i;->a(Ljava/lang/Class;Ld0/b;)V

    .line 292
    .line 293
    .line 294
    new-instance v3, Lj/h;

    .line 295
    .line 296
    const/4 v11, 0x3

    .line 297
    invoke-direct {v3, v11, v2}, Lj/h;-><init>(ILjava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v4, v5, v3}, Lcom/bumptech/glide/i;->a(Ljava/lang/Class;Ld0/b;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v4, v14, v12, v8, v13}, Lcom/bumptech/glide/i;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ld0/k;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v4, v14, v5, v8, v0}, Lcom/bumptech/glide/i;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ld0/k;)V

    .line 307
    .line 308
    .line 309
    const-string v3, "robolectric"

    .line 310
    .line 311
    sget-object v11, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 312
    .line 313
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v3

    .line 317
    if-nez v3, :cond_3

    .line 318
    .line 319
    new-instance v3, Lm0/f;

    .line 320
    .line 321
    move-object/from16 v36, v11

    .line 322
    .line 323
    const/4 v11, 0x1

    .line 324
    invoke-direct {v3, v7, v11}, Lm0/f;-><init>(Lm0/q;I)V

    .line 325
    .line 326
    .line 327
    move-object/from16 v7, v28

    .line 328
    .line 329
    invoke-virtual {v4, v14, v7, v8, v3}, Lcom/bumptech/glide/i;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ld0/k;)V

    .line 330
    .line 331
    .line 332
    goto :goto_4

    .line 333
    :cond_3
    move-object/from16 v36, v11

    .line 334
    .line 335
    move-object/from16 v7, v28

    .line 336
    .line 337
    :goto_4
    new-instance v3, Lm0/E;

    .line 338
    .line 339
    new-instance v11, Lcom/google/android/material/datepicker/c;

    .line 340
    .line 341
    move-object/from16 v28, v1

    .line 342
    .line 343
    const/16 v1, 0x16

    .line 344
    .line 345
    invoke-direct {v11, v1}, Lcom/google/android/material/datepicker/c;-><init>(I)V

    .line 346
    .line 347
    .line 348
    move-object/from16 v1, v31

    .line 349
    .line 350
    invoke-direct {v3, v1, v11}, Lm0/E;-><init>(Lg0/b;Lcom/google/android/material/datepicker/c;)V

    .line 351
    .line 352
    .line 353
    move-object/from16 v11, v25

    .line 354
    .line 355
    invoke-virtual {v4, v14, v11, v8, v3}, Lcom/bumptech/glide/i;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ld0/k;)V

    .line 356
    .line 357
    .line 358
    move-object/from16 v3, v29

    .line 359
    .line 360
    invoke-virtual {v4, v14, v7, v8, v3}, Lcom/bumptech/glide/i;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ld0/k;)V

    .line 361
    .line 362
    .line 363
    sget-object v11, Lj0/B;->c:Lj0/B;

    .line 364
    .line 365
    invoke-virtual {v4, v8, v8, v11}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 366
    .line 367
    .line 368
    move-object/from16 v29, v15

    .line 369
    .line 370
    new-instance v15, Lm0/B;

    .line 371
    .line 372
    move-object/from16 v31, v11

    .line 373
    .line 374
    const/4 v11, 0x0

    .line 375
    invoke-direct {v15, v11}, Lm0/B;-><init>(I)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v4, v14, v8, v8, v15}, Lcom/bumptech/glide/i;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ld0/k;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v4, v8, v6}, Lcom/bumptech/glide/i;->b(Ljava/lang/Class;Ld0/l;)V

    .line 382
    .line 383
    .line 384
    new-instance v11, Lm0/a;

    .line 385
    .line 386
    move-object/from16 v15, v27

    .line 387
    .line 388
    invoke-direct {v11, v15, v13}, Lm0/a;-><init>(Landroid/content/res/Resources;Ld0/k;)V

    .line 389
    .line 390
    .line 391
    move-object/from16 v13, v23

    .line 392
    .line 393
    move-object/from16 v23, v8

    .line 394
    .line 395
    move-object/from16 v8, v24

    .line 396
    .line 397
    invoke-virtual {v4, v13, v12, v8, v11}, Lcom/bumptech/glide/i;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ld0/k;)V

    .line 398
    .line 399
    .line 400
    new-instance v11, Lm0/a;

    .line 401
    .line 402
    invoke-direct {v11, v15, v0}, Lm0/a;-><init>(Landroid/content/res/Resources;Ld0/k;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v4, v13, v5, v8, v11}, Lcom/bumptech/glide/i;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ld0/k;)V

    .line 406
    .line 407
    .line 408
    new-instance v0, Lm0/a;

    .line 409
    .line 410
    invoke-direct {v0, v15, v3}, Lm0/a;-><init>(Landroid/content/res/Resources;Ld0/k;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v4, v13, v7, v8, v0}, Lcom/bumptech/glide/i;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ld0/k;)V

    .line 414
    .line 415
    .line 416
    new-instance v0, LA1/d;

    .line 417
    .line 418
    const/16 v3, 0x10

    .line 419
    .line 420
    invoke-direct {v0, v3, v1, v6}, LA1/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v4, v8, v0}, Lcom/bumptech/glide/i;->b(Ljava/lang/Class;Ld0/l;)V

    .line 424
    .line 425
    .line 426
    new-instance v0, Lq0/h;

    .line 427
    .line 428
    move-object/from16 v3, v26

    .line 429
    .line 430
    invoke-direct {v0, v9, v3, v2}, Lq0/h;-><init>(Ljava/util/ArrayList;Lq0/a;Lg0/g;)V

    .line 431
    .line 432
    .line 433
    move-object/from16 v6, v22

    .line 434
    .line 435
    invoke-virtual {v4, v10, v5, v6, v0}, Lcom/bumptech/glide/i;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ld0/k;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v4, v10, v12, v6, v3}, Lcom/bumptech/glide/i;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ld0/k;)V

    .line 439
    .line 440
    .line 441
    new-instance v0, Lcom/google/android/material/datepicker/c;

    .line 442
    .line 443
    const/16 v3, 0x1d

    .line 444
    .line 445
    invoke-direct {v0, v3}, Lcom/google/android/material/datepicker/c;-><init>(I)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v4, v6, v0}, Lcom/bumptech/glide/i;->b(Ljava/lang/Class;Ld0/l;)V

    .line 449
    .line 450
    .line 451
    move-object/from16 v0, v20

    .line 452
    .line 453
    move-object/from16 v3, v31

    .line 454
    .line 455
    invoke-virtual {v4, v0, v0, v3}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 456
    .line 457
    .line 458
    new-instance v9, Lm0/c;

    .line 459
    .line 460
    invoke-direct {v9, v1}, Lm0/c;-><init>(Lg0/b;)V

    .line 461
    .line 462
    .line 463
    move-object/from16 v10, v23

    .line 464
    .line 465
    invoke-virtual {v4, v14, v0, v10, v9}, Lcom/bumptech/glide/i;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ld0/k;)V

    .line 466
    .line 467
    .line 468
    move-object/from16 v0, v19

    .line 469
    .line 470
    move-object/from16 v11, v21

    .line 471
    .line 472
    move-object/from16 v13, v28

    .line 473
    .line 474
    move-object/from16 v9, v29

    .line 475
    .line 476
    invoke-virtual {v4, v0, v11, v9, v13}, Lcom/bumptech/glide/i;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ld0/k;)V

    .line 477
    .line 478
    .line 479
    new-instance v14, Lm0/a;

    .line 480
    .line 481
    const/4 v6, 0x1

    .line 482
    invoke-direct {v14, v6, v13, v1}, Lm0/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v4, v0, v11, v10, v14}, Lcom/bumptech/glide/i;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ld0/k;)V

    .line 486
    .line 487
    .line 488
    new-instance v6, Lcom/bumptech/glide/load/data/h;

    .line 489
    .line 490
    const/4 v13, 0x2

    .line 491
    invoke-direct {v6, v13}, Lcom/bumptech/glide/load/data/h;-><init>(I)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v4, v6}, Lcom/bumptech/glide/i;->h(Lcom/bumptech/glide/load/data/f;)V

    .line 495
    .line 496
    .line 497
    new-instance v6, Lj0/B;

    .line 498
    .line 499
    const/4 v13, 0x6

    .line 500
    invoke-direct {v6, v13}, Lj0/B;-><init>(I)V

    .line 501
    .line 502
    .line 503
    move-object/from16 v13, v18

    .line 504
    .line 505
    invoke-virtual {v4, v13, v12, v6}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 506
    .line 507
    .line 508
    new-instance v6, Lj0/f;

    .line 509
    .line 510
    new-instance v14, Lj0/B;

    .line 511
    .line 512
    move-object/from16 v31, v1

    .line 513
    .line 514
    const/16 v1, 0x9

    .line 515
    .line 516
    invoke-direct {v14, v1}, Lj0/B;-><init>(I)V

    .line 517
    .line 518
    .line 519
    invoke-direct {v6, v14}, Lg0/a;-><init>(Lj0/B;)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v4, v13, v5, v6}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 523
    .line 524
    .line 525
    new-instance v1, Lm0/B;

    .line 526
    .line 527
    const/4 v6, 0x2

    .line 528
    invoke-direct {v1, v6}, Lm0/B;-><init>(I)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v4, v0, v13, v13, v1}, Lcom/bumptech/glide/i;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ld0/k;)V

    .line 532
    .line 533
    .line 534
    new-instance v1, Lj0/f;

    .line 535
    .line 536
    new-instance v6, Lj0/B;

    .line 537
    .line 538
    const/16 v14, 0x8

    .line 539
    .line 540
    invoke-direct {v6, v14}, Lj0/B;-><init>(I)V

    .line 541
    .line 542
    .line 543
    invoke-direct {v1, v6}, Lg0/a;-><init>(Lj0/B;)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v4, v13, v7, v1}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v4, v13, v13, v3}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 550
    .line 551
    .line 552
    new-instance v1, Lcom/bumptech/glide/load/data/m;

    .line 553
    .line 554
    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/data/m;-><init>(Lg0/g;)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v4, v1}, Lcom/bumptech/glide/i;->h(Lcom/bumptech/glide/load/data/f;)V

    .line 558
    .line 559
    .line 560
    const-string v1, "robolectric"

    .line 561
    .line 562
    move-object/from16 v2, v36

    .line 563
    .line 564
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    move-result v1

    .line 568
    if-nez v1, :cond_4

    .line 569
    .line 570
    new-instance v1, Lcom/bumptech/glide/load/data/h;

    .line 571
    .line 572
    const/4 v2, 0x1

    .line 573
    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/data/h;-><init>(I)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {v4, v1}, Lcom/bumptech/glide/i;->h(Lcom/bumptech/glide/load/data/f;)V

    .line 577
    .line 578
    .line 579
    :cond_4
    new-instance v1, LA1/h;

    .line 580
    .line 581
    const/4 v2, 0x7

    .line 582
    const/4 v6, 0x0

    .line 583
    move-object/from16 v14, v32

    .line 584
    .line 585
    invoke-direct {v1, v14, v2, v6}, LA1/h;-><init>(Landroid/content/Context;IZ)V

    .line 586
    .line 587
    .line 588
    new-instance v2, LA1/h;

    .line 589
    .line 590
    const/4 v6, 0x5

    .line 591
    move-object/from16 v24, v8

    .line 592
    .line 593
    const/4 v8, 0x0

    .line 594
    invoke-direct {v2, v14, v6, v8}, LA1/h;-><init>(Landroid/content/Context;IZ)V

    .line 595
    .line 596
    .line 597
    new-instance v6, LA1/h;

    .line 598
    .line 599
    const/4 v8, 0x6

    .line 600
    move-object/from16 v23, v10

    .line 601
    .line 602
    const/4 v10, 0x0

    .line 603
    invoke-direct {v6, v14, v8, v10}, LA1/h;-><init>(Landroid/content/Context;IZ)V

    .line 604
    .line 605
    .line 606
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 607
    .line 608
    invoke-virtual {v4, v8, v5, v1}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 609
    .line 610
    .line 611
    move-object/from16 v10, v17

    .line 612
    .line 613
    invoke-virtual {v4, v10, v5, v1}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 614
    .line 615
    .line 616
    move-object/from16 v1, v25

    .line 617
    .line 618
    invoke-virtual {v4, v8, v1, v2}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 619
    .line 620
    .line 621
    invoke-virtual {v4, v10, v1, v2}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {v4, v8, v9, v6}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 625
    .line 626
    .line 627
    invoke-virtual {v4, v10, v9, v6}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 628
    .line 629
    .line 630
    new-instance v2, LA1/h;

    .line 631
    .line 632
    const/16 v6, 0xa

    .line 633
    .line 634
    move-object/from16 v19, v0

    .line 635
    .line 636
    const/4 v0, 0x0

    .line 637
    invoke-direct {v2, v14, v6, v0}, LA1/h;-><init>(Landroid/content/Context;IZ)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {v4, v11, v5, v2}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 641
    .line 642
    .line 643
    new-instance v0, LA1/h;

    .line 644
    .line 645
    const/16 v2, 0x9

    .line 646
    .line 647
    const/4 v6, 0x0

    .line 648
    invoke-direct {v0, v14, v2, v6}, LA1/h;-><init>(Landroid/content/Context;IZ)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v4, v11, v1, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 652
    .line 653
    .line 654
    new-instance v0, Lj0/z;

    .line 655
    .line 656
    const/4 v2, 0x2

    .line 657
    invoke-direct {v0, v15, v2}, Lj0/z;-><init>(Landroid/content/res/Resources;I)V

    .line 658
    .line 659
    .line 660
    new-instance v2, Lj0/z;

    .line 661
    .line 662
    invoke-direct {v2, v15, v6}, Lj0/z;-><init>(Landroid/content/res/Resources;I)V

    .line 663
    .line 664
    .line 665
    new-instance v6, Lj0/z;

    .line 666
    .line 667
    move-object/from16 v29, v9

    .line 668
    .line 669
    const/4 v9, 0x1

    .line 670
    invoke-direct {v6, v15, v9}, Lj0/z;-><init>(Landroid/content/res/Resources;I)V

    .line 671
    .line 672
    .line 673
    invoke-virtual {v4, v10, v11, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 674
    .line 675
    .line 676
    invoke-virtual {v4, v8, v11, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 677
    .line 678
    .line 679
    invoke-virtual {v4, v10, v1, v2}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 680
    .line 681
    .line 682
    invoke-virtual {v4, v8, v1, v2}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 683
    .line 684
    .line 685
    invoke-virtual {v4, v10, v5, v6}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 686
    .line 687
    .line 688
    invoke-virtual {v4, v8, v5, v6}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 689
    .line 690
    .line 691
    new-instance v0, Lj/h;

    .line 692
    .line 693
    const/4 v2, 0x1

    .line 694
    invoke-direct {v0, v2}, Lj/h;-><init>(I)V

    .line 695
    .line 696
    .line 697
    move-object/from16 v2, v16

    .line 698
    .line 699
    invoke-virtual {v4, v2, v5, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 700
    .line 701
    .line 702
    new-instance v0, Lj/h;

    .line 703
    .line 704
    const/4 v6, 0x1

    .line 705
    invoke-direct {v0, v6}, Lj/h;-><init>(I)V

    .line 706
    .line 707
    .line 708
    invoke-virtual {v4, v11, v5, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 709
    .line 710
    .line 711
    new-instance v0, Lj0/B;

    .line 712
    .line 713
    const/16 v6, 0xc

    .line 714
    .line 715
    invoke-direct {v0, v6}, Lj0/B;-><init>(I)V

    .line 716
    .line 717
    .line 718
    invoke-virtual {v4, v2, v5, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 719
    .line 720
    .line 721
    new-instance v0, Lj0/B;

    .line 722
    .line 723
    const/16 v6, 0xb

    .line 724
    .line 725
    invoke-direct {v0, v6}, Lj0/B;-><init>(I)V

    .line 726
    .line 727
    .line 728
    invoke-virtual {v4, v2, v7, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 729
    .line 730
    .line 731
    new-instance v0, Lj0/B;

    .line 732
    .line 733
    const/16 v6, 0xa

    .line 734
    .line 735
    invoke-direct {v0, v6}, Lj0/B;-><init>(I)V

    .line 736
    .line 737
    .line 738
    invoke-virtual {v4, v2, v1, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 739
    .line 740
    .line 741
    new-instance v0, Lj0/a;

    .line 742
    .line 743
    invoke-virtual {v14}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 744
    .line 745
    .line 746
    move-result-object v2

    .line 747
    const/4 v6, 0x1

    .line 748
    invoke-direct {v0, v2, v6}, Lj0/a;-><init>(Landroid/content/res/AssetManager;I)V

    .line 749
    .line 750
    .line 751
    invoke-virtual {v4, v11, v5, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 752
    .line 753
    .line 754
    new-instance v0, Lj0/a;

    .line 755
    .line 756
    invoke-virtual {v14}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 757
    .line 758
    .line 759
    move-result-object v2

    .line 760
    const/4 v6, 0x0

    .line 761
    invoke-direct {v0, v2, v6}, Lj0/a;-><init>(Landroid/content/res/AssetManager;I)V

    .line 762
    .line 763
    .line 764
    invoke-virtual {v4, v11, v1, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 765
    .line 766
    .line 767
    new-instance v0, LA1/h;

    .line 768
    .line 769
    const/16 v2, 0xb

    .line 770
    .line 771
    invoke-direct {v0, v14, v2, v6}, LA1/h;-><init>(Landroid/content/Context;IZ)V

    .line 772
    .line 773
    .line 774
    invoke-virtual {v4, v11, v5, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 775
    .line 776
    .line 777
    new-instance v0, LA1/h;

    .line 778
    .line 779
    const/16 v2, 0xc

    .line 780
    .line 781
    invoke-direct {v0, v14, v2, v6}, LA1/h;-><init>(Landroid/content/Context;IZ)V

    .line 782
    .line 783
    .line 784
    invoke-virtual {v4, v11, v5, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 785
    .line 786
    .line 787
    const/16 v0, 0x1d

    .line 788
    .line 789
    move/from16 v2, v30

    .line 790
    .line 791
    if-lt v2, v0, :cond_5

    .line 792
    .line 793
    new-instance v0, Lk0/b;

    .line 794
    .line 795
    invoke-direct {v0, v14, v5}, Le/y;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 796
    .line 797
    .line 798
    invoke-virtual {v4, v11, v5, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 799
    .line 800
    .line 801
    new-instance v0, Lk0/b;

    .line 802
    .line 803
    invoke-direct {v0, v14, v7}, Le/y;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 804
    .line 805
    .line 806
    invoke-virtual {v4, v11, v7, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 807
    .line 808
    .line 809
    :cond_5
    new-instance v0, Lj0/D;

    .line 810
    .line 811
    const/4 v2, 0x2

    .line 812
    move-object/from16 v6, v35

    .line 813
    .line 814
    invoke-direct {v0, v6, v2}, Lj0/D;-><init>(Landroid/content/ContentResolver;I)V

    .line 815
    .line 816
    .line 817
    invoke-virtual {v4, v11, v5, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 818
    .line 819
    .line 820
    new-instance v0, Lj0/D;

    .line 821
    .line 822
    const/4 v2, 0x1

    .line 823
    invoke-direct {v0, v6, v2}, Lj0/D;-><init>(Landroid/content/ContentResolver;I)V

    .line 824
    .line 825
    .line 826
    invoke-virtual {v4, v11, v7, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 827
    .line 828
    .line 829
    new-instance v0, Lj0/D;

    .line 830
    .line 831
    const/4 v2, 0x0

    .line 832
    invoke-direct {v0, v6, v2}, Lj0/D;-><init>(Landroid/content/ContentResolver;I)V

    .line 833
    .line 834
    .line 835
    invoke-virtual {v4, v11, v1, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 836
    .line 837
    .line 838
    new-instance v0, Lj0/B;

    .line 839
    .line 840
    const/16 v1, 0xd

    .line 841
    .line 842
    invoke-direct {v0, v1}, Lj0/B;-><init>(I)V

    .line 843
    .line 844
    .line 845
    invoke-virtual {v4, v11, v5, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 846
    .line 847
    .line 848
    const-class v0, Ljava/net/URL;

    .line 849
    .line 850
    new-instance v1, Lcom/google/android/material/datepicker/c;

    .line 851
    .line 852
    const/16 v2, 0xb

    .line 853
    .line 854
    invoke-direct {v1, v2}, Lcom/google/android/material/datepicker/c;-><init>(I)V

    .line 855
    .line 856
    .line 857
    invoke-virtual {v4, v0, v5, v1}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 858
    .line 859
    .line 860
    new-instance v0, LA1/h;

    .line 861
    .line 862
    const/16 v1, 0x8

    .line 863
    .line 864
    const/4 v2, 0x0

    .line 865
    invoke-direct {v0, v14, v1, v2}, LA1/h;-><init>(Landroid/content/Context;IZ)V

    .line 866
    .line 867
    .line 868
    invoke-virtual {v4, v11, v13, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 869
    .line 870
    .line 871
    const-class v0, Lj0/g;

    .line 872
    .line 873
    new-instance v1, Lj/h;

    .line 874
    .line 875
    const/4 v2, 0x7

    .line 876
    invoke-direct {v1, v2}, Lj/h;-><init>(I)V

    .line 877
    .line 878
    .line 879
    invoke-virtual {v4, v0, v5, v1}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 880
    .line 881
    .line 882
    new-instance v0, Lj0/B;

    .line 883
    .line 884
    const/4 v1, 0x2

    .line 885
    invoke-direct {v0, v1}, Lj0/B;-><init>(I)V

    .line 886
    .line 887
    .line 888
    move-object/from16 v1, p0

    .line 889
    .line 890
    invoke-virtual {v4, v1, v12, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 891
    .line 892
    .line 893
    new-instance v0, Lj0/B;

    .line 894
    .line 895
    const/4 v2, 0x4

    .line 896
    invoke-direct {v0, v2}, Lj0/B;-><init>(I)V

    .line 897
    .line 898
    .line 899
    invoke-virtual {v4, v1, v5, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 900
    .line 901
    .line 902
    invoke-virtual {v4, v11, v11, v3}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 903
    .line 904
    .line 905
    move-object/from16 v9, v29

    .line 906
    .line 907
    invoke-virtual {v4, v9, v9, v3}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;Lj0/r;)V

    .line 908
    .line 909
    .line 910
    new-instance v0, Lm0/B;

    .line 911
    .line 912
    const/4 v2, 0x1

    .line 913
    invoke-direct {v0, v2}, Lm0/B;-><init>(I)V

    .line 914
    .line 915
    .line 916
    move-object/from16 v2, v19

    .line 917
    .line 918
    invoke-virtual {v4, v2, v9, v9, v0}, Lcom/bumptech/glide/i;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ld0/k;)V

    .line 919
    .line 920
    .line 921
    new-instance v0, Lj0/z;

    .line 922
    .line 923
    const/4 v2, 0x3

    .line 924
    invoke-direct {v0, v15, v2}, Lj0/z;-><init>(Landroid/content/res/Resources;I)V

    .line 925
    .line 926
    .line 927
    move-object/from16 v10, v23

    .line 928
    .line 929
    move-object/from16 v8, v24

    .line 930
    .line 931
    invoke-virtual {v4, v10, v8, v0}, Lcom/bumptech/glide/i;->i(Ljava/lang/Class;Ljava/lang/Class;Lr0/a;)V

    .line 932
    .line 933
    .line 934
    move-object/from16 v0, v33

    .line 935
    .line 936
    invoke-virtual {v4, v10, v1, v0}, Lcom/bumptech/glide/i;->i(Ljava/lang/Class;Ljava/lang/Class;Lr0/a;)V

    .line 937
    .line 938
    .line 939
    new-instance v2, LF/b;

    .line 940
    .line 941
    const/16 v3, 0xd

    .line 942
    .line 943
    move-object/from16 v5, v31

    .line 944
    .line 945
    move-object/from16 v6, v34

    .line 946
    .line 947
    invoke-direct {v2, v5, v0, v6, v3}, LF/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 948
    .line 949
    .line 950
    invoke-virtual {v4, v9, v1, v2}, Lcom/bumptech/glide/i;->i(Ljava/lang/Class;Ljava/lang/Class;Lr0/a;)V

    .line 951
    .line 952
    .line 953
    move-object/from16 v0, v22

    .line 954
    .line 955
    invoke-virtual {v4, v0, v1, v6}, Lcom/bumptech/glide/i;->i(Ljava/lang/Class;Ljava/lang/Class;Lr0/a;)V

    .line 956
    .line 957
    .line 958
    new-instance v0, Lm0/E;

    .line 959
    .line 960
    new-instance v1, Lcom/google/android/material/datepicker/c;

    .line 961
    .line 962
    const/16 v2, 0x17

    .line 963
    .line 964
    invoke-direct {v1, v2}, Lcom/google/android/material/datepicker/c;-><init>(I)V

    .line 965
    .line 966
    .line 967
    invoke-direct {v0, v5, v1}, Lm0/E;-><init>(Lg0/b;Lcom/google/android/material/datepicker/c;)V

    .line 968
    .line 969
    .line 970
    const-class v1, Ljava/nio/ByteBuffer;

    .line 971
    .line 972
    const-string v2, "legacy_append"

    .line 973
    .line 974
    invoke-virtual {v4, v2, v1, v10, v0}, Lcom/bumptech/glide/i;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ld0/k;)V

    .line 975
    .line 976
    .line 977
    new-instance v1, Lm0/a;

    .line 978
    .line 979
    invoke-direct {v1, v15, v0}, Lm0/a;-><init>(Landroid/content/res/Resources;Ld0/k;)V

    .line 980
    .line 981
    .line 982
    const-class v0, Ljava/nio/ByteBuffer;

    .line 983
    .line 984
    const-string v2, "legacy_append"

    .line 985
    .line 986
    invoke-virtual {v4, v2, v0, v8, v1}, Lcom/bumptech/glide/i;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ld0/k;)V

    .line 987
    .line 988
    .line 989
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 990
    .line 991
    .line 992
    move-result-object v0

    .line 993
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 994
    .line 995
    .line 996
    move-result v1

    .line 997
    if-nez v1, :cond_6

    .line 998
    .line 999
    return-object v4

    .line 1000
    :cond_6
    invoke-static {v0}, LE/b;->g(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v0

    .line 1004
    throw v0

    .line 1005
    :catchall_1
    move-exception v0

    .line 1006
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1007
    throw v0
.end method

.method public static k(Ljava/lang/String;FF)Lx1/a;
    .locals 12

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    sparse-switch v0, :sswitch_data_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :sswitch_0
    const-string v0, "btn_start"

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :sswitch_1
    const-string v0, "btn_sta"

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v0, Lx1/a;

    .line 33
    .line 34
    const v10, 0x3f0ccccd    # 0.55f

    .line 35
    .line 36
    .line 37
    const/4 v11, 0x1

    .line 38
    const-string v2, "Esc"

    .line 39
    .line 40
    const-string v3, "Escape"

    .line 41
    .line 42
    const/16 v6, 0x3c

    .line 43
    .line 44
    const/16 v7, 0x18

    .line 45
    .line 46
    const-string v8, "ROUNDED"

    .line 47
    .line 48
    const-string v9, "#888888"

    .line 49
    .line 50
    move-object v1, p0

    .line 51
    move v4, p1

    .line 52
    move v5, p2

    .line 53
    invoke-direct/range {v0 .. v11}, Lx1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFIILjava/lang/String;Ljava/lang/String;FZ)V

    .line 54
    .line 55
    .line 56
    return-object v0

    .line 57
    :sswitch_2
    const-string v0, "btn_sel"

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :sswitch_3
    const-string v0, "btn_select"

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    :cond_1
    new-instance v0, Lx1/a;

    .line 75
    .line 76
    const v10, 0x3f0ccccd    # 0.55f

    .line 77
    .line 78
    .line 79
    const/4 v11, 0x1

    .line 80
    const-string v2, "Enter"

    .line 81
    .line 82
    const-string v3, "Enter"

    .line 83
    .line 84
    const/16 v6, 0x3c

    .line 85
    .line 86
    const/16 v7, 0x18

    .line 87
    .line 88
    const-string v8, "ROUNDED"

    .line 89
    .line 90
    const-string v9, "#888888"

    .line 91
    .line 92
    move-object v1, p0

    .line 93
    move v4, p1

    .line 94
    move v5, p2

    .line 95
    invoke-direct/range {v0 .. v11}, Lx1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFIILjava/lang/String;Ljava/lang/String;FZ)V

    .line 96
    .line 97
    .line 98
    return-object v0

    .line 99
    :cond_2
    :goto_0
    sget-object v0, LB1/i;->a:Ljava/util/List;

    .line 100
    .line 101
    invoke-static {p0}, LB1/i;->a(Ljava/lang/String;)LB1/x;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    if-eqz v0, :cond_a

    .line 106
    .line 107
    iget-object v1, v0, LB1/x;->h:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    const v3, -0x94486c4

    .line 114
    .line 115
    .line 116
    const-string v4, "JOYSTICK"

    .line 117
    .line 118
    const-string v5, "DPAD"

    .line 119
    .line 120
    const-string v6, "CIRCLE"

    .line 121
    .line 122
    if-eq v2, v3, :cond_6

    .line 123
    .line 124
    const v3, 0x201daf

    .line 125
    .line 126
    .line 127
    if-eq v2, v3, :cond_5

    .line 128
    .line 129
    const v3, 0x767fb0d0

    .line 130
    .line 131
    .line 132
    if-eq v2, v3, :cond_3

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_3
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-nez v2, :cond_4

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_4
    const v2, 0x3f59999a    # 0.85f

    .line 143
    .line 144
    .line 145
    :goto_1
    move v10, v2

    .line 146
    goto :goto_3

    .line 147
    :cond_5
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-nez v2, :cond_7

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_6
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-nez v2, :cond_7

    .line 159
    .line 160
    :goto_2
    const v2, 0x3f0ccccd    # 0.55f

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_7
    const v2, 0x3f19999a    # 0.6f

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :goto_3
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-nez v2, :cond_9

    .line 173
    .line 174
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-eqz v2, :cond_8

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_8
    move-object v8, v1

    .line 182
    goto :goto_5

    .line 183
    :cond_9
    :goto_4
    move-object v8, v6

    .line 184
    :goto_5
    new-instance v1, Lx1/a;

    .line 185
    .line 186
    iget-object v2, v0, LB1/x;->b:Ljava/lang/String;

    .line 187
    .line 188
    iget-object v3, v0, LB1/x;->e:Ljava/lang/String;

    .line 189
    .line 190
    iget v6, v0, LB1/x;->f:I

    .line 191
    .line 192
    iget v7, v0, LB1/x;->g:I

    .line 193
    .line 194
    iget-object v9, v0, LB1/x;->i:Ljava/lang/String;

    .line 195
    .line 196
    const/4 v11, 0x1

    .line 197
    move v4, p1

    .line 198
    move v5, p2

    .line 199
    move-object v0, v1

    .line 200
    move-object v1, p0

    .line 201
    invoke-direct/range {v0 .. v11}, Lx1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFIILjava/lang/String;Ljava/lang/String;FZ)V

    .line 202
    .line 203
    .line 204
    return-object v0

    .line 205
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    sparse-switch v0, :sswitch_data_1

    .line 210
    .line 211
    .line 212
    goto/16 :goto_6

    .line 213
    .line 214
    :sswitch_4
    const-string v0, "btn_y"

    .line 215
    .line 216
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-nez v0, :cond_b

    .line 221
    .line 222
    goto/16 :goto_6

    .line 223
    .line 224
    :cond_b
    new-instance v0, Lx1/a;

    .line 225
    .line 226
    const v10, 0x3f59999a    # 0.85f

    .line 227
    .line 228
    .line 229
    const/4 v11, 0x1

    .line 230
    const-string v2, "Y"

    .line 231
    .line 232
    const-string v3, "s"

    .line 233
    .line 234
    const/16 v6, 0x2a

    .line 235
    .line 236
    const/16 v7, 0x2a

    .line 237
    .line 238
    const-string v8, "CIRCLE"

    .line 239
    .line 240
    const-string v9, "#F59E0B"

    .line 241
    .line 242
    move-object v1, p0

    .line 243
    move v4, p1

    .line 244
    move v5, p2

    .line 245
    invoke-direct/range {v0 .. v11}, Lx1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFIILjava/lang/String;Ljava/lang/String;FZ)V

    .line 246
    .line 247
    .line 248
    return-object v0

    .line 249
    :sswitch_5
    const-string v0, "btn_x"

    .line 250
    .line 251
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-nez v0, :cond_c

    .line 256
    .line 257
    goto/16 :goto_6

    .line 258
    .line 259
    :cond_c
    new-instance v0, Lx1/a;

    .line 260
    .line 261
    const v10, 0x3f59999a    # 0.85f

    .line 262
    .line 263
    .line 264
    const/4 v11, 0x1

    .line 265
    const-string v2, "X"

    .line 266
    .line 267
    const-string v3, "a"

    .line 268
    .line 269
    const/16 v6, 0x2a

    .line 270
    .line 271
    const/16 v7, 0x2a

    .line 272
    .line 273
    const-string v8, "CIRCLE"

    .line 274
    .line 275
    const-string v9, "#3B82F6"

    .line 276
    .line 277
    move-object v1, p0

    .line 278
    move v4, p1

    .line 279
    move v5, p2

    .line 280
    invoke-direct/range {v0 .. v11}, Lx1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFIILjava/lang/String;Ljava/lang/String;FZ)V

    .line 281
    .line 282
    .line 283
    return-object v0

    .line 284
    :sswitch_6
    const-string v0, "btn_b"

    .line 285
    .line 286
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    if-nez v0, :cond_d

    .line 291
    .line 292
    goto/16 :goto_6

    .line 293
    .line 294
    :cond_d
    new-instance v0, Lx1/a;

    .line 295
    .line 296
    const v10, 0x3f59999a    # 0.85f

    .line 297
    .line 298
    .line 299
    const/4 v11, 0x1

    .line 300
    const-string v2, "B"

    .line 301
    .line 302
    const-string v3, "x"

    .line 303
    .line 304
    const/16 v6, 0x2a

    .line 305
    .line 306
    const/16 v7, 0x2a

    .line 307
    .line 308
    const-string v8, "CIRCLE"

    .line 309
    .line 310
    const-string v9, "#EF4444"

    .line 311
    .line 312
    move-object v1, p0

    .line 313
    move v4, p1

    .line 314
    move v5, p2

    .line 315
    invoke-direct/range {v0 .. v11}, Lx1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFIILjava/lang/String;Ljava/lang/String;FZ)V

    .line 316
    .line 317
    .line 318
    return-object v0

    .line 319
    :sswitch_7
    const-string v0, "btn_a"

    .line 320
    .line 321
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v0

    .line 325
    if-nez v0, :cond_e

    .line 326
    .line 327
    goto/16 :goto_6

    .line 328
    .line 329
    :cond_e
    new-instance v0, Lx1/a;

    .line 330
    .line 331
    const v10, 0x3f59999a    # 0.85f

    .line 332
    .line 333
    .line 334
    const/4 v11, 0x1

    .line 335
    const-string v2, "A"

    .line 336
    .line 337
    const-string v3, "z"

    .line 338
    .line 339
    const/16 v6, 0x2a

    .line 340
    .line 341
    const/16 v7, 0x2a

    .line 342
    .line 343
    const-string v8, "CIRCLE"

    .line 344
    .line 345
    const-string v9, "#22C55E"

    .line 346
    .line 347
    move-object v1, p0

    .line 348
    move v4, p1

    .line 349
    move v5, p2

    .line 350
    invoke-direct/range {v0 .. v11}, Lx1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFIILjava/lang/String;Ljava/lang/String;FZ)V

    .line 351
    .line 352
    .line 353
    return-object v0

    .line 354
    :sswitch_8
    const-string v0, "dpad"

    .line 355
    .line 356
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    if-nez v0, :cond_f

    .line 361
    .line 362
    goto/16 :goto_6

    .line 363
    .line 364
    :cond_f
    new-instance v0, Lx1/a;

    .line 365
    .line 366
    const v10, 0x3f19999a    # 0.6f

    .line 367
    .line 368
    .line 369
    const/4 v11, 0x1

    .line 370
    const-string v2, "D-Pad"

    .line 371
    .line 372
    const-string v3, ""

    .line 373
    .line 374
    const/16 v6, 0x6c

    .line 375
    .line 376
    const/16 v7, 0x6c

    .line 377
    .line 378
    const-string v8, "CIRCLE"

    .line 379
    .line 380
    const-string v9, "#666666"

    .line 381
    .line 382
    move-object v1, p0

    .line 383
    move v4, p1

    .line 384
    move v5, p2

    .line 385
    invoke-direct/range {v0 .. v11}, Lx1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFIILjava/lang/String;Ljava/lang/String;FZ)V

    .line 386
    .line 387
    .line 388
    return-object v0

    .line 389
    :sswitch_9
    const-string v0, "joystick"

    .line 390
    .line 391
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    move-result v0

    .line 395
    if-nez v0, :cond_10

    .line 396
    .line 397
    goto/16 :goto_6

    .line 398
    .line 399
    :cond_10
    new-instance v0, Lx1/a;

    .line 400
    .line 401
    const v10, 0x3f19999a    # 0.6f

    .line 402
    .line 403
    .line 404
    const/4 v11, 0x1

    .line 405
    const-string v2, "Joystick"

    .line 406
    .line 407
    const-string v3, ""

    .line 408
    .line 409
    const/16 v6, 0x64

    .line 410
    .line 411
    const/16 v7, 0x64

    .line 412
    .line 413
    const-string v8, "CIRCLE"

    .line 414
    .line 415
    const-string v9, "#666666"

    .line 416
    .line 417
    move-object v1, p0

    .line 418
    move v4, p1

    .line 419
    move v5, p2

    .line 420
    invoke-direct/range {v0 .. v11}, Lx1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFIILjava/lang/String;Ljava/lang/String;FZ)V

    .line 421
    .line 422
    .line 423
    return-object v0

    .line 424
    :sswitch_a
    const-string v0, "btn_rt"

    .line 425
    .line 426
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    move-result v0

    .line 430
    if-nez v0, :cond_11

    .line 431
    .line 432
    goto/16 :goto_6

    .line 433
    .line 434
    :cond_11
    new-instance v0, Lx1/a;

    .line 435
    .line 436
    const v10, 0x3f0ccccd    # 0.55f

    .line 437
    .line 438
    .line 439
    const/4 v11, 0x1

    .line 440
    const-string v2, "RT"

    .line 441
    .line 442
    const-string v3, "2"

    .line 443
    .line 444
    const/16 v6, 0x36

    .line 445
    .line 446
    const/16 v7, 0x1c

    .line 447
    .line 448
    const-string v8, "ROUNDED"

    .line 449
    .line 450
    const-string v9, "#888888"

    .line 451
    .line 452
    move-object v1, p0

    .line 453
    move v4, p1

    .line 454
    move v5, p2

    .line 455
    invoke-direct/range {v0 .. v11}, Lx1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFIILjava/lang/String;Ljava/lang/String;FZ)V

    .line 456
    .line 457
    .line 458
    return-object v0

    .line 459
    :sswitch_b
    const-string v0, "btn_rb"

    .line 460
    .line 461
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result v0

    .line 465
    if-nez v0, :cond_12

    .line 466
    .line 467
    goto :goto_6

    .line 468
    :cond_12
    new-instance v0, Lx1/a;

    .line 469
    .line 470
    const v10, 0x3f0ccccd    # 0.55f

    .line 471
    .line 472
    .line 473
    const/4 v11, 0x1

    .line 474
    const-string v2, "RB"

    .line 475
    .line 476
    const-string v3, "w"

    .line 477
    .line 478
    const/16 v6, 0x36

    .line 479
    .line 480
    const/16 v7, 0x1c

    .line 481
    .line 482
    const-string v8, "ROUNDED"

    .line 483
    .line 484
    const-string v9, "#888888"

    .line 485
    .line 486
    move-object v1, p0

    .line 487
    move v4, p1

    .line 488
    move v5, p2

    .line 489
    invoke-direct/range {v0 .. v11}, Lx1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFIILjava/lang/String;Ljava/lang/String;FZ)V

    .line 490
    .line 491
    .line 492
    return-object v0

    .line 493
    :sswitch_c
    const-string v0, "btn_lt"

    .line 494
    .line 495
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 496
    .line 497
    .line 498
    move-result v0

    .line 499
    if-nez v0, :cond_13

    .line 500
    .line 501
    goto :goto_6

    .line 502
    :cond_13
    new-instance v0, Lx1/a;

    .line 503
    .line 504
    const v10, 0x3f0ccccd    # 0.55f

    .line 505
    .line 506
    .line 507
    const/4 v11, 0x1

    .line 508
    const-string v2, "LT"

    .line 509
    .line 510
    const-string v3, "1"

    .line 511
    .line 512
    const/16 v6, 0x36

    .line 513
    .line 514
    const/16 v7, 0x1c

    .line 515
    .line 516
    const-string v8, "ROUNDED"

    .line 517
    .line 518
    const-string v9, "#888888"

    .line 519
    .line 520
    move-object v1, p0

    .line 521
    move v4, p1

    .line 522
    move v5, p2

    .line 523
    invoke-direct/range {v0 .. v11}, Lx1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFIILjava/lang/String;Ljava/lang/String;FZ)V

    .line 524
    .line 525
    .line 526
    return-object v0

    .line 527
    :sswitch_d
    const-string v0, "btn_lb"

    .line 528
    .line 529
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 530
    .line 531
    .line 532
    move-result v0

    .line 533
    if-nez v0, :cond_14

    .line 534
    .line 535
    :goto_6
    new-instance v0, Lx1/a;

    .line 536
    .line 537
    const-string v2, "key_"

    .line 538
    .line 539
    invoke-static {p0, v2}, Lkotlin/text/StringsKt;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v3

    .line 543
    invoke-static {p0, v2}, Lkotlin/text/StringsKt;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v2

    .line 547
    const v10, 0x3f333333    # 0.7f

    .line 548
    .line 549
    .line 550
    const/4 v11, 0x1

    .line 551
    const/16 v6, 0x28

    .line 552
    .line 553
    const/16 v7, 0x20

    .line 554
    .line 555
    const-string v8, "ROUNDED"

    .line 556
    .line 557
    const-string v9, "#666666"

    .line 558
    .line 559
    move-object v1, v3

    .line 560
    move-object v3, v2

    .line 561
    move-object v2, v1

    .line 562
    move-object v1, p0

    .line 563
    move v4, p1

    .line 564
    move v5, p2

    .line 565
    invoke-direct/range {v0 .. v11}, Lx1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFIILjava/lang/String;Ljava/lang/String;FZ)V

    .line 566
    .line 567
    .line 568
    return-object v0

    .line 569
    :cond_14
    new-instance v0, Lx1/a;

    .line 570
    .line 571
    const v10, 0x3f0ccccd    # 0.55f

    .line 572
    .line 573
    .line 574
    const/4 v11, 0x1

    .line 575
    const-string v2, "LB"

    .line 576
    .line 577
    const-string v3, "q"

    .line 578
    .line 579
    const/16 v6, 0x36

    .line 580
    .line 581
    const/16 v7, 0x1c

    .line 582
    .line 583
    const-string v8, "ROUNDED"

    .line 584
    .line 585
    const-string v9, "#888888"

    .line 586
    .line 587
    move-object v1, p0

    .line 588
    move v4, p1

    .line 589
    move v5, p2

    .line 590
    invoke-direct/range {v0 .. v11}, Lx1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFIILjava/lang/String;Ljava/lang/String;FZ)V

    .line 591
    .line 592
    .line 593
    return-object v0

    .line 594
    nop

    .line 595
    :sswitch_data_0
    .sparse-switch
        -0x3eafebc1 -> :sswitch_3
        0xc4fdbf7 -> :sswitch_2
        0xc4fddbd -> :sswitch_1
        0x37cf70bf -> :sswitch_0
    .end sparse-switch

    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    :sswitch_data_1
    .sparse-switch
        -0x522ef9c7 -> :sswitch_d
        -0x522ef9b5 -> :sswitch_c
        -0x522ef90d -> :sswitch_b
        -0x522ef8fb -> :sswitch_a
        -0x37ea76c4 -> :sswitch_9
        0x2f25af -> :sswitch_8
        0x59b633e -> :sswitch_7
        0x59b633f -> :sswitch_6
        0x59b6355 -> :sswitch_5
        0x59b6356 -> :sswitch_4
    .end sparse-switch
.end method

.method public static l(Landroid/content/Context;Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;)Landroid/content/Intent;
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Landroid/content/Intent;

    .line 12
    .line 13
    const-class v2, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;

    .line 14
    .line 15
    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance p0, Li1/l;

    .line 22
    .line 23
    invoke-direct {p0}, Li1/l;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Li1/l;->g(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string p1, "toJson(...)"

    .line 31
    .line 32
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string p1, "extra_item_json"

    .line 36
    .line 37
    invoke-virtual {v1, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string p1, "putExtra(...)"

    .line 42
    .line 43
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object p0
.end method

.method public static m()Ljava/util/List;
    .locals 5

    .line 1
    const v0, 0x3e051eb8    # 0.13f

    .line 2
    .line 3
    .line 4
    const v1, 0x3f4ccccd    # 0.8f

    .line 5
    .line 6
    .line 7
    const-string v2, "dpad"

    .line 8
    .line 9
    invoke-static {v2, v0, v1}, Lcom/bumptech/glide/d;->k(Ljava/lang/String;FF)Lx1/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "btn_sel"

    .line 14
    .line 15
    const v2, 0x3f47ae14    # 0.78f

    .line 16
    .line 17
    .line 18
    const v3, 0x3f6147ae    # 0.88f

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/d;->k(Ljava/lang/String;FF)Lx1/a;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "btn_sta"

    .line 26
    .line 27
    const v4, 0x3f666666    # 0.9f

    .line 28
    .line 29
    .line 30
    invoke-static {v2, v4, v3}, Lcom/bumptech/glide/d;->k(Ljava/lang/String;FF)Lx1/a;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    filled-new-array {v0, v1, v2}, [Lx1/a;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method

.method public static final n(Lcom/minhub/gamehub/hub/GameDetailActivity;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "e"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, ""

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    move-object v1, v2

    .line 28
    :cond_0
    const-string v3, ": "

    .line 29
    .line 30
    invoke-static {v0, v3, v1}, Lkotlin/collections/unsigned/a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v7, "certificate"

    .line 35
    .line 36
    const-string v8, "OPENSSL_internal"

    .line 37
    .line 38
    const-string v3, "SSL"

    .line 39
    .line 40
    const-string v4, "TLSV1_ALERT"

    .line 41
    .line 42
    const-string v5, "CertPathValidator"

    .line 43
    .line 44
    const-string v6, "Trust anchor"

    .line 45
    .line 46
    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string v3, "getString(...)"

    .line 55
    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_3

    .line 74
    .line 75
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    check-cast v4, Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {v0, v4}, Lkotlin/text/StringsKt;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_2

    .line 86
    .line 87
    const p1, 0x7f120425

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-object p0

    .line 98
    :cond_3
    :goto_0
    instance-of v0, p1, Ljava/net/UnknownHostException;

    .line 99
    .line 100
    if-nez v0, :cond_7

    .line 101
    .line 102
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    .line 103
    .line 104
    if-nez v0, :cond_7

    .line 105
    .line 106
    instance-of v0, p1, Ljava/net/ConnectException;

    .line 107
    .line 108
    if-eqz v0, :cond_4

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    if-nez p0, :cond_5

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_5
    move-object v2, p0

    .line 119
    :goto_1
    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    if-eqz p0, :cond_6

    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    const-string p1, "getSimpleName(...)"

    .line 134
    .line 135
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    return-object p0

    .line 139
    :cond_6
    return-object v2

    .line 140
    :cond_7
    :goto_2
    const p1, 0x7f120426

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    return-object p0
.end method

.method public static o(Landroid/content/Context;LR1/a;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "minhub-update.apk"

    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 20
    .line 21
    .line 22
    :cond_0
    const-string v1, "download"

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "null cannot be cast to non-null type android.app.DownloadManager"

    .line 29
    .line 30
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    check-cast v1, Landroid/app/DownloadManager;

    .line 34
    .line 35
    new-instance v2, Landroid/app/DownloadManager$Request;

    .line 36
    .line 37
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-direct {v2, p2}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p1, LR1/a;->b:Ljava/lang/String;

    .line 45
    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v3, "MinHub "

    .line 49
    .line 50
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {v2, p1}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const-string p2, "\u0110ang t\u1ea3i b\u1ea3n c\u1eadp nh\u1eadt\u2026"

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const/4 p2, 0x1

    .line 71
    invoke-virtual {p1, p2}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {p1, p2}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const-string p2, "application/vnd.android.package-archive"

    .line 84
    .line 85
    invoke-virtual {p1, p2}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {v1, p1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    .line 90
    .line 91
    .line 92
    move-result-wide p1

    .line 93
    new-instance v2, LR1/b;

    .line 94
    .line 95
    invoke-direct {v2, p1, p2, v1, v0}, LR1/b;-><init>(JLandroid/app/DownloadManager;Ljava/io/File;)V

    .line 96
    .line 97
    .line 98
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 99
    .line 100
    const/16 p2, 0x21

    .line 101
    .line 102
    const-string v0, "android.intent.action.DOWNLOAD_COMPLETE"

    .line 103
    .line 104
    if-lt p1, p2, :cond_1

    .line 105
    .line 106
    new-instance p1, Landroid/content/IntentFilter;

    .line 107
    .line 108
    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-static {p0, v2, p1}, LA/a;->u(Landroid/content/Context;LR1/b;Landroid/content/IntentFilter;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_1
    new-instance p1, Landroid/content/IntentFilter;

    .line 116
    .line 117
    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method public static r(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static s(Landroid/content/Context;Lk/Z0;I)Landroid/content/res/ColorStateList;
    .locals 2

    .line 1
    iget-object v0, p1, Lk/Z0;->b:Landroid/content/res/TypedArray;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    invoke-virtual {p1, p2}, Lk/Z0;->a(I)Landroid/content/res/ColorStateList;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static t(Landroid/graphics/drawable/Drawable;)Landroid/content/res/ColorStateList;
    .locals 2

    .line 1
    instance-of v0, p0, Landroid/graphics/drawable/ColorDrawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    const/16 v1, 0x1d

    .line 19
    .line 20
    if-lt v0, v1, :cond_1

    .line 21
    .line 22
    invoke-static {p0}, LP0/a;->u(Landroid/graphics/drawable/Drawable;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-static {p0}, LP0/a;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/ColorStateListDrawable;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {p0}, LP0/a;->c(Landroid/graphics/drawable/ColorStateListDrawable;)Landroid/content/res/ColorStateList;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_1
    const/4 p0, 0x0

    .line 38
    return-object p0
.end method

.method public static v(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    invoke-static {}, Lk/P0;->b()Lk/P0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Lk/P0;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static w(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {p0, v0}, Lcom/bumptech/glide/d;->v(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static x()Ljava/util/Set;
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "android.text.EmojiConsistency"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getEmojiConsistencySet"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    check-cast v0, Ljava/util/Set;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    instance-of v2, v2, [I

    .line 40
    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    :cond_2
    return-object v0

    .line 46
    :catchall_0
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 47
    .line 48
    return-object v0
.end method

.method public static z(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, ""

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-eq p1, v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x7

    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    packed-switch p1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "Unknown error code: "

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v0, "BiometricUtils"

    .line 30
    .line 31
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    const p1, 0x7f1200b8

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :pswitch_0
    const p1, 0x7f120103

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :pswitch_1
    const p1, 0x7f120105

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    :pswitch_2
    const p1, 0x7f120106

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :cond_1
    :pswitch_3
    const p1, 0x7f120104

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    :cond_2
    const p1, 0x7f120102

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract A()I
.end method

.method public abstract B()Ljava/util/List;
.end method

.method public abstract C()I
.end method

.method public abstract D()I
.end method

.method public abstract E(Landroid/view/View;)I
.end method

.method public abstract F(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)I
.end method

.method public abstract G(Ljava/lang/Class;)[Ljava/lang/String;
.end method

.method public abstract H()I
.end method

.method public abstract J(F)Z
.end method

.method public abstract L(Ljava/lang/Class;)Z
.end method

.method public abstract M(Landroid/view/View;)Z
.end method

.method public abstract N(FF)Z
.end method

.method public abstract U(Ls/f;Ls/f;)V
.end method

.method public abstract V(Ls/f;Ljava/lang/Thread;)V
.end method

.method public abstract X(Landroid/view/View;F)Z
.end method

.method public abstract b0(Landroid/view/ViewGroup$MarginLayoutParams;I)V
.end method

.method public abstract c0(Landroid/view/ViewGroup$MarginLayoutParams;II)V
.end method

.method public abstract e(Landroid/view/ViewGroup$MarginLayoutParams;)I
.end method

.method public abstract f(I)F
.end method

.method public abstract g(Ls/g;Ls/c;Ls/c;)Z
.end method

.method public abstract h(Ls/g;Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public abstract i(Ls/g;Ls/f;Ls/f;)Z
.end method

.method public abstract p(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;
.end method

.method public abstract q(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
.end method

.method public abstract u(Landroid/view/ViewGroup$MarginLayoutParams;)I
.end method

.method public abstract y()I
.end method
