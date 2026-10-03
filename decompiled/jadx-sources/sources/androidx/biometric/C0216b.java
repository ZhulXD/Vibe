package androidx.biometric;

import android.hardware.biometrics.BiometricPrompt;
import android.hardware.biometrics.BiometricPrompt$AuthenticationCallback;
import android.os.Build;
import android.security.identity.IdentityCredential;
import androidx.lifecycle.MutableLiveData;
import java.lang.ref.WeakReference;
import java.security.Signature;
import javax.crypto.Cipher;
import javax.crypto.Mac;

/* JADX INFO: renamed from: androidx.biometric.b, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0216b extends BiometricPrompt$AuthenticationCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AbstractC0219e f2761a;

    public C0216b(AbstractC0219e abstractC0219e) {
        this.f2761a = abstractC0219e;
    }

    public void onAuthenticationError(int i3, CharSequence charSequence) {
        this.f2761a.a(i3, charSequence);
    }

    public void onAuthenticationFailed() {
        WeakReference weakReference = ((u) this.f2761a).f2773a;
        if (weakReference.get() == null || !((w) weakReference.get()).f2782k) {
            return;
        }
        w wVar = (w) weakReference.get();
        if (wVar.f2789r == null) {
            wVar.f2789r = new MutableLiveData();
        }
        w.f(wVar.f2789r, Boolean.TRUE);
    }

    public void onAuthenticationSucceeded(BiometricPrompt.AuthenticationResult authenticationResult) {
        BiometricPrompt.CryptoObject cryptoObject;
        IdentityCredential identityCredentialB;
        N1.w wVar = null;
        if (authenticationResult != null && (cryptoObject = authenticationResult.getCryptoObject()) != null) {
            Cipher cipherD = y.d(cryptoObject);
            if (cipherD != null) {
                wVar = new N1.w(cipherD);
            } else {
                Signature signatureF = y.f(cryptoObject);
                if (signatureF != null) {
                    wVar = new N1.w(signatureF);
                } else {
                    Mac macE = y.e(cryptoObject);
                    if (macE != null) {
                        wVar = new N1.w(macE);
                    } else if (Build.VERSION.SDK_INT >= 30 && (identityCredentialB = z.b(cryptoObject)) != null) {
                        wVar = new N1.w();
                        wVar.f1493a = null;
                        wVar.b = null;
                        wVar.f1494c = null;
                        wVar.f1495d = identityCredentialB;
                    }
                }
            }
        }
        int i3 = Build.VERSION.SDK_INT;
        int iA = -1;
        if (i3 >= 30) {
            if (authenticationResult != null) {
                iA = AbstractC0218d.a(authenticationResult);
            }
        } else if (i3 != 29) {
            iA = 2;
        }
        this.f2761a.b(new s(wVar, iA));
    }

    public void onAuthenticationHelp(int i3, CharSequence charSequence) {
    }
}
