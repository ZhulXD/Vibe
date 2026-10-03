package p054v0;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import p052u0.f;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b implements ViewTreeObserver.OnPreDrawListener {
    public final /* synthetic */ int b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f5567c;

    public b(c cVar) {
        this.f5567c = new WeakReference(cVar);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() throws Throwable {
        switch (this.b) {
            case 0:
                if (Log.isLoggable("CustomViewTarget", 2)) {
                    Log.v("CustomViewTarget", "OnGlobalLayoutListener called attachStateListener=" + this);
                }
                c cVar = (c) ((WeakReference) this.f5567c).get();
                if (cVar != null) {
                    ArrayList arrayList = cVar.b;
                    View view = cVar.f5569a;
                    if (!arrayList.isEmpty()) {
                        int paddingRight = view.getPaddingRight() + view.getPaddingLeft();
                        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                        int i3 = 0;
                        int iA = cVar.a(view.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight);
                        int paddingBottom = view.getPaddingBottom() + view.getPaddingTop();
                        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
                        int iA2 = cVar.a(view.getHeight(), layoutParams2 != null ? layoutParams2.height : 0, paddingBottom);
                        if (iA > 0 || iA == Integer.MIN_VALUE) {
                            if (iA2 > 0 || iA2 == Integer.MIN_VALUE) {
                                ArrayList arrayList2 = new ArrayList(arrayList);
                                int size = arrayList2.size();
                                while (i3 < size) {
                                    Object obj = arrayList2.get(i3);
                                    i3++;
                                    ((f) ((e) obj)).l(iA, iA2);
                                }
                                ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                                if (viewTreeObserver.isAlive()) {
                                    viewTreeObserver.removeOnPreDrawListener(cVar.f5570c);
                                }
                                cVar.f5570c = null;
                                arrayList.clear();
                            }
                        }
                        break;
                    }
                }
                break;
            case 1:
                if (Log.isLoggable("ViewTarget", 2)) {
                    Log.v("ViewTarget", "OnGlobalLayoutListener called attachStateListener=" + this);
                }
                g gVar = (g) ((WeakReference) this.f5567c).get();
                if (gVar != null) {
                    ArrayList arrayList3 = gVar.b;
                    View view2 = gVar.f5573a;
                    if (!arrayList3.isEmpty()) {
                        int paddingRight2 = view2.getPaddingRight() + view2.getPaddingLeft();
                        ViewGroup.LayoutParams layoutParams3 = view2.getLayoutParams();
                        int i4 = 0;
                        int iA3 = gVar.a(view2.getWidth(), layoutParams3 != null ? layoutParams3.width : 0, paddingRight2);
                        int paddingBottom2 = view2.getPaddingBottom() + view2.getPaddingTop();
                        ViewGroup.LayoutParams layoutParams4 = view2.getLayoutParams();
                        int iA4 = gVar.a(view2.getHeight(), layoutParams4 != null ? layoutParams4.height : 0, paddingBottom2);
                        if (iA3 > 0 || iA3 == Integer.MIN_VALUE) {
                            if (iA4 > 0 || iA4 == Integer.MIN_VALUE) {
                                ArrayList arrayList4 = new ArrayList(arrayList3);
                                int size2 = arrayList4.size();
                                while (i4 < size2) {
                                    Object obj2 = arrayList4.get(i4);
                                    i4++;
                                    ((f) ((e) obj2)).l(iA3, iA4);
                                }
                                ViewTreeObserver viewTreeObserver2 = view2.getViewTreeObserver();
                                if (viewTreeObserver2.isAlive()) {
                                    viewTreeObserver2.removeOnPreDrawListener(gVar.f5574c);
                                }
                                gVar.f5574c = null;
                                arrayList3.clear();
                            }
                        }
                        break;
                    }
                }
                break;
            default:
                ((CoordinatorLayout) this.f5567c).j(0);
                break;
        }
        return true;
    }

    public b(g gVar) {
        this.f5567c = new WeakReference(gVar);
    }

    public b(CoordinatorLayout coordinatorLayout) {
        this.f5567c = coordinatorLayout;
    }
}
