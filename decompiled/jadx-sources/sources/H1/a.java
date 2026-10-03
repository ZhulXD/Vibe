package H1;

import K1.i;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1087a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1088c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final i f1089d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final I1.i f1090e;
    public final List f;
    public final Set g;

    public a(String engine, String gameId, List list, Set enabledUtilityGates) {
        i channel = i.b;
        I1.i requestedMode = I1.i.b;
        Intrinsics.checkNotNullParameter(engine, "engine");
        Intrinsics.checkNotNullParameter(gameId, "gameId");
        Intrinsics.checkNotNullParameter(channel, "channel");
        Intrinsics.checkNotNullParameter(requestedMode, "requestedMode");
        Intrinsics.checkNotNullParameter(enabledUtilityGates, "enabledUtilityGates");
        this.f1087a = engine;
        this.b = gameId;
        this.f1088c = 79;
        this.f1089d = channel;
        this.f1090e = requestedMode;
        this.f = list != null ? Collections.unmodifiableList(new ArrayList(list)) : null;
        Set setUnmodifiableSet = Collections.unmodifiableSet(new LinkedHashSet(enabledUtilityGates));
        Intrinsics.checkNotNullExpressionValue(setUnmodifiableSet, "unmodifiableSet(...)");
        this.g = setUnmodifiableSet;
        if (StringsKt.isBlank(engine) || engine.length() > 32) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (StringsKt.isBlank(gameId) || gameId.length() > 128) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (list != null && list.size() > 256) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (list != null && CollectionsKt.distinct(list).size() != list.size()) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (enabledUtilityGates == null || !enabledUtilityGates.isEmpty()) {
            Iterator it = enabledUtilityGates.iterator();
            while (it.hasNext()) {
                if (!new Regex("[a-z0-9_]+").matches((String) it.next())) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
            }
        }
    }
}
