package com.minhub.gamehub.hub.catalog;

import S1.j;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B!\u0012\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u0004J\u0010\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u0004J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004H\u0002R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogRepository;", "", "fallbackUrls", "", "", "hostHeader", "<init>", "(Ljava/util/List;Ljava/lang/String;)V", "fetch", "Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogResponse;", "engine", "fetchRaw", "fetchRawFromUrl", "url", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRemotePluginCatalogRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemotePluginCatalogRepository.kt\ncom/minhub/gamehub/hub/catalog/RemotePluginCatalogRepository\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,45:1\n1#2:46\n*E\n"})
public final class RemotePluginCatalogRepository {
    private final List<String> fallbackUrls;
    private final String hostHeader;

    public RemotePluginCatalogRepository() {
        this(null, null, 3, null);
    }

    public static /* synthetic */ RemotePluginCatalogResponse fetch$default(RemotePluginCatalogRepository remotePluginCatalogRepository, String str, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = "";
        }
        return remotePluginCatalogRepository.fetch(str);
    }

    public static /* synthetic */ String fetchRaw$default(RemotePluginCatalogRepository remotePluginCatalogRepository, String str, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = "";
        }
        return remotePluginCatalogRepository.fetchRaw(str);
    }

    private final String fetchRawFromUrl(String url) throws ProtocolException {
        HttpURLConnection httpURLConnectionC = j.c(url);
        httpURLConnectionC.setConnectTimeout(8000);
        httpURLConnectionC.setReadTimeout(AccessibilityNodeInfoCompat.EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_MAX_LENGTH);
        httpURLConnectionC.setRequestMethod("GET");
        String strHostHeaderForUrl = OnlineCatalogRepository.INSTANCE.hostHeaderForUrl(url, this.hostHeader);
        if (strHostHeaderForUrl != null) {
            httpURLConnectionC.setRequestProperty("Host", strHostHeaderForUrl);
        }
        try {
            httpURLConnectionC.connect();
            int responseCode = httpURLConnectionC.getResponseCode();
            if (200 > responseCode || responseCode >= 300) {
                throw new IllegalStateException("HTTP " + responseCode + " for " + url);
            }
            InputStream inputStream = httpURLConnectionC.getInputStream();
            Intrinsics.checkNotNullExpressionValue(inputStream, "getInputStream(...)");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, Charsets.UTF_8), 8192);
            try {
                String text = TextStreamsKt.readText(bufferedReader);
                CloseableKt.closeFinally(bufferedReader, null);
                httpURLConnectionC.disconnect();
                return text;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(bufferedReader, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            httpURLConnectionC.disconnect();
            throw th3;
        }
    }

    public final RemotePluginCatalogResponse fetch(String engine) {
        Intrinsics.checkNotNullParameter(engine, "engine");
        return RemotePluginCatalogParser.INSTANCE.parse(fetchRaw(engine));
    }

    public final String fetchRaw(String engine) throws Exception {
        Intrinsics.checkNotNullParameter(engine, "engine");
        Exception e2 = null;
        for (String str : this.fallbackUrls) {
            Intrinsics.checkNotNullExpressionValue(str, "next(...)");
            String strH = str;
            if (!StringsKt.isBlank(engine)) {
                strH = kotlin.collections.unsigned.a.h(strH, "?engine=", engine);
            }
            try {
                continue;
                return fetchRawFromUrl(strH);
            } catch (Exception e3) {
                e2 = e3;
            }
        }
        if (e2 != null) {
            throw e2;
        }
        throw new IllegalStateException("No plugin catalog URL available");
    }

    public RemotePluginCatalogRepository(List<String> fallbackUrls, String hostHeader) {
        Intrinsics.checkNotNullParameter(fallbackUrls, "fallbackUrls");
        Intrinsics.checkNotNullParameter(hostHeader, "hostHeader");
        this.fallbackUrls = fallbackUrls;
        this.hostHeader = hostHeader;
    }

    public RemotePluginCatalogRepository(List list, String str, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? CollectionsKt.listOf("https://h-game18.xyz/wp-json/rrc/v1/plugin-catalog") : list, (i3 & 2) != 0 ? "h-game18.xyz" : str);
    }
}
