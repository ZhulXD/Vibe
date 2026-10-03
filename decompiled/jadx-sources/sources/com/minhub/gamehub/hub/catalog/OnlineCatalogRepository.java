package com.minhub.gamehub.hub.catalog;

import S1.j;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u0000 #2\u00020\u0001:\u0001#B7\u0012\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0014\b\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\t\u0010\nJ(\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\r2\b\b\u0002\u0010\u000f\u001a\u00020\u0010J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\"\u0010\u0015\u001a\u00020\u00162\u0006\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\r2\b\b\u0002\u0010\u000f\u001a\u00020\u0010J.\u0010\u0017\u001a\u00020\u00182\u0006\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\r2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0004J\u0018\u0010\u001a\u001a\u00020\u00162\u0006\u0010\f\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u0004H\u0002J\u0018\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0004H\u0002J\u0018\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0004H\u0002J\u001c\u0010!\u001a\u00020\u00182\u0006\u0010\"\u001a\u00020\u00042\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0004H\u0002R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lcom/minhub/gamehub/hub/catalog/OnlineCatalogRepository;", "", "fallbackUrls", "", "", "hostHeader", "openConnection", "Lkotlin/Function1;", "Ljava/net/HttpURLConnection;", "<init>", "(Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V", "pagedFallbackUrls", "page", "", "pageSize", "light", "", "fetchItem", "Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;", "postId", "", "fetchPage", "Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;", "fetchPageConditional", "Lcom/minhub/gamehub/hub/catalog/CatalogFetchResult;", "ifNoneMatch", "rewriteLocalUrls", "successfulUrl", "rewriteLocalUrl", "url", "newHost", "rewriteLocalHtml", "html", "fetchPageFromUrl", "catalogUrl", "Companion", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nOnlineCatalogRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnlineCatalogRepository.kt\ncom/minhub/gamehub/hub/catalog/OnlineCatalogRepository\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,182:1\n1563#2:183\n1634#2,3:184\n1563#2:188\n1634#2,2:189\n1563#2:191\n1634#2,3:192\n1636#2:195\n1#3:187\n*S KotlinDebug\n*F\n+ 1 OnlineCatalogRepository.kt\ncom/minhub/gamehub/hub/catalog/OnlineCatalogRepository\n*L\n26#1:183\n26#1:184,3\n86#1:188\n86#1:189,2\n89#1:191\n89#1:192,3\n86#1:195\n*E\n"})
public final class OnlineCatalogRepository {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final List<String> fallbackUrls;
    private final String hostHeader;
    private final Function1<String, HttpURLConnection> openConnection;

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J*\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\u000bJ\u0018\u0010\f\u001a\u0004\u0018\u00010\u00052\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0005¨\u0006\u000f"}, d2 = {"Lcom/minhub/gamehub/hub/catalog/OnlineCatalogRepository$Companion;", "", "<init>", "()V", "buildPageUrl", "", "baseUrl", "page", "", "pageSize", "light", "", "hostHeaderForUrl", "url", "hostHeader", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nOnlineCatalogRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnlineCatalogRepository.kt\ncom/minhub/gamehub/hub/catalog/OnlineCatalogRepository$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,182:1\n774#2:183\n865#2,2:184\n1#3:186\n*S KotlinDebug\n*F\n+ 1 OnlineCatalogRepository.kt\ncom/minhub/gamehub/hub/catalog/OnlineCatalogRepository$Companion\n*L\n151#1:183\n151#1:184,2\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ String buildPageUrl$default(Companion companion, String str, int i3, int i4, boolean z2, int i5, Object obj) {
            if ((i5 & 4) != 0) {
                i4 = 10;
            }
            if ((i5 & 8) != 0) {
                z2 = true;
            }
            return companion.buildPageUrl(str, i3, i4, z2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v0 */
        /* JADX WARN: Type inference failed for: r4v1 */
        /* JADX WARN: Type inference failed for: r4v2, types: [java.util.Collection] */
        /* JADX WARN: Type inference failed for: r4v3, types: [java.util.List] */
        /* JADX WARN: Type inference failed for: r4v6, types: [java.util.ArrayList] */
        public final String buildPageUrl(String baseUrl, int page, int pageSize, boolean light) {
            ?? EmptyList;
            List listSplit$default;
            Intrinsics.checkNotNullParameter(baseUrl, "baseUrl");
            URI uri = new URI(baseUrl);
            String rawQuery = uri.getRawQuery();
            if (rawQuery == null || (listSplit$default = StringsKt__StringsKt.split$default((CharSequence) rawQuery, new String[]{"&"}, false, 0, 6, (Object) null)) == null) {
                EmptyList = 0;
            } else {
                EmptyList = new ArrayList();
                for (Object obj : listSplit$default) {
                    String str = (String) obj;
                    if (!StringsKt.isBlank(str) && !StringsKt.N(str, "page=") && !StringsKt.N(str, "pageSize=") && !StringsKt.N(str, "light=")) {
                        EmptyList.add(obj);
                    }
                }
            }
            if (EmptyList == 0) {
                EmptyList = CollectionsKt.emptyList();
            }
            List listCreateListBuilder = CollectionsKt.createListBuilder();
            listCreateListBuilder.add("page=" + RangesKt.coerceAtLeast(page, 1));
            listCreateListBuilder.add("pageSize=" + RangesKt.coerceAtLeast(pageSize, 1));
            if (light) {
                listCreateListBuilder.add("light=1");
            }
            String string = new URI(uri.getScheme(), uri.getRawAuthority(), uri.getRawPath(), CollectionsKt.o(CollectionsKt___CollectionsKt.plus((Collection) EmptyList, (Iterable) CollectionsKt.build(listCreateListBuilder)), "&", null, null, null, 62), uri.getRawFragment()).toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            return string;
        }

        public final String hostHeaderForUrl(String url, String hostHeader) {
            Object objM9constructorimpl;
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(hostHeader, "hostHeader");
            try {
                Result.Companion companion = Result.INSTANCE;
                String host = new URI(url).getHost();
                if (host == null) {
                    host = "";
                }
                objM9constructorimpl = Result.m9constructorimpl(host);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
            }
            String str = (String) (Result.m15isFailureimpl(objM9constructorimpl) ? "" : objM9constructorimpl);
            if (StringsKt.isBlank(hostHeader) || StringsKt.equals(str, hostHeader, true)) {
                return null;
            }
            return hostHeader;
        }

        private Companion() {
        }
    }

    public OnlineCatalogRepository() {
        this(null, null, null, 7, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final HttpURLConnection _init_$lambda$0(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        return j.c(url);
    }

    public static /* synthetic */ OnlineCatalogPage fetchPage$default(OnlineCatalogRepository onlineCatalogRepository, int i3, int i4, boolean z2, int i5, Object obj) {
        if ((i5 & 2) != 0) {
            i4 = 10;
        }
        if ((i5 & 4) != 0) {
            z2 = true;
        }
        return onlineCatalogRepository.fetchPage(i3, i4, z2);
    }

    public static /* synthetic */ CatalogFetchResult fetchPageConditional$default(OnlineCatalogRepository onlineCatalogRepository, int i3, int i4, boolean z2, String str, int i5, Object obj) {
        if ((i5 & 2) != 0) {
            i4 = 10;
        }
        if ((i5 & 4) != 0) {
            z2 = true;
        }
        if ((i5 & 8) != 0) {
            str = null;
        }
        return onlineCatalogRepository.fetchPageConditional(i3, i4, z2, str);
    }

    private final CatalogFetchResult fetchPageFromUrl(String catalogUrl, String ifNoneMatch) throws ProtocolException {
        HttpURLConnection httpURLConnectionInvoke = this.openConnection.invoke(catalogUrl);
        httpURLConnectionInvoke.setConnectTimeout(10000);
        httpURLConnectionInvoke.setReadTimeout(30000);
        httpURLConnectionInvoke.setRequestMethod("GET");
        String strHostHeaderForUrl = INSTANCE.hostHeaderForUrl(catalogUrl, this.hostHeader);
        if (strHostHeaderForUrl != null) {
            httpURLConnectionInvoke.setRequestProperty("Host", strHostHeaderForUrl);
        }
        if (ifNoneMatch != null && !StringsKt.isBlank(ifNoneMatch)) {
            httpURLConnectionInvoke.setRequestProperty("If-None-Match", ifNoneMatch);
        }
        try {
            httpURLConnectionInvoke.connect();
            if (httpURLConnectionInvoke.getResponseCode() == 304) {
                CatalogFetchResult.NotModified notModified = CatalogFetchResult.NotModified.INSTANCE;
                httpURLConnectionInvoke.disconnect();
                return notModified;
            }
            int responseCode = httpURLConnectionInvoke.getResponseCode();
            if (200 > responseCode || responseCode >= 300) {
                throw new IllegalStateException("Unexpected HTTP " + httpURLConnectionInvoke.getResponseCode() + " for " + catalogUrl);
            }
            InputStream inputStream = httpURLConnectionInvoke.getInputStream();
            Intrinsics.checkNotNullExpressionValue(inputStream, "getInputStream(...)");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, Charsets.UTF_8), 8192);
            try {
                String text = TextStreamsKt.readText(bufferedReader);
                CloseableKt.closeFinally(bufferedReader, null);
                int iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) text, '{', 0, false, 6, (Object) null);
                if (iIndexOf$default < 0) {
                    throw new IllegalStateException("Catalog endpoint returned non-JSON content for " + catalogUrl);
                }
                if (iIndexOf$default != 0) {
                    text = text.substring(iIndexOf$default);
                    Intrinsics.checkNotNullExpressionValue(text, "substring(...)");
                }
                CatalogFetchResult.Fresh fresh = new CatalogFetchResult.Fresh(OnlineCatalogParser.INSTANCE.parsePage(text), httpURLConnectionInvoke.getHeaderField("ETag"));
                httpURLConnectionInvoke.disconnect();
                return fresh;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(bufferedReader, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            httpURLConnectionInvoke.disconnect();
            throw th3;
        }
    }

    public static /* synthetic */ CatalogFetchResult fetchPageFromUrl$default(OnlineCatalogRepository onlineCatalogRepository, String str, String str2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            str2 = null;
        }
        return onlineCatalogRepository.fetchPageFromUrl(str, str2);
    }

    public static /* synthetic */ List pagedFallbackUrls$default(OnlineCatalogRepository onlineCatalogRepository, int i3, int i4, boolean z2, int i5, Object obj) {
        if ((i5 & 2) != 0) {
            i4 = 10;
        }
        if ((i5 & 4) != 0) {
            z2 = true;
        }
        return onlineCatalogRepository.pagedFallbackUrls(i3, i4, z2);
    }

    private final String rewriteLocalHtml(String html, String newHost) {
        if (StringsKt.isBlank(html)) {
            return html;
        }
        return StringsKt__StringsJVMKt.replace(StringsKt__StringsJVMKt.replace(html, E.b.m("http://", this.hostHeader, "/"), "http://" + newHost + "/", true), E.b.m("https://", this.hostHeader, "/"), "http://" + newHost + "/", true);
    }

    private final String rewriteLocalUrl(String url, String newHost) {
        if (!StringsKt.isBlank(url)) {
            try {
                URI uri = new URI(url);
                String string = StringsKt.equals(uri.getHost(), this.hostHeader, true) ? new URI("http", newHost, uri.getRawPath(), uri.getRawQuery(), null).toString() : url;
                Intrinsics.checkNotNull(string);
                return string;
            } catch (Exception unused) {
            }
        }
        return url;
    }

    private final OnlineCatalogPage rewriteLocalUrls(OnlineCatalogPage page, String successfulUrl) {
        Object objM9constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            String host = new URI(successfulUrl).getHost();
            if (host == null) {
                host = "";
            }
            objM9constructorimpl = Result.m9constructorimpl(host);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        String str = (String) (Result.m15isFailureimpl(objM9constructorimpl) ? "" : objM9constructorimpl);
        if (StringsKt.isBlank(str) || StringsKt.equals(str, this.hostHeader, true)) {
            return page;
        }
        List<OnlineCatalogItem> games = page.getGames();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(games, 10));
        for (OnlineCatalogItem onlineCatalogItem : games) {
            String strRewriteLocalUrl = rewriteLocalUrl(onlineCatalogItem.getThumbnailUrl(), str);
            List<String> galleryImages = onlineCatalogItem.getGalleryImages();
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(galleryImages, 10));
            Iterator<T> it = galleryImages.iterator();
            while (it.hasNext()) {
                arrayList2.add(rewriteLocalUrl((String) it.next(), str));
            }
            arrayList.add(OnlineCatalogItem.copy$default(onlineCatalogItem, 0L, null, null, null, null, strRewriteLocalUrl, rewriteLocalHtml(onlineCatalogItem.getContentHtml(), str), null, null, null, arrayList2, null, null, null, null, null, null, 129951, null));
        }
        return OnlineCatalogPage.copy$default(page, 0, 0, 0, 0, arrayList, 15, null);
    }

    public final OnlineCatalogItem fetchItem(long postId) throws ProtocolException {
        String str = "https://h-game18.xyz/wp-json/rrc/v1/gamehub-catalog/item?postId=" + postId + "&_=" + (System.currentTimeMillis() / ((long) 60000));
        HttpURLConnection httpURLConnectionInvoke = this.openConnection.invoke(str);
        httpURLConnectionInvoke.setConnectTimeout(10000);
        httpURLConnectionInvoke.setReadTimeout(30000);
        httpURLConnectionInvoke.setRequestMethod("GET");
        String strHostHeaderForUrl = INSTANCE.hostHeaderForUrl(str, this.hostHeader);
        if (strHostHeaderForUrl != null) {
            httpURLConnectionInvoke.setRequestProperty("Host", strHostHeaderForUrl);
        }
        try {
            httpURLConnectionInvoke.connect();
            int responseCode = httpURLConnectionInvoke.getResponseCode();
            if (200 > responseCode || responseCode >= 300) {
                httpURLConnectionInvoke.disconnect();
                return null;
            }
            InputStream inputStream = httpURLConnectionInvoke.getInputStream();
            Intrinsics.checkNotNullExpressionValue(inputStream, "getInputStream(...)");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, Charsets.UTF_8), 8192);
            try {
                String text = TextStreamsKt.readText(bufferedReader);
                CloseableKt.closeFinally(bufferedReader, null);
                int iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) text, '{', 0, false, 6, (Object) null);
                if (iIndexOf$default < 0) {
                    httpURLConnectionInvoke.disconnect();
                    return null;
                }
                OnlineCatalogParser onlineCatalogParser = OnlineCatalogParser.INSTANCE;
                if (iIndexOf$default != 0) {
                    text = text.substring(iIndexOf$default);
                    Intrinsics.checkNotNullExpressionValue(text, "substring(...)");
                }
                OnlineCatalogItem item = onlineCatalogParser.parseItem(text);
                httpURLConnectionInvoke.disconnect();
                return item;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(bufferedReader, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            httpURLConnectionInvoke.disconnect();
            throw th3;
        }
    }

    public final OnlineCatalogPage fetchPage(int page, int pageSize, boolean light) throws Exception {
        CatalogFetchResult catalogFetchResultFetchPageConditional = fetchPageConditional(page, pageSize, light, null);
        if (catalogFetchResultFetchPageConditional instanceof CatalogFetchResult.Fresh) {
            return ((CatalogFetchResult.Fresh) catalogFetchResultFetchPageConditional).getPage();
        }
        if (catalogFetchResultFetchPageConditional instanceof CatalogFetchResult.NotModified) {
            throw new IllegalStateException("Server returned 304 without a conditional request");
        }
        throw new NoWhenBranchMatchedException();
    }

    public final CatalogFetchResult fetchPageConditional(int page, int pageSize, boolean light, String ifNoneMatch) throws Exception {
        Exception exc = null;
        for (String str : pagedFallbackUrls(RangesKt.coerceAtLeast(page, 1), pageSize, light)) {
            try {
                System.out.println((Object) ("MinHub Catalog fetch trying " + str));
                CatalogFetchResult catalogFetchResultFetchPageFromUrl = fetchPageFromUrl(str, ifNoneMatch);
                if (catalogFetchResultFetchPageFromUrl instanceof CatalogFetchResult.NotModified) {
                    return catalogFetchResultFetchPageFromUrl;
                }
                if (catalogFetchResultFetchPageFromUrl instanceof CatalogFetchResult.Fresh) {
                    return CatalogFetchResult.Fresh.copy$default((CatalogFetchResult.Fresh) catalogFetchResultFetchPageFromUrl, rewriteLocalUrls(((CatalogFetchResult.Fresh) catalogFetchResultFetchPageFromUrl).getPage(), str), null, 2, null);
                }
                throw new NoWhenBranchMatchedException();
            } catch (Exception e2) {
                System.out.println((Object) ("MinHub Catalog fetch failed for " + str + ": " + e2.getMessage()));
                exc = e2;
            }
        }
        if (exc != null) {
            throw exc;
        }
        throw new IllegalStateException("No catalog URL available");
    }

    public final List<String> pagedFallbackUrls(int page, int pageSize, boolean light) {
        List<String> list = this.fallbackUrls;
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(INSTANCE.buildPageUrl((String) it.next(), page, pageSize, light));
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public OnlineCatalogRepository(List<String> fallbackUrls, String hostHeader, Function1<? super String, ? extends HttpURLConnection> openConnection) {
        Intrinsics.checkNotNullParameter(fallbackUrls, "fallbackUrls");
        Intrinsics.checkNotNullParameter(hostHeader, "hostHeader");
        Intrinsics.checkNotNullParameter(openConnection, "openConnection");
        this.fallbackUrls = fallbackUrls;
        this.hostHeader = hostHeader;
        this.openConnection = openConnection;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public OnlineCatalogRepository(List list, String str, Function1 function1, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i3 & 1) != 0) {
            Intrinsics.checkNotNullParameter("https://h-game18.xyz/wp-json/rrc/v1/gamehub-catalog", "catalogJsonUrl");
            Intrinsics.checkNotNullParameter("h-game18.xyz", "catalogHostHeader");
            Intrinsics.checkNotNullParameter("", "customLanIp");
            List listCreateListBuilder = CollectionsKt.createListBuilder();
            listCreateListBuilder.add("https://h-game18.xyz/wp-json/rrc/v1/gamehub-catalog");
            list = CollectionsKt.build(listCreateListBuilder);
        }
        this(list, (i3 & 2) != 0 ? "h-game18.xyz" : str, (i3 & 4) != 0 ? new h(1) : function1);
    }
}
