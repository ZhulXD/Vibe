package p053v;

import java.util.HashSet;
import java.util.Iterator;
import kotlin.collections.unsigned.a;
import p051u.h;
import p051u.i;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c {
    public final d b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f5443c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public c f5444d;
    public i g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public HashSet f5442a = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5445e = 0;
    public int f = -1;

    public c(d dVar, int i3) {
        this.b = dVar;
        this.f5443c = i3;
    }

    public final void a(c cVar, int i3) {
        b(cVar, i3, -1, false);
    }

    public final boolean b(c cVar, int i3, int i4, boolean z2) {
        if (cVar == null) {
            h();
            return true;
        }
        if (!z2 && !g(cVar)) {
            return false;
        }
        this.f5444d = cVar;
        if (cVar.f5442a == null) {
            cVar.f5442a = new HashSet();
        }
        this.f5444d.f5442a.add(this);
        if (i3 > 0) {
            this.f5445e = i3;
        } else {
            this.f5445e = 0;
        }
        this.f = i4;
        return true;
    }

    public final int c() {
        c cVar;
        if (this.b.f5466V == 8) {
            return 0;
        }
        int i3 = this.f;
        return (i3 <= -1 || (cVar = this.f5444d) == null || cVar.b.f5466V != 8) ? this.f5445e : i3;
    }

    public final c d() {
        int i3 = this.f5443c;
        int iA = h.a(i3);
        d dVar = this.b;
        switch (iA) {
            case 0:
            case 5:
            case 6:
            case 7:
            case 8:
                return null;
            case 1:
                return dVar.f5495z;
            case 2:
                return dVar.f5446A;
            case 3:
                return dVar.f5493x;
            case 4:
                return dVar.f5494y;
            default:
                throw new AssertionError(a.p(i3));
        }
    }

    public final boolean e() {
        HashSet hashSet = this.f5442a;
        if (hashSet == null) {
            return false;
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            if (((c) it.next()).d().f()) {
                return true;
            }
        }
        return false;
    }

    public final boolean f() {
        return this.f5444d != null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:45:0x005e A[RETURN] */
    public final boolean g(c cVar) {
        if (cVar != null) {
            d dVar = cVar.b;
            int i3 = cVar.f5443c;
            int i4 = this.f5443c;
            if (i3 != i4) {
                switch (h.a(i4)) {
                    case 0:
                    case 5:
                    case 7:
                    case 8:
                        break;
                    case 1:
                    case 3:
                        boolean z2 = i3 == 2 || i3 == 4;
                        if (!(dVar instanceof h)) {
                            return z2;
                        }
                        if (z2 || i3 == 8) {
                            return true;
                        }
                        break;
                    case 2:
                    case 4:
                        boolean z3 = i3 == 3 || i3 == 5;
                        if (!(dVar instanceof h)) {
                            return z3;
                        }
                        if (z3 || i3 == 9) {
                            return true;
                        }
                        break;
                    case 6:
                        if (i3 != 6 && i3 != 8 && i3 != 9) {
                            return true;
                        }
                        break;
                    default:
                        throw new AssertionError(a.p(i4));
                }
            } else if (i4 != 6 || (dVar.f5492w && this.b.f5492w)) {
                return true;
            }
        }
        return false;
    }

    public final void h() {
        HashSet hashSet;
        c cVar = this.f5444d;
        if (cVar != null && (hashSet = cVar.f5442a) != null) {
            hashSet.remove(this);
        }
        this.f5444d = null;
        this.f5445e = 0;
        this.f = -1;
    }

    public final void i() {
        i iVar = this.g;
        if (iVar == null) {
            this.g = new i(1);
        } else {
            iVar.c();
        }
    }

    public final String toString() {
        return this.b.f5467W + ":" + a.p(this.f5443c);
    }
}
