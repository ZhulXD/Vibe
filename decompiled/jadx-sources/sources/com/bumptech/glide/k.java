package com.bumptech.glide;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.ImageView;
import com.bumptech.glide.manager.q;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import p033m0.v;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class k extends p052u0.a {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public boolean f3226A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public boolean f3227B;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Context f3228q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final n f3229r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final Class f3230s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final e f3231t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public a f3232u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Object f3233v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public ArrayList f3234w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public k f3235x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public k f3236y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final boolean f3237z = true;

    static {
    }

    public k(b bVar, n nVar, Class cls, Context context) {
        p052u0.e eVar;
        this.f3229r = nVar;
        this.f3230s = cls;
        this.f3228q = context;
        p041q.e eVar2 = nVar.b.f3201d.f;
        a aVar = (a) eVar2.get(cls);
        if (aVar == null) {
            for (Map.Entry entry : (p028k1.k) eVar2.entrySet()) {
                if (((Class) entry.getKey()).isAssignableFrom(cls)) {
                    aVar = (a) entry.getValue();
                }
            }
        }
        this.f3232u = aVar == null ? e.f3206k : aVar;
        this.f3231t = bVar.f3201d;
        Iterator it = nVar.f3279j.iterator();
        while (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            r();
        }
        synchronized (nVar) {
            eVar = nVar.f3280k;
        }
        a(eVar);
    }

    @Override // p052u0.a
    public final boolean equals(Object obj) {
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return super.equals(kVar) && Objects.equals(this.f3230s, kVar.f3230s) && this.f3232u.equals(kVar.f3232u) && Objects.equals(this.f3233v, kVar.f3233v) && Objects.equals(this.f3234w, kVar.f3234w) && Objects.equals(this.f3235x, kVar.f3235x) && Objects.equals(this.f3236y, kVar.f3236y) && this.f3237z == kVar.f3237z && this.f3226A == kVar.f3226A;
    }

    @Override // p052u0.a
    public final int hashCode() {
        return p063y0.n.g(this.f3226A ? 1 : 0, p063y0.n.g(this.f3237z ? 1 : 0, p063y0.n.h(p063y0.n.h(p063y0.n.h(p063y0.n.h(p063y0.n.h(p063y0.n.h(p063y0.n.h(super.hashCode(), this.f3230s), this.f3232u), this.f3233v), this.f3234w), this.f3235x), this.f3236y), null)));
    }

    public final k r() {
        if (this.f5386n) {
            return clone().r();
        }
        j();
        return this;
    }

    @Override // p052u0.a
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public final k a(p052u0.a aVar) {
        p063y0.f.b(aVar);
        return (k) super.a(aVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final p052u0.c t(Object obj, p054v0.f fVar, p052u0.d dVar, a aVar, g gVar, int i3, int i4, p052u0.a aVar2) {
        p052u0.d dVar2;
        p052u0.d bVar;
        p052u0.a aVar3;
        p052u0.c fVar2;
        g gVar2;
        if (this.f3236y != null) {
            bVar = new p052u0.b(obj, dVar);
            dVar2 = bVar;
        } else {
            dVar2 = null;
            bVar = dVar;
        }
        k kVar = this.f3235x;
        if (kVar == null) {
            Context context = this.f3228q;
            e eVar = this.f3231t;
            aVar3 = aVar2;
            fVar2 = new p052u0.f(context, eVar, obj, this.f3233v, this.f3230s, aVar3, i3, i4, gVar, fVar, this.f3234w, bVar, eVar.g, aVar.b);
        } else {
            if (this.f3227B) {
                throw new IllegalStateException("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
            }
            a aVar4 = kVar.f3237z ? aVar : kVar.f3232u;
            if (p052u0.a.f(kVar.b, 8)) {
                gVar2 = this.f3235x.f5378d;
            } else {
                int iOrdinal = gVar.ordinal();
                if (iOrdinal == 0 || iOrdinal == 1) {
                    gVar2 = g.b;
                } else if (iOrdinal == 2) {
                    gVar2 = g.f3215c;
                } else {
                    if (iOrdinal != 3) {
                        throw new IllegalArgumentException("unknown priority: " + this.f5378d);
                    }
                    gVar2 = g.f3216d;
                }
            }
            g gVar3 = gVar2;
            k kVar2 = this.f3235x;
            int i5 = kVar2.g;
            int i6 = kVar2.f;
            if (p063y0.n.i(i3, i4)) {
                k kVar3 = this.f3235x;
                if (!p063y0.n.i(kVar3.g, kVar3.f)) {
                    i5 = aVar2.g;
                    i6 = aVar2.f;
                }
            }
            int i7 = i6;
            p052u0.g gVar4 = new p052u0.g(obj, bVar);
            Context context2 = this.f3228q;
            p052u0.g gVar5 = gVar4;
            e eVar2 = this.f3231t;
            p052u0.f fVar3 = new p052u0.f(context2, eVar2, obj, this.f3233v, this.f3230s, aVar2, i3, i4, gVar, fVar, this.f3234w, gVar5, eVar2.g, aVar.b);
            this.f3227B = true;
            k kVar4 = this.f3235x;
            p052u0.c cVarT = kVar4.t(obj, fVar, gVar5, aVar4, gVar3, i5, i7, kVar4);
            this.f3227B = false;
            gVar5.f5420c = fVar3;
            gVar5.f5421d = cVarT;
            aVar3 = aVar2;
            fVar2 = gVar5;
        }
        if (dVar2 == null) {
            return fVar2;
        }
        k kVar5 = this.f3236y;
        int i8 = kVar5.g;
        int i9 = kVar5.f;
        if (p063y0.n.i(i3, i4)) {
            k kVar6 = this.f3236y;
            if (!p063y0.n.i(kVar6.g, kVar6.f)) {
                i8 = aVar3.g;
                i9 = aVar3.f;
            }
        }
        int i10 = i9;
        k kVar7 = this.f3236y;
        p052u0.b bVar2 = dVar2;
        p052u0.c cVarT2 = kVar7.t(obj, fVar, bVar2, kVar7.f3232u, kVar7.f5378d, i8, i10, kVar7);
        bVar2.f5390c = fVar2;
        bVar2.f5391d = cVarT2;
        return bVar2;
    }

    @Override // p052u0.a
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public final k clone() {
        k kVar = (k) super.clone();
        kVar.f3232u = kVar.f3232u.clone();
        if (kVar.f3234w != null) {
            kVar.f3234w = new ArrayList(kVar.f3234w);
        }
        k kVar2 = kVar.f3235x;
        if (kVar2 != null) {
            kVar.f3235x = kVar2.clone();
        }
        k kVar3 = kVar.f3236y;
        if (kVar3 != null) {
            kVar.f3236y = kVar3.clone();
        }
        return kVar;
    }

    public final p054v0.a v(ImageView imageView) {
        p052u0.a aVarG;
        p054v0.a aVar;
        p063y0.n.a();
        p063y0.f.b(imageView);
        if (!p052u0.a.f(this.b, 2048) && imageView.getScaleType() != null) {
            switch (j.f3225a[imageView.getScaleType().ordinal()]) {
                case 1:
                    aVarG = clone().g(p033m0.n.f5127d, new p033m0.h());
                    break;
                case 2:
                    aVarG = clone().g(p033m0.n.f5126c, new p033m0.i());
                    aVarG.f5387o = true;
                    break;
                case 3:
                case 4:
                case 5:
                    aVarG = clone().g(p033m0.n.b, new v());
                    aVarG.f5387o = true;
                    break;
                case 6:
                    aVarG = clone().g(p033m0.n.f5126c, new p033m0.i());
                    aVarG.f5387o = true;
                    break;
                default:
                    aVarG = this;
                    break;
            }
        } else {
            aVarG = this;
        }
        this.f3231t.f3208c.getClass();
        Class cls = this.f3230s;
        if (Bitmap.class.equals(cls)) {
            aVar = new p054v0.a(imageView, 0);
        } else {
            if (!Drawable.class.isAssignableFrom(cls)) {
                throw new IllegalArgumentException("Unhandled class: " + cls + ", try .as*(Class).transcode(ResourceTranscoder)");
            }
            aVar = new p054v0.a(imageView, 1);
        }
        w(aVar, aVarG);
        return aVar;
    }

    public final void w(p054v0.f fVar, p052u0.a aVar) {
        p063y0.f.b(fVar);
        if (!this.f3226A) {
            throw new IllegalArgumentException("You must call #load() before calling #into()");
        }
        p052u0.c cVarT = t(new Object(), fVar, null, this.f3232u, aVar.f5378d, aVar.g, aVar.f, aVar);
        p052u0.c cVarF = fVar.f();
        if (cVarT.c(cVarF) && (aVar.f5379e || !cVarF.i())) {
            p063y0.f.c(cVarF, "Argument must not be null");
            if (cVarF.isRunning()) {
                return;
            }
            cVarF.g();
            return;
        }
        this.f3229r.j(fVar);
        fVar.i(cVarT);
        n nVar = this.f3229r;
        synchronized (nVar) {
            nVar.g.b.add(fVar);
            q qVar = nVar.f3276e;
            ((Set) qVar.f3271d).add(cVarT);
            if (qVar.f3270c) {
                cVarT.clear();
                if (Log.isLoggable("RequestTracker", 2)) {
                    Log.v("RequestTracker", "Paused, delaying request");
                }
                ((HashSet) qVar.f3272e).add(cVarT);
            } else {
                cVarT.g();
            }
        }
    }

    public final k x(Object obj) {
        if (this.f5386n) {
            return clone().x(obj);
        }
        this.f3233v = obj;
        this.f3226A = true;
        j();
        return this;
    }
}
