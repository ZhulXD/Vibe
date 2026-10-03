.class public final Landroidx/biometric/a;
.super Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final synthetic a:Landroidx/biometric/f;


# direct methods
.method public constructor <init>(Landroidx/biometric/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/biometric/a;->a:Landroidx/biometric/f;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/biometric/a;->a:Landroidx/biometric/f;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/biometric/f;->c:Landroidx/biometric/u;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/biometric/u;->a(ILjava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onAuthenticationFailed()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/biometric/a;->a:Landroidx/biometric/f;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/biometric/f;->c:Landroidx/biometric/u;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/biometric/u;->a:Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/biometric/w;

    .line 18
    .line 19
    iget-boolean v1, v1, Landroidx/biometric/w;->k:Z

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroidx/biometric/w;

    .line 28
    .line 29
    iget-object v1, v0, Landroidx/biometric/w;->r:Landroidx/lifecycle/MutableLiveData;

    .line 30
    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 34
    .line 35
    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v1, v0, Landroidx/biometric/w;->r:Landroidx/lifecycle/MutableLiveData;

    .line 39
    .line 40
    :cond_0
    iget-object v0, v0, Landroidx/biometric/w;->r:Landroidx/lifecycle/MutableLiveData;

    .line 41
    .line 42
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 43
    .line 44
    invoke-static {v0, v1}, Landroidx/biometric/w;->f(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method public final onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/biometric/a;->a:Landroidx/biometric/f;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/biometric/f;->c:Landroidx/biometric/u;

    .line 4
    .line 5
    iget-object p1, p1, Landroidx/biometric/u;->a:Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroidx/biometric/w;

    .line 18
    .line 19
    iget-object v0, p1, Landroidx/biometric/w;->q:Landroidx/lifecycle/MutableLiveData;

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 24
    .line 25
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p1, Landroidx/biometric/w;->q:Landroidx/lifecycle/MutableLiveData;

    .line 29
    .line 30
    :cond_0
    iget-object p1, p1, Landroidx/biometric/w;->q:Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    invoke-static {p1, p2}, Landroidx/biometric/w;->f(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public final onAuthenticationSucceeded(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    invoke-virtual {p1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;->getCryptoObject()Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

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
    invoke-virtual {p1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    new-instance v0, LN1/w;

    .line 18
    .line 19
    invoke-direct {v0, v1}, LN1/w;-><init>(Ljavax/crypto/Cipher;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getSignature()Ljava/security/Signature;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    new-instance v0, LN1/w;

    .line 30
    .line 31
    invoke-direct {v0, v1}, LN1/w;-><init>(Ljava/security/Signature;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {p1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getMac()Ljavax/crypto/Mac;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_3

    .line 40
    .line 41
    new-instance v0, LN1/w;

    .line 42
    .line 43
    invoke-direct {v0, p1}, LN1/w;-><init>(Ljavax/crypto/Mac;)V

    .line 44
    .line 45
    .line 46
    :cond_3
    :goto_0
    new-instance p1, Landroidx/biometric/s;

    .line 47
    .line 48
    const/4 v1, 0x2

    .line 49
    invoke-direct {p1, v0, v1}, Landroidx/biometric/s;-><init>(LN1/w;I)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Landroidx/biometric/a;->a:Landroidx/biometric/f;

    .line 53
    .line 54
    iget-object v0, v0, Landroidx/biometric/f;->c:Landroidx/biometric/u;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Landroidx/biometric/u;->b(Landroidx/biometric/s;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
