package M1;

import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f1362a;
    public final Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f1363c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f1364d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f1365e;
    public final Object f;
    public final Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Object f1366h;

    public g(i version, String sdkDirectory, Set requiredAbis, LinkedHashMap requiredLibs, String processName, String privateDataDirectory, List archiveLayout, f privateMp3Policy) {
        c trust = c.b;
        b metadata = new b();
        Intrinsics.checkNotNullParameter(version, "version");
        Intrinsics.checkNotNullParameter(sdkDirectory, "sdkDirectory");
        Intrinsics.checkNotNullParameter(requiredAbis, "requiredAbis");
        Intrinsics.checkNotNullParameter(requiredLibs, "requiredLibs");
        Intrinsics.checkNotNullParameter(processName, "processName");
        Intrinsics.checkNotNullParameter(privateDataDirectory, "privateDataDirectory");
        Intrinsics.checkNotNullParameter(archiveLayout, "archiveLayout");
        Intrinsics.checkNotNullParameter(privateMp3Policy, "privateMp3Policy");
        Intrinsics.checkNotNullParameter(trust, "trust");
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        this.f1362a = sdkDirectory;
        this.b = processName;
        this.f1363c = privateDataDirectory;
        this.f1364d = privateMp3Policy;
        this.f1365e = metadata;
        Set setUnmodifiableSet = Collections.unmodifiableSet(CollectionsKt.toSet(requiredAbis));
        Intrinsics.checkNotNullExpressionValue(setUnmodifiableSet, "unmodifiableSet(...)");
        this.f = setUnmodifiableSet;
        List listUnmodifiableList = Collections.unmodifiableList(CollectionsKt.toList(archiveLayout));
        Intrinsics.checkNotNullExpressionValue(listUnmodifiableList, "unmodifiableList(...)");
        this.g = listUnmodifiableList;
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(requiredLibs.size()));
        for (Map.Entry entry : requiredLibs.entrySet()) {
            linkedHashMap.put(entry.getKey(), Collections.unmodifiableList(CollectionsKt.toList((Iterable) entry.getValue())));
        }
        Map mapUnmodifiableMap = Collections.unmodifiableMap(MapsKt.toMap(linkedHashMap));
        Intrinsics.checkNotNullExpressionValue(mapUnmodifiableMap, "unmodifiableMap(...)");
        this.f1366h = mapUnmodifiableMap;
        if (StringsKt.isBlank((String) this.f1362a) || StringsKt.isBlank((String) this.b) || StringsKt.isBlank((String) this.f1363c)) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (requiredAbis.isEmpty()) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (requiredAbis.isEmpty()) {
            return;
        }
        Iterator it = requiredAbis.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (requiredLibs.containsKey(str)) {
                Object obj = requiredLibs.get(str);
                Intrinsics.checkNotNull(obj);
                if (!((Collection) obj).isEmpty()) {
                }
            }
            throw new IllegalArgumentException("Failed requirement.");
        }
    }

    public List a(String abi) {
        Intrinsics.checkNotNullParameter(abi, "abi");
        List list = (List) ((Map) this.f1366h).get(abi);
        return list == null ? CollectionsKt.emptyList() : list;
    }

    public g(LinearLayout linearLayout, FrameLayout frameLayout, ProgressBar progressBar, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        this.f1362a = linearLayout;
        this.b = frameLayout;
        this.f1363c = progressBar;
        this.f1364d = textView;
        this.f1365e = textView2;
        this.f = textView3;
        this.g = textView4;
        this.f1366h = textView5;
    }

    public g(ScrollView scrollView, Button button, Button button2, Button button3, LinearLayout linearLayout, LinearLayout linearLayout2, TextView textView, TextView textView2, TextView textView3) {
        this.f1362a = button;
        this.b = button2;
        this.f1363c = button3;
        this.f1364d = linearLayout;
        this.f1365e = linearLayout2;
        this.f = textView;
        this.g = textView2;
        this.f1366h = textView3;
    }
}
