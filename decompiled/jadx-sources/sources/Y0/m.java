package Y0;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public p000a.a f2429a = new k();
    public p000a.a b = new k();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public p000a.a f2430c = new k();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public p000a.a f2431d = new k();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public c f2432e = new a(0.0f);
    public c f = new a(0.0f);
    public c g = new a(0.0f);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public c f2433h = new a(0.0f);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public e f2434i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public e f2435j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public e f2436k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public e f2437l;

    public m() {
        int i3 = 0;
        this.f2434i = new e(i3);
        this.f2435j = new e(i3);
        this.f2436k = new e(i3);
        this.f2437l = new e(i3);
    }

    public static l a(Context context, int i3, int i4, a aVar) {
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i3);
        if (i4 != 0) {
            contextThemeWrapper = new ContextThemeWrapper(contextThemeWrapper, i4);
        }
        TypedArray typedArrayObtainStyledAttributes = contextThemeWrapper.obtainStyledAttributes(A0.a.f8E);
        try {
            int i5 = typedArrayObtainStyledAttributes.getInt(0, 0);
            int i6 = typedArrayObtainStyledAttributes.getInt(3, i5);
            int i7 = typedArrayObtainStyledAttributes.getInt(4, i5);
            int i8 = typedArrayObtainStyledAttributes.getInt(2, i5);
            int i9 = typedArrayObtainStyledAttributes.getInt(1, i5);
            c cVarC = c(typedArrayObtainStyledAttributes, 5, aVar);
            c cVarC2 = c(typedArrayObtainStyledAttributes, 8, cVarC);
            c cVarC3 = c(typedArrayObtainStyledAttributes, 9, cVarC);
            c cVarC4 = c(typedArrayObtainStyledAttributes, 7, cVarC);
            c cVarC5 = c(typedArrayObtainStyledAttributes, 6, cVarC);
            l lVar = new l();
            lVar.f2420a = com.bumptech.glide.c.i(i6);
            lVar.f2423e = cVarC2;
            lVar.b = com.bumptech.glide.c.i(i7);
            lVar.f = cVarC3;
            lVar.f2421c = com.bumptech.glide.c.i(i8);
            lVar.g = cVarC4;
            lVar.f2422d = com.bumptech.glide.c.i(i9);
            lVar.f2424h = cVarC5;
            return lVar;
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static l b(Context context, AttributeSet attributeSet, int i3, int i4) {
        a aVar = new a(0);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, A0.a.f37w, i3, i4);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        return a(context, resourceId, resourceId2, aVar);
    }

    public static c c(TypedArray typedArray, int i3, c cVar) {
        TypedValue typedValuePeekValue = typedArray.peekValue(i3);
        if (typedValuePeekValue != null) {
            int i4 = typedValuePeekValue.type;
            if (i4 == 5) {
                return new a(TypedValue.complexToDimensionPixelSize(typedValuePeekValue.data, typedArray.getResources().getDisplayMetrics()));
            }
            if (i4 == 6) {
                return new j(typedValuePeekValue.getFraction(1.0f, 1.0f));
            }
        }
        return cVar;
    }

    public final boolean d(RectF rectF) {
        boolean z2 = this.f2437l.getClass().equals(e.class) && this.f2435j.getClass().equals(e.class) && this.f2434i.getClass().equals(e.class) && this.f2436k.getClass().equals(e.class);
        float fA = this.f2432e.a(rectF);
        return z2 && ((this.f.a(rectF) > fA ? 1 : (this.f.a(rectF) == fA ? 0 : -1)) == 0 && (this.f2433h.a(rectF) > fA ? 1 : (this.f2433h.a(rectF) == fA ? 0 : -1)) == 0 && (this.g.a(rectF) > fA ? 1 : (this.g.a(rectF) == fA ? 0 : -1)) == 0) && ((this.b instanceof k) && (this.f2429a instanceof k) && (this.f2430c instanceof k) && (this.f2431d instanceof k));
    }

    public final l e() {
        l lVar = new l();
        lVar.f2420a = this.f2429a;
        lVar.b = this.b;
        lVar.f2421c = this.f2430c;
        lVar.f2422d = this.f2431d;
        lVar.f2423e = this.f2432e;
        lVar.f = this.f;
        lVar.g = this.g;
        lVar.f2424h = this.f2433h;
        lVar.f2425i = this.f2434i;
        lVar.f2426j = this.f2435j;
        lVar.f2427k = this.f2436k;
        lVar.f2428l = this.f2437l;
        return lVar;
    }
}
