package p014f0;

import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.util.ArrayDeque;
import p009d0.f;
import p009d0.i;
import p009d0.m;
import p016g0.e;
import p016g0.g;
import p063y0.j;
import p063y0.n;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class H implements f {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final j f4193j = new j(50);
    public final g b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final f f4194c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final f f4195d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f4196e;
    public final int f;
    public final Class g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final i f4197h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final m f4198i;

    public H(g gVar, f fVar, f fVar2, int i3, int i4, m mVar, Class cls, i iVar) {
        this.b = gVar;
        this.f4194c = fVar;
        this.f4195d = fVar2;
        this.f4196e = i3;
        this.f = i4;
        this.f4198i = mVar;
        this.g = cls;
        this.f4197h = iVar;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // p009d0.f
    public final void b(MessageDigest messageDigest) {
        Object objE;
        g gVar = this.b;
        synchronized (gVar) {
            p016g0.f fVar = gVar.b;
            p016g0.i iVarB = (p016g0.i) ((ArrayDeque) fVar.b).poll();
            if (iVarB == null) {
                iVarB = fVar.b();
            }
            e eVar = (e) iVarB;
            eVar.b = 8;
            eVar.f4320c = byte[].class;
            objE = gVar.e(eVar, byte[].class);
        }
        byte[] bArr = (byte[]) objE;
        ByteBuffer.wrap(bArr).putInt(this.f4196e).putInt(this.f).array();
        this.f4195d.b(messageDigest);
        this.f4194c.b(messageDigest);
        messageDigest.update(bArr);
        m mVar = this.f4198i;
        if (mVar != null) {
            mVar.b(messageDigest);
        }
        this.f4197h.b(messageDigest);
        j jVar = f4193j;
        Class cls = this.g;
        byte[] bytes = (byte[]) jVar.a(cls);
        if (bytes == null) {
            bytes = cls.getName().getBytes(f.f3868a);
            jVar.d(cls, bytes);
        }
        messageDigest.update(bytes);
        this.b.g(bArr);
    }

    @Override // p009d0.f
    public final boolean equals(Object obj) {
        if (obj instanceof H) {
            H h2 = (H) obj;
            if (this.f == h2.f && this.f4196e == h2.f4196e && n.b(this.f4198i, h2.f4198i) && this.g.equals(h2.g) && this.f4194c.equals(h2.f4194c) && this.f4195d.equals(h2.f4195d) && this.f4197h.equals(h2.f4197h)) {
                return true;
            }
        }
        return false;
    }

    @Override // p009d0.f
    public final int hashCode() {
        int iHashCode = ((((this.f4195d.hashCode() + (this.f4194c.hashCode() * 31)) * 31) + this.f4196e) * 31) + this.f;
        m mVar = this.f4198i;
        if (mVar != null) {
            iHashCode = (iHashCode * 31) + mVar.hashCode();
        }
        return this.f4197h.b.hashCode() + ((this.g.hashCode() + (iHashCode * 31)) * 31);
    }

    public final String toString() {
        return "ResourceCacheKey{sourceKey=" + this.f4194c + ", signature=" + this.f4195d + ", width=" + this.f4196e + ", height=" + this.f + ", decodedResourceClass=" + this.g + ", transformation='" + this.f4198i + "', options=" + this.f4197h + '}';
    }
}
