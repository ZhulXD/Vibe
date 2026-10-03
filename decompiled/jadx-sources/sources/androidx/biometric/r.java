package androidx.biometric;

import android.hardware.biometrics.BiometricManager;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class r {
    public static int a(BiometricManager biometricManager, int i3) {
        return biometricManager.canAuthenticate(i3);
    }
}
