package androidx.biometric;

import android.hardware.biometrics.BiometricPrompt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class m {
    public static void a(BiometricPrompt.Builder builder, boolean z2) {
        builder.setConfirmationRequired(z2);
    }

    public static void b(BiometricPrompt.Builder builder, boolean z2) {
        builder.setDeviceCredentialAllowed(z2);
    }
}
