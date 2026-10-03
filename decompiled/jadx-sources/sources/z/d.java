package z;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class d extends ViewGroup.MarginLayoutParams {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public a f6413a;
    public boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f6414c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f6415d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f6416e;
    public final int f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f6417h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f6418i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f6419j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public View f6420k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public View f6421l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f6422m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f6423n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Rect f6424o;

    public d() {
        super(-2, -2);
        this.b = false;
        this.f6414c = 0;
        this.f6415d = 0;
        this.f6416e = -1;
        this.f = -1;
        this.g = 0;
        this.f6417h = 0;
        this.f6424o = new Rect();
    }

    public final boolean a(int i3) {
        if (i3 == 0) {
            return this.f6422m;
        }
        if (i3 != 1) {
            return false;
        }
        return this.f6423n;
    }

    public d(Context context, AttributeSet attributeSet) {
        a aVar;
        super(context, attributeSet);
        this.b = false;
        this.f6414c = 0;
        this.f6415d = 0;
        this.f6416e = -1;
        this.f = -1;
        this.g = 0;
        this.f6417h = 0;
        this.f6424o = new Rect();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p062y.a.b);
        this.f6414c = typedArrayObtainStyledAttributes.getInteger(0, 0);
        this.f = typedArrayObtainStyledAttributes.getResourceId(1, -1);
        this.f6415d = typedArrayObtainStyledAttributes.getInteger(2, 0);
        this.f6416e = typedArrayObtainStyledAttributes.getInteger(6, -1);
        this.g = typedArrayObtainStyledAttributes.getInt(5, 0);
        this.f6417h = typedArrayObtainStyledAttributes.getInt(4, 0);
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(3);
        this.b = zHasValue;
        if (zHasValue) {
            String string = typedArrayObtainStyledAttributes.getString(3);
            String str = CoordinatorLayout.f2809u;
            if (TextUtils.isEmpty(string)) {
                aVar = null;
            } else {
                if (string.startsWith(".")) {
                    string = context.getPackageName() + string;
                } else if (string.indexOf(46) < 0) {
                    String str2 = CoordinatorLayout.f2809u;
                    if (!TextUtils.isEmpty(str2)) {
                        string = str2 + '.' + string;
                    }
                }
                try {
                    ThreadLocal threadLocal = CoordinatorLayout.f2811w;
                    Map map = (Map) threadLocal.get();
                    if (map == null) {
                        map = new HashMap();
                        threadLocal.set(map);
                    }
                    Constructor<?> constructor = (Constructor) map.get(string);
                    if (constructor == null) {
                        constructor = Class.forName(string, false, context.getClassLoader()).getConstructor(CoordinatorLayout.f2810v);
                        constructor.setAccessible(true);
                        map.put(string, constructor);
                    }
                    aVar = (a) constructor.newInstance(context, attributeSet);
                } catch (Exception e2) {
                    throw new RuntimeException(kotlin.collections.unsigned.a.o("Could not inflate Behavior subclass ", string), e2);
                }
            }
            this.f6413a = aVar;
        }
        typedArrayObtainStyledAttributes.recycle();
        a aVar2 = this.f6413a;
        if (aVar2 != null) {
            aVar2.g(this);
        }
    }

    public d(d dVar) {
        super((ViewGroup.MarginLayoutParams) dVar);
        this.b = false;
        this.f6414c = 0;
        this.f6415d = 0;
        this.f6416e = -1;
        this.f = -1;
        this.g = 0;
        this.f6417h = 0;
        this.f6424o = new Rect();
    }

    public d(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.b = false;
        this.f6414c = 0;
        this.f6415d = 0;
        this.f6416e = -1;
        this.f = -1;
        this.g = 0;
        this.f6417h = 0;
        this.f6424o = new Rect();
    }

    public d(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.b = false;
        this.f6414c = 0;
        this.f6415d = 0;
        this.f6416e = -1;
        this.f = -1;
        this.g = 0;
        this.f6417h = 0;
        this.f6424o = new Rect();
    }
}
