package androidx.emoji2.text;

import android.util.SparseArray;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SparseArray f2895a;
    public v b;

    public s(int i3) {
        this.f2895a = new SparseArray(i3);
    }

    public final void a(v vVar, int i3, int i4) {
        int iA = vVar.a(i3);
        SparseArray sparseArray = this.f2895a;
        s sVar = sparseArray == null ? null : (s) sparseArray.get(iA);
        if (sVar == null) {
            sVar = new s(1);
            sparseArray.put(vVar.a(i3), sVar);
        }
        if (i4 > i3) {
            sVar.a(vVar, i3 + 1, i4);
        } else {
            sVar.b = vVar;
        }
    }
}
