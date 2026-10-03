package K1;

import A1.C0013d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1239a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C0013d f1240c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List f1241d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f1242e;

    public h(String id, String engine, ArrayList patchIds) {
        C0013d match = new C0013d(3);
        List coreAllowlist = CollectionsKt.emptyList();
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(engine, "engine");
        Intrinsics.checkNotNullParameter(match, "match");
        Intrinsics.checkNotNullParameter(coreAllowlist, "coreAllowlist");
        Intrinsics.checkNotNullParameter(patchIds, "patchIds");
        this.f1239a = id;
        this.b = engine;
        this.f1240c = match;
        List listC = l.c(coreAllowlist);
        this.f1241d = listC;
        this.f1242e = l.c(patchIds);
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
        if (this.f1242e.size() > 256) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        List list = this.f1242e;
        if (list == null || !list.isEmpty()) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                l.b((String) it2.next());
            }
        }
        if (CollectionsKt.distinct(this.f1241d).size() != this.f1241d.size()) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (CollectionsKt.distinct(this.f1242e).size() != this.f1242e.size()) {
            throw new IllegalArgumentException("Failed requirement.");
        }
    }
}
