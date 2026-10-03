package p021i;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.SubMenu;
import androidx.core.content.ContextCompat;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ActionProvider;
import java.io.IOException;
import k.AbstractC0309p0;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p008d.a;
import p024j.p;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class h extends MenuInflater {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Class[] f4414e;
    public static final Class[] f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object[] f4415a;
    public final Object[] b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f4416c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f4417d;

    static {
        Class[] clsArr = {Context.class};
        f4414e = clsArr;
        f = clsArr;
    }

    public h(Context context) {
        super(context);
        this.f4416c = context;
        Object[] objArr = {context};
        this.f4415a = objArr;
        this.b = objArr;
    }

    public static Object a(Object obj) {
        return (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) ? a(((ContextWrapper) obj).getBaseContext()) : obj;
    }

    public final void b(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) throws XmlPullParserException, IOException {
        int i3;
        ColorStateList colorStateList;
        int resourceId;
        g gVar = new g(this, menu);
        int eventType = xmlPullParser.getEventType();
        do {
            i3 = 2;
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if (!name.equals("menu")) {
                    throw new RuntimeException("Expecting menu, got ".concat(name));
                }
                eventType = xmlPullParser.next();
                break;
            }
            eventType = xmlPullParser.next();
        } while (eventType != 1);
        boolean z2 = false;
        boolean z3 = false;
        String str = null;
        while (!z2) {
            if (eventType == 1) {
                throw new RuntimeException("Unexpected end of document");
            }
            if (eventType == i3) {
                if (!z3) {
                    String name2 = xmlPullParser.getName();
                    boolean zEquals = name2.equals("group");
                    Context context = this.f4416c;
                    if (zEquals) {
                        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f3853p);
                        gVar.b = typedArrayObtainStyledAttributes.getResourceId(1, 0);
                        gVar.f4392c = typedArrayObtainStyledAttributes.getInt(3, 0);
                        gVar.f4393d = typedArrayObtainStyledAttributes.getInt(4, 0);
                        gVar.f4394e = typedArrayObtainStyledAttributes.getInt(5, 0);
                        gVar.f = typedArrayObtainStyledAttributes.getBoolean(2, true);
                        gVar.g = typedArrayObtainStyledAttributes.getBoolean(0, true);
                        typedArrayObtainStyledAttributes.recycle();
                    } else if (name2.equals("item")) {
                        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, a.f3854q);
                        gVar.f4396i = typedArrayObtainStyledAttributes2.getResourceId(2, 0);
                        gVar.f4397j = (typedArrayObtainStyledAttributes2.getInt(5, gVar.f4392c) & SupportMenu.CATEGORY_MASK) | (typedArrayObtainStyledAttributes2.getInt(6, gVar.f4393d) & SupportMenu.USER_MASK);
                        gVar.f4398k = typedArrayObtainStyledAttributes2.getText(7);
                        gVar.f4399l = typedArrayObtainStyledAttributes2.getText(8);
                        gVar.f4400m = typedArrayObtainStyledAttributes2.getResourceId(0, 0);
                        String string = typedArrayObtainStyledAttributes2.getString(9);
                        gVar.f4401n = string == null ? (char) 0 : string.charAt(0);
                        gVar.f4402o = typedArrayObtainStyledAttributes2.getInt(16, 4096);
                        String string2 = typedArrayObtainStyledAttributes2.getString(10);
                        gVar.f4403p = string2 == null ? (char) 0 : string2.charAt(0);
                        gVar.f4404q = typedArrayObtainStyledAttributes2.getInt(20, 4096);
                        if (typedArrayObtainStyledAttributes2.hasValue(11)) {
                            gVar.f4405r = typedArrayObtainStyledAttributes2.getBoolean(11, false) ? 1 : 0;
                        } else {
                            gVar.f4405r = gVar.f4394e;
                        }
                        gVar.f4406s = typedArrayObtainStyledAttributes2.getBoolean(3, false);
                        gVar.f4407t = typedArrayObtainStyledAttributes2.getBoolean(4, gVar.f);
                        gVar.f4408u = typedArrayObtainStyledAttributes2.getBoolean(1, gVar.g);
                        gVar.f4409v = typedArrayObtainStyledAttributes2.getInt(21, -1);
                        gVar.f4412y = typedArrayObtainStyledAttributes2.getString(12);
                        gVar.f4410w = typedArrayObtainStyledAttributes2.getResourceId(13, 0);
                        gVar.f4411x = typedArrayObtainStyledAttributes2.getString(15);
                        String string3 = typedArrayObtainStyledAttributes2.getString(14);
                        boolean z4 = string3 != null;
                        if (z4 && gVar.f4410w == 0 && gVar.f4411x == null) {
                            gVar.f4413z = (ActionProvider) gVar.a(string3, f, this.b);
                        } else {
                            if (z4) {
                                Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                            }
                            gVar.f4413z = null;
                        }
                        gVar.f4386A = typedArrayObtainStyledAttributes2.getText(17);
                        gVar.f4387B = typedArrayObtainStyledAttributes2.getText(22);
                        if (typedArrayObtainStyledAttributes2.hasValue(19)) {
                            gVar.f4389D = AbstractC0309p0.c(typedArrayObtainStyledAttributes2.getInt(19, -1), gVar.f4389D);
                        } else {
                            gVar.f4389D = null;
                        }
                        if (typedArrayObtainStyledAttributes2.hasValue(18)) {
                            if (!typedArrayObtainStyledAttributes2.hasValue(18) || (resourceId = typedArrayObtainStyledAttributes2.getResourceId(18, 0)) == 0 || (colorStateList = ContextCompat.getColorStateList(context, resourceId)) == null) {
                                colorStateList = typedArrayObtainStyledAttributes2.getColorStateList(18);
                            }
                            gVar.f4388C = colorStateList;
                        } else {
                            gVar.f4388C = null;
                        }
                        typedArrayObtainStyledAttributes2.recycle();
                        gVar.f4395h = false;
                        xmlPullParser = xmlPullParser;
                    } else if (name2.equals("menu")) {
                        gVar.f4395h = true;
                        SubMenu subMenuAddSubMenu = gVar.f4391a.addSubMenu(gVar.b, gVar.f4396i, gVar.f4397j, gVar.f4398k);
                        gVar.b(subMenuAddSubMenu.getItem());
                        xmlPullParser = xmlPullParser;
                        b(xmlPullParser, attributeSet, subMenuAddSubMenu);
                    } else {
                        xmlPullParser = xmlPullParser;
                        str = name2;
                        z3 = true;
                    }
                }
                z2 = z2;
            } else if (eventType != 3) {
                z2 = z2;
            } else {
                String name3 = xmlPullParser.getName();
                if (z3 && name3.equals(str)) {
                    xmlPullParser = xmlPullParser;
                    z3 = false;
                    str = null;
                } else {
                    if (name3.equals("group")) {
                        gVar.b = 0;
                        gVar.f4392c = 0;
                        gVar.f4393d = 0;
                        gVar.f4394e = 0;
                        gVar.f = true;
                        gVar.g = true;
                    } else if (name3.equals("item")) {
                        if (!gVar.f4395h) {
                            ActionProvider actionProvider = gVar.f4413z;
                            if (actionProvider == null || !actionProvider.hasSubMenu()) {
                                gVar.f4395h = true;
                                gVar.b(gVar.f4391a.add(gVar.b, gVar.f4396i, gVar.f4397j, gVar.f4398k));
                            } else {
                                gVar.f4395h = true;
                                gVar.b(gVar.f4391a.addSubMenu(gVar.b, gVar.f4396i, gVar.f4397j, gVar.f4398k).getItem());
                            }
                        }
                    } else if (name3.equals("menu")) {
                        z2 = true;
                    }
                    z2 = z2;
                }
            }
            eventType = xmlPullParser.next();
            i3 = 2;
            z2 = z2;
            z3 = z3;
        }
    }

    @Override // android.view.MenuInflater
    public final void inflate(int i3, Menu menu) {
        if (!(menu instanceof SupportMenu)) {
            super.inflate(i3, menu);
            return;
        }
        XmlResourceParser layout = null;
        boolean z2 = false;
        try {
            try {
                layout = this.f4416c.getResources().getLayout(i3);
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(layout);
                if (menu instanceof p) {
                    p pVar = (p) menu;
                    if (!pVar.f4565p) {
                        pVar.w();
                        z2 = true;
                    }
                }
                b(layout, attributeSetAsAttributeSet, menu);
                if (z2) {
                    ((p) menu).v();
                }
                layout.close();
            } catch (IOException e2) {
                throw new InflateException("Error inflating menu XML", e2);
            } catch (XmlPullParserException e3) {
                throw new InflateException("Error inflating menu XML", e3);
            }
        } catch (Throwable th) {
            if (z2) {
                ((p) menu).v();
            }
            if (layout != null) {
                layout.close();
            }
            throw th;
        }
    }
}
