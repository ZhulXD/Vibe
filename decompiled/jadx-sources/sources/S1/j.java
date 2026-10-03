package S1;

import android.util.Log;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.IntIterator;
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f2065a = CollectionsKt.listOf((Object[]) new String[]{"https://1.1.1.1/dns-query", "https://1.0.0.1/dns-query", "https://8.8.8.8/resolve"});
    public static final List b = CollectionsKt.listOf((Object[]) new String[]{"173.245.48.0/20", "103.21.244.0/22", "103.22.200.0/22", "103.31.4.0/22", "141.101.64.0/18", "108.162.192.0/18", "190.93.240.0/20", "188.114.96.0/20", "197.234.240.0/22", "198.41.128.0/17", "162.158.0.0/15", "104.16.0.0/13", "104.24.0.0/14", "172.64.0.0/13", "131.0.72.0/22"});

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final List f2066c = CollectionsKt.listOf((Object[]) new String[]{"2400:cb00::/32", "2606:4700::/32", "2803:f800::/32", "2405:b500::/32", "2405:8100::/32", "2a06:98c0::/29", "2c0f:f248::/32"});

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final ConcurrentHashMap f2067d = new ConcurrentHashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Regex f2068e = new Regex("^(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})$");

    public static List a(String str) throws UnsupportedEncodingException {
        String strEncode;
        Iterator it;
        List listEmptyList;
        String host = str.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(host, "toLowerCase(...)");
        long jCurrentTimeMillis = System.currentTimeMillis();
        ConcurrentHashMap concurrentHashMap = f2067d;
        h hVar = (h) concurrentHashMap.get(host);
        if (hVar != null && hVar.b > jCurrentTimeMillis) {
            return hVar.f2063a;
        }
        try {
            InetAddress[] allByName = InetAddress.getAllByName(host);
            Intrinsics.checkNotNullExpressionValue(allByName, "getAllByName(...)");
            for (InetAddress inetAddress : allByName) {
                Intrinsics.checkNotNull(inetAddress);
                if (b(inetAddress)) {
                    listEmptyList = CollectionsKt.emptyList();
                    concurrentHashMap.put(host, new h(listEmptyList, jCurrentTimeMillis + 600000));
                    return listEmptyList;
                }
            }
            while (true) {
                if (!it.hasNext()) {
                    listEmptyList = CollectionsKt.emptyList();
                    break;
                }
                Object next = it.next();
                Intrinsics.checkNotNullExpressionValue(next, "next(...)");
                String str2 = (String) next;
                try {
                    URLConnection uRLConnectionOpenConnection = new URL(str2 + "?name=" + strEncode + "&type=A").openConnection();
                    Intrinsics.checkNotNull(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
                    HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
                    httpURLConnection.setConnectTimeout(6000);
                    httpURLConnection.setReadTimeout(6000);
                    httpURLConnection.setRequestProperty("Accept", "application/dns-json");
                    try {
                        if (httpURLConnection.getResponseCode() == 200) {
                            InputStream inputStream = httpURLConnection.getInputStream();
                            Intrinsics.checkNotNullExpressionValue(inputStream, "getInputStream(...)");
                            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, Charsets.UTF_8), 8192);
                            try {
                                String text = TextStreamsKt.readText(bufferedReader);
                                CloseableKt.closeFinally(bufferedReader, null);
                                List listD = d(text);
                                ArrayList arrayList = new ArrayList();
                                for (Object obj : listD) {
                                    InetAddress byName = InetAddress.getByName((String) obj);
                                    Intrinsics.checkNotNullExpressionValue(byName, "getByName(...)");
                                    if (b(byName)) {
                                        arrayList.add(obj);
                                    }
                                }
                                if (!arrayList.isEmpty()) {
                                    httpURLConnection.disconnect();
                                    listEmptyList = arrayList;
                                    break;
                                }
                            } catch (Throwable th) {
                                try {
                                    throw th;
                                } catch (Throwable th2) {
                                    CloseableKt.closeFinally(bufferedReader, th);
                                    throw th2;
                                }
                            }
                        }
                        httpURLConnection.disconnect();
                    } catch (Throwable th3) {
                        httpURLConnection.disconnect();
                        throw th3;
                    }
                } catch (Exception e2) {
                    Log.w("SiteConnection", "DNS-over-HTTPS via " + str2 + " failed: " + e2.getMessage());
                }
            }
        } catch (Exception unused) {
        }
        Intrinsics.checkNotNullParameter(host, "host");
        strEncode = URLEncoder.encode(host, StandardCharsets.UTF_8.name());
        it = f2065a.iterator();
        Log.w("SiteConnection", "DNS for " + host + " is blocked or failing; using DNS-over-HTTPS (" + listEmptyList.size() + " address(es))");
        concurrentHashMap.put(host, new h(listEmptyList, jCurrentTimeMillis + 600000));
        return listEmptyList;
    }

    public static boolean b(InetAddress address) {
        List list;
        Intrinsics.checkNotNullParameter(address, "address");
        if (!(address instanceof Inet4Address)) {
            if (address instanceof Inet6Address) {
                list = f2066c;
            }
            return false;
        }
        list = b;
        byte[] address2 = address.getAddress();
        if (list == null || !list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                List listSplit$default = StringsKt__StringsKt.split$default((String) it.next(), new char[]{'/'}, false, 0, 6, (Object) null);
                String str = (String) listSplit$default.get(0);
                String str2 = (String) listSplit$default.get(1);
                byte[] address3 = InetAddress.getByName(str).getAddress();
                if (address3.length == address2.length) {
                    int i3 = Integer.parseInt(str2);
                    int i4 = 0;
                    while (i3 > 0) {
                        int i5 = i3 < 8 ? 255 & (255 << (8 - i3)) : 255;
                        if ((address2[i4] & i5) == (i5 & address3[i4])) {
                            i3 -= 8;
                            i4++;
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public static HttpURLConnection c(String url) {
        String host;
        String str;
        Intrinsics.checkNotNullParameter(url, "url");
        URL url2 = new URL(url);
        if (StringsKt.equals(url2.getProtocol(), "https", true) && (host = url2.getHost()) != null) {
            String lowerCase = host.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            if (lowerCase != null && (Intrinsics.areEqual(lowerCase, "h-game18.xyz") || StringsKt__StringsJVMKt.endsWith$default(lowerCase, ".h-game18.xyz", false, 2, null))) {
                String host2 = url2.getHost();
                Intrinsics.checkNotNullExpressionValue(host2, "getHost(...)");
                String address = (String) CollectionsKt.firstOrNull(a(host2));
                if (address == null) {
                    URLConnection uRLConnectionOpenConnection = url2.openConnection();
                    Intrinsics.checkNotNull(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
                    return (HttpURLConnection) uRLConnectionOpenConnection;
                }
                Intrinsics.checkNotNullParameter(url2, "url");
                Intrinsics.checkNotNullParameter(address, "address");
                final String host3 = url2.getHost();
                URLConnection uRLConnectionOpenConnection2 = new URL("https", address, url2.getPort(), url2.getFile()).openConnection();
                Intrinsics.checkNotNull(uRLConnectionOpenConnection2, "null cannot be cast to non-null type javax.net.ssl.HttpsURLConnection");
                HttpsURLConnection httpsURLConnection = (HttpsURLConnection) uRLConnectionOpenConnection2;
                if (url2.getPort() == -1 || url2.getPort() == 443) {
                    str = host3;
                } else {
                    str = host3 + ":" + url2.getPort();
                }
                httpsURLConnection.setRequestProperty("Host", str);
                Intrinsics.checkNotNull(host3);
                SSLSocketFactory defaultSSLSocketFactory = HttpsURLConnection.getDefaultSSLSocketFactory();
                Intrinsics.checkNotNullExpressionValue(defaultSSLSocketFactory, "getDefaultSSLSocketFactory(...)");
                httpsURLConnection.setSSLSocketFactory(new i(host3, defaultSSLSocketFactory));
                httpsURLConnection.setHostnameVerifier(new HostnameVerifier() { // from class: S1.g
                    /* JADX WARN: Code duplicated, block: B:53:0x0119  */
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r10v1, types: [java.util.List] */
                    /* JADX WARN: Type inference failed for: r10v15, types: [java.util.ArrayList] */
                    /* JADX WARN: Type inference failed for: r10v2, types: [java.lang.Iterable, java.util.Collection] */
                    @Override // javax.net.ssl.HostnameVerifier
                    public final boolean verify(String str2, SSLSession sSLSession) {
                        ?? EmptyList;
                        boolean zAreEqual;
                        boolean z2;
                        HostnameVerifier defaultHostnameVerifier = HttpsURLConnection.getDefaultHostnameVerifier();
                        String host4 = host3;
                        if (defaultHostnameVerifier.verify(host4, sSLSession)) {
                            return true;
                        }
                        Intrinsics.checkNotNull(sSLSession);
                        try {
                            Certificate[] peerCertificates = sSLSession.getPeerCertificates();
                            Intrinsics.checkNotNullExpressionValue(peerCertificates, "getPeerCertificates(...)");
                            Object objFirstOrNull = ArraysKt.firstOrNull(peerCertificates);
                            X509Certificate x509Certificate = objFirstOrNull instanceof X509Certificate ? (X509Certificate) objFirstOrNull : null;
                            Collection<List<?>> subjectAlternativeNames = x509Certificate != null ? x509Certificate.getSubjectAlternativeNames() : null;
                            if (subjectAlternativeNames == null) {
                                subjectAlternativeNames = CollectionsKt.emptyList();
                            }
                            ArrayList arrayList = new ArrayList();
                            for (Object obj : subjectAlternativeNames) {
                                Object obj2 = ((List) obj).get(0);
                                Integer num = obj2 instanceof Integer ? (Integer) obj2 : null;
                                if (num != null && num.intValue() == 2) {
                                    arrayList.add(obj);
                                }
                            }
                            EmptyList = new ArrayList();
                            int size = arrayList.size();
                            int i3 = 0;
                            while (i3 < size) {
                                Object obj3 = arrayList.get(i3);
                                i3++;
                                Object obj4 = ((List) obj3).get(1);
                                String str3 = obj4 instanceof String ? (String) obj4 : null;
                                if (str3 != null) {
                                    EmptyList.add(str3);
                                }
                            }
                        } catch (Exception unused) {
                            EmptyList = CollectionsKt.emptyList();
                        }
                        if (EmptyList == 0 || !EmptyList.isEmpty()) {
                            for (String pattern : EmptyList) {
                                Intrinsics.checkNotNull(host4);
                                Intrinsics.checkNotNullParameter(host4, "host");
                                Intrinsics.checkNotNullParameter(pattern, "pattern");
                                Locale locale = Locale.ROOT;
                                String lowerCase2 = host4.toLowerCase(locale);
                                Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
                                String strTrimEnd = StringsKt.trimEnd(lowerCase2, '.');
                                String lowerCase3 = pattern.toLowerCase(locale);
                                Intrinsics.checkNotNullExpressionValue(lowerCase3, "toLowerCase(...)");
                                String strTrimEnd2 = StringsKt.trimEnd(lowerCase3, '.');
                                if (StringsKt.N(strTrimEnd2, "*.")) {
                                    String strSubstring = strTrimEnd2.substring(1);
                                    Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                                    if (!StringsKt__StringsJVMKt.endsWith$default(strTrimEnd, strSubstring, false, 2, null) || strTrimEnd.length() <= strSubstring.length()) {
                                        zAreEqual = false;
                                    } else {
                                        String strSubstring2 = strTrimEnd.substring(0, strTrimEnd.length() - strSubstring.length());
                                        Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
                                        if (StringsKt__StringsKt.contains$default((CharSequence) strSubstring2, '.', false, 2, (Object) null)) {
                                            zAreEqual = false;
                                        } else {
                                            zAreEqual = true;
                                        }
                                    }
                                } else {
                                    zAreEqual = Intrinsics.areEqual(strTrimEnd, strTrimEnd2);
                                }
                                if (zAreEqual) {
                                    z2 = true;
                                }
                            }
                            z2 = false;
                        } else {
                            z2 = false;
                        }
                        return z2;
                    }
                });
                httpsURLConnection.setInstanceFollowRedirects(false);
                return httpsURLConnection;
            }
        }
        URLConnection uRLConnectionOpenConnection3 = url2.openConnection();
        Intrinsics.checkNotNull(uRLConnectionOpenConnection3, "null cannot be cast to non-null type java.net.HttpURLConnection");
        return (HttpURLConnection) uRLConnectionOpenConnection3;
    }

    public static List d(String json) {
        Intrinsics.checkNotNullParameter(json, "json");
        JSONArray jSONArrayOptJSONArray = new JSONObject(json).optJSONArray("Answer");
        if (jSONArrayOptJSONArray == null) {
            return CollectionsKt.emptyList();
        }
        int i3 = 0;
        IntRange intRangeUntil = RangesKt.until(0, jSONArrayOptJSONArray.length());
        ArrayList arrayList = new ArrayList();
        Iterator<Integer> it = intRangeUntil.iterator();
        while (it.hasNext()) {
            JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(((IntIterator) it).nextInt());
            if (jSONObjectOptJSONObject != null) {
                arrayList.add(jSONObjectOptJSONObject);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i4 = 0;
        while (i4 < size) {
            Object obj = arrayList.get(i4);
            i4++;
            if (((JSONObject) obj).optInt("type") == 1) {
                arrayList2.add(obj);
            }
        }
        ArrayList arrayList3 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10));
        int size2 = arrayList2.size();
        int i5 = 0;
        while (i5 < size2) {
            Object obj2 = arrayList2.get(i5);
            i5++;
            arrayList3.add(((JSONObject) obj2).optString("data"));
        }
        ArrayList arrayList4 = new ArrayList();
        int size3 = arrayList3.size();
        while (i3 < size3) {
            Object obj3 = arrayList3.get(i3);
            i3++;
            String str = (String) obj3;
            Intrinsics.checkNotNull(str);
            if (f2068e.matches(str)) {
                arrayList4.add(obj3);
            }
        }
        return arrayList4;
    }
}
