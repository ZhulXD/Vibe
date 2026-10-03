package K1;

import A1.C0013d;
import java.net.URI;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1229a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1230c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C0013d f1231d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f1232e;
    public final String f;
    public final i g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final g f1233h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f1234i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f1235j;

    public f(String id, String engine, int i3, String sha256, g phase) {
        C0013d match = new C0013d(3);
        List appliesToCore = CollectionsKt.emptyList();
        i channel = i.b;
        List dependencies = CollectionsKt.emptyList();
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(engine, "engine");
        Intrinsics.checkNotNullParameter(match, "match");
        Intrinsics.checkNotNullParameter(appliesToCore, "appliesToCore");
        Intrinsics.checkNotNullParameter("https://dry-run.invalid/non-downloadable", "url");
        Intrinsics.checkNotNullParameter(sha256, "sha256");
        Intrinsics.checkNotNullParameter(channel, "channel");
        Intrinsics.checkNotNullParameter(phase, "phase");
        Intrinsics.checkNotNullParameter(dependencies, "dependencies");
        this.f1229a = id;
        this.b = engine;
        this.f1230c = i3;
        this.f1231d = match;
        this.f1232e = "https://dry-run.invalid/non-downloadable";
        this.f = sha256;
        this.g = channel;
        this.f1233h = phase;
        List listC = l.c(appliesToCore);
        this.f1234i = listC;
        this.f1235j = l.c(dependencies);
        l.b(id);
        l.a(engine);
        if (listC.size() > 256) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (!listC.isEmpty()) {
            Iterator it = listC.iterator();
            while (it.hasNext()) {
                l.b((String) it.next());
            }
        }
        if (this.f1235j.size() > 256) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        List list = this.f1235j;
        if (list == null || !list.isEmpty()) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                l.b((String) it2.next());
            }
        }
        if (CollectionsKt.distinct(this.f1235j).size() != this.f1235j.size() || this.f1235j.contains(this.f1229a)) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        try {
            URI uri = new URI(this.f1232e);
            if (!Intrinsics.areEqual(uri.getScheme(), "https") || uri.getHost() == null || uri.getUserInfo() != null || uri.getFragment() != null) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            if (!l.f1249c.matches(this.f)) {
                throw new IllegalArgumentException("Failed requirement.");
            }
        } catch (Exception unused) {
            throw new IllegalArgumentException();
        }
    }
}
