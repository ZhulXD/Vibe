package p056w;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class g extends f {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f5599m;

    public g(m mVar) {
        super(mVar);
        if (mVar instanceof j) {
            this.f5593e = 2;
        } else {
            this.f5593e = 3;
        }
    }

    @Override // p056w.f
    public final void d(int i3) {
        if (this.f5596j) {
            return;
        }
        this.f5596j = true;
        this.g = i3;
        ArrayList arrayList = this.f5597k;
        int size = arrayList.size();
        int i4 = 0;
        while (i4 < size) {
            Object obj = arrayList.get(i4);
            i4++;
            d dVar = (d) obj;
            dVar.a(dVar);
        }
    }
}
