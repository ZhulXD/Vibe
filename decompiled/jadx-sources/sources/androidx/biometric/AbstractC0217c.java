package androidx.biometric;

import android.hardware.biometrics.BiometricPrompt$AuthenticationCallback;

/* JADX INFO: renamed from: androidx.biometric.c, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0217c {
    public static BiometricPrompt$AuthenticationCallback a(AbstractC0219e abstractC0219e) {
        return new C0216b(abstractC0219e);
    }
}
