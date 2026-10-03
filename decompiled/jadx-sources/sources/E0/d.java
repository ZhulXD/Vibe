package E0;

import A1.C0009b;
import D.e;
import P.AbstractC0139c0;
import P.C0144f;
import P.C0146g;
import P.C0159q;
import P.C0160s;
import P.D;
import P.G;
import P.RunnableC0140d;
import P.r;
import P.y0;
import V1.AbstractC0203t;
import V1.AbstractC0206w;
import V1.C0189e;
import a2.i;
import android.os.StrictMode;
import android.util.Log;
import android.view.View;
import androidx.biometric.p;
import androidx.biometric.s;
import androidx.biometric.t;
import androidx.biometric.w;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.behavior.SwipeDismissBehavior;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class d implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f860c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f861d;

    public /* synthetic */ d(int i3, Object obj, Object obj2) {
        this.b = i3;
        this.f861d = obj;
        this.f860c = obj2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        int i3;
        int i4;
        switch (this.b) {
            case 0:
                e eVar = ((SwipeDismissBehavior) this.f861d).f3295a;
                if (eVar != null && eVar.f()) {
                    ViewCompat.postOnAnimation((View) this.f860c, this);
                    break;
                }
                break;
            case 1:
                RunnableC0140d runnableC0140d = (RunnableC0140d) this.f861d;
                C0144f c0144f = runnableC0140d.f1660e;
                if (c0144f.g == runnableC0140d.f1659d) {
                    List list = runnableC0140d.f1658c;
                    r rVar = (r) this.f860c;
                    c0144f.f1667e = list;
                    c0144f.f = Collections.unmodifiableList(list);
                    C0009b c0009b = c0144f.f1664a;
                    int[] iArr = rVar.b;
                    ArrayList arrayList = rVar.f1741a;
                    int i5 = rVar.f1744e;
                    C0009b c0009b2 = rVar.f1743d;
                    C0146g c0146g = new C0146g(c0009b);
                    ArrayDeque arrayDeque = new ArrayDeque();
                    int i6 = rVar.f;
                    int i7 = 1;
                    int size = arrayList.size() - 1;
                    int i8 = i6;
                    int i9 = i5;
                    while (size >= 0) {
                        C0159q c0159q = (C0159q) arrayList.get(size);
                        int i10 = c0159q.f1738a;
                        int i11 = c0159q.f1739c;
                        int i12 = i7;
                        int i13 = i10 + i11;
                        int i14 = c0159q.b;
                        C0144f c0144f2 = c0144f;
                        int i15 = i14 + i11;
                        int[] iArr2 = iArr;
                        while (true) {
                            int i16 = 0;
                            if (i9 > i13) {
                                i9--;
                                int i17 = iArr2[i9];
                                if ((i17 & 12) != 0) {
                                    int i18 = i17 >> 4;
                                    C0160s c0160sA = r.a(arrayDeque, i18, false);
                                    if (c0160sA != null) {
                                        int i19 = (i5 - c0160sA.b) - 1;
                                        c0146g.b(i9, i19);
                                        if ((i17 & 4) != 0) {
                                            c0009b2.l(i9, i18);
                                            c0146g.g(i19, i12);
                                        }
                                    } else {
                                        arrayDeque.add(new C0160s(i9, (i5 - i9) - 1, i12));
                                    }
                                    i5 = i5;
                                } else {
                                    c0146g.a(i9, i12);
                                    i5--;
                                }
                                arrayList = arrayList;
                                i12 = 1;
                            } else {
                                ArrayList arrayList2 = arrayList;
                                while (i8 > i15) {
                                    i8--;
                                    int i20 = rVar.f1742c[i8];
                                    if ((i20 & 12) != 0) {
                                        int i21 = i20 >> 4;
                                        i3 = i15;
                                        C0160s c0160sA2 = r.a(arrayDeque, i21, true);
                                        if (c0160sA2 == null) {
                                            arrayDeque.add(new C0160s(i8, i5 - i9, false));
                                            i4 = 0;
                                        } else {
                                            i4 = 0;
                                            c0146g.b((i5 - c0160sA2.b) - 1, i9);
                                            if ((i20 & 4) != 0) {
                                                c0009b2.l(i21, i8);
                                                c0146g.g(i9, 1);
                                            }
                                        }
                                    } else {
                                        i3 = i15;
                                        i4 = i16;
                                        c0146g.i(i9, 1);
                                        i5++;
                                    }
                                    i16 = i4;
                                    i15 = i3;
                                }
                                int i22 = i14;
                                int i23 = i10;
                                while (i16 < i11) {
                                    if ((iArr2[i23] & 15) == 2) {
                                        c0009b2.l(i23, i22);
                                        c0146g.g(i23, 1);
                                    }
                                    i23++;
                                    i22++;
                                    i16++;
                                }
                                size--;
                                i7 = 1;
                                i8 = i14;
                                i9 = i10;
                                c0144f = c0144f2;
                                iArr = iArr2;
                                arrayList = arrayList2;
                            }
                        }
                    }
                    c0146g.c();
                    c0144f.a();
                }
                break;
            case 2:
                D d3 = (D) this.f860c;
                y0 viewHolder = d3.f1536e;
                G g = (G) this.f861d;
                RecyclerView recyclerView = g.f1576r;
                if (recyclerView != null && recyclerView.f3008t && !d3.f1540k) {
                    RecyclerView recyclerView2 = viewHolder.f1821r;
                    if ((recyclerView2 == null ? -1 : recyclerView2.H(viewHolder)) != -1) {
                        AbstractC0139c0 itemAnimator = g.f1576r.getItemAnimator();
                        if (itemAnimator == null || !itemAnimator.f()) {
                            ArrayList arrayList3 = g.f1574p;
                            int size2 = arrayList3.size();
                            for (int i24 = 0; i24 < size2; i24++) {
                                if (((D) arrayList3.get(i24)).f1541l) {
                                }
                            }
                            g.f1571m.getClass();
                            Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
                        }
                        g.f1576r.post(this);
                    }
                    break;
                }
                break;
            case 3:
                ((C0189e) this.f860c).z((W1.d) this.f861d, Unit.INSTANCE);
                break;
            case 4:
                i iVar = (i) this.f861d;
                AbstractC0203t abstractC0203t = iVar.b;
                int i25 = 0;
                while (true) {
                    try {
                        ((Runnable) this.f860c).run();
                    } catch (Throwable th) {
                        AbstractC0206w.a(EmptyCoroutineContext.INSTANCE, th);
                    }
                    Runnable runnableD = iVar.d();
                    if (runnableD == null) {
                        break;
                    } else {
                        this.f860c = runnableD;
                        i25++;
                        if (i25 >= 16 && abstractC0203t.isDispatchNeeded(iVar)) {
                            abstractC0203t.dispatch(iVar, this);
                            break;
                        }
                    }
                    break;
                }
                break;
            case 5:
                w wVar = ((p) this.f861d).f2771c;
                if (wVar.b == null) {
                    wVar.b = new t();
                }
                wVar.b.A((s) this.f860c);
                break;
            default:
                p022i0.c cVar = (p022i0.c) this.f861d;
                if (cVar.f4427d) {
                    StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
                }
                try {
                    ((Runnable) this.f860c).run();
                } catch (Throwable th2) {
                    cVar.f4426c.getClass();
                    if (Log.isLoggable("GlideExecutor", 6)) {
                        Log.e("GlideExecutor", "Request threw uncaught throwable", th2);
                    }
                    return;
                }
                break;
        }
    }

    public d(C0189e c0189e, W1.d dVar) {
        this.b = 3;
        this.f860c = c0189e;
        this.f861d = dVar;
    }

    public d(SwipeDismissBehavior swipeDismissBehavior, View view, boolean z2) {
        this.b = 0;
        this.f861d = swipeDismissBehavior;
        this.f860c = view;
    }

    public d(G g, D d3, int i3) {
        this.b = 2;
        this.f861d = g;
        this.f860c = d3;
    }
}
