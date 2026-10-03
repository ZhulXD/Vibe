package p011e;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import java.lang.reflect.Constructor;
import k.C0285d0;
import k.C0308p;
import k.C0313s;
import k.r;
import p041q.j;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class F {
    public static final Class[] b = {Context.class, AttributeSet.class};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f4059c = {R.attr.onClick};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f4060d = {R.attr.accessibilityHeading};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[] f4061e = {R.attr.accessibilityPaneTitle};
    public static final int[] f = {R.attr.screenReaderFocusable};
    public static final String[] g = {"android.widget.", "android.view.", "android.webkit."};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final j f4062h = new j(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object[] f4063a = new Object[2];

    public C0308p a(Context context, AttributeSet attributeSet) {
        return new C0308p(context, attributeSet);
    }

    public r b(Context context, AttributeSet attributeSet) {
        return new r(context, attributeSet, com.minhub.gamehub.R.attr.buttonStyle);
    }

    public C0313s c(Context context, AttributeSet attributeSet) {
        return new C0313s(context, attributeSet, com.minhub.gamehub.R.attr.checkboxStyle);
    }

    public k.F d(Context context, AttributeSet attributeSet) {
        return new k.F(context, attributeSet);
    }

    public C0285d0 e(Context context, AttributeSet attributeSet) {
        return new C0285d0(context, attributeSet);
    }

    public final View f(Context context, String str, String str2) {
        String strConcat;
        j jVar = f4062h;
        Constructor constructor = (Constructor) jVar.get(str);
        if (constructor == null) {
            if (str2 != null) {
                try {
                    strConcat = str2.concat(str);
                } catch (Exception unused) {
                    return null;
                }
            } else {
                strConcat = str;
            }
            constructor = Class.forName(strConcat, false, context.getClassLoader()).asSubclass(View.class).getConstructor(b);
            jVar.put(str, constructor);
        }
        constructor.setAccessible(true);
        return (View) constructor.newInstance(this.f4063a);
    }
}
