package com.minhub.gamehub.hub.catalog;

import android.content.Context;
import java.io.File;
import java.net.URI;
import java.net.URL;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.RegexOption;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0016J\u0016\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u0013J8\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u001c2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0014\b\u0002\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u001a0 J\u0015\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0013H\u0000¢\u0006\u0002\b$J\u0010\u0010%\u001a\u0004\u0018\u00010\u00132\u0006\u0010&\u001a\u00020\u0013J\u0010\u0010'\u001a\u00020\u00132\u0006\u0010(\u001a\u00020\u0013H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00020\u0007X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006)"}, d2 = {"Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;", "", "<init>", "()V", "DOWNLOAD_BUFFER_SIZE", "", "MEDIAFIRE_DOWNLOAD_BUTTON_REGEX", "Lkotlin/text/Regex;", "BUZZHEAVIER_PAGE_REGEX", "BUZZHEAVIER_CDN_REGEX", "PIXELDRAIN_PAGE_REGEX", "PIXELDRAIN_DIR_REGEX", "BUZZHEAVIER_HX_REGEX", "BUZZHEAVIER_TOKEN_PATH_REGEX", "getBUZZHEAVIER_TOKEN_PATH_REGEX$app_release", "()Lkotlin/text/Regex;", "GOFILE_DIRECT_REGEX", "RANOZ_PAGE_REGEX", "buildImportDirectoryName", "", "title", "timestampMs", "", "resolveArchiveFileName", "zipUrl", "downloadZip", "", "archiveFile", "Ljava/io/File;", "appContext", "Landroid/content/Context;", "onProgress", "Lkotlin/Function1;", "isSupportedRemoteUrl", "", "url", "isSupportedRemoteUrl$app_release", "extractDirectDownloadUrl", "pageHtml", "sanitize", "value", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRemoteZipImporter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteZipImporter.kt\ncom/minhub/gamehub/hub/catalog/RemoteZipImporter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,142:1\n1#2:143\n*E\n"})
public final class RemoteZipImporter {
    private static final Regex BUZZHEAVIER_CDN_REGEX;
    private static final Regex BUZZHEAVIER_HX_REGEX;
    private static final Regex BUZZHEAVIER_PAGE_REGEX;
    private static final Regex BUZZHEAVIER_TOKEN_PATH_REGEX;
    public static final int DOWNLOAD_BUFFER_SIZE = 262144;
    private static final Regex GOFILE_DIRECT_REGEX;
    public static final RemoteZipImporter INSTANCE = new RemoteZipImporter();
    private static final Regex MEDIAFIRE_DOWNLOAD_BUTTON_REGEX;
    private static final Regex PIXELDRAIN_DIR_REGEX;
    private static final Regex PIXELDRAIN_PAGE_REGEX;
    private static final Regex RANOZ_PAGE_REGEX;

    static {
        RegexOption regexOption = RegexOption.IGNORE_CASE;
        MEDIAFIRE_DOWNLOAD_BUTTON_REGEX = new Regex("href=\"(https://download[^\"]+)\"[^>]*id=\"downloadButton\"", (Set<? extends RegexOption>) SetsKt.setOf((Object[]) new RegexOption[]{regexOption, RegexOption.DOT_MATCHES_ALL}));
        BUZZHEAVIER_PAGE_REGEX = new Regex("^https?://(?:www\\.)?(?:buzzheavier\\.com|bzzhr\\.to)/([a-zA-Z0-9]+)(?:[?#].*)?$", regexOption);
        BUZZHEAVIER_CDN_REGEX = new Regex("^https?://ts\\.(?:buzzheavier\\.com|bzzhr\\.to)/d/([a-zA-Z0-9]+)(?:[?#].*)?$", regexOption);
        PIXELDRAIN_PAGE_REGEX = new Regex("^https?://pixeldrain\\.com/u/([a-zA-Z0-9]+)(?:[?#].*)?$", regexOption);
        PIXELDRAIN_DIR_REGEX = new Regex("^https?://pixeldrain\\.com/d/(.+?)(?:[?#].*)?$", regexOption);
        BUZZHEAVIER_HX_REGEX = new Regex("hx-get=\"(/[a-zA-Z0-9]+/download)\"", regexOption);
        BUZZHEAVIER_TOKEN_PATH_REGEX = new Regex("hx-get=\"(/[a-zA-Z0-9]+/download\\?t=[^\"]+)\"", regexOption);
        GOFILE_DIRECT_REGEX = new Regex("^https?://store[^.]*\\.gofile\\.io/download/direct/", regexOption);
        RANOZ_PAGE_REGEX = new Regex("^https?://(?:www\\.)?ranoz\\.gg/file/([a-zA-Z0-9]+)(?:[?#].*)?$", regexOption);
    }

    private RemoteZipImporter() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void downloadZip$default(RemoteZipImporter remoteZipImporter, String str, File file, Context context, Function1 function1, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            context = null;
        }
        if ((i3 & 8) != 0) {
            function1 = new h(2);
        }
        remoteZipImporter.downloadZip(str, file, context, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit downloadZip$lambda$2(int i3) {
        return Unit.INSTANCE;
    }

    private final String sanitize(String value) {
        return StringsKt.take(StringsKt.trim(new Regex("_+").replace(new Regex("[^a-zA-Z0-9_\\-]").replace(StringsKt.trim((CharSequence) value).toString(), "_"), "_"), '_'), 50);
    }

    public final String buildImportDirectoryName(String title, long timestampMs) {
        Intrinsics.checkNotNullParameter(title, "title");
        return sanitize(title) + "_" + timestampMs;
    }

    public final void downloadZip(String zipUrl, File archiveFile, Context appContext, Function1<? super Integer, Unit> onProgress) {
        List<String> groupValues;
        List<String> groupValues2;
        List<String> groupValues3;
        Intrinsics.checkNotNullParameter(zipUrl, "zipUrl");
        Intrinsics.checkNotNullParameter(archiveFile, "archiveFile");
        Intrinsics.checkNotNullParameter(onProgress, "onProgress");
        if (!isSupportedRemoteUrl$app_release(zipUrl)) {
            throw new IllegalArgumentException("Only HTTP(S) download URLs are supported");
        }
        String str = null;
        MatchResult matchResultFind$default = Regex.find$default(PIXELDRAIN_PAGE_REGEX, zipUrl, 0, 2, null);
        String str2 = (matchResultFind$default == null || (groupValues3 = matchResultFind$default.getGroupValues()) == null) ? null : (String) CollectionsKt.getOrNull(groupValues3, 1);
        if (str2 != null) {
            RemoteZipImporterDownloadKt.downloadPixeldrainZip(this, str2, archiveFile, onProgress);
            return;
        }
        MatchResult matchResultFind$default2 = Regex.find$default(PIXELDRAIN_DIR_REGEX, zipUrl, 0, 2, null);
        String str3 = (matchResultFind$default2 == null || (groupValues2 = matchResultFind$default2.getGroupValues()) == null) ? null : (String) CollectionsKt.getOrNull(groupValues2, 1);
        if (str3 != null) {
            RemoteZipImporterDownloadKt.downloadPixeldrainFilesystemZip(this, str3, archiveFile, onProgress);
            return;
        }
        MatchResult matchResultFind$default3 = Regex.find$default(BUZZHEAVIER_CDN_REGEX, zipUrl, 0, 2, null);
        if (matchResultFind$default3 != null && (groupValues = matchResultFind$default3.getGroupValues()) != null) {
            str = (String) CollectionsKt.getOrNull(groupValues, 1);
        }
        if (str != null) {
            RemoteZipImporterDownloadKt.downloadBuzzHeavierCdnZip(this, zipUrl, appContext, archiveFile, onProgress);
            return;
        }
        if (BUZZHEAVIER_PAGE_REGEX.containsMatchIn(zipUrl)) {
            RemoteZipImporterDownloadKt.downloadBuzzHeavierZip(this, appContext, zipUrl, archiveFile, onProgress);
            return;
        }
        if (GOFILE_DIRECT_REGEX.containsMatchIn(zipUrl)) {
            RemoteZipImporterDownloadKt.downloadGoFileZip(this, zipUrl, archiveFile, onProgress);
        } else if (RANOZ_PAGE_REGEX.containsMatchIn(zipUrl)) {
            RemoteZipImporterDownloadKt.downloadRanozZip(this, zipUrl, appContext, archiveFile, onProgress);
        } else {
            RemoteZipImporterDownloadKt.downloadZipInternal(this, zipUrl, archiveFile, onProgress, 0);
        }
    }

    public final String extractDirectDownloadUrl(String pageHtml) {
        List<String> groupValues;
        List<String> groupValues2;
        String str;
        Intrinsics.checkNotNullParameter(pageHtml, "pageHtml");
        MatchResult matchResultFind$default = Regex.find$default(MEDIAFIRE_DOWNLOAD_BUTTON_REGEX, pageHtml, 0, 2, null);
        String strReplace$default = (matchResultFind$default == null || (groupValues2 = matchResultFind$default.getGroupValues()) == null || (str = (String) CollectionsKt.getOrNull(groupValues2, 1)) == null) ? null : StringsKt__StringsJVMKt.replace$default(str, "&amp;", "&", false, 4, (Object) null);
        if (strReplace$default != null && isSupportedRemoteUrl$app_release(strReplace$default)) {
            return strReplace$default;
        }
        MatchResult matchResultFind$default2 = Regex.find$default(BUZZHEAVIER_HX_REGEX, pageHtml, 0, 2, null);
        String str2 = (matchResultFind$default2 == null || (groupValues = matchResultFind$default2.getGroupValues()) == null) ? null : (String) CollectionsKt.getOrNull(groupValues, 1);
        if (str2 != null) {
            String strConcat = "https://buzzheavier.com".concat(str2);
            if (isSupportedRemoteUrl$app_release(strConcat)) {
                return strConcat;
            }
        }
        return null;
    }

    public final Regex getBUZZHEAVIER_TOKEN_PATH_REGEX$app_release() {
        return BUZZHEAVIER_TOKEN_PATH_REGEX;
    }

    public final boolean isSupportedRemoteUrl$app_release(String url) {
        Object objM9constructorimpl;
        String lowerCase;
        Intrinsics.checkNotNullParameter(url, "url");
        try {
            Result.Companion companion = Result.INSTANCE;
            String scheme = new URI(url).getScheme();
            if (scheme != null) {
                lowerCase = scheme.toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            } else {
                lowerCase = null;
            }
            if (lowerCase == null) {
                lowerCase = "";
            }
            objM9constructorimpl = Result.m9constructorimpl(lowerCase);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        String str = (String) (Result.m15isFailureimpl(objM9constructorimpl) ? "" : objM9constructorimpl);
        return Intrinsics.areEqual(str, "http") || Intrinsics.areEqual(str, "https");
    }

    public final String resolveArchiveFileName(String title, String zipUrl) {
        Object objM9constructorimpl;
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(zipUrl, "zipUrl");
        try {
            Result.Companion companion = Result.INSTANCE;
            String path = new URL(zipUrl).getPath();
            Intrinsics.checkNotNullExpressionValue(path, "getPath(...)");
            objM9constructorimpl = Result.m9constructorimpl(StringsKt.trim((CharSequence) StringsKt__StringsKt.substringBefore$default(StringsKt__StringsKt.substringAfterLast$default(path, '/', (String) null, 2, (Object) null), '?', (String) null, 2, (Object) null)).toString());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m15isFailureimpl(objM9constructorimpl)) {
            objM9constructorimpl = null;
        }
        String str = (String) objM9constructorimpl;
        if (str == null) {
            str = "";
        }
        if (StringsKt__StringsJVMKt.endsWith(str, ".zip", true) && !StringsKt.isBlank(str)) {
            return str;
        }
        String strSanitize = sanitize(title);
        if (StringsKt.isBlank(strSanitize)) {
            strSanitize = "game";
        }
        return kotlin.collections.unsigned.a.g(strSanitize, ".zip");
    }
}
