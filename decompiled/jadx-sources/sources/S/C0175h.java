package S;

import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
import com.minhub.gamehub.R;
import java.util.HashMap;

/* JADX INFO: renamed from: S.h, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0175h extends v {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final String[] f1988G = {"android:visibility:visibility", "android:visibility:parent"};

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public final int f1989F;

    public C0175h(int i3) {
        this();
        this.f1989F = i3;
    }

    public static void O(E e2) {
        View view = e2.b;
        int visibility = view.getVisibility();
        HashMap map = e2.f1955a;
        map.put("android:visibility:visibility", Integer.valueOf(visibility));
        map.put("android:visibility:parent", view.getParent());
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        map.put("android:visibility:screenLocation", iArr);
    }

    public static float Q(E e2, float f) {
        Float f3;
        return (e2 == null || (f3 = (Float) e2.f1955a.get("android:fade:transitionAlpha")) == null) ? f : f3.floatValue();
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0052  */
    /* JADX WARN: Code duplicated, block: B:7:0x002f  */
    public static Q R(E e2, E e3) {
        Q q2 = new Q();
        q2.f1972a = false;
        q2.b = false;
        if (e2 != null) {
            HashMap map = e2.f1955a;
            if (map.containsKey("android:visibility:visibility")) {
                q2.f1973c = ((Integer) map.get("android:visibility:visibility")).intValue();
                q2.f1975e = (ViewGroup) map.get("android:visibility:parent");
            } else {
                q2.f1973c = -1;
                q2.f1975e = null;
            }
        } else {
            q2.f1973c = -1;
            q2.f1975e = null;
        }
        if (e3 != null) {
            HashMap map2 = e3.f1955a;
            if (map2.containsKey("android:visibility:visibility")) {
                q2.f1974d = ((Integer) map2.get("android:visibility:visibility")).intValue();
                q2.f = (ViewGroup) map2.get("android:visibility:parent");
            } else {
                q2.f1974d = -1;
                q2.f = null;
            }
        } else {
            q2.f1974d = -1;
            q2.f = null;
        }
        if (e2 != null && e3 != null) {
            int i3 = q2.f1973c;
            int i4 = q2.f1974d;
            if (i3 != i4 || q2.f1975e != q2.f) {
                if (i3 != i4) {
                    if (i3 == 0) {
                        q2.b = false;
                        q2.f1972a = true;
                        return q2;
                    }
                    if (i4 == 0) {
                        q2.b = true;
                        q2.f1972a = true;
                        return q2;
                    }
                } else {
                    if (q2.f == null) {
                        q2.b = false;
                        q2.f1972a = true;
                        return q2;
                    }
                    if (q2.f1975e == null) {
                        q2.b = true;
                        q2.f1972a = true;
                        return q2;
                    }
                }
            }
        } else {
            if (e2 == null && q2.f1974d == 0) {
                q2.b = true;
                q2.f1972a = true;
                return q2;
            }
            if (e3 == null && q2.f1973c == 0) {
                q2.b = false;
                q2.f1972a = true;
            }
        }
        return q2;
    }

    public final ObjectAnimator P(View view, float f, float f3) {
        if (f == f3) {
            return null;
        }
        H.f1959a.K(view, f);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, H.b, f3);
        C0174g c0174g = new C0174g(view);
        objectAnimatorOfFloat.addListener(c0174g);
        p().a(c0174g);
        return objectAnimatorOfFloat;
    }

    @Override // S.v
    public final void e(E e2) {
        O(e2);
    }

    @Override // S.v
    public final void h(E e2) {
        O(e2);
        View view = e2.b;
        Float fValueOf = (Float) view.getTag(R.id.transition_pause_alpha);
        if (fValueOf == null) {
            fValueOf = view.getVisibility() == 0 ? Float.valueOf(H.f1959a.l(view)) : Float.valueOf(0.0f);
        }
        e2.f1955a.put("android:fade:transitionAlpha", fValueOf);
    }

    /* JADX WARN: Code duplicated, block: B:49:0x009e  */
    /* JADX WARN: Code duplicated, block: B:51:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:52:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:54:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:56:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:58:0x0131  */
    /* JADX WARN: Code duplicated, block: B:61:0x013a  */
    /* JADX WARN: Code duplicated, block: B:63:0x013e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:64:0x0140  */
    /* JADX WARN: Code duplicated, block: B:65:0x0148  */
    /* JADX WARN: Code duplicated, block: B:66:0x0160  */
    /* JADX WARN: Code duplicated, block: B:69:0x017c A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:74:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:76:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:78:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:81:0x01fd  */
    /* JADX WARN: Code duplicated, block: B:83:0x020d  */
    /* JADX WARN: Code duplicated, block: B:86:0x0214  */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0048, code lost:
    
        if (R(o(r3, false), s(r3, false)).f1972a != false) goto L9;
     */
    @Override // S.v
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.animation.Animator l(android.view.ViewGroup r24, S.E r25, S.E r26) {
        /*
            Method dump skipped, instruction units count: 728
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: S.C0175h.l(android.view.ViewGroup, S.E, S.E):android.animation.Animator");
    }

    @Override // S.v
    public final String[] r() {
        return f1988G;
    }

    @Override // S.v
    public final boolean u() {
        return true;
    }

    @Override // S.v
    public final boolean v(E e2, E e3) {
        if (e2 == null && e3 == null) {
            return false;
        }
        if (e2 != null && e3 != null && e3.f1955a.containsKey("android:visibility:visibility") != e2.f1955a.containsKey("android:visibility:visibility")) {
            return false;
        }
        Q qR = R(e2, e3);
        if (qR.f1972a) {
            return qR.f1973c == 0 || qR.f1974d == 0;
        }
        return false;
    }

    public C0175h() {
        this.f1989F = 3;
    }
}
