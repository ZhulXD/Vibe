package T;

import android.graphics.Matrix;
import android.graphics.Paint;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class j extends k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Matrix f2092a;
    public final ArrayList b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f2093c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f2094d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f2095e;
    public float f;
    public float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f2096h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f2097i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Matrix f2098j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f2099k;

    public j() {
        this.f2092a = new Matrix();
        this.b = new ArrayList();
        this.f2093c = 0.0f;
        this.f2094d = 0.0f;
        this.f2095e = 0.0f;
        this.f = 1.0f;
        this.g = 1.0f;
        this.f2096h = 0.0f;
        this.f2097i = 0.0f;
        this.f2098j = new Matrix();
        this.f2099k = null;
    }

    @Override // T.k
    public final boolean a() {
        int i3 = 0;
        while (true) {
            ArrayList arrayList = this.b;
            if (i3 >= arrayList.size()) {
                return false;
            }
            if (((k) arrayList.get(i3)).a()) {
                return true;
            }
            i3++;
        }
    }

    @Override // T.k
    public final boolean b(int[] iArr) {
        int i3 = 0;
        boolean zB = false;
        while (true) {
            ArrayList arrayList = this.b;
            if (i3 >= arrayList.size()) {
                return zB;
            }
            zB |= ((k) arrayList.get(i3)).b(iArr);
            i3++;
        }
    }

    public final void c() {
        Matrix matrix = this.f2098j;
        matrix.reset();
        matrix.postTranslate(-this.f2094d, -this.f2095e);
        matrix.postScale(this.f, this.g);
        matrix.postRotate(this.f2093c, 0.0f, 0.0f);
        matrix.postTranslate(this.f2096h + this.f2094d, this.f2097i + this.f2095e);
    }

    public String getGroupName() {
        return this.f2099k;
    }

    public Matrix getLocalMatrix() {
        return this.f2098j;
    }

    public float getPivotX() {
        return this.f2094d;
    }

    public float getPivotY() {
        return this.f2095e;
    }

    public float getRotation() {
        return this.f2093c;
    }

    public float getScaleX() {
        return this.f;
    }

    public float getScaleY() {
        return this.g;
    }

    public float getTranslateX() {
        return this.f2096h;
    }

    public float getTranslateY() {
        return this.f2097i;
    }

    public void setPivotX(float f) {
        if (f != this.f2094d) {
            this.f2094d = f;
            c();
        }
    }

    public void setPivotY(float f) {
        if (f != this.f2095e) {
            this.f2095e = f;
            c();
        }
    }

    public void setRotation(float f) {
        if (f != this.f2093c) {
            this.f2093c = f;
            c();
        }
    }

    public void setScaleX(float f) {
        if (f != this.f) {
            this.f = f;
            c();
        }
    }

    public void setScaleY(float f) {
        if (f != this.g) {
            this.g = f;
            c();
        }
    }

    public void setTranslateX(float f) {
        if (f != this.f2096h) {
            this.f2096h = f;
            c();
        }
    }

    public void setTranslateY(float f) {
        if (f != this.f2097i) {
            this.f2097i = f;
            c();
        }
    }

    public j(j jVar, p041q.e eVar) {
        l hVar;
        this.f2092a = new Matrix();
        this.b = new ArrayList();
        this.f2093c = 0.0f;
        this.f2094d = 0.0f;
        this.f2095e = 0.0f;
        this.f = 1.0f;
        this.g = 1.0f;
        this.f2096h = 0.0f;
        this.f2097i = 0.0f;
        Matrix matrix = new Matrix();
        this.f2098j = matrix;
        this.f2099k = null;
        this.f2093c = jVar.f2093c;
        this.f2094d = jVar.f2094d;
        this.f2095e = jVar.f2095e;
        this.f = jVar.f;
        this.g = jVar.g;
        this.f2096h = jVar.f2096h;
        this.f2097i = jVar.f2097i;
        String str = jVar.f2099k;
        this.f2099k = str;
        if (str != null) {
            eVar.put(str, this);
        }
        matrix.set(jVar.f2098j);
        ArrayList arrayList = jVar.b;
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            Object obj = arrayList.get(i3);
            if (obj instanceof j) {
                this.b.add(new j((j) obj, eVar));
            } else {
                if (obj instanceof i) {
                    i iVar = (i) obj;
                    i iVar2 = new i(iVar);
                    iVar2.f2084e = 0.0f;
                    iVar2.g = 1.0f;
                    iVar2.f2085h = 1.0f;
                    iVar2.f2086i = 0.0f;
                    iVar2.f2087j = 1.0f;
                    iVar2.f2088k = 0.0f;
                    iVar2.f2089l = Paint.Cap.BUTT;
                    iVar2.f2090m = Paint.Join.MITER;
                    iVar2.f2091n = 4.0f;
                    iVar2.f2083d = iVar.f2083d;
                    iVar2.f2084e = iVar.f2084e;
                    iVar2.g = iVar.g;
                    iVar2.f = iVar.f;
                    iVar2.f2101c = iVar.f2101c;
                    iVar2.f2085h = iVar.f2085h;
                    iVar2.f2086i = iVar.f2086i;
                    iVar2.f2087j = iVar.f2087j;
                    iVar2.f2088k = iVar.f2088k;
                    iVar2.f2089l = iVar.f2089l;
                    iVar2.f2090m = iVar.f2090m;
                    iVar2.f2091n = iVar.f2091n;
                    hVar = iVar2;
                } else if (obj instanceof h) {
                    hVar = new h((h) obj);
                } else {
                    throw new IllegalStateException("Unknown object in the tree!");
                }
                this.b.add(hVar);
                Object obj2 = hVar.b;
                if (obj2 != null) {
                    eVar.put(obj2, hVar);
                }
            }
        }
    }
}
