package N1;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.URI;
import java.util.Locale;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Regex f1448a = new Regex("[A-Za-z0-9][A-Za-z0-9.+-]{0,127}");
    public static final Regex b = new Regex("[0-9a-fA-F]{64}");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final byte[] f1449c;

    static {
        byte[] bytes = "RPGHUB-OTA-V2\u0000".getBytes(Charsets.US_ASCII);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        f1449c = bytes;
    }

    public static byte[] a(n manifest) {
        o oVar;
        String str;
        l lVar;
        Intrinsics.checkNotNullParameter(manifest, "manifest");
        String str2 = manifest.f1450a;
        int i3 = manifest.f1461o;
        long j2 = manifest.f1456j;
        long j3 = manifest.f1455i;
        long j4 = manifest.f1454h;
        long j5 = manifest.g;
        long j6 = manifest.f;
        long j7 = manifest.f1453e;
        String str3 = manifest.f1451c;
        String str4 = manifest.b;
        l lVar2 = manifest.f1459m;
        o oVar2 = manifest.f1458l;
        if (StringsKt.isBlank(str2) || str2.length() > 2048) {
            throw new IllegalArgumentException("invalid url");
        }
        try {
            URI uri = new URI(str2);
            if (!uri.isAbsolute() || !StringsKt.equals(uri.getScheme(), "https", true) || uri.getRawFragment() != null || uri.getUserInfo() != null) {
                throw new IllegalArgumentException("invalid url");
            }
            int i4 = 0;
            for (int i5 = 0; i5 < str2.length(); i5++) {
                char cCharAt = str2.charAt(i5);
                if (Character.isISOControl(cCharAt) || CharsKt.isWhitespace(cCharAt)) {
                    throw new IllegalArgumentException("invalid url");
                }
            }
            if (!f1448a.matches(str4)) {
                throw new IllegalArgumentException("invalid version");
            }
            if (!b.matches(str3)) {
                throw new IllegalArgumentException("invalid sha256");
            }
            if (j7 < 0 || j6 < 0 || j5 < 0) {
                throw new IllegalArgumentException("invalid timestamp or sequence");
            }
            if (j4 < 0 || j3 < 0 || j2 < 0) {
                throw new IllegalArgumentException("invalid size");
            }
            if (i3 < 0) {
                throw new IllegalArgumentException("invalid app version");
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(256);
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            try {
                dataOutputStream.write(f1449c);
                b(dataOutputStream, str2);
                b(dataOutputStream, str4);
                Locale US = Locale.US;
                Intrinsics.checkNotNullExpressionValue(US, "US");
                String lowerCase = str3.toLowerCase(US);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                b(dataOutputStream, lowerCase);
                dataOutputStream.writeInt(8);
                dataOutputStream.writeLong(j7);
                dataOutputStream.writeInt(8);
                dataOutputStream.writeLong(j6);
                dataOutputStream.writeInt(8);
                dataOutputStream.writeLong(j5);
                dataOutputStream.writeInt(8);
                dataOutputStream.writeLong(j4);
                dataOutputStream.writeInt(8);
                dataOutputStream.writeLong(j3);
                dataOutputStream.writeInt(8);
                dataOutputStream.writeLong(j2);
                b(dataOutputStream, manifest.f1457k);
                int i6 = oVar2 != null ? 1 : 0;
                dataOutputStream.writeInt(1);
                dataOutputStream.write(i6);
                if (oVar2 != null) {
                    oVar = oVar2;
                    str = oVar.f1462a;
                } else {
                    oVar = oVar2;
                    str = null;
                }
                b(dataOutputStream, str);
                b(dataOutputStream, oVar != null ? oVar.b : null);
                b(dataOutputStream, oVar != null ? oVar.f1463c : null);
                int i7 = lVar2 != null ? 1 : 0;
                dataOutputStream.writeInt(1);
                dataOutputStream.write(i7);
                if (lVar2 != null) {
                    lVar = lVar2;
                    if (lVar.f1447a) {
                        i4 = 1;
                    }
                } else {
                    lVar = lVar2;
                }
                dataOutputStream.writeInt(1);
                dataOutputStream.write(i4);
                b(dataOutputStream, lVar != null ? lVar.b : null);
                b(dataOutputStream, manifest.f1460n);
                dataOutputStream.writeInt(4);
                dataOutputStream.writeInt(i3);
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(dataOutputStream, null);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                if (byteArray.length > 65536) {
                    throw new IllegalArgumentException("canonical payload too large");
                }
                Intrinsics.checkNotNullExpressionValue(byteArray, "also(...)");
                return byteArray;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(dataOutputStream, th);
                    throw th2;
                }
            }
        } catch (Exception unused) {
            throw new IllegalArgumentException("invalid url");
        }
    }

    public static void b(DataOutputStream dataOutputStream, String str) throws IOException {
        if (str == null) {
            dataOutputStream.writeInt(-1);
            return;
        }
        if (str.length() > 65536) {
            throw new IllegalArgumentException("canonical field too large");
        }
        for (int i3 = 0; i3 < str.length(); i3++) {
            char cCharAt = str.charAt(i3);
            if (Character.isISOControl(cCharAt) || cCharAt == 65533 || Character.isSurrogate(cCharAt)) {
                throw new IllegalArgumentException("malformed field");
            }
        }
        byte[] bytes = str.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        if (bytes.length > 65536) {
            throw new IllegalArgumentException("canonical field too large");
        }
        dataOutputStream.writeInt(bytes.length);
        dataOutputStream.write(bytes);
    }
}
