package p059x;

import E.b;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.location.LocationRequestCompat;
import androidx.core.text.HtmlCompat;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import org.godotengine.godot.service.GodotService;
import org.xmlpull.v1.XmlPullParserException;
import p048t.a;
import p051u.h;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f5982d = {0, 4, 8};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final SparseIntArray f5983e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f5984a = new HashMap();
    public final boolean b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f5985c = new HashMap();

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f5983e = sparseIntArray;
        sparseIntArray.append(76, 25);
        sparseIntArray.append(77, 26);
        sparseIntArray.append(79, 29);
        sparseIntArray.append(80, 30);
        sparseIntArray.append(86, 36);
        sparseIntArray.append(85, 35);
        sparseIntArray.append(58, 4);
        sparseIntArray.append(57, 3);
        sparseIntArray.append(55, 1);
        sparseIntArray.append(94, 6);
        sparseIntArray.append(95, 7);
        sparseIntArray.append(65, 17);
        sparseIntArray.append(66, 18);
        sparseIntArray.append(67, 19);
        sparseIntArray.append(0, 27);
        sparseIntArray.append(81, 32);
        sparseIntArray.append(82, 33);
        sparseIntArray.append(64, 10);
        sparseIntArray.append(63, 9);
        sparseIntArray.append(98, 13);
        sparseIntArray.append(GodotService.MSG_ENGINE_STATUS_UPDATE, 16);
        sparseIntArray.append(99, 14);
        sparseIntArray.append(96, 11);
        sparseIntArray.append(100, 15);
        sparseIntArray.append(97, 12);
        sparseIntArray.append(89, 40);
        sparseIntArray.append(74, 39);
        sparseIntArray.append(73, 41);
        sparseIntArray.append(88, 42);
        sparseIntArray.append(72, 20);
        sparseIntArray.append(87, 37);
        sparseIntArray.append(62, 5);
        sparseIntArray.append(75, 82);
        sparseIntArray.append(84, 82);
        sparseIntArray.append(78, 82);
        sparseIntArray.append(56, 82);
        sparseIntArray.append(54, 82);
        sparseIntArray.append(5, 24);
        sparseIntArray.append(7, 28);
        sparseIntArray.append(23, 31);
        sparseIntArray.append(24, 8);
        sparseIntArray.append(6, 34);
        sparseIntArray.append(8, 2);
        sparseIntArray.append(3, 23);
        sparseIntArray.append(4, 21);
        sparseIntArray.append(2, 22);
        sparseIntArray.append(13, 43);
        sparseIntArray.append(26, 44);
        sparseIntArray.append(21, 45);
        sparseIntArray.append(22, 46);
        sparseIntArray.append(20, 60);
        sparseIntArray.append(18, 47);
        sparseIntArray.append(19, 48);
        sparseIntArray.append(14, 49);
        sparseIntArray.append(15, 50);
        sparseIntArray.append(16, 51);
        sparseIntArray.append(17, 52);
        sparseIntArray.append(25, 53);
        sparseIntArray.append(90, 54);
        sparseIntArray.append(68, 55);
        sparseIntArray.append(91, 56);
        sparseIntArray.append(69, 57);
        sparseIntArray.append(92, 58);
        sparseIntArray.append(70, 59);
        sparseIntArray.append(59, 61);
        sparseIntArray.append(61, 62);
        sparseIntArray.append(60, 63);
        sparseIntArray.append(27, 64);
        sparseIntArray.append(106, 65);
        sparseIntArray.append(33, 66);
        sparseIntArray.append(107, 67);
        sparseIntArray.append(103, 79);
        sparseIntArray.append(1, 38);
        sparseIntArray.append(102, 68);
        sparseIntArray.append(93, 69);
        sparseIntArray.append(71, 70);
        sparseIntArray.append(31, 71);
        sparseIntArray.append(29, 72);
        sparseIntArray.append(30, 73);
        sparseIntArray.append(32, 74);
        sparseIntArray.append(28, 75);
        sparseIntArray.append(LocationRequestCompat.QUALITY_LOW_POWER, 76);
        sparseIntArray.append(83, 77);
        sparseIntArray.append(108, 78);
        sparseIntArray.append(53, 80);
        sparseIntArray.append(52, 81);
    }

    public static int[] c(a aVar, String str) {
        int iIntValue;
        String[] strArrSplit = str.split(",");
        Context context = aVar.getContext();
        int[] iArr = new int[strArrSplit.length];
        int i3 = 0;
        int i4 = 0;
        while (i3 < strArrSplit.length) {
            String strTrim = strArrSplit[i3].trim();
            Object obj = null;
            try {
                iIntValue = p.class.getField(strTrim).getInt(null);
            } catch (Exception unused) {
                iIntValue = 0;
            }
            if (iIntValue == 0) {
                iIntValue = context.getResources().getIdentifier(strTrim, "id", context.getPackageName());
            }
            if (iIntValue == 0 && aVar.isInEditMode() && (aVar.getParent() instanceof ConstraintLayout)) {
                ConstraintLayout constraintLayout = (ConstraintLayout) aVar.getParent();
                if (strTrim != null) {
                    HashMap map = constraintLayout.f2806n;
                    if (map != null && map.containsKey(strTrim)) {
                        obj = constraintLayout.f2806n.get(strTrim);
                    }
                } else {
                    constraintLayout.getClass();
                }
                if (obj != null && (obj instanceof Integer)) {
                    iIntValue = ((Integer) obj).intValue();
                }
            }
            iArr[i4] = iIntValue;
            i3++;
            i4++;
        }
        return i4 != strArrSplit.length ? Arrays.copyOf(iArr, i4) : iArr;
    }

    public static h d(Context context, AttributeSet attributeSet) {
        h hVar = new h();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, q.f5986a);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i3 = 0; i3 < indexCount; i3++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i3);
            j jVar = hVar.f5905c;
            l lVar = hVar.f5907e;
            i iVar = hVar.f5906d;
            if (index != 1 && 23 != index && 24 != index) {
                jVar.getClass();
                iVar.getClass();
                lVar.getClass();
            }
            SparseIntArray sparseIntArray = f5983e;
            int i4 = sparseIntArray.get(index);
            k kVar = hVar.b;
            switch (i4) {
                case 1:
                    iVar.f5953o = f(typedArrayObtainStyledAttributes, index, iVar.f5953o);
                    break;
                case 2:
                    iVar.f5914F = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, iVar.f5914F);
                    break;
                case 3:
                    iVar.f5952n = f(typedArrayObtainStyledAttributes, index, iVar.f5952n);
                    break;
                case 4:
                    iVar.f5951m = f(typedArrayObtainStyledAttributes, index, iVar.f5951m);
                    break;
                case 5:
                    iVar.f5960v = typedArrayObtainStyledAttributes.getString(index);
                    break;
                case 6:
                    iVar.f5964z = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, iVar.f5964z);
                    break;
                case 7:
                    iVar.f5909A = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, iVar.f5909A);
                    break;
                case 8:
                    iVar.f5915G = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, iVar.f5915G);
                    break;
                case 9:
                    iVar.f5957s = f(typedArrayObtainStyledAttributes, index, iVar.f5957s);
                    break;
                case 10:
                    iVar.f5956r = f(typedArrayObtainStyledAttributes, index, iVar.f5956r);
                    break;
                case MotionEventCompat.AXIS_Z /* 11 */:
                    iVar.f5919L = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, iVar.f5919L);
                    break;
                case 12:
                    iVar.f5920M = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, iVar.f5920M);
                    break;
                case 13:
                    iVar.f5917I = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, iVar.f5917I);
                    break;
                case MotionEventCompat.AXIS_RZ /* 14 */:
                    iVar.K = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, iVar.K);
                    break;
                case MotionEventCompat.AXIS_HAT_X /* 15 */:
                    iVar.f5921N = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, iVar.f5921N);
                    break;
                case 16:
                    iVar.f5918J = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, iVar.f5918J);
                    break;
                case 17:
                    iVar.f5938d = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, iVar.f5938d);
                    break;
                case MotionEventCompat.AXIS_RTRIGGER /* 18 */:
                    iVar.f5940e = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, iVar.f5940e);
                    break;
                case 19:
                    iVar.f = typedArrayObtainStyledAttributes.getFloat(index, iVar.f);
                    break;
                case MotionEventCompat.AXIS_RUDDER /* 20 */:
                    iVar.f5958t = typedArrayObtainStyledAttributes.getFloat(index, iVar.f5958t);
                    break;
                case 21:
                    iVar.f5936c = typedArrayObtainStyledAttributes.getLayoutDimension(index, iVar.f5936c);
                    break;
                case 22:
                    int i5 = typedArrayObtainStyledAttributes.getInt(index, kVar.f5969a);
                    kVar.f5969a = i5;
                    kVar.f5969a = f5982d[i5];
                    break;
                case 23:
                    iVar.b = typedArrayObtainStyledAttributes.getLayoutDimension(index, iVar.b);
                    break;
                case 24:
                    iVar.f5911C = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, iVar.f5911C);
                    break;
                case 25:
                    iVar.g = f(typedArrayObtainStyledAttributes, index, iVar.g);
                    break;
                case 26:
                    iVar.f5944h = f(typedArrayObtainStyledAttributes, index, iVar.f5944h);
                    break;
                case 27:
                    iVar.f5910B = typedArrayObtainStyledAttributes.getInt(index, iVar.f5910B);
                    break;
                case MotionEventCompat.AXIS_RELATIVE_Y /* 28 */:
                    iVar.f5912D = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, iVar.f5912D);
                    break;
                case 29:
                    iVar.f5946i = f(typedArrayObtainStyledAttributes, index, iVar.f5946i);
                    break;
                case 30:
                    iVar.f5948j = f(typedArrayObtainStyledAttributes, index, iVar.f5948j);
                    break;
                case 31:
                    iVar.f5916H = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, iVar.f5916H);
                    break;
                case 32:
                    iVar.f5954p = f(typedArrayObtainStyledAttributes, index, iVar.f5954p);
                    break;
                case MotionEventCompat.AXIS_GENERIC_2 /* 33 */:
                    iVar.f5955q = f(typedArrayObtainStyledAttributes, index, iVar.f5955q);
                    break;
                case MotionEventCompat.AXIS_GENERIC_3 /* 34 */:
                    iVar.f5913E = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, iVar.f5913E);
                    break;
                case MotionEventCompat.AXIS_GENERIC_4 /* 35 */:
                    iVar.f5950l = f(typedArrayObtainStyledAttributes, index, iVar.f5950l);
                    break;
                case MotionEventCompat.AXIS_GENERIC_5 /* 36 */:
                    iVar.f5949k = f(typedArrayObtainStyledAttributes, index, iVar.f5949k);
                    break;
                case MotionEventCompat.AXIS_GENERIC_6 /* 37 */:
                    iVar.f5959u = typedArrayObtainStyledAttributes.getFloat(index, iVar.f5959u);
                    break;
                case MotionEventCompat.AXIS_GENERIC_7 /* 38 */:
                    hVar.f5904a = typedArrayObtainStyledAttributes.getResourceId(index, hVar.f5904a);
                    break;
                case MotionEventCompat.AXIS_GENERIC_8 /* 39 */:
                    iVar.f5923P = typedArrayObtainStyledAttributes.getFloat(index, iVar.f5923P);
                    break;
                case MotionEventCompat.AXIS_GENERIC_9 /* 40 */:
                    iVar.f5922O = typedArrayObtainStyledAttributes.getFloat(index, iVar.f5922O);
                    break;
                case MotionEventCompat.AXIS_GENERIC_10 /* 41 */:
                    iVar.f5924Q = typedArrayObtainStyledAttributes.getInt(index, iVar.f5924Q);
                    break;
                case MotionEventCompat.AXIS_GENERIC_11 /* 42 */:
                    iVar.f5925R = typedArrayObtainStyledAttributes.getInt(index, iVar.f5925R);
                    break;
                case MotionEventCompat.AXIS_GENERIC_12 /* 43 */:
                    kVar.f5970c = typedArrayObtainStyledAttributes.getFloat(index, kVar.f5970c);
                    break;
                case MotionEventCompat.AXIS_GENERIC_13 /* 44 */:
                    lVar.f5980k = true;
                    lVar.f5981l = typedArrayObtainStyledAttributes.getDimension(index, lVar.f5981l);
                    break;
                case MotionEventCompat.AXIS_GENERIC_14 /* 45 */:
                    lVar.b = typedArrayObtainStyledAttributes.getFloat(index, lVar.b);
                    break;
                case MotionEventCompat.AXIS_GENERIC_15 /* 46 */:
                    lVar.f5974c = typedArrayObtainStyledAttributes.getFloat(index, lVar.f5974c);
                    break;
                case MotionEventCompat.AXIS_GENERIC_16 /* 47 */:
                    lVar.f5975d = typedArrayObtainStyledAttributes.getFloat(index, lVar.f5975d);
                    break;
                case 48:
                    lVar.f5976e = typedArrayObtainStyledAttributes.getFloat(index, lVar.f5976e);
                    break;
                case 49:
                    lVar.f = typedArrayObtainStyledAttributes.getDimension(index, lVar.f);
                    break;
                case AccessibilityNodeInfoCompat.MAX_NUMBER_OF_PREFETCHED_NODES /* 50 */:
                    lVar.g = typedArrayObtainStyledAttributes.getDimension(index, lVar.g);
                    break;
                case 51:
                    lVar.f5977h = typedArrayObtainStyledAttributes.getDimension(index, lVar.f5977h);
                    break;
                case 52:
                    lVar.f5978i = typedArrayObtainStyledAttributes.getDimension(index, lVar.f5978i);
                    break;
                case 53:
                    lVar.f5979j = typedArrayObtainStyledAttributes.getDimension(index, lVar.f5979j);
                    break;
                case 54:
                    iVar.f5926S = typedArrayObtainStyledAttributes.getInt(index, iVar.f5926S);
                    break;
                case 55:
                    iVar.f5927T = typedArrayObtainStyledAttributes.getInt(index, iVar.f5927T);
                    break;
                case 56:
                    iVar.f5928U = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, iVar.f5928U);
                    break;
                case 57:
                    iVar.f5929V = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, iVar.f5929V);
                    break;
                case 58:
                    iVar.f5930W = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, iVar.f5930W);
                    break;
                case 59:
                    iVar.f5931X = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, iVar.f5931X);
                    break;
                case 60:
                    lVar.f5973a = typedArrayObtainStyledAttributes.getFloat(index, lVar.f5973a);
                    break;
                case 61:
                    iVar.f5961w = f(typedArrayObtainStyledAttributes, index, iVar.f5961w);
                    break;
                case 62:
                    iVar.f5962x = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, iVar.f5962x);
                    break;
                case HtmlCompat.FROM_HTML_MODE_COMPACT /* 63 */:
                    iVar.f5963y = typedArrayObtainStyledAttributes.getFloat(index, iVar.f5963y);
                    break;
                case 64:
                    jVar.f5966a = f(typedArrayObtainStyledAttributes, index, jVar.f5966a);
                    break;
                case 65:
                    if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                        typedArrayObtainStyledAttributes.getString(index);
                        jVar.getClass();
                    } else {
                        String str = a.f5317a[typedArrayObtainStyledAttributes.getInteger(index, 0)];
                        jVar.getClass();
                    }
                    break;
                case 66:
                    typedArrayObtainStyledAttributes.getInt(index, 0);
                    jVar.getClass();
                    break;
                case 67:
                    jVar.f5968d = typedArrayObtainStyledAttributes.getFloat(index, jVar.f5968d);
                    break;
                case 68:
                    kVar.f5971d = typedArrayObtainStyledAttributes.getFloat(index, kVar.f5971d);
                    break;
                case 69:
                    iVar.f5932Y = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                    break;
                case 70:
                    iVar.Z = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                    break;
                case 71:
                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                    break;
                case 72:
                    iVar.f5934a0 = typedArrayObtainStyledAttributes.getInt(index, iVar.f5934a0);
                    break;
                case 73:
                    iVar.f5935b0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, iVar.f5935b0);
                    break;
                case 74:
                    iVar.f5941e0 = typedArrayObtainStyledAttributes.getString(index);
                    break;
                case 75:
                    iVar.f5947i0 = typedArrayObtainStyledAttributes.getBoolean(index, iVar.f5947i0);
                    break;
                case 76:
                    jVar.b = typedArrayObtainStyledAttributes.getInt(index, jVar.b);
                    break;
                case 77:
                    iVar.f5942f0 = typedArrayObtainStyledAttributes.getString(index);
                    break;
                case 78:
                    kVar.b = typedArrayObtainStyledAttributes.getInt(index, kVar.b);
                    break;
                case 79:
                    jVar.f5967c = typedArrayObtainStyledAttributes.getFloat(index, jVar.f5967c);
                    break;
                case 80:
                    iVar.f5943g0 = typedArrayObtainStyledAttributes.getBoolean(index, iVar.f5943g0);
                    break;
                case 81:
                    iVar.f5945h0 = typedArrayObtainStyledAttributes.getBoolean(index, iVar.f5945h0);
                    break;
                case 82:
                    Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index));
                    break;
                default:
                    Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index));
                    break;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        return hVar;
    }

    public static int f(TypedArray typedArray, int i3, int i4) {
        int resourceId = typedArray.getResourceId(i3, i4);
        return resourceId == -1 ? typedArray.getInt(i3, -1) : resourceId;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final void a(ConstraintLayout constraintLayout) {
        int i3;
        HashSet hashSet;
        int i4;
        int i5;
        String resourceEntryName;
        m mVar = this;
        int childCount = constraintLayout.getChildCount();
        HashMap map = mVar.f5985c;
        HashSet<Integer> hashSet2 = new HashSet(map.keySet());
        int i6 = 0;
        while (i6 < childCount) {
            View childAt = constraintLayout.getChildAt(i6);
            int id = childAt.getId();
            if (!map.containsKey(Integer.valueOf(id))) {
                StringBuilder sb = new StringBuilder("id unknown ");
                try {
                    resourceEntryName = childAt.getContext().getResources().getResourceEntryName(childAt.getId());
                } catch (Exception unused) {
                    resourceEntryName = "UNKNOWN";
                }
                sb.append(resourceEntryName);
                Log.w("ConstraintSet", sb.toString());
            } else {
                if (mVar.b && id == -1) {
                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                }
                if (id != -1) {
                    if (map.containsKey(Integer.valueOf(id))) {
                        hashSet2.remove(Integer.valueOf(id));
                        h hVar = (h) map.get(Integer.valueOf(id));
                        if (childAt instanceof a) {
                            hVar.f5906d.f5937c0 = 1;
                        }
                        i iVar = hVar.f5906d;
                        k kVar = hVar.b;
                        l lVar = hVar.f5907e;
                        int i7 = iVar.f5937c0;
                        if (i7 != -1 && i7 == 1) {
                            a aVar = (a) childAt;
                            aVar.setId(id);
                            aVar.setType(iVar.f5934a0);
                            aVar.setMargin(iVar.f5935b0);
                            aVar.setAllowsGoneWidget(iVar.f5947i0);
                            int[] iArr = iVar.f5939d0;
                            if (iArr != null) {
                                aVar.setReferencedIds(iArr);
                            } else {
                                String str = iVar.f5941e0;
                                if (str != null) {
                                    int[] iArrC = c(aVar, str);
                                    iVar.f5939d0 = iArrC;
                                    aVar.setReferencedIds(iArrC);
                                }
                            }
                        }
                        e eVar = (e) childAt.getLayoutParams();
                        eVar.a();
                        hVar.a(eVar);
                        HashMap map2 = hVar.f;
                        Class<?> cls = childAt.getClass();
                        for (String str2 : map2.keySet()) {
                            b bVar = (b) map2.get(str2);
                            int i8 = childCount;
                            String strO = kotlin.collections.unsigned.a.o("set", str2);
                            HashSet hashSet3 = hashSet2;
                            try {
                                int iA = h.a(bVar.f5830a);
                                Class cls2 = Integer.TYPE;
                                Class cls3 = Float.TYPE;
                                switch (iA) {
                                    case 0:
                                        i5 = i6;
                                        cls.getMethod(strO, cls2).invoke(childAt, Integer.valueOf(bVar.b));
                                        break;
                                    case 1:
                                        i5 = i6;
                                        cls.getMethod(strO, cls3).invoke(childAt, Float.valueOf(bVar.f5831c));
                                        break;
                                    case 2:
                                        i5 = i6;
                                        cls.getMethod(strO, cls2).invoke(childAt, Integer.valueOf(bVar.f));
                                        break;
                                    case 3:
                                        Method method = cls.getMethod(strO, Drawable.class);
                                        i5 = i6;
                                        try {
                                            ColorDrawable colorDrawable = new ColorDrawable();
                                            colorDrawable.setColor(bVar.f);
                                            method.invoke(childAt, colorDrawable);
                                        } catch (IllegalAccessException e2) {
                                            e = e2;
                                            StringBuilder sbQ = b.q(" Custom Attribute \"", str2, "\" not found on ");
                                            sbQ.append(cls.getName());
                                            Log.e("TransitionLayout", sbQ.toString());
                                            e.printStackTrace();
                                        } catch (NoSuchMethodException e3) {
                                            e = e3;
                                            Log.e("TransitionLayout", e.getMessage());
                                            Log.e("TransitionLayout", " Custom Attribute \"" + str2 + "\" not found on " + cls.getName());
                                            Log.e("TransitionLayout", cls.getName() + " must have a method " + strO);
                                        } catch (InvocationTargetException e4) {
                                            e = e4;
                                            StringBuilder sbQ2 = b.q(" Custom Attribute \"", str2, "\" not found on ");
                                            sbQ2.append(cls.getName());
                                            Log.e("TransitionLayout", sbQ2.toString());
                                            e.printStackTrace();
                                        }
                                        break;
                                    case 4:
                                        cls.getMethod(strO, CharSequence.class).invoke(childAt, bVar.f5832d);
                                        i5 = i6;
                                        break;
                                    case 5:
                                        cls.getMethod(strO, Boolean.TYPE).invoke(childAt, Boolean.valueOf(bVar.f5833e));
                                        i5 = i6;
                                        break;
                                    case 6:
                                        cls.getMethod(strO, cls3).invoke(childAt, Float.valueOf(bVar.f5831c));
                                        i5 = i6;
                                        break;
                                    default:
                                        i5 = i6;
                                        break;
                                }
                            } catch (IllegalAccessException e5) {
                                e = e5;
                                i5 = i6;
                            } catch (NoSuchMethodException e6) {
                                e = e6;
                                i5 = i6;
                            } catch (InvocationTargetException e7) {
                                e = e7;
                                i5 = i6;
                            }
                            childCount = i8;
                            hashSet2 = hashSet3;
                            i6 = i5;
                        }
                        i3 = childCount;
                        hashSet = hashSet2;
                        i4 = i6;
                        childAt.setLayoutParams(eVar);
                        if (kVar.b == 0) {
                            childAt.setVisibility(kVar.f5969a);
                        }
                        childAt.setAlpha(kVar.f5970c);
                        childAt.setRotation(lVar.f5973a);
                        childAt.setRotationX(lVar.b);
                        childAt.setRotationY(lVar.f5974c);
                        childAt.setScaleX(lVar.f5975d);
                        childAt.setScaleY(lVar.f5976e);
                        if (!Float.isNaN(lVar.f)) {
                            childAt.setPivotX(lVar.f);
                        }
                        if (!Float.isNaN(lVar.g)) {
                            childAt.setPivotY(lVar.g);
                        }
                        childAt.setTranslationX(lVar.f5977h);
                        childAt.setTranslationY(lVar.f5978i);
                        childAt.setTranslationZ(lVar.f5979j);
                        if (lVar.f5980k) {
                            childAt.setElevation(lVar.f5981l);
                        }
                    } else {
                        i3 = childCount;
                        hashSet = hashSet2;
                        i4 = i6;
                        Log.v("ConstraintSet", "WARNING NO CONSTRAINTS for view " + id);
                    }
                }
                i6 = i4 + 1;
                mVar = this;
                childCount = i3;
                hashSet2 = hashSet;
            }
            i3 = childCount;
            hashSet = hashSet2;
            i4 = i6;
            i6 = i4 + 1;
            mVar = this;
            childCount = i3;
            hashSet2 = hashSet;
        }
        for (Integer num : hashSet2) {
            h hVar2 = (h) map.get(num);
            i iVar2 = hVar2.f5906d;
            int i9 = iVar2.f5937c0;
            if (i9 != -1 && i9 == 1) {
                Context context = constraintLayout.getContext();
                a aVar2 = new a(context);
                aVar2.b = new int[32];
                aVar2.g = new HashMap();
                aVar2.f5835d = context;
                p053v.a aVar3 = new p053v.a();
                aVar3.f5425f0 = 0;
                aVar3.f5426g0 = true;
                aVar3.f5427h0 = 0;
                aVar2.f5829j = aVar3;
                aVar2.f5836e = aVar3;
                aVar2.g();
                aVar2.setVisibility(8);
                aVar2.setId(num.intValue());
                int[] iArr2 = iVar2.f5939d0;
                if (iArr2 != null) {
                    aVar2.setReferencedIds(iArr2);
                } else {
                    String str3 = iVar2.f5941e0;
                    if (str3 != null) {
                        int[] iArrC2 = c(aVar2, str3);
                        iVar2.f5939d0 = iArrC2;
                        aVar2.setReferencedIds(iArrC2);
                    }
                }
                aVar2.setType(iVar2.f5934a0);
                aVar2.setMargin(iVar2.f5935b0);
                e eVarA = ConstraintLayout.a();
                aVar2.g();
                hVar2.a(eVarA);
                constraintLayout.addView(aVar2, eVarA);
            }
            if (iVar2.f5933a) {
                View oVar = new o(constraintLayout.getContext());
                oVar.setId(num.intValue());
                e eVarA2 = ConstraintLayout.a();
                hVar2.a(eVarA2);
                constraintLayout.addView(oVar, eVarA2);
            }
        }
    }

    public final void b(ConstraintLayout constraintLayout) {
        m mVar = this;
        int childCount = constraintLayout.getChildCount();
        HashMap map = mVar.f5985c;
        map.clear();
        int i3 = 0;
        while (i3 < childCount) {
            View childAt = constraintLayout.getChildAt(i3);
            e eVar = (e) childAt.getLayoutParams();
            int id = childAt.getId();
            if (mVar.b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!map.containsKey(Integer.valueOf(id))) {
                map.put(Integer.valueOf(id), new h());
            }
            h hVar = (h) map.get(Integer.valueOf(id));
            HashMap map2 = new HashMap();
            Class<?> cls = childAt.getClass();
            HashMap map3 = mVar.f5984a;
            for (String str : map3.keySet()) {
                b bVar = (b) map3.get(str);
                try {
                    if (str.equals("BackgroundColor")) {
                        map2.put(str, new b(bVar, Integer.valueOf(((ColorDrawable) childAt.getBackground()).getColor())));
                    } else {
                        map2.put(str, new b(bVar, cls.getMethod("getMap" + str, null).invoke(childAt, null)));
                    }
                } catch (IllegalAccessException e2) {
                    e2.printStackTrace();
                } catch (NoSuchMethodException e3) {
                    e3.printStackTrace();
                } catch (InvocationTargetException e4) {
                    e4.printStackTrace();
                }
            }
            hVar.f = map2;
            k kVar = hVar.b;
            i iVar = hVar.f5906d;
            l lVar = hVar.f5907e;
            hVar.f5904a = id;
            iVar.g = eVar.f5867d;
            iVar.f5944h = eVar.f5869e;
            iVar.f5946i = eVar.f;
            iVar.f5948j = eVar.g;
            iVar.f5949k = eVar.f5873h;
            iVar.f5950l = eVar.f5875i;
            iVar.f5951m = eVar.f5877j;
            iVar.f5952n = eVar.f5879k;
            iVar.f5953o = eVar.f5881l;
            iVar.f5954p = eVar.f5885p;
            iVar.f5955q = eVar.f5886q;
            iVar.f5956r = eVar.f5887r;
            iVar.f5957s = eVar.f5888s;
            iVar.f5958t = eVar.f5895z;
            iVar.f5959u = eVar.f5838A;
            iVar.f5960v = eVar.f5839B;
            iVar.f5961w = eVar.f5882m;
            iVar.f5962x = eVar.f5883n;
            iVar.f5963y = eVar.f5884o;
            iVar.f5964z = eVar.f5852P;
            iVar.f5909A = eVar.f5853Q;
            iVar.f5910B = eVar.f5854R;
            iVar.f = eVar.f5865c;
            iVar.f5938d = eVar.f5862a;
            iVar.f5940e = eVar.b;
            iVar.b = ((ViewGroup.MarginLayoutParams) eVar).width;
            iVar.f5936c = ((ViewGroup.MarginLayoutParams) eVar).height;
            iVar.f5911C = ((ViewGroup.MarginLayoutParams) eVar).leftMargin;
            iVar.f5912D = ((ViewGroup.MarginLayoutParams) eVar).rightMargin;
            iVar.f5913E = ((ViewGroup.MarginLayoutParams) eVar).topMargin;
            iVar.f5914F = ((ViewGroup.MarginLayoutParams) eVar).bottomMargin;
            iVar.f5922O = eVar.f5842E;
            iVar.f5923P = eVar.f5841D;
            iVar.f5925R = eVar.f5844G;
            iVar.f5924Q = eVar.f5843F;
            iVar.f5943g0 = eVar.f5855S;
            iVar.f5945h0 = eVar.f5856T;
            iVar.f5926S = eVar.f5845H;
            iVar.f5927T = eVar.f5846I;
            iVar.f5928U = eVar.f5848L;
            iVar.f5929V = eVar.f5849M;
            iVar.f5930W = eVar.f5847J;
            iVar.f5931X = eVar.K;
            iVar.f5932Y = eVar.f5850N;
            iVar.Z = eVar.f5851O;
            iVar.f5942f0 = eVar.f5857U;
            iVar.f5918J = eVar.f5890u;
            iVar.f5919L = eVar.f5892w;
            iVar.f5917I = eVar.f5889t;
            iVar.K = eVar.f5891v;
            iVar.f5921N = eVar.f5893x;
            iVar.f5920M = eVar.f5894y;
            iVar.f5915G = eVar.getMarginEnd();
            iVar.f5916H = eVar.getMarginStart();
            kVar.f5969a = childAt.getVisibility();
            kVar.f5970c = childAt.getAlpha();
            lVar.f5973a = childAt.getRotation();
            lVar.b = childAt.getRotationX();
            lVar.f5974c = childAt.getRotationY();
            lVar.f5975d = childAt.getScaleX();
            lVar.f5976e = childAt.getScaleY();
            float pivotX = childAt.getPivotX();
            float pivotY = childAt.getPivotY();
            if (pivotX != 0.0d || pivotY != 0.0d) {
                lVar.f = pivotX;
                lVar.g = pivotY;
            }
            lVar.f5977h = childAt.getTranslationX();
            lVar.f5978i = childAt.getTranslationY();
            lVar.f5979j = childAt.getTranslationZ();
            if (lVar.f5980k) {
                lVar.f5981l = childAt.getElevation();
            }
            if (childAt instanceof a) {
                a aVar = (a) childAt;
                iVar.f5947i0 = aVar.f5829j.f5426g0;
                iVar.f5939d0 = aVar.getReferencedIds();
                iVar.f5934a0 = aVar.getType();
                iVar.f5935b0 = aVar.getMargin();
            }
            i3++;
            mVar = this;
        }
    }

    public final void e(Context context, int i3) {
        XmlResourceParser xml = context.getResources().getXml(i3);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    h hVarD = d(context, Xml.asAttributeSet(xml));
                    if (name.equalsIgnoreCase("Guideline")) {
                        hVarD.f5906d.f5933a = true;
                    }
                    this.f5985c.put(Integer.valueOf(hVarD.f5904a), hVarD);
                }
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        } catch (XmlPullParserException e3) {
            e3.printStackTrace();
        }
    }
}
