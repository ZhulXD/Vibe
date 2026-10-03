package androidx.coordinatorlayout.widget;

import C1.T;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.util.Pools;
import androidx.core.view.GravityCompat;
import androidx.core.view.NestedScrollingParent2;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.minhub.gamehub.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p024j.C0269h;
import p041q.j;
import p054v0.b;
import p062y.a;
import z.c;
import z.d;
import z.e;
import z.f;
import z.g;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class CoordinatorLayout extends ViewGroup implements NestedScrollingParent2, NestedScrollingParent3 {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final String f2809u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final Class[] f2810v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final ThreadLocal f2811w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final T f2812x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final Pools.SynchronizedPool f2813y;
    public final ArrayList b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final f f2814c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ArrayList f2815d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f2816e;
    public final int[] f;
    public final int[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f2817h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f2818i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int[] f2819j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public View f2820k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public View f2821l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public b f2822m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f2823n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public WindowInsetsCompat f2824o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f2825p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Drawable f2826q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public ViewGroup.OnHierarchyChangeListener f2827r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public C0269h f2828s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final NestedScrollingParentHelper f2829t;

    static {
        Package r2 = CoordinatorLayout.class.getPackage();
        f2809u = r2 != null ? r2.getName() : null;
        f2812x = new T(12);
        f2810v = new Class[]{Context.class, AttributeSet.class};
        f2811w = new ThreadLocal();
        f2813y = new Pools.SynchronizedPool(12);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.coordinatorLayoutStyle);
        this.b = new ArrayList();
        this.f2814c = new f();
        this.f2815d = new ArrayList();
        this.f2816e = new ArrayList();
        this.f = new int[2];
        this.g = new int[2];
        this.f2829t = new NestedScrollingParentHelper(this);
        int[] iArr = a.f6011a;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, R.attr.coordinatorLayoutStyle, 0);
        if (Build.VERSION.SDK_INT >= 29) {
            saveAttributeDataForStyleable(context, iArr, attributeSet, typedArrayObtainStyledAttributes, R.attr.coordinatorLayoutStyle, 0);
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            int[] intArray = resources.getIntArray(resourceId);
            this.f2819j = intArray;
            float f = resources.getDisplayMetrics().density;
            int length = intArray.length;
            for (int i3 = 0; i3 < length; i3++) {
                int[] iArr2 = this.f2819j;
                iArr2[i3] = (int) (iArr2[i3] * f);
            }
        }
        this.f2826q = typedArrayObtainStyledAttributes.getDrawable(1);
        typedArrayObtainStyledAttributes.recycle();
        q();
        super.setOnHierarchyChangeListener(new c(this));
        if (ViewCompat.getImportantForAccessibility(this) == 0) {
            ViewCompat.setImportantForAccessibility(this, 1);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Rect a() {
        Rect rect = (Rect) f2813y.acquire();
        return rect == null ? new Rect() : rect;
    }

    public static void f(int i3, Rect rect, Rect rect2, d dVar, int i4, int i5) {
        int iWidth;
        int iHeight;
        int i6 = dVar.f6414c;
        if (i6 == 0) {
            i6 = 17;
        }
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i6, i3);
        int i7 = dVar.f6415d;
        if ((i7 & 7) == 0) {
            i7 |= GravityCompat.START;
        }
        if ((i7 & 112) == 0) {
            i7 |= 48;
        }
        int absoluteGravity2 = GravityCompat.getAbsoluteGravity(i7, i3);
        int i8 = absoluteGravity & 7;
        int i9 = absoluteGravity & 112;
        int i10 = absoluteGravity2 & 7;
        int i11 = absoluteGravity2 & 112;
        if (i10 != 1) {
            iWidth = i10 != 5 ? rect.left : rect.right;
        } else {
            iWidth = rect.left + (rect.width() / 2);
        }
        if (i11 != 16) {
            iHeight = i11 != 80 ? rect.top : rect.bottom;
        } else {
            iHeight = rect.top + (rect.height() / 2);
        }
        if (i8 == 1) {
            iWidth -= i4 / 2;
        } else if (i8 != 5) {
            iWidth -= i4;
        }
        if (i9 == 16) {
            iHeight -= i5 / 2;
        } else if (i9 != 80) {
            iHeight -= i5;
        }
        rect2.set(iWidth, iHeight, i4 + iWidth, i5 + iHeight);
    }

    public static d h(View view) {
        d dVar = (d) view.getLayoutParams();
        if (!dVar.b) {
            z.b bVar = null;
            for (Class<?> superclass = view.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
                bVar = (z.b) superclass.getAnnotation(z.b.class);
                if (bVar != null) {
                    break;
                }
            }
            if (bVar != null) {
                try {
                    z.a aVar = (z.a) bVar.value().getDeclaredConstructor(null).newInstance(null);
                    z.a aVar2 = dVar.f6413a;
                    if (aVar2 != aVar) {
                        if (aVar2 != null) {
                            aVar2.i();
                        }
                        dVar.f6413a = aVar;
                        dVar.b = true;
                        if (aVar != null) {
                            aVar.g(dVar);
                        }
                    }
                } catch (Exception e2) {
                    Log.e("CoordinatorLayout", "Default behavior class " + bVar.value().getName() + " could not be instantiated. Did you forget a default constructor?", e2);
                }
            }
            dVar.b = true;
        }
        return dVar;
    }

    public static void o(View view, int i3) {
        d dVar = (d) view.getLayoutParams();
        int i4 = dVar.f6418i;
        if (i4 != i3) {
            ViewCompat.offsetLeftAndRight(view, i3 - i4);
            dVar.f6418i = i3;
        }
    }

    public static void p(View view, int i3) {
        d dVar = (d) view.getLayoutParams();
        int i4 = dVar.f6419j;
        if (i4 != i3) {
            ViewCompat.offsetTopAndBottom(view, i3 - i4);
            dVar.f6419j = i3;
        }
    }

    public final void b(d dVar, Rect rect, int i3, int i4) {
        int width = getWidth();
        int height = getHeight();
        int iMax = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) dVar).leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i3) - ((ViewGroup.MarginLayoutParams) dVar).rightMargin));
        int iMax2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) dVar).topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i4) - ((ViewGroup.MarginLayoutParams) dVar).bottomMargin));
        rect.set(iMax, iMax2, i3 + iMax, i4 + iMax2);
    }

    public final void c(View view, Rect rect, boolean z2) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z2) {
            e(view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof d) && super.checkLayoutParams(layoutParams);
    }

    public final ArrayList d(View view) {
        j jVar = this.f2814c.b;
        int i3 = jVar.f5258d;
        ArrayList arrayList = null;
        for (int i4 = 0; i4 < i3; i4++) {
            ArrayList arrayList2 = (ArrayList) jVar.j(i4);
            if (arrayList2 != null && arrayList2.contains(view)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(jVar.f(i4));
            }
        }
        ArrayList arrayList3 = this.f2816e;
        arrayList3.clear();
        if (arrayList != null) {
            arrayList3.addAll(arrayList);
        }
        return arrayList3;
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j2) {
        z.a aVar = ((d) view.getLayoutParams()).f6413a;
        if (aVar != null) {
            aVar.getClass();
        }
        return super.drawChild(canvas, view, j2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f2826q;
        if ((drawable == null || !drawable.isStateful()) ? false : drawable.setState(drawableState)) {
            invalidate();
        }
    }

    public final void e(View view, Rect rect) {
        ThreadLocal threadLocal = g.f6429a;
        rect.set(0, 0, view.getWidth(), view.getHeight());
        ThreadLocal threadLocal2 = g.f6429a;
        Matrix matrix = (Matrix) threadLocal2.get();
        if (matrix == null) {
            matrix = new Matrix();
            threadLocal2.set(matrix);
        } else {
            matrix.reset();
        }
        g.a(this, view, matrix);
        ThreadLocal threadLocal3 = g.b;
        RectF rectF = (RectF) threadLocal3.get();
        if (rectF == null) {
            rectF = new RectF();
            threadLocal3.set(rectF);
        }
        rectF.set(rect);
        matrix.mapRect(rectF);
        rect.set((int) (rectF.left + 0.5f), (int) (rectF.top + 0.5f), (int) (rectF.right + 0.5f), (int) (rectF.bottom + 0.5f));
    }

    public final int g(int i3) {
        int[] iArr = this.f2819j;
        if (iArr == null) {
            Log.e("CoordinatorLayout", "No keylines defined for " + this + " - attempted index lookup " + i3);
            return 0;
        }
        if (i3 >= 0 && i3 < iArr.length) {
            return iArr[i3];
        }
        Log.e("CoordinatorLayout", "Keyline index " + i3 + " out of range for " + this);
        return 0;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new d();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new d(getContext(), attributeSet);
    }

    public final List<View> getDependencySortedChildren() {
        m();
        return Collections.unmodifiableList(this.b);
    }

    public final WindowInsetsCompat getLastWindowInsets() {
        return this.f2824o;
    }

    @Override // android.view.ViewGroup, androidx.core.view.NestedScrollingParent
    public int getNestedScrollAxes() {
        return this.f2829t.getNestedScrollAxes();
    }

    public Drawable getStatusBarBackground() {
        return this.f2826q;
    }

    @Override // android.view.View
    public int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingBottom() + getPaddingTop());
    }

    @Override // android.view.View
    public int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingRight() + getPaddingLeft());
    }

    public final boolean i(View view, int i3, int i4) {
        Pools.SynchronizedPool synchronizedPool = f2813y;
        Rect rectA = a();
        e(view, rectA);
        try {
            return rectA.contains(i3, i4);
        } finally {
            rectA.setEmpty();
            synchronizedPool.release(rectA);
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00d8  */
    public final void j(int i3) {
        int i4;
        Rect rect;
        int i5;
        ArrayList arrayList;
        boolean z2;
        boolean z3;
        int width;
        int i6;
        int i7;
        int i8;
        int height;
        int i9;
        int i10;
        int i11;
        int i12;
        View view;
        d dVar;
        z.a aVar;
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        ArrayList arrayList2 = this.b;
        int size = arrayList2.size();
        Rect rectA = a();
        Rect rectA2 = a();
        Rect rectA3 = a();
        int i13 = 0;
        while (true) {
            Pools.SynchronizedPool synchronizedPool = f2813y;
            if (i13 >= size) {
                Rect rect2 = rectA3;
                rectA.setEmpty();
                synchronizedPool.release(rectA);
                rectA2.setEmpty();
                synchronizedPool.release(rectA2);
                rect2.setEmpty();
                synchronizedPool.release(rect2);
                return;
            }
            View view2 = (View) arrayList2.get(i13);
            d dVar2 = (d) view2.getLayoutParams();
            if (i3 == 0 && view2.getVisibility() == 8) {
                arrayList = arrayList2;
                i5 = size;
                rect = rectA3;
                i4 = i13;
            } else {
                int i14 = 0;
                while (i14 < i13) {
                    if (dVar2.f6421l == ((View) arrayList2.get(i14))) {
                        d dVar3 = (d) view2.getLayoutParams();
                        if (dVar3.f6420k != null) {
                            Rect rectA4 = a();
                            Rect rectA5 = a();
                            d dVar4 = dVar2;
                            Rect rectA6 = a();
                            e(dVar3.f6420k, rectA4);
                            c(view2, rectA5, false);
                            int measuredWidth = view2.getMeasuredWidth();
                            View view3 = view2;
                            int measuredHeight = view3.getMeasuredHeight();
                            i12 = i14;
                            layoutDirection = layoutDirection;
                            dVar = dVar4;
                            view = view3;
                            f(layoutDirection, rectA4, rectA6, dVar3, measuredWidth, measuredHeight);
                            boolean z4 = (rectA6.left == rectA5.left && rectA6.top == rectA5.top) ? false : true;
                            b(dVar3, rectA6, measuredWidth, measuredHeight);
                            int i15 = rectA6.left - rectA5.left;
                            int i16 = rectA6.top - rectA5.top;
                            if (i15 != 0) {
                                ViewCompat.offsetLeftAndRight(view, i15);
                            }
                            if (i16 != 0) {
                                ViewCompat.offsetTopAndBottom(view, i16);
                            }
                            if (z4 && (aVar = dVar3.f6413a) != null) {
                                aVar.h(this, view, dVar3.f6420k);
                            }
                            rectA4.setEmpty();
                            synchronizedPool.release(rectA4);
                            rectA5.setEmpty();
                            synchronizedPool.release(rectA5);
                            rectA6.setEmpty();
                            synchronizedPool.release(rectA6);
                        } else {
                            i12 = i14;
                            view = view2;
                            dVar = dVar2;
                        }
                    } else {
                        i12 = i14;
                        view = view2;
                        dVar = dVar2;
                    }
                    i14 = i12 + 1;
                    dVar2 = dVar;
                    view2 = view;
                    arrayList2 = arrayList2;
                    size = size;
                    i13 = i13;
                    rectA3 = rectA3;
                }
                ArrayList arrayList3 = arrayList2;
                int i17 = size;
                Rect rect3 = rectA3;
                i4 = i13;
                View view4 = view2;
                d dVar5 = dVar2;
                c(view4, rectA2, true);
                if (dVar5.g != 0 && !rectA2.isEmpty()) {
                    int absoluteGravity = GravityCompat.getAbsoluteGravity(dVar5.g, layoutDirection);
                    int i18 = absoluteGravity & 112;
                    if (i18 == 48) {
                        rectA.top = Math.max(rectA.top, rectA2.bottom);
                    } else if (i18 == 80) {
                        rectA.bottom = Math.max(rectA.bottom, getHeight() - rectA2.top);
                    }
                    int i19 = absoluteGravity & 7;
                    if (i19 == 3) {
                        rectA.left = Math.max(rectA.left, rectA2.right);
                    } else if (i19 == 5) {
                        rectA.right = Math.max(rectA.right, getWidth() - rectA2.left);
                    }
                }
                if (dVar5.f6417h != 0 && view4.getVisibility() == 0 && ViewCompat.isLaidOut(view4) && view4.getWidth() > 0 && view4.getHeight() > 0) {
                    d dVar6 = (d) view4.getLayoutParams();
                    z.a aVar2 = dVar6.f6413a;
                    Rect rectA7 = a();
                    Rect rectA8 = a();
                    rectA8.set(view4.getLeft(), view4.getTop(), view4.getRight(), view4.getBottom());
                    if (aVar2 == null || !aVar2.e(view4)) {
                        rectA7.set(rectA8);
                    } else if (!rectA8.contains(rectA7)) {
                        throw new IllegalArgumentException("Rect should be within the child's bounds. Rect:" + rectA7.toShortString() + " | Bounds:" + rectA8.toShortString());
                    }
                    rectA8.setEmpty();
                    synchronizedPool.release(rectA8);
                    if (rectA7.isEmpty()) {
                        rectA7.setEmpty();
                        synchronizedPool.release(rectA7);
                    } else {
                        int absoluteGravity2 = GravityCompat.getAbsoluteGravity(dVar6.f6417h, layoutDirection);
                        if ((absoluteGravity2 & 48) != 48 || (i10 = (rectA7.top - ((ViewGroup.MarginLayoutParams) dVar6).topMargin) - dVar6.f6419j) >= (i11 = rectA.top)) {
                            z2 = false;
                        } else {
                            p(view4, i11 - i10);
                            z2 = true;
                        }
                        if ((absoluteGravity2 & 80) == 80 && (height = ((getHeight() - rectA7.bottom) - ((ViewGroup.MarginLayoutParams) dVar6).bottomMargin) + dVar6.f6419j) < (i9 = rectA.bottom)) {
                            p(view4, height - i9);
                            z2 = true;
                        }
                        if (!z2) {
                            p(view4, 0);
                        }
                        if ((absoluteGravity2 & 3) != 3 || (i7 = (rectA7.left - ((ViewGroup.MarginLayoutParams) dVar6).leftMargin) - dVar6.f6418i) >= (i8 = rectA.left)) {
                            z3 = false;
                        } else {
                            o(view4, i8 - i7);
                            z3 = true;
                        }
                        if ((absoluteGravity2 & 5) == 5 && (width = ((getWidth() - rectA7.right) - ((ViewGroup.MarginLayoutParams) dVar6).rightMargin) + dVar6.f6418i) < (i6 = rectA.right)) {
                            o(view4, width - i6);
                            z3 = true;
                        }
                        if (!z3) {
                            o(view4, 0);
                        }
                        rectA7.setEmpty();
                        synchronizedPool.release(rectA7);
                    }
                }
                if (i3 != 2) {
                    rect = rect3;
                    rect.set(((d) view4.getLayoutParams()).f6424o);
                    if (rect.equals(rectA2)) {
                        arrayList = arrayList3;
                        i5 = i17;
                    } else {
                        ((d) view4.getLayoutParams()).f6424o.set(rectA2);
                    }
                } else {
                    rect = rect3;
                }
                int i20 = i4 + 1;
                i5 = i17;
                while (true) {
                    arrayList = arrayList3;
                    if (i20 < i5) {
                        View view5 = (View) arrayList.get(i20);
                        z.a aVar3 = ((d) view5.getLayoutParams()).f6413a;
                        if (aVar3 != null) {
                            aVar3.f(view5);
                        }
                        i20++;
                        arrayList3 = arrayList;
                    }
                }
            }
            i13 = i4 + 1;
            size = i5;
            rectA3 = rect;
            arrayList2 = arrayList;
        }
    }

    public final void k(View view, int i3) {
        int i4;
        d dVar = (d) view.getLayoutParams();
        View view2 = dVar.f6420k;
        if (view2 == null && dVar.f != -1) {
            throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
        }
        Pools.SynchronizedPool synchronizedPool = f2813y;
        if (view2 != null) {
            Rect rectA = a();
            Rect rectA2 = a();
            try {
                e(view2, rectA);
                d dVar2 = (d) view.getLayoutParams();
                int measuredWidth = view.getMeasuredWidth();
                int measuredHeight = view.getMeasuredHeight();
                f(i3, rectA, rectA2, dVar2, measuredWidth, measuredHeight);
                b(dVar2, rectA2, measuredWidth, measuredHeight);
                view.layout(rectA2.left, rectA2.top, rectA2.right, rectA2.bottom);
                return;
            } finally {
                rectA.setEmpty();
                synchronizedPool.release(rectA);
                rectA2.setEmpty();
                synchronizedPool.release(rectA2);
            }
        }
        int i5 = dVar.f6416e;
        if (i5 < 0) {
            d dVar3 = (d) view.getLayoutParams();
            Rect rectA3 = a();
            rectA3.set(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) dVar3).leftMargin, getPaddingTop() + ((ViewGroup.MarginLayoutParams) dVar3).topMargin, (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) dVar3).rightMargin, (getHeight() - getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) dVar3).bottomMargin);
            if (this.f2824o != null && ViewCompat.getFitsSystemWindows(this) && !ViewCompat.getFitsSystemWindows(view)) {
                rectA3.left = this.f2824o.getSystemWindowInsetLeft() + rectA3.left;
                rectA3.top = this.f2824o.getSystemWindowInsetTop() + rectA3.top;
                rectA3.right -= this.f2824o.getSystemWindowInsetRight();
                rectA3.bottom -= this.f2824o.getSystemWindowInsetBottom();
            }
            Rect rectA4 = a();
            int i6 = dVar3.f6414c;
            if ((i6 & 7) == 0) {
                i6 |= GravityCompat.START;
            }
            if ((i6 & 112) == 0) {
                i6 |= 48;
            }
            GravityCompat.apply(i6, view.getMeasuredWidth(), view.getMeasuredHeight(), rectA3, rectA4, i3);
            view.layout(rectA4.left, rectA4.top, rectA4.right, rectA4.bottom);
            rectA3.setEmpty();
            synchronizedPool.release(rectA3);
            rectA4.setEmpty();
            synchronizedPool.release(rectA4);
            return;
        }
        d dVar4 = (d) view.getLayoutParams();
        int i7 = dVar4.f6414c;
        if (i7 == 0) {
            i7 = 8388661;
        }
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i7, i3);
        int i8 = absoluteGravity & 7;
        int i9 = absoluteGravity & 112;
        int width = getWidth();
        int height = getHeight();
        int measuredWidth2 = view.getMeasuredWidth();
        int measuredHeight2 = view.getMeasuredHeight();
        if (i3 == 1) {
            i5 = width - i5;
        }
        int iG = g(i5) - measuredWidth2;
        if (i8 == 1) {
            iG += measuredWidth2 / 2;
        } else if (i8 == 5) {
            iG += measuredWidth2;
        }
        if (i9 != 16) {
            i4 = i9 != 80 ? 0 : measuredHeight2;
        } else {
            i4 = measuredHeight2 / 2;
        }
        int iMax = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) dVar4).leftMargin, Math.min(iG, ((width - getPaddingRight()) - measuredWidth2) - ((ViewGroup.MarginLayoutParams) dVar4).rightMargin));
        int iMax2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) dVar4).topMargin, Math.min(i4, ((height - getPaddingBottom()) - measuredHeight2) - ((ViewGroup.MarginLayoutParams) dVar4).bottomMargin));
        view.layout(iMax, iMax2, measuredWidth2 + iMax, measuredHeight2 + iMax2);
    }

    public final boolean l(MotionEvent motionEvent, int i3) {
        int actionMasked = motionEvent.getActionMasked();
        ArrayList arrayList = this.f2815d;
        arrayList.clear();
        boolean zIsChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i4 = childCount - 1; i4 >= 0; i4--) {
            arrayList.add(getChildAt(zIsChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i4) : i4));
        }
        T t2 = f2812x;
        if (t2 != null) {
            Collections.sort(arrayList, t2);
        }
        int size = arrayList.size();
        MotionEvent motionEventObtain = null;
        boolean zJ = false;
        for (int i5 = 0; i5 < size; i5++) {
            View view = (View) arrayList.get(i5);
            z.a aVar = ((d) view.getLayoutParams()).f6413a;
            if (zJ && actionMasked != 0) {
                if (aVar != null) {
                    if (motionEventObtain == null) {
                        long jUptimeMillis = SystemClock.uptimeMillis();
                        motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                    }
                    if (i3 == 0) {
                        aVar.j(this, view, motionEventObtain);
                    } else if (i3 == 1) {
                        aVar.u(view, motionEventObtain);
                    }
                }
            } else if (!zJ && aVar != null) {
                if (i3 == 0) {
                    zJ = aVar.j(this, view, motionEvent);
                } else if (i3 == 1) {
                    zJ = aVar.u(view, motionEvent);
                }
                if (zJ) {
                    this.f2820k = view;
                }
            }
        }
        arrayList.clear();
        return zJ;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0083 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:31:0x0076 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:32:0x0078  */
    /* JADX WARN: Code duplicated, block: B:34:0x007e  */
    /* JADX WARN: Code duplicated, block: B:37:0x008b  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:38:0x008f
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:272)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:237)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:80)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeEndlessLoop(LoopRegionMaker.java:590)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:82)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:162)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:49)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    public final void m() {
        /*
            Method dump skipped, instruction units count: 388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.m():void");
    }

    public final void n(boolean z2) {
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            z.a aVar = ((d) childAt.getLayoutParams()).f6413a;
            if (aVar != null) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                if (z2) {
                    aVar.j(this, childAt, motionEventObtain);
                } else {
                    aVar.u(childAt, motionEventObtain);
                }
                motionEventObtain.recycle();
            }
        }
        for (int i4 = 0; i4 < childCount; i4++) {
            ((d) getChildAt(i4).getLayoutParams()).getClass();
        }
        this.f2820k = null;
        this.f2817h = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        n(false);
        if (this.f2823n) {
            if (this.f2822m == null) {
                this.f2822m = new b(this);
            }
            getViewTreeObserver().addOnPreDrawListener(this.f2822m);
        }
        if (this.f2824o == null && ViewCompat.getFitsSystemWindows(this)) {
            ViewCompat.requestApplyInsets(this);
        }
        this.f2818i = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        n(false);
        if (this.f2823n && this.f2822m != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f2822m);
        }
        View view = this.f2821l;
        if (view != null) {
            onStopNestedScroll(view, 0);
        }
        this.f2818i = false;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.f2825p || this.f2826q == null) {
            return;
        }
        WindowInsetsCompat windowInsetsCompat = this.f2824o;
        int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
        if (systemWindowInsetTop > 0) {
            this.f2826q.setBounds(0, 0, getWidth(), systemWindowInsetTop);
            this.f2826q.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            n(true);
        }
        boolean zL = l(motionEvent, 0);
        if (actionMasked != 1 && actionMasked != 3) {
            return zL;
        }
        n(true);
        return zL;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i3, int i4, int i5, int i6) {
        z.a aVar;
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        ArrayList arrayList = this.b;
        int size = arrayList.size();
        for (int i7 = 0; i7 < size; i7++) {
            View view = (View) arrayList.get(i7);
            if (view.getVisibility() != 8 && ((aVar = ((d) view.getLayoutParams()).f6413a) == null || !aVar.k(this, view, layoutDirection))) {
                k(view, layoutDirection);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:70:0x012a  */
    /* JADX WARN: Code duplicated, block: B:73:0x015b  */
    /* JADX WARN: Code duplicated, block: B:76:0x0165  */
    /* JADX WARN: Code duplicated, block: B:79:0x0184  */
    /* JADX WARN: Code duplicated, block: B:80:0x0187  */
    @Override // android.view.View
    public final void onMeasure(int i3, int i4) {
        boolean z2;
        int i5;
        int i6;
        int i7;
        int iMakeMeasureSpec;
        int iMakeMeasureSpec2;
        z.a aVar;
        int i8;
        int i9;
        boolean z3;
        int i10;
        int i11;
        ArrayList arrayList;
        int i12;
        View view;
        int i13;
        boolean zL;
        int iMax;
        CoordinatorLayout coordinatorLayout = this;
        coordinatorLayout.m();
        int childCount = coordinatorLayout.getChildCount();
        int i14 = 0;
        loop0: while (true) {
            if (i14 >= childCount) {
                z2 = false;
                break;
            }
            View childAt = coordinatorLayout.getChildAt(i14);
            j jVar = coordinatorLayout.f2814c.b;
            int i15 = jVar.f5258d;
            for (int i16 = 0; i16 < i15; i16++) {
                ArrayList arrayList2 = (ArrayList) jVar.j(i16);
                if (arrayList2 != null && arrayList2.contains(childAt)) {
                    z2 = true;
                    break loop0;
                }
            }
            i14++;
        }
        if (z2 != coordinatorLayout.f2823n) {
            if (z2) {
                if (coordinatorLayout.f2818i) {
                    if (coordinatorLayout.f2822m == null) {
                        coordinatorLayout.f2822m = new b(coordinatorLayout);
                    }
                    coordinatorLayout.getViewTreeObserver().addOnPreDrawListener(coordinatorLayout.f2822m);
                }
                coordinatorLayout.f2823n = true;
            } else {
                if (coordinatorLayout.f2818i && coordinatorLayout.f2822m != null) {
                    coordinatorLayout.getViewTreeObserver().removeOnPreDrawListener(coordinatorLayout.f2822m);
                }
                coordinatorLayout.f2823n = false;
            }
        }
        int paddingLeft = coordinatorLayout.getPaddingLeft();
        int paddingTop = coordinatorLayout.getPaddingTop();
        int paddingRight = coordinatorLayout.getPaddingRight();
        int paddingBottom = coordinatorLayout.getPaddingBottom();
        int layoutDirection = ViewCompat.getLayoutDirection(coordinatorLayout);
        boolean z4 = layoutDirection == 1;
        int mode = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i3);
        int mode2 = View.MeasureSpec.getMode(i4);
        int size2 = View.MeasureSpec.getSize(i4);
        int i17 = paddingLeft + paddingRight;
        int i18 = paddingTop + paddingBottom;
        int suggestedMinimumWidth = coordinatorLayout.getSuggestedMinimumWidth();
        int suggestedMinimumHeight = coordinatorLayout.getSuggestedMinimumHeight();
        boolean z5 = coordinatorLayout.f2824o != null && ViewCompat.getFitsSystemWindows(coordinatorLayout);
        ArrayList arrayList3 = coordinatorLayout.b;
        int size3 = arrayList3.size();
        int i19 = 0;
        int iCombineMeasuredStates = 0;
        while (i19 < size3) {
            View view2 = (View) arrayList3.get(i19);
            int i20 = suggestedMinimumWidth;
            if (view2.getVisibility() == 8) {
                arrayList = arrayList3;
                i6 = size3;
                i13 = i19;
                i8 = paddingLeft;
                suggestedMinimumWidth = i20;
                z3 = false;
                i10 = paddingRight;
            } else {
                d dVar = (d) view2.getLayoutParams();
                int i21 = dVar.f6416e;
                if (i21 < 0 || mode == 0) {
                    i5 = suggestedMinimumHeight;
                } else {
                    int iG = coordinatorLayout.g(i21);
                    int i22 = dVar.f6414c;
                    if (i22 == 0) {
                        i22 = 8388661;
                    }
                    int absoluteGravity = GravityCompat.getAbsoluteGravity(i22, layoutDirection) & 7;
                    i5 = suggestedMinimumHeight;
                    if ((absoluteGravity != 3 || z4) && !(absoluteGravity == 5 && z4)) {
                        if ((absoluteGravity == 5 && !z4) || (absoluteGravity == 3 && z4)) {
                            iMax = Math.max(0, iG - paddingLeft);
                        }
                        if (z5 || ViewCompat.getFitsSystemWindows(view2)) {
                            iMakeMeasureSpec = i3;
                            iMakeMeasureSpec2 = i4;
                        } else {
                            int systemWindowInsetRight = coordinatorLayout.f2824o.getSystemWindowInsetRight() + coordinatorLayout.f2824o.getSystemWindowInsetLeft();
                            int systemWindowInsetBottom = coordinatorLayout.f2824o.getSystemWindowInsetBottom() + coordinatorLayout.f2824o.getSystemWindowInsetTop();
                            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size - systemWindowInsetRight, mode);
                            iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(size2 - systemWindowInsetBottom, mode2);
                        }
                        aVar = dVar.f6413a;
                        if (aVar != null) {
                            z3 = false;
                            i8 = paddingLeft;
                            i9 = i20;
                            i10 = paddingRight;
                            i11 = i5;
                            arrayList = arrayList3;
                            int i23 = iMakeMeasureSpec;
                            i13 = i19;
                            int i24 = iMakeMeasureSpec2;
                            zL = aVar.l(this, view2, i23, i7, i24);
                            view = view2;
                            iMakeMeasureSpec = i23;
                            i12 = i24;
                            if (zL) {
                                coordinatorLayout = this;
                            }
                            int iMax2 = Math.max(i9, view.getMeasuredWidth() + i17 + ((ViewGroup.MarginLayoutParams) dVar).leftMargin + ((ViewGroup.MarginLayoutParams) dVar).rightMargin);
                            int iMax3 = Math.max(i11, view.getMeasuredHeight() + i18 + ((ViewGroup.MarginLayoutParams) dVar).topMargin + ((ViewGroup.MarginLayoutParams) dVar).bottomMargin);
                            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view.getMeasuredState());
                            suggestedMinimumWidth = iMax2;
                            suggestedMinimumHeight = iMax3;
                        } else {
                            i8 = paddingLeft;
                            i9 = i20;
                            z3 = false;
                            i10 = paddingRight;
                            i11 = i5;
                            arrayList = arrayList3;
                            i12 = iMakeMeasureSpec2;
                            view = view2;
                            i13 = i19;
                        }
                        coordinatorLayout = this;
                        coordinatorLayout.measureChildWithMargins(view, iMakeMeasureSpec, i7, i12, 0);
                        int iMax4 = Math.max(i9, view.getMeasuredWidth() + i17 + ((ViewGroup.MarginLayoutParams) dVar).leftMargin + ((ViewGroup.MarginLayoutParams) dVar).rightMargin);
                        int iMax5 = Math.max(i11, view.getMeasuredHeight() + i18 + ((ViewGroup.MarginLayoutParams) dVar).topMargin + ((ViewGroup.MarginLayoutParams) dVar).bottomMargin);
                        iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view.getMeasuredState());
                        suggestedMinimumWidth = iMax4;
                        suggestedMinimumHeight = iMax5;
                    } else {
                        iMax = Math.max(0, (size - paddingRight) - iG);
                    }
                    int i25 = size3;
                    i7 = iMax;
                    i6 = i25;
                    if (z5) {
                        iMakeMeasureSpec = i3;
                        iMakeMeasureSpec2 = i4;
                    } else {
                        iMakeMeasureSpec = i3;
                        iMakeMeasureSpec2 = i4;
                    }
                    aVar = dVar.f6413a;
                    if (aVar != null) {
                        z3 = false;
                        i8 = paddingLeft;
                        i9 = i20;
                        i10 = paddingRight;
                        i11 = i5;
                        arrayList = arrayList3;
                        int i26 = iMakeMeasureSpec;
                        i13 = i19;
                        int i27 = iMakeMeasureSpec2;
                        zL = aVar.l(this, view2, i26, i7, i27);
                        view = view2;
                        iMakeMeasureSpec = i26;
                        i12 = i27;
                        if (zL) {
                            coordinatorLayout = this;
                        }
                        int iMax6 = Math.max(i9, view.getMeasuredWidth() + i17 + ((ViewGroup.MarginLayoutParams) dVar).leftMargin + ((ViewGroup.MarginLayoutParams) dVar).rightMargin);
                        int iMax7 = Math.max(i11, view.getMeasuredHeight() + i18 + ((ViewGroup.MarginLayoutParams) dVar).topMargin + ((ViewGroup.MarginLayoutParams) dVar).bottomMargin);
                        iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view.getMeasuredState());
                        suggestedMinimumWidth = iMax6;
                        suggestedMinimumHeight = iMax7;
                    } else {
                        i8 = paddingLeft;
                        i9 = i20;
                        z3 = false;
                        i10 = paddingRight;
                        i11 = i5;
                        arrayList = arrayList3;
                        i12 = iMakeMeasureSpec2;
                        view = view2;
                        i13 = i19;
                    }
                    coordinatorLayout = this;
                    coordinatorLayout.measureChildWithMargins(view, iMakeMeasureSpec, i7, i12, 0);
                    int iMax8 = Math.max(i9, view.getMeasuredWidth() + i17 + ((ViewGroup.MarginLayoutParams) dVar).leftMargin + ((ViewGroup.MarginLayoutParams) dVar).rightMargin);
                    int iMax9 = Math.max(i11, view.getMeasuredHeight() + i18 + ((ViewGroup.MarginLayoutParams) dVar).topMargin + ((ViewGroup.MarginLayoutParams) dVar).bottomMargin);
                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view.getMeasuredState());
                    suggestedMinimumWidth = iMax8;
                    suggestedMinimumHeight = iMax9;
                }
                i6 = size3;
                i7 = 0;
                if (z5) {
                    iMakeMeasureSpec = i3;
                    iMakeMeasureSpec2 = i4;
                } else {
                    iMakeMeasureSpec = i3;
                    iMakeMeasureSpec2 = i4;
                }
                aVar = dVar.f6413a;
                if (aVar != null) {
                    z3 = false;
                    i8 = paddingLeft;
                    i9 = i20;
                    i10 = paddingRight;
                    i11 = i5;
                    arrayList = arrayList3;
                    int i28 = iMakeMeasureSpec;
                    i13 = i19;
                    int i29 = iMakeMeasureSpec2;
                    zL = aVar.l(this, view2, i28, i7, i29);
                    view = view2;
                    iMakeMeasureSpec = i28;
                    i12 = i29;
                    if (zL) {
                        coordinatorLayout = this;
                    }
                    int iMax10 = Math.max(i9, view.getMeasuredWidth() + i17 + ((ViewGroup.MarginLayoutParams) dVar).leftMargin + ((ViewGroup.MarginLayoutParams) dVar).rightMargin);
                    int iMax11 = Math.max(i11, view.getMeasuredHeight() + i18 + ((ViewGroup.MarginLayoutParams) dVar).topMargin + ((ViewGroup.MarginLayoutParams) dVar).bottomMargin);
                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view.getMeasuredState());
                    suggestedMinimumWidth = iMax10;
                    suggestedMinimumHeight = iMax11;
                } else {
                    i8 = paddingLeft;
                    i9 = i20;
                    z3 = false;
                    i10 = paddingRight;
                    i11 = i5;
                    arrayList = arrayList3;
                    i12 = iMakeMeasureSpec2;
                    view = view2;
                    i13 = i19;
                }
                coordinatorLayout = this;
                coordinatorLayout.measureChildWithMargins(view, iMakeMeasureSpec, i7, i12, 0);
                int iMax12 = Math.max(i9, view.getMeasuredWidth() + i17 + ((ViewGroup.MarginLayoutParams) dVar).leftMargin + ((ViewGroup.MarginLayoutParams) dVar).rightMargin);
                int iMax13 = Math.max(i11, view.getMeasuredHeight() + i18 + ((ViewGroup.MarginLayoutParams) dVar).topMargin + ((ViewGroup.MarginLayoutParams) dVar).bottomMargin);
                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view.getMeasuredState());
                suggestedMinimumWidth = iMax12;
                suggestedMinimumHeight = iMax13;
            }
            i19 = i13 + 1;
            paddingLeft = i8;
            paddingRight = i10;
            size3 = i6;
            arrayList3 = arrayList;
        }
        int i30 = iCombineMeasuredStates;
        coordinatorLayout.setMeasuredDimension(View.resolveSizeAndState(suggestedMinimumWidth, i3, (-16777216) & i30), View.resolveSizeAndState(suggestedMinimumHeight, i4, i30 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public final boolean onNestedFling(View view, float f, float f3, boolean z2) {
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                d dVar = (d) childAt.getLayoutParams();
                if (dVar.a(0)) {
                    z.a aVar = dVar.f6413a;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public final boolean onNestedPreFling(View view, float f, float f3) {
        z.a aVar;
        int childCount = getChildCount();
        boolean zM = false;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                d dVar = (d) childAt.getLayoutParams();
                if (dVar.a(0) && (aVar = dVar.f6413a) != null) {
                    zM |= aVar.m(view);
                }
            }
        }
        return zM;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public final void onNestedPreScroll(View view, int i3, int i4, int[] iArr) {
        onNestedPreScroll(view, i3, i4, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public final void onNestedScroll(View view, int i3, int i4, int i5, int i6) {
        onNestedScroll(view, i3, i4, i5, i6, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public final void onNestedScrollAccepted(View view, View view2, int i3) {
        onNestedScrollAccepted(view, view2, i3, 0);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof e)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        e eVar = (e) parcelable;
        super.onRestoreInstanceState(eVar.b);
        SparseArray sparseArray = eVar.f6425d;
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            int id = childAt.getId();
            z.a aVar = h(childAt).f6413a;
            if (id != -1 && aVar != null && (parcelable2 = (Parcelable) sparseArray.get(id)) != null) {
                aVar.q(childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        Parcelable parcelableR;
        e eVar = new e(super.onSaveInstanceState());
        SparseArray sparseArray = new SparseArray();
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            int id = childAt.getId();
            z.a aVar = ((d) childAt.getLayoutParams()).f6413a;
            if (id != -1 && aVar != null && (parcelableR = aVar.r(childAt)) != null) {
                sparseArray.append(id, parcelableR);
            }
        }
        eVar.f6425d = sparseArray;
        return eVar;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public final boolean onStartNestedScroll(View view, View view2, int i3) {
        return onStartNestedScroll(view, view2, i3, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public final void onStopNestedScroll(View view) {
        onStopNestedScroll(view, 0);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002f  */
    /* JADX WARN: Code duplicated, block: B:15:0x0035 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:16:0x0037  */
    /* JADX WARN: Code duplicated, block: B:18:0x004a  */
    /* JADX WARN: Code duplicated, block: B:7:0x0015 A[PHI: r3
      0x0015: PHI (r3v4 boolean) = (r3v2 boolean), (r3v5 boolean) binds: [B:10:0x0022, B:5:0x0012] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zL;
        boolean zU;
        MotionEvent motionEventObtain;
        int actionMasked = motionEvent.getActionMasked();
        if (this.f2820k == null) {
            zL = l(motionEvent, 1);
            if (!zL) {
                zU = false;
            }
            motionEventObtain = null;
            if (this.f2820k == null) {
                zU |= super.onTouchEvent(motionEvent);
            } else if (zL) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                super.onTouchEvent(motionEventObtain);
            }
            if (motionEventObtain != null) {
                motionEventObtain.recycle();
            }
            if (actionMasked == 1 && actionMasked != 3) {
                return zU;
            }
            n(false);
            return zU;
        }
        zL = false;
        z.a aVar = ((d) this.f2820k.getLayoutParams()).f6413a;
        if (aVar != null) {
            zU = aVar.u(this.f2820k, motionEvent);
        } else {
            zU = false;
        }
        motionEventObtain = null;
        if (this.f2820k == null) {
            zU |= super.onTouchEvent(motionEvent);
        } else if (zL) {
            long jUptimeMillis2 = SystemClock.uptimeMillis();
            motionEventObtain = MotionEvent.obtain(jUptimeMillis2, jUptimeMillis2, 3, 0.0f, 0.0f, 0);
            super.onTouchEvent(motionEventObtain);
        }
        if (motionEventObtain != null) {
            motionEventObtain.recycle();
        }
        if (actionMasked == 1) {
        }
        n(false);
        return zU;
    }

    public final void q() {
        if (!ViewCompat.getFitsSystemWindows(this)) {
            ViewCompat.setOnApplyWindowInsetsListener(this, null);
            return;
        }
        if (this.f2828s == null) {
            this.f2828s = new C0269h(14, this);
        }
        ViewCompat.setOnApplyWindowInsetsListener(this, this.f2828s);
        setSystemUiVisibility(1280);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z2) {
        z.a aVar = ((d) view.getLayoutParams()).f6413a;
        if (aVar != null) {
            aVar.p(this, view);
        }
        return super.requestChildRectangleOnScreen(view, rect, z2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z2) {
        super.requestDisallowInterceptTouchEvent(z2);
        if (!z2 || this.f2817h) {
            return;
        }
        n(false);
        this.f2817h = true;
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z2) {
        super.setFitsSystemWindows(z2);
        q();
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f2827r = onHierarchyChangeListener;
    }

    public void setStatusBarBackground(Drawable drawable) {
        Drawable drawable2 = this.f2826q;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.f2826q = drawableMutate;
            if (drawableMutate != null) {
                if (drawableMutate.isStateful()) {
                    this.f2826q.setState(getDrawableState());
                }
                DrawableCompat.setLayoutDirection(this.f2826q, ViewCompat.getLayoutDirection(this));
                this.f2826q.setVisible(getVisibility() == 0, false);
                this.f2826q.setCallback(this);
            }
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setStatusBarBackgroundColor(int i3) {
        setStatusBarBackground(new ColorDrawable(i3));
    }

    public void setStatusBarBackgroundResource(int i3) {
        setStatusBarBackground(i3 != 0 ? ContextCompat.getDrawable(getContext(), i3) : null);
    }

    @Override // android.view.View
    public void setVisibility(int i3) {
        super.setVisibility(i3);
        boolean z2 = i3 == 0;
        Drawable drawable = this.f2826q;
        if (drawable == null || drawable.isVisible() == z2) {
            return;
        }
        this.f2826q.setVisible(z2, false);
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f2826q;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof d) {
            return new d((d) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new d((ViewGroup.MarginLayoutParams) layoutParams) : new d(layoutParams);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void onNestedPreScroll(View view, int i3, int i4, int[] iArr, int i5) {
        z.a aVar;
        int childCount = getChildCount();
        boolean z2 = false;
        int iMax = 0;
        int iMax2 = 0;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                d dVar = (d) childAt.getLayoutParams();
                if (dVar.a(i5) && (aVar = dVar.f6413a) != null) {
                    int[] iArr2 = this.f;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    aVar.n(this, childAt, view, i3, i4, iArr2, i5);
                    iMax = i3 > 0 ? Math.max(iMax, iArr2[0]) : Math.min(iMax, iArr2[0]);
                    iMax2 = i4 > 0 ? Math.max(iMax2, iArr2[1]) : Math.min(iMax2, iArr2[1]);
                    z2 = true;
                }
            }
        }
        iArr[0] = iMax;
        iArr[1] = iMax2;
        if (z2) {
            j(1);
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void onNestedScroll(View view, int i3, int i4, int i5, int i6, int i7) {
        onNestedScroll(view, i3, i4, i5, i6, 0, this.g);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void onNestedScrollAccepted(View view, View view2, int i3, int i4) {
        this.f2829t.onNestedScrollAccepted(view, view2, i3, i4);
        this.f2821l = view2;
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            ((d) getChildAt(i5).getLayoutParams()).a(i4);
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final boolean onStartNestedScroll(View view, View view2, int i3, int i4) {
        int childCount = getChildCount();
        boolean z2 = false;
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                d dVar = (d) childAt.getLayoutParams();
                z.a aVar = dVar.f6413a;
                if (aVar != null) {
                    boolean zS = aVar.s(childAt, i3, i4);
                    z2 |= zS;
                    if (i4 == 0) {
                        dVar.f6422m = zS;
                    } else if (i4 == 1) {
                        dVar.f6423n = zS;
                    }
                } else if (i4 == 0) {
                    dVar.f6422m = false;
                } else if (i4 == 1) {
                    dVar.f6423n = false;
                }
            }
        }
        return z2;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void onStopNestedScroll(View view, int i3) {
        this.f2829t.onStopNestedScroll(view, i3);
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            d dVar = (d) childAt.getLayoutParams();
            if (dVar.a(i3)) {
                z.a aVar = dVar.f6413a;
                if (aVar != null) {
                    aVar.t(childAt, view, i3);
                }
                if (i3 == 0) {
                    dVar.f6422m = false;
                } else if (i3 == 1) {
                    dVar.f6423n = false;
                }
            }
        }
        this.f2821l = null;
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public final void onNestedScroll(View view, int i3, int i4, int i5, int i6, int i7, int[] iArr) {
        z.a aVar;
        int childCount = getChildCount();
        int iMin = 0;
        int iMin2 = 0;
        boolean z2 = false;
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                d dVar = (d) childAt.getLayoutParams();
                if (dVar.a(i7) && (aVar = dVar.f6413a) != null) {
                    int[] iArr2 = this.f;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    aVar.o(this, childAt, i4, i5, i6, iArr2);
                    if (i5 > 0) {
                        iMin = Math.max(iMin, iArr2[0]);
                    } else {
                        iMin = Math.min(iMin, iArr2[0]);
                    }
                    if (i6 > 0) {
                        iMin2 = Math.max(iMin2, iArr2[1]);
                    } else {
                        iMin2 = Math.min(iMin2, iArr2[1]);
                    }
                    z2 = true;
                }
            }
        }
        iArr[0] = iArr[0] + iMin;
        iArr[1] = iArr[1] + iMin2;
        if (z2) {
            j(1);
        }
    }
}
