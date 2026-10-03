package O1;

import K1.g;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1513a;
    public final c b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final g f1514c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1515d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f1516e;
    public final String f;
    public final List g;

    public b(String id, c engine, g phase, int i3, List dependencies, String source, String comment, boolean z2, String str) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(engine, "engine");
        Intrinsics.checkNotNullParameter(phase, "phase");
        Intrinsics.checkNotNullParameter(dependencies, "dependencies");
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter("MinHub runtime", "owner");
        Intrinsics.checkNotNullParameter(comment, "comment");
        this.f1513a = id;
        this.b = engine;
        this.f1514c = phase;
        this.f1515d = i3;
        this.f1516e = z2;
        this.f = str;
        List listUnmodifiableList = Collections.unmodifiableList(new ArrayList(dependencies));
        Intrinsics.checkNotNullExpressionValue(listUnmodifiableList, "unmodifiableList(...)");
        this.g = listUnmodifiableList;
        if (!new Regex("[a-z0-9][a-z0-9-]{0,127}").matches(id)) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (StringsKt.isBlank(source) || StringsKt.isBlank("MinHub runtime") || StringsKt.isBlank(comment)) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (CollectionsKt.distinct(dependencies).size() != dependencies.size() || dependencies.contains(id)) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (str != null && !new Regex("[a-z0-9_]+").matches(str)) {
            throw new IllegalArgumentException("Failed requirement.");
        }
    }
}
