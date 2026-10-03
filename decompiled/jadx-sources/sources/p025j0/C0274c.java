package p025j0;

import java.io.File;
import p009d0.i;
import p060x0.b;

/* JADX INFO: renamed from: j0.c, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0274c implements q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4618a;
    public final Object b;

    public /* synthetic */ C0274c(int i3, Object obj) {
        this.f4618a = i3;
        this.b = obj;
    }

    @Override // p025j0.q
    public final p a(Object obj, int i3, int i4, i iVar) {
        switch (this.f4618a) {
            case 0:
                byte[] bArr = (byte[]) obj;
                return new p(new b(bArr), new l(1, bArr, (B) this.b));
            case 1:
                return new p(new b(obj), new p012e0.b(1, obj.toString(), (B) this.b));
            default:
                File file = (File) obj;
                return new p(new b(file), new p012e0.b(2, file, (B) this.b));
        }
    }

    @Override // p025j0.q
    public final boolean b(Object obj) {
        switch (this.f4618a) {
            case 0:
                return true;
            case 1:
                return obj.toString().startsWith("data:image");
            default:
                return true;
        }
    }
}
