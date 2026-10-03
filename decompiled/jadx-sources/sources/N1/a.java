package N1;

import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.system.StructStat;
import java.io.ByteArrayOutputStream;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.math.BigInteger;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.X509EncodedKeySpec;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.ArraysKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f1411a = new a();

    public static final byte[] a(String str) {
        byte[] bArr = b.f1412d;
        if (str.length() == 0 || str.length() % 4 != 0 || !new Regex("[A-Za-z0-9+/]*={0,2}").matches(str)) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((str.length() * 3) / 4);
        int i3 = 0;
        while (i3 < str.length()) {
            try {
                int iB = b(str.charAt(i3));
                int iB2 = b(str.charAt(i3 + 1));
                int i4 = i3 + 3;
                char cCharAt = str.charAt(i3 + 2);
                i3 += 4;
                char cCharAt2 = str.charAt(i4);
                int iB3 = cCharAt == '=' ? 0 : b(cCharAt);
                int iB4 = cCharAt2 == '=' ? 0 : b(cCharAt2);
                if (iB < 0 || iB2 < 0 || iB3 < 0 || iB4 < 0) {
                    return null;
                }
                if (cCharAt == '=' && cCharAt2 != '=') {
                    return null;
                }
                if (i3 == str.length() && cCharAt == '=' && (iB2 & 15) != 0) {
                    return null;
                }
                if (i3 == str.length() && cCharAt2 == '=' && (iB3 & 3) != 0) {
                    return null;
                }
                byteArrayOutputStream.write((iB << 2) | (iB2 >> 4));
                if (cCharAt != '=') {
                    byteArrayOutputStream.write((iB2 << 4) | (iB3 >> 2));
                }
                if (cCharAt2 != '=') {
                    byteArrayOutputStream.write((iB3 << 6) | iB4);
                }
            } catch (Exception unused) {
                return null;
            }
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static int b(char c3) {
        if ('A' <= c3 && c3 < '[') {
            return c3 - 'A';
        }
        if ('a' <= c3 && c3 < '{') {
            return c3 - 'G';
        }
        if ('0' <= c3 && c3 < ':') {
            return c3 + 4;
        }
        if (c3 == '+') {
            return 62;
        }
        return c3 == '/' ? 63 : -1;
    }

    public static boolean f(byte[] publicKey, byte[] message, byte[] signature) throws SignatureException, NoSuchAlgorithmException {
        w wVarB;
        byte[] bArrCopyOfRange;
        w wVarB2;
        Intrinsics.checkNotNullParameter(publicKey, "publicKey");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(signature, "signature");
        try {
            PublicKey publicKeyGeneratePublic = KeyFactory.getInstance("Ed25519").generatePublic(new X509EncodedKeySpec(publicKey));
            Intrinsics.checkNotNullExpressionValue(publicKeyGeneratePublic, "generatePublic(...)");
            Signature signature2 = Signature.getInstance("Ed25519");
            signature2.initVerify(publicKeyGeneratePublic);
            signature2.update(message);
            return signature2.verify(signature);
        } catch (SignatureException e2) {
            throw e2;
        } catch (Exception unused) {
            BigInteger bigInteger = x.f1496a;
            byte[] publicKey2 = ArraysKt.copyOfRange(publicKey, publicKey.length - 32, publicKey.length);
            Intrinsics.checkNotNullParameter(publicKey2, "publicKey");
            Intrinsics.checkNotNullParameter(message, "message");
            Intrinsics.checkNotNullParameter(signature, "signature");
            if (publicKey2.length != 32 || signature.length != 64 || (wVarB = x.b(publicKey2)) == null || (wVarB2 = x.b((bArrCopyOfRange = ArraysKt.copyOfRange(signature, 0, 32)))) == null) {
                return false;
            }
            BigInteger bigInteger2 = new BigInteger(1, ArraysKt.reversedArray(ArraysKt.copyOfRange(signature, 32, 64)));
            BigInteger bigInteger3 = x.b;
            if (bigInteger2.compareTo(bigInteger3) >= 0) {
                return false;
            }
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-512");
            messageDigest.update(bArrCopyOfRange);
            messageDigest.update(publicKey2);
            messageDigest.update(message);
            byte[] bArrDigest = messageDigest.digest();
            Intrinsics.checkNotNull(bArrDigest);
            BigInteger bigIntegerMod = new BigInteger(1, ArraysKt.reversedArray(bArrDigest)).mod(bigInteger3);
            w wVarC = x.c(bigInteger2, x.g);
            Intrinsics.checkNotNull(bigIntegerMod);
            w wVarA = x.a(wVarB2, x.c(bigIntegerMod, wVarB));
            BigInteger bigInteger4 = (BigInteger) wVarA.f1494c;
            BigInteger bigIntegerMultiply = ((BigInteger) wVarC.f1493a).multiply(bigInteger4);
            BigInteger bigInteger5 = (BigInteger) wVarA.f1493a;
            BigInteger bigInteger6 = (BigInteger) wVarC.f1494c;
            BigInteger bigIntegerSubtract = bigIntegerMultiply.subtract(bigInteger5.multiply(bigInteger6));
            BigInteger bigInteger7 = x.f1496a;
            return bigIntegerSubtract.mod(bigInteger7).signum() == 0 && ((BigInteger) wVarC.b).multiply(bigInteger4).subtract(((BigInteger) wVarA.b).multiply(bigInteger6)).mod(bigInteger7).signum() == 0;
        }
    }

    public FileDescriptor c(String path, d access, boolean z2) {
        int i3;
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(access, "access");
        int iOrdinal = access.ordinal();
        if (iOrdinal == 0) {
            i3 = OsConstants.O_RDONLY;
        } else if (iOrdinal == 1) {
            i3 = OsConstants.O_WRONLY;
        } else {
            if (iOrdinal != 2) {
                throw new NoWhenBranchMatchedException();
            }
            i3 = OsConstants.O_RDWR;
        }
        try {
            return Os.open(path, i3 | (z2 ? OsConstants.O_CREAT | OsConstants.O_EXCL : 0) | OsConstants.O_NOFOLLOW, 384);
        } catch (ErrnoException e2) {
            int i4 = e2.errno;
            if (i4 == OsConstants.ENOENT) {
                return null;
            }
            if (z2 && i4 == OsConstants.EEXIST) {
                return null;
            }
            throw e2;
        }
    }

    public byte[] d(String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        FileDescriptor fileDescriptorC = c(path, d.b, false);
        if (fileDescriptorC == null) {
            return null;
        }
        FileInputStream fileInputStream = new FileInputStream(fileDescriptorC);
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[8192];
            int i3 = 0;
            do {
                int i4 = fileInputStream.read(bArr);
                if (i4 < 0) {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    CloseableKt.closeFinally(fileInputStream, null);
                    return byteArray;
                }
                byteArrayOutputStream.write(bArr, 0, i4);
                for (int i5 = 0; i5 < i4; i5++) {
                    if (bArr[i5] == 10 && (i3 = i3 + 1) > 10000) {
                        throw new IllegalStateException("metadata lines");
                    }
                }
            } while (byteArrayOutputStream.size() <= 1048576);
            throw new IllegalStateException("metadata bytes");
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(fileInputStream, th);
                throw th2;
            }
        }
    }

    public e e(String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        try {
            StructStat structStatLstat = Os.lstat(path);
            if (structStatLstat == null) {
                return null;
            }
            int i3 = structStatLstat.st_mode & OsConstants.S_IFMT;
            return new e(i3 == OsConstants.S_IFREG, i3 == OsConstants.S_IFLNK, structStatLstat.st_size);
        } catch (ErrnoException e2) {
            if (e2.errno == OsConstants.ENOENT) {
                return null;
            }
            throw e2;
        }
    }
}
