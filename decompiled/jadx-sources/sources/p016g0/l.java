package p016g0;

import A1.C0013d;
import android.graphics.Bitmap;
import android.os.Build;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;
import p063y0.n;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Bitmap.Config[] f4336d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Bitmap.Config[] f4337e;
    public static final Bitmap.Config[] f;
    public static final Bitmap.Config[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Bitmap.Config[] f4338h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f f4339a = new f(1);
    public final C0013d b = new C0013d(14);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f4340c = new HashMap();

    static {
        Bitmap.Config[] configArr = {Bitmap.Config.ARGB_8888, null};
        if (Build.VERSION.SDK_INT >= 26) {
            configArr = (Bitmap.Config[]) Arrays.copyOf(configArr, 3);
            configArr[configArr.length - 1] = Bitmap.Config.RGBA_F16;
        }
        f4336d = configArr;
        f4337e = configArr;
        f = new Bitmap.Config[]{Bitmap.Config.RGB_565};
        g = new Bitmap.Config[]{Bitmap.Config.ARGB_4444};
        f4338h = new Bitmap.Config[]{Bitmap.Config.ALPHA_8};
    }

    public static String c(int i3, Bitmap.Config config) {
        return "[" + i3 + "](" + config + ")";
    }

    public final void a(Integer num, Bitmap bitmap) {
        NavigableMap navigableMapD = d(bitmap.getConfig());
        Integer num2 = (Integer) navigableMapD.get(num);
        if (num2 != null) {
            if (num2.intValue() == 1) {
                navigableMapD.remove(num);
                return;
            } else {
                navigableMapD.put(num, Integer.valueOf(num2.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + num + ", removed: " + c(n.c(bitmap), bitmap.getConfig()) + ", this: " + this);
    }

    public final Bitmap b(int i3, int i4, Bitmap.Config config) {
        Bitmap.Config[] configArr;
        int iD = n.d(config) * i3 * i4;
        f fVar = this.f4339a;
        i iVarB = (i) ((ArrayDeque) fVar.b).poll();
        if (iVarB == null) {
            iVarB = fVar.b();
        }
        k kVar = (k) iVarB;
        kVar.b = iD;
        kVar.f4335c = config;
        if (Build.VERSION.SDK_INT < 26 || !Bitmap.Config.RGBA_F16.equals(config)) {
            int i5 = j.f4333a[config.ordinal()];
            if (i5 == 1) {
                configArr = f4336d;
            } else if (i5 == 2) {
                configArr = f;
            } else if (i5 != 3) {
                configArr = i5 != 4 ? new Bitmap.Config[]{config} : f4338h;
            } else {
                configArr = g;
            }
        } else {
            configArr = f4337e;
        }
        for (Bitmap.Config config2 : configArr) {
            Integer num = (Integer) d(config2).ceilingKey(Integer.valueOf(iD));
            if (num != null && num.intValue() <= iD * 8) {
                if (num.intValue() == iD && (config2 != null ? config2.equals(config) : config == null)) {
                    break;
                    break;
                }
                fVar.a(kVar);
                int iIntValue = num.intValue();
                i iVarB2 = (i) ((ArrayDeque) fVar.b).poll();
                if (iVarB2 == null) {
                    iVarB2 = fVar.b();
                }
                kVar = (k) iVarB2;
                kVar.b = iIntValue;
                kVar.f4335c = config2;
                break;
            }
        }
        Bitmap bitmap = (Bitmap) this.b.l(kVar);
        if (bitmap != null) {
            a(Integer.valueOf(kVar.b), bitmap);
            bitmap.reconfigure(i3, i4, config);
        }
        return bitmap;
    }

    public final NavigableMap d(Bitmap.Config config) {
        HashMap map = this.f4340c;
        NavigableMap navigableMap = (NavigableMap) map.get(config);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        map.put(config, treeMap);
        return treeMap;
    }

    public final void e(Bitmap bitmap) {
        int iC = n.c(bitmap);
        Bitmap.Config config = bitmap.getConfig();
        f fVar = this.f4339a;
        i iVarB = (i) ((ArrayDeque) fVar.b).poll();
        if (iVarB == null) {
            iVarB = fVar.b();
        }
        k kVar = (k) iVarB;
        kVar.b = iC;
        kVar.f4335c = config;
        this.b.A(kVar, bitmap);
        NavigableMap navigableMapD = d(bitmap.getConfig());
        Integer num = (Integer) navigableMapD.get(Integer.valueOf(kVar.b));
        navigableMapD.put(Integer.valueOf(kVar.b), Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("SizeConfigStrategy{groupedMap=");
        sb.append(this.b);
        sb.append(", sortedSizes=(");
        HashMap map = this.f4340c;
        for (Map.Entry entry : map.entrySet()) {
            sb.append(entry.getKey());
            sb.append('[');
            sb.append(entry.getValue());
            sb.append("], ");
        }
        if (!map.isEmpty()) {
            sb.replace(sb.length() - 2, sb.length(), "");
        }
        sb.append(")}");
        return sb.toString();
    }
}
