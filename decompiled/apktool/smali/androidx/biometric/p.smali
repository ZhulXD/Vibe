.class public Landroidx/biometric/p;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final b:Landroid/os/Handler;

.field public c:Landroidx/biometric/w;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

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
    iput-object v0, p0, Landroidx/biometric/p;->b:Landroid/os/Handler;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 5
    .line 6
    iget-boolean v0, v0, Landroidx/biometric/w;->n:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/biometric/p;->e()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 18
    .line 19
    iput p1, v0, Landroidx/biometric/w;->i:I

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    if-ne p1, v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/16 v0, 0xa

    .line 29
    .line 30
    invoke-static {p1, v0}, Lcom/bumptech/glide/d;->z(Landroid/content/Context;I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, v0, p1}, Landroidx/biometric/p;->h(ILjava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object p1, p0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 38
    .line 39
    iget-object v0, p1, Landroidx/biometric/w;->f:LA1/d;

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    new-instance v0, LA1/d;

    .line 44
    .line 45
    const/16 v1, 0xa

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-direct {v0, v1, v2}, LA1/d;-><init>(IZ)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p1, Landroidx/biometric/w;->f:LA1/d;

    .line 52
    .line 53
    :cond_2
    iget-object p1, p1, Landroidx/biometric/w;->f:LA1/d;

    .line 54
    .line 55
    iget-object v0, p1, LA1/d;->c:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, Landroid/os/CancellationSignal;

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    const-string v2, "CancelSignalProvider"

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    :try_start_0
    invoke-static {v0}, Landroidx/biometric/x;->a(Landroid/os/CancellationSignal;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    const-string v3, "Got NPE while canceling biometric authentication."

    .line 70
    .line 71
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .line 73
    .line 74
    :goto_0
    iput-object v1, p1, LA1/d;->c:Ljava/lang/Object;

    .line 75
    .line 76
    :cond_3
    iget-object v0, p1, LA1/d;->d:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v0, Landroidx/core/os/CancellationSignal;

    .line 79
    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    :try_start_1
    invoke-virtual {v0}, Landroidx/core/os/CancellationSignal;->cancel()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catch_1
    move-exception v0

    .line 87
    const-string v3, "Got NPE while canceling fingerprint authentication."

    .line 88
    .line 89
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .line 91
    .line 92
    :goto_1
    iput-object v1, p1, LA1/d;->d:Ljava/lang/Object;

    .line 93
    .line 94
    :cond_4
    :goto_2
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Landroidx/biometric/w;->j:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "androidx.biometric.FingerprintDialogFragment"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroidx/biometric/E;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    invoke-virtual {v1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method public final d()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-gt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/biometric/w;->a()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, La/a;->s(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    return v0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    return v0
.end method

.method public final dismiss()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Landroidx/biometric/w;->j:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/biometric/p;->c()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 10
    .line 11
    iget-boolean v0, v0, Landroidx/biometric/w;->l:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 43
    .line 44
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 45
    .line 46
    const/16 v4, 0x1d

    .line 47
    .line 48
    if-eq v3, v4, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    if-nez v2, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const v3, 0x7f030004

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    array-length v3, v0

    .line 66
    :goto_0
    if-ge v1, v3, :cond_4

    .line 67
    .line 68
    aget-object v4, v0, v1

    .line 69
    .line 70
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_3

    .line 75
    .line 76
    iget-object v0, p0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 77
    .line 78
    const/4 v1, 0x1

    .line 79
    iput-boolean v1, v0, Landroidx/biometric/w;->m:Z

    .line 80
    .line 81
    new-instance v1, Landroidx/biometric/o;

    .line 82
    .line 83
    const/4 v2, 0x1

    .line 84
    invoke-direct {v1, v0, v2}, Landroidx/biometric/o;-><init>(Landroidx/biometric/w;I)V

    .line 85
    .line 86
    .line 87
    const-wide/16 v2, 0x258

    .line 88
    .line 89
    iget-object v0, p0, Landroidx/biometric/p;->b:Landroid/os/Handler;

    .line 90
    .line 91
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_4
    :goto_1
    return-void
.end method

.method public final e()Z
    .locals 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0x1c

    .line 5
    .line 6
    if-lt v0, v2, :cond_9

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    const/4 v4, 0x0

    .line 13
    if-eqz v3, :cond_6

    .line 14
    .line 15
    iget-object v5, p0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 16
    .line 17
    iget-object v5, v5, Landroidx/biometric/w;->d:LN1/w;

    .line 18
    .line 19
    if-eqz v5, :cond_6

    .line 20
    .line 21
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 22
    .line 23
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 24
    .line 25
    if-eq v0, v2, :cond_0

    .line 26
    .line 27
    goto :goto_3

    .line 28
    :cond_0
    if-nez v5, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const v6, 0x7f030003

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    array-length v6, v0

    .line 43
    move v7, v4

    .line 44
    :goto_0
    if-ge v7, v6, :cond_3

    .line 45
    .line 46
    aget-object v8, v0, v7

    .line 47
    .line 48
    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    if-eqz v8, :cond_2

    .line 53
    .line 54
    goto :goto_4

    .line 55
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    :goto_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 59
    .line 60
    if-nez v0, :cond_4

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_4
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const v5, 0x7f030002

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    array-length v5, v3

    .line 75
    move v6, v4

    .line 76
    :goto_2
    if-ge v6, v5, :cond_6

    .line 77
    .line 78
    aget-object v7, v3, v6

    .line 79
    .line 80
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    if-eqz v7, :cond_5

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_6
    :goto_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 91
    .line 92
    if-ne v0, v2, :cond_8

    .line 93
    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    if-eqz v0, :cond_7

    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    if-eqz v2, :cond_7

    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {v0}, Landroidx/biometric/G;->a(Landroid/content/pm/PackageManager;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_7

    .line 115
    .line 116
    return v4

    .line 117
    :cond_7
    return v1

    .line 118
    :cond_8
    return v4

    .line 119
    :cond_9
    :goto_4
    return v1
.end method

.method public final f()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "BiometricFragment"

    .line 8
    .line 9
    const-string v1, "Failed to check device credential. Client FragmentActivity not found."

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {v0}, Landroidx/biometric/F;->a(Landroid/content/Context;)Landroid/app/KeyguardManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    const v0, 0x7f120165

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/16 v1, 0xc

    .line 29
    .line 30
    invoke-virtual {p0, v1, v0}, Landroidx/biometric/p;->g(ILjava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    iget-object v1, p0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 35
    .line 36
    iget-object v2, v1, Landroidx/biometric/w;->c:LF/b;

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    iget-object v4, v2, LF/b;->c:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v4, Ljava/lang/CharSequence;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    move-object v4, v3

    .line 47
    :goto_0
    if-eqz v2, :cond_3

    .line 48
    .line 49
    iget-object v2, v2, LF/b;->d:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v2, Ljava/lang/CharSequence;

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    move-object v2, v3

    .line 55
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    if-eqz v2, :cond_4

    .line 59
    .line 60
    move-object v3, v2

    .line 61
    :cond_4
    invoke-static {v0, v4, v3}, Landroidx/biometric/k;->a(Landroid/app/KeyguardManager;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-nez v0, :cond_5

    .line 66
    .line 67
    const v0, 0x7f120164

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const/16 v1, 0xe

    .line 75
    .line 76
    invoke-virtual {p0, v1, v0}, Landroidx/biometric/p;->g(ILjava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_5
    iget-object v1, p0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 81
    .line 82
    const/4 v2, 0x1

    .line 83
    iput-boolean v2, v1, Landroidx/biometric/w;->l:Z

    .line 84
    .line 85
    invoke-virtual {p0}, Landroidx/biometric/p;->e()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_6

    .line 90
    .line 91
    invoke-virtual {p0}, Landroidx/biometric/p;->c()V

    .line 92
    .line 93
    .line 94
    :cond_6
    const/high16 v1, 0x8080000

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public final g(ILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/biometric/p;->h(ILjava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/biometric/p;->dismiss()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final h(ILjava/lang/CharSequence;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/biometric/w;->l:Z

    .line 4
    .line 5
    const-string v2, "BiometricFragment"

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string p1, "Error not sent to client. User is confirming their device credential."

    .line 10
    .line 11
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-boolean v1, v0, Landroidx/biometric/w;->k:Z

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    const-string p1, "Error not sent to client. Client is not awaiting a result."

    .line 20
    .line 21
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    const/4 v1, 0x0

    .line 26
    iput-boolean v1, v0, Landroidx/biometric/w;->k:Z

    .line 27
    .line 28
    iget-object v0, v0, Landroidx/biometric/w;->a:Ljava/util/concurrent/Executor;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    new-instance v0, LP/e;

    .line 34
    .line 35
    const/4 v1, 0x2

    .line 36
    invoke-direct {v0, v1}, LP/e;-><init>(I)V

    .line 37
    .line 38
    .line 39
    :goto_0
    new-instance v1, Landroidx/biometric/h;

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-direct {v1, p0, p1, p2, v2}, Landroidx/biometric/h;-><init>(Landroidx/biometric/p;ILjava/lang/CharSequence;I)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final i(Landroidx/biometric/s;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/biometric/w;->k:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-string p1, "BiometricFragment"

    .line 8
    .line 9
    const-string v0, "Success not sent to client. Client is not awaiting a result."

    .line 10
    .line 11
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, v0, Landroidx/biometric/w;->k:Z

    .line 17
    .line 18
    iget-object v0, v0, Landroidx/biometric/w;->a:Ljava/util/concurrent/Executor;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance v0, LP/e;

    .line 24
    .line 25
    const/4 v1, 0x2

    .line 26
    invoke-direct {v0, v1}, LP/e;-><init>(I)V

    .line 27
    .line 28
    .line 29
    :goto_0
    new-instance v1, LE0/d;

    .line 30
    .line 31
    const/4 v2, 0x5

    .line 32
    invoke-direct {v1, v2, p0, p1}, LE0/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    :goto_1
    invoke-virtual {p0}, Landroidx/biometric/p;->dismiss()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final j(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const p1, 0x7f1200b8

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :goto_0
    iget-object v0, p0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-virtual {v0, v1}, Landroidx/biometric/w;->d(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroidx/biometric/w;->c(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final k()V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 2
    .line 3
    iget-boolean v0, v0, Landroidx/biometric/w;->j:Z

    .line 4
    .line 5
    if-nez v0, :cond_2a

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "BiometricFragment"

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-string v0, "Not showing biometric prompt. Context is null."

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    iput-boolean v2, v0, Landroidx/biometric/w;->j:Z

    .line 25
    .line 26
    iput-boolean v2, v0, Landroidx/biometric/w;->k:Z

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/biometric/p;->e()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v3, 0x0

    .line 33
    const/16 v4, 0x1e

    .line 34
    .line 35
    if-eqz v0, :cond_11

    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-static {v5}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-virtual {v6}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/4 v7, 0x0

    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    const/16 v0, 0xc

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v6}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->hasEnrolledFingerprints()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_2

    .line 64
    .line 65
    const/16 v0, 0xb

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    move v0, v7

    .line 69
    :goto_0
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-static {v5, v0}, Lcom/bumptech/glide/d;->z(Landroid/content/Context;I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {p0, v0, v1}, Landroidx/biometric/p;->g(ILjava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_d

    .line 79
    .line 80
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_2a

    .line 85
    .line 86
    iget-object v0, p0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 87
    .line 88
    iput-boolean v2, v0, Landroidx/biometric/w;->t:Z

    .line 89
    .line 90
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 91
    .line 92
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 93
    .line 94
    const/16 v9, 0x1c

    .line 95
    .line 96
    if-eq v8, v9, :cond_4

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    if-nez v0, :cond_5

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_5
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    const v9, 0x7f030005

    .line 107
    .line 108
    .line 109
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    array-length v9, v8

    .line 114
    move v10, v7

    .line 115
    :goto_1
    if-ge v10, v9, :cond_7

    .line 116
    .line 117
    aget-object v11, v8, v10

    .line 118
    .line 119
    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v11

    .line 123
    if-eqz v11, :cond_6

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_7
    :goto_2
    new-instance v0, Landroidx/biometric/i;

    .line 130
    .line 131
    const/4 v8, 0x1

    .line 132
    invoke-direct {v0, p0, v8}, Landroidx/biometric/i;-><init>(Landroidx/biometric/p;I)V

    .line 133
    .line 134
    .line 135
    const-wide/16 v8, 0x1f4

    .line 136
    .line 137
    iget-object v10, p0, Landroidx/biometric/p;->b:Landroid/os/Handler;

    .line 138
    .line 139
    invoke-virtual {v10, v0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    .line 141
    .line 142
    new-instance v0, Landroidx/biometric/E;

    .line 143
    .line 144
    invoke-direct {v0}, Landroidx/biometric/E;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    const-string v9, "androidx.biometric.FingerprintDialogFragment"

    .line 152
    .line 153
    invoke-virtual {v0, v8, v9}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    :goto_3
    iget-object v0, p0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 157
    .line 158
    iput v7, v0, Landroidx/biometric/w;->i:I

    .line 159
    .line 160
    iget-object v0, v0, Landroidx/biometric/w;->d:LN1/w;

    .line 161
    .line 162
    if-nez v0, :cond_9

    .line 163
    .line 164
    :cond_8
    :goto_4
    move-object v7, v3

    .line 165
    goto :goto_5

    .line 166
    :cond_9
    iget-object v7, v0, LN1/w;->b:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast v7, Ljavax/crypto/Cipher;

    .line 169
    .line 170
    if-eqz v7, :cond_a

    .line 171
    .line 172
    new-instance v3, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    .line 173
    .line 174
    invoke-direct {v3, v7}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    .line 175
    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_a
    iget-object v7, v0, LN1/w;->a:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast v7, Ljava/security/Signature;

    .line 181
    .line 182
    if-eqz v7, :cond_b

    .line 183
    .line 184
    new-instance v3, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    .line 185
    .line 186
    invoke-direct {v3, v7}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljava/security/Signature;)V

    .line 187
    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_b
    iget-object v7, v0, LN1/w;->c:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v7, Ljavax/crypto/Mac;

    .line 193
    .line 194
    if-eqz v7, :cond_c

    .line 195
    .line 196
    new-instance v3, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    .line 197
    .line 198
    invoke-direct {v3, v7}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    .line 199
    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_c
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 203
    .line 204
    if-lt v7, v4, :cond_8

    .line 205
    .line 206
    iget-object v0, v0, LN1/w;->d:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v0, Landroid/security/identity/IdentityCredential;

    .line 209
    .line 210
    if-eqz v0, :cond_8

    .line 211
    .line 212
    const-string v0, "CryptoObjectUtils"

    .line 213
    .line 214
    const-string v4, "Identity credential is not supported by FingerprintManager."

    .line 215
    .line 216
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    goto :goto_4

    .line 220
    :goto_5
    iget-object v0, p0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 221
    .line 222
    iget-object v3, v0, Landroidx/biometric/w;->f:LA1/d;

    .line 223
    .line 224
    if-nez v3, :cond_d

    .line 225
    .line 226
    new-instance v3, LA1/d;

    .line 227
    .line 228
    const/16 v4, 0xa

    .line 229
    .line 230
    const/4 v8, 0x0

    .line 231
    invoke-direct {v3, v4, v8}, LA1/d;-><init>(IZ)V

    .line 232
    .line 233
    .line 234
    iput-object v3, v0, Landroidx/biometric/w;->f:LA1/d;

    .line 235
    .line 236
    :cond_d
    iget-object v0, v0, Landroidx/biometric/w;->f:LA1/d;

    .line 237
    .line 238
    iget-object v3, v0, LA1/d;->d:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v3, Landroidx/core/os/CancellationSignal;

    .line 241
    .line 242
    if-nez v3, :cond_e

    .line 243
    .line 244
    new-instance v3, Landroidx/core/os/CancellationSignal;

    .line 245
    .line 246
    invoke-direct {v3}, Landroidx/core/os/CancellationSignal;-><init>()V

    .line 247
    .line 248
    .line 249
    iput-object v3, v0, LA1/d;->d:Ljava/lang/Object;

    .line 250
    .line 251
    :cond_e
    iget-object v0, v0, LA1/d;->d:Ljava/lang/Object;

    .line 252
    .line 253
    move-object v9, v0

    .line 254
    check-cast v9, Landroidx/core/os/CancellationSignal;

    .line 255
    .line 256
    iget-object v0, p0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 257
    .line 258
    iget-object v3, v0, Landroidx/biometric/w;->e:Landroidx/biometric/f;

    .line 259
    .line 260
    if-nez v3, :cond_f

    .line 261
    .line 262
    new-instance v3, Landroidx/biometric/f;

    .line 263
    .line 264
    new-instance v4, Landroidx/biometric/u;

    .line 265
    .line 266
    invoke-direct {v4, v0}, Landroidx/biometric/u;-><init>(Landroidx/biometric/w;)V

    .line 267
    .line 268
    .line 269
    invoke-direct {v3, v4}, Landroidx/biometric/f;-><init>(Landroidx/biometric/u;)V

    .line 270
    .line 271
    .line 272
    iput-object v3, v0, Landroidx/biometric/w;->e:Landroidx/biometric/f;

    .line 273
    .line 274
    :cond_f
    iget-object v0, v0, Landroidx/biometric/w;->e:Landroidx/biometric/f;

    .line 275
    .line 276
    iget-object v3, v0, Landroidx/biometric/f;->b:Landroidx/biometric/a;

    .line 277
    .line 278
    if-nez v3, :cond_10

    .line 279
    .line 280
    new-instance v3, Landroidx/biometric/a;

    .line 281
    .line 282
    invoke-direct {v3, v0}, Landroidx/biometric/a;-><init>(Landroidx/biometric/f;)V

    .line 283
    .line 284
    .line 285
    iput-object v3, v0, Landroidx/biometric/f;->b:Landroidx/biometric/a;

    .line 286
    .line 287
    :cond_10
    iget-object v10, v0, Landroidx/biometric/f;->b:Landroidx/biometric/a;

    .line 288
    .line 289
    const/4 v8, 0x0

    .line 290
    const/4 v11, 0x0

    .line 291
    :try_start_0
    invoke-virtual/range {v6 .. v11}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->authenticate(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;ILandroidx/core/os/CancellationSignal;Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .line 293
    .line 294
    goto/16 :goto_d

    .line 295
    .line 296
    :catch_0
    move-exception v0

    .line 297
    const-string v3, "Got NPE while authenticating with fingerprint."

    .line 298
    .line 299
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    .line 301
    .line 302
    invoke-static {v5, v2}, Lcom/bumptech/glide/d;->z(Landroid/content/Context;I)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-virtual {p0, v2, v0}, Landroidx/biometric/p;->g(ILjava/lang/CharSequence;)V

    .line 307
    .line 308
    .line 309
    goto/16 :goto_d

    .line 310
    .line 311
    :cond_11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-static {v0}, Landroidx/biometric/l;->d(Landroid/content/Context;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    iget-object v5, p0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 324
    .line 325
    iget-object v6, v5, Landroidx/biometric/w;->c:LF/b;

    .line 326
    .line 327
    if-eqz v6, :cond_12

    .line 328
    .line 329
    iget-object v7, v6, LF/b;->c:Ljava/lang/Object;

    .line 330
    .line 331
    check-cast v7, Ljava/lang/CharSequence;

    .line 332
    .line 333
    goto :goto_6

    .line 334
    :cond_12
    move-object v7, v3

    .line 335
    :goto_6
    if-eqz v6, :cond_13

    .line 336
    .line 337
    iget-object v6, v6, LF/b;->d:Ljava/lang/Object;

    .line 338
    .line 339
    check-cast v6, Ljava/lang/CharSequence;

    .line 340
    .line 341
    goto :goto_7

    .line 342
    :cond_13
    move-object v6, v3

    .line 343
    :goto_7
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 344
    .line 345
    .line 346
    if-eqz v7, :cond_14

    .line 347
    .line 348
    invoke-static {v0, v7}, Landroidx/biometric/l;->g(Landroid/hardware/biometrics/BiometricPrompt$Builder;Ljava/lang/CharSequence;)V

    .line 349
    .line 350
    .line 351
    :cond_14
    if-eqz v6, :cond_15

    .line 352
    .line 353
    invoke-static {v0, v6}, Landroidx/biometric/l;->f(Landroid/hardware/biometrics/BiometricPrompt$Builder;Ljava/lang/CharSequence;)V

    .line 354
    .line 355
    .line 356
    :cond_15
    iget-object v5, p0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 357
    .line 358
    iget-object v6, v5, Landroidx/biometric/w;->h:Ljava/lang/String;

    .line 359
    .line 360
    const-string v7, ""

    .line 361
    .line 362
    if-eqz v6, :cond_16

    .line 363
    .line 364
    move-object v3, v6

    .line 365
    goto :goto_8

    .line 366
    :cond_16
    iget-object v5, v5, Landroidx/biometric/w;->c:LF/b;

    .line 367
    .line 368
    if-eqz v5, :cond_18

    .line 369
    .line 370
    iget-object v3, v5, LF/b;->e:Ljava/lang/Object;

    .line 371
    .line 372
    check-cast v3, Ljava/lang/CharSequence;

    .line 373
    .line 374
    if-eqz v3, :cond_17

    .line 375
    .line 376
    goto :goto_8

    .line 377
    :cond_17
    move-object v3, v7

    .line 378
    :cond_18
    :goto_8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 379
    .line 380
    .line 381
    move-result v5

    .line 382
    if-nez v5, :cond_1b

    .line 383
    .line 384
    iget-object v5, p0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 385
    .line 386
    iget-object v5, v5, Landroidx/biometric/w;->a:Ljava/util/concurrent/Executor;

    .line 387
    .line 388
    if-eqz v5, :cond_19

    .line 389
    .line 390
    goto :goto_9

    .line 391
    :cond_19
    new-instance v5, LP/e;

    .line 392
    .line 393
    const/4 v6, 0x2

    .line 394
    invoke-direct {v5, v6}, LP/e;-><init>(I)V

    .line 395
    .line 396
    .line 397
    :goto_9
    iget-object v6, p0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 398
    .line 399
    iget-object v8, v6, Landroidx/biometric/w;->g:Landroidx/biometric/v;

    .line 400
    .line 401
    if-nez v8, :cond_1a

    .line 402
    .line 403
    new-instance v8, Landroidx/biometric/v;

    .line 404
    .line 405
    invoke-direct {v8, v6}, Landroidx/biometric/v;-><init>(Landroidx/biometric/w;)V

    .line 406
    .line 407
    .line 408
    iput-object v8, v6, Landroidx/biometric/w;->g:Landroidx/biometric/v;

    .line 409
    .line 410
    :cond_1a
    iget-object v6, v6, Landroidx/biometric/w;->g:Landroidx/biometric/v;

    .line 411
    .line 412
    invoke-static {v0, v3, v5, v6}, Landroidx/biometric/l;->e(Landroid/hardware/biometrics/BiometricPrompt$Builder;Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)V

    .line 413
    .line 414
    .line 415
    :cond_1b
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 416
    .line 417
    const/16 v5, 0x1d

    .line 418
    .line 419
    if-lt v3, v5, :cond_1c

    .line 420
    .line 421
    iget-object v6, p0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 422
    .line 423
    iget-object v6, v6, Landroidx/biometric/w;->c:LF/b;

    .line 424
    .line 425
    invoke-static {v0, v2}, Landroidx/biometric/m;->a(Landroid/hardware/biometrics/BiometricPrompt$Builder;Z)V

    .line 426
    .line 427
    .line 428
    :cond_1c
    iget-object v6, p0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 429
    .line 430
    invoke-virtual {v6}, Landroidx/biometric/w;->a()I

    .line 431
    .line 432
    .line 433
    move-result v6

    .line 434
    if-lt v3, v4, :cond_1d

    .line 435
    .line 436
    invoke-static {v0, v6}, Landroidx/biometric/n;->a(Landroid/hardware/biometrics/BiometricPrompt$Builder;I)V

    .line 437
    .line 438
    .line 439
    goto :goto_a

    .line 440
    :cond_1d
    if-lt v3, v5, :cond_1e

    .line 441
    .line 442
    invoke-static {v6}, La/a;->s(I)Z

    .line 443
    .line 444
    .line 445
    move-result v3

    .line 446
    invoke-static {v0, v3}, Landroidx/biometric/m;->b(Landroid/hardware/biometrics/BiometricPrompt$Builder;Z)V

    .line 447
    .line 448
    .line 449
    :cond_1e
    :goto_a
    invoke-static {v0}, Landroidx/biometric/l;->c(Landroid/hardware/biometrics/BiometricPrompt$Builder;)Landroid/hardware/biometrics/BiometricPrompt;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 454
    .line 455
    .line 456
    move-result-object v3

    .line 457
    iget-object v4, p0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 458
    .line 459
    iget-object v4, v4, Landroidx/biometric/w;->d:LN1/w;

    .line 460
    .line 461
    const/4 v5, 0x0

    .line 462
    if-nez v4, :cond_1f

    .line 463
    .line 464
    goto :goto_b

    .line 465
    :cond_1f
    iget-object v6, v4, LN1/w;->b:Ljava/lang/Object;

    .line 466
    .line 467
    check-cast v6, Ljavax/crypto/Cipher;

    .line 468
    .line 469
    if-eqz v6, :cond_20

    .line 470
    .line 471
    invoke-static {v6}, Landroidx/biometric/y;->b(Ljavax/crypto/Cipher;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 472
    .line 473
    .line 474
    move-result-object v5

    .line 475
    goto :goto_b

    .line 476
    :cond_20
    iget-object v6, v4, LN1/w;->a:Ljava/lang/Object;

    .line 477
    .line 478
    check-cast v6, Ljava/security/Signature;

    .line 479
    .line 480
    if-eqz v6, :cond_21

    .line 481
    .line 482
    invoke-static {v6}, Landroidx/biometric/y;->a(Ljava/security/Signature;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 483
    .line 484
    .line 485
    move-result-object v5

    .line 486
    goto :goto_b

    .line 487
    :cond_21
    iget-object v6, v4, LN1/w;->c:Ljava/lang/Object;

    .line 488
    .line 489
    check-cast v6, Ljavax/crypto/Mac;

    .line 490
    .line 491
    if-eqz v6, :cond_22

    .line 492
    .line 493
    invoke-static {v6}, Landroidx/biometric/y;->c(Ljavax/crypto/Mac;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 494
    .line 495
    .line 496
    move-result-object v5

    .line 497
    goto :goto_b

    .line 498
    :cond_22
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 499
    .line 500
    const/16 v8, 0x1e

    .line 501
    .line 502
    if-lt v6, v8, :cond_23

    .line 503
    .line 504
    iget-object v4, v4, LN1/w;->d:Ljava/lang/Object;

    .line 505
    .line 506
    check-cast v4, Landroid/security/identity/IdentityCredential;

    .line 507
    .line 508
    if-eqz v4, :cond_23

    .line 509
    .line 510
    invoke-static {v4}, Landroidx/biometric/z;->a(Landroid/security/identity/IdentityCredential;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 511
    .line 512
    .line 513
    move-result-object v5

    .line 514
    :cond_23
    :goto_b
    iget-object v4, p0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 515
    .line 516
    iget-object v6, v4, Landroidx/biometric/w;->f:LA1/d;

    .line 517
    .line 518
    if-nez v6, :cond_24

    .line 519
    .line 520
    new-instance v6, LA1/d;

    .line 521
    .line 522
    const/16 v8, 0xa

    .line 523
    .line 524
    const/4 v9, 0x0

    .line 525
    invoke-direct {v6, v8, v9}, LA1/d;-><init>(IZ)V

    .line 526
    .line 527
    .line 528
    iput-object v6, v4, Landroidx/biometric/w;->f:LA1/d;

    .line 529
    .line 530
    :cond_24
    iget-object v4, v4, Landroidx/biometric/w;->f:LA1/d;

    .line 531
    .line 532
    iget-object v6, v4, LA1/d;->c:Ljava/lang/Object;

    .line 533
    .line 534
    check-cast v6, Landroid/os/CancellationSignal;

    .line 535
    .line 536
    if-nez v6, :cond_25

    .line 537
    .line 538
    invoke-static {}, Landroidx/biometric/x;->b()Landroid/os/CancellationSignal;

    .line 539
    .line 540
    .line 541
    move-result-object v6

    .line 542
    iput-object v6, v4, LA1/d;->c:Ljava/lang/Object;

    .line 543
    .line 544
    :cond_25
    iget-object v4, v4, LA1/d;->c:Ljava/lang/Object;

    .line 545
    .line 546
    check-cast v4, Landroid/os/CancellationSignal;

    .line 547
    .line 548
    new-instance v6, LP/e;

    .line 549
    .line 550
    const/4 v8, 0x1

    .line 551
    invoke-direct {v6, v8}, LP/e;-><init>(I)V

    .line 552
    .line 553
    .line 554
    iget-object v8, p0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 555
    .line 556
    iget-object v9, v8, Landroidx/biometric/w;->e:Landroidx/biometric/f;

    .line 557
    .line 558
    if-nez v9, :cond_26

    .line 559
    .line 560
    new-instance v9, Landroidx/biometric/f;

    .line 561
    .line 562
    new-instance v10, Landroidx/biometric/u;

    .line 563
    .line 564
    invoke-direct {v10, v8}, Landroidx/biometric/u;-><init>(Landroidx/biometric/w;)V

    .line 565
    .line 566
    .line 567
    invoke-direct {v9, v10}, Landroidx/biometric/f;-><init>(Landroidx/biometric/u;)V

    .line 568
    .line 569
    .line 570
    iput-object v9, v8, Landroidx/biometric/w;->e:Landroidx/biometric/f;

    .line 571
    .line 572
    :cond_26
    iget-object v8, v8, Landroidx/biometric/w;->e:Landroidx/biometric/f;

    .line 573
    .line 574
    iget-object v9, v8, Landroidx/biometric/f;->a:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    .line 575
    .line 576
    if-nez v9, :cond_27

    .line 577
    .line 578
    iget-object v9, v8, Landroidx/biometric/f;->c:Landroidx/biometric/u;

    .line 579
    .line 580
    invoke-static {v9}, Landroidx/biometric/c;->a(Landroidx/biometric/e;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    .line 581
    .line 582
    .line 583
    move-result-object v9

    .line 584
    iput-object v9, v8, Landroidx/biometric/f;->a:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    .line 585
    .line 586
    :cond_27
    iget-object v8, v8, Landroidx/biometric/f;->a:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    .line 587
    .line 588
    if-nez v5, :cond_28

    .line 589
    .line 590
    :try_start_1
    invoke-static {v0, v4, v6, v8}, Landroidx/biometric/l;->b(Landroid/hardware/biometrics/BiometricPrompt;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    .line 591
    .line 592
    .line 593
    goto :goto_d

    .line 594
    :catch_1
    move-exception v0

    .line 595
    goto :goto_c

    .line 596
    :cond_28
    invoke-static {v0, v5, v4, v6, v8}, Landroidx/biometric/l;->a(Landroid/hardware/biometrics/BiometricPrompt;Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 597
    .line 598
    .line 599
    goto :goto_d

    .line 600
    :goto_c
    const-string v4, "Got NPE while authenticating with biometric prompt."

    .line 601
    .line 602
    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 603
    .line 604
    .line 605
    if-eqz v3, :cond_29

    .line 606
    .line 607
    const v0, 0x7f1200b8

    .line 608
    .line 609
    .line 610
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v7

    .line 614
    :cond_29
    invoke-virtual {p0, v2, v7}, Landroidx/biometric/p;->g(ILjava/lang/CharSequence;)V

    .line 615
    .line 616
    .line 617
    :cond_2a
    :goto_d
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/4 p3, 0x1

    .line 5
    if-ne p1, p3, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p1, Landroidx/biometric/w;->l:Z

    .line 11
    .line 12
    const/4 p1, -0x1

    .line 13
    if-ne p2, p1, :cond_0

    .line 14
    .line 15
    new-instance p1, Landroidx/biometric/s;

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    invoke-direct {p1, p2, p3}, Landroidx/biometric/s;-><init>(LN1/w;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroidx/biometric/p;->i(Landroidx/biometric/s;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    const p1, 0x7f120166

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/16 p2, 0xa

    .line 33
    .line 34
    invoke-virtual {p0, p2, p1}, Landroidx/biometric/p;->g(ILjava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

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
    return-void

    .line 11
    :cond_0
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p1, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 18
    .line 19
    .line 20
    const-class v0, Landroidx/biometric/w;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroidx/biometric/w;

    .line 27
    .line 28
    iput-object p1, p0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 29
    .line 30
    iget-object v0, p1, Landroidx/biometric/w;->o:Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 35
    .line 36
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p1, Landroidx/biometric/w;->o:Landroidx/lifecycle/MutableLiveData;

    .line 40
    .line 41
    :cond_1
    iget-object p1, p1, Landroidx/biometric/w;->o:Landroidx/lifecycle/MutableLiveData;

    .line 42
    .line 43
    new-instance v0, Landroidx/biometric/j;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-direct {v0, p0, v1}, Landroidx/biometric/j;-><init>(Landroidx/biometric/p;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 53
    .line 54
    iget-object v0, p1, Landroidx/biometric/w;->p:Landroidx/lifecycle/MutableLiveData;

    .line 55
    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 59
    .line 60
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v0, p1, Landroidx/biometric/w;->p:Landroidx/lifecycle/MutableLiveData;

    .line 64
    .line 65
    :cond_2
    iget-object p1, p1, Landroidx/biometric/w;->p:Landroidx/lifecycle/MutableLiveData;

    .line 66
    .line 67
    new-instance v0, Landroidx/biometric/j;

    .line 68
    .line 69
    const/4 v1, 0x1

    .line 70
    invoke-direct {v0, p0, v1}, Landroidx/biometric/j;-><init>(Landroidx/biometric/p;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 77
    .line 78
    iget-object v0, p1, Landroidx/biometric/w;->q:Landroidx/lifecycle/MutableLiveData;

    .line 79
    .line 80
    if-nez v0, :cond_3

    .line 81
    .line 82
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 83
    .line 84
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 85
    .line 86
    .line 87
    iput-object v0, p1, Landroidx/biometric/w;->q:Landroidx/lifecycle/MutableLiveData;

    .line 88
    .line 89
    :cond_3
    iget-object p1, p1, Landroidx/biometric/w;->q:Landroidx/lifecycle/MutableLiveData;

    .line 90
    .line 91
    new-instance v0, Landroidx/biometric/j;

    .line 92
    .line 93
    const/4 v1, 0x2

    .line 94
    invoke-direct {v0, p0, v1}, Landroidx/biometric/j;-><init>(Landroidx/biometric/p;I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 101
    .line 102
    iget-object v0, p1, Landroidx/biometric/w;->r:Landroidx/lifecycle/MutableLiveData;

    .line 103
    .line 104
    if-nez v0, :cond_4

    .line 105
    .line 106
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 107
    .line 108
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 109
    .line 110
    .line 111
    iput-object v0, p1, Landroidx/biometric/w;->r:Landroidx/lifecycle/MutableLiveData;

    .line 112
    .line 113
    :cond_4
    iget-object p1, p1, Landroidx/biometric/w;->r:Landroidx/lifecycle/MutableLiveData;

    .line 114
    .line 115
    new-instance v0, Landroidx/biometric/j;

    .line 116
    .line 117
    const/4 v1, 0x3

    .line 118
    invoke-direct {v0, p0, v1}, Landroidx/biometric/j;-><init>(Landroidx/biometric/p;I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 125
    .line 126
    iget-object v0, p1, Landroidx/biometric/w;->s:Landroidx/lifecycle/MutableLiveData;

    .line 127
    .line 128
    if-nez v0, :cond_5

    .line 129
    .line 130
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 131
    .line 132
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 133
    .line 134
    .line 135
    iput-object v0, p1, Landroidx/biometric/w;->s:Landroidx/lifecycle/MutableLiveData;

    .line 136
    .line 137
    :cond_5
    iget-object p1, p1, Landroidx/biometric/w;->s:Landroidx/lifecycle/MutableLiveData;

    .line 138
    .line 139
    new-instance v0, Landroidx/biometric/j;

    .line 140
    .line 141
    const/4 v1, 0x4

    .line 142
    invoke-direct {v0, p0, v1}, Landroidx/biometric/j;-><init>(Landroidx/biometric/p;I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 149
    .line 150
    iget-object v0, p1, Landroidx/biometric/w;->u:Landroidx/lifecycle/MutableLiveData;

    .line 151
    .line 152
    if-nez v0, :cond_6

    .line 153
    .line 154
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 155
    .line 156
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 157
    .line 158
    .line 159
    iput-object v0, p1, Landroidx/biometric/w;->u:Landroidx/lifecycle/MutableLiveData;

    .line 160
    .line 161
    :cond_6
    iget-object p1, p1, Landroidx/biometric/w;->u:Landroidx/lifecycle/MutableLiveData;

    .line 162
    .line 163
    new-instance v0, Landroidx/biometric/j;

    .line 164
    .line 165
    const/4 v1, 0x5

    .line 166
    invoke-direct {v0, p0, v1}, Landroidx/biometric/j;-><init>(Landroidx/biometric/p;I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 170
    .line 171
    .line 172
    return-void
.end method

.method public final onStart()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x1d

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/biometric/w;->a()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {v0}, La/a;->s(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    iput-boolean v1, v0, Landroidx/biometric/w;->n:Z

    .line 26
    .line 27
    new-instance v1, Landroidx/biometric/o;

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    invoke-direct {v1, v0, v2}, Landroidx/biometric/o;-><init>(Landroidx/biometric/w;I)V

    .line 31
    .line 32
    .line 33
    const-wide/16 v2, 0xfa

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/biometric/p;->b:Landroid/os/Handler;

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x1d

    .line 7
    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 11
    .line 12
    iget-boolean v0, v0, Landroidx/biometric/w;->l:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, v0}, Landroidx/biometric/p;->b(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    return-void
.end method
