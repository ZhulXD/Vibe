package G1;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.minhub.gamehub.data.GameEngine;
import com.minhub.gamehub.game.GameActivity;
import com.minhub.gamehub.hub.catalog.OnlineCatalogItem;
import com.minhub.gamehub.hub.catalog.OnlineCatalogRepository;
import java.io.File;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.net.URLConnection;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.RegexOption;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f997a = "game_patch_ota";
    public static final List b = CollectionsKt.listOf((Object[]) new String[]{"rpgmaker", "tyrano", "html"});

    public static String a(GameActivity ctx, GameEngine engine) {
        Pair pairA;
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        Intrinsics.checkNotNullParameter(engine, "engine");
        String strE = e(engine);
        if (strE == null || (pairA = m.a(g(ctx, strE))) == null) {
            return null;
        }
        Log.i("MinHub-GamePatch", "pre-pack engine=" + strE + " version=" + pairA.getFirst());
        return (String) pairA.getSecond();
    }

    public static String b(GameActivity ctx, long j2) {
        Pair pairA;
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        if (j2 <= 0 || (pairA = m.a(k(ctx, j2))) == null) {
            return null;
        }
        Log.i("MinHub-GamePatch", "pre-pack game=" + j2 + " version=" + pairA.getFirst());
        return (String) pairA.getSecond();
    }

    public static String c() {
        return kotlin.collections.unsigned.a.o("https://pub-5c8ab05667bd4a25a3ff4033246d4339.r2.dev", StringsKt.trimEnd("/Patch", '/'));
    }

    public static File d(Context context, String str) {
        return new File(context.getFilesDir(), kotlin.collections.unsigned.a.o("runtime_patch_engines/", str));
    }

    public static String e(GameEngine engine) {
        Intrinsics.checkNotNullParameter(engine, "engine");
        int i3 = f.f996a[engine.ordinal()];
        if (i3 == 1 || i3 == 2) {
            return "rpgmaker";
        }
        if (i3 == 3) {
            return "tyrano";
        }
        if (i3 != 4) {
            return null;
        }
        return "html";
    }

    public static N1.p f(String str) {
        return new N1.p("pub-5c8ab05667bd4a25a3ff4033246d4339.r2.dev", StringsKt.trimEnd("/Patch", '/') + "/engines/" + str + "/");
    }

    public static File g(Context context, String str) {
        return new File(context.getFilesDir(), E.b.m("runtime_patch_engines/", str, "-pre"));
    }

    public static String h(Context context, long j2) {
        OnlineCatalogItem onlineCatalogItemFetchItem;
        String str;
        SharedPreferences sharedPreferences = context.getSharedPreferences(f997a, 0);
        try {
            onlineCatalogItemFetchItem = new OnlineCatalogRepository(null, null, null, 7, null).fetchItem(j2);
        } catch (Exception unused) {
            onlineCatalogItemFetchItem = null;
        }
        if (onlineCatalogItemFetchItem == null) {
            String string = sharedPreferences.getString("folder_" + j2, null);
            if (string == null || string.length() == 0) {
                return null;
            }
            return string;
        }
        String zipUrl = onlineCatalogItemFetchItem.getZipUrl();
        Intrinsics.checkNotNullParameter(zipUrl, "zipUrl");
        try {
            URI uri = new URI(StringsKt.trim((CharSequence) zipUrl).toString());
            String rawPath = uri.getRawPath();
            if (rawPath == null) {
                rawPath = "";
            }
            if (StringsKt.equals(uri.getScheme(), "https", true) && StringsKt.equals(uri.getHost(), "pub-5c8ab05667bd4a25a3ff4033246d4339.r2.dev", true) && uri.getUserInfo() == null && uri.getPort() == -1 && uri.getRawQuery() == null && uri.getRawFragment() == null) {
                List listSplit$default = StringsKt__StringsKt.split$default(rawPath, new char[]{'/'}, false, 0, 6, (Object) null);
                if (listSplit$default == null || !listSplit$default.isEmpty()) {
                    Iterator it = listSplit$default.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            String str2 = (String) it.next();
                            if (!Intrinsics.areEqual(str2, ".") && !Intrinsics.areEqual(str2, "..")) {
                            }
                        }
                        str = null;
                    }
                }
                if (new Regex("^/(?:[A-Za-z0-9._-]+/){2,}[A-Za-z0-9._-]+[.]zip$", RegexOption.IGNORE_CASE).matches(rawPath)) {
                    String host = uri.getHost();
                    String strSubstring = rawPath.substring(0, StringsKt__StringsKt.lastIndexOf$default((CharSequence) rawPath, '/', 0, false, 6, (Object) null) + 1);
                    Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                    str = "https://" + host + strSubstring;
                } else {
                    str = null;
                }
            } else {
                str = null;
            }
        } catch (Exception unused2) {
        }
        Log.i("MinHub-GamePatch", "game=" + j2 + " catalog zip=" + StringsKt.take(onlineCatalogItemFetchItem.getZipUrl(), 120) + " folder=" + (str == null ? "(not on R2)" : str));
        StringBuilder sb = new StringBuilder("folder_");
        sb.append(j2);
        String string2 = sharedPreferences.getString(sb.toString(), null);
        if (string2 != null && !Intrinsics.areEqual(string2, str)) {
            FilesKt.deleteRecursively(l(context, j2));
        }
        sharedPreferences.edit().putString("folder_" + j2, str != null ? str : "").apply();
        return str;
    }

    public static Pair i(String str) {
        try {
            URLConnection uRLConnectionOpenConnection = new URL(str).openConnection();
            Intrinsics.checkNotNull(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
            HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
            try {
                try {
                    httpURLConnection.setInstanceFollowRedirects(false);
                    httpURLConnection.setConnectTimeout(5000);
                    httpURLConnection.setReadTimeout(8000);
                    httpURLConnection.setUseCaches(false);
                    httpURLConnection.setRequestProperty("Cache-Control", "no-cache");
                    int responseCode = httpURLConnection.getResponseCode();
                    if (200 <= responseCode && responseCode < 300 && httpURLConnection.getContentLengthLong() <= 262144) {
                        Integer numValueOf = Integer.valueOf(responseCode);
                        InputStream inputStream = httpURLConnection.getInputStream();
                        try {
                            Intrinsics.checkNotNull(inputStream);
                            byte[] bytes = ByteStreamsKt.readBytes(inputStream);
                            CloseableKt.closeFinally(inputStream, null);
                            if (bytes.length > 262144) {
                                bytes = null;
                            }
                            Pair pair = TuplesKt.to(numValueOf, bytes);
                            httpURLConnection.disconnect();
                            return pair;
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                CloseableKt.closeFinally(inputStream, th);
                                throw th2;
                            }
                        }
                    }
                    Pair pair2 = TuplesKt.to(Integer.valueOf(responseCode), null);
                    httpURLConnection.disconnect();
                    return pair2;
                } catch (Exception unused) {
                    Pair pair3 = TuplesKt.to(-1, null);
                    httpURLConnection.disconnect();
                    return pair3;
                }
            } catch (Throwable th3) {
                httpURLConnection.disconnect();
                throw th3;
            }
        } catch (Exception unused2) {
            return TuplesKt.to(-1, null);
        }
    }

    public static N1.p j(String str) {
        URI uri = new URI(str);
        String host = uri.getHost();
        Intrinsics.checkNotNullExpressionValue(host, "getHost(...)");
        return new N1.p(host, kotlin.collections.unsigned.a.g(uri.getPath(), "ota/"));
    }

    public static File k(Context context, long j2) {
        return new File(context.getFilesDir(), "runtime_patch_game_folders/ota/" + j2 + "-pre");
    }

    public static File l(Context context, long j2) {
        return new File(context.getFilesDir(), "runtime_patch_game_folders/ota/" + j2);
    }
}
