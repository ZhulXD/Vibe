package k;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import androidx.core.widget.PopupWindowCompat;
import java.lang.reflect.Method;
import kotlin.jvm.internal.IntCompanionObject;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class I0 implements p024j.G {

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public static final Method f4681B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public static final Method f4682C;

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public final D f4683A;
    public final Context b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ListAdapter f4684c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public C0320v0 f4685d;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f4687h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f4689j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f4690k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f4691l;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public F0 f4694o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public View f4695p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public AdapterView.OnItemClickListener f4696q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public AdapterView.OnItemSelectedListener f4697r;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final Handler f4702w;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Rect f4704y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f4705z;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f4686e = -2;
    public int f = -2;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f4688i = 1002;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f4692m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f4693n = IntCompanionObject.MAX_VALUE;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final E0 f4698s = new E0(this, 1);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final H0 f4699t = new H0(this);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final G0 f4700u = new G0(this);

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final E0 f4701v = new E0(this, 0);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final Rect f4703x = new Rect();

    static {
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                f4681B = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException unused) {
                Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
            try {
                f4682C = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException unused2) {
                Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
            }
        }
    }

    public I0(Context context, AttributeSet attributeSet, int i3, int i4) {
        int resourceId;
        this.b = context;
        this.f4702w = new Handler(context.getMainLooper());
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p008d.a.f3852o, i3, 0);
        this.g = typedArrayObtainStyledAttributes.getDimensionPixelOffset(0, 0);
        int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(1, 0);
        this.f4687h = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.f4689j = true;
        }
        typedArrayObtainStyledAttributes.recycle();
        D d3 = new D(context, attributeSet, i3, 0);
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, p008d.a.f3856s, i3, 0);
        if (typedArrayObtainStyledAttributes2.hasValue(2)) {
            PopupWindowCompat.setOverlapAnchor(d3, typedArrayObtainStyledAttributes2.getBoolean(2, false));
        }
        d3.setBackgroundDrawable((!typedArrayObtainStyledAttributes2.hasValue(0) || (resourceId = typedArrayObtainStyledAttributes2.getResourceId(0, 0)) == 0) ? typedArrayObtainStyledAttributes2.getDrawable(0) : com.bumptech.glide.d.v(context, resourceId));
        typedArrayObtainStyledAttributes2.recycle();
        this.f4683A = d3;
        d3.setInputMethodMode(1);
    }

    public final int a() {
        return this.g;
    }

    @Override // p024j.G
    public final boolean b() {
        return this.f4683A.isShowing();
    }

    @Override // p024j.G
    public final void c() {
        int i3;
        int iMakeMeasureSpec;
        int paddingBottom;
        C0320v0 c0320v0;
        C0320v0 c0320v1 = this.f4685d;
        Context context = this.b;
        D d3 = this.f4683A;
        if (c0320v1 == null) {
            C0320v0 c0320v0Q = q(context, !this.f4705z);
            this.f4685d = c0320v0Q;
            c0320v0Q.setAdapter(this.f4684c);
            this.f4685d.setOnItemClickListener(this.f4696q);
            this.f4685d.setFocusable(true);
            this.f4685d.setFocusableInTouchMode(true);
            this.f4685d.setOnItemSelectedListener(new B0(this));
            this.f4685d.setOnScrollListener(this.f4700u);
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.f4697r;
            if (onItemSelectedListener != null) {
                this.f4685d.setOnItemSelectedListener(onItemSelectedListener);
            }
            d3.setContentView(this.f4685d);
        }
        Drawable background = d3.getBackground();
        Rect rect = this.f4703x;
        if (background != null) {
            background.getPadding(rect);
            int i4 = rect.top;
            i3 = rect.bottom + i4;
            if (!this.f4689j) {
                this.f4687h = -i4;
            }
        } else {
            rect.setEmpty();
            i3 = 0;
        }
        int iA = C0.a(d3, this.f4695p, this.f4687h, d3.getInputMethodMode() == 2);
        int i5 = this.f4686e;
        if (i5 == -1) {
            paddingBottom = iA + i3;
        } else {
            int i6 = this.f;
            if (i6 != -2) {
                iMakeMeasureSpec = i6 != -1 ? View.MeasureSpec.makeMeasureSpec(i6, 1073741824) : View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), 1073741824);
            } else {
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), Integer.MIN_VALUE);
            }
            int iA2 = this.f4685d.a(iMakeMeasureSpec, iA);
            paddingBottom = iA2 + (iA2 > 0 ? this.f4685d.getPaddingBottom() + this.f4685d.getPaddingTop() + i3 : 0);
        }
        boolean z2 = d3.getInputMethodMode() == 2;
        PopupWindowCompat.setWindowLayoutType(d3, this.f4688i);
        if (d3.isShowing()) {
            if (this.f4695p.isAttachedToWindow()) {
                int width = this.f;
                if (width == -1) {
                    width = -1;
                } else if (width == -2) {
                    width = this.f4695p.getWidth();
                }
                if (i5 == -1) {
                    i5 = z2 ? paddingBottom : -1;
                    if (z2) {
                        d3.setWidth(this.f == -1 ? -1 : 0);
                        d3.setHeight(0);
                    } else {
                        d3.setWidth(this.f == -1 ? -1 : 0);
                        d3.setHeight(-1);
                    }
                } else if (i5 == -2) {
                    i5 = paddingBottom;
                }
                d3.setOutsideTouchable(true);
                int i7 = width;
                View view = this.f4695p;
                int i8 = this.g;
                int i9 = this.f4687h;
                int i10 = i7 < 0 ? -1 : i7;
                if (i5 < 0) {
                    i5 = -1;
                }
                d3.update(view, i8, i9, i10, i5);
                return;
            }
            return;
        }
        int width2 = this.f;
        if (width2 == -1) {
            width2 = -1;
        } else if (width2 == -2) {
            width2 = this.f4695p.getWidth();
        }
        if (i5 == -1) {
            i5 = -1;
        } else if (i5 == -2) {
            i5 = paddingBottom;
        }
        d3.setWidth(width2);
        d3.setHeight(i5);
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = f4681B;
            if (method != null) {
                try {
                    method.invoke(d3, Boolean.TRUE);
                } catch (Exception unused) {
                    Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
                }
            }
        } else {
            D0.b(d3, true);
        }
        d3.setOutsideTouchable(true);
        d3.setTouchInterceptor(this.f4699t);
        if (this.f4691l) {
            PopupWindowCompat.setOverlapAnchor(d3, this.f4690k);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            Method method2 = f4682C;
            if (method2 != null) {
                try {
                    method2.invoke(d3, this.f4704y);
                } catch (Exception e2) {
                    Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e2);
                }
            }
        } else {
            D0.a(d3, this.f4704y);
        }
        PopupWindowCompat.showAsDropDown(d3, this.f4695p, this.g, this.f4687h, this.f4692m);
        this.f4685d.setSelection(-1);
        if ((!this.f4705z || this.f4685d.isInTouchMode()) && (c0320v0 = this.f4685d) != null) {
            c0320v0.setListSelectionHidden(true);
            c0320v0.requestLayout();
        }
        if (this.f4705z) {
            return;
        }
        this.f4702w.post(this.f4701v);
    }

    @Override // p024j.G
    public final void dismiss() {
        D d3 = this.f4683A;
        d3.dismiss();
        d3.setContentView(null);
        this.f4685d = null;
        this.f4702w.removeCallbacks(this.f4698s);
    }

    public final Drawable e() {
        return this.f4683A.getBackground();
    }

    @Override // p024j.G
    public final C0320v0 f() {
        return this.f4685d;
    }

    public final void h(Drawable drawable) {
        this.f4683A.setBackgroundDrawable(drawable);
    }

    public final void i(int i3) {
        this.f4687h = i3;
        this.f4689j = true;
    }

    public final void l(int i3) {
        this.g = i3;
    }

    public final int n() {
        if (this.f4689j) {
            return this.f4687h;
        }
        return 0;
    }

    public void p(ListAdapter listAdapter) {
        F0 f3 = this.f4694o;
        if (f3 == null) {
            this.f4694o = new F0(this);
        } else {
            ListAdapter listAdapter2 = this.f4684c;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(f3);
            }
        }
        this.f4684c = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.f4694o);
        }
        C0320v0 c0320v0 = this.f4685d;
        if (c0320v0 != null) {
            c0320v0.setAdapter(this.f4684c);
        }
    }

    public C0320v0 q(Context context, boolean z2) {
        return new C0320v0(context, z2);
    }

    public final void r(int i3) {
        Drawable background = this.f4683A.getBackground();
        if (background == null) {
            this.f = i3;
            return;
        }
        Rect rect = this.f4703x;
        background.getPadding(rect);
        this.f = rect.left + rect.right + i3;
    }
}
