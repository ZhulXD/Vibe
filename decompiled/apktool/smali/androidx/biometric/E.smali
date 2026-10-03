.class public Landroidx/biometric/E;
.super Landroidx/fragment/app/DialogFragment;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final b:Landroid/os/Handler;

.field public final c:LA1/u0;

.field public d:Landroidx/biometric/w;

.field public e:I

.field public f:I

.field public g:Landroid/widget/ImageView;

.field public h:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Landroidx/biometric/E;->b:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v0, LA1/u0;

    .line 16
    .line 17
    const/4 v1, 0x6

    .line 18
    invoke-direct {v0, v1, p0}, LA1/u0;-><init>(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroidx/biometric/E;->c:LA1/u0;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final b(I)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v3, Landroid/util/TypedValue;

    .line 16
    .line 17
    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v4, 0x1

    .line 25
    invoke-virtual {v0, p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 26
    .line 27
    .line 28
    iget v0, v3, Landroid/util/TypedValue;->data:I

    .line 29
    .line 30
    filled-new-array {p1}, [I

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    .line 44
    .line 45
    return v0

    .line 46
    :cond_1
    :goto_0
    const-string p1, "FingerprintFragment"

    .line 47
    .line 48
    const-string v0, "Unable to get themed color. Context or activity is null."

    .line 49
    .line 50
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    return v2
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/biometric/E;->d:Landroidx/biometric/w;

    .line 5
    .line 6
    iget-object v0, p1, Landroidx/biometric/w;->u:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 11
    .line 12
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p1, Landroidx/biometric/w;->u:Landroidx/lifecycle/MutableLiveData;

    .line 16
    .line 17
    :cond_0
    iget-object p1, p1, Landroidx/biometric/w;->u:Landroidx/lifecycle/MutableLiveData;

    .line 18
    .line 19
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-static {p1, v0}, Landroidx/biometric/w;->f(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 14
    .line 15
    .line 16
    const-class p1, Landroidx/biometric/w;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroidx/biometric/w;

    .line 23
    .line 24
    iput-object p1, p0, Landroidx/biometric/E;->d:Landroidx/biometric/w;

    .line 25
    .line 26
    iget-object v0, p1, Landroidx/biometric/w;->w:Landroidx/lifecycle/MutableLiveData;

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p1, Landroidx/biometric/w;->w:Landroidx/lifecycle/MutableLiveData;

    .line 36
    .line 37
    :cond_1
    iget-object p1, p1, Landroidx/biometric/w;->w:Landroidx/lifecycle/MutableLiveData;

    .line 38
    .line 39
    new-instance v0, Landroidx/biometric/B;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-direct {v0, p0, v1}, Landroidx/biometric/B;-><init>(Landroidx/biometric/E;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Landroidx/biometric/E;->d:Landroidx/biometric/w;

    .line 49
    .line 50
    iget-object v0, p1, Landroidx/biometric/w;->x:Landroidx/lifecycle/MutableLiveData;

    .line 51
    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 55
    .line 56
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v0, p1, Landroidx/biometric/w;->x:Landroidx/lifecycle/MutableLiveData;

    .line 60
    .line 61
    :cond_2
    iget-object p1, p1, Landroidx/biometric/w;->x:Landroidx/lifecycle/MutableLiveData;

    .line 62
    .line 63
    new-instance v0, Landroidx/biometric/B;

    .line 64
    .line 65
    const/4 v1, 0x1

    .line 66
    invoke-direct {v0, p0, v1}, Landroidx/biometric/B;-><init>(Landroidx/biometric/E;I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 73
    .line 74
    const/16 v0, 0x1a

    .line 75
    .line 76
    if-lt p1, v0, :cond_3

    .line 77
    .line 78
    invoke-static {}, Landroidx/biometric/D;->a()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    invoke-virtual {p0, p1}, Landroidx/biometric/E;->b(I)I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    iput p1, p0, Landroidx/biometric/E;->e:I

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    const v0, 0x7f060024

    .line 96
    .line 97
    .line 98
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    goto :goto_1

    .line 103
    :cond_4
    const/4 p1, 0x0

    .line 104
    :goto_1
    iput p1, p0, Landroidx/biometric/E;->e:I

    .line 105
    .line 106
    :goto_2
    const p1, 0x1010038

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p1}, Landroidx/biometric/E;->b(I)I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    iput p1, p0, Landroidx/biometric/E;->f:I

    .line 114
    .line 115
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .line 1
    new-instance p1, Le/f;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p1, v0}, Le/f;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p1, Le/f;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Le/b;

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/biometric/E;->d:Landroidx/biometric/w;

    .line 15
    .line 16
    iget-object v1, v1, Landroidx/biometric/w;->c:LF/b;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v1, v1, LF/b;->c:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Ljava/lang/CharSequence;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v1, v2

    .line 27
    :goto_0
    iput-object v1, v0, Le/b;->d:Ljava/lang/CharSequence;

    .line 28
    .line 29
    iget-object v1, v0, Le/b;->a:Landroid/view/ContextThemeWrapper;

    .line 30
    .line 31
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const v3, 0x7f0c004c

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const v3, 0x7f090167

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Landroid/widget/TextView;

    .line 50
    .line 51
    const/16 v4, 0x8

    .line 52
    .line 53
    const/4 v5, 0x0

    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    iget-object v6, p0, Landroidx/biometric/E;->d:Landroidx/biometric/w;

    .line 57
    .line 58
    iget-object v6, v6, Landroidx/biometric/w;->c:LF/b;

    .line 59
    .line 60
    if-eqz v6, :cond_1

    .line 61
    .line 62
    iget-object v6, v6, LF/b;->d:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v6, Ljava/lang/CharSequence;

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    move-object v6, v2

    .line 68
    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-eqz v7, :cond_2

    .line 73
    .line 74
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    :cond_3
    :goto_2
    const v3, 0x7f090164

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    check-cast v3, Landroid/widget/TextView;

    .line 92
    .line 93
    if-eqz v3, :cond_5

    .line 94
    .line 95
    iget-object v6, p0, Landroidx/biometric/E;->d:Landroidx/biometric/w;

    .line 96
    .line 97
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    if-eqz v6, :cond_4

    .line 105
    .line 106
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_4
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    :cond_5
    :goto_3
    const v3, 0x7f090166

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    check-cast v3, Landroid/widget/ImageView;

    .line 124
    .line 125
    iput-object v3, p0, Landroidx/biometric/E;->g:Landroid/widget/ImageView;

    .line 126
    .line 127
    const v3, 0x7f090165

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    check-cast v3, Landroid/widget/TextView;

    .line 135
    .line 136
    iput-object v3, p0, Landroidx/biometric/E;->h:Landroid/widget/TextView;

    .line 137
    .line 138
    iget-object v3, p0, Landroidx/biometric/E;->d:Landroidx/biometric/w;

    .line 139
    .line 140
    invoke-virtual {v3}, Landroidx/biometric/w;->a()I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    invoke-static {v3}, La/a;->s(I)Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-eqz v3, :cond_6

    .line 149
    .line 150
    const v2, 0x7f1200b7

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    goto :goto_4

    .line 158
    :cond_6
    iget-object v3, p0, Landroidx/biometric/E;->d:Landroidx/biometric/w;

    .line 159
    .line 160
    iget-object v4, v3, Landroidx/biometric/w;->h:Ljava/lang/String;

    .line 161
    .line 162
    if-eqz v4, :cond_7

    .line 163
    .line 164
    move-object v2, v4

    .line 165
    goto :goto_4

    .line 166
    :cond_7
    iget-object v3, v3, Landroidx/biometric/w;->c:LF/b;

    .line 167
    .line 168
    if-eqz v3, :cond_9

    .line 169
    .line 170
    iget-object v2, v3, LF/b;->e:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v2, Ljava/lang/CharSequence;

    .line 173
    .line 174
    if-eqz v2, :cond_8

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_8
    const-string v2, ""

    .line 178
    .line 179
    :cond_9
    :goto_4
    new-instance v3, Landroidx/biometric/v;

    .line 180
    .line 181
    invoke-direct {v3, p0}, Landroidx/biometric/v;-><init>(Landroidx/biometric/E;)V

    .line 182
    .line 183
    .line 184
    iput-object v2, v0, Le/b;->i:Ljava/lang/CharSequence;

    .line 185
    .line 186
    iput-object v3, v0, Le/b;->j:Landroid/content/DialogInterface$OnClickListener;

    .line 187
    .line 188
    iput-object v1, v0, Le/b;->t:Landroid/view/View;

    .line 189
    .line 190
    invoke-virtual {p1}, Le/f;->c()Le/g;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-virtual {p1, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 195
    .line 196
    .line 197
    return-object p1
.end method

.method public final onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/biometric/E;->b:Landroid/os/Handler;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/biometric/E;->d:Landroidx/biometric/w;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput v1, v0, Landroidx/biometric/w;->v:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Landroidx/biometric/w;->d(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroidx/biometric/E;->d:Landroidx/biometric/w;

    .line 14
    .line 15
    const v1, 0x7f120101

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Landroidx/biometric/w;->c(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
