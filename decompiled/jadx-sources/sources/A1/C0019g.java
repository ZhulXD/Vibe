package A1;

import android.security.keystore.KeyGenParameterSpec;
import android.util.Base64;
import java.security.Key;
import java.security.KeyStore;
import java.util.concurrent.ConcurrentHashMap;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: A1.g, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0019g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ConcurrentHashMap f190a = new ConcurrentHashMap();

    public final byte[] a(C0027k value) {
        Intrinsics.checkNotNullParameter(value, "value");
        SecretKey secretKeyC = c();
        if (secretKeyC == null) {
            throw new E0(null);
        }
        try {
            Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
            cipher.init(2, secretKeyC, new GCMParameterSpec(128, Base64.decode(value.b, 2)));
            byte[] bArrDoFinal = cipher.doFinal(Base64.decode(value.f200a, 2));
            Intrinsics.checkNotNull(bArrDoFinal);
            return bArrDoFinal;
        } catch (Throwable th) {
            throw new E0(th);
        }
    }

    public final C0027k b(byte[] token) {
        Intrinsics.checkNotNullParameter(token, "token");
        try {
            Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
            cipher.init(1, d());
            String strEncodeToString = Base64.encodeToString(cipher.doFinal(token), 2);
            Intrinsics.checkNotNullExpressionValue(strEncodeToString, "encodeToString(...)");
            String strEncodeToString2 = Base64.encodeToString(cipher.getIV(), 2);
            Intrinsics.checkNotNullExpressionValue(strEncodeToString2, "encodeToString(...)");
            return new C0027k(strEncodeToString, strEncodeToString2);
        } catch (Throwable th) {
            throw new E0(th);
        }
    }

    public final SecretKey c() {
        Object objM9constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
            keyStore.load(null);
            Intrinsics.checkNotNullExpressionValue(keyStore, "apply(...)");
            Key key = keyStore.getKey("game-session-token", null);
            objM9constructorimpl = Result.m9constructorimpl(key instanceof SecretKey ? (SecretKey) key : null);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        return (SecretKey) (Result.m15isFailureimpl(objM9constructorimpl) ? null : objM9constructorimpl);
    }

    public final SecretKey d() {
        Object objComputeIfAbsent = f190a.computeIfAbsent("game-session-token", new C0017f(new C0015e(0), 0));
        Intrinsics.checkNotNullExpressionValue(objComputeIfAbsent, "computeIfAbsent(...)");
        synchronized (objComputeIfAbsent) {
            SecretKey secretKeyC = c();
            if (secretKeyC != null) {
                return secretKeyC;
            }
            KeyGenerator keyGenerator = KeyGenerator.getInstance("AES", "AndroidKeyStore");
            keyGenerator.init(new KeyGenParameterSpec.Builder("game-session-token", 3).setBlockModes("GCM").setEncryptionPaddings("NoPadding").setKeySize(256).build());
            SecretKey secretKeyGenerateKey = keyGenerator.generateKey();
            Intrinsics.checkNotNullExpressionValue(secretKeyGenerateKey, "generateKey(...)");
            return secretKeyGenerateKey;
        }
    }
}
