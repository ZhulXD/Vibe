package p021i;

import E.b;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.util.Log;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import androidx.core.internal.view.SupportMenuItem;
import androidx.core.view.ActionProvider;
import androidx.core.view.MenuItemCompat;
import java.lang.reflect.Constructor;
import p024j.s;
import p024j.x;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public CharSequence f4386A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public CharSequence f4387B;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public final /* synthetic */ h f4390E;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Menu f4391a;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f4395h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4396i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f4397j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public CharSequence f4398k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public CharSequence f4399l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f4400m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public char f4401n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f4402o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public char f4403p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f4404q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f4405r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f4406s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f4407t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f4408u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f4409v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f4410w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f4411x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public String f4412y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public ActionProvider f4413z;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public ColorStateList f4388C = null;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public PorterDuff.Mode f4389D = null;
    public int b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4392c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4393d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4394e = 0;
    public boolean f = true;
    public boolean g = true;

    public g(h hVar, Menu menu) {
        this.f4390E = hVar;
        this.f4391a = menu;
    }

    public final Object a(String str, Class[] clsArr, Object[] objArr) {
        try {
            Constructor<?> constructor = Class.forName(str, false, this.f4390E.f4416c.getClassLoader()).getConstructor(clsArr);
            constructor.setAccessible(true);
            return constructor.newInstance(objArr);
        } catch (Exception e2) {
            Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e2);
            return null;
        }
    }

    public final void b(MenuItem menuItem) {
        h hVar = this.f4390E;
        Context context = hVar.f4416c;
        boolean z2 = false;
        menuItem.setChecked(this.f4406s).setVisible(this.f4407t).setEnabled(this.f4408u).setCheckable(this.f4405r >= 1).setTitleCondensed(this.f4399l).setIcon(this.f4400m);
        int i3 = this.f4409v;
        if (i3 >= 0) {
            menuItem.setShowAsAction(i3);
        }
        if (this.f4412y != null) {
            if (context.isRestricted()) {
                throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
            }
            if (hVar.f4417d == null) {
                hVar.f4417d = h.a(context);
            }
            Object obj = hVar.f4417d;
            String str = this.f4412y;
            f fVar = new f();
            fVar.f4385a = obj;
            Class<?> cls = obj.getClass();
            try {
                fVar.b = cls.getMethod(str, f.f4384c);
                menuItem.setOnMenuItemClickListener(fVar);
            } catch (Exception e2) {
                StringBuilder sbQ = b.q("Couldn't resolve menu item onClick handler ", str, " in class ");
                sbQ.append(cls.getName());
                InflateException inflateException = new InflateException(sbQ.toString());
                inflateException.initCause(e2);
                throw inflateException;
            }
        }
        if (this.f4405r >= 2) {
            if (menuItem instanceof s) {
                ((s) menuItem).d(true);
            } else if (menuItem instanceof x) {
                x xVar = (x) menuItem;
                SupportMenuItem supportMenuItem = xVar.f4607d;
                try {
                    if (xVar.f4608e == null) {
                        xVar.f4608e = supportMenuItem.getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
                    }
                    xVar.f4608e.invoke(supportMenuItem, Boolean.TRUE);
                } catch (Exception e3) {
                    Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", e3);
                }
            }
        }
        String str2 = this.f4411x;
        if (str2 != null) {
            menuItem.setActionView((View) a(str2, h.f4414e, hVar.f4415a));
            z2 = true;
        }
        int i4 = this.f4410w;
        if (i4 > 0) {
            if (z2) {
                Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
            } else {
                menuItem.setActionView(i4);
            }
        }
        ActionProvider actionProvider = this.f4413z;
        if (actionProvider != null) {
            MenuItemCompat.setActionProvider(menuItem, actionProvider);
        }
        MenuItemCompat.setContentDescription(menuItem, this.f4386A);
        MenuItemCompat.setTooltipText(menuItem, this.f4387B);
        MenuItemCompat.setAlphabeticShortcut(menuItem, this.f4401n, this.f4402o);
        MenuItemCompat.setNumericShortcut(menuItem, this.f4403p, this.f4404q);
        PorterDuff.Mode mode = this.f4389D;
        if (mode != null) {
            MenuItemCompat.setIconTintMode(menuItem, mode);
        }
        ColorStateList colorStateList = this.f4388C;
        if (colorStateList != null) {
            MenuItemCompat.setIconTintList(menuItem, colorStateList);
        }
    }
}
