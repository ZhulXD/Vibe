package com.minhub.gamehub.data.protect;

import E.b;
import android.os.Build;
import android.security.keystore.KeyGenParameterSpec;
import android.security.keystore.KeyInfo;
import android.util.Log;
import java.security.Key;
import java.security.KeyStore;
import java.security.spec.KeySpec;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\b\u001a\u0004\u0018\u00010\tJ\b\u0010\n\u001a\u0004\u0018\u00010\tJ\u0006\u0010\u000b\u001a\u00020\fJ\u0006\u0010\r\u001a\u00020\u0005J\u0006\u0010\u000e\u001a\u00020\u000fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/minhub/gamehub/data/protect/GameContentKeys;", "", "<init>", "()V", "TAG", "", "KEYSTORE", "ALIAS", "getOrCreate", "Ljavax/crypto/SecretKey;", "existing", "isAvailable", "", "backingDescription", "clear", "", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGameContentKeys.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameContentKeys.kt\ncom/minhub/gamehub/data/protect/GameContentKeys\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,132:1\n1#2:133\n*E\n"})
public final class GameContentKeys {
    private static final String ALIAS = "minhub_game_content_v1";
    public static final GameContentKeys INSTANCE = new GameContentKeys();
    private static final String KEYSTORE = "AndroidKeyStore";
    private static final String TAG = "MinHub-ContentKey";

    private GameContentKeys() {
    }

    public final String backingDescription() {
        try {
            SecretKey secretKeyExisting = existing();
            if (secretKeyExisting == null) {
                return "no key";
            }
            KeySpec keySpec = SecretKeyFactory.getInstance(secretKeyExisting.getAlgorithm(), KEYSTORE).getKeySpec(secretKeyExisting, KeyInfo.class);
            Intrinsics.checkNotNull(keySpec, "null cannot be cast to non-null type android.security.keystore.KeyInfo");
            KeyInfo keyInfo = (KeyInfo) keySpec;
            if (Build.VERSION.SDK_INT < 31) {
                return keyInfo.isInsideSecureHardware() ? "secure hardware" : "software only";
            }
            int securityLevel = keyInfo.getSecurityLevel();
            if (securityLevel == 0) {
                return "software only";
            }
            if (securityLevel != 1) {
                return securityLevel != 2 ? "unknown (level=${info.securityLevel})" : "StrongBox";
            }
            return "TEE";
        } catch (Exception unused) {
            return "unknown (${e.javaClass.simpleName})";
        }
    }

    public final void clear() {
        try {
            KeyStore keyStore = KeyStore.getInstance(KEYSTORE);
            keyStore.load(null);
            keyStore.deleteEntry(ALIAS);
        } catch (Exception e2) {
            b.x("Could not clear content key: ", e2.getMessage(), TAG);
        }
    }

    public final SecretKey existing() {
        try {
            KeyStore keyStore = KeyStore.getInstance(KEYSTORE);
            keyStore.load(null);
            Key key = keyStore.getKey(ALIAS, null);
            if (key instanceof SecretKey) {
                return (SecretKey) key;
            }
            return null;
        } catch (Exception e2) {
            b.x("Content key unavailable: ", e2.getMessage(), TAG);
            return null;
        }
    }

    public final SecretKey getOrCreate() {
        SecretKey secretKeyGenerateKey;
        synchronized (this) {
            SecretKey secretKeyExisting = INSTANCE.existing();
            if (secretKeyExisting != null) {
                return secretKeyExisting;
            }
            try {
                KeyGenerator keyGenerator = KeyGenerator.getInstance("AES", KEYSTORE);
                keyGenerator.init(new KeyGenParameterSpec.Builder(ALIAS, 3).setBlockModes("GCM").setEncryptionPaddings("NoPadding").setKeySize(256).setUserAuthenticationRequired(false).setRandomizedEncryptionRequired(false).build());
                secretKeyGenerateKey = keyGenerator.generateKey();
            } catch (Exception e2) {
                Log.w(TAG, "Device cannot provide a content key: " + e2.getMessage());
                secretKeyGenerateKey = null;
            }
            return secretKeyGenerateKey;
        }
    }

    public final boolean isAvailable() {
        return existing() != null;
    }
}
