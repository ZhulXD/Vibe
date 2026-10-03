package p056w;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public m f5601a;
    public ArrayList b;

    public static long a(f fVar, long j2) {
        m mVar = fVar.f5592d;
        ArrayList arrayList = fVar.f5597k;
        if (mVar instanceof i) {
            return j2;
        }
        int size = arrayList.size();
        long jMin = j2;
        for (int i3 = 0; i3 < size; i3++) {
            d dVar = (d) arrayList.get(i3);
            if (dVar instanceof f) {
                f fVar2 = (f) dVar;
                if (fVar2.f5592d != mVar) {
                    jMin = Math.min(jMin, a(fVar2, ((long) fVar2.f) + j2));
                }
            }
        }
        f fVar3 = mVar.f5609i;
        f fVar4 = mVar.f5608h;
        if (fVar != fVar3) {
            return jMin;
        }
        long j3 = j2 - mVar.j();
        return Math.min(Math.min(jMin, a(fVar4, j3)), j3 - ((long) fVar4.f));
    }

    public static long b(f fVar, long j2) {
        m mVar = fVar.f5592d;
        ArrayList arrayList = fVar.f5597k;
        if (mVar instanceof i) {
            return j2;
        }
        int size = arrayList.size();
        long jMax = j2;
        for (int i3 = 0; i3 < size; i3++) {
            d dVar = (d) arrayList.get(i3);
            if (dVar instanceof f) {
                f fVar2 = (f) dVar;
                if (fVar2.f5592d != mVar) {
                    jMax = Math.max(jMax, b(fVar2, ((long) fVar2.f) + j2));
                }
            }
        }
        f fVar3 = mVar.f5608h;
        f fVar4 = mVar.f5609i;
        if (fVar != fVar3) {
            return jMax;
        }
        long j3 = mVar.j() + j2;
        return Math.max(Math.max(jMax, b(fVar4, j3)), j3 - ((long) fVar4.f));
    }
}
