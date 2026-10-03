package com.minhub.gamehub.hub.auth;

import E.b;
import L1.d;
import S1.j;
import android.util.Log;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Map;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\bÀ\u0002\u0018\u00002\u00020\u0001:\u0001\u000eB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J6\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\u000bJ8\u0010\r\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\u000bH\u0002¨\u0006\u000f"}, d2 = {"Lcom/minhub/gamehub/hub/auth/AuthHttp;", "", "<init>", "()V", "postForm", "Lcom/minhub/gamehub/hub/auth/AuthHttp$Result;", "url", "", "params", "", "connectTimeoutMs", "", "readTimeoutMs", "postOnce", "Result", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAuthHttp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthHttp.kt\ncom/minhub/gamehub/hub/auth/AuthHttp\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,82:1\n1#2:83\n*E\n"})
public final class AuthHttp {
    public static final AuthHttp INSTANCE = new AuthHttp();

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\t\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\r2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\f\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\f\u0010\u000e¨\u0006\u0016"}, d2 = {"Lcom/minhub/gamehub/hub/auth/AuthHttp$Result;", "", "code", "", "body", "", "<init>", "(ILjava/lang/String;)V", "getCode", "()I", "getBody", "()Ljava/lang/String;", "isSuccess", "", "()Z", "component1", "component2", "copy", "equals", "other", "hashCode", "toString", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class Result {
        private final String body;
        private final int code;

        public Result(int i3, String body) {
            Intrinsics.checkNotNullParameter(body, "body");
            this.code = i3;
            this.body = body;
        }

        public static /* synthetic */ Result copy$default(Result result, int i3, String str, int i4, Object obj) {
            if ((i4 & 1) != 0) {
                i3 = result.code;
            }
            if ((i4 & 2) != 0) {
                str = result.body;
            }
            return result.copy(i3, str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final int getCode() {
            return this.code;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getBody() {
            return this.body;
        }

        public final Result copy(int code, String body) {
            Intrinsics.checkNotNullParameter(body, "body");
            return new Result(code, body);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Result)) {
                return false;
            }
            Result result = (Result) other;
            return this.code == result.code && Intrinsics.areEqual(this.body, result.body);
        }

        public final String getBody() {
            return this.body;
        }

        public final int getCode() {
            return this.code;
        }

        public int hashCode() {
            return this.body.hashCode() + (Integer.hashCode(this.code) * 31);
        }

        public final boolean isSuccess() {
            int i3 = this.code;
            return 200 <= i3 && i3 < 300;
        }

        public String toString() {
            return "Result(code=" + this.code + ", body=" + this.body + ")";
        }
    }

    private AuthHttp() {
    }

    public static /* synthetic */ Result postForm$default(AuthHttp authHttp, String str, Map map, int i3, int i4, int i5, Object obj) {
        if ((i5 & 4) != 0) {
            i3 = 10000;
        }
        if ((i5 & 8) != 0) {
            i4 = 15000;
        }
        return authHttp.postForm(str, map, i3, i4);
    }

    private final Result postOnce(String url, Map<String, String> params, int connectTimeoutMs, int readTimeoutMs) throws ProtocolException {
        String strO = CollectionsKt.o(params.entrySet(), "&", null, null, new d(24), 30);
        HttpURLConnection httpURLConnectionC = j.c(url);
        httpURLConnectionC.setConnectTimeout(connectTimeoutMs);
        httpURLConnectionC.setReadTimeout(readTimeoutMs);
        httpURLConnectionC.setRequestMethod("POST");
        httpURLConnectionC.setDoOutput(true);
        httpURLConnectionC.setRequestProperty("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8");
        try {
            OutputStream outputStream = httpURLConnectionC.getOutputStream();
            try {
                Charset UTF_8 = StandardCharsets.UTF_8;
                Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
                byte[] bytes = strO.getBytes(UTF_8);
                Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                outputStream.write(bytes);
                Unit unit = Unit.INSTANCE;
                String str = null;
                CloseableKt.closeFinally(outputStream, null);
                int responseCode = httpURLConnectionC.getResponseCode();
                InputStream errorStream = (200 > responseCode || responseCode >= 300) ? httpURLConnectionC.getErrorStream() : httpURLConnectionC.getInputStream();
                if (errorStream != null) {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(errorStream, Charsets.UTF_8), 8192);
                    try {
                        String text = TextStreamsKt.readText(bufferedReader);
                        CloseableKt.closeFinally(bufferedReader, null);
                        str = text;
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            CloseableKt.closeFinally(bufferedReader, th);
                            throw th2;
                        }
                    }
                }
                if (str == null) {
                    str = "";
                }
                Result result = new Result(responseCode, str);
                httpURLConnectionC.disconnect();
                return result;
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    CloseableKt.closeFinally(outputStream, th3);
                    throw th4;
                }
            }
        } catch (Throwable th5) {
            httpURLConnectionC.disconnect();
            throw th5;
        }
    }

    public static /* synthetic */ Result postOnce$default(AuthHttp authHttp, String str, Map map, int i3, int i4, int i5, Object obj) {
        if ((i5 & 4) != 0) {
            i3 = 10000;
        }
        if ((i5 & 8) != 0) {
            i4 = 15000;
        }
        return authHttp.postOnce(str, map, i3, i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence postOnce$lambda$0(Map.Entry entry) {
        Intrinsics.checkNotNullParameter(entry, "<destruct>");
        String str = (String) entry.getKey();
        String str2 = (String) entry.getValue();
        Charset charset = StandardCharsets.UTF_8;
        return kotlin.collections.unsigned.a.h(URLEncoder.encode(str, charset.name()), "=", URLEncoder.encode(str2, charset.name()));
    }

    public final Result postForm(String url, Map<String, String> params, int connectTimeoutMs, int readTimeoutMs) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(params, "params");
        try {
            return postOnce(url, params, connectTimeoutMs, readTimeoutMs);
        } catch (IOException e2) {
            Intrinsics.checkNotNullParameter(url, "url");
            String strO = StringsKt.N(url, "https://auth.h-game18.xyz/") ? kotlin.collections.unsigned.a.o("https://minhub-auth.blogluccisan.workers.dev", StringsKt__StringsKt.removePrefix(url, (CharSequence) "https://auth.h-game18.xyz")) : null;
            if (strO == null) {
                throw e2;
            }
            Log.w("AuthHttp", b.n("Auth request failed (", e2.getClass().getSimpleName(), ": ", e2.getMessage(), "); retrying on the fallback address"));
            try {
                return postOnce(strO, params, connectTimeoutMs, readTimeoutMs);
            } catch (IOException e3) {
                ExceptionsKt.addSuppressed(e2, e3);
                throw e2;
            }
        }
    }
}
