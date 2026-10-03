package S;

import android.animation.TimeInterpolator;
import android.util.AndroidRuntimeException;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class B extends v {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f1951H;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public ArrayList f1949F = new ArrayList();

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public boolean f1950G = true;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f1952I = false;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f1953J = 0;

    @Override // S.v
    public final void A() {
        this.f2036y = 0L;
        int i3 = 0;
        A a3 = new A(this, i3);
        while (i3 < this.f1949F.size()) {
            v vVar = (v) this.f1949F.get(i3);
            vVar.a(a3);
            vVar.A();
            long j2 = vVar.f2036y;
            if (this.f1950G) {
                this.f2036y = Math.max(this.f2036y, j2);
            } else {
                long j3 = this.f2036y;
                vVar.f2015A = j3;
                this.f2036y = j3 + j2;
            }
            i3++;
        }
    }

    @Override // S.v
    public final v B(t tVar) {
        super.B(tVar);
        return this;
    }

    @Override // S.v
    public final void C(View view) {
        for (int i3 = 0; i3 < this.f1949F.size(); i3++) {
            ((v) this.f1949F.get(i3)).C(view);
        }
        this.g.remove(view);
    }

    @Override // S.v
    public final void D(View view) {
        super.D(view);
        int size = this.f1949F.size();
        for (int i3 = 0; i3 < size; i3++) {
            ((v) this.f1949F.get(i3)).D(view);
        }
    }

    @Override // S.v
    public final void E() {
        if (this.f1949F.isEmpty()) {
            M();
            n();
            return;
        }
        A a3 = new A();
        a3.b = this;
        ArrayList arrayList = this.f1949F;
        int size = arrayList.size();
        int i3 = 0;
        int i4 = 0;
        while (i4 < size) {
            Object obj = arrayList.get(i4);
            i4++;
            ((v) obj).a(a3);
        }
        this.f1951H = this.f1949F.size();
        if (this.f1950G) {
            ArrayList arrayList2 = this.f1949F;
            int size2 = arrayList2.size();
            while (i3 < size2) {
                Object obj2 = arrayList2.get(i3);
                i3++;
                ((v) obj2).E();
            }
            return;
        }
        for (int i5 = 1; i5 < this.f1949F.size(); i5++) {
            ((v) this.f1949F.get(i5 - 1)).a(new A((v) this.f1949F.get(i5), 2));
        }
        v vVar = (v) this.f1949F.get(0);
        if (vVar != null) {
            vVar.E();
        }
    }

    /* JADX WARN: Code duplicated, block: B:55:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:63:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:74:? A[RETURN, SYNTHETIC] */
    @Override // S.v
    public final void F(long j2, long j3) {
        long j4;
        long j5 = this.f2036y;
        long j6 = 0;
        if (this.f2021j != null) {
            if (j2 < 0 && j3 < 0) {
                return;
            }
            if (j2 > j5 && j3 > j5) {
                return;
            }
        }
        boolean z2 = j2 < j3;
        if ((j2 >= 0 && j3 < 0) || (j2 <= j5 && j3 > j5)) {
            this.f2030s = false;
            y(this, u.b, z2);
        }
        if (!this.f1950G) {
            int size = 1;
            while (true) {
                if (size >= this.f1949F.size()) {
                    size = this.f1949F.size();
                    break;
                } else if (((v) this.f1949F.get(size)).f2015A > j3) {
                    break;
                } else {
                    size++;
                }
            }
            int i3 = size - 1;
            if (j2 >= j3) {
                while (true) {
                    if (i3 < this.f1949F.size()) {
                        v vVar = (v) this.f1949F.get(i3);
                        long j7 = vVar.f2015A;
                        j4 = j6;
                        long j8 = j2 - j7;
                        if (j8 < j4) {
                            break;
                        }
                        vVar.F(j8, j3 - j7);
                        i3++;
                        j6 = j4;
                    }
                }
            } else {
                j4 = 0;
                while (i3 >= 0) {
                    v vVar2 = (v) this.f1949F.get(i3);
                    long j9 = vVar2.f2015A;
                    long j10 = j2 - j9;
                    vVar2.F(j10, j3 - j9);
                    if (j10 >= 0) {
                        break;
                    } else {
                        i3--;
                    }
                }
            }
            if (this.f2021j != null) {
                if ((j2 > j5 || j3 > j5) && (j2 >= 0 || j3 < j4)) {
                    return;
                }
                if (j2 > j5) {
                    this.f2030s = true;
                }
                y(this, u.f2007c, z2);
            }
        }
        for (int i4 = 0; i4 < this.f1949F.size(); i4++) {
            ((v) this.f1949F.get(i4)).F(j2, j3);
        }
        j4 = j6;
        if (this.f2021j != null) {
            if (j2 > j5) {
                return;
            } else {
                return;
            }
            if (j2 > j5) {
                this.f2030s = true;
            }
            y(this, u.f2007c, z2);
        }
    }

    @Override // S.v
    public final void H(com.bumptech.glide.c cVar) {
        this.f2034w = cVar;
        this.f1953J |= 8;
        int size = this.f1949F.size();
        for (int i3 = 0; i3 < size; i3++) {
            ((v) this.f1949F.get(i3)).H(cVar);
        }
    }

    @Override // S.v
    public final void J(Y0.e eVar) {
        super.J(eVar);
        this.f1953J |= 4;
        if (this.f1949F != null) {
            for (int i3 = 0; i3 < this.f1949F.size(); i3++) {
                ((v) this.f1949F.get(i3)).J(eVar);
            }
        }
    }

    @Override // S.v
    public final void K() {
        this.f1953J |= 2;
        int size = this.f1949F.size();
        for (int i3 = 0; i3 < size; i3++) {
            ((v) this.f1949F.get(i3)).K();
        }
    }

    @Override // S.v
    public final void L(long j2) {
        this.f2016c = j2;
    }

    @Override // S.v
    public final String N(String str) {
        String strN = super.N(str);
        for (int i3 = 0; i3 < this.f1949F.size(); i3++) {
            StringBuilder sb = new StringBuilder();
            sb.append(strN);
            sb.append("\n");
            sb.append(((v) this.f1949F.get(i3)).N(str + "  "));
            strN = sb.toString();
        }
        return strN;
    }

    public final void O(v vVar) {
        this.f1949F.add(vVar);
        vVar.f2021j = this;
        long j2 = this.f2017d;
        if (j2 >= 0) {
            vVar.G(j2);
        }
        if ((this.f1953J & 1) != 0) {
            vVar.I(this.f2018e);
        }
        if ((this.f1953J & 2) != 0) {
            vVar.K();
        }
        if ((this.f1953J & 4) != 0) {
            vVar.J(this.f2035x);
        }
        if ((this.f1953J & 8) != 0) {
            vVar.H(this.f2034w);
        }
    }

    public final v P(int i3) {
        if (i3 < 0 || i3 >= this.f1949F.size()) {
            return null;
        }
        return (v) this.f1949F.get(i3);
    }

    @Override // S.v
    /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
    public final void G(long j2) {
        ArrayList arrayList;
        this.f2017d = j2;
        if (j2 < 0 || (arrayList = this.f1949F) == null) {
            return;
        }
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            ((v) this.f1949F.get(i3)).G(j2);
        }
    }

    @Override // S.v
    /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
    public final void I(TimeInterpolator timeInterpolator) {
        this.f1953J |= 1;
        ArrayList arrayList = this.f1949F;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i3 = 0; i3 < size; i3++) {
                ((v) this.f1949F.get(i3)).I(timeInterpolator);
            }
        }
        this.f2018e = timeInterpolator;
    }

    public final void S(int i3) {
        if (i3 == 0) {
            this.f1950G = true;
        } else {
            if (i3 != 1) {
                throw new AndroidRuntimeException(E.b.i(i3, "Invalid parameter for TransitionSet ordering: "));
            }
            this.f1950G = false;
        }
    }

    @Override // S.v
    public final void b(View view) {
        for (int i3 = 0; i3 < this.f1949F.size(); i3++) {
            ((v) this.f1949F.get(i3)).b(view);
        }
        this.g.add(view);
    }

    @Override // S.v
    public final void d() {
        super.d();
        int size = this.f1949F.size();
        for (int i3 = 0; i3 < size; i3++) {
            ((v) this.f1949F.get(i3)).d();
        }
    }

    @Override // S.v
    public final void e(E e2) {
        View view = e2.b;
        if (w(view)) {
            ArrayList arrayList = this.f1949F;
            int size = arrayList.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayList.get(i3);
                i3++;
                v vVar = (v) obj;
                if (vVar.w(view)) {
                    vVar.e(e2);
                    e2.f1956c.add(vVar);
                }
            }
        }
    }

    @Override // S.v
    public final void g(E e2) {
        int size = this.f1949F.size();
        for (int i3 = 0; i3 < size; i3++) {
            ((v) this.f1949F.get(i3)).g(e2);
        }
    }

    @Override // S.v
    public final void h(E e2) {
        View view = e2.b;
        if (w(view)) {
            ArrayList arrayList = this.f1949F;
            int size = arrayList.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayList.get(i3);
                i3++;
                v vVar = (v) obj;
                if (vVar.w(view)) {
                    vVar.h(e2);
                    e2.f1956c.add(vVar);
                }
            }
        }
    }

    @Override // S.v
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public final v clone() {
        B b = (B) super.clone();
        b.f1949F = new ArrayList();
        int size = this.f1949F.size();
        for (int i3 = 0; i3 < size; i3++) {
            v vVarClone = ((v) this.f1949F.get(i3)).clone();
            b.f1949F.add(vVarClone);
            vVarClone.f2021j = b;
        }
        return b;
    }

    @Override // S.v
    public final void m(ViewGroup viewGroup, N1.w wVar, N1.w wVar2, ArrayList arrayList, ArrayList arrayList2) {
        long j2 = this.f2016c;
        int size = this.f1949F.size();
        for (int i3 = 0; i3 < size; i3++) {
            v vVar = (v) this.f1949F.get(i3);
            if (j2 > 0 && (this.f1950G || i3 == 0)) {
                long j3 = vVar.f2016c;
                if (j3 > 0) {
                    vVar.L(j3 + j2);
                } else {
                    vVar.L(j2);
                }
            }
            vVar.m(viewGroup, wVar, wVar2, arrayList, arrayList2);
        }
    }

    @Override // S.v
    public final boolean t() {
        for (int i3 = 0; i3 < this.f1949F.size(); i3++) {
            if (((v) this.f1949F.get(i3)).t()) {
                return true;
            }
        }
        return false;
    }

    @Override // S.v
    public final boolean u() {
        int size = this.f1949F.size();
        for (int i3 = 0; i3 < size; i3++) {
            if (!((v) this.f1949F.get(i3)).u()) {
                return false;
            }
        }
        return true;
    }

    @Override // S.v
    public final void z(View view) {
        super.z(view);
        int size = this.f1949F.size();
        for (int i3 = 0; i3 < size; i3++) {
            ((v) this.f1949F.get(i3)).z(view);
        }
    }
}
