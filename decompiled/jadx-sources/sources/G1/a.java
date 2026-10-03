package G1;

import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f992a = new a();
    public static final a b = new a();

    public static String a(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(value, "\\", "\\\\", false, 4, (Object) null), "'", "\\'", false, 4, (Object) null), "\"", "\\\"", false, 4, (Object) null), "\r", "\\r", false, 4, (Object) null), "\n", "\\n", false, 4, (Object) null);
    }

    public static String c(p utilityId) {
        Intrinsics.checkNotNullParameter(utilityId, "utilityId");
        return "window.__minhubUtilities.".concat(utilityId.b);
    }

    public byte[] b(String url, long j2) {
        Intrinsics.checkNotNullParameter(url, "url");
        try {
            URLConnection uRLConnectionOpenConnection = new URL(url).openConnection();
            Intrinsics.checkNotNull(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
            HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
            try {
                httpURLConnection.setInstanceFollowRedirects(false);
                httpURLConnection.setConnectTimeout(8000);
                httpURLConnection.setReadTimeout(AccessibilityNodeInfoCompat.EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_MAX_LENGTH);
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setUseCaches(false);
                httpURLConnection.setRequestProperty("Cache-Control", "no-cache");
                httpURLConnection.connect();
                int responseCode = httpURLConnection.getResponseCode();
                if (200 <= responseCode && responseCode < 300 && httpURLConnection.getContentLengthLong() <= j2) {
                    InputStream inputStream = httpURLConnection.getInputStream();
                    try {
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        byte[] bArr = new byte[8192];
                        do {
                            int i3 = inputStream.read(bArr);
                            if (i3 < 0) {
                                byte[] byteArray = byteArrayOutputStream.toByteArray();
                                CloseableKt.closeFinally(inputStream, null);
                                httpURLConnection.disconnect();
                                return byteArray;
                            }
                            byteArrayOutputStream.write(bArr, 0, i3);
                            httpURLConnection.disconnect();
                            return null;
                        } while (byteArrayOutputStream.size() <= j2);
                        CloseableKt.closeFinally(inputStream, null);
                        httpURLConnection.disconnect();
                        return null;
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            CloseableKt.closeFinally(inputStream, th);
                            throw th2;
                        }
                    }
                }
                httpURLConnection.disconnect();
                return null;
            } catch (Exception unused) {
                httpURLConnection.disconnect();
            } catch (Throwable th3) {
                httpURLConnection.disconnect();
                throw th3;
            }
        } catch (Exception unused2) {
        }
    }
}
