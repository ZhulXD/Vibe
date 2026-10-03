package p014f0;

import java.security.MessageDigest;
import java.util.Map;
import p009d0.f;
import p009d0.i;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class x implements f {
    public final Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f4300c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f4301d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Class f4302e;
    public final Class f;
    public final f g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Map f4303h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final i f4304i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f4305j;

    public x(Object obj, f fVar, int i3, int i4, Map map, Class cls, Class cls2, i iVar) {
        p063y0.f.c(obj, "Argument must not be null");
        this.b = obj;
        this.g = fVar;
        this.f4300c = i3;
        this.f4301d = i4;
        p063y0.f.c(map, "Argument must not be null");
        this.f4303h = map;
        p063y0.f.c(cls, "Resource class must not be null");
        this.f4302e = cls;
        p063y0.f.c(cls2, "Transcode class must not be null");
        this.f = cls2;
        p063y0.f.c(iVar, "Argument must not be null");
        this.f4304i = iVar;
    }

    @Override // p009d0.f
    public final void b(MessageDigest messageDigest) {
        throw new UnsupportedOperationException();
    }

    @Override // p009d0.f
    public final boolean equals(Object obj) {
        if (obj instanceof x) {
            x xVar = (x) obj;
            if (this.b.equals(xVar.b) && this.g.equals(xVar.g) && this.f4301d == xVar.f4301d && this.f4300c == xVar.f4300c && this.f4303h.equals(xVar.f4303h) && this.f4302e.equals(xVar.f4302e) && this.f.equals(xVar.f) && this.f4304i.equals(xVar.f4304i)) {
                return true;
            }
        }
        return false;
    }

    @Override // p009d0.f
    public final int hashCode() {
        if (this.f4305j == 0) {
            int iHashCode = this.b.hashCode();
            this.f4305j = iHashCode;
            int iHashCode2 = ((((this.g.hashCode() + (iHashCode * 31)) * 31) + this.f4300c) * 31) + this.f4301d;
            this.f4305j = iHashCode2;
            int iHashCode3 = this.f4303h.hashCode() + (iHashCode2 * 31);
            this.f4305j = iHashCode3;
            int iHashCode4 = this.f4302e.hashCode() + (iHashCode3 * 31);
            this.f4305j = iHashCode4;
            int iHashCode5 = this.f.hashCode() + (iHashCode4 * 31);
            this.f4305j = iHashCode5;
            this.f4305j = this.f4304i.b.hashCode() + (iHashCode5 * 31);
        }
        return this.f4305j;
    }

    public final String toString() {
        return "EngineKey{model=" + this.b + ", width=" + this.f4300c + ", height=" + this.f4301d + ", resourceClass=" + this.f4302e + ", transcodeClass=" + this.f + ", signature=" + this.g + ", hashCode=" + this.f4305j + ", transformations=" + this.f4303h + ", options=" + this.f4304i + '}';
    }
}
