package p059x;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.TypedValue;
import android.util.Xml;
import java.util.HashMap;
import p051u.h;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f5830a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f5831c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f5832d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f5833e;
    public int f;

    public b(b bVar, Object obj) {
        bVar.getClass();
        this.f5830a = bVar.f5830a;
        b(obj);
    }

    public static void a(Context context, XmlResourceParser xmlResourceParser, HashMap map) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), q.f5987c);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        String string = null;
        int i3 = 0;
        Object string2 = null;
        for (int i4 = 0; i4 < indexCount; i4++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i4);
            if (index == 0) {
                string = typedArrayObtainStyledAttributes.getString(index);
                if (string != null && string.length() > 0) {
                    string = Character.toUpperCase(string.charAt(0)) + string.substring(1);
                }
            } else if (index == 1) {
                string2 = Boolean.valueOf(typedArrayObtainStyledAttributes.getBoolean(index, false));
                i3 = 6;
            } else {
                int i5 = 3;
                if (index == 3) {
                    string2 = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(index, 0));
                } else {
                    i5 = 4;
                    if (index == 2) {
                        string2 = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(index, 0));
                    } else {
                        if (index == 7) {
                            string2 = Float.valueOf(TypedValue.applyDimension(1, typedArrayObtainStyledAttributes.getDimension(index, 0.0f), context.getResources().getDisplayMetrics()));
                        } else if (index == 4) {
                            string2 = Float.valueOf(typedArrayObtainStyledAttributes.getDimension(index, 0.0f));
                        } else {
                            i5 = 5;
                            if (index == 5) {
                                string2 = Float.valueOf(typedArrayObtainStyledAttributes.getFloat(index, Float.NaN));
                                i3 = 2;
                            } else if (index == 6) {
                                string2 = Integer.valueOf(typedArrayObtainStyledAttributes.getInteger(index, -1));
                                i3 = 1;
                            } else if (index == 8) {
                                string2 = typedArrayObtainStyledAttributes.getString(index);
                            }
                        }
                        i3 = 7;
                    }
                }
                i3 = i5;
            }
        }
        if (string != null && string2 != null) {
            b bVar = new b();
            bVar.f5830a = i3;
            bVar.b(string2);
            map.put(string, bVar);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void b(Object obj) {
        switch (h.a(this.f5830a)) {
            case 0:
                this.b = ((Integer) obj).intValue();
                break;
            case 1:
                this.f5831c = ((Float) obj).floatValue();
                break;
            case 2:
            case 3:
                this.f = ((Integer) obj).intValue();
                break;
            case 4:
                this.f5832d = (String) obj;
                break;
            case 5:
                this.f5833e = ((Boolean) obj).booleanValue();
                break;
            case 6:
                this.f5831c = ((Float) obj).floatValue();
                break;
        }
    }
}
