package org.godotengine.godot.utils;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.util.Base64;
import android.util.Log;
import java.security.KeyStore;
import java.security.cert.X509Certificate;
import java.util.Enumeration;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class GodotNetUtils {
    private WifiManager.MulticastLock multicastLock;

    public GodotNetUtils(Context context) {
        if (PermissionsUtil.hasManifestPermission(context, "android.permission.CHANGE_WIFI_MULTICAST_STATE")) {
            WifiManager.MulticastLock multicastLockCreateMulticastLock = ((WifiManager) context.getApplicationContext().getSystemService("wifi")).createMulticastLock("GodotMulticastLock");
            this.multicastLock = multicastLockCreateMulticastLock;
            multicastLockCreateMulticastLock.setReferenceCounted(true);
        }
    }

    public static String getCACertificates() {
        try {
            KeyStore keyStore = KeyStore.getInstance("AndroidCAStore");
            StringBuilder sb = new StringBuilder();
            if (keyStore != null) {
                keyStore.load(null, null);
                Enumeration<String> enumerationAliases = keyStore.aliases();
                while (enumerationAliases.hasMoreElements()) {
                    X509Certificate x509Certificate = (X509Certificate) keyStore.getCertificate(enumerationAliases.nextElement());
                    sb.append("-----BEGIN CERTIFICATE-----\n");
                    sb.append(Base64.encodeToString(x509Certificate.getEncoded(), 0));
                    sb.append("-----END CERTIFICATE-----\n");
                }
            }
            return sb.toString();
        } catch (Exception e2) {
            Log.e("Godot", "Exception while reading CA certificates: " + e2);
            return "";
        }
    }

    public void multicastLockAcquire() {
        WifiManager.MulticastLock multicastLock = this.multicastLock;
        if (multicastLock == null) {
            return;
        }
        try {
            multicastLock.acquire();
        } catch (RuntimeException e2) {
            Log.e("Godot", "Exception during multicast lock acquire: " + e2);
        }
    }

    public void multicastLockRelease() {
        WifiManager.MulticastLock multicastLock = this.multicastLock;
        if (multicastLock == null) {
            return;
        }
        try {
            multicastLock.release();
        } catch (RuntimeException e2) {
            Log.e("Godot", "Exception during multicast lock release: " + e2);
        }
    }
}
