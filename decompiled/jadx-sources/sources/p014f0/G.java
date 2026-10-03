package p014f0;

import A1.C0013d;
import com.bumptech.glide.i;
import com.bumptech.glide.load.data.d;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import p009d0.f;
import p009d0.m;
import p025j0.p;
import p025j0.q;
import p025j0.t;
import p041q.e;
import p063y0.l;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class G implements InterfaceC0258g, d {
    public final RunnableC0261j b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C0259h f4186c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4187d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4188e = -1;
    public f f;
    public List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f4189h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile p f4190i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public File f4191j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public H f4192k;

    public G(C0259h c0259h, RunnableC0261j runnableC0261j) {
        this.f4186c = c0259h;
        this.b = runnableC0261j;
    }

    @Override // p014f0.InterfaceC0258g
    public final boolean b() {
        List list;
        boolean z2;
        List list2;
        boolean z3;
        ArrayList arrayListC;
        ArrayList arrayListA = this.f4186c.a();
        if (arrayListA.isEmpty()) {
            return false;
        }
        C0259h c0259h = this.f4186c;
        i iVarA = c0259h.f4214c.a();
        Class<?> cls = c0259h.f4215d.getClass();
        Class cls2 = c0259h.g;
        Class cls3 = c0259h.f4220k;
        C0013d c0013d = iVarA.f3222h;
        l lVar = (l) ((AtomicReference) c0013d.f177c).getAndSet(null);
        if (lVar == null) {
            lVar = new l(cls, cls2, cls3);
        } else {
            lVar.f6023a = cls;
            lVar.b = cls2;
            lVar.f6024c = cls3;
        }
        synchronized (((e) c0013d.f178d)) {
            list = (List) ((e) c0013d.f178d).get(lVar);
        }
        ((AtomicReference) c0013d.f177c).set(lVar);
        if (list == null) {
            ArrayList arrayList = new ArrayList();
            t tVar = iVarA.f3218a;
            synchronized (tVar) {
                arrayListC = tVar.f4640a.c(cls);
            }
            int size = arrayListC.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayListC.get(i3);
                i3++;
                ArrayList arrayListO = iVarA.f3219c.o((Class) obj, cls2);
                int size2 = arrayListO.size();
                int i4 = 0;
                while (i4 < size2) {
                    Object obj2 = arrayListO.get(i4);
                    i4++;
                    Class cls4 = (Class) obj2;
                    if (!iVarA.f.b(cls4, cls3).isEmpty() && !arrayList.contains(cls4)) {
                        arrayList.add(cls4);
                    }
                }
            }
            z2 = false;
            C0013d c0013d2 = iVarA.f3222h;
            List listUnmodifiableList = Collections.unmodifiableList(arrayList);
            synchronized (((e) c0013d2.f178d)) {
                ((e) c0013d2.f178d).put(new l(cls, cls2, cls3), listUnmodifiableList);
            }
            list2 = arrayList;
        } else {
            z2 = false;
            list2 = list;
        }
        if (list2.isEmpty()) {
            if (File.class.equals(this.f4186c.f4220k)) {
                return z2;
            }
            throw new IllegalStateException("Failed to find any load path from " + this.f4186c.f4215d.getClass() + " to " + this.f4186c.f4220k);
        }
        while (true) {
            List list3 = this.g;
            if (list3 != null && this.f4189h < list3.size()) {
                this.f4190i = null;
                boolean z4 = z2;
                while (!z4 && this.f4189h < this.g.size()) {
                    List list4 = this.g;
                    int i5 = this.f4189h;
                    this.f4189h = i5 + 1;
                    q qVar = (q) list4.get(i5);
                    File file = this.f4191j;
                    C0259h c0259h2 = this.f4186c;
                    this.f4190i = qVar.a(file, c0259h2.f4216e, c0259h2.f, c0259h2.f4218i);
                    if (this.f4190i != null && this.f4186c.c(this.f4190i.f4638c.a()) != null) {
                        this.f4190i.f4638c.f(this.f4186c.f4224o, this);
                        z4 = true;
                    }
                }
                return z4;
            }
            int i6 = this.f4188e + 1;
            this.f4188e = i6;
            if (i6 >= list2.size()) {
                int i7 = this.f4187d + 1;
                this.f4187d = i7;
                if (i7 >= arrayListA.size()) {
                    return z2;
                }
                this.f4188e = z2 ? 1 : 0;
            }
            f fVar = (f) arrayListA.get(this.f4187d);
            Class cls5 = (Class) list2.get(this.f4188e);
            m mVarE = this.f4186c.e(cls5);
            C0259h c0259h3 = this.f4186c;
            this.f4192k = new H(c0259h3.f4214c.f3207a, fVar, c0259h3.f4223n, c0259h3.f4216e, c0259h3.f, mVarE, cls5, c0259h3.f4218i);
            File fileH = c0259h3.f4217h.a().h(this.f4192k);
            this.f4191j = fileH;
            if (fileH != null) {
                this.f = fVar;
                this.g = this.f4186c.f4214c.a().f(fileH);
                z3 = false;
                this.f4189h = 0;
            } else {
                z3 = false;
            }
            z2 = z3;
        }
    }

    @Override // com.bumptech.glide.load.data.d
    public final void c(Exception exc) {
        this.b.a(this.f4192k, exc, this.f4190i.f4638c, 4);
    }

    @Override // p014f0.InterfaceC0258g
    public final void cancel() {
        p pVar = this.f4190i;
        if (pVar != null) {
            pVar.f4638c.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.d
    public final void e(Object obj) {
        this.b.c(this.f, obj, this.f4190i.f4638c, 4, this.f4192k);
    }
}
