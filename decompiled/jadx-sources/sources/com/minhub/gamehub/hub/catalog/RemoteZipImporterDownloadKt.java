package com.minhub.gamehub.hub.catalog;

import android.content.Context;
import android.os.StatFs;
import android.util.Base64;
import android.util.Log;
import androidx.core.os.EnvironmentCompat;
import com.minhub.gamehub.NativeKeys;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.Charsets;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000R\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a:\u0010\f\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00012\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\r0\u0015H\u0000\u001a0\u0010\u0016\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00132\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\r0\u0015H\u0000\u001a0\u0010\u0018\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00132\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\r0\u0015H\u0000\u001a\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0002\u001a:\u0010\u001b\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u00012\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\r0\u0015H\u0000\u001a:\u0010\u001d\u001a\u00020\r*\u00020\u000e2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u000f\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00132\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\r0\u0015H\u0000\u001a8\u0010\u001e\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00132\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\r0\u0015H\u0002\u001a8\u0010\u001f\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010 \u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00132\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\r0\u0015H\u0002\u001a\b\u0010#\u001a\u00020\u0001H\u0002\u001a0\u0010$\u001a\u00020\r*\u00020\u000e2\u0006\u0010%\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00132\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\r0\u0015H\u0000\u001a8\u0010&\u001a\u00020\r*\u00020\u000e2\u0006\u0010%\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00132\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\r0\u00152\u0006\u0010'\u001a\u00020\bH\u0000\u001a\u0010\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0002\u001aJ\u0010,\u001a\u00020\n*\u00020\u000e2\u0006\u0010*\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\n2\u0006\u00101\u001a\u00020\n2\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\r0\u00152\b\b\u0002\u00102\u001a\u00020\nH\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010!\u001a\u00020\u0001X\u0082\u000e¢\u0006\u0002\n\u0000\"\u000e\u0010\"\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000¨\u00063"}, d2 = {"ERR_BANDWIDTH", "", "ERR_FILE_NOT_FOUND", "ERR_NOT_A_ZIP", "ERR_AUTH_FAILED", "ERR_REDIRECT_LIMIT", "ERR_GOFILE_LIMIT", "MAX_DOWNLOAD_RETRIES", "", "RETRY_BACKOFF_MS", "", "MIN_FREE_SPACE_BYTES", "downloadRanozZip", "", "Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;", "pageUrl", "appContext", "Landroid/content/Context;", "archiveFile", "Ljava/io/File;", "onProgress", "Lkotlin/Function1;", "downloadPixeldrainZip", "fileId", "downloadPixeldrainFilesystemZip", "filePath", "pixeldrainFileIdFromPage", "downloadBuzzHeavierCdnZip", "cdnUrl", "downloadBuzzHeavierZip", "downloadBuzzHeavierViaWebView", "downloadBuzzHeavierCdnStream", "cookieStr", "cachedGoFileWt", "GOFILE_WT_FALLBACK", "goFileWebsiteToken", "downloadGoFileZip", "zipUrl", "downloadZipInternal", "redirectDepth", "looksLikeZipStream", "", "input", "Ljava/io/BufferedInputStream;", "copyStream", "Ljava/io/InputStream;", "output", "Ljava/io/OutputStream;", "totalLength", "startMs", "alreadyDownloaded", "app_release"}, k = 2, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRemoteZipImporterDownload.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteZipImporterDownload.kt\ncom/minhub/gamehub/hub/catalog/RemoteZipImporterDownloadKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,695:1\n1#2:696\n*E\n"})
public final class RemoteZipImporterDownloadKt {
    private static final String ERR_AUTH_FAILED = "Authentication failed (error-token). Please try again.";
    private static final String ERR_BANDWIDTH = "Pixeldrain bandwidth quota exceeded (6 GB/week). Try again later or use a different link.";
    private static final String ERR_FILE_NOT_FOUND = "File not found or has been deleted.";
    private static final String ERR_GOFILE_LIMIT = "GoFile rate-limited (account monthly traffic limit). Please use another host (Pixeldrain / BuzzHeavier).";
    private static final String ERR_NOT_A_ZIP = "Server did not return a ZIP archive.";
    private static final String ERR_REDIRECT_LIMIT = "Too many download redirects while resolving archive.";
    private static final String GOFILE_WT_FALLBACK = "4fd6sg89d7s6";
    private static final int MAX_DOWNLOAD_RETRIES = 3;
    private static final long MIN_FREE_SPACE_BYTES = 209715200;
    private static final long RETRY_BACKOFF_MS = 3000;
    private static String cachedGoFileWt = "";

    private static final long copyStream(RemoteZipImporter remoteZipImporter, InputStream inputStream, OutputStream outputStream, long j2, long j3, Function1<? super Integer, Unit> function1, long j4) throws IOException {
        byte[] bArr = new byte[262144];
        int i3 = inputStream.read(bArr);
        long j5 = 0;
        int i4 = 0;
        long j6 = 0;
        int i5 = 0;
        int i6 = 0;
        while (i3 >= 0) {
            outputStream.write(bArr, i4, i3);
            j6 += (long) i3;
            if (j2 > j5) {
                long j7 = j4 + j6;
                int iCoerceIn = RangesKt.coerceIn((int) ((((long) 100) * j7) / j2), 1, 100);
                if (iCoerceIn != i5) {
                    function1.invoke(Integer.valueOf(iCoerceIn));
                    i5 = iCoerceIn;
                }
                if (iCoerceIn - i6 >= 10) {
                    i6 = iCoerceIn - (iCoerceIn % 10);
                    double dCurrentTimeMillis = (System.currentTimeMillis() - j3) / 1000.0d;
                    double d3 = 0.0d;
                    if (dCurrentTimeMillis > 0.0d) {
                        double d4 = 1024;
                        d3 = ((j6 / d4) / d4) / dCurrentTimeMillis;
                    }
                    String str = String.format("%.2f", Arrays.copyOf(new Object[]{Double.valueOf(d3)}, 1));
                    Intrinsics.checkNotNullExpressionValue(str, "format(...)");
                    long j8 = 1024;
                    Log.i("MinHub-DL", iCoerceIn + "% — " + str + " MB/s — " + ((j7 / j8) / j8) + "MB / " + ((j2 / j8) / j8) + "MB");
                }
            }
            i3 = inputStream.read(bArr);
            j5 = 0;
            i4 = 0;
        }
        return j6;
    }

    public static /* synthetic */ long copyStream$default(RemoteZipImporter remoteZipImporter, InputStream inputStream, OutputStream outputStream, long j2, long j3, Function1 function1, long j4, int i3, Object obj) {
        return copyStream(remoteZipImporter, inputStream, outputStream, j2, j3, function1, (i3 & 32) != 0 ? 0L : j4);
    }

    private static final void downloadBuzzHeavierCdnStream(RemoteZipImporter remoteZipImporter, String str, String str2, File file, Function1<? super Integer, Unit> function1) throws IOException {
        String str3;
        Object objM9constructorimpl;
        String strTake;
        URLConnection uRLConnectionOpenConnection = new URL(str).openConnection();
        Intrinsics.checkNotNull(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
        httpURLConnection.setConnectTimeout(15000);
        httpURLConnection.setReadTimeout(120000);
        httpURLConnection.setRequestMethod("GET");
        httpURLConnection.setInstanceFollowRedirects(true);
        httpURLConnection.setRequestProperty("Accept-Encoding", "identity");
        httpURLConnection.setRequestProperty("User-Agent", "Mozilla/5.0 (Linux; Android 13; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36");
        if (!StringsKt.isBlank(str2)) {
            httpURLConnection.setRequestProperty("Cookie", str2);
        }
        httpURLConnection.connect();
        int responseCode = httpURLConnection.getResponseCode();
        String contentType = httpURLConnection.getContentType();
        if (contentType == null) {
            contentType = "";
        }
        long contentLengthLong = httpURLConnection.getContentLengthLong();
        Long lValueOf = Long.valueOf(contentLengthLong);
        if (contentLengthLong <= 0) {
            lValueOf = null;
        }
        long jLongValue = lValueOf != null ? lValueOf.longValue() : -1L;
        if (jLongValue > 0) {
            long j2 = 1024;
            str3 = ((jLongValue / j2) / j2) + " MB";
        } else {
            str3 = EnvironmentCompat.MEDIA_UNKNOWN;
        }
        Log.i("MinHub-DL", "BuzzHeavier CDN stream code=" + responseCode + " type=" + contentType + " size=" + str3);
        if (200 > responseCode || responseCode >= 300) {
            try {
                Result.Companion companion = Result.INSTANCE;
                InputStream errorStream = httpURLConnection.getErrorStream();
                if (errorStream == null) {
                    errorStream = httpURLConnection.getInputStream();
                }
                if (errorStream != null) {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(errorStream, Charsets.UTF_8), 8192);
                    try {
                        strTake = StringsKt.take(TextStreamsKt.readText(bufferedReader), 300);
                        CloseableKt.closeFinally(bufferedReader, null);
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            CloseableKt.closeFinally(bufferedReader, th);
                            throw th2;
                        }
                    }
                } else {
                    strTake = null;
                }
                objM9constructorimpl = Result.m9constructorimpl(strTake);
            } catch (Throwable th3) {
                Result.Companion companion2 = Result.INSTANCE;
                objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th3));
            }
            String str4 = (String) (Result.m15isFailureimpl(objM9constructorimpl) ? null : objM9constructorimpl);
            String str5 = str4 != null ? str4 : "";
            httpURLConnection.disconnect();
            throw new IllegalStateException("BuzzHeavier CDN HTTP " + responseCode + " — " + str5);
        }
        if (StringsKt__StringsKt.contains(contentType, (CharSequence) "text/html", true)) {
            InputStream inputStream = httpURLConnection.getInputStream();
            Intrinsics.checkNotNullExpressionValue(inputStream, "getInputStream(...)");
            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(inputStream, Charsets.UTF_8), 8192);
            try {
                String strTake2 = StringsKt.take(TextStreamsKt.readText(bufferedReader2), 200);
                CloseableKt.closeFinally(bufferedReader2, null);
                httpURLConnection.disconnect();
                Log.d("MinHub-DL", "BuzzHeavier CDN got HTML: " + strTake2);
                throw new IllegalStateException("BuzzHeavier: CDN returned HTML instead of file");
            } catch (Throwable th4) {
                try {
                    throw th4;
                } catch (Throwable th5) {
                    CloseableKt.closeFinally(bufferedReader2, th4);
                    throw th5;
                }
            }
        }
        File parentFile = file.getParentFile();
        if (parentFile != null) {
            parentFile.mkdirs();
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        BufferedInputStream bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream());
        try {
            if (!looksLikeZipStream(bufferedInputStream)) {
                httpURLConnection.disconnect();
                throw new IllegalStateException(ERR_NOT_A_ZIP);
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                copyStream$default(remoteZipImporter, bufferedInputStream, fileOutputStream, jLongValue, jCurrentTimeMillis, function1, 0L, 32, null);
                CloseableKt.closeFinally(fileOutputStream, null);
                CloseableKt.closeFinally(bufferedInputStream, null);
                function1.invoke(100);
                httpURLConnection.disconnect();
            } catch (Throwable th6) {
                try {
                    throw th6;
                } catch (Throwable th7) {
                    CloseableKt.closeFinally(fileOutputStream, th6);
                    throw th7;
                }
            }
        } catch (Throwable th8) {
            try {
                throw th8;
            } catch (Throwable th9) {
                CloseableKt.closeFinally(bufferedInputStream, th8);
                throw th9;
            }
        }
    }

    public static final void downloadBuzzHeavierCdnZip(RemoteZipImporter remoteZipImporter, String cdnUrl, Context context, File archiveFile, Function1<? super Integer, Unit> onProgress) {
        Intrinsics.checkNotNullParameter(remoteZipImporter, "<this>");
        Intrinsics.checkNotNullParameter(cdnUrl, "cdnUrl");
        Intrinsics.checkNotNullParameter(archiveFile, "archiveFile");
        Intrinsics.checkNotNullParameter(onProgress, "onProgress");
        Log.i("MinHub-DL", "BuzzHeavier CDN direct: " + cdnUrl);
        try {
            downloadZipInternal(remoteZipImporter, cdnUrl, archiveFile, onProgress, 0);
        } catch (Exception e2) {
            Log.w("MinHub-DL", "BuzzHeavier CDN direct failed (" + e2.getMessage() + "), trying WebView");
            archiveFile.delete();
            if (context == null) {
                throw new IllegalStateException("BuzzHeavier: CDN link requires browser authentication and no context available.");
            }
            downloadBuzzHeavierViaWebView(remoteZipImporter, context, cdnUrl, archiveFile, onProgress);
        }
    }

    private static final void downloadBuzzHeavierViaWebView(RemoteZipImporter remoteZipImporter, Context context, String str, File file, Function1<? super Integer, Unit> function1) throws IOException {
        Log.i("MinHub-DL", "BuzzHeavier WebView flow: " + str);
        BuzzHeavierWebResult buzzHeavierWebResultResolveBuzzHeavierViaWebView = BuzzHeavierWebDownloaderKt.resolveBuzzHeavierViaWebView(context, str);
        if (buzzHeavierWebResultResolveBuzzHeavierViaWebView == null) {
            throw new IllegalStateException("BuzzHeavier: WebView could not resolve the download link (Cloudflare blocked or page timed out). Try a direct link (Pixeldrain, etc.).");
        }
        Log.i("MinHub-DL", "BuzzHeavier WebView resolved cdnUrl=" + buzzHeavierWebResultResolveBuzzHeavierViaWebView.getCdnUrl());
        downloadBuzzHeavierCdnStream(remoteZipImporter, buzzHeavierWebResultResolveBuzzHeavierViaWebView.getCdnUrl(), buzzHeavierWebResultResolveBuzzHeavierViaWebView.getCdnCookies(), file, function1);
    }

    public static final void downloadBuzzHeavierZip(RemoteZipImporter remoteZipImporter, Context context, String pageUrl, File archiveFile, Function1<? super Integer, Unit> onProgress) {
        Intrinsics.checkNotNullParameter(remoteZipImporter, "<this>");
        Intrinsics.checkNotNullParameter(pageUrl, "pageUrl");
        Intrinsics.checkNotNullParameter(archiveFile, "archiveFile");
        Intrinsics.checkNotNullParameter(onProgress, "onProgress");
        if (context == null) {
            throw new IllegalStateException("BuzzHeavier: Cloudflare-protected page requires WebView but no context is available.");
        }
        downloadBuzzHeavierViaWebView(remoteZipImporter, context, pageUrl, archiveFile, onProgress);
    }

    /* JADX WARN: Code duplicated, block: B:103:0x0351  */
    /* JADX WARN: Code duplicated, block: B:105:0x0354  */
    /* JADX WARN: Code duplicated, block: B:106:0x0359  */
    /* JADX WARN: Code duplicated, block: B:109:0x035f  */
    /* JADX WARN: Code duplicated, block: B:110:0x0377  */
    /* JADX WARN: Code duplicated, block: B:157:0x0479 A[Catch: all -> 0x047e, TryCatch #14 {all -> 0x047e, blocks: (B:155:0x0471, B:157:0x0479, B:161:0x0483), top: B:229:0x0471 }] */
    /* JADX WARN: Code duplicated, block: B:161:0x0483 A[Catch: all -> 0x047e, TRY_LEAVE, TryCatch #14 {all -> 0x047e, blocks: (B:155:0x0471, B:157:0x0479, B:161:0x0483), top: B:229:0x0471 }] */
    /* JADX WARN: Code duplicated, block: B:174:0x04ab  */
    /* JADX WARN: Code duplicated, block: B:180:0x04c2  */
    /* JADX WARN: Code duplicated, block: B:183:0x04c7  */
    /* JADX WARN: Code duplicated, block: B:184:0x04c9  */
    /* JADX WARN: Code duplicated, block: B:99:0x0340  */
    /* JADX WARN: Instruction removed from duplicated block: B:109:0x035f, please report this as an issue */
    public static final void downloadGoFileZip(RemoteZipImporter remoteZipImporter, String zipUrl, File archiveFile, Function1<? super Integer, Unit> onProgress) {
        List<String> groupValues;
        String str;
        String strReplace$default;
        HttpURLConnection httpURLConnection;
        int responseCode;
        String contentType;
        long contentLengthLong;
        Long lValueOf;
        long jLongValue;
        String str2;
        String str3;
        Object objM9constructorimpl;
        String str4;
        String str5;
        InputStream errorStream;
        String strTake;
        BufferedReader bufferedReader;
        HttpURLConnection httpURLConnection2;
        Object objM9constructorimpl2;
        List<String> groupValues2;
        String str6;
        String text;
        List<String> groupValues3;
        RemoteZipImporter remoteZipImporter2 = remoteZipImporter;
        Intrinsics.checkNotNullParameter(remoteZipImporter2, "<this>");
        Intrinsics.checkNotNullParameter(zipUrl, "zipUrl");
        Intrinsics.checkNotNullParameter(archiveFile, "archiveFile");
        Intrinsics.checkNotNullParameter(onProgress, "onProgress");
        Log.i("MinHub-DL", "GoFile zipUrl raw: " + zipUrl);
        String strReplace$default2 = StringsKt__StringsJVMKt.replace$default(zipUrl, " ", "%20", false, 4, (Object) null);
        MatchResult matchResultFind$default = Regex.find$default(new Regex("/download/direct/([0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12})/"), strReplace$default2, 0, 2, null);
        String str7 = (matchResultFind$default == null || (groupValues3 = matchResultFind$default.getGroupValues()) == null) ? null : (String) CollectionsKt.getOrNull(groupValues3, 1);
        Log.i("MinHub-DL", "GoFile contentId: " + str7);
        String strGofileToken = NativeKeys.gofileToken();
        if (StringsKt.isBlank(strGofileToken)) {
            URLConnection uRLConnectionOpenConnection = new URL("https://api.gofile.io/accounts").openConnection();
            Intrinsics.checkNotNull(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
            HttpURLConnection httpURLConnection3 = (HttpURLConnection) uRLConnectionOpenConnection;
            httpURLConnection3.setConnectTimeout(15000);
            httpURLConnection3.setReadTimeout(15000);
            httpURLConnection3.setRequestMethod("POST");
            httpURLConnection3.setRequestProperty("User-Agent", "Mozilla/5.0 (Linux; Android 10) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36");
            httpURLConnection3.setRequestProperty("Content-Type", "application/json");
            httpURLConnection3.setDoOutput(true);
            OutputStream outputStream = httpURLConnection3.getOutputStream();
            Charset charset = Charsets.UTF_8;
            byte[] bytes = "{}".getBytes(charset);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            outputStream.write(bytes);
            InputStream inputStream = httpURLConnection3.getInputStream();
            Intrinsics.checkNotNullExpressionValue(inputStream, "getInputStream(...)");
            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(inputStream, charset), 8192);
            try {
                String text2 = TextStreamsKt.readText(bufferedReader2);
                CloseableKt.closeFinally(bufferedReader2, null);
                httpURLConnection3.disconnect();
                Log.i("MinHub-DL", "GoFile accounts response: " + StringsKt.take(text2, 200));
                MatchResult matchResultFind$default2 = Regex.find$default(new Regex("\"token\"\\s*:\\s*\"([^\"]+)\""), text2, 0, 2, null);
                if (matchResultFind$default2 == null || (groupValues = matchResultFind$default2.getGroupValues()) == null || (strGofileToken = (String) CollectionsKt.getOrNull(groupValues, 1)) == null) {
                    throw new IllegalStateException("GoFile: failed to obtain guest token");
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(bufferedReader2, th);
                    throw th2;
                }
            }
        } else {
            Log.i("MinHub-DL", "GoFile using configured account token (" + StringsKt.take(strGofileToken, 6) + "...)");
        }
        String str8 = strGofileToken;
        Log.i("MinHub-DL", "GoFile token acquired (" + StringsKt.take(str8, 8) + "...)");
        String strGoFileWebsiteToken = goFileWebsiteToken();
        Log.i("MinHub-DL", "GoFile wt=" + ((Object) (strGoFileWebsiteToken.length() == 0 ? "<none>" : strGoFileWebsiteToken)));
        try {
            try {
                if (str7 == null || strGoFileWebsiteToken.length() <= 0) {
                    str = "getInputStream(...)";
                } else {
                    str = "getInputStream(...)";
                    URLConnection uRLConnectionOpenConnection2 = new URL(E.b.n("https://api.gofile.io/contents/", str7, "?wt=", strGoFileWebsiteToken, "&cache=true")).openConnection();
                    Intrinsics.checkNotNull(uRLConnectionOpenConnection2, "null cannot be cast to non-null type java.net.HttpURLConnection");
                    HttpURLConnection httpURLConnection4 = (HttpURLConnection) uRLConnectionOpenConnection2;
                    httpURLConnection4.setConnectTimeout(15000);
                    httpURLConnection4.setReadTimeout(15000);
                    httpURLConnection4.setRequestMethod("GET");
                    httpURLConnection4.setRequestProperty("User-Agent", "Mozilla/5.0 (Linux; Android 10) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36");
                    httpURLConnection4.setRequestProperty("Authorization", "Bearer " + str8);
                    httpURLConnection4.setRequestProperty("Cookie", "accountToken=" + str8);
                    httpURLConnection4.setRequestProperty("Referer", "https://gofile.io/");
                    int responseCode2 = httpURLConnection4.getResponseCode();
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        InputStream errorStream2 = (200 > responseCode2 || responseCode2 >= 300) ? httpURLConnection4.getErrorStream() : httpURLConnection4.getInputStream();
                        if (errorStream2 != null) {
                            httpURLConnection2 = httpURLConnection4;
                            try {
                                BufferedReader bufferedReader3 = new BufferedReader(new InputStreamReader(errorStream2, Charsets.UTF_8), 8192);
                                try {
                                    text = TextStreamsKt.readText(bufferedReader3);
                                    CloseableKt.closeFinally(bufferedReader3, null);
                                } catch (Throwable th3) {
                                    try {
                                        throw th3;
                                    } catch (Throwable th4) {
                                        CloseableKt.closeFinally(bufferedReader3, th3);
                                        throw th4;
                                    }
                                }
                            } catch (Throwable th5) {
                                th = th5;
                                Result.Companion companion2 = Result.INSTANCE;
                                objM9constructorimpl2 = Result.m9constructorimpl(ResultKt.createFailure(th));
                            }
                        } else {
                            httpURLConnection2 = httpURLConnection4;
                            text = null;
                        }
                        objM9constructorimpl2 = Result.m9constructorimpl(text);
                    } catch (Throwable th6) {
                        th = th6;
                        httpURLConnection2 = httpURLConnection4;
                    }
                    if (Result.m15isFailureimpl(objM9constructorimpl2)) {
                        objM9constructorimpl2 = null;
                    }
                    String str9 = (String) objM9constructorimpl2;
                    if (str9 == null) {
                        str9 = "";
                    }
                    httpURLConnection2.disconnect();
                    Log.i("MinHub-DL", "GoFile API code=" + responseCode2 + " body=" + StringsKt.take(str9, 400));
                    if (StringsKt__StringsKt.contains$default((CharSequence) str9, (CharSequence) "\"error-notPremium\"", false, 2, (Object) null)) {
                        Log.w("MinHub-DL", "GoFile API error-notPremium, attempting direct download anyway");
                        remoteZipImporter2 = remoteZipImporter;
                    } else {
                        if (StringsKt__StringsKt.contains$default((CharSequence) str9, (CharSequence) "\"error-token\"", false, 2, (Object) null)) {
                            throw new IllegalStateException("GoFile: Authentication failed (error-token). Please try again.");
                        }
                        if (StringsKt__StringsKt.contains$default((CharSequence) str9, (CharSequence) "\"not-found\"", false, 2, (Object) null) || responseCode2 == 404) {
                            throw new IllegalStateException(E.b.m("GoFile: File not found or has been deleted. (contentId=", str7, "). Please re-upload and update the link."));
                        }
                        if (200 <= responseCode2 && responseCode2 < 300) {
                            MatchResult matchResultFind$default3 = Regex.find$default(new Regex("\"link\"\\s*:\\s*\"([^\"]+)\""), str9, 0, 2, null);
                            strReplace$default = (matchResultFind$default3 == null || (groupValues2 = matchResultFind$default3.getGroupValues()) == null || (str6 = (String) CollectionsKt.getOrNull(groupValues2, 1)) == null) ? null : StringsKt__StringsJVMKt.replace$default(str6, "\\/", "/", false, 4, (Object) null);
                            remoteZipImporter2 = remoteZipImporter;
                            if (strReplace$default != null && remoteZipImporter2.isSupportedRemoteUrl$app_release(strReplace$default)) {
                                Log.i("MinHub-DL", "GoFile resolved directLink: ".concat(strReplace$default));
                            }
                            URLConnection uRLConnectionOpenConnection3 = new URL(strReplace$default).openConnection();
                            Intrinsics.checkNotNull(uRLConnectionOpenConnection3, "null cannot be cast to non-null type java.net.HttpURLConnection");
                            httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection3;
                            httpURLConnection.setConnectTimeout(15000);
                            httpURLConnection.setReadTimeout(120000);
                            httpURLConnection.setRequestMethod("GET");
                            httpURLConnection.setInstanceFollowRedirects(true);
                            httpURLConnection.setRequestProperty("Accept-Encoding", "identity");
                            httpURLConnection.setRequestProperty("User-Agent", "Mozilla/5.0 (Linux; Android 10) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36");
                            httpURLConnection.setRequestProperty("Cookie", "accountToken=" + str8);
                            httpURLConnection.setRequestProperty("Referer", "https://gofile.io/");
                            httpURLConnection.setRequestProperty("Origin", "https://gofile.io");
                            httpURLConnection.connect();
                            responseCode = httpURLConnection.getResponseCode();
                            contentType = httpURLConnection.getContentType();
                            if (contentType == null) {
                                contentType = "";
                            }
                            contentLengthLong = httpURLConnection.getContentLengthLong();
                            lValueOf = Long.valueOf(contentLengthLong);
                            if (contentLengthLong <= 0) {
                                lValueOf = null;
                            }
                            if (lValueOf != null) {
                                jLongValue = lValueOf.longValue();
                            } else {
                                jLongValue = -1;
                            }
                            if (jLongValue > 0) {
                                long j2 = 1024;
                                str2 = ((jLongValue / j2) / j2) + " MB";
                            } else {
                                str2 = EnvironmentCompat.MEDIA_UNKNOWN;
                            }
                            str3 = "GoFile GET ";
                            Log.i("MinHub-DL", "GoFile GET " + strReplace$default + " code=" + responseCode + " type=" + contentType + " size=" + str2);
                            if (200 <= responseCode || responseCode >= 300) {
                                Result.Companion companion3 = Result.INSTANCE;
                                errorStream = httpURLConnection.getErrorStream();
                                if (errorStream == null) {
                                    errorStream = httpURLConnection.getInputStream();
                                }
                                if (errorStream != null) {
                                    bufferedReader = new BufferedReader(new InputStreamReader(errorStream, Charsets.UTF_8), 8192);
                                    try {
                                        strTake = StringsKt.take(TextStreamsKt.readText(bufferedReader), 400);
                                        str3 = null;
                                        CloseableKt.closeFinally(bufferedReader, null);
                                    } catch (Throwable th7) {
                                        str3 = null;
                                        try {
                                            throw th7;
                                        } catch (Throwable th8) {
                                            CloseableKt.closeFinally(bufferedReader, th7);
                                            throw th8;
                                        }
                                    }
                                } else {
                                    str3 = null;
                                    strTake = null;
                                }
                                objM9constructorimpl = Result.m9constructorimpl(strTake);
                                if (Result.m15isFailureimpl(objM9constructorimpl)) {
                                    objM9constructorimpl = str3;
                                }
                                str4 = (String) objM9constructorimpl;
                                if (str4 == null) {
                                    str5 = "";
                                } else {
                                    str5 = str4;
                                }
                                httpURLConnection.disconnect();
                                Log.e("MinHub-DL", "GoFile " + responseCode + " body: " + str5);
                                if (responseCode != 429 || StringsKt__StringsKt.contains(str5, (CharSequence) "traffic limit", true) || StringsKt__StringsKt.contains(str5, (CharSequence) "limit exceeded", true)) {
                                    throw new IllegalStateException(ERR_GOFILE_LIMIT);
                                }
                                throw new IllegalStateException("GoFile: HTTP " + responseCode + " — " + str5);
                            }
                            if (StringsKt__StringsKt.contains(contentType, (CharSequence) "text/html", true)) {
                                InputStream inputStream2 = httpURLConnection.getInputStream();
                                Intrinsics.checkNotNullExpressionValue(inputStream2, str);
                                BufferedReader bufferedReader4 = new BufferedReader(new InputStreamReader(inputStream2, Charsets.UTF_8), 8192);
                                try {
                                    String strTake2 = StringsKt.take(TextStreamsKt.readText(bufferedReader4), 600);
                                    CloseableKt.closeFinally(bufferedReader4, null);
                                    httpURLConnection.disconnect();
                                    Log.i("MinHub-DL", "GoFile direct returned HTML: " + StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(strTake2, "\n", " ", false, 4, (Object) null), "\r", "", false, 4, (Object) null));
                                    throw new IllegalStateException(ERR_GOFILE_LIMIT);
                                } catch (Throwable th9) {
                                    try {
                                        throw th9;
                                    } catch (Throwable th10) {
                                        CloseableKt.closeFinally(bufferedReader4, th9);
                                        throw th10;
                                    }
                                }
                            }
                            File parentFile = archiveFile.getParentFile();
                            if (parentFile != null) {
                                parentFile.mkdirs();
                            }
                            long j3 = jLongValue;
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            BufferedInputStream bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream());
                            try {
                                if (!looksLikeZipStream(bufferedInputStream)) {
                                    httpURLConnection.disconnect();
                                    throw new IllegalStateException("GoFile: Server did not return a ZIP archive.");
                                }
                                FileOutputStream fileOutputStream = new FileOutputStream(archiveFile);
                                try {
                                    copyStream$default(remoteZipImporter2, bufferedInputStream, fileOutputStream, j3, jCurrentTimeMillis, onProgress, 0L, 32, null);
                                    CloseableKt.closeFinally(fileOutputStream, null);
                                    CloseableKt.closeFinally(bufferedInputStream, null);
                                    onProgress.invoke(100);
                                    httpURLConnection.disconnect();
                                    return;
                                } catch (Throwable th11) {
                                    try {
                                        throw th11;
                                    } catch (Throwable th12) {
                                        CloseableKt.closeFinally(fileOutputStream, th11);
                                        throw th12;
                                    }
                                }
                            } catch (Throwable th13) {
                                try {
                                    throw th13;
                                } catch (Throwable th14) {
                                    CloseableKt.closeFinally(bufferedInputStream, th13);
                                    throw th14;
                                }
                            }
                        }
                        remoteZipImporter2 = remoteZipImporter;
                        Log.w("MinHub-DL", "GoFile API unexpected code=" + responseCode2 + ", attempting direct download anyway");
                    }
                }
                if (errorStream != null) {
                    bufferedReader = new BufferedReader(new InputStreamReader(errorStream, Charsets.UTF_8), 8192);
                    strTake = StringsKt.take(TextStreamsKt.readText(bufferedReader), 400);
                    str3 = null;
                    CloseableKt.closeFinally(bufferedReader, null);
                } else {
                    str3 = null;
                    strTake = null;
                }
                objM9constructorimpl = Result.m9constructorimpl(strTake);
            } catch (Throwable th15) {
                th = th15;
                Result.Companion companion4 = Result.INSTANCE;
                objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
            }
            Result.Companion companion5 = Result.INSTANCE;
            errorStream = httpURLConnection.getErrorStream();
            if (errorStream == null) {
                errorStream = httpURLConnection.getInputStream();
            }
        } catch (Throwable th16) {
            th = th16;
            str3 = null;
        }
        strReplace$default = strReplace$default2;
        URLConnection uRLConnectionOpenConnection4 = new URL(strReplace$default).openConnection();
        Intrinsics.checkNotNull(uRLConnectionOpenConnection4, "null cannot be cast to non-null type java.net.HttpURLConnection");
        httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection4;
        httpURLConnection.setConnectTimeout(15000);
        httpURLConnection.setReadTimeout(120000);
        httpURLConnection.setRequestMethod("GET");
        httpURLConnection.setInstanceFollowRedirects(true);
        httpURLConnection.setRequestProperty("Accept-Encoding", "identity");
        httpURLConnection.setRequestProperty("User-Agent", "Mozilla/5.0 (Linux; Android 10) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36");
        httpURLConnection.setRequestProperty("Cookie", "accountToken=" + str8);
        httpURLConnection.setRequestProperty("Referer", "https://gofile.io/");
        httpURLConnection.setRequestProperty("Origin", "https://gofile.io");
        httpURLConnection.connect();
        responseCode = httpURLConnection.getResponseCode();
        contentType = httpURLConnection.getContentType();
        if (contentType == null) {
            contentType = "";
        }
        contentLengthLong = httpURLConnection.getContentLengthLong();
        lValueOf = Long.valueOf(contentLengthLong);
        if (contentLengthLong <= 0) {
            lValueOf = null;
        }
        if (lValueOf != null) {
            jLongValue = lValueOf.longValue();
        } else {
            jLongValue = -1;
        }
        if (jLongValue > 0) {
            long j4 = 1024;
            str2 = ((jLongValue / j4) / j4) + " MB";
        } else {
            str2 = EnvironmentCompat.MEDIA_UNKNOWN;
        }
        str3 = "GoFile GET ";
        Log.i("MinHub-DL", "GoFile GET " + strReplace$default + " code=" + responseCode + " type=" + contentType + " size=" + str2);
        if (200 <= responseCode) {
        }
        if (Result.m15isFailureimpl(objM9constructorimpl)) {
            objM9constructorimpl = str3;
        }
        str4 = (String) objM9constructorimpl;
        if (str4 == null) {
            str5 = "";
        } else {
            str5 = str4;
        }
        httpURLConnection.disconnect();
        Log.e("MinHub-DL", "GoFile " + responseCode + " body: " + str5);
        if (responseCode != 429) {
        }
        throw new IllegalStateException(ERR_GOFILE_LIMIT);
    }

    public static final void downloadPixeldrainFilesystemZip(RemoteZipImporter remoteZipImporter, String filePath, File archiveFile, Function1<? super Integer, Unit> onProgress) {
        Object objM9constructorimpl;
        List<String> groupValues;
        String text;
        Intrinsics.checkNotNullParameter(remoteZipImporter, "<this>");
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        Intrinsics.checkNotNullParameter(archiveFile, "archiveFile");
        Intrinsics.checkNotNullParameter(onProgress, "onProgress");
        String strI = kotlin.collections.unsigned.a.i(new StringBuilder("https://pixeldrain.com/api/filesystem/"), filePath, "?download");
        Log.i("MinHub-DL", "Pixeldrain filesystem filePath=" + filePath + " → " + strI);
        String strPixeldrainKey = NativeKeys.pixeldrainKey();
        URLConnection uRLConnectionOpenConnection = new URL(strI).openConnection();
        Intrinsics.checkNotNull(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
        httpURLConnection.setConnectTimeout(15000);
        httpURLConnection.setReadTimeout(120000);
        httpURLConnection.setRequestMethod("GET");
        httpURLConnection.setInstanceFollowRedirects(true);
        httpURLConnection.setRequestProperty("Accept-Encoding", "identity");
        httpURLConnection.setRequestProperty("User-Agent", "Mozilla/5.0 (Linux; Android 10) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36");
        if (!StringsKt.isBlank(strPixeldrainKey)) {
            byte[] bytes = kotlin.collections.unsigned.a.o(":", strPixeldrainKey).getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            httpURLConnection.setRequestProperty("Authorization", "Basic " + Base64.encodeToString(bytes, 2));
            Log.i("MinHub-DL", "Pixeldrain filesystem using API key auth");
        }
        httpURLConnection.connect();
        int responseCode = httpURLConnection.getResponseCode();
        String contentType = httpURLConnection.getContentType();
        if (contentType == null) {
            contentType = "";
        }
        Log.i("MinHub-DL", "Pixeldrain filesystem code=" + responseCode + " type=" + contentType);
        String str = null;
        if (200 <= responseCode && responseCode < 300 && !StringsKt__StringsKt.contains(contentType, (CharSequence) "application/json", true)) {
            long contentLengthLong = httpURLConnection.getContentLengthLong();
            Long lValueOf = Long.valueOf(contentLengthLong);
            if (contentLengthLong <= 0) {
                lValueOf = null;
            }
            long jLongValue = lValueOf != null ? lValueOf.longValue() : -1L;
            File parentFile = archiveFile.getParentFile();
            if (parentFile != null) {
                parentFile.mkdirs();
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            BufferedInputStream bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream());
            try {
                if (!looksLikeZipStream(bufferedInputStream)) {
                    httpURLConnection.disconnect();
                    throw new IllegalStateException("Pixeldrain: Server did not return a ZIP archive.");
                }
                FileOutputStream fileOutputStream = new FileOutputStream(archiveFile);
                try {
                    copyStream$default(remoteZipImporter, bufferedInputStream, fileOutputStream, jLongValue, jCurrentTimeMillis, onProgress, 0L, 32, null);
                    CloseableKt.closeFinally(fileOutputStream, null);
                    CloseableKt.closeFinally(bufferedInputStream, null);
                    onProgress.invoke(100);
                    httpURLConnection.disconnect();
                    return;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.closeFinally(fileOutputStream, th);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    CloseableKt.closeFinally(bufferedInputStream, th3);
                    throw th4;
                }
            }
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            InputStream errorStream = (200 > responseCode || responseCode >= 300) ? httpURLConnection.getErrorStream() : httpURLConnection.getInputStream();
            if (errorStream != null) {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(errorStream, Charsets.UTF_8), 8192);
                try {
                    text = TextStreamsKt.readText(bufferedReader);
                    CloseableKt.closeFinally(bufferedReader, null);
                } catch (Throwable th5) {
                    try {
                        throw th5;
                    } catch (Throwable th6) {
                        CloseableKt.closeFinally(bufferedReader, th5);
                        throw th6;
                    }
                }
            } else {
                text = null;
            }
            objM9constructorimpl = Result.m9constructorimpl(text);
        } catch (Throwable th7) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th7));
        }
        if (Result.m15isFailureimpl(objM9constructorimpl)) {
            objM9constructorimpl = null;
        }
        String str2 = (String) objM9constructorimpl;
        if (str2 == null) {
            str2 = "";
        }
        httpURLConnection.disconnect();
        Log.i("MinHub-DL", "Pixeldrain filesystem non-file response code=" + responseCode + " body=" + StringsKt.take(str2, 300));
        MatchResult matchResultFind$default = Regex.find$default(new Regex("\"value\"\\s*:\\s*\"([^\"]+)\""), str2, 0, 2, null);
        if (matchResultFind$default != null && (groupValues = matchResultFind$default.getGroupValues()) != null) {
            str = (String) CollectionsKt.getOrNull(groupValues, 1);
        }
        String str3 = str != null ? str : "";
        if (StringsKt__StringsKt.contains(str3, (CharSequence) "bandwidth", true) || Intrinsics.areEqual(str3, "file_rate_limited")) {
            throw new IllegalStateException(ERR_BANDWIDTH);
        }
        if (responseCode != 401 && responseCode != 403) {
            throw new IllegalStateException("Pixeldrain filesystem: HTTP " + responseCode + " — " + StringsKt.take(str2, 200));
        }
        String strPixeldrainFileIdFromPage = pixeldrainFileIdFromPage(kotlin.collections.unsigned.a.o("https://pixeldrain.com/d/", filePath));
        if (strPixeldrainFileIdFromPage == null) {
            throw new IllegalStateException(E.b.j(responseCode, "Pixeldrain: this link requires authentication (HTTP ", "). Share the file via a public link (pixeldrain.com/u/...) instead."));
        }
        Log.i("MinHub-DL", "Pixeldrain filesystem resolved fileId=" + strPixeldrainFileIdFromPage + " from page");
        downloadPixeldrainZip(remoteZipImporter, strPixeldrainFileIdFromPage, archiveFile, onProgress);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.io.File, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11, types: [java.io.Closeable, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v8 */
    public static final void downloadPixeldrainZip(RemoteZipImporter remoteZipImporter, String fileId, File file, Function1<? super Integer, Unit> onProgress) {
        HttpURLConnection httpURLConnection;
        Object objM9constructorimpl;
        String str;
        Object objM9constructorimpl2;
        String str2;
        String strTake;
        List<String> groupValues;
        String str3;
        Long longOrNull;
        String text;
        ?? archiveFile = file;
        Intrinsics.checkNotNullParameter(remoteZipImporter, "<this>");
        Intrinsics.checkNotNullParameter(fileId, "fileId");
        Intrinsics.checkNotNullParameter(archiveFile, "archiveFile");
        Intrinsics.checkNotNullParameter(onProgress, "onProgress");
        Log.i("MinHub-DL", "Pixeldrain fileId=" + fileId);
        URLConnection uRLConnectionOpenConnection = new URL(E.b.m("https://pixeldrain.com/api/file/", fileId, "/info")).openConnection();
        Intrinsics.checkNotNull(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
        HttpURLConnection httpURLConnection2 = (HttpURLConnection) uRLConnectionOpenConnection;
        httpURLConnection2.setConnectTimeout(15000);
        httpURLConnection2.setReadTimeout(15000);
        httpURLConnection2.setRequestMethod("GET");
        httpURLConnection2.setRequestProperty("Accept-Encoding", "identity");
        httpURLConnection2.setRequestProperty("User-Agent", "Mozilla/5.0 (Linux; Android 10) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36");
        int responseCode = httpURLConnection2.getResponseCode();
        try {
            Result.Companion companion = Result.INSTANCE;
            InputStream errorStream = (200 > responseCode || responseCode >= 300) ? httpURLConnection2.getErrorStream() : httpURLConnection2.getInputStream();
            if (errorStream != null) {
                httpURLConnection = httpURLConnection2;
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(errorStream, Charsets.UTF_8), 8192);
                    try {
                        text = TextStreamsKt.readText(bufferedReader);
                        CloseableKt.closeFinally(bufferedReader, null);
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            CloseableKt.closeFinally(bufferedReader, th);
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    Result.Companion companion2 = Result.INSTANCE;
                    objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
                }
            } else {
                httpURLConnection = httpURLConnection2;
                text = null;
            }
            objM9constructorimpl = Result.m9constructorimpl(text);
        } catch (Throwable th4) {
            th = th4;
            httpURLConnection = httpURLConnection2;
        }
        Object obj = objM9constructorimpl;
        if (Result.m15isFailureimpl(obj)) {
            obj = null;
        }
        String str4 = (String) obj;
        if (str4 == null) {
            str4 = "";
        }
        httpURLConnection.disconnect();
        Log.i("MinHub-DL", "Pixeldrain info code=" + responseCode + " body=" + StringsKt.take(str4, 200));
        String strDownloadPixeldrainZip$parseErrValue = downloadPixeldrainZip$parseErrValue(str4);
        if (responseCode == 429 || StringsKt__StringsKt.contains(strDownloadPixeldrainZip$parseErrValue, (CharSequence) "bandwidth", true) || Intrinsics.areEqual(strDownloadPixeldrainZip$parseErrValue, "file_rate_limited")) {
            throw new IllegalStateException(ERR_BANDWIDTH);
        }
        if (responseCode == 404 || Intrinsics.areEqual(strDownloadPixeldrainZip$parseErrValue, "not_found")) {
            throw new IllegalStateException(E.b.m("Pixeldrain: File not found or has been deleted. (id=", fileId, ")."));
        }
        if (200 > responseCode || responseCode >= 300) {
            throw new IllegalStateException("Pixeldrain: file info check failed (HTTP " + responseCode + " — " + strDownloadPixeldrainZip$parseErrValue + ").");
        }
        MatchResult matchResultFind$default = Regex.find$default(new Regex("\"size\"\\s*:\\s*(\\d+)"), str4, 0, 2, null);
        long jLongValue = (matchResultFind$default == null || (groupValues = matchResultFind$default.getGroupValues()) == null || (str3 = (String) CollectionsKt.getOrNull(groupValues, 1)) == null || (longOrNull = StringsKt.toLongOrNull(str3)) == null) ? -1L : longOrNull.longValue();
        String str5 = EnvironmentCompat.MEDIA_UNKNOWN;
        if (jLongValue > 0) {
            long j2 = 1024;
            str = ((jLongValue / j2) / j2) + " MB";
        } else {
            str = EnvironmentCompat.MEDIA_UNKNOWN;
        }
        Log.i("MinHub-DL", "Pixeldrain reported size=" + str);
        URLConnection uRLConnectionOpenConnection2 = new URL(kotlin.collections.unsigned.a.o("https://pixeldrain.com/api/file/", fileId)).openConnection();
        Intrinsics.checkNotNull(uRLConnectionOpenConnection2, "null cannot be cast to non-null type java.net.HttpURLConnection");
        HttpURLConnection httpURLConnection3 = (HttpURLConnection) uRLConnectionOpenConnection2;
        httpURLConnection3.setConnectTimeout(15000);
        httpURLConnection3.setReadTimeout(120000);
        httpURLConnection3.setRequestMethod("GET");
        httpURLConnection3.setInstanceFollowRedirects(true);
        httpURLConnection3.setRequestProperty("Accept-Encoding", "identity");
        httpURLConnection3.setRequestProperty("User-Agent", "Mozilla/5.0 (Linux; Android 10) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36");
        httpURLConnection3.connect();
        int responseCode2 = httpURLConnection3.getResponseCode();
        String contentType = httpURLConnection3.getContentType();
        if (contentType == null) {
            contentType = "";
        }
        long contentLengthLong = httpURLConnection3.getContentLengthLong();
        Long lValueOf = Long.valueOf(contentLengthLong);
        if (contentLengthLong <= 0) {
            lValueOf = null;
        }
        if (lValueOf != null) {
            jLongValue = lValueOf.longValue();
        }
        if (jLongValue > 0) {
            long j3 = 1024;
            str5 = ((jLongValue / j3) / j3) + " MB";
        }
        Log.i("MinHub-DL", "Pixeldrain GET code=" + responseCode2 + " type=" + contentType + " size=" + str5);
        if (responseCode2 == 429) {
            httpURLConnection3.disconnect();
            throw new IllegalStateException(ERR_BANDWIDTH);
        }
        if (200 <= responseCode2 && responseCode2 < 300 && !StringsKt__StringsKt.contains(contentType, (CharSequence) "application/json", true)) {
            File parentFile = archiveFile.getParentFile();
            if (parentFile != null) {
                parentFile.mkdirs();
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            BufferedInputStream bufferedInputStream = new BufferedInputStream(httpURLConnection3.getInputStream());
            try {
                try {
                    if (!looksLikeZipStream(bufferedInputStream)) {
                        httpURLConnection3.disconnect();
                        throw new IllegalStateException("Pixeldrain: Server did not return a ZIP archive.");
                    }
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream((File) archiveFile);
                        archiveFile = bufferedInputStream;
                        try {
                            copyStream$default(remoteZipImporter, archiveFile, fileOutputStream, jLongValue, jCurrentTimeMillis, onProgress, 0L, 32, null);
                            CloseableKt.closeFinally(fileOutputStream, null);
                            CloseableKt.closeFinally(archiveFile, null);
                            onProgress.invoke(100);
                            httpURLConnection3.disconnect();
                            return;
                        } catch (Throwable th5) {
                            try {
                                throw th5;
                            } catch (Throwable th6) {
                                CloseableKt.closeFinally(fileOutputStream, th5);
                                throw th6;
                            }
                        }
                    } catch (Throwable th7) {
                        th = th7;
                        archiveFile = bufferedInputStream;
                    }
                } catch (Throwable th8) {
                    th = th8;
                }
            } catch (Throwable th9) {
                th = th9;
                archiveFile = bufferedInputStream;
            }
            Throwable th10 = th;
            try {
                throw th10;
            } catch (Throwable th11) {
                CloseableKt.closeFinally(archiveFile, th10);
                throw th11;
            }
        }
        try {
            InputStream errorStream2 = httpURLConnection3.getErrorStream();
            if (errorStream2 == null) {
                errorStream2 = httpURLConnection3.getInputStream();
            }
            if (errorStream2 != null) {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(errorStream2, Charsets.UTF_8), 8192);
                try {
                    strTake = StringsKt.take(TextStreamsKt.readText(bufferedReader2), 300);
                    CloseableKt.closeFinally(bufferedReader2, null);
                } catch (Throwable th12) {
                    try {
                        throw th12;
                    } catch (Throwable th13) {
                        CloseableKt.closeFinally(bufferedReader2, th12);
                        throw th13;
                    }
                }
            } else {
                strTake = null;
            }
            objM9constructorimpl2 = Result.m9constructorimpl(strTake);
        } catch (Throwable th14) {
            Result.Companion companion3 = Result.INSTANCE;
            objM9constructorimpl2 = Result.m9constructorimpl(ResultKt.createFailure(th14));
        }
        String str6 = (String) (Result.m15isFailureimpl(objM9constructorimpl2) ? null : objM9constructorimpl2);
        String str7 = str6 == null ? "" : str6;
        httpURLConnection3.disconnect();
        String strDownloadPixeldrainZip$parseErrValue2 = downloadPixeldrainZip$parseErrValue(str7);
        if (StringsKt__StringsKt.contains(strDownloadPixeldrainZip$parseErrValue2, (CharSequence) "bandwidth", true) || Intrinsics.areEqual(strDownloadPixeldrainZip$parseErrValue2, "file_rate_limited")) {
            str2 = ERR_BANDWIDTH;
        } else if (Intrinsics.areEqual(strDownloadPixeldrainZip$parseErrValue2, "not_found")) {
            str2 = ERR_FILE_NOT_FOUND;
        } else {
            str2 = "HTTP " + responseCode2 + " — " + str7;
        }
        throw new IllegalStateException(kotlin.collections.unsigned.a.o("Pixeldrain: ", str2));
    }

    private static final String downloadPixeldrainZip$parseErrValue(String str) {
        List<String> groupValues;
        String str2 = null;
        MatchResult matchResultFind$default = Regex.find$default(new Regex("\"value\"\\s*:\\s*\"([^\"]+)\""), str, 0, 2, null);
        if (matchResultFind$default != null && (groupValues = matchResultFind$default.getGroupValues()) != null) {
            str2 = (String) CollectionsKt.getOrNull(groupValues, 1);
        }
        return str2 == null ? "" : str2;
    }

    public static final void downloadRanozZip(RemoteZipImporter remoteZipImporter, String pageUrl, Context context, File archiveFile, Function1<? super Integer, Unit> onProgress) {
        Intrinsics.checkNotNullParameter(remoteZipImporter, "<this>");
        Intrinsics.checkNotNullParameter(pageUrl, "pageUrl");
        Intrinsics.checkNotNullParameter(archiveFile, "archiveFile");
        Intrinsics.checkNotNullParameter(onProgress, "onProgress");
        Log.i("MinHub-DL", "Ranoz page: " + pageUrl);
        if (context == null) {
            throw new IllegalStateException("Ranoz: Cloudflare-protected page requires WebView but no context is available.");
        }
        String strResolveRanozViaWebView = RanozWebDownloaderKt.resolveRanozViaWebView(context, pageUrl);
        if (strResolveRanozViaWebView == null) {
            throw new IllegalStateException("Ranoz: WebView could not resolve download link (Cloudflare blocked or timeout)");
        }
        Log.i("MinHub-DL", "Ranoz direct URL: ".concat(strResolveRanozViaWebView));
        downloadZipInternal(remoteZipImporter, strResolveRanozViaWebView, archiveFile, onProgress, 0);
    }

    /* JADX WARN: Code duplicated, block: B:103:0x0240  */
    /* JADX WARN: Code duplicated, block: B:106:0x024b A[Catch: Exception -> 0x010d, TRY_ENTER, TRY_LEAVE, TryCatch #15 {Exception -> 0x010d, blocks: (B:51:0x0106, B:91:0x0223, B:93:0x0227, B:94:0x022e, B:99:0x0236, B:100:0x0239, B:106:0x024b, B:84:0x01ec, B:97:0x0234), top: B:244:0x0106, inners: #6, #10 }] */
    /* JADX WARN: Code duplicated, block: B:114:0x0267  */
    /* JADX WARN: Code duplicated, block: B:115:0x0268 A[Catch: all -> 0x0271, TryCatch #8 {all -> 0x0271, blocks: (B:112:0x0261, B:115:0x0268, B:116:0x0270), top: B:230:0x0261 }] */
    /* JADX WARN: Code duplicated, block: B:128:0x02ab  */
    /* JADX WARN: Code duplicated, block: B:131:0x02bf  */
    /* JADX WARN: Code duplicated, block: B:136:0x0323  */
    /* JADX WARN: Code duplicated, block: B:194:0x0413  */
    /* JADX WARN: Code duplicated, block: B:198:0x041b  */
    /* JADX WARN: Code duplicated, block: B:202:0x0424  */
    /* JADX WARN: Code duplicated, block: B:206:0x042e  */
    /* JADX WARN: Code duplicated, block: B:207:0x0430  */
    /* JADX WARN: Code duplicated, block: B:209:0x0433  */
    /* JADX WARN: Code duplicated, block: B:210:0x0438  */
    /* JADX WARN: Code duplicated, block: B:230:0x0261 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:244:0x0106 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:257:0x01d5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:261:0x0398 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:262:0x0227 A[ADDED_TO_REGION, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:275:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:39:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:41:0x00ed A[Catch: Exception -> 0x00d4, TRY_ENTER, TRY_LEAVE, TryCatch #21 {Exception -> 0x00d4, blocks: (B:28:0x00be, B:41:0x00ed), top: B:255:0x00be }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:57:0x0118 A[Catch: Exception -> 0x038f, TRY_ENTER, TryCatch #14 {Exception -> 0x038f, blocks: (B:49:0x0100, B:58:0x011c, B:60:0x012b, B:63:0x013b, B:65:0x0143, B:104:0x0245, B:57:0x0118), top: B:242:0x0100 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x012b A[Catch: Exception -> 0x038f, TryCatch #14 {Exception -> 0x038f, blocks: (B:49:0x0100, B:58:0x011c, B:60:0x012b, B:63:0x013b, B:65:0x0143, B:104:0x0245, B:57:0x0118), top: B:242:0x0100 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x0137  */
    /* JADX WARN: Code duplicated, block: B:65:0x0143 A[Catch: Exception -> 0x038f, TRY_LEAVE, TryCatch #14 {Exception -> 0x038f, blocks: (B:49:0x0100, B:58:0x011c, B:60:0x012b, B:63:0x013b, B:65:0x0143, B:104:0x0245, B:57:0x0118), top: B:242:0x0100 }] */
    /* JADX WARN: Code duplicated, block: B:68:0x014b  */
    /* JADX WARN: Code duplicated, block: B:70:0x014e  */
    /* JADX WARN: Code duplicated, block: B:74:0x0171  */
    /* JADX WARN: Code duplicated, block: B:76:0x0175 A[Catch: Exception -> 0x016d, TRY_LEAVE, TryCatch #0 {Exception -> 0x016d, blocks: (B:71:0x0153, B:76:0x0175, B:86:0x01f1, B:88:0x0217), top: B:214:0x0153 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x018c  */
    /* JADX WARN: Code duplicated, block: B:88:0x0217 A[Catch: Exception -> 0x016d, TRY_LEAVE, TryCatch #0 {Exception -> 0x016d, blocks: (B:71:0x0153, B:76:0x0175, B:86:0x01f1, B:88:0x0217), top: B:214:0x0153 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:76:0x0175, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v1, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v12, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r12v13 */
    /* JADX WARN: Type inference failed for: r12v14 */
    /* JADX WARN: Type inference failed for: r12v17, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r12v2, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r12v21 */
    /* JADX WARN: Type inference failed for: r12v22 */
    /* JADX WARN: Type inference failed for: r12v23 */
    /* JADX WARN: Type inference failed for: r12v24 */
    /* JADX WARN: Type inference failed for: r12v25 */
    /* JADX WARN: Type inference failed for: r12v26 */
    /* JADX WARN: Type inference failed for: r12v27 */
    /* JADX WARN: Type inference failed for: r12v28 */
    /* JADX WARN: Type inference failed for: r12v29 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v30 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* JADX WARN: Type inference failed for: r13v5, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9, types: [java.io.File] */
    public static final void downloadZipInternal(RemoteZipImporter remoteZipImporter, String str, File file, Function1<? super Integer, Unit> onProgress, int i3) {
        HttpURLConnection httpURLConnection;
        Exception exc;
        ?? r12;
        int i4;
        ?? r6;
        long contentLengthLong;
        Long lValueOf;
        long jLongValue;
        long j2;
        long j3;
        ?? r13;
        ?? r14;
        File parentFile;
        String absolutePath;
        Exception e2;
        long availableBytes;
        boolean z2;
        long j4;
        String contentType;
        String str2;
        String str3;
        BufferedReader bufferedReader;
        String strExtractDirectDownloadUrl;
        File parentFile2;
        BufferedInputStream bufferedInputStream;
        Throwable th;
        FileOutputStream fileOutputStream;
        long jCopyStream;
        long j5;
        long jCurrentTimeMillis;
        int i5;
        double d3;
        long j6;
        RemoteZipImporter remoteZipImporter2 = remoteZipImporter;
        String zipUrl = str;
        File archiveFile = file;
        String str4 = "Attempt ";
        String str5 = "MinHub-DL";
        Intrinsics.checkNotNullParameter(remoteZipImporter2, "<this>");
        Intrinsics.checkNotNullParameter(zipUrl, "zipUrl");
        Intrinsics.checkNotNullParameter(archiveFile, "archiveFile");
        Intrinsics.checkNotNullParameter(onProgress, "onProgress");
        if (i3 > 3) {
            throw new IllegalStateException(ERR_REDIRECT_LIMIT);
        }
        int i6 = 0;
        long length = 0;
        ?? Take = archiveFile;
        while (true) {
            int i7 = i6 + 1;
            boolean z3 = length > 0 && Take.exists() && Take.length() == length;
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            URLConnection uRLConnectionOpenConnection = new URL(zipUrl).openConnection();
            Intrinsics.checkNotNull(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
            HttpURLConnection httpURLConnection2 = (HttpURLConnection) uRLConnectionOpenConnection;
            httpURLConnection2.setConnectTimeout(15000);
            httpURLConnection2.setReadTimeout(120000);
            httpURLConnection2.setRequestMethod("GET");
            httpURLConnection2.setInstanceFollowRedirects(true);
            boolean z4 = z3;
            httpURLConnection2.setRequestProperty("Accept-Encoding", "identity");
            httpURLConnection2.setRequestProperty("User-Agent", "Mozilla/5.0 (Linux; Android 10) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36");
            if (z4) {
                httpURLConnection2.setRequestProperty("Range", "bytes=" + length + "-");
            }
            try {
                httpURLConnection2.connect();
                long jCurrentTimeMillis3 = System.currentTimeMillis() - jCurrentTimeMillis2;
                int responseCode = httpURLConnection2.getResponseCode();
                boolean z5 = responseCode == 206;
                httpURLConnection = httpURLConnection2;
                if (200 > responseCode || responseCode >= 300) {
                    str5 = str5;
                    try {
                        throw new IllegalStateException("Unexpected HTTP " + responseCode);
                    } catch (Exception e3) {
                        e = e3;
                    }
                } else {
                    try {
                        if (!z4 || z5) {
                            try {
                                contentLengthLong = httpURLConnection.getContentLengthLong();
                                lValueOf = Long.valueOf(contentLengthLong);
                                if (contentLengthLong <= 0) {
                                    lValueOf = null;
                                }
                                if (lValueOf != null) {
                                    jLongValue = lValueOf.longValue();
                                } else {
                                    jLongValue = -1;
                                }
                                if (z5 && jLongValue > 0) {
                                    jLongValue = length + jLongValue;
                                }
                                j2 = length;
                                j3 = jLongValue;
                                try {
                                    parentFile = Take.getParentFile();
                                    if (parentFile != null) {
                                        absolutePath = Take.getAbsolutePath();
                                        availableBytes = new StatFs(absolutePath).getAvailableBytes();
                                        z2 = z5;
                                        if (j3 > 0) {
                                            j4 = (long) (j3 * 2.5d);
                                        } else {
                                            j4 = MIN_FREE_SPACE_BYTES;
                                        }
                                        if (availableBytes >= RangesKt.coerceAtLeast(j4, MIN_FREE_SPACE_BYTES)) {
                                            httpURLConnection.disconnect();
                                            long j7 = 1024;
                                            throw new IOException("Không đủ dung lượng: cần " + ((j4 / j7) / j7) + " MB, còn " + ((availableBytes / j7) / j7) + " MB trống.");
                                        }
                                        contentType = httpURLConnection.getContentType();
                                        str2 = "";
                                        if (contentType == null) {
                                            contentType = "";
                                        }
                                        if (z4) {
                                            long j8 = 1024;
                                            str2 = " [RESUME " + ((j2 / j8) / j8) + "MB]";
                                        }
                                        if (r13 > 0) {
                                            long j9 = 1024;
                                            str3 = ((j3 / j9) / j9) + "MB";
                                        } else {
                                            str3 = EnvironmentCompat.MEDIA_UNKNOWN;
                                        }
                                        Take = StringsKt.take(zipUrl, 80);
                                        Log.i(str5, str4 + i7 + str2 + " code=" + responseCode + " connect=" + jCurrentTimeMillis3 + "ms size=" + str3 + " url=" + Take);
                                        if (StringsKt__StringsKt.contains(contentType, (CharSequence) "text/html", true)) {
                                            InputStream inputStream = httpURLConnection.getInputStream();
                                            Intrinsics.checkNotNullExpressionValue(inputStream, "getInputStream(...)");
                                            bufferedReader = new BufferedReader(new InputStreamReader(inputStream, Charsets.UTF_8), 8192);
                                            String text = TextStreamsKt.readText(bufferedReader);
                                            CloseableKt.closeFinally(bufferedReader, null);
                                            Log.d(str5, "HTML snippet: " + StringsKt.take(text, 600));
                                            strExtractDirectDownloadUrl = remoteZipImporter2.extractDirectDownloadUrl(text);
                                            httpURLConnection.disconnect();
                                            if (strExtractDirectDownloadUrl != null) {
                                            }
                                            throw new IllegalStateException(ERR_NOT_A_ZIP);
                                        }
                                        r13 = file;
                                        parentFile2 = r13.getParentFile();
                                        if (parentFile2 != null) {
                                            parentFile2.mkdirs();
                                        }
                                        long jCurrentTimeMillis4 = System.currentTimeMillis();
                                        str5 = str5;
                                        bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream());
                                        if (!z2) {
                                            if (looksLikeZipStream(bufferedInputStream)) {
                                                httpURLConnection.disconnect();
                                                throw new IllegalStateException(ERR_NOT_A_ZIP);
                                            }
                                            throw th;
                                        }
                                        fileOutputStream = new FileOutputStream((File) r13, z2);
                                        i7 = i7;
                                        str4 = str4;
                                        jCopyStream = copyStream(remoteZipImporter2, bufferedInputStream, fileOutputStream, j3, jCurrentTimeMillis4, onProgress, j2);
                                        j2 = j2;
                                        Unit unit = Unit.INSTANCE;
                                        CloseableKt.closeFinally(fileOutputStream, null);
                                        CloseableKt.closeFinally(bufferedInputStream, null);
                                        httpURLConnection.disconnect();
                                        j5 = j2 + jCopyStream;
                                        jCurrentTimeMillis = System.currentTimeMillis() - jCurrentTimeMillis4;
                                        if (jCurrentTimeMillis > 0) {
                                            i5 = 1024;
                                            d3 = 0.0d;
                                        } else {
                                            i5 = 1024;
                                            d3 = 0.0d;
                                        }
                                        j6 = i5;
                                        long j10 = (j3 / j6) / j6;
                                        String str6 = String.format("%.2f", Arrays.copyOf(new Object[]{Double.valueOf(d3)}, 1));
                                        Intrinsics.checkNotNullExpressionValue(str6, "format(...)");
                                        Log.i(str5, "DONE received=" + ((j5 / j6) / j6) + "MB expected=" + j10 + "MB time=" + (jCurrentTimeMillis / ((long) 1000)) + "s avg=" + str6 + "MB/s");
                                        if (j3 > 0) {
                                            r13.delete();
                                            throw new IllegalStateException("Download incomplete: got " + ((j5 / j6) / j6) + "MB, expected " + ((j3 / j6) / j6) + "MB");
                                        }
                                        onProgress.invoke(100);
                                        return;
                                    }
                                    try {
                                        absolutePath = parentFile.getAbsolutePath();
                                        if (absolutePath == null) {
                                            absolutePath = Take.getAbsolutePath();
                                        }
                                        availableBytes = new StatFs(absolutePath).getAvailableBytes();
                                        z2 = z5;
                                        if (j3 > 0) {
                                            j4 = (long) (j3 * 2.5d);
                                        } else {
                                            j4 = MIN_FREE_SPACE_BYTES;
                                        }
                                        if (availableBytes >= RangesKt.coerceAtLeast(j4, MIN_FREE_SPACE_BYTES)) {
                                            httpURLConnection.disconnect();
                                            long j11 = 1024;
                                            throw new IOException("Không đủ dung lượng: cần " + ((j4 / j11) / j11) + " MB, còn " + ((availableBytes / j11) / j11) + " MB trống.");
                                        }
                                        contentType = httpURLConnection.getContentType();
                                        str2 = "";
                                        if (contentType == null) {
                                            contentType = "";
                                        }
                                        if (z4) {
                                            long j12 = 1024;
                                            try {
                                                str2 = " [RESUME " + ((j2 / j12) / j12) + "MB]";
                                            } catch (Exception e4) {
                                                e2 = e4;
                                                Take = file;
                                                exc = e2;
                                                str5 = str5;
                                                i7 = i7;
                                                str4 = str4;
                                                r14 = Take;
                                                length = j2;
                                                r12 = r14;
                                                Result.Companion companion = Result.INSTANCE;
                                                httpURLConnection.disconnect();
                                                Result.m9constructorimpl(Unit.INSTANCE);
                                                if (!(exc instanceof SocketTimeoutException)) {
                                                    if (r12.exists()) {
                                                        r6 = r12;
                                                    } else {
                                                        r6 = 0;
                                                    }
                                                    if (r6 != 0) {
                                                        length = r6.length();
                                                    } else {
                                                        length = 0;
                                                    }
                                                    long j13 = 1024;
                                                    String str7 = str4;
                                                    Log.w(str5, str7 + i4 + " failed (" + exc.getClass().getSimpleName() + ": " + exc.getMessage() + "), retry in 3s from " + ((length / j13) / j13) + "MB");
                                                    Thread.sleep(RETRY_BACKOFF_MS);
                                                    remoteZipImporter2 = remoteZipImporter;
                                                    zipUrl = str;
                                                    i6 = i4;
                                                    str4 = str7;
                                                    str5 = str5;
                                                    Take = r12;
                                                } else {
                                                    if (r12.exists()) {
                                                        r6 = r12;
                                                    } else {
                                                        r6 = 0;
                                                    }
                                                    if (r6 != 0) {
                                                        length = r6.length();
                                                    } else {
                                                        length = 0;
                                                    }
                                                    long j14 = 1024;
                                                    String str8 = str4;
                                                    Log.w(str5, str8 + i4 + " failed (" + exc.getClass().getSimpleName() + ": " + exc.getMessage() + "), retry in 3s from " + ((length / j14) / j14) + "MB");
                                                    Thread.sleep(RETRY_BACKOFF_MS);
                                                    remoteZipImporter2 = remoteZipImporter;
                                                    zipUrl = str;
                                                    i6 = i4;
                                                    str4 = str8;
                                                    str5 = str5;
                                                    Take = r12;
                                                }
                                                if (length == 0) {
                                                    throw exc;
                                                }
                                                r12.delete();
                                                throw exc;
                                            }
                                        }
                                        if (r13 > 0) {
                                            long j15 = 1024;
                                            str3 = ((j3 / j15) / j15) + "MB";
                                        } else {
                                            str3 = EnvironmentCompat.MEDIA_UNKNOWN;
                                        }
                                        try {
                                            Take = StringsKt.take(zipUrl, 80);
                                            Log.i(str5, str4 + i7 + str2 + " code=" + responseCode + " connect=" + jCurrentTimeMillis3 + "ms size=" + str3 + " url=" + Take);
                                            if (StringsKt__StringsKt.contains(contentType, (CharSequence) "text/html", true)) {
                                                try {
                                                    InputStream inputStream2 = httpURLConnection.getInputStream();
                                                    Intrinsics.checkNotNullExpressionValue(inputStream2, "getInputStream(...)");
                                                    bufferedReader = new BufferedReader(new InputStreamReader(inputStream2, Charsets.UTF_8), 8192);
                                                    try {
                                                        String text2 = TextStreamsKt.readText(bufferedReader);
                                                        CloseableKt.closeFinally(bufferedReader, null);
                                                        Log.d(str5, "HTML snippet: " + StringsKt.take(text2, 600));
                                                        strExtractDirectDownloadUrl = remoteZipImporter2.extractDirectDownloadUrl(text2);
                                                        httpURLConnection.disconnect();
                                                        if (strExtractDirectDownloadUrl != null || Intrinsics.areEqual(strExtractDirectDownloadUrl, zipUrl)) {
                                                            throw new IllegalStateException(ERR_NOT_A_ZIP);
                                                        }
                                                        downloadZipInternal(remoteZipImporter2, strExtractDirectDownloadUrl, file, onProgress, i3 + 1);
                                                        return;
                                                    } catch (Throwable th2) {
                                                        Take = file;
                                                        try {
                                                            throw th2;
                                                        } catch (Throwable th3) {
                                                            CloseableKt.closeFinally(bufferedReader, th2);
                                                            throw th3;
                                                        }
                                                    }
                                                } catch (Exception e5) {
                                                    e2 = e5;
                                                    Take = file;
                                                    exc = e2;
                                                    str5 = str5;
                                                    i7 = i7;
                                                    str4 = str4;
                                                    r14 = Take;
                                                    length = j2;
                                                    r12 = r14;
                                                    Result.Companion companion2 = Result.INSTANCE;
                                                    httpURLConnection.disconnect();
                                                    Result.m9constructorimpl(Unit.INSTANCE);
                                                    if (!(exc instanceof SocketTimeoutException)) {
                                                        if (r12.exists()) {
                                                            r6 = r12;
                                                        } else {
                                                            r6 = 0;
                                                        }
                                                        if (r6 != 0) {
                                                            length = r6.length();
                                                        } else {
                                                            length = 0;
                                                        }
                                                        long j16 = 1024;
                                                        String str9 = str4;
                                                        Log.w(str5, str9 + i4 + " failed (" + exc.getClass().getSimpleName() + ": " + exc.getMessage() + "), retry in 3s from " + ((length / j16) / j16) + "MB");
                                                        Thread.sleep(RETRY_BACKOFF_MS);
                                                        remoteZipImporter2 = remoteZipImporter;
                                                        zipUrl = str;
                                                        i6 = i4;
                                                        str4 = str9;
                                                        str5 = str5;
                                                        Take = r12;
                                                    } else {
                                                        if (r12.exists()) {
                                                            r6 = r12;
                                                        } else {
                                                            r6 = 0;
                                                        }
                                                        if (r6 != 0) {
                                                            length = r6.length();
                                                        } else {
                                                            length = 0;
                                                        }
                                                        long j17 = 1024;
                                                        String str10 = str4;
                                                        Log.w(str5, str10 + i4 + " failed (" + exc.getClass().getSimpleName() + ": " + exc.getMessage() + "), retry in 3s from " + ((length / j17) / j17) + "MB");
                                                        Thread.sleep(RETRY_BACKOFF_MS);
                                                        remoteZipImporter2 = remoteZipImporter;
                                                        zipUrl = str;
                                                        i6 = i4;
                                                        str4 = str10;
                                                        str5 = str5;
                                                        Take = r12;
                                                    }
                                                    if (length == 0) {
                                                        throw exc;
                                                    }
                                                    r12.delete();
                                                    throw exc;
                                                }
                                            }
                                            r13 = file;
                                            parentFile2 = r13.getParentFile();
                                            if (parentFile2 != null) {
                                                parentFile2.mkdirs();
                                            }
                                            try {
                                                long jCurrentTimeMillis5 = System.currentTimeMillis();
                                                str5 = str5;
                                                try {
                                                    bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream());
                                                    if (!z2) {
                                                        try {
                                                            if (looksLikeZipStream(bufferedInputStream)) {
                                                                httpURLConnection.disconnect();
                                                                throw new IllegalStateException(ERR_NOT_A_ZIP);
                                                            }
                                                        } catch (Throwable th4) {
                                                            th = th4;
                                                            i7 = i7;
                                                            str4 = str4;
                                                        }
                                                        try {
                                                            try {
                                                                throw th;
                                                            } catch (Throwable th5) {
                                                                CloseableKt.closeFinally(bufferedInputStream, th);
                                                                throw th5;
                                                            }
                                                        } catch (Exception e6) {
                                                            e = e6;
                                                            exc = e;
                                                            r14 = r13;
                                                            length = j2;
                                                            r12 = r14;
                                                            Result.Companion companion3 = Result.INSTANCE;
                                                            httpURLConnection.disconnect();
                                                            Result.m9constructorimpl(Unit.INSTANCE);
                                                            if (!(exc instanceof SocketTimeoutException)) {
                                                                if (r12.exists()) {
                                                                    r6 = r12;
                                                                } else {
                                                                    r6 = 0;
                                                                }
                                                                if (r6 != 0) {
                                                                    length = r6.length();
                                                                } else {
                                                                    length = 0;
                                                                }
                                                                long j18 = 1024;
                                                                String str11 = str4;
                                                                Log.w(str5, str11 + i4 + " failed (" + exc.getClass().getSimpleName() + ": " + exc.getMessage() + "), retry in 3s from " + ((length / j18) / j18) + "MB");
                                                                Thread.sleep(RETRY_BACKOFF_MS);
                                                                remoteZipImporter2 = remoteZipImporter;
                                                                zipUrl = str;
                                                                i6 = i4;
                                                                str4 = str11;
                                                                str5 = str5;
                                                                Take = r12;
                                                            } else {
                                                                if (r12.exists()) {
                                                                    r6 = r12;
                                                                } else {
                                                                    r6 = 0;
                                                                }
                                                                if (r6 != 0) {
                                                                    length = r6.length();
                                                                } else {
                                                                    length = 0;
                                                                }
                                                                long j19 = 1024;
                                                                String str12 = str4;
                                                                Log.w(str5, str12 + i4 + " failed (" + exc.getClass().getSimpleName() + ": " + exc.getMessage() + "), retry in 3s from " + ((length / j19) / j19) + "MB");
                                                                Thread.sleep(RETRY_BACKOFF_MS);
                                                                remoteZipImporter2 = remoteZipImporter;
                                                                zipUrl = str;
                                                                i6 = i4;
                                                                str4 = str12;
                                                                str5 = str5;
                                                                Take = r12;
                                                            }
                                                            if (length == 0) {
                                                                throw exc;
                                                            }
                                                            r12.delete();
                                                            throw exc;
                                                        }
                                                    }
                                                    try {
                                                        fileOutputStream = new FileOutputStream((File) r13, z2);
                                                        i7 = i7;
                                                        str4 = str4;
                                                        try {
                                                            jCopyStream = copyStream(remoteZipImporter2, bufferedInputStream, fileOutputStream, j3, jCurrentTimeMillis5, onProgress, j2);
                                                            j2 = j2;
                                                            try {
                                                                Unit unit2 = Unit.INSTANCE;
                                                                try {
                                                                    CloseableKt.closeFinally(fileOutputStream, null);
                                                                    try {
                                                                        CloseableKt.closeFinally(bufferedInputStream, null);
                                                                        httpURLConnection.disconnect();
                                                                        j5 = j2 + jCopyStream;
                                                                        jCurrentTimeMillis = System.currentTimeMillis() - jCurrentTimeMillis5;
                                                                        if (jCurrentTimeMillis > 0 || jCopyStream <= 0) {
                                                                            i5 = 1024;
                                                                            d3 = 0.0d;
                                                                        } else {
                                                                            double d4 = jCopyStream;
                                                                            i5 = 1024;
                                                                            double d5 = 1024;
                                                                            d3 = ((d4 / d5) / d5) / (jCurrentTimeMillis / 1000.0d);
                                                                        }
                                                                        j6 = i5;
                                                                        long j110 = (j3 / j6) / j6;
                                                                        String str13 = String.format("%.2f", Arrays.copyOf(new Object[]{Double.valueOf(d3)}, 1));
                                                                        Intrinsics.checkNotNullExpressionValue(str13, "format(...)");
                                                                        Log.i(str5, "DONE received=" + ((j5 / j6) / j6) + "MB expected=" + j110 + "MB time=" + (jCurrentTimeMillis / ((long) 1000)) + "s avg=" + str13 + "MB/s");
                                                                        if (j3 > 0 && j5 < j3) {
                                                                            r13.delete();
                                                                            throw new IllegalStateException("Download incomplete: got " + ((j5 / j6) / j6) + "MB, expected " + ((j3 / j6) / j6) + "MB");
                                                                        }
                                                                        onProgress.invoke(100);
                                                                        return;
                                                                    } catch (Exception e7) {
                                                                        e = e7;
                                                                        str5 = str5;
                                                                        exc = e;
                                                                        r14 = r13;
                                                                        length = j2;
                                                                        r12 = r14;
                                                                        Result.Companion companion4 = Result.INSTANCE;
                                                                        httpURLConnection.disconnect();
                                                                        Result.m9constructorimpl(Unit.INSTANCE);
                                                                        if (!(exc instanceof SocketTimeoutException)) {
                                                                            if (r12.exists()) {
                                                                                r6 = r12;
                                                                            } else {
                                                                                r6 = 0;
                                                                            }
                                                                            if (r6 != 0) {
                                                                                length = r6.length();
                                                                            } else {
                                                                                length = 0;
                                                                            }
                                                                            long j111 = 1024;
                                                                            String str14 = str4;
                                                                            Log.w(str5, str14 + i4 + " failed (" + exc.getClass().getSimpleName() + ": " + exc.getMessage() + "), retry in 3s from " + ((length / j111) / j111) + "MB");
                                                                            Thread.sleep(RETRY_BACKOFF_MS);
                                                                            remoteZipImporter2 = remoteZipImporter;
                                                                            zipUrl = str;
                                                                            i6 = i4;
                                                                            str4 = str14;
                                                                            str5 = str5;
                                                                            Take = r12;
                                                                        } else {
                                                                            if (r12.exists()) {
                                                                                r6 = r12;
                                                                            } else {
                                                                                r6 = 0;
                                                                            }
                                                                            if (r6 != 0) {
                                                                                length = r6.length();
                                                                            } else {
                                                                                length = 0;
                                                                            }
                                                                            long j112 = 1024;
                                                                            String str15 = str4;
                                                                            Log.w(str5, str15 + i4 + " failed (" + exc.getClass().getSimpleName() + ": " + exc.getMessage() + "), retry in 3s from " + ((length / j112) / j112) + "MB");
                                                                            Thread.sleep(RETRY_BACKOFF_MS);
                                                                            remoteZipImporter2 = remoteZipImporter;
                                                                            zipUrl = str;
                                                                            i6 = i4;
                                                                            str4 = str15;
                                                                            str5 = str5;
                                                                            Take = r12;
                                                                        }
                                                                        if (length == 0) {
                                                                            throw exc;
                                                                        }
                                                                        r12.delete();
                                                                        throw exc;
                                                                    }
                                                                } catch (Throwable th6) {
                                                                    th = th6;
                                                                    str5 = str5;
                                                                    th = th;
                                                                    throw th;
                                                                }
                                                            } catch (Throwable th7) {
                                                                th = th7;
                                                                str5 = str5;
                                                                Throwable th8 = th;
                                                                try {
                                                                    throw th8;
                                                                } catch (Throwable th9) {
                                                                    try {
                                                                        CloseableKt.closeFinally(fileOutputStream, th8);
                                                                        throw th9;
                                                                    } catch (Throwable th10) {
                                                                        th = th10;
                                                                        th = th;
                                                                        throw th;
                                                                    }
                                                                }
                                                            }
                                                        } catch (Throwable th11) {
                                                            th = th11;
                                                            j2 = j2;
                                                        }
                                                    } catch (Throwable th12) {
                                                        th = th12;
                                                        i7 = i7;
                                                        str4 = str4;
                                                    }
                                                } catch (Exception e8) {
                                                    e = e8;
                                                    i7 = i7;
                                                    r13 = r13;
                                                    str4 = str4;
                                                    exc = e;
                                                    r14 = r13;
                                                    length = j2;
                                                    r12 = r14;
                                                    Result.Companion companion5 = Result.INSTANCE;
                                                    httpURLConnection.disconnect();
                                                    Result.m9constructorimpl(Unit.INSTANCE);
                                                    if (!(exc instanceof SocketTimeoutException)) {
                                                        if (r12.exists()) {
                                                            r6 = r12;
                                                        } else {
                                                            r6 = 0;
                                                        }
                                                        if (r6 != 0) {
                                                            length = r6.length();
                                                        } else {
                                                            length = 0;
                                                        }
                                                        long j113 = 1024;
                                                        String str16 = str4;
                                                        Log.w(str5, str16 + i4 + " failed (" + exc.getClass().getSimpleName() + ": " + exc.getMessage() + "), retry in 3s from " + ((length / j113) / j113) + "MB");
                                                        Thread.sleep(RETRY_BACKOFF_MS);
                                                        remoteZipImporter2 = remoteZipImporter;
                                                        zipUrl = str;
                                                        i6 = i4;
                                                        str4 = str16;
                                                        str5 = str5;
                                                        Take = r12;
                                                    } else {
                                                        if (r12.exists()) {
                                                            r6 = r12;
                                                        } else {
                                                            r6 = 0;
                                                        }
                                                        if (r6 != 0) {
                                                            length = r6.length();
                                                        } else {
                                                            length = 0;
                                                        }
                                                        long j114 = 1024;
                                                        String str17 = str4;
                                                        Log.w(str5, str17 + i4 + " failed (" + exc.getClass().getSimpleName() + ": " + exc.getMessage() + "), retry in 3s from " + ((length / j114) / j114) + "MB");
                                                        Thread.sleep(RETRY_BACKOFF_MS);
                                                        remoteZipImporter2 = remoteZipImporter;
                                                        zipUrl = str;
                                                        i6 = i4;
                                                        str4 = str17;
                                                        str5 = str5;
                                                        Take = r12;
                                                    }
                                                    if (length == 0) {
                                                        throw exc;
                                                    }
                                                    r12.delete();
                                                    throw exc;
                                                }
                                            } catch (Exception e9) {
                                                e = e9;
                                                str5 = str5;
                                            }
                                        } catch (Exception e10) {
                                            e = e10;
                                            Take = file;
                                            str5 = str5;
                                            i7 = i7;
                                            r13 = Take;
                                            str4 = str4;
                                            exc = e;
                                            r14 = r13;
                                            length = j2;
                                            r12 = r14;
                                            Result.Companion companion6 = Result.INSTANCE;
                                            httpURLConnection.disconnect();
                                            Result.m9constructorimpl(Unit.INSTANCE);
                                            if (!(exc instanceof SocketTimeoutException)) {
                                                if (r12.exists()) {
                                                    r6 = r12;
                                                } else {
                                                    r6 = 0;
                                                }
                                                if (r6 != 0) {
                                                    length = r6.length();
                                                } else {
                                                    length = 0;
                                                }
                                                long j115 = 1024;
                                                String str18 = str4;
                                                Log.w(str5, str18 + i4 + " failed (" + exc.getClass().getSimpleName() + ": " + exc.getMessage() + "), retry in 3s from " + ((length / j115) / j115) + "MB");
                                                Thread.sleep(RETRY_BACKOFF_MS);
                                                remoteZipImporter2 = remoteZipImporter;
                                                zipUrl = str;
                                                i6 = i4;
                                                str4 = str18;
                                                str5 = str5;
                                                Take = r12;
                                            } else {
                                                if (r12.exists()) {
                                                    r6 = r12;
                                                } else {
                                                    r6 = 0;
                                                }
                                                if (r6 != 0) {
                                                    length = r6.length();
                                                } else {
                                                    length = 0;
                                                }
                                                long j116 = 1024;
                                                String str19 = str4;
                                                Log.w(str5, str19 + i4 + " failed (" + exc.getClass().getSimpleName() + ": " + exc.getMessage() + "), retry in 3s from " + ((length / j116) / j116) + "MB");
                                                Thread.sleep(RETRY_BACKOFF_MS);
                                                remoteZipImporter2 = remoteZipImporter;
                                                zipUrl = str;
                                                i6 = i4;
                                                str4 = str19;
                                                str5 = str5;
                                                Take = r12;
                                            }
                                            if (length == 0) {
                                                throw exc;
                                            }
                                            r12.delete();
                                            throw exc;
                                        }
                                    } catch (Exception e11) {
                                        e2 = e11;
                                        exc = e2;
                                        str5 = str5;
                                        i7 = i7;
                                        str4 = str4;
                                        r14 = Take;
                                        length = j2;
                                        r12 = r14;
                                        Result.Companion companion7 = Result.INSTANCE;
                                        httpURLConnection.disconnect();
                                        Result.m9constructorimpl(Unit.INSTANCE);
                                        if (!(exc instanceof SocketTimeoutException)) {
                                            if (r12.exists()) {
                                                r6 = r12;
                                            } else {
                                                r6 = 0;
                                            }
                                            if (r6 != 0) {
                                                length = r6.length();
                                            } else {
                                                length = 0;
                                            }
                                            long j117 = 1024;
                                            String str110 = str4;
                                            Log.w(str5, str110 + i4 + " failed (" + exc.getClass().getSimpleName() + ": " + exc.getMessage() + "), retry in 3s from " + ((length / j117) / j117) + "MB");
                                            Thread.sleep(RETRY_BACKOFF_MS);
                                            remoteZipImporter2 = remoteZipImporter;
                                            zipUrl = str;
                                            i6 = i4;
                                            str4 = str110;
                                            str5 = str5;
                                            Take = r12;
                                        } else {
                                            if (r12.exists()) {
                                                r6 = r12;
                                            } else {
                                                r6 = 0;
                                            }
                                            if (r6 != 0) {
                                                length = r6.length();
                                            } else {
                                                length = 0;
                                            }
                                            long j118 = 1024;
                                            String str111 = str4;
                                            Log.w(str5, str111 + i4 + " failed (" + exc.getClass().getSimpleName() + ": " + exc.getMessage() + "), retry in 3s from " + ((length / j118) / j118) + "MB");
                                            Thread.sleep(RETRY_BACKOFF_MS);
                                            remoteZipImporter2 = remoteZipImporter;
                                            zipUrl = str;
                                            i6 = i4;
                                            str4 = str111;
                                            str5 = str5;
                                            Take = r12;
                                        }
                                        if (length == 0) {
                                            throw exc;
                                        }
                                        r12.delete();
                                        throw exc;
                                    }
                                } catch (Exception e12) {
                                    e = e12;
                                }
                            } catch (Exception e13) {
                                e = e13;
                                exc = e;
                                r12 = Take;
                            }
                            Result.Companion companion8 = Result.INSTANCE;
                            httpURLConnection.disconnect();
                            Result.m9constructorimpl(Unit.INSTANCE);
                            if ((!(exc instanceof SocketTimeoutException) && (!(exc instanceof IOException) || (exc instanceof MalformedURLException))) || (i4 = i7) > 3) {
                                break;
                            }
                            if (r12.exists()) {
                                r6 = r12;
                            } else {
                                r6 = 0;
                            }
                            if (r6 != 0) {
                                length = r6.length();
                            } else {
                                length = 0;
                            }
                            long j119 = 1024;
                            String str112 = str4;
                            Log.w(str5, str112 + i4 + " failed (" + exc.getClass().getSimpleName() + ": " + exc.getMessage() + "), retry in 3s from " + ((length / j119) / j119) + "MB");
                            Thread.sleep(RETRY_BACKOFF_MS);
                            remoteZipImporter2 = remoteZipImporter;
                            zipUrl = str;
                            i6 = i4;
                            str4 = str112;
                            str5 = str5;
                            Take = r12;
                        } else {
                            try {
                                Log.w(str5, "Server ignored Range header (200 vs 206), restarting from 0");
                                try {
                                    Take.delete();
                                    length = 0;
                                    contentLengthLong = httpURLConnection.getContentLengthLong();
                                    lValueOf = Long.valueOf(contentLengthLong);
                                    if (contentLengthLong <= 0) {
                                        lValueOf = null;
                                    }
                                    if (lValueOf != null) {
                                        jLongValue = lValueOf.longValue();
                                    } else {
                                        jLongValue = -1;
                                    }
                                    if (z5) {
                                        jLongValue = length + jLongValue;
                                    }
                                    j2 = length;
                                    j3 = jLongValue;
                                    parentFile = Take.getParentFile();
                                    if (parentFile != null) {
                                        absolutePath = Take.getAbsolutePath();
                                        availableBytes = new StatFs(absolutePath).getAvailableBytes();
                                        z2 = z5;
                                        if (j3 > 0) {
                                            j4 = (long) (j3 * 2.5d);
                                        } else {
                                            j4 = MIN_FREE_SPACE_BYTES;
                                        }
                                        if (availableBytes >= RangesKt.coerceAtLeast(j4, MIN_FREE_SPACE_BYTES)) {
                                            httpURLConnection.disconnect();
                                            long j120 = 1024;
                                            throw new IOException("Không đủ dung lượng: cần " + ((j4 / j120) / j120) + " MB, còn " + ((availableBytes / j120) / j120) + " MB trống.");
                                        }
                                        contentType = httpURLConnection.getContentType();
                                        str2 = "";
                                        if (contentType == null) {
                                            contentType = "";
                                        }
                                        if (z4) {
                                            long j121 = 1024;
                                            str2 = " [RESUME " + ((j2 / j121) / j121) + "MB]";
                                        }
                                        if (r13 > 0) {
                                            long j122 = 1024;
                                            str3 = ((j3 / j122) / j122) + "MB";
                                        } else {
                                            str3 = EnvironmentCompat.MEDIA_UNKNOWN;
                                        }
                                        Take = StringsKt.take(zipUrl, 80);
                                        Log.i(str5, str4 + i7 + str2 + " code=" + responseCode + " connect=" + jCurrentTimeMillis3 + "ms size=" + str3 + " url=" + Take);
                                        if (StringsKt__StringsKt.contains(contentType, (CharSequence) "text/html", true)) {
                                            InputStream inputStream3 = httpURLConnection.getInputStream();
                                            Intrinsics.checkNotNullExpressionValue(inputStream3, "getInputStream(...)");
                                            bufferedReader = new BufferedReader(new InputStreamReader(inputStream3, Charsets.UTF_8), 8192);
                                            String text3 = TextStreamsKt.readText(bufferedReader);
                                            CloseableKt.closeFinally(bufferedReader, null);
                                            Log.d(str5, "HTML snippet: " + StringsKt.take(text3, 600));
                                            strExtractDirectDownloadUrl = remoteZipImporter2.extractDirectDownloadUrl(text3);
                                            httpURLConnection.disconnect();
                                            if (strExtractDirectDownloadUrl != null) {
                                            }
                                            throw new IllegalStateException(ERR_NOT_A_ZIP);
                                        }
                                        r13 = file;
                                        parentFile2 = r13.getParentFile();
                                        if (parentFile2 != null) {
                                            parentFile2.mkdirs();
                                        }
                                        long jCurrentTimeMillis6 = System.currentTimeMillis();
                                        str5 = str5;
                                        bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream());
                                        if (!z2) {
                                            if (looksLikeZipStream(bufferedInputStream)) {
                                                httpURLConnection.disconnect();
                                                throw new IllegalStateException(ERR_NOT_A_ZIP);
                                            }
                                            throw th;
                                        }
                                        fileOutputStream = new FileOutputStream((File) r13, z2);
                                        i7 = i7;
                                        str4 = str4;
                                        jCopyStream = copyStream(remoteZipImporter2, bufferedInputStream, fileOutputStream, j3, jCurrentTimeMillis6, onProgress, j2);
                                        j2 = j2;
                                        Unit unit3 = Unit.INSTANCE;
                                        CloseableKt.closeFinally(fileOutputStream, null);
                                        CloseableKt.closeFinally(bufferedInputStream, null);
                                        httpURLConnection.disconnect();
                                        j5 = j2 + jCopyStream;
                                        jCurrentTimeMillis = System.currentTimeMillis() - jCurrentTimeMillis6;
                                        if (jCurrentTimeMillis > 0) {
                                            i5 = 1024;
                                            d3 = 0.0d;
                                        } else {
                                            i5 = 1024;
                                            d3 = 0.0d;
                                        }
                                        j6 = i5;
                                        long j1110 = (j3 / j6) / j6;
                                        String str113 = String.format("%.2f", Arrays.copyOf(new Object[]{Double.valueOf(d3)}, 1));
                                        Intrinsics.checkNotNullExpressionValue(str113, "format(...)");
                                        Log.i(str5, "DONE received=" + ((j5 / j6) / j6) + "MB expected=" + j1110 + "MB time=" + (jCurrentTimeMillis / ((long) 1000)) + "s avg=" + str113 + "MB/s");
                                        if (j3 > 0) {
                                            r13.delete();
                                            throw new IllegalStateException("Download incomplete: got " + ((j5 / j6) / j6) + "MB, expected " + ((j3 / j6) / j6) + "MB");
                                        }
                                        onProgress.invoke(100);
                                        return;
                                    }
                                    absolutePath = parentFile.getAbsolutePath();
                                    if (absolutePath == null) {
                                        absolutePath = Take.getAbsolutePath();
                                    }
                                    availableBytes = new StatFs(absolutePath).getAvailableBytes();
                                    z2 = z5;
                                    if (j3 > 0) {
                                        j4 = (long) (j3 * 2.5d);
                                    } else {
                                        j4 = MIN_FREE_SPACE_BYTES;
                                    }
                                    if (availableBytes >= RangesKt.coerceAtLeast(j4, MIN_FREE_SPACE_BYTES)) {
                                        httpURLConnection.disconnect();
                                        long j123 = 1024;
                                        throw new IOException("Không đủ dung lượng: cần " + ((j4 / j123) / j123) + " MB, còn " + ((availableBytes / j123) / j123) + " MB trống.");
                                    }
                                    contentType = httpURLConnection.getContentType();
                                    str2 = "";
                                    if (contentType == null) {
                                        contentType = "";
                                    }
                                    if (z4) {
                                        long j124 = 1024;
                                        str2 = " [RESUME " + ((j2 / j124) / j124) + "MB]";
                                    }
                                    if (r13 > 0) {
                                        long j125 = 1024;
                                        str3 = ((j3 / j125) / j125) + "MB";
                                    } else {
                                        str3 = EnvironmentCompat.MEDIA_UNKNOWN;
                                    }
                                    Take = StringsKt.take(zipUrl, 80);
                                    Log.i(str5, str4 + i7 + str2 + " code=" + responseCode + " connect=" + jCurrentTimeMillis3 + "ms size=" + str3 + " url=" + Take);
                                    if (StringsKt__StringsKt.contains(contentType, (CharSequence) "text/html", true)) {
                                        InputStream inputStream4 = httpURLConnection.getInputStream();
                                        Intrinsics.checkNotNullExpressionValue(inputStream4, "getInputStream(...)");
                                        bufferedReader = new BufferedReader(new InputStreamReader(inputStream4, Charsets.UTF_8), 8192);
                                        String text4 = TextStreamsKt.readText(bufferedReader);
                                        CloseableKt.closeFinally(bufferedReader, null);
                                        Log.d(str5, "HTML snippet: " + StringsKt.take(text4, 600));
                                        strExtractDirectDownloadUrl = remoteZipImporter2.extractDirectDownloadUrl(text4);
                                        httpURLConnection.disconnect();
                                        if (strExtractDirectDownloadUrl != null) {
                                        }
                                        throw new IllegalStateException(ERR_NOT_A_ZIP);
                                    }
                                    r13 = file;
                                    parentFile2 = r13.getParentFile();
                                    if (parentFile2 != null) {
                                        parentFile2.mkdirs();
                                    }
                                    long jCurrentTimeMillis7 = System.currentTimeMillis();
                                    str5 = str5;
                                    bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream());
                                    if (!z2) {
                                        if (looksLikeZipStream(bufferedInputStream)) {
                                            httpURLConnection.disconnect();
                                            throw new IllegalStateException(ERR_NOT_A_ZIP);
                                        }
                                        throw th;
                                    }
                                    fileOutputStream = new FileOutputStream((File) r13, z2);
                                    i7 = i7;
                                    str4 = str4;
                                    jCopyStream = copyStream(remoteZipImporter2, bufferedInputStream, fileOutputStream, j3, jCurrentTimeMillis7, onProgress, j2);
                                    j2 = j2;
                                    Unit unit4 = Unit.INSTANCE;
                                    CloseableKt.closeFinally(fileOutputStream, null);
                                    CloseableKt.closeFinally(bufferedInputStream, null);
                                    httpURLConnection.disconnect();
                                    j5 = j2 + jCopyStream;
                                    jCurrentTimeMillis = System.currentTimeMillis() - jCurrentTimeMillis7;
                                    if (jCurrentTimeMillis > 0) {
                                        i5 = 1024;
                                        d3 = 0.0d;
                                    } else {
                                        i5 = 1024;
                                        d3 = 0.0d;
                                    }
                                    j6 = i5;
                                    long j1111 = (j3 / j6) / j6;
                                    String str114 = String.format("%.2f", Arrays.copyOf(new Object[]{Double.valueOf(d3)}, 1));
                                    Intrinsics.checkNotNullExpressionValue(str114, "format(...)");
                                    Log.i(str5, "DONE received=" + ((j5 / j6) / j6) + "MB expected=" + j1111 + "MB time=" + (jCurrentTimeMillis / ((long) 1000)) + "s avg=" + str114 + "MB/s");
                                    if (j3 > 0) {
                                        r13.delete();
                                        throw new IllegalStateException("Download incomplete: got " + ((j5 / j6) / j6) + "MB, expected " + ((j3 / j6) / j6) + "MB");
                                    }
                                    onProgress.invoke(100);
                                    return;
                                } catch (Exception e14) {
                                    exc = e14;
                                    str5 = str5;
                                    i7 = i7;
                                    str4 = str4;
                                    length = 0;
                                    r12 = Take;
                                }
                            } catch (Exception e15) {
                                exc = e15;
                                str5 = str5;
                                i7 = i7;
                                str4 = str4;
                                r12 = Take;
                            }
                            Result.Companion companion9 = Result.INSTANCE;
                            httpURLConnection.disconnect();
                            Result.m9constructorimpl(Unit.INSTANCE);
                            if (!(exc instanceof SocketTimeoutException)) {
                                if (r12.exists()) {
                                    r6 = r12;
                                } else {
                                    r6 = 0;
                                }
                                if (r6 != 0) {
                                    length = r6.length();
                                } else {
                                    length = 0;
                                }
                                long j1112 = 1024;
                                String str115 = str4;
                                Log.w(str5, str115 + i4 + " failed (" + exc.getClass().getSimpleName() + ": " + exc.getMessage() + "), retry in 3s from " + ((length / j1112) / j1112) + "MB");
                                Thread.sleep(RETRY_BACKOFF_MS);
                                remoteZipImporter2 = remoteZipImporter;
                                zipUrl = str;
                                i6 = i4;
                                str4 = str115;
                                str5 = str5;
                                Take = r12;
                            } else {
                                if (r12.exists()) {
                                    r6 = r12;
                                } else {
                                    r6 = 0;
                                }
                                if (r6 != 0) {
                                    length = r6.length();
                                } else {
                                    length = 0;
                                }
                                long j1113 = 1024;
                                String str116 = str4;
                                Log.w(str5, str116 + i4 + " failed (" + exc.getClass().getSimpleName() + ": " + exc.getMessage() + "), retry in 3s from " + ((length / j1113) / j1113) + "MB");
                                Thread.sleep(RETRY_BACKOFF_MS);
                                remoteZipImporter2 = remoteZipImporter;
                                zipUrl = str;
                                i6 = i4;
                                str4 = str116;
                                str5 = str5;
                                Take = r12;
                            }
                        }
                        Result.Companion companion10 = Result.INSTANCE;
                        httpURLConnection.disconnect();
                        Result.m9constructorimpl(Unit.INSTANCE);
                    } catch (Throwable th13) {
                        Result.Companion companion11 = Result.INSTANCE;
                        Result.m9constructorimpl(ResultKt.createFailure(th13));
                    }
                    exc = e;
                    r12 = Take;
                    if (!(exc instanceof SocketTimeoutException)) {
                        if (r12.exists()) {
                            r6 = r12;
                        } else {
                            r6 = 0;
                        }
                        if (r6 != 0) {
                            length = r6.length();
                        } else {
                            length = 0;
                        }
                        long j1114 = 1024;
                        String str117 = str4;
                        Log.w(str5, str117 + i4 + " failed (" + exc.getClass().getSimpleName() + ": " + exc.getMessage() + "), retry in 3s from " + ((length / j1114) / j1114) + "MB");
                        Thread.sleep(RETRY_BACKOFF_MS);
                        remoteZipImporter2 = remoteZipImporter;
                        zipUrl = str;
                        i6 = i4;
                        str4 = str117;
                        str5 = str5;
                        Take = r12;
                    } else {
                        if (r12.exists()) {
                            r6 = r12;
                        } else {
                            r6 = 0;
                        }
                        if (r6 != 0) {
                            length = r6.length();
                        } else {
                            length = 0;
                        }
                        long j1115 = 1024;
                        String str118 = str4;
                        Log.w(str5, str118 + i4 + " failed (" + exc.getClass().getSimpleName() + ": " + exc.getMessage() + "), retry in 3s from " + ((length / j1115) / j1115) + "MB");
                        Thread.sleep(RETRY_BACKOFF_MS);
                        remoteZipImporter2 = remoteZipImporter;
                        zipUrl = str;
                        i6 = i4;
                        str4 = str118;
                        str5 = str5;
                        Take = r12;
                    }
                }
            } catch (Exception e16) {
                e = e16;
                httpURLConnection = httpURLConnection2;
            }
        }
        if (length == 0) {
            throw exc;
        }
        r12.delete();
        throw exc;
    }

    private static final String goFileWebsiteToken() {
        Object objM9constructorimpl;
        String text;
        List<String> groupValues;
        Object obj = "";
        if (cachedGoFileWt.length() > 0) {
            return cachedGoFileWt;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            URLConnection uRLConnectionOpenConnection = new URL("https://gofile.io/dist/js/config.js").openConnection();
            Intrinsics.checkNotNull(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
            HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setReadTimeout(10000);
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setRequestProperty("User-Agent", "Mozilla/5.0 (Linux; Android 10) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36");
            int responseCode = httpURLConnection.getResponseCode();
            InputStream errorStream = (200 > responseCode || responseCode >= 300) ? httpURLConnection.getErrorStream() : httpURLConnection.getInputStream();
            String str = null;
            if (errorStream != null) {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(errorStream, Charsets.UTF_8), 8192);
                try {
                    text = TextStreamsKt.readText(bufferedReader);
                    CloseableKt.closeFinally(bufferedReader, null);
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.closeFinally(bufferedReader, th);
                        throw th2;
                    }
                }
            } else {
                text = null;
            }
            if (text == null) {
                text = "";
            }
            httpURLConnection.disconnect();
            MatchResult matchResultFind$default = Regex.find$default(new Regex("\\bwt\\s*[:=]\\s*[\"']([a-zA-Z0-9]{6,})[\"']"), text, 0, 2, null);
            if (matchResultFind$default != null && (groupValues = matchResultFind$default.getGroupValues()) != null) {
                str = (String) CollectionsKt.getOrNull(groupValues, 1);
            }
            if (str == null) {
                str = "";
            }
            Log.i("MinHub-DL", "GoFile wt fetch: code=" + responseCode + " jsLen=" + text.length() + " matched=" + (str.length() > 0));
            objM9constructorimpl = Result.m9constructorimpl(str);
        } catch (Throwable th3) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th3));
        }
        Throwable thM12exceptionOrNullimpl = Result.m12exceptionOrNullimpl(objM9constructorimpl);
        if (thM12exceptionOrNullimpl == null) {
            obj = objM9constructorimpl;
        } else {
            E.b.x("GoFile wt fetch failed: ", thM12exceptionOrNullimpl.getMessage(), "MinHub-DL");
        }
        String str2 = (String) obj;
        if (str2.length() == 0) {
            str2 = GOFILE_WT_FALLBACK;
        }
        cachedGoFileWt = str2;
        return str2;
    }

    private static final boolean looksLikeZipStream(BufferedInputStream bufferedInputStream) throws IOException {
        bufferedInputStream.mark(4);
        byte[] bArr = new byte[4];
        int i3 = bufferedInputStream.read(bArr);
        bufferedInputStream.reset();
        if (i3 < 4) {
            return false;
        }
        return Arrays.equals(bArr, new byte[]{80, 75, 3, 4}) || Arrays.equals(bArr, new byte[]{80, 75, 5, 6}) || Arrays.equals(bArr, new byte[]{80, 75, 7, 8});
    }

    private static final String pixeldrainFileIdFromPage(String str) {
        List<String> groupValues;
        try {
            URLConnection uRLConnectionOpenConnection = new URL(str).openConnection();
            Intrinsics.checkNotNull(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
            HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setReadTimeout(15000);
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setRequestProperty("User-Agent", "Mozilla/5.0 (Linux; Android 10) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36");
            httpURLConnection.connect();
            InputStream inputStream = httpURLConnection.getInputStream();
            Intrinsics.checkNotNullExpressionValue(inputStream, "getInputStream(...)");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, Charsets.UTF_8), 8192);
            try {
                String text = TextStreamsKt.readText(bufferedReader);
                CloseableKt.closeFinally(bufferedReader, null);
                httpURLConnection.disconnect();
                Log.d("MinHub-DL", "Pixeldrain page HTML snippet: " + StringsKt.take(text, 500));
                Iterator it = CollectionsKt.listOf((Object[]) new Regex[]{new Regex("\"id\"\\s*:\\s*\"([a-zA-Z0-9]{8})\""), new Regex("/api/file/([a-zA-Z0-9]{8})"), new Regex("pixeldrain\\.com/u/([a-zA-Z0-9]{8})"), new Regex("[\"']([a-zA-Z0-9]{8})[\"']\\s*,?\\s*[\"']file")}).iterator();
                while (it.hasNext()) {
                    MatchResult matchResultFind$default = Regex.find$default((Regex) it.next(), text, 0, 2, null);
                    String str2 = (matchResultFind$default == null || (groupValues = matchResultFind$default.getGroupValues()) == null) ? null : (String) CollectionsKt.getOrNull(groupValues, 1);
                    if (str2 != null) {
                        return str2;
                    }
                }
                return null;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(bufferedReader, th);
                    throw th2;
                }
            }
        } catch (Exception e2) {
            E.b.x("Pixeldrain page fetch failed: ", e2.getMessage(), "MinHub-DL");
            return null;
        }
    }
}
