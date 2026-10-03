package com.minhub.gamehub.data;

import A1.C0036q;
import com.minhub.gamehub.NativeKeys;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\rR\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u000e"}, d2 = {"Lcom/minhub/gamehub/data/DataEncryptor;", "", "<init>", "()V", "secretKey", "Ljavax/crypto/spec/SecretKeySpec;", "getSecretKey", "()Ljavax/crypto/spec/SecretKeySpec;", "secretKey$delegate", "Lkotlin/Lazy;", "decryptFile", "Ljava/io/ByteArrayInputStream;", "encFile", "Ljava/io/File;", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class DataEncryptor {
    public static final DataEncryptor INSTANCE = new DataEncryptor();

    /* JADX INFO: renamed from: secretKey$delegate, reason: from kotlin metadata */
    private static final Lazy secretKey = LazyKt.lazy(new C0036q(8));

    private DataEncryptor() {
    }

    private final SecretKeySpec getSecretKey() {
        return (SecretKeySpec) secretKey.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SecretKeySpec secretKey_delegate$lambda$0() throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        byte[] bytes = NativeKeys.encKey().getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        return new SecretKeySpec(messageDigest.digest(bytes), "AES");
    }

    public final ByteArrayInputStream decryptFile(File encFile) {
        Intrinsics.checkNotNullParameter(encFile, "encFile");
        try {
            byte[] bytes = FilesKt.readBytes(encFile);
            if (bytes.length <= 16) {
                return null;
            }
            byte[] bArrCopyOfRange = ArraysKt.copyOfRange(bytes, 0, 16);
            byte[] bArrCopyOfRange2 = ArraysKt.copyOfRange(bytes, 16, bytes.length);
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(2, getSecretKey(), new IvParameterSpec(bArrCopyOfRange));
            return new ByteArrayInputStream(cipher.doFinal(bArrCopyOfRange2));
        } catch (Exception unused) {
            return null;
        }
    }
}
