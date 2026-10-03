package S;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.graphics.PointF;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import java.util.HashMap;

/* JADX INFO: renamed from: S.f, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0173f extends v {

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public static final String[] f1982F = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final C0169b f1983G = new C0169b(PointF.class, "topLeft", 0);

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final C0169b f1984H = new C0169b(PointF.class, "bottomRight", 1);

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final C0169b f1985I = new C0169b(PointF.class, "bottomRight", 2);

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final C0169b f1986J = new C0169b(PointF.class, "topLeft", 3);
    public static final C0169b K = new C0169b(PointF.class, "position", 4);

    public static void O(E e2) {
        View view = e2.b;
        HashMap map = e2.f1955a;
        if (!view.isLaidOut() && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        map.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        map.put("android:changeBounds:parent", view.getParent());
    }

    @Override // S.v
    public final void e(E e2) {
        O(e2);
    }

    @Override // S.v
    public final void h(E e2) {
        O(e2);
    }

    @Override // S.v
    public final Animator l(ViewGroup viewGroup, E e2, E e3) {
        int i3;
        C0173f c0173f;
        Animator animatorA;
        if (e2 != null) {
            HashMap map = e2.f1955a;
            if (e3 != null) {
                HashMap map2 = e3.f1955a;
                ViewGroup viewGroup2 = (ViewGroup) map.get("android:changeBounds:parent");
                ViewGroup viewGroup3 = (ViewGroup) map2.get("android:changeBounds:parent");
                if (viewGroup2 != null && viewGroup3 != null) {
                    View view = e3.b;
                    Rect rect = (Rect) map.get("android:changeBounds:bounds");
                    Rect rect2 = (Rect) map2.get("android:changeBounds:bounds");
                    int i4 = rect.left;
                    int i5 = rect2.left;
                    int i6 = rect.top;
                    int i7 = rect2.top;
                    int i8 = rect.right;
                    int i9 = rect2.right;
                    int i10 = rect.bottom;
                    int i11 = rect2.bottom;
                    int i12 = i8 - i4;
                    int i13 = i10 - i6;
                    int i14 = i9 - i5;
                    int i15 = i11 - i7;
                    Rect rect3 = (Rect) map.get("android:changeBounds:clip");
                    Rect rect4 = (Rect) map2.get("android:changeBounds:clip");
                    if ((i12 == 0 || i13 == 0) && (i14 == 0 || i15 == 0)) {
                        i3 = 0;
                    } else {
                        i3 = (i4 == i5 && i6 == i7) ? 0 : 1;
                        if (i8 != i9 || i10 != i11) {
                            i3++;
                        }
                    }
                    if ((rect3 != null && !rect3.equals(rect4)) || (rect3 == null && rect4 != null)) {
                        i3++;
                    }
                    int i16 = i3;
                    if (i16 > 0) {
                        H.a(view, i4, i6, i8, i10);
                        if (i16 != 2) {
                            c0173f = this;
                            if (i4 == i5 && i6 == i7) {
                                c0173f.f2035x.getClass();
                                animatorA = AbstractC0182o.a(view, f1985I, Y0.e.k(i8, i10, i9, i11));
                            } else {
                                c0173f.f2035x.getClass();
                                animatorA = AbstractC0182o.a(view, f1986J, Y0.e.k(i4, i6, i5, i7));
                            }
                        } else if (i12 == i14 && i13 == i15) {
                            c0173f = this;
                            c0173f.f2035x.getClass();
                            animatorA = AbstractC0182o.a(view, K, Y0.e.k(i4, i6, i5, i7));
                        } else {
                            c0173f = this;
                            C0172e c0172e = new C0172e(view);
                            c0173f.f2035x.getClass();
                            ObjectAnimator objectAnimatorA = AbstractC0182o.a(c0172e, f1983G, Y0.e.k(i4, i6, i5, i7));
                            c0173f.f2035x.getClass();
                            ObjectAnimator objectAnimatorA2 = AbstractC0182o.a(c0172e, f1984H, Y0.e.k(i8, i10, i9, i11));
                            AnimatorSet animatorSet = new AnimatorSet();
                            animatorSet.playTogether(objectAnimatorA, objectAnimatorA2);
                            animatorSet.addListener(new C0170c(c0172e));
                            animatorA = animatorSet;
                        }
                        if (view.getParent() instanceof ViewGroup) {
                            ViewGroup viewGroup4 = (ViewGroup) view.getParent();
                            com.bumptech.glide.d.Y(viewGroup4, true);
                            c0173f.p().a(new C0171d(viewGroup4));
                        }
                        return animatorA;
                    }
                }
            }
        }
        return null;
    }

    @Override // S.v
    public final String[] r() {
        return f1982F;
    }
}
