package p025j0;

import java.io.File;
import p009d0.i;
import p060x0.b;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C implements q {
    public static final C b = new C(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4611a;

    public /* synthetic */ C(int i3) {
        this.f4611a = i3;
    }

    @Override // p025j0.q
    public final p a(Object obj, int i3, int i4, i iVar) {
        switch (this.f4611a) {
            case 0:
                return new p(new b(obj), new C0275d(1, obj));
            case 1:
                File file = (File) obj;
                return new p(new b(file), new C0275d(0, file));
            default:
                return null;
        }
    }

    @Override // p025j0.q
    public final boolean b(Object obj) {
        switch (this.f4611a) {
            case 0:
                return true;
            case 1:
                return true;
            default:
                return false;
        }
    }
}
