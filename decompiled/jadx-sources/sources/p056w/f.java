package p056w;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class f implements d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final m f5592d;
    public int f;
    public int g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public m f5590a = null;
    public boolean b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f5591c = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5593e = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f5594h = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public g f5595i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f5596j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ArrayList f5597k = new ArrayList();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final ArrayList f5598l = new ArrayList();

    public f(m mVar) {
        this.f5592d = mVar;
    }

    @Override // p056w.d
    public final void a(d dVar) {
        ArrayList arrayList = this.f5598l;
        int size = arrayList.size();
        int i3 = 0;
        int i4 = 0;
        while (i4 < size) {
            Object obj = arrayList.get(i4);
            i4++;
            if (!((f) obj).f5596j) {
                return;
            }
        }
        this.f5591c = true;
        m mVar = this.f5590a;
        if (mVar != null) {
            mVar.a(this);
        }
        if (this.b) {
            this.f5592d.a(this);
            return;
        }
        int size2 = arrayList.size();
        f fVar = null;
        int i5 = 0;
        while (i5 < size2) {
            Object obj2 = arrayList.get(i5);
            i5++;
            f fVar2 = (f) obj2;
            if (!(fVar2 instanceof g)) {
                i3++;
                fVar = fVar2;
            }
        }
        if (fVar != null && i3 == 1 && fVar.f5596j) {
            g gVar = this.f5595i;
            if (gVar != null) {
                if (!gVar.f5596j) {
                    return;
                } else {
                    this.f = this.f5594h * gVar.g;
                }
            }
            d(fVar.g + this.f);
        }
        m mVar2 = this.f5590a;
        if (mVar2 != null) {
            mVar2.a(this);
        }
    }

    public final void b(m mVar) {
        this.f5597k.add(mVar);
        if (this.f5596j) {
            mVar.a(mVar);
        }
    }

    public final void c() {
        this.f5598l.clear();
        this.f5597k.clear();
        this.f5596j = false;
        this.g = 0;
        this.f5591c = false;
        this.b = false;
    }

    public void d(int i3) {
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

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(this.f5592d.b.f5467W);
        sb.append(":");
        switch (this.f5593e) {
            case 1:
                str = "UNKNOWN";
                break;
            case 2:
                str = "HORIZONTAL_DIMENSION";
                break;
            case 3:
                str = "VERTICAL_DIMENSION";
                break;
            case 4:
                str = "LEFT";
                break;
            case 5:
                str = "RIGHT";
                break;
            case 6:
                str = "TOP";
                break;
            case 7:
                str = "BOTTOM";
                break;
            case 8:
                str = "BASELINE";
                break;
            default:
                str = "null";
                break;
        }
        sb.append(str);
        sb.append("(");
        sb.append(this.f5596j ? Integer.valueOf(this.g) : "unresolved");
        sb.append(") <t=");
        sb.append(this.f5598l.size());
        sb.append(":d=");
        sb.append(this.f5597k.size());
        sb.append(">");
        return sb.toString();
    }
}
