package p052u0;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.g;
import p009d0.f;
import p009d0.h;
import p009d0.i;
import p009d0.m;
import p014f0.l;
import p033m0.AbstractC0355e;
import p033m0.t;
import p060x0.b;
import p063y0.c;
import p063y0.n;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a implements Cloneable {
    public int b;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f5381i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f5385m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f5386n;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f5388p;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public l f5377c = l.f4263d;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public g f5378d = g.f3216d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f5379e = true;
    public int f = -1;
    public int g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public f f5380h = p060x0.a.b;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public i f5382j = new i();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public c f5383k = new c(0);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Class f5384l = Object.class;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f5387o = true;

    public static boolean f(int i3, int i4) {
        return (i3 & i4) != 0;
    }

    public a a(a aVar) {
        if (this.f5386n) {
            return clone().a(aVar);
        }
        int i3 = aVar.b;
        if (f(aVar.b, 1048576)) {
            this.f5388p = aVar.f5388p;
        }
        if (f(aVar.b, 4)) {
            this.f5377c = aVar.f5377c;
        }
        if (f(aVar.b, 8)) {
            this.f5378d = aVar.f5378d;
        }
        if (f(aVar.b, 16)) {
            this.b &= -33;
        }
        if (f(aVar.b, 32)) {
            this.b &= -17;
        }
        if (f(aVar.b, 64)) {
            this.b &= -129;
        }
        if (f(aVar.b, 128)) {
            this.b &= -65;
        }
        if (f(aVar.b, 256)) {
            this.f5379e = aVar.f5379e;
        }
        if (f(aVar.b, 512)) {
            this.g = aVar.g;
            this.f = aVar.f;
        }
        if (f(aVar.b, 1024)) {
            this.f5380h = aVar.f5380h;
        }
        if (f(aVar.b, 4096)) {
            this.f5384l = aVar.f5384l;
        }
        if (f(aVar.b, 8192)) {
            this.b &= -16385;
        }
        if (f(aVar.b, 16384)) {
            this.b &= -8193;
        }
        if (f(aVar.b, 131072)) {
            this.f5381i = aVar.f5381i;
        }
        if (f(aVar.b, 2048)) {
            this.f5383k.putAll(aVar.f5383k);
            this.f5387o = aVar.f5387o;
        }
        this.b |= aVar.b;
        this.f5382j.b.g(aVar.f5382j.b);
        j();
        return this;
    }

    @Override // 
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public a clone() {
        try {
            a aVar = (a) super.clone();
            i iVar = new i();
            aVar.f5382j = iVar;
            iVar.b.g(this.f5382j.b);
            c cVar = new c(0);
            aVar.f5383k = cVar;
            cVar.putAll(this.f5383k);
            aVar.f5385m = false;
            aVar.f5386n = false;
            return aVar;
        } catch (CloneNotSupportedException e2) {
            throw new RuntimeException(e2);
        }
    }

    public final a c(Class cls) {
        if (this.f5386n) {
            return clone().c(cls);
        }
        this.f5384l = cls;
        this.b |= 4096;
        j();
        return this;
    }

    public final a d(l lVar) {
        if (this.f5386n) {
            return clone().d(lVar);
        }
        this.f5377c = lVar;
        this.b |= 4;
        j();
        return this;
    }

    public final boolean e(a aVar) {
        aVar.getClass();
        if (Float.compare(1.0f, 1.0f) != 0) {
            return false;
        }
        char[] cArr = n.f6026a;
        return this.f5379e == aVar.f5379e && this.f == aVar.f && this.g == aVar.g && this.f5381i == aVar.f5381i && this.f5377c.equals(aVar.f5377c) && this.f5378d == aVar.f5378d && this.f5382j.equals(aVar.f5382j) && this.f5383k.equals(aVar.f5383k) && this.f5384l.equals(aVar.f5384l) && this.f5380h.equals(aVar.f5380h);
    }

    public boolean equals(Object obj) {
        if (obj instanceof a) {
            return e((a) obj);
        }
        return false;
    }

    public final a g(p033m0.n nVar, AbstractC0355e abstractC0355e) {
        if (this.f5386n) {
            return clone().g(nVar, abstractC0355e);
        }
        k(p033m0.n.g, nVar);
        return n(abstractC0355e, false);
    }

    public final a h(int i3, int i4) {
        if (this.f5386n) {
            return clone().h(i3, i4);
        }
        this.g = i3;
        this.f = i4;
        this.b |= 512;
        j();
        return this;
    }

    public int hashCode() {
        char[] cArr = n.f6026a;
        return n.h(n.h(n.h(n.h(n.h(n.h(n.h(n.g(0, n.g(0, n.g(1, n.g(this.f5381i ? 1 : 0, n.g(this.g, n.g(this.f, n.g(this.f5379e ? 1 : 0, n.h(n.g(0, n.h(n.g(0, n.h(n.g(0, n.g(Float.floatToIntBits(1.0f), 17)), null)), null)), null)))))))), this.f5377c), this.f5378d), this.f5382j), this.f5383k), this.f5384l), this.f5380h), null);
    }

    public final a i() {
        if (this.f5386n) {
            return clone().i();
        }
        this.f5378d = g.f3217e;
        this.b |= 8;
        j();
        return this;
    }

    public final void j() {
        if (this.f5385m) {
            throw new IllegalStateException("You cannot modify locked T, consider clone()");
        }
    }

    public final a k(h hVar, p033m0.n nVar) {
        if (this.f5386n) {
            return clone().k(hVar, nVar);
        }
        p063y0.f.b(hVar);
        this.f5382j.b.put(hVar, nVar);
        j();
        return this;
    }

    public final a l(b bVar) {
        if (this.f5386n) {
            return clone().l(bVar);
        }
        this.f5380h = bVar;
        this.b |= 1024;
        j();
        return this;
    }

    public final a m() {
        if (this.f5386n) {
            return clone().m();
        }
        this.f5379e = false;
        this.b |= 256;
        j();
        return this;
    }

    public final a n(m mVar, boolean z2) {
        if (this.f5386n) {
            return clone().n(mVar, z2);
        }
        t tVar = new t(mVar, z2);
        o(Bitmap.class, mVar, z2);
        o(Drawable.class, tVar, z2);
        o(BitmapDrawable.class, tVar, z2);
        o(p042q0.b.class, new p042q0.c(mVar), z2);
        j();
        return this;
    }

    public final a o(Class cls, m mVar, boolean z2) {
        if (this.f5386n) {
            return clone().o(cls, mVar, z2);
        }
        p063y0.f.b(mVar);
        this.f5383k.put(cls, mVar);
        int i3 = this.b;
        this.b = 67584 | i3;
        this.f5387o = false;
        if (z2) {
            this.b = i3 | 198656;
            this.f5381i = true;
        }
        j();
        return this;
    }

    public final a p(p033m0.h hVar) {
        p033m0.n nVar = p033m0.n.f5127d;
        if (this.f5386n) {
            return clone().p(hVar);
        }
        k(p033m0.n.g, nVar);
        return n(hVar, true);
    }

    public final a q() {
        if (this.f5386n) {
            return clone().q();
        }
        this.f5388p = true;
        this.b |= 1048576;
        j();
        return this;
    }
}
