package N1;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SignatureException;
import java.security.spec.InvalidKeySpecException;
import java.util.Arrays;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final byte[] f1412d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final byte[] f1413e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1414a;
    public final byte[] b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f1415c;

    static {
        byte[] bytes = "RPGHUB-OTA-V2-CIPHERTEXT-SHA256\u0000".getBytes(Charsets.US_ASCII);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        f1412d = bytes;
        f1413e = new byte[]{48, 42, 48, 5, 6, 3, 43, 101, 112, 3, 33, 0};
    }

    public b() {
        byte[] bArrA;
        a engine = new a();
        Intrinsics.checkNotNullParameter(engine, "engine");
        String string = StringsKt.trim((CharSequence) "GyqoKzP180cOF6RMqbGfMIjDw/h+nxwC4UZkfoTUb2k=").toString();
        byte[] bArrPlus = null;
        string = (string == null || string.length() == 0) ? null : string;
        this.f1414a = string;
        boolean z2 = false;
        if (string != null && (bArrA = a.a(string)) != null) {
            int length = bArrA.length;
            byte[] bArr = f1413e;
            if (length == 32) {
                bArrPlus = ArraysKt.plus(bArr, bArrA);
            } else if (44 <= length && length < 65 && Arrays.equals(ArraysKt.copyOfRange(bArrA, 0, bArr.length), bArr)) {
                bArrPlus = bArrA;
            }
        }
        this.b = bArrPlus;
        if (string != null && bArrPlus == null) {
            z2 = true;
        }
        this.f1415c = z2;
    }

    public final y a(n manifest, byte[] ciphertext) throws IOException {
        byte[] bArr;
        String message;
        Intrinsics.checkNotNullParameter(manifest, "manifest");
        Intrinsics.checkNotNullParameter(ciphertext, "ciphertext");
        if (this.f1414a == null) {
            Intrinsics.checkNotNullParameter("signature verifier unavailable", "message");
            return new y(z.g, "signature verifier unavailable");
        }
        if (this.f1415c || (bArr = this.b) == null) {
            return new y(z.f1502d, "invalid Base64 public key");
        }
        try {
            byte[] bArrA = m.a(manifest);
            byte[] bArrDigest = MessageDigest.getInstance("SHA-256").digest(ciphertext);
            int length = bArrA.length + bArrDigest.length;
            byte[] bArr2 = f1412d;
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(length + bArr2.length);
            byteArrayOutputStream.write(bArrA);
            byteArrayOutputStream.write(bArr2);
            byteArrayOutputStream.write(bArrDigest);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byte[] bArrA2 = a.a(manifest.f1452d);
            if (bArrA2 == null) {
                return new y(z.f1503e, "invalid Base64 signature");
            }
            if (bArrA2.length != 64) {
                return new y(z.f1503e, "invalid Ed25519 signature length");
            }
            try {
                Intrinsics.checkNotNull(byteArray);
                return a.f(bArr, byteArray, bArrA2) ? new y(z.b, "") : new y(z.f1501c, "signature mismatch");
            } catch (UnsupportedOperationException e2) {
                String message2 = e2.getMessage();
                message = message2 != null ? message2 : "";
                Intrinsics.checkNotNullParameter(message, "message");
                return new y(z.g, message);
            } catch (InvalidKeyException unused) {
                return new y(z.f1502d, "invalid Ed25519 public key");
            } catch (NoSuchAlgorithmException e3) {
                String message3 = e3.getMessage();
                message = message3 != null ? message3 : "";
                Intrinsics.checkNotNullParameter(message, "message");
                return new y(z.g, message);
            } catch (NoSuchProviderException e4) {
                String message4 = e4.getMessage();
                message = message4 != null ? message4 : "";
                Intrinsics.checkNotNullParameter(message, "message");
                return new y(z.g, message);
            } catch (SignatureException unused2) {
                return new y(z.f1503e, "malformed Ed25519 signature");
            } catch (InvalidKeySpecException unused3) {
                return new y(z.f1502d, "invalid Ed25519 public key");
            } catch (Exception unused4) {
                return new y(z.f1501c, "signature verification failed");
            }
        } catch (Exception e5) {
            z zVar = z.f;
            String message5 = e5.getMessage();
            message = message5 != null ? message5 : "";
            return new y(zVar, message);
        }
    }
}
