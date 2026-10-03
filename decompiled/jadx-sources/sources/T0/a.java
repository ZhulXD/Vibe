package T0;

import X.p;
import androidx.core.util.Preconditions;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2132c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f2133d;

    public /* synthetic */ a(Object obj, int i3, int i4) {
        this.b = i4;
        this.f2133d = obj;
        this.f2132c = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                ((d) this.f2133d).i(this.f2132c);
                break;
            case 1:
                ((RecyclerView) this.f2133d).i0(this.f2132c);
                break;
            case 2:
                ((p002a1.d) this.f2133d).f2538i.o(this.f2132c, 4);
                break;
            case 3:
                ArrayList arrayList = (ArrayList) this.f2133d;
                int size = arrayList.size();
                int i3 = 0;
                if (this.f2132c == 1) {
                    while (i3 < size) {
                        ((androidx.emoji2.text.h) arrayList.get(i3)).b();
                        i3++;
                    }
                } else {
                    while (i3 < size) {
                        ((androidx.emoji2.text.h) arrayList.get(i3)).a();
                        i3++;
                    }
                }
                break;
            default:
                ((com.google.android.material.datepicker.l) this.f2133d).f3428i.i0(this.f2132c);
                break;
        }
    }

    public a(int i3, p pVar) {
        this.b = 1;
        this.f2132c = i3;
        this.f2133d = pVar;
    }

    public a(List list, int i3, Throwable th) {
        this.b = 3;
        Preconditions.checkNotNull(list, "initCallbacks cannot be null");
        this.f2133d = new ArrayList(list);
        this.f2132c = i3;
    }

    public a(p002a1.d dVar) {
        this.b = 2;
        this.f2133d = dVar;
        this.f2132c = -1;
    }
}
