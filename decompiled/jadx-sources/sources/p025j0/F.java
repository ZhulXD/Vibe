package p025j0;

import android.net.Uri;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import p009d0.i;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class F implements q {
    public static final Set b = Collections.unmodifiableSet(new HashSet(Arrays.asList("http", "https")));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final q f4614a;

    public F(q qVar) {
        this.f4614a = qVar;
    }

    @Override // p025j0.q
    public final p a(Object obj, int i3, int i4, i iVar) {
        return this.f4614a.a(new g(((Uri) obj).toString(), h.f4627a), i3, i4, iVar);
    }

    @Override // p025j0.q
    public final boolean b(Object obj) {
        return b.contains(((Uri) obj).getScheme());
    }
}
