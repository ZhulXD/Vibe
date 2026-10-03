package p025j0;

import android.net.Uri;
import com.bumptech.glide.load.data.a;
import com.bumptech.glide.load.data.e;
import com.bumptech.glide.load.data.n;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import p009d0.i;
import p060x0.b;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class E implements q {
    public static final Set b = Collections.unmodifiableSet(new HashSet(Arrays.asList("file", "content", "android.resource")));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f4613a;

    public E(D d3) {
        this.f4613a = d3;
    }

    @Override // p025j0.q
    public final p a(Object obj, int i3, int i4, i iVar) {
        e aVar;
        Uri uri = (Uri) obj;
        b bVar = new b(uri);
        D d3 = (D) this.f4613a;
        switch (d3.b) {
            case 0:
                aVar = new a(d3.f4612c, uri, 0);
                break;
            case 1:
                aVar = new a(d3.f4612c, uri, 1);
                break;
            default:
                aVar = new n(1, uri, d3.f4612c);
                break;
        }
        return new p(bVar, aVar);
    }

    @Override // p025j0.q
    public final boolean b(Object obj) {
        return b.contains(((Uri) obj).getScheme());
    }
}
