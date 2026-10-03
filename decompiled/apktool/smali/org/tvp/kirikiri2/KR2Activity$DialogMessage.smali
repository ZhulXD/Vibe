.class Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tvp/kirikiri2/KR2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogMessage"
.end annotation


# instance fields
.field public Buttons:[Ljava/lang/String;

.field public Text:Ljava/lang/String;

.field public TextEditor:Landroid/widget/EditText;

.field public Title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->TextEditor:Landroid/widget/EditText;

    .line 6
    .line 7
    return-void
.end method

.method private buildStyledDialog()Landroid/app/Dialog;
    .locals 6

    .line 1
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0c0045

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const v1, 0x7f09035d

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/widget/TextView;

    .line 23
    .line 24
    const v2, 0x7f09035c

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroid/widget/TextView;

    .line 32
    .line 33
    iget-object v3, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->Title:Ljava/lang/String;

    .line 34
    .line 35
    const-string v4, ""

    .line 36
    .line 37
    if-nez v3, :cond_0

    .line 38
    .line 39
    move-object v3, v4

    .line 40
    :cond_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->Text:Ljava/lang/String;

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_2

    .line 57
    .line 58
    iget-object v1, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->Text:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object v5, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->Title:Ljava/lang/String;

    .line 65
    .line 66
    if-nez v5, :cond_1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_2

    .line 78
    .line 79
    iget-object v1, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->Text:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    :cond_2
    new-instance v1, Landroid/app/Dialog;

    .line 88
    .line 89
    sget-object v2, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    .line 90
    .line 91
    invoke-direct {v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 92
    .line 93
    .line 94
    const/4 v2, 0x1

    .line 95
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 102
    .line 103
    .line 104
    const v4, 0x7f0901ac

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Landroid/widget/LinearLayout;

    .line 112
    .line 113
    iget-object v4, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->Buttons:[Ljava/lang/String;

    .line 114
    .line 115
    array-length v4, v4

    .line 116
    sub-int/2addr v4, v2

    .line 117
    :goto_1
    if-lt v4, v2, :cond_3

    .line 118
    .line 119
    invoke-direct {p0, v1, v4, v3}, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->makeButton(Landroid/app/Dialog;IZ)Landroid/widget/TextView;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 124
    .line 125
    .line 126
    add-int/lit8 v4, v4, -0x1

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_3
    iget-object v4, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->Buttons:[Ljava/lang/String;

    .line 130
    .line 131
    array-length v4, v4

    .line 132
    if-lt v4, v2, :cond_4

    .line 133
    .line 134
    invoke-direct {p0, v1, v3, v2}, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->makeButton(Landroid/app/Dialog;IZ)Landroid/widget/TextView;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 139
    .line 140
    .line 141
    :cond_4
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    if-eqz v0, :cond_5

    .line 146
    .line 147
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 152
    .line 153
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    .line 158
    .line 159
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    .line 160
    .line 161
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 170
    .line 171
    int-to-float v0, v0

    .line 172
    const v2, 0x3f666666    # 0.9f

    .line 173
    .line 174
    .line 175
    mul-float/2addr v0, v2

    .line 176
    float-to-int v0, v0

    .line 177
    const/16 v2, 0x168

    .line 178
    .line 179
    invoke-direct {p0, v2}, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->dp(I)I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    const/4 v3, -0x2

    .line 192
    invoke-virtual {v2, v0, v3}, Landroid/view/Window;->setLayout(II)V

    .line 193
    .line 194
    .line 195
    :cond_5
    return-object v1
.end method

.method private dp(I)I
    .locals 1

    .line 1
    int-to-float p1, p1

    .line 2
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    .line 3
    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 13
    .line 14
    mul-float/2addr p1, v0

    .line 15
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method private localizedLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "cancel"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "no"

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-object p1

    .line 19
    :cond_1
    :goto_0
    sget-object p1, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    .line 20
    .line 21
    const v0, 0x7f1200bc

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method private makeButton(Landroid/app/Dialog;IZ)Landroid/widget/TextView;
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/TextView;

    .line 2
    .line 3
    sget-object v1, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->Buttons:[Ljava/lang/String;

    .line 9
    .line 10
    aget-object v1, v1, p2

    .line 11
    .line 12
    invoke-direct {p0, v1}, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->localizedLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    const/high16 v2, 0x41500000    # 13.0f

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 23
    .line 24
    .line 25
    const/16 v1, 0x11

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 28
    .line 29
    .line 30
    const/16 v1, 0x58

    .line 31
    .line 32
    invoke-direct {p0, v1}, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->dp(I)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 37
    .line 38
    .line 39
    const/16 v1, 0x10

    .line 40
    .line 41
    invoke-direct {p0, v1}, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->dp(I)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-direct {p0, v1}, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->dp(I)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {v0, v2, v3, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 51
    .line 52
    .line 53
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 54
    .line 55
    const/16 v2, 0x26

    .line 56
    .line 57
    invoke-direct {p0, v2}, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->dp(I)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    const/4 v3, -0x2

    .line 62
    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 63
    .line 64
    .line 65
    const/16 v2, 0x8

    .line 66
    .line 67
    invoke-direct {p0, v2}, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->dp(I)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    .line 76
    .line 77
    if-eqz p3, :cond_0

    .line 78
    .line 79
    const p3, 0x7f080087

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 83
    .line 84
    .line 85
    sget-object p3, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    .line 86
    .line 87
    const v1, 0x106000b

    .line 88
    .line 89
    .line 90
    invoke-static {p3, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 91
    .line 92
    .line 93
    move-result p3

    .line 94
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_0
    const p3, 0x7f080089

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 102
    .line 103
    .line 104
    sget-object p3, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    .line 105
    .line 106
    const v1, 0x7f06031c

    .line 107
    .line 108
    .line 109
    invoke-static {p3, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 110
    .line 111
    .line 112
    move-result p3

    .line 113
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    .line 115
    .line 116
    :goto_0
    new-instance p3, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage$1;

    .line 117
    .line 118
    invoke-direct {p3, p0, p1, p2}, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage$1;-><init>(Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;Landroid/app/Dialog;I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    .line 123
    .line 124
    return-object v0
.end method


# virtual methods
.method public Init(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->Title:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->Text:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->Buttons:[Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method public ShowInputBox(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->buildStyledDialog()Landroid/app/Dialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/widget/EditText;

    .line 6
    .line 7
    sget-object v2, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    .line 8
    .line 9
    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->TextEditor:Landroid/widget/EditText;

    .line 13
    .line 14
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 15
    .line 16
    const/4 v3, -0x1

    .line 17
    const/4 v4, -0x2

    .line 18
    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->TextEditor:Landroid/widget/EditText;

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->TextEditor:Landroid/widget/EditText;

    .line 30
    .line 31
    sget-object v1, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    .line 32
    .line 33
    const v2, 0x7f06031b

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    .line 42
    .line 43
    const p1, 0x7f0901ad

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Landroid/widget/FrameLayout;

    .line 51
    .line 52
    iget-object v1, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->TextEditor:Landroid/widget/EditText;

    .line 53
    .line 54
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 55
    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->TextEditor:Landroid/widget/EditText;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string v0, "input_method"

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 80
    .line 81
    iget-object v0, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->TextEditor:Landroid/widget/EditText;

    .line 82
    .line 83
    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public ShowMessageBox()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->TextEditor:Landroid/widget/EditText;

    .line 3
    .line 4
    invoke-direct {p0}, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->buildStyledDialog()Landroid/app/Dialog;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onButtonClick(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->TextEditor:Landroid/widget/EditText;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lorg/tvp/kirikiri2/KR2Activity;->j(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {p1}, Lorg/tvp/kirikiri2/KR2Activity;->i(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
