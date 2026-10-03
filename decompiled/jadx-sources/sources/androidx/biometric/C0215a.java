package androidx.biometric;

import androidx.core.hardware.fingerprint.FingerprintManagerCompat;
import androidx.lifecycle.MutableLiveData;
import java.lang.ref.WeakReference;
import java.security.Signature;
import javax.crypto.Cipher;
import javax.crypto.Mac;

/* JADX INFO: renamed from: androidx.biometric.a, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0215a extends FingerprintManagerCompat.AuthenticationCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0220f f2760a;

    public C0215a(C0220f c0220f) {
        this.f2760a = c0220f;
    }

    @Override // androidx.core.hardware.fingerprint.FingerprintManagerCompat.AuthenticationCallback
    public final void onAuthenticationError(int i3, CharSequence charSequence) {
        this.f2760a.f2763c.a(i3, charSequence);
    }

    @Override // androidx.core.hardware.fingerprint.FingerprintManagerCompat.AuthenticationCallback
    public final void onAuthenticationFailed() {
        WeakReference weakReference = this.f2760a.f2763c.f2773a;
        if (weakReference.get() == null || !((w) weakReference.get()).f2782k) {
            return;
        }
        w wVar = (w) weakReference.get();
        if (wVar.f2789r == null) {
            wVar.f2789r = new MutableLiveData();
        }
        w.f(wVar.f2789r, Boolean.TRUE);
    }

    @Override // androidx.core.hardware.fingerprint.FingerprintManagerCompat.AuthenticationCallback
    public final void onAuthenticationHelp(int i3, CharSequence charSequence) {
        WeakReference weakReference = this.f2760a.f2763c.f2773a;
        if (weakReference.get() != null) {
            w wVar = (w) weakReference.get();
            if (wVar.f2788q == null) {
                wVar.f2788q = new MutableLiveData();
            }
            w.f(wVar.f2788q, charSequence);
        }
    }

    @Override // androidx.core.hardware.fingerprint.FingerprintManagerCompat.AuthenticationCallback
    public final void onAuthenticationSucceeded(FingerprintManagerCompat.AuthenticationResult authenticationResult) {
        FingerprintManagerCompat.CryptoObject cryptoObject;
        N1.w wVar = null;
        if (authenticationResult != null && (cryptoObject = authenticationResult.getCryptoObject()) != null) {
            Cipher cipher = cryptoObject.getCipher();
            if (cipher != null) {
                wVar = new N1.w(cipher);
            } else {
                Signature signature = cryptoObject.getSignature();
                if (signature != null) {
                    wVar = new N1.w(signature);
                } else {
                    Mac mac = cryptoObject.getMac();
                    if (mac != null) {
                        wVar = new N1.w(mac);
                    }
                }
            }
        }
        this.f2760a.f2763c.b(new s(wVar, 2));
    }
}
