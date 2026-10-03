package androidx.constraintlayout.widget;

import A1.C0013d;
import C0.b;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import kotlin.jvm.internal.IntCompanionObject;
import org.xmlpull.v1.XmlPullParserException;
import p053v.d;
import p053v.e;
import p053v.h;
import p053v.i;
import p056w.j;
import p056w.l;
import p059x.c;
import p059x.f;
import p059x.g;
import p059x.m;
import p059x.n;
import p059x.o;
import p059x.q;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class ConstraintLayout extends ViewGroup {
    public final SparseArray b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f2797c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final e f2798d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2799e;
    public int f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2800h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f2801i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f2802j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public m f2803k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public C0013d f2804l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f2805m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public HashMap f2806n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final SparseArray f2807o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final f f2808p;

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = new SparseArray();
        this.f2797c = new ArrayList(4);
        this.f2798d = new e();
        this.f2799e = 0;
        this.f = 0;
        this.g = IntCompanionObject.MAX_VALUE;
        this.f2800h = IntCompanionObject.MAX_VALUE;
        this.f2801i = true;
        this.f2802j = 263;
        this.f2803k = null;
        this.f2804l = null;
        this.f2805m = -1;
        this.f2806n = new HashMap();
        this.f2807o = new SparseArray();
        this.f2808p = new f(this);
        c(attributeSet, 0);
    }

    public static p059x.e a() {
        p059x.e eVar = new p059x.e(-2, -2);
        eVar.f5862a = -1;
        eVar.b = -1;
        eVar.f5865c = -1.0f;
        eVar.f5867d = -1;
        eVar.f5869e = -1;
        eVar.f = -1;
        eVar.g = -1;
        eVar.f5873h = -1;
        eVar.f5875i = -1;
        eVar.f5877j = -1;
        eVar.f5879k = -1;
        eVar.f5881l = -1;
        eVar.f5882m = -1;
        eVar.f5883n = 0;
        eVar.f5884o = 0.0f;
        eVar.f5885p = -1;
        eVar.f5886q = -1;
        eVar.f5887r = -1;
        eVar.f5888s = -1;
        eVar.f5889t = -1;
        eVar.f5890u = -1;
        eVar.f5891v = -1;
        eVar.f5892w = -1;
        eVar.f5893x = -1;
        eVar.f5894y = -1;
        eVar.f5895z = 0.5f;
        eVar.f5838A = 0.5f;
        eVar.f5839B = null;
        eVar.f5840C = 1;
        eVar.f5841D = -1.0f;
        eVar.f5842E = -1.0f;
        eVar.f5843F = 0;
        eVar.f5844G = 0;
        eVar.f5845H = 0;
        eVar.f5846I = 0;
        eVar.f5847J = 0;
        eVar.K = 0;
        eVar.f5848L = 0;
        eVar.f5849M = 0;
        eVar.f5850N = 1.0f;
        eVar.f5851O = 1.0f;
        eVar.f5852P = -1;
        eVar.f5853Q = -1;
        eVar.f5854R = -1;
        eVar.f5855S = false;
        eVar.f5856T = false;
        eVar.f5857U = null;
        eVar.f5858V = true;
        eVar.f5859W = true;
        eVar.f5860X = false;
        eVar.f5861Y = false;
        eVar.Z = false;
        eVar.f5863a0 = -1;
        eVar.f5864b0 = -1;
        eVar.f5866c0 = -1;
        eVar.f5868d0 = -1;
        eVar.f5870e0 = -1;
        eVar.f5871f0 = -1;
        eVar.f5872g0 = 0.5f;
        eVar.f5880k0 = new d();
        return eVar;
    }

    private int getPaddingWidth() {
        int iMax = Math.max(0, getPaddingRight()) + Math.max(0, getPaddingLeft());
        int iMax2 = Math.max(0, getPaddingEnd()) + Math.max(0, getPaddingStart());
        return iMax2 > 0 ? iMax2 : iMax;
    }

    public final d b(View view) {
        if (view == this) {
            return this.f2798d;
        }
        if (view == null) {
            return null;
        }
        return ((p059x.e) view.getLayoutParams()).f5880k0;
    }

    public final void c(AttributeSet attributeSet, int i3) {
        e eVar = this.f2798d;
        eVar.f5465U = this;
        f fVar = this.f2808p;
        eVar.f5499g0 = fVar;
        eVar.f5498f0.f = fVar;
        this.b.put(getId(), this);
        this.f2803k = null;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, q.b, i3, 0);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i4 = 0; i4 < indexCount; i4++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i4);
                if (index == 9) {
                    this.f2799e = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f2799e);
                } else if (index == 10) {
                    this.f = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f);
                } else if (index == 7) {
                    this.g = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.g);
                } else if (index == 8) {
                    this.f2800h = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f2800h);
                } else if (index == 89) {
                    this.f2802j = typedArrayObtainStyledAttributes.getInt(index, this.f2802j);
                } else if (index == 38) {
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            d(resourceId);
                        } catch (Resources.NotFoundException unused) {
                            this.f2804l = null;
                        }
                    }
                } else if (index == 18) {
                    int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    try {
                        m mVar = new m();
                        this.f2803k = mVar;
                        mVar.e(getContext(), resourceId2);
                    } catch (Resources.NotFoundException unused2) {
                        this.f2803k = null;
                    }
                    this.f2805m = resourceId2;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        int i5 = this.f2802j;
        eVar.p0 = i5;
        p051u.e.f5344p = (i5 & 256) == 256;
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof p059x.e;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x008d A[Catch: IOException -> 0x0054, XmlPullParserException -> 0x0056, TryCatch #2 {IOException -> 0x0054, XmlPullParserException -> 0x0056, blocks: (B:3:0x0022, B:36:0x00a7, B:10:0x0031, B:11:0x0039, B:34:0x008d, B:13:0x003d, B:15:0x0045, B:17:0x004c, B:22:0x0058, B:25:0x0061, B:28:0x006a, B:30:0x0072, B:31:0x0081, B:33:0x0089, B:35:0x00a4), top: B:42:0x0022 }] */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Instruction removed from duplicated block: B:34:0x008d, please report this as an issue */
    public final void d(int i3) {
        Context context = getContext();
        C0013d c0013d = new C0013d(25, false);
        c0013d.f177c = new SparseArray();
        c0013d.f178d = new SparseArray();
        XmlResourceParser xml = context.getResources().getXml(i3);
        try {
            b bVar = null;
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    switch (name.hashCode()) {
                        case -1349929691:
                            if (name.equals("ConstraintSet")) {
                                c0013d.y(context, xml);
                            } else {
                                Log.v("ConstraintLayoutStates", "unknown tag " + name);
                            }
                            break;
                        case 80204913:
                            if (name.equals("State")) {
                                bVar = new b(context, xml);
                                ((SparseArray) c0013d.f177c).put(bVar.f384a, bVar);
                            } else {
                                Log.v("ConstraintLayoutStates", "unknown tag " + name);
                            }
                            break;
                        case 1382829617:
                            if (!name.equals("StateSet")) {
                                Log.v("ConstraintLayoutStates", "unknown tag " + name);
                            }
                            break;
                        case 1657696882:
                            if (!name.equals("layoutDescription")) {
                                Log.v("ConstraintLayoutStates", "unknown tag " + name);
                            }
                            break;
                        case 1901439077:
                            if (name.equals("Variant")) {
                                g gVar = new g(context, xml);
                                if (bVar != null) {
                                    ((ArrayList) bVar.f385c).add(gVar);
                                }
                            } else {
                                Log.v("ConstraintLayoutStates", "unknown tag " + name);
                            }
                            break;
                        default:
                            Log.v("ConstraintLayoutStates", "unknown tag " + name);
                            break;
                    }
                }
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        } catch (XmlPullParserException e3) {
            e3.printStackTrace();
        }
        this.f2804l = c0013d;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        Object tag;
        int size;
        ArrayList arrayList = this.f2797c;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i3 = 0; i3 < size; i3++) {
                ((c) arrayList.get(i3)).getClass();
            }
        }
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            int childCount = getChildCount();
            float width = getWidth();
            float height = getHeight();
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = getChildAt(i4);
                if (childAt.getVisibility() != 8 && (tag = childAt.getTag()) != null && (tag instanceof String)) {
                    String[] strArrSplit = ((String) tag).split(",");
                    if (strArrSplit.length == 4) {
                        int i5 = Integer.parseInt(strArrSplit[0]);
                        int i6 = Integer.parseInt(strArrSplit[1]);
                        int i7 = Integer.parseInt(strArrSplit[2]);
                        int i8 = (int) ((i5 / 1080.0f) * width);
                        int i9 = (int) ((i6 / 1920.0f) * height);
                        int i10 = (int) ((Integer.parseInt(strArrSplit[3]) / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(SupportMenu.CATEGORY_MASK);
                        float f = i8;
                        float f3 = i9;
                        float f4 = i8 + ((int) ((i7 / 1080.0f) * width));
                        canvas.drawLine(f, f3, f4, f3, paint);
                        float f5 = i9 + i10;
                        canvas.drawLine(f4, f3, f4, f5, paint);
                        canvas.drawLine(f4, f5, f, f5, paint);
                        canvas.drawLine(f, f5, f, f3, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f, f3, f4, f5, paint);
                        canvas.drawLine(f, f5, f4, f3, paint);
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public final void forceLayout() {
        this.f2801i = true;
        super.forceLayout();
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return a();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        int i3;
        Context context = getContext();
        p059x.e eVar = new p059x.e(context, attributeSet);
        eVar.f5862a = -1;
        eVar.b = -1;
        eVar.f5865c = -1.0f;
        eVar.f5867d = -1;
        eVar.f5869e = -1;
        eVar.f = -1;
        eVar.g = -1;
        eVar.f5873h = -1;
        eVar.f5875i = -1;
        eVar.f5877j = -1;
        eVar.f5879k = -1;
        eVar.f5881l = -1;
        eVar.f5882m = -1;
        eVar.f5883n = 0;
        eVar.f5884o = 0.0f;
        eVar.f5885p = -1;
        eVar.f5886q = -1;
        eVar.f5887r = -1;
        eVar.f5888s = -1;
        eVar.f5889t = -1;
        eVar.f5890u = -1;
        eVar.f5891v = -1;
        eVar.f5892w = -1;
        eVar.f5893x = -1;
        eVar.f5894y = -1;
        eVar.f5895z = 0.5f;
        eVar.f5838A = 0.5f;
        eVar.f5839B = null;
        eVar.f5840C = 1;
        eVar.f5841D = -1.0f;
        eVar.f5842E = -1.0f;
        eVar.f5843F = 0;
        eVar.f5844G = 0;
        eVar.f5845H = 0;
        eVar.f5846I = 0;
        eVar.f5847J = 0;
        eVar.K = 0;
        eVar.f5848L = 0;
        eVar.f5849M = 0;
        eVar.f5850N = 1.0f;
        eVar.f5851O = 1.0f;
        eVar.f5852P = -1;
        eVar.f5853Q = -1;
        eVar.f5854R = -1;
        eVar.f5855S = false;
        eVar.f5856T = false;
        eVar.f5857U = null;
        eVar.f5858V = true;
        eVar.f5859W = true;
        eVar.f5860X = false;
        eVar.f5861Y = false;
        eVar.Z = false;
        eVar.f5863a0 = -1;
        eVar.f5864b0 = -1;
        eVar.f5866c0 = -1;
        eVar.f5868d0 = -1;
        eVar.f5870e0 = -1;
        eVar.f5871f0 = -1;
        eVar.f5872g0 = 0.5f;
        eVar.f5880k0 = new d();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, q.b);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i4 = 0; i4 < indexCount; i4++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i4);
            int i5 = p059x.d.f5837a.get(index);
            switch (i5) {
                case 1:
                    eVar.f5854R = typedArrayObtainStyledAttributes.getInt(index, eVar.f5854R);
                    break;
                case 2:
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f5882m);
                    eVar.f5882m = resourceId;
                    if (resourceId == -1) {
                        eVar.f5882m = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 3:
                    eVar.f5883n = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.f5883n);
                    break;
                case 4:
                    float f = typedArrayObtainStyledAttributes.getFloat(index, eVar.f5884o) % 360.0f;
                    eVar.f5884o = f;
                    if (f < 0.0f) {
                        eVar.f5884o = (360.0f - f) % 360.0f;
                    }
                    break;
                case 5:
                    eVar.f5862a = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, eVar.f5862a);
                    break;
                case 6:
                    eVar.b = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, eVar.b);
                    break;
                case 7:
                    eVar.f5865c = typedArrayObtainStyledAttributes.getFloat(index, eVar.f5865c);
                    break;
                case 8:
                    int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f5867d);
                    eVar.f5867d = resourceId2;
                    if (resourceId2 == -1) {
                        eVar.f5867d = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 9:
                    int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f5869e);
                    eVar.f5869e = resourceId3;
                    if (resourceId3 == -1) {
                        eVar.f5869e = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 10:
                    int resourceId4 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f);
                    eVar.f = resourceId4;
                    if (resourceId4 == -1) {
                        eVar.f = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case MotionEventCompat.AXIS_Z /* 11 */:
                    int resourceId5 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.g);
                    eVar.g = resourceId5;
                    if (resourceId5 == -1) {
                        eVar.g = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 12:
                    int resourceId6 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f5873h);
                    eVar.f5873h = resourceId6;
                    if (resourceId6 == -1) {
                        eVar.f5873h = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 13:
                    int resourceId7 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f5875i);
                    eVar.f5875i = resourceId7;
                    if (resourceId7 == -1) {
                        eVar.f5875i = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case MotionEventCompat.AXIS_RZ /* 14 */:
                    int resourceId8 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f5877j);
                    eVar.f5877j = resourceId8;
                    if (resourceId8 == -1) {
                        eVar.f5877j = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case MotionEventCompat.AXIS_HAT_X /* 15 */:
                    int resourceId9 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f5879k);
                    eVar.f5879k = resourceId9;
                    if (resourceId9 == -1) {
                        eVar.f5879k = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 16:
                    int resourceId10 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f5881l);
                    eVar.f5881l = resourceId10;
                    if (resourceId10 == -1) {
                        eVar.f5881l = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 17:
                    int resourceId11 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f5885p);
                    eVar.f5885p = resourceId11;
                    if (resourceId11 == -1) {
                        eVar.f5885p = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case MotionEventCompat.AXIS_RTRIGGER /* 18 */:
                    int resourceId12 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f5886q);
                    eVar.f5886q = resourceId12;
                    if (resourceId12 == -1) {
                        eVar.f5886q = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 19:
                    int resourceId13 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f5887r);
                    eVar.f5887r = resourceId13;
                    if (resourceId13 == -1) {
                        eVar.f5887r = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case MotionEventCompat.AXIS_RUDDER /* 20 */:
                    int resourceId14 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f5888s);
                    eVar.f5888s = resourceId14;
                    if (resourceId14 == -1) {
                        eVar.f5888s = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 21:
                    eVar.f5889t = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.f5889t);
                    break;
                case 22:
                    eVar.f5890u = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.f5890u);
                    break;
                case 23:
                    eVar.f5891v = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.f5891v);
                    break;
                case 24:
                    eVar.f5892w = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.f5892w);
                    break;
                case 25:
                    eVar.f5893x = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.f5893x);
                    break;
                case 26:
                    eVar.f5894y = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.f5894y);
                    break;
                case 27:
                    eVar.f5855S = typedArrayObtainStyledAttributes.getBoolean(index, eVar.f5855S);
                    break;
                case MotionEventCompat.AXIS_RELATIVE_Y /* 28 */:
                    eVar.f5856T = typedArrayObtainStyledAttributes.getBoolean(index, eVar.f5856T);
                    break;
                case 29:
                    eVar.f5895z = typedArrayObtainStyledAttributes.getFloat(index, eVar.f5895z);
                    break;
                case 30:
                    eVar.f5838A = typedArrayObtainStyledAttributes.getFloat(index, eVar.f5838A);
                    break;
                case 31:
                    int i6 = typedArrayObtainStyledAttributes.getInt(index, 0);
                    eVar.f5845H = i6;
                    if (i6 == 1) {
                        Log.e("ConstraintLayout", "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.");
                    }
                    break;
                case 32:
                    int i7 = typedArrayObtainStyledAttributes.getInt(index, 0);
                    eVar.f5846I = i7;
                    if (i7 == 1) {
                        Log.e("ConstraintLayout", "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.");
                    }
                    break;
                case MotionEventCompat.AXIS_GENERIC_2 /* 33 */:
                    try {
                        eVar.f5847J = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.f5847J);
                    } catch (Exception unused) {
                        if (typedArrayObtainStyledAttributes.getInt(index, eVar.f5847J) == -2) {
                            eVar.f5847J = -2;
                        }
                    }
                    break;
                case MotionEventCompat.AXIS_GENERIC_3 /* 34 */:
                    try {
                        eVar.f5848L = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.f5848L);
                    } catch (Exception unused2) {
                        if (typedArrayObtainStyledAttributes.getInt(index, eVar.f5848L) == -2) {
                            eVar.f5848L = -2;
                        }
                    }
                    break;
                case MotionEventCompat.AXIS_GENERIC_4 /* 35 */:
                    eVar.f5850N = Math.max(0.0f, typedArrayObtainStyledAttributes.getFloat(index, eVar.f5850N));
                    eVar.f5845H = 2;
                    break;
                case MotionEventCompat.AXIS_GENERIC_5 /* 36 */:
                    try {
                        eVar.K = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.K);
                    } catch (Exception unused3) {
                        if (typedArrayObtainStyledAttributes.getInt(index, eVar.K) == -2) {
                            eVar.K = -2;
                        }
                    }
                    break;
                case MotionEventCompat.AXIS_GENERIC_6 /* 37 */:
                    try {
                        eVar.f5849M = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.f5849M);
                    } catch (Exception unused4) {
                        if (typedArrayObtainStyledAttributes.getInt(index, eVar.f5849M) == -2) {
                            eVar.f5849M = -2;
                        }
                    }
                    break;
                case MotionEventCompat.AXIS_GENERIC_7 /* 38 */:
                    eVar.f5851O = Math.max(0.0f, typedArrayObtainStyledAttributes.getFloat(index, eVar.f5851O));
                    eVar.f5846I = 2;
                    break;
                default:
                    switch (i5) {
                        case MotionEventCompat.AXIS_GENERIC_13 /* 44 */:
                            String string = typedArrayObtainStyledAttributes.getString(index);
                            eVar.f5839B = string;
                            eVar.f5840C = -1;
                            if (string != null) {
                                int length = string.length();
                                int iIndexOf = eVar.f5839B.indexOf(44);
                                if (iIndexOf <= 0 || iIndexOf >= length - 1) {
                                    i3 = 0;
                                } else {
                                    String strSubstring = eVar.f5839B.substring(0, iIndexOf);
                                    if (strSubstring.equalsIgnoreCase("W")) {
                                        eVar.f5840C = 0;
                                    } else if (strSubstring.equalsIgnoreCase("H")) {
                                        eVar.f5840C = 1;
                                    }
                                    i3 = iIndexOf + 1;
                                }
                                int iIndexOf2 = eVar.f5839B.indexOf(58);
                                if (iIndexOf2 < 0 || iIndexOf2 >= length - 1) {
                                    String strSubstring2 = eVar.f5839B.substring(i3);
                                    if (strSubstring2.length() > 0) {
                                        Float.parseFloat(strSubstring2);
                                    }
                                } else {
                                    String strSubstring3 = eVar.f5839B.substring(i3, iIndexOf2);
                                    String strSubstring4 = eVar.f5839B.substring(iIndexOf2 + 1);
                                    if (strSubstring3.length() > 0 && strSubstring4.length() > 0) {
                                        try {
                                            float f3 = Float.parseFloat(strSubstring3);
                                            float f4 = Float.parseFloat(strSubstring4);
                                            if (f3 > 0.0f && f4 > 0.0f) {
                                                if (eVar.f5840C == 1) {
                                                    Math.abs(f4 / f3);
                                                } else {
                                                    Math.abs(f3 / f4);
                                                }
                                            }
                                        } catch (NumberFormatException unused5) {
                                        }
                                    }
                                }
                            }
                            break;
                        case MotionEventCompat.AXIS_GENERIC_14 /* 45 */:
                            eVar.f5841D = typedArrayObtainStyledAttributes.getFloat(index, eVar.f5841D);
                            break;
                        case MotionEventCompat.AXIS_GENERIC_15 /* 46 */:
                            eVar.f5842E = typedArrayObtainStyledAttributes.getFloat(index, eVar.f5842E);
                            break;
                        case MotionEventCompat.AXIS_GENERIC_16 /* 47 */:
                            eVar.f5843F = typedArrayObtainStyledAttributes.getInt(index, 0);
                            break;
                        case 48:
                            eVar.f5844G = typedArrayObtainStyledAttributes.getInt(index, 0);
                            break;
                        case 49:
                            eVar.f5852P = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, eVar.f5852P);
                            break;
                        case AccessibilityNodeInfoCompat.MAX_NUMBER_OF_PREFETCHED_NODES /* 50 */:
                            eVar.f5853Q = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, eVar.f5853Q);
                            break;
                        case 51:
                            eVar.f5857U = typedArrayObtainStyledAttributes.getString(index);
                            break;
                    }
                    break;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        eVar.a();
        return eVar;
    }

    public int getMaxHeight() {
        return this.f2800h;
    }

    public int getMaxWidth() {
        return this.g;
    }

    public int getMinHeight() {
        return this.f;
    }

    public int getMinWidth() {
        return this.f2799e;
    }

    public int getOptimizationLevel() {
        return this.f2798d.p0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i3, int i4, int i5, int i6) {
        int childCount = getChildCount();
        boolean zIsInEditMode = isInEditMode();
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            p059x.e eVar = (p059x.e) childAt.getLayoutParams();
            d dVar = eVar.f5880k0;
            if (childAt.getVisibility() != 8 || eVar.f5861Y || eVar.Z || zIsInEditMode) {
                int iM = dVar.m();
                int iN = dVar.n();
                childAt.layout(iM, iN, dVar.l() + iM, dVar.i() + iN);
            }
        }
        ArrayList arrayList = this.f2797c;
        int size = arrayList.size();
        if (size > 0) {
            for (int i8 = 0; i8 < size; i8++) {
                ((c) arrayList.get(i8)).getClass();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:153:0x032d  */
    /* JADX WARN: Code duplicated, block: B:155:0x0337  */
    /* JADX WARN: Code duplicated, block: B:156:0x0344  */
    /* JADX WARN: Code duplicated, block: B:158:0x0349  */
    /* JADX WARN: Code duplicated, block: B:165:0x0366  */
    /* JADX WARN: Code duplicated, block: B:167:0x0370  */
    /* JADX WARN: Code duplicated, block: B:168:0x0382  */
    /* JADX WARN: Code duplicated, block: B:170:0x038b  */
    /* JADX WARN: Code duplicated, block: B:172:0x0391  */
    /* JADX WARN: Code duplicated, block: B:177:0x03b1  */
    /* JADX WARN: Code duplicated, block: B:179:0x03ba  */
    /* JADX WARN: Code duplicated, block: B:180:0x03c4  */
    /* JADX WARN: Code duplicated, block: B:182:0x03c8  */
    /* JADX WARN: Code duplicated, block: B:187:0x03dd  */
    /* JADX WARN: Code duplicated, block: B:189:0x03ef A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:195:0x042f  */
    /* JADX WARN: Code duplicated, block: B:198:0x0438  */
    /* JADX WARN: Code duplicated, block: B:201:0x0440  */
    /* JADX WARN: Code duplicated, block: B:274:0x0566  */
    /* JADX WARN: Code duplicated, block: B:340:0x06e2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:341:0x06e4  */
    /* JADX WARN: Code duplicated, block: B:343:0x06e8  */
    /* JADX WARN: Code duplicated, block: B:344:0x06ed  */
    /* JADX WARN: Code duplicated, block: B:345:0x06f9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:346:0x06fb  */
    /* JADX WARN: Code duplicated, block: B:348:0x0708  */
    /* JADX WARN: Code duplicated, block: B:350:0x070d  */
    /* JADX WARN: Code duplicated, block: B:352:0x0710  */
    /* JADX WARN: Code duplicated, block: B:353:0x0717  */
    /* JADX WARN: Code duplicated, block: B:356:0x0723  */
    /* JADX WARN: Code duplicated, block: B:358:0x0729  */
    /* JADX WARN: Code duplicated, block: B:364:0x075e  */
    /* JADX WARN: Code duplicated, block: B:365:0x0761  */
    /* JADX WARN: Code duplicated, block: B:368:0x0769  */
    /* JADX WARN: Code duplicated, block: B:369:0x076c  */
    /* JADX WARN: Code duplicated, block: B:372:0x0792  */
    /* JADX WARN: Code duplicated, block: B:373:0x0794  */
    /* JADX WARN: Code duplicated, block: B:375:0x0797  */
    /* JADX WARN: Code duplicated, block: B:378:0x07a0  */
    /* JADX WARN: Code duplicated, block: B:379:0x07a2  */
    /* JADX WARN: Code duplicated, block: B:382:0x07a7  */
    /* JADX WARN: Code duplicated, block: B:384:0x07aa  */
    /* JADX WARN: Code duplicated, block: B:386:0x07c3  */
    /* JADX WARN: Code duplicated, block: B:388:0x07c8  */
    /* JADX WARN: Code duplicated, block: B:391:0x07cf  */
    /* JADX WARN: Code duplicated, block: B:392:0x07d1  */
    /* JADX WARN: Code duplicated, block: B:394:0x07d4 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:398:0x07e0  */
    /* JADX WARN: Code duplicated, block: B:402:0x07e9 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:404:0x07f0  */
    /* JADX WARN: Code duplicated, block: B:417:0x0812 A[PHI: r11 r12
      0x0812: PHI (r11v5 boolean) = (r11v4 boolean), (r11v30 boolean) binds: [B:381:0x07a5, B:719:0x0812] A[DONT_GENERATE, DONT_INLINE]
      0x0812: PHI (r12v8 int) = (r12v7 int), (r12v45 int) binds: [B:381:0x07a5, B:719:0x0812] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:419:0x081a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:420:0x081c A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:425:0x0825  */
    /* JADX WARN: Code duplicated, block: B:427:0x083a  */
    /* JADX WARN: Code duplicated, block: B:429:0x0840  */
    /* JADX WARN: Code duplicated, block: B:432:0x0849  */
    /* JADX WARN: Code duplicated, block: B:436:0x0856 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:478:0x0948  */
    /* JADX WARN: Code duplicated, block: B:480:0x0960  */
    /* JADX WARN: Code duplicated, block: B:482:0x0963  */
    /* JADX WARN: Code duplicated, block: B:486:0x097e  */
    /* JADX WARN: Code duplicated, block: B:494:0x099a  */
    /* JADX WARN: Code duplicated, block: B:516:0x09d8  */
    /* JADX WARN: Code duplicated, block: B:518:0x09e8  */
    /* JADX WARN: Code duplicated, block: B:520:0x09f1 A[LOOP:21: B:519:0x09ef->B:520:0x09f1, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:522:0x0a30  */
    /* JADX WARN: Code duplicated, block: B:525:0x0a4c  */
    /* JADX WARN: Code duplicated, block: B:526:0x0a53  */
    /* JADX WARN: Code duplicated, block: B:528:0x0a57  */
    /* JADX WARN: Code duplicated, block: B:530:0x0a61 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:531:0x0a63  */
    /* JADX WARN: Code duplicated, block: B:532:0x0a65  */
    /* JADX WARN: Code duplicated, block: B:534:0x0a68  */
    /* JADX WARN: Code duplicated, block: B:535:0x0a6a  */
    /* JADX WARN: Code duplicated, block: B:537:0x0a6f  */
    /* JADX WARN: Code duplicated, block: B:539:0x0a7d  */
    /* JADX WARN: Code duplicated, block: B:541:0x0a80 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:542:0x0a82  */
    /* JADX WARN: Code duplicated, block: B:544:0x0a8d  */
    /* JADX WARN: Code duplicated, block: B:546:0x0a99  */
    /* JADX WARN: Code duplicated, block: B:547:0x0a9b  */
    /* JADX WARN: Code duplicated, block: B:554:0x0ab9  */
    /* JADX WARN: Code duplicated, block: B:560:0x0ac4  */
    /* JADX WARN: Code duplicated, block: B:564:0x0ad6 A[LOOP:14: B:563:0x0ad4->B:564:0x0ad6, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:567:0x0ae2  */
    /* JADX WARN: Code duplicated, block: B:569:0x0ae5 A[LOOP:15: B:568:0x0ae3->B:569:0x0ae5, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:572:0x0afd  */
    /* JADX WARN: Code duplicated, block: B:574:0x0b02  */
    /* JADX WARN: Code duplicated, block: B:576:0x0b0b  */
    /* JADX WARN: Code duplicated, block: B:578:0x0b0f  */
    /* JADX WARN: Code duplicated, block: B:581:0x0b15  */
    /* JADX WARN: Code duplicated, block: B:582:0x0b17  */
    /* JADX WARN: Code duplicated, block: B:585:0x0b34  */
    /* JADX WARN: Code duplicated, block: B:587:0x0b40  */
    /* JADX WARN: Code duplicated, block: B:588:0x0b48  */
    /* JADX WARN: Code duplicated, block: B:590:0x0b69  */
    /* JADX WARN: Code duplicated, block: B:592:0x0b6e  */
    /* JADX WARN: Code duplicated, block: B:597:0x0b90  */
    /* JADX WARN: Code duplicated, block: B:599:0x0b95  */
    /* JADX WARN: Code duplicated, block: B:603:0x0bb5  */
    /* JADX WARN: Code duplicated, block: B:609:0x0bd5  */
    /* JADX WARN: Code duplicated, block: B:611:0x0bd8  */
    /* JADX WARN: Code duplicated, block: B:613:0x0be2  */
    /* JADX WARN: Code duplicated, block: B:615:0x0be6  */
    /* JADX WARN: Code duplicated, block: B:631:0x0c32  */
    /* JADX WARN: Code duplicated, block: B:633:0x0c37  */
    /* JADX WARN: Code duplicated, block: B:636:0x0c56  */
    /* JADX WARN: Code duplicated, block: B:638:0x0c59  */
    /* JADX WARN: Code duplicated, block: B:640:0x0c5c  */
    /* JADX WARN: Code duplicated, block: B:642:0x0c61  */
    /* JADX WARN: Code duplicated, block: B:645:0x0c80  */
    /* JADX WARN: Code duplicated, block: B:647:0x0c83  */
    /* JADX WARN: Code duplicated, block: B:650:0x0c89  */
    /* JADX WARN: Code duplicated, block: B:653:0x0c8f  */
    /* JADX WARN: Code duplicated, block: B:657:0x0ca5  */
    /* JADX WARN: Code duplicated, block: B:660:0x0cb4  */
    /* JADX WARN: Code duplicated, block: B:662:0x0cbd  */
    /* JADX WARN: Code duplicated, block: B:663:0x0cc2  */
    /* JADX WARN: Code duplicated, block: B:666:0x0cc9  */
    /* JADX WARN: Code duplicated, block: B:667:0x0cce  */
    /* JADX WARN: Code duplicated, block: B:669:0x0cd1  */
    /* JADX WARN: Code duplicated, block: B:672:0x0cdb  */
    /* JADX WARN: Code duplicated, block: B:673:0x0cdd  */
    /* JADX WARN: Code duplicated, block: B:677:0x0d18  */
    /* JADX WARN: Code duplicated, block: B:679:0x0d1b  */
    /* JADX WARN: Code duplicated, block: B:719:0x0812 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:727:0x09cb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:750:0x0ca9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:99:0x01b6  */
    @Override // android.view.View
    public void onMeasure(int i3, int i4) {
        int i5;
        int iMax;
        int i6;
        int i7;
        int iMax2;
        int i8;
        int iL;
        int[] iArr;
        char c3;
        int i9;
        int i10;
        e eVar;
        ArrayList arrayList;
        f fVar;
        int size;
        int iL2;
        int i11;
        boolean z2;
        int[] iArr2;
        boolean z3;
        boolean z4;
        int i12;
        int i13;
        e eVar2;
        ArrayList arrayList2;
        f fVar2;
        int i14;
        int i15;
        int i16;
        boolean zD;
        int i17;
        int size2;
        int i18;
        int i19;
        boolean z5;
        int[] iArr3;
        boolean z6;
        boolean z7;
        int iMax3;
        int iMax4;
        int i20;
        boolean z8;
        boolean z9;
        boolean z10;
        f fVar3;
        ArrayList arrayList3;
        int i21;
        boolean z11;
        boolean z12;
        int i22;
        d dVar;
        int iL3;
        int i23;
        int i24;
        int i25;
        boolean zJ;
        int iL4;
        f fVar4;
        int i26;
        boolean z13;
        d dVar2;
        int iL5;
        int i27;
        boolean z14;
        boolean z15;
        f fVar5;
        int iL6;
        boolean z16;
        int i28;
        boolean z17;
        int size3;
        f fVar6;
        int i29;
        ConstraintLayout constraintLayout;
        int childCount;
        ArrayList arrayList4;
        int i30;
        int size4;
        int i31;
        d dVar3;
        int iH;
        boolean z18;
        boolean z19;
        int iMin;
        int iMin2;
        int iMin3;
        int iMin4;
        int i32;
        e eVar3;
        int i33;
        int i34;
        ArrayList arrayList5;
        int size5;
        int i35;
        boolean z20;
        boolean z21;
        int i36;
        int i37;
        int i38;
        int i39;
        int i40;
        boolean z22;
        int size6;
        int i41;
        int size7;
        int i42;
        boolean z23;
        p056w.m mVar;
        p056w.m mVar2;
        int i43;
        boolean z24;
        d dVar4;
        int[] iArr4;
        int i44;
        boolean z25;
        boolean z26;
        boolean z27;
        boolean z28;
        int i45;
        Object obj;
        int i46;
        int i47;
        int i48;
        d dVar5;
        int i49;
        d dVar6;
        int i50;
        d dVar7;
        int i51;
        int i52;
        int i53;
        d dVar8;
        float f;
        int i54;
        int i55;
        int i56;
        d dVar9;
        int i57;
        SparseArray sparseArray;
        int i58;
        float f3;
        d dVar10;
        d dVar11;
        d dVar12;
        d dVar13;
        int i59;
        int i60;
        int i61;
        int i62;
        float fAbs;
        int i63;
        ArrayList arrayList6;
        boolean z29;
        int i64;
        ArrayList arrayList7;
        d dVar14;
        boolean z30 = (getContext().getApplicationInfo().flags & 4194304) != 0 && 1 == getLayoutDirection();
        e eVar4 = this.f2798d;
        eVar4.f5500h0 = z30;
        F.b bVar = eVar4.f5497e0;
        p056w.e eVar5 = eVar4.f5498f0;
        if (this.f2801i) {
            this.f2801i = false;
            int childCount2 = getChildCount();
            i5 = 4194304;
            int i65 = 0;
            while (true) {
                if (i65 >= childCount2) {
                    z27 = false;
                    break;
                } else {
                    if (getChildAt(i65).isLayoutRequested()) {
                        z27 = true;
                        break;
                    }
                    i65++;
                }
            }
            if (z27) {
                boolean zIsInEditMode = isInEditMode();
                boolean z31 = true;
                int childCount3 = getChildCount();
                for (int i66 = 0; i66 < childCount3; i66++) {
                    d dVarB = b(getChildAt(i66));
                    if (dVarB != null) {
                        dVarB.s();
                    }
                }
                SparseArray sparseArray2 = this.b;
                if (zIsInEditMode) {
                    for (int i67 = 0; i67 < childCount3; i67++) {
                        View childAt = getChildAt(i67);
                        try {
                            String resourceName = getResources().getResourceName(childAt.getId());
                            Integer numValueOf = Integer.valueOf(childAt.getId());
                            if (resourceName != null) {
                                if (this.f2806n == null) {
                                    this.f2806n = new HashMap();
                                }
                                int iIndexOf = resourceName.indexOf("/");
                                this.f2806n.put(iIndexOf != -1 ? resourceName.substring(iIndexOf + 1) : resourceName, numValueOf);
                            }
                            int iIndexOf2 = resourceName.indexOf(47);
                            if (iIndexOf2 != -1) {
                                resourceName = resourceName.substring(iIndexOf2 + 1);
                            }
                            int id = childAt.getId();
                            if (id != 0) {
                                View viewFindViewById = (View) sparseArray2.get(id);
                                if (viewFindViewById == null && (viewFindViewById = findViewById(id)) != null && viewFindViewById != this && viewFindViewById.getParent() == this) {
                                    onViewAdded(viewFindViewById);
                                }
                                dVar14 = viewFindViewById == this ? eVar4 : viewFindViewById == null ? null : ((p059x.e) viewFindViewById.getLayoutParams()).f5880k0;
                            }
                            dVar14.f5467W = resourceName;
                        } catch (Resources.NotFoundException unused) {
                        }
                    }
                }
                if (this.f2805m != -1) {
                    for (int i68 = 0; i68 < childCount3; i68++) {
                        getChildAt(i68).getId();
                    }
                }
                m mVar3 = this.f2803k;
                if (mVar3 != null) {
                    mVar3.a(this);
                }
                eVar4.f5496d0.clear();
                ArrayList arrayList8 = this.f2797c;
                int size8 = arrayList8.size();
                if (size8 > 0) {
                    int i69 = 0;
                    while (i69 < size8) {
                        c cVar = (c) arrayList8.get(i69);
                        HashMap map = cVar.g;
                        if (cVar.isInEditMode()) {
                            cVar.setIds(cVar.f);
                        }
                        i iVar = cVar.f5836e;
                        if (iVar == null) {
                            arrayList6 = arrayList8;
                            z29 = zIsInEditMode;
                        } else {
                            iVar.f5562e0 = 0;
                            Arrays.fill(iVar.f5561d0, (Object) null);
                            int i70 = 0;
                            while (i70 < cVar.f5834c) {
                                int i71 = cVar.b[i70];
                                View view = (View) sparseArray2.get(i71);
                                if (view == null) {
                                    String str = (String) map.get(Integer.valueOf(i71));
                                    i64 = i70;
                                    int iD = cVar.d(this, str);
                                    arrayList7 = arrayList8;
                                    if (iD != 0) {
                                        cVar.b[i64] = iD;
                                        map.put(Integer.valueOf(iD), str);
                                        view = (View) sparseArray2.get(iD);
                                    }
                                } else {
                                    i64 = i70;
                                    arrayList7 = arrayList8;
                                }
                                View view2 = view;
                                if (view2 != null) {
                                    i iVar2 = cVar.f5836e;
                                    d dVarB2 = b(view2);
                                    iVar2.getClass();
                                    if (dVarB2 != iVar2 && dVarB2 != null) {
                                        int i72 = iVar2.f5562e0 + 1;
                                        d[] dVarArr = iVar2.f5561d0;
                                        if (i72 > dVarArr.length) {
                                            iVar2.f5561d0 = (d[]) Arrays.copyOf(dVarArr, dVarArr.length * 2);
                                        }
                                        d[] dVarArr2 = iVar2.f5561d0;
                                        int i73 = iVar2.f5562e0;
                                        dVarArr2[i73] = dVarB2;
                                        iVar2.f5562e0 = i73 + 1;
                                    }
                                }
                                i70 = i64 + 1;
                                arrayList8 = arrayList7;
                                zIsInEditMode = zIsInEditMode;
                            }
                            arrayList6 = arrayList8;
                            z29 = zIsInEditMode;
                            cVar.f5836e.B();
                        }
                        i69++;
                        z27 = z27;
                        arrayList8 = arrayList6;
                        zIsInEditMode = z29;
                    }
                }
                z28 = z27;
                boolean z32 = zIsInEditMode;
                for (int i74 = 0; i74 < childCount3; i74++) {
                    getChildAt(i74);
                }
                SparseArray sparseArray3 = this.f2807o;
                sparseArray3.clear();
                sparseArray3.put(0, eVar4);
                sparseArray3.put(getId(), eVar4);
                for (int i75 = 0; i75 < childCount3; i75++) {
                    View childAt2 = getChildAt(i75);
                    sparseArray3.put(childAt2.getId(), b(childAt2));
                }
                int i76 = 0;
                while (i76 < childCount3) {
                    View childAt3 = getChildAt(i76);
                    d dVarB3 = b(childAt3);
                    if (dVarB3 == null) {
                        sparseArray3 = sparseArray3;
                        i46 = childCount3;
                        i47 = i76;
                        sparseArray = sparseArray2;
                    } else {
                        p059x.e eVar6 = (p059x.e) childAt3.getLayoutParams();
                        eVar4.f5496d0.add(dVarB3);
                        d dVar15 = dVarB3.f5454I;
                        if (dVar15 != null) {
                            ((e) dVar15).f5496d0.remove(dVarB3);
                            obj = null;
                            dVarB3.f5454I = null;
                        } else {
                            obj = null;
                        }
                        dVarB3.f5454I = eVar4;
                        eVar6.a();
                        dVarB3.f5466V = childAt3.getVisibility();
                        dVarB3.f5465U = childAt3;
                        if (childAt3 instanceof c) {
                            ((c) childAt3).f(dVarB3, eVar4.f5500h0);
                        }
                        if (eVar6.f5861Y) {
                            h hVar = (h) dVarB3;
                            int i77 = eVar6.f5874h0;
                            int i78 = eVar6.f5876i0;
                            float f4 = eVar6.f5878j0;
                            if (f4 != -1.0f) {
                                if (f4 > -1.0f) {
                                    hVar.f5556d0 = f4;
                                    hVar.f5557e0 = -1;
                                    hVar.f5558f0 = -1;
                                }
                            } else if (i77 != -1) {
                                if (i77 > -1) {
                                    hVar.f5556d0 = -1.0f;
                                    hVar.f5557e0 = i77;
                                    hVar.f5558f0 = -1;
                                }
                            } else if (i78 != -1 && i78 > -1) {
                                hVar.f5556d0 = -1.0f;
                                hVar.f5557e0 = -1;
                                hVar.f5558f0 = i78;
                            }
                            sparseArray3 = sparseArray3;
                            i46 = childCount3;
                            i47 = i76;
                            sparseArray = sparseArray2;
                        } else {
                            int i79 = eVar6.f5863a0;
                            int i80 = eVar6.f5864b0;
                            int i81 = eVar6.f5866c0;
                            int i82 = eVar6.f5868d0;
                            i46 = childCount3;
                            int i83 = eVar6.f5870e0;
                            int i84 = eVar6.f5871f0;
                            SparseArray sparseArray4 = sparseArray2;
                            float f5 = eVar6.f5872g0;
                            int i85 = eVar6.f5882m;
                            i47 = i76;
                            int i86 = -1;
                            if (i85 != -1) {
                                d dVar16 = (d) sparseArray3.get(i85);
                                if (dVar16 != null) {
                                    float f6 = eVar6.f5884o;
                                    dVarB3.o(7, 7, eVar6.f5883n, 0, dVar16);
                                    dVarB3.f5491v = f6;
                                }
                                sparseArray3 = sparseArray3;
                                eVar6 = eVar6;
                                sparseArray = sparseArray4;
                                i58 = 3;
                                i86 = -1;
                                f = 0.0f;
                            } else {
                                if (i79 != -1) {
                                    d dVar17 = (d) sparseArray3.get(i79);
                                    if (dVar17 != null) {
                                        i48 = 2;
                                        dVarB3.o(2, 2, ((ViewGroup.MarginLayoutParams) eVar6).leftMargin, i83, dVar17);
                                    } else {
                                        i48 = 2;
                                    }
                                } else {
                                    i48 = 2;
                                    if (i80 != -1 && (dVar5 = (d) sparseArray3.get(i80)) != null) {
                                        i49 = i81;
                                        dVarB3.o(2, 4, ((ViewGroup.MarginLayoutParams) eVar6).leftMargin, i83, dVar5);
                                        dVar6 = dVarB3;
                                        i50 = 4;
                                    }
                                    if (i49 != -1) {
                                        dVar13 = (d) sparseArray3.get(i49);
                                        if (dVar13 != null) {
                                            int i87 = ((ViewGroup.MarginLayoutParams) eVar6).rightMargin;
                                            d dVar18 = dVar6;
                                            dVar18.o(i50, i48, i87, i84, dVar13);
                                            dVarB3 = dVar18;
                                        } else {
                                            dVarB3 = dVar6;
                                        }
                                    } else {
                                        dVarB3 = dVar6;
                                        if (r28 == -1 && (dVar7 = (d) sparseArray3.get(i82)) != null) {
                                            dVarB3.o(i50, i50, ((ViewGroup.MarginLayoutParams) eVar6).rightMargin, i84, dVar7);
                                        }
                                        i51 = eVar6.f5873h;
                                        if (i51 != -1) {
                                            dVar12 = (d) sparseArray3.get(i51);
                                            if (dVar12 != null) {
                                                i52 = 3;
                                                dVarB3.o(3, 3, ((ViewGroup.MarginLayoutParams) eVar6).topMargin, eVar6.f5890u, dVar12);
                                            } else {
                                                i52 = 3;
                                            }
                                        } else {
                                            i52 = 3;
                                            i53 = eVar6.f5875i;
                                            if (i53 == -1 && (dVar8 = (d) sparseArray3.get(i53)) != null) {
                                                f = 0.0f;
                                                dVarB3.o(3, 5, ((ViewGroup.MarginLayoutParams) eVar6).topMargin, eVar6.f5890u, dVar8);
                                                i54 = 5;
                                            }
                                            i55 = eVar6.f5877j;
                                            if (i55 != -1) {
                                                dVar11 = (d) sparseArray3.get(i55);
                                                if (dVar11 != null) {
                                                    dVarB3.o(i54, i52, ((ViewGroup.MarginLayoutParams) eVar6).bottomMargin, eVar6.f5892w, dVar11);
                                                }
                                            } else {
                                                i56 = eVar6.f5879k;
                                                if (i56 != -1 && (dVar9 = (d) sparseArray3.get(i56)) != null) {
                                                    dVarB3.o(i54, i54, ((ViewGroup.MarginLayoutParams) eVar6).bottomMargin, eVar6.f5892w, dVar9);
                                                }
                                            }
                                            i57 = eVar6.f5881l;
                                            if (i57 != -1) {
                                                sparseArray = sparseArray4;
                                                View view3 = (View) sparseArray.get(i57);
                                                dVar10 = (d) sparseArray3.get(eVar6.f5881l);
                                                if (dVar10 == null && view3 != null && (view3.getLayoutParams() instanceof p059x.e)) {
                                                    p059x.e eVar7 = (p059x.e) view3.getLayoutParams();
                                                    boolean z33 = z31;
                                                    eVar6.f5860X = z33;
                                                    eVar7.f5860X = z33;
                                                    sparseArray3 = sparseArray3;
                                                    dVarB3.g(6).b(dVar10.g(6), 0, -1, z33);
                                                    dVarB3.f5492w = z33;
                                                    eVar7.f5880k0.f5492w = z33;
                                                    i58 = 3;
                                                    dVarB3.g(3).h();
                                                    dVarB3.g(5).h();
                                                }
                                                if (f5 >= f) {
                                                    dVarB3.f5463S = f5;
                                                }
                                                f3 = eVar6.f5838A;
                                                if (f3 >= f) {
                                                    dVarB3.f5464T = f3;
                                                }
                                            } else {
                                                sparseArray = sparseArray4;
                                            }
                                            i58 = 3;
                                            if (f5 >= f) {
                                                dVarB3.f5463S = f5;
                                            }
                                            f3 = eVar6.f5838A;
                                            if (f3 >= f) {
                                                dVarB3.f5464T = f3;
                                            }
                                        }
                                        i54 = 5;
                                        f = 0.0f;
                                        i55 = eVar6.f5877j;
                                        if (i55 != -1) {
                                            dVar11 = (d) sparseArray3.get(i55);
                                            if (dVar11 != null) {
                                                dVarB3.o(i54, i52, ((ViewGroup.MarginLayoutParams) eVar6).bottomMargin, eVar6.f5892w, dVar11);
                                            }
                                        } else {
                                            i56 = eVar6.f5879k;
                                            if (i56 != -1) {
                                                dVarB3.o(i54, i54, ((ViewGroup.MarginLayoutParams) eVar6).bottomMargin, eVar6.f5892w, dVar9);
                                            }
                                        }
                                        i57 = eVar6.f5881l;
                                        if (i57 != -1) {
                                            sparseArray = sparseArray4;
                                            View view4 = (View) sparseArray.get(i57);
                                            dVar10 = (d) sparseArray3.get(eVar6.f5881l);
                                            if (dVar10 == null) {
                                            }
                                        } else {
                                            sparseArray = sparseArray4;
                                        }
                                        i58 = 3;
                                        if (f5 >= f) {
                                            dVarB3.f5463S = f5;
                                        }
                                        f3 = eVar6.f5838A;
                                        if (f3 >= f) {
                                            dVarB3.f5464T = f3;
                                        }
                                    }
                                    i51 = eVar6.f5873h;
                                    if (i51 != -1) {
                                        dVar12 = (d) sparseArray3.get(i51);
                                        if (dVar12 != null) {
                                            i52 = 3;
                                            dVarB3.o(3, 3, ((ViewGroup.MarginLayoutParams) eVar6).topMargin, eVar6.f5890u, dVar12);
                                        } else {
                                            i52 = 3;
                                        }
                                    } else {
                                        i52 = 3;
                                        i53 = eVar6.f5875i;
                                        if (i53 == -1) {
                                        }
                                        i55 = eVar6.f5877j;
                                        if (i55 != -1) {
                                            dVar11 = (d) sparseArray3.get(i55);
                                            if (dVar11 != null) {
                                                dVarB3.o(i54, i52, ((ViewGroup.MarginLayoutParams) eVar6).bottomMargin, eVar6.f5892w, dVar11);
                                            }
                                        } else {
                                            i56 = eVar6.f5879k;
                                            if (i56 != -1) {
                                                dVarB3.o(i54, i54, ((ViewGroup.MarginLayoutParams) eVar6).bottomMargin, eVar6.f5892w, dVar9);
                                            }
                                        }
                                        i57 = eVar6.f5881l;
                                        if (i57 != -1) {
                                            sparseArray = sparseArray4;
                                            View view5 = (View) sparseArray.get(i57);
                                            dVar10 = (d) sparseArray3.get(eVar6.f5881l);
                                            if (dVar10 == null) {
                                            }
                                        } else {
                                            sparseArray = sparseArray4;
                                        }
                                        i58 = 3;
                                        if (f5 >= f) {
                                            dVarB3.f5463S = f5;
                                        }
                                        f3 = eVar6.f5838A;
                                        if (f3 >= f) {
                                            dVarB3.f5464T = f3;
                                        }
                                    }
                                    i54 = 5;
                                    f = 0.0f;
                                    i55 = eVar6.f5877j;
                                    if (i55 != -1) {
                                        dVar11 = (d) sparseArray3.get(i55);
                                        if (dVar11 != null) {
                                            dVarB3.o(i54, i52, ((ViewGroup.MarginLayoutParams) eVar6).bottomMargin, eVar6.f5892w, dVar11);
                                        }
                                    } else {
                                        i56 = eVar6.f5879k;
                                        if (i56 != -1) {
                                            dVarB3.o(i54, i54, ((ViewGroup.MarginLayoutParams) eVar6).bottomMargin, eVar6.f5892w, dVar9);
                                        }
                                    }
                                    i57 = eVar6.f5881l;
                                    if (i57 != -1) {
                                        sparseArray = sparseArray4;
                                        View view6 = (View) sparseArray.get(i57);
                                        dVar10 = (d) sparseArray3.get(eVar6.f5881l);
                                        if (dVar10 == null) {
                                        }
                                    } else {
                                        sparseArray = sparseArray4;
                                    }
                                    i58 = 3;
                                    if (f5 >= f) {
                                        dVarB3.f5463S = f5;
                                    }
                                    f3 = eVar6.f5838A;
                                    if (f3 >= f) {
                                        dVarB3.f5464T = f3;
                                    }
                                }
                                dVar6 = dVarB3;
                                i49 = i81;
                                i50 = 4;
                                if (i49 != -1) {
                                    dVar13 = (d) sparseArray3.get(i49);
                                    if (dVar13 != null) {
                                        int i88 = ((ViewGroup.MarginLayoutParams) eVar6).rightMargin;
                                        d dVar19 = dVar6;
                                        dVar19.o(i50, i48, i88, i84, dVar13);
                                        dVarB3 = dVar19;
                                    } else {
                                        dVarB3 = dVar6;
                                    }
                                } else {
                                    dVarB3 = dVar6;
                                    if (r28 == -1) {
                                    }
                                    i51 = eVar6.f5873h;
                                    if (i51 != -1) {
                                        dVar12 = (d) sparseArray3.get(i51);
                                        if (dVar12 != null) {
                                            i52 = 3;
                                            dVarB3.o(3, 3, ((ViewGroup.MarginLayoutParams) eVar6).topMargin, eVar6.f5890u, dVar12);
                                        } else {
                                            i52 = 3;
                                        }
                                    } else {
                                        i52 = 3;
                                        i53 = eVar6.f5875i;
                                        if (i53 == -1) {
                                        }
                                        i55 = eVar6.f5877j;
                                        if (i55 != -1) {
                                            dVar11 = (d) sparseArray3.get(i55);
                                            if (dVar11 != null) {
                                                dVarB3.o(i54, i52, ((ViewGroup.MarginLayoutParams) eVar6).bottomMargin, eVar6.f5892w, dVar11);
                                            }
                                        } else {
                                            i56 = eVar6.f5879k;
                                            if (i56 != -1) {
                                                dVarB3.o(i54, i54, ((ViewGroup.MarginLayoutParams) eVar6).bottomMargin, eVar6.f5892w, dVar9);
                                            }
                                        }
                                        i57 = eVar6.f5881l;
                                        if (i57 != -1) {
                                            sparseArray = sparseArray4;
                                            View view7 = (View) sparseArray.get(i57);
                                            dVar10 = (d) sparseArray3.get(eVar6.f5881l);
                                            if (dVar10 == null) {
                                            }
                                        } else {
                                            sparseArray = sparseArray4;
                                        }
                                        i58 = 3;
                                        if (f5 >= f) {
                                            dVarB3.f5463S = f5;
                                        }
                                        f3 = eVar6.f5838A;
                                        if (f3 >= f) {
                                            dVarB3.f5464T = f3;
                                        }
                                    }
                                    i54 = 5;
                                    f = 0.0f;
                                    i55 = eVar6.f5877j;
                                    if (i55 != -1) {
                                        dVar11 = (d) sparseArray3.get(i55);
                                        if (dVar11 != null) {
                                            dVarB3.o(i54, i52, ((ViewGroup.MarginLayoutParams) eVar6).bottomMargin, eVar6.f5892w, dVar11);
                                        }
                                    } else {
                                        i56 = eVar6.f5879k;
                                        if (i56 != -1) {
                                            dVarB3.o(i54, i54, ((ViewGroup.MarginLayoutParams) eVar6).bottomMargin, eVar6.f5892w, dVar9);
                                        }
                                    }
                                    i57 = eVar6.f5881l;
                                    if (i57 != -1) {
                                        sparseArray = sparseArray4;
                                        View view8 = (View) sparseArray.get(i57);
                                        dVar10 = (d) sparseArray3.get(eVar6.f5881l);
                                        if (dVar10 == null) {
                                        }
                                    } else {
                                        sparseArray = sparseArray4;
                                    }
                                    i58 = 3;
                                    if (f5 >= f) {
                                        dVarB3.f5463S = f5;
                                    }
                                    f3 = eVar6.f5838A;
                                    if (f3 >= f) {
                                        dVarB3.f5464T = f3;
                                    }
                                }
                                i51 = eVar6.f5873h;
                                if (i51 != -1) {
                                    dVar12 = (d) sparseArray3.get(i51);
                                    if (dVar12 != null) {
                                        i52 = 3;
                                        dVarB3.o(3, 3, ((ViewGroup.MarginLayoutParams) eVar6).topMargin, eVar6.f5890u, dVar12);
                                    } else {
                                        i52 = 3;
                                    }
                                } else {
                                    i52 = 3;
                                    i53 = eVar6.f5875i;
                                    if (i53 == -1) {
                                    }
                                    i55 = eVar6.f5877j;
                                    if (i55 != -1) {
                                        dVar11 = (d) sparseArray3.get(i55);
                                        if (dVar11 != null) {
                                            dVarB3.o(i54, i52, ((ViewGroup.MarginLayoutParams) eVar6).bottomMargin, eVar6.f5892w, dVar11);
                                        }
                                    } else {
                                        i56 = eVar6.f5879k;
                                        if (i56 != -1) {
                                            dVarB3.o(i54, i54, ((ViewGroup.MarginLayoutParams) eVar6).bottomMargin, eVar6.f5892w, dVar9);
                                        }
                                    }
                                    i57 = eVar6.f5881l;
                                    if (i57 != -1) {
                                        sparseArray = sparseArray4;
                                        View view9 = (View) sparseArray.get(i57);
                                        dVar10 = (d) sparseArray3.get(eVar6.f5881l);
                                        if (dVar10 == null) {
                                        }
                                    } else {
                                        sparseArray = sparseArray4;
                                    }
                                    i58 = 3;
                                    if (f5 >= f) {
                                        dVarB3.f5463S = f5;
                                    }
                                    f3 = eVar6.f5838A;
                                    if (f3 >= f) {
                                        dVarB3.f5464T = f3;
                                    }
                                }
                                i54 = 5;
                                f = 0.0f;
                                i55 = eVar6.f5877j;
                                if (i55 != -1) {
                                    dVar11 = (d) sparseArray3.get(i55);
                                    if (dVar11 != null) {
                                        dVarB3.o(i54, i52, ((ViewGroup.MarginLayoutParams) eVar6).bottomMargin, eVar6.f5892w, dVar11);
                                    }
                                } else {
                                    i56 = eVar6.f5879k;
                                    if (i56 != -1) {
                                        dVarB3.o(i54, i54, ((ViewGroup.MarginLayoutParams) eVar6).bottomMargin, eVar6.f5892w, dVar9);
                                    }
                                }
                                i57 = eVar6.f5881l;
                                if (i57 != -1) {
                                    sparseArray = sparseArray4;
                                    View view10 = (View) sparseArray.get(i57);
                                    dVar10 = (d) sparseArray3.get(eVar6.f5881l);
                                    if (dVar10 == null) {
                                    }
                                } else {
                                    sparseArray = sparseArray4;
                                }
                                i58 = 3;
                                if (f5 >= f) {
                                    dVarB3.f5463S = f5;
                                }
                                f3 = eVar6.f5838A;
                                if (f3 >= f) {
                                    dVarB3.f5464T = f3;
                                }
                            }
                            if (z32 && ((i63 = eVar6.f5852P) != i86 || eVar6.f5853Q != i86)) {
                                int i89 = eVar6.f5853Q;
                                dVarB3.f5458N = i63;
                                dVarB3.f5459O = i89;
                            }
                            if (eVar6.f5858V) {
                                i59 = 3;
                                i60 = 4;
                                dVarB3.w(1);
                                dVarB3.y(((ViewGroup.MarginLayoutParams) eVar6).width);
                                if (((ViewGroup.MarginLayoutParams) eVar6).width == -2) {
                                    dVarB3.w(2);
                                }
                            } else if (((ViewGroup.MarginLayoutParams) eVar6).width == i86) {
                                if (eVar6.f5855S) {
                                    i59 = 3;
                                    dVarB3.w(3);
                                    i60 = 4;
                                } else {
                                    i59 = 3;
                                    i60 = 4;
                                    dVarB3.w(4);
                                }
                                dVarB3.g(2).f5445e = ((ViewGroup.MarginLayoutParams) eVar6).leftMargin;
                                dVarB3.g(4).f5445e = ((ViewGroup.MarginLayoutParams) eVar6).rightMargin;
                            } else {
                                i59 = 3;
                                i60 = 4;
                                dVarB3.w(3);
                                dVarB3.y(0);
                            }
                            if (eVar6.f5859W) {
                                dVarB3.x(1);
                                dVarB3.v(((ViewGroup.MarginLayoutParams) eVar6).height);
                                if (((ViewGroup.MarginLayoutParams) eVar6).height == -2) {
                                    dVarB3.x(2);
                                }
                            } else if (((ViewGroup.MarginLayoutParams) eVar6).height == i86) {
                                if (eVar6.f5856T) {
                                    dVarB3.x(i59);
                                } else {
                                    dVarB3.x(i60);
                                }
                                dVarB3.g(i58).f5445e = ((ViewGroup.MarginLayoutParams) eVar6).topMargin;
                                dVarB3.g(5).f5445e = ((ViewGroup.MarginLayoutParams) eVar6).bottomMargin;
                            } else {
                                dVarB3.x(i59);
                                dVarB3.v(0);
                            }
                            String str2 = eVar6.f5839B;
                            if (str2 == null || str2.length() == 0) {
                                dVarB3.f5456L = f;
                            } else {
                                int length = str2.length();
                                int iIndexOf3 = str2.indexOf(44);
                                if (iIndexOf3 <= 0 || iIndexOf3 >= length - 1) {
                                    i61 = -1;
                                    i62 = 0;
                                } else {
                                    String strSubstring = str2.substring(0, iIndexOf3);
                                    i61 = strSubstring.equalsIgnoreCase("W") ? 0 : strSubstring.equalsIgnoreCase("H") ? 1 : -1;
                                    i62 = iIndexOf3 + 1;
                                }
                                int iIndexOf4 = str2.indexOf(58);
                                if (iIndexOf4 < 0 || iIndexOf4 >= length - 1) {
                                    String strSubstring2 = str2.substring(i62);
                                    if (strSubstring2.length() > 0) {
                                        fAbs = Float.parseFloat(strSubstring2);
                                    } else {
                                        fAbs = f;
                                    }
                                } else {
                                    String strSubstring3 = str2.substring(i62, iIndexOf4);
                                    String strSubstring4 = str2.substring(iIndexOf4 + 1);
                                    if (strSubstring3.length() <= 0 || strSubstring4.length() <= 0) {
                                        fAbs = f;
                                    } else {
                                        try {
                                            float f7 = Float.parseFloat(strSubstring3);
                                            float f8 = Float.parseFloat(strSubstring4);
                                            if (f7 <= f || f8 <= f) {
                                                fAbs = f;
                                            } else {
                                                fAbs = i61 == 1 ? Math.abs(f8 / f7) : Math.abs(f7 / f8);
                                            }
                                        } catch (NumberFormatException unused2) {
                                        }
                                    }
                                }
                                if (fAbs > f) {
                                    dVarB3.f5456L = fAbs;
                                    dVarB3.f5457M = i61;
                                }
                            }
                            float f9 = eVar6.f5841D;
                            float[] fArr = dVarB3.Z;
                            fArr[0] = f9;
                            fArr[1] = eVar6.f5842E;
                            dVarB3.f5468X = eVar6.f5843F;
                            dVarB3.f5469Y = eVar6.f5844G;
                            int i90 = eVar6.f5845H;
                            int i91 = eVar6.f5847J;
                            int i92 = eVar6.f5848L;
                            float f10 = eVar6.f5850N;
                            dVarB3.f5479j = i90;
                            dVarB3.f5482m = i91;
                            if (i92 == Integer.MAX_VALUE) {
                                i92 = 0;
                            }
                            dVarB3.f5483n = i92;
                            dVarB3.f5484o = f10;
                            if (f10 > 0.0f && f10 < 1.0f && i90 == 0) {
                                dVarB3.f5479j = 2;
                            }
                            int i93 = eVar6.f5846I;
                            int i94 = eVar6.K;
                            int i95 = eVar6.f5849M;
                            float f11 = eVar6.f5851O;
                            dVarB3.f5480k = i93;
                            dVarB3.f5485p = i94;
                            if (i95 == Integer.MAX_VALUE) {
                                i95 = 0;
                            }
                            dVarB3.f5486q = i95;
                            dVarB3.f5487r = f11;
                            if (f11 > 0.0f && f11 < 1.0f && i93 == 0) {
                                dVarB3.f5480k = 2;
                            }
                        }
                    }
                    i76 = i47 + 1;
                    sparseArray2 = sparseArray;
                    sparseArray3 = sparseArray3;
                    childCount3 = i46;
                    z31 = true;
                }
            } else {
                z28 = z27;
            }
            if (z28) {
                ArrayList arrayList9 = (ArrayList) bVar.f943c;
                arrayList9.clear();
                int size9 = eVar4.f5496d0.size();
                for (int i96 = 0; i96 < size9; i96++) {
                    d dVar20 = (d) eVar4.f5496d0.get(i96);
                    int[] iArr5 = dVar20.f5474c0;
                    int i97 = iArr5[0];
                    if (i97 == 3 || i97 == 4 || (i45 = iArr5[1]) == 3 || i45 == 4) {
                        arrayList9.add(dVar20);
                    }
                }
                eVar5.b = true;
            }
        } else {
            i5 = 4194304;
        }
        int i98 = this.f2802j;
        int mode = View.MeasureSpec.getMode(i3);
        int size10 = View.MeasureSpec.getSize(i3);
        int mode2 = View.MeasureSpec.getMode(i4);
        int size11 = View.MeasureSpec.getSize(i4);
        int iMax5 = Math.max(0, getPaddingTop());
        int iMax6 = Math.max(0, getPaddingBottom());
        int i99 = iMax5 + iMax6;
        int paddingWidth = getPaddingWidth();
        f fVar7 = this.f2808p;
        fVar7.b = iMax5;
        fVar7.f5897c = iMax6;
        fVar7.f5898d = paddingWidth;
        fVar7.f5899e = i99;
        fVar7.f = i3;
        fVar7.g = i4;
        int iMax7 = Math.max(0, getPaddingStart());
        int iMax8 = Math.max(0, getPaddingEnd());
        if (iMax7 <= 0 && iMax8 <= 0) {
            iMax7 = Math.max(0, getPaddingLeft());
        } else if ((getContext().getApplicationInfo().flags & i5) != 0 && 1 == getLayoutDirection()) {
            iMax7 = iMax8;
        }
        int i100 = size10 - paddingWidth;
        int i101 = size11 - i99;
        int i102 = fVar7.f5899e;
        int i103 = fVar7.f5898d;
        int childCount4 = getChildCount();
        if (mode != Integer.MIN_VALUE) {
            if (mode != 0) {
                if (mode != 1073741824) {
                    i6 = Integer.MIN_VALUE;
                    iMax = 0;
                } else {
                    iMax = Math.min(this.g - i103, i100);
                    i6 = Integer.MIN_VALUE;
                }
                i7 = 1;
            } else if (childCount4 == 0) {
                i103 = i103;
                iMax = Math.max(0, this.f2799e);
            } else {
                i103 = i103;
                iMax = 0;
            }
            if (mode2 != i6) {
                if (mode2 != 0) {
                    if (childCount4 == 0) {
                        iMax2 = Math.max(0, this.f);
                    } else {
                        iMax2 = 0;
                    }
                    i8 = 2;
                } else if (mode2 != 1073741824) {
                    fVar7 = fVar7;
                    i8 = 1;
                    iMax2 = 0;
                } else {
                    iMax2 = Math.min(this.f2800h - i102, i101);
                    fVar7 = fVar7;
                    i8 = 1;
                }
                iL = eVar4.l();
                iArr = eVar4.f5490u;
                if (iMax == iL || iMax2 != eVar4.i()) {
                    eVar5.f5586c = true;
                    c3 = 1;
                } else {
                    c3 = 1;
                }
                eVar4.f5458N = 0;
                eVar4.f5459O = 0;
                iArr[0] = this.g - i103;
                iArr[c3] = this.f2800h - i102;
                eVar4.f5461Q = 0;
                eVar4.f5462R = 0;
                eVar4.w(i7);
                eVar4.y(iMax);
                eVar4.x(i8);
                eVar4.v(iMax2);
                i9 = this.f2799e - i103;
                if (i9 < 0) {
                    eVar4.f5461Q = 0;
                } else {
                    eVar4.f5461Q = i9;
                }
                i10 = this.f - i102;
                if (i10 < 0) {
                    eVar4.f5462R = 0;
                } else {
                    eVar4.f5462R = i10;
                }
                eVar4.f5502j0 = iMax7;
                eVar4.f5503k0 = iMax5;
                eVar = (e) bVar.f945e;
                arrayList = (ArrayList) bVar.f943c;
                fVar = eVar4.f5499g0;
                size = eVar4.f5496d0.size();
                iL2 = eVar4.l();
                i11 = eVar4.i();
                if ((i98 & 128) == 128) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (!z2) {
                    iArr2 = iArr;
                    if ((i98 & 64) == 64) {
                        z3 = false;
                    }
                    if (z3) {
                        i43 = 0;
                        while (true) {
                            if (i43 < size) {
                                z24 = z3;
                                dVar4 = (d) eVar4.f5496d0.get(i43);
                                i12 = size;
                                iArr4 = dVar4.f5474c0;
                                i44 = i43;
                                if (iArr4[0] == 3) {
                                    z25 = true;
                                } else {
                                    z25 = false;
                                }
                                if (iArr4[1] == 3) {
                                    z26 = true;
                                } else {
                                    z26 = false;
                                }
                                if (!z25 && z26) {
                                    boolean z34 = dVar4.f5456L > 0.0f;
                                    if ((dVar4.q() || !z34) && !((dVar4.r() && z34) || (dVar4 instanceof p053v.g) || dVar4.q() || dVar4.r())) {
                                        i43 = i44 + 1;
                                        z3 = z24;
                                        size = i12;
                                    } else {
                                        i13 = 1073741824;
                                        z4 = false;
                                    }
                                }
                                if (dVar4.q()) {
                                    i43 = i44 + 1;
                                    z3 = z24;
                                    size = i12;
                                } else {
                                    i43 = i44 + 1;
                                    z3 = z24;
                                    size = i12;
                                }
                                i13 = 1073741824;
                                z4 = false;
                            } else {
                                z4 = z3;
                                i12 = size;
                                i13 = 1073741824;
                            }
                        }
                    } else {
                        z4 = z3;
                        i12 = size;
                        i13 = 1073741824;
                    }
                    if (z4 && ((mode != i13 && mode2 == i13) || z2)) {
                        iMin3 = Math.min(iArr2[0], i100);
                        iMin4 = Math.min(iArr2[1], i101);
                        i32 = 1073741824;
                        if (mode == 1073741824) {
                            if (eVar4.l() != iMin3) {
                                eVar4.y(iMin3);
                                eVar5.b = true;
                            }
                            i32 = 1073741824;
                        }
                        if (mode2 == i32 && eVar4.i() != iMin4) {
                            eVar4.v(iMin4);
                            eVar5.b = true;
                        }
                        if (mode == i32 || mode2 != i32) {
                            eVar2 = eVar;
                            arrayList2 = arrayList;
                            fVar2 = fVar;
                            i14 = iL2;
                            i15 = i11;
                            eVar3 = eVar5.f5585a;
                            if (eVar5.b) {
                                arrayList5 = eVar3.f5496d0;
                                size5 = arrayList5.size();
                                i35 = 0;
                                while (i35 < size5) {
                                    Object obj2 = arrayList5.get(i35);
                                    i35++;
                                    d dVar21 = (d) obj2;
                                    dVar21.f5470a = false;
                                    j jVar = dVar21.f5475d;
                                    jVar.f5607e.f5596j = false;
                                    jVar.g = false;
                                    jVar.n();
                                    l lVar = dVar21.f5476e;
                                    lVar.f5607e.f5596j = false;
                                    lVar.g = false;
                                    lVar.m();
                                }
                                i33 = 0;
                                eVar3.f5470a = false;
                                j jVar2 = eVar3.f5475d;
                                jVar2.f5607e.f5596j = false;
                                jVar2.g = false;
                                jVar2.n();
                                l lVar2 = eVar3.f5476e;
                                lVar2.f5607e.f5596j = false;
                                lVar2.g = false;
                                lVar2.m();
                                eVar5.c();
                            } else {
                                i33 = 0;
                            }
                            eVar5.b(eVar5.f5587d);
                            eVar3.f5458N = i33;
                            eVar3.f5459O = i33;
                            eVar3.f5475d.f5608h.d(i33);
                            eVar3.f5476e.f5608h.d(i33);
                            i34 = 1073741824;
                            if (mode == 1073741824) {
                                zD = eVar4.D(i33, z2);
                                i16 = 1;
                            } else {
                                i16 = 0;
                                zD = true;
                            }
                            if (mode2 == 1073741824) {
                                zD &= eVar4.D(1, z2);
                                i16++;
                            }
                        } else {
                            ArrayList arrayList10 = eVar5.f5588e;
                            e eVar8 = eVar5.f5585a;
                            if (eVar5.b || eVar5.f5586c) {
                                ArrayList arrayList11 = eVar8.f5496d0;
                                int size12 = arrayList11.size();
                                int i104 = 0;
                                while (i104 < size12) {
                                    Object obj3 = arrayList11.get(i104);
                                    int i105 = i104 + 1;
                                    d dVar22 = (d) obj3;
                                    dVar22.f5470a = false;
                                    dVar22.f5475d.n();
                                    dVar22.f5476e.m();
                                    arrayList11 = arrayList11;
                                    i104 = i105;
                                }
                                i36 = 0;
                                eVar8.f5470a = false;
                                eVar8.f5475d.n();
                                eVar8.f5476e.m();
                                eVar5.f5586c = false;
                            } else {
                                i36 = 0;
                            }
                            eVar5.b(eVar5.f5587d);
                            eVar8.f5458N = i36;
                            int[] iArr6 = eVar8.f5474c0;
                            l lVar3 = eVar8.f5476e;
                            j jVar3 = eVar8.f5475d;
                            eVar8.f5459O = i36;
                            fVar2 = fVar;
                            int iH2 = eVar8.h(i36);
                            arrayList2 = arrayList;
                            int iH3 = eVar8.h(1);
                            if (eVar5.b) {
                                eVar5.c();
                            }
                            int iM = eVar8.m();
                            eVar2 = eVar;
                            int iN = eVar8.n();
                            i14 = iL2;
                            p056w.f fVar8 = jVar3.f5608h;
                            i15 = i11;
                            p056w.g gVar = jVar3.f5607e;
                            fVar8.d(iM);
                            p056w.f fVar9 = lVar3.f5608h;
                            p056w.g gVar2 = lVar3.f5607e;
                            fVar9.d(iN);
                            eVar5.g();
                            if (iH2 == 2 || iH3 == 2) {
                                if (z2) {
                                    int size13 = arrayList10.size();
                                    i37 = iN;
                                    int i106 = 0;
                                    while (i106 < size13) {
                                        Object obj4 = arrayList10.get(i106);
                                        i106++;
                                        if (!((p056w.m) obj4).k()) {
                                            z2 = false;
                                            break;
                                        }
                                    }
                                } else {
                                    i37 = iN;
                                }
                                if (z2 && iH2 == 2) {
                                    eVar8.w(1);
                                    eVar8.y(eVar5.d(eVar8, 0));
                                    gVar.d(eVar8.l());
                                }
                                if (z2 && iH3 == 2) {
                                    i38 = 1;
                                    eVar8.x(1);
                                    eVar8.v(eVar5.d(eVar8, 1));
                                    gVar2.d(eVar8.i());
                                }
                                i39 = iArr6[0];
                                if (i39 != i38 || i39 == 4) {
                                    int iL7 = eVar8.l() + iM;
                                    jVar3.f5609i.d(iL7);
                                    gVar.d(iL7 - iM);
                                    eVar5.g();
                                    i40 = iArr6[1];
                                    if (i40 != 1 || i40 == 4) {
                                        int i107 = eVar8.i() + i37;
                                        lVar3.f5609i.d(i107);
                                        gVar2.d(i107 - i37);
                                    }
                                    eVar5.g();
                                    z22 = true;
                                } else {
                                    z22 = false;
                                }
                                size6 = arrayList10.size();
                                i41 = 0;
                                while (i41 < size6) {
                                    Object obj5 = arrayList10.get(i41);
                                    i41++;
                                    mVar2 = (p056w.m) obj5;
                                    if (mVar2.b == eVar8 || mVar2.g) {
                                        mVar2.e();
                                    }
                                }
                                size7 = arrayList10.size();
                                i42 = 0;
                                while (true) {
                                    if (i42 < size7) {
                                        z23 = true;
                                        break;
                                    }
                                    Object obj6 = arrayList10.get(i42);
                                    i42++;
                                    mVar = (p056w.m) obj6;
                                    if (!z22 || mVar.b != eVar8) {
                                        if (mVar.f5608h.f5596j || ((!mVar.f5609i.f5596j && !(mVar instanceof p056w.h)) || (!mVar.f5607e.f5596j && !(mVar instanceof p056w.c) && !(mVar instanceof p056w.h)))) {
                                            z23 = false;
                                            break;
                                        }
                                    }
                                }
                                eVar8.w(iH2);
                                eVar8.x(iH3);
                                zD = z23;
                                i16 = 2;
                                i34 = 1073741824;
                            } else {
                                i37 = iN;
                            }
                            i38 = 1;
                            i39 = iArr6[0];
                            if (i39 != i38) {
                                int iL8 = eVar8.l() + iM;
                                jVar3.f5609i.d(iL8);
                                gVar.d(iL8 - iM);
                                eVar5.g();
                                i40 = iArr6[1];
                                if (i40 != 1) {
                                    int i108 = eVar8.i() + i37;
                                    lVar3.f5609i.d(i108);
                                    gVar2.d(i108 - i37);
                                } else {
                                    int i109 = eVar8.i() + i37;
                                    lVar3.f5609i.d(i109);
                                    gVar2.d(i109 - i37);
                                }
                                eVar5.g();
                                z22 = true;
                            } else {
                                int iL9 = eVar8.l() + iM;
                                jVar3.f5609i.d(iL9);
                                gVar.d(iL9 - iM);
                                eVar5.g();
                                i40 = iArr6[1];
                                if (i40 != 1) {
                                    int i1010 = eVar8.i() + i37;
                                    lVar3.f5609i.d(i1010);
                                    gVar2.d(i1010 - i37);
                                } else {
                                    int i1011 = eVar8.i() + i37;
                                    lVar3.f5609i.d(i1011);
                                    gVar2.d(i1011 - i37);
                                }
                                eVar5.g();
                                z22 = true;
                            }
                            size6 = arrayList10.size();
                            i41 = 0;
                            while (i41 < size6) {
                                Object obj7 = arrayList10.get(i41);
                                i41++;
                                mVar2 = (p056w.m) obj7;
                                if (mVar2.b == eVar8) {
                                }
                                mVar2.e();
                            }
                            size7 = arrayList10.size();
                            i42 = 0;
                            while (true) {
                                if (i42 < size7) {
                                    z23 = true;
                                    break;
                                }
                                Object obj8 = arrayList10.get(i42);
                                i42++;
                                mVar = (p056w.m) obj8;
                                if (!z22) {
                                }
                                if (mVar.f5608h.f5596j) {
                                }
                                z23 = false;
                                break;
                            }
                            eVar8.w(iH2);
                            eVar8.x(iH3);
                            zD = z23;
                            i16 = 2;
                            i34 = 1073741824;
                        }
                        if (zD) {
                            if (mode == i34) {
                                z20 = true;
                            } else {
                                z20 = false;
                            }
                            if (mode2 == i34) {
                                z21 = true;
                            } else {
                                z21 = false;
                            }
                            eVar4.z(z20, z21);
                        }
                    } else {
                        eVar2 = eVar;
                        arrayList2 = arrayList;
                        fVar2 = fVar;
                        i14 = iL2;
                        i15 = i11;
                        i16 = 0;
                        zD = false;
                    }
                    if (zD || i16 != 2) {
                        if (i12 > 0) {
                            size3 = eVar4.f5496d0.size();
                            fVar6 = eVar4.f5499g0;
                            for (i29 = 0; i29 < size3; i29++) {
                                dVar3 = (d) eVar4.f5496d0.get(i29);
                                if ((dVar3 instanceof h) && (!dVar3.f5475d.f5607e.f5596j || !dVar3.f5476e.f5607e.f5596j)) {
                                    iH = dVar3.h(0);
                                    int iH4 = dVar3.h(1);
                                    if (iH == 3 || dVar3.f5479j == 1 || iH4 != 3 || dVar3.f5480k == 1) {
                                        bVar.j(fVar6, dVar3, false);
                                    }
                                }
                            }
                            constraintLayout = fVar6.f5896a;
                            childCount = constraintLayout.getChildCount();
                            arrayList4 = constraintLayout.f2797c;
                            for (i30 = 0; i30 < childCount; i30++) {
                                constraintLayout.getChildAt(i30);
                            }
                            size4 = arrayList4.size();
                            if (size4 > 0) {
                                for (i31 = 0; i31 < size4; i31++) {
                                    ((c) arrayList4.get(i31)).getClass();
                                }
                            }
                        }
                        i17 = eVar4.p0;
                        size2 = arrayList2.size();
                        i18 = i14;
                        i19 = i15;
                        if (i12 > 0) {
                            bVar.l(eVar4, i18, i19);
                        }
                        if (size2 > 0) {
                            iArr3 = eVar4.f5474c0;
                            if (iArr3[0] == 2) {
                                z6 = true;
                            } else {
                                z6 = false;
                            }
                            if (iArr3[1] == 2) {
                                z7 = true;
                            } else {
                                z7 = false;
                            }
                            e eVar9 = eVar2;
                            iMax3 = Math.max(eVar4.l(), eVar9.f5461Q);
                            iMax4 = Math.max(eVar4.i(), eVar9.f5462R);
                            i20 = 0;
                            z8 = false;
                            while (i20 < size2) {
                                ArrayList arrayList12 = arrayList2;
                                dVar2 = (d) arrayList12.get(i20);
                                if (dVar2 instanceof p053v.g) {
                                    iL5 = dVar2.l();
                                    i27 = dVar2.i();
                                    z14 = z7;
                                    z15 = z6;
                                    fVar5 = fVar2;
                                    boolean zJ2 = z8 | bVar.j(fVar5, dVar2, true);
                                    iL6 = dVar2.l();
                                    z16 = zJ2;
                                    i28 = dVar2.i();
                                    if (iL6 != iL5) {
                                        dVar2.y(iL6);
                                        if (z15 && dVar2.m() + dVar2.f5455J > iMax3) {
                                            iMax3 = Math.max(iMax3, dVar2.g(4).c() + dVar2.m() + dVar2.f5455J);
                                        }
                                        z16 = true;
                                    }
                                    if (i28 != i27) {
                                        dVar2.v(i28);
                                        if (z14 && dVar2.n() + dVar2.K > iMax4) {
                                            iMax4 = Math.max(iMax4, dVar2.g(5).c() + dVar2.n() + dVar2.K);
                                        }
                                        z17 = true;
                                    } else {
                                        z17 = z16;
                                    }
                                    z8 = ((p053v.g) dVar2).f5544l0 | z17;
                                } else {
                                    z14 = z7;
                                    z15 = z6;
                                    fVar5 = fVar2;
                                }
                                i20++;
                                fVar2 = fVar5;
                                arrayList2 = arrayList12;
                                z7 = z14;
                                z6 = z15;
                            }
                            z9 = z7;
                            z10 = z6;
                            fVar3 = fVar2;
                            arrayList3 = arrayList2;
                            i21 = 0;
                            while (i21 < 2) {
                                i22 = 0;
                                while (i22 < size2) {
                                    dVar = (d) arrayList3.get(i22);
                                    if (!((dVar instanceof i) || (dVar instanceof p053v.g)) || (dVar instanceof h) || dVar.f5466V == 8 || ((dVar.f5475d.f5607e.f5596j && dVar.f5476e.f5607e.f5596j) || (dVar instanceof p053v.g))) {
                                        i24 = size2;
                                        fVar4 = fVar3;
                                        i25 = i21;
                                    } else {
                                        iL3 = dVar.l();
                                        i23 = dVar.i();
                                        i24 = size2;
                                        int i110 = dVar.f5460P;
                                        i25 = i21;
                                        zJ = z8 | bVar.j(fVar3, dVar, true);
                                        iL4 = dVar.l();
                                        fVar4 = fVar3;
                                        i26 = dVar.i();
                                        if (iL4 != iL3) {
                                            dVar.y(iL4);
                                            if (!z10 && dVar.m() + dVar.f5455J > iMax3) {
                                                iMax3 = Math.max(iMax3, dVar.g(4).c() + dVar.m() + dVar.f5455J);
                                            }
                                            zJ = true;
                                        }
                                        if (i26 != i23) {
                                            dVar.v(i26);
                                            if (!z9 && dVar.n() + dVar.K > iMax4) {
                                                iMax4 = Math.max(iMax4, dVar.g(5).c() + dVar.n() + dVar.K);
                                            }
                                            z13 = true;
                                        } else {
                                            z13 = zJ;
                                        }
                                        if (dVar.f5492w || i110 == dVar.f5460P) {
                                            z8 = z13;
                                        } else {
                                            z8 = true;
                                        }
                                    }
                                    i22++;
                                    size2 = i24;
                                    i21 = i25;
                                    fVar3 = fVar4;
                                }
                                int i111 = size2;
                                f fVar10 = fVar3;
                                int i112 = i21;
                                if (z8) {
                                    bVar.l(eVar4, i18, i19);
                                    z8 = false;
                                }
                                i21 = i112 + 1;
                                size2 = i111;
                                fVar3 = fVar10;
                            }
                            if (z8) {
                                bVar.l(eVar4, i18, i19);
                                if (eVar4.l() < iMax3) {
                                    eVar4.y(iMax3);
                                    z11 = true;
                                } else {
                                    z11 = false;
                                }
                                if (eVar4.i() < iMax4) {
                                    eVar4.v(iMax4);
                                    z12 = true;
                                } else {
                                    z12 = z11;
                                }
                                if (z12) {
                                    bVar.l(eVar4, i18, i19);
                                }
                            }
                        }
                        eVar4.p0 = i17;
                        if ((i17 & 256) == 256) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        p051u.e.f5344p = z5;
                    }
                    int iL10 = eVar4.l();
                    int i113 = eVar4.i();
                    z18 = eVar4.f5507q0;
                    z19 = eVar4.f5508r0;
                    f fVar11 = fVar7;
                    int i114 = fVar11.f5899e;
                    int iResolveSizeAndState = View.resolveSizeAndState(iL10 + fVar11.f5898d, i3, 0);
                    int iResolveSizeAndState2 = View.resolveSizeAndState(i113 + i114, i4, 0);
                    int i115 = iResolveSizeAndState & ViewCompat.MEASURED_SIZE_MASK;
                    int i116 = iResolveSizeAndState2 & ViewCompat.MEASURED_SIZE_MASK;
                    iMin = Math.min(this.g, i115);
                    iMin2 = Math.min(this.f2800h, i116);
                    if (z18) {
                        iMin |= 16777216;
                    }
                    if (z19) {
                        iMin2 |= 16777216;
                    }
                    setMeasuredDimension(iMin, iMin2);
                }
                iArr2 = iArr;
                z3 = true;
                if (z3) {
                    i43 = 0;
                    while (true) {
                        if (i43 < size) {
                            z24 = z3;
                            dVar4 = (d) eVar4.f5496d0.get(i43);
                            i12 = size;
                            iArr4 = dVar4.f5474c0;
                            i44 = i43;
                            if (iArr4[0] == 3) {
                                z25 = true;
                            } else {
                                z25 = false;
                            }
                            if (iArr4[1] == 3) {
                                z26 = true;
                            } else {
                                z26 = false;
                            }
                            if (!z25) {
                            }
                            if (dVar4.q()) {
                                i43 = i44 + 1;
                                z3 = z24;
                                size = i12;
                            } else {
                                i43 = i44 + 1;
                                z3 = z24;
                                size = i12;
                            }
                            i13 = 1073741824;
                            z4 = false;
                        } else {
                            z4 = z3;
                            i12 = size;
                            i13 = 1073741824;
                        }
                    }
                } else {
                    z4 = z3;
                    i12 = size;
                    i13 = 1073741824;
                }
                if (z4 && ((mode != i13 && mode2 == i13) || z2)) {
                    iMin3 = Math.min(iArr2[0], i100);
                    iMin4 = Math.min(iArr2[1], i101);
                    i32 = 1073741824;
                    if (mode == 1073741824) {
                        if (eVar4.l() != iMin3) {
                            eVar4.y(iMin3);
                            eVar5.b = true;
                        }
                        i32 = 1073741824;
                    }
                    if (mode2 == i32) {
                        eVar4.v(iMin4);
                        eVar5.b = true;
                    }
                    if (mode == i32) {
                        eVar2 = eVar;
                        arrayList2 = arrayList;
                        fVar2 = fVar;
                        i14 = iL2;
                        i15 = i11;
                        eVar3 = eVar5.f5585a;
                        if (eVar5.b) {
                            arrayList5 = eVar3.f5496d0;
                            size5 = arrayList5.size();
                            i35 = 0;
                            while (i35 < size5) {
                                Object obj9 = arrayList5.get(i35);
                                i35++;
                                d dVar23 = (d) obj9;
                                dVar23.f5470a = false;
                                j jVar4 = dVar23.f5475d;
                                jVar4.f5607e.f5596j = false;
                                jVar4.g = false;
                                jVar4.n();
                                l lVar4 = dVar23.f5476e;
                                lVar4.f5607e.f5596j = false;
                                lVar4.g = false;
                                lVar4.m();
                            }
                            i33 = 0;
                            eVar3.f5470a = false;
                            j jVar5 = eVar3.f5475d;
                            jVar5.f5607e.f5596j = false;
                            jVar5.g = false;
                            jVar5.n();
                            l lVar5 = eVar3.f5476e;
                            lVar5.f5607e.f5596j = false;
                            lVar5.g = false;
                            lVar5.m();
                            eVar5.c();
                        } else {
                            i33 = 0;
                        }
                        eVar5.b(eVar5.f5587d);
                        eVar3.f5458N = i33;
                        eVar3.f5459O = i33;
                        eVar3.f5475d.f5608h.d(i33);
                        eVar3.f5476e.f5608h.d(i33);
                        i34 = 1073741824;
                        if (mode == 1073741824) {
                            zD = eVar4.D(i33, z2);
                            i16 = 1;
                        } else {
                            i16 = 0;
                            zD = true;
                        }
                        if (mode2 == 1073741824) {
                            zD &= eVar4.D(1, z2);
                            i16++;
                        }
                    } else {
                        eVar2 = eVar;
                        arrayList2 = arrayList;
                        fVar2 = fVar;
                        i14 = iL2;
                        i15 = i11;
                        eVar3 = eVar5.f5585a;
                        if (eVar5.b) {
                            arrayList5 = eVar3.f5496d0;
                            size5 = arrayList5.size();
                            i35 = 0;
                            while (i35 < size5) {
                                Object obj10 = arrayList5.get(i35);
                                i35++;
                                d dVar24 = (d) obj10;
                                dVar24.f5470a = false;
                                j jVar6 = dVar24.f5475d;
                                jVar6.f5607e.f5596j = false;
                                jVar6.g = false;
                                jVar6.n();
                                l lVar6 = dVar24.f5476e;
                                lVar6.f5607e.f5596j = false;
                                lVar6.g = false;
                                lVar6.m();
                            }
                            i33 = 0;
                            eVar3.f5470a = false;
                            j jVar7 = eVar3.f5475d;
                            jVar7.f5607e.f5596j = false;
                            jVar7.g = false;
                            jVar7.n();
                            l lVar7 = eVar3.f5476e;
                            lVar7.f5607e.f5596j = false;
                            lVar7.g = false;
                            lVar7.m();
                            eVar5.c();
                        } else {
                            i33 = 0;
                        }
                        eVar5.b(eVar5.f5587d);
                        eVar3.f5458N = i33;
                        eVar3.f5459O = i33;
                        eVar3.f5475d.f5608h.d(i33);
                        eVar3.f5476e.f5608h.d(i33);
                        i34 = 1073741824;
                        if (mode == 1073741824) {
                            zD = eVar4.D(i33, z2);
                            i16 = 1;
                        } else {
                            i16 = 0;
                            zD = true;
                        }
                        if (mode2 == 1073741824) {
                            zD &= eVar4.D(1, z2);
                            i16++;
                        }
                    }
                    if (zD) {
                        if (mode == i34) {
                            z20 = true;
                        } else {
                            z20 = false;
                        }
                        if (mode2 == i34) {
                            z21 = true;
                        } else {
                            z21 = false;
                        }
                        eVar4.z(z20, z21);
                    }
                } else {
                    eVar2 = eVar;
                    arrayList2 = arrayList;
                    fVar2 = fVar;
                    i14 = iL2;
                    i15 = i11;
                    i16 = 0;
                    zD = false;
                }
                if (zD) {
                    if (i12 > 0) {
                        size3 = eVar4.f5496d0.size();
                        fVar6 = eVar4.f5499g0;
                        while (i29 < size3) {
                            dVar3 = (d) eVar4.f5496d0.get(i29);
                            if (dVar3 instanceof h) {
                                iH = dVar3.h(0);
                                int iH5 = dVar3.h(1);
                                if (iH == 3) {
                                    bVar.j(fVar6, dVar3, false);
                                } else {
                                    bVar.j(fVar6, dVar3, false);
                                }
                            }
                        }
                        constraintLayout = fVar6.f5896a;
                        childCount = constraintLayout.getChildCount();
                        arrayList4 = constraintLayout.f2797c;
                        while (i30 < childCount) {
                            constraintLayout.getChildAt(i30);
                        }
                        size4 = arrayList4.size();
                        if (size4 > 0) {
                            while (i31 < size4) {
                                ((c) arrayList4.get(i31)).getClass();
                            }
                        }
                    }
                    i17 = eVar4.p0;
                    size2 = arrayList2.size();
                    i18 = i14;
                    i19 = i15;
                    if (i12 > 0) {
                        bVar.l(eVar4, i18, i19);
                    }
                    if (size2 > 0) {
                        iArr3 = eVar4.f5474c0;
                        if (iArr3[0] == 2) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        if (iArr3[1] == 2) {
                            z7 = true;
                        } else {
                            z7 = false;
                        }
                        e eVar10 = eVar2;
                        iMax3 = Math.max(eVar4.l(), eVar10.f5461Q);
                        iMax4 = Math.max(eVar4.i(), eVar10.f5462R);
                        i20 = 0;
                        z8 = false;
                        while (i20 < size2) {
                            ArrayList arrayList13 = arrayList2;
                            dVar2 = (d) arrayList13.get(i20);
                            if (dVar2 instanceof p053v.g) {
                                z14 = z7;
                                z15 = z6;
                                fVar5 = fVar2;
                            } else {
                                iL5 = dVar2.l();
                                i27 = dVar2.i();
                                z14 = z7;
                                z15 = z6;
                                fVar5 = fVar2;
                                boolean zJ3 = z8 | bVar.j(fVar5, dVar2, true);
                                iL6 = dVar2.l();
                                z16 = zJ3;
                                i28 = dVar2.i();
                                if (iL6 != iL5) {
                                    dVar2.y(iL6);
                                    if (z15) {
                                        iMax3 = Math.max(iMax3, dVar2.g(4).c() + dVar2.m() + dVar2.f5455J);
                                    }
                                    z16 = true;
                                }
                                if (i28 != i27) {
                                    dVar2.v(i28);
                                    if (z14) {
                                        iMax4 = Math.max(iMax4, dVar2.g(5).c() + dVar2.n() + dVar2.K);
                                    }
                                    z17 = true;
                                } else {
                                    z17 = z16;
                                }
                                z8 = ((p053v.g) dVar2).f5544l0 | z17;
                            }
                            i20++;
                            fVar2 = fVar5;
                            arrayList2 = arrayList13;
                            z7 = z14;
                            z6 = z15;
                        }
                        z9 = z7;
                        z10 = z6;
                        fVar3 = fVar2;
                        arrayList3 = arrayList2;
                        i21 = 0;
                        while (i21 < 2) {
                            i22 = 0;
                            while (i22 < size2) {
                                dVar = (d) arrayList3.get(i22);
                                if (dVar instanceof i) {
                                    iL3 = dVar.l();
                                    i23 = dVar.i();
                                    i24 = size2;
                                    int i117 = dVar.f5460P;
                                    i25 = i21;
                                    zJ = z8 | bVar.j(fVar3, dVar, true);
                                    iL4 = dVar.l();
                                    fVar4 = fVar3;
                                    i26 = dVar.i();
                                    if (iL4 != iL3) {
                                        dVar.y(iL4);
                                        if (!z10) {
                                        }
                                        zJ = true;
                                    }
                                    if (i26 != i23) {
                                        dVar.v(i26);
                                        if (!z9) {
                                        }
                                        z13 = true;
                                    } else {
                                        z13 = zJ;
                                    }
                                    if (dVar.f5492w) {
                                        z8 = z13;
                                    } else {
                                        z8 = z13;
                                    }
                                } else {
                                    iL3 = dVar.l();
                                    i23 = dVar.i();
                                    i24 = size2;
                                    int i118 = dVar.f5460P;
                                    i25 = i21;
                                    zJ = z8 | bVar.j(fVar3, dVar, true);
                                    iL4 = dVar.l();
                                    fVar4 = fVar3;
                                    i26 = dVar.i();
                                    if (iL4 != iL3) {
                                        dVar.y(iL4);
                                        if (!z10) {
                                        }
                                        zJ = true;
                                    }
                                    if (i26 != i23) {
                                        dVar.v(i26);
                                        if (!z9) {
                                        }
                                        z13 = true;
                                    } else {
                                        z13 = zJ;
                                    }
                                    if (dVar.f5492w) {
                                        z8 = z13;
                                    } else {
                                        z8 = z13;
                                    }
                                }
                                i22++;
                                size2 = i24;
                                i21 = i25;
                                fVar3 = fVar4;
                            }
                            int i119 = size2;
                            f fVar12 = fVar3;
                            int i1110 = i21;
                            if (z8) {
                                bVar.l(eVar4, i18, i19);
                                z8 = false;
                            }
                            i21 = i1110 + 1;
                            size2 = i119;
                            fVar3 = fVar12;
                        }
                        if (z8) {
                            bVar.l(eVar4, i18, i19);
                            if (eVar4.l() < iMax3) {
                                eVar4.y(iMax3);
                                z11 = true;
                            } else {
                                z11 = false;
                            }
                            if (eVar4.i() < iMax4) {
                                eVar4.v(iMax4);
                                z12 = true;
                            } else {
                                z12 = z11;
                            }
                            if (z12) {
                                bVar.l(eVar4, i18, i19);
                            }
                        }
                    }
                    eVar4.p0 = i17;
                    if ((i17 & 256) == 256) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    p051u.e.f5344p = z5;
                } else {
                    if (i12 > 0) {
                        size3 = eVar4.f5496d0.size();
                        fVar6 = eVar4.f5499g0;
                        while (i29 < size3) {
                            dVar3 = (d) eVar4.f5496d0.get(i29);
                            if (dVar3 instanceof h) {
                                iH = dVar3.h(0);
                                int iH6 = dVar3.h(1);
                                if (iH == 3) {
                                    bVar.j(fVar6, dVar3, false);
                                } else {
                                    bVar.j(fVar6, dVar3, false);
                                }
                            }
                        }
                        constraintLayout = fVar6.f5896a;
                        childCount = constraintLayout.getChildCount();
                        arrayList4 = constraintLayout.f2797c;
                        while (i30 < childCount) {
                            constraintLayout.getChildAt(i30);
                        }
                        size4 = arrayList4.size();
                        if (size4 > 0) {
                            while (i31 < size4) {
                                ((c) arrayList4.get(i31)).getClass();
                            }
                        }
                    }
                    i17 = eVar4.p0;
                    size2 = arrayList2.size();
                    i18 = i14;
                    i19 = i15;
                    if (i12 > 0) {
                        bVar.l(eVar4, i18, i19);
                    }
                    if (size2 > 0) {
                        iArr3 = eVar4.f5474c0;
                        if (iArr3[0] == 2) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        if (iArr3[1] == 2) {
                            z7 = true;
                        } else {
                            z7 = false;
                        }
                        e eVar11 = eVar2;
                        iMax3 = Math.max(eVar4.l(), eVar11.f5461Q);
                        iMax4 = Math.max(eVar4.i(), eVar11.f5462R);
                        i20 = 0;
                        z8 = false;
                        while (i20 < size2) {
                            ArrayList arrayList14 = arrayList2;
                            dVar2 = (d) arrayList14.get(i20);
                            if (dVar2 instanceof p053v.g) {
                                z14 = z7;
                                z15 = z6;
                                fVar5 = fVar2;
                            } else {
                                iL5 = dVar2.l();
                                i27 = dVar2.i();
                                z14 = z7;
                                z15 = z6;
                                fVar5 = fVar2;
                                boolean zJ4 = z8 | bVar.j(fVar5, dVar2, true);
                                iL6 = dVar2.l();
                                z16 = zJ4;
                                i28 = dVar2.i();
                                if (iL6 != iL5) {
                                    dVar2.y(iL6);
                                    if (z15) {
                                        iMax3 = Math.max(iMax3, dVar2.g(4).c() + dVar2.m() + dVar2.f5455J);
                                    }
                                    z16 = true;
                                }
                                if (i28 != i27) {
                                    dVar2.v(i28);
                                    if (z14) {
                                        iMax4 = Math.max(iMax4, dVar2.g(5).c() + dVar2.n() + dVar2.K);
                                    }
                                    z17 = true;
                                } else {
                                    z17 = z16;
                                }
                                z8 = ((p053v.g) dVar2).f5544l0 | z17;
                            }
                            i20++;
                            fVar2 = fVar5;
                            arrayList2 = arrayList14;
                            z7 = z14;
                            z6 = z15;
                        }
                        z9 = z7;
                        z10 = z6;
                        fVar3 = fVar2;
                        arrayList3 = arrayList2;
                        i21 = 0;
                        while (i21 < 2) {
                            i22 = 0;
                            while (i22 < size2) {
                                dVar = (d) arrayList3.get(i22);
                                if (dVar instanceof i) {
                                    iL3 = dVar.l();
                                    i23 = dVar.i();
                                    i24 = size2;
                                    int i1111 = dVar.f5460P;
                                    i25 = i21;
                                    zJ = z8 | bVar.j(fVar3, dVar, true);
                                    iL4 = dVar.l();
                                    fVar4 = fVar3;
                                    i26 = dVar.i();
                                    if (iL4 != iL3) {
                                        dVar.y(iL4);
                                        if (!z10) {
                                        }
                                        zJ = true;
                                    }
                                    if (i26 != i23) {
                                        dVar.v(i26);
                                        if (!z9) {
                                        }
                                        z13 = true;
                                    } else {
                                        z13 = zJ;
                                    }
                                    if (dVar.f5492w) {
                                        z8 = z13;
                                    } else {
                                        z8 = z13;
                                    }
                                } else {
                                    iL3 = dVar.l();
                                    i23 = dVar.i();
                                    i24 = size2;
                                    int i1112 = dVar.f5460P;
                                    i25 = i21;
                                    zJ = z8 | bVar.j(fVar3, dVar, true);
                                    iL4 = dVar.l();
                                    fVar4 = fVar3;
                                    i26 = dVar.i();
                                    if (iL4 != iL3) {
                                        dVar.y(iL4);
                                        if (!z10) {
                                        }
                                        zJ = true;
                                    }
                                    if (i26 != i23) {
                                        dVar.v(i26);
                                        if (!z9) {
                                        }
                                        z13 = true;
                                    } else {
                                        z13 = zJ;
                                    }
                                    if (dVar.f5492w) {
                                        z8 = z13;
                                    } else {
                                        z8 = z13;
                                    }
                                }
                                i22++;
                                size2 = i24;
                                i21 = i25;
                                fVar3 = fVar4;
                            }
                            int i1113 = size2;
                            f fVar13 = fVar3;
                            int i1114 = i21;
                            if (z8) {
                                bVar.l(eVar4, i18, i19);
                                z8 = false;
                            }
                            i21 = i1114 + 1;
                            size2 = i1113;
                            fVar3 = fVar13;
                        }
                        if (z8) {
                            bVar.l(eVar4, i18, i19);
                            if (eVar4.l() < iMax3) {
                                eVar4.y(iMax3);
                                z11 = true;
                            } else {
                                z11 = false;
                            }
                            if (eVar4.i() < iMax4) {
                                eVar4.v(iMax4);
                                z12 = true;
                            } else {
                                z12 = z11;
                            }
                            if (z12) {
                                bVar.l(eVar4, i18, i19);
                            }
                        }
                    }
                    eVar4.p0 = i17;
                    if ((i17 & 256) == 256) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    p051u.e.f5344p = z5;
                }
                int iL11 = eVar4.l();
                int i1115 = eVar4.i();
                z18 = eVar4.f5507q0;
                z19 = eVar4.f5508r0;
                f fVar14 = fVar7;
                int i1116 = fVar14.f5899e;
                int iResolveSizeAndState3 = View.resolveSizeAndState(iL11 + fVar14.f5898d, i3, 0);
                int iResolveSizeAndState4 = View.resolveSizeAndState(i1115 + i1116, i4, 0);
                int i1117 = iResolveSizeAndState3 & ViewCompat.MEASURED_SIZE_MASK;
                int i1118 = iResolveSizeAndState4 & ViewCompat.MEASURED_SIZE_MASK;
                iMin = Math.min(this.g, i1117);
                iMin2 = Math.min(this.f2800h, i1118);
                if (z18) {
                    iMin |= 16777216;
                }
                if (z19) {
                    iMin2 |= 16777216;
                }
                setMeasuredDimension(iMin, iMin2);
            }
            if (childCount4 == 0) {
                iMax2 = Math.max(0, this.f);
            } else {
                iMax2 = i101;
            }
            i8 = 2;
            iL = eVar4.l();
            iArr = eVar4.f5490u;
            if (iMax == iL) {
                eVar5.f5586c = true;
                c3 = 1;
            } else {
                eVar5.f5586c = true;
                c3 = 1;
            }
            eVar4.f5458N = 0;
            eVar4.f5459O = 0;
            iArr[0] = this.g - i103;
            iArr[c3] = this.f2800h - i102;
            eVar4.f5461Q = 0;
            eVar4.f5462R = 0;
            eVar4.w(i7);
            eVar4.y(iMax);
            eVar4.x(i8);
            eVar4.v(iMax2);
            i9 = this.f2799e - i103;
            if (i9 < 0) {
                eVar4.f5461Q = 0;
            } else {
                eVar4.f5461Q = i9;
            }
            i10 = this.f - i102;
            if (i10 < 0) {
                eVar4.f5462R = 0;
            } else {
                eVar4.f5462R = i10;
            }
            eVar4.f5502j0 = iMax7;
            eVar4.f5503k0 = iMax5;
            eVar = (e) bVar.f945e;
            arrayList = (ArrayList) bVar.f943c;
            fVar = eVar4.f5499g0;
            size = eVar4.f5496d0.size();
            iL2 = eVar4.l();
            i11 = eVar4.i();
            if ((i98 & 128) == 128) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (!z2) {
                iArr2 = iArr;
                if ((i98 & 64) == 64) {
                    z3 = false;
                }
                if (z3) {
                    i43 = 0;
                    while (true) {
                        if (i43 < size) {
                            z24 = z3;
                            dVar4 = (d) eVar4.f5496d0.get(i43);
                            i12 = size;
                            iArr4 = dVar4.f5474c0;
                            i44 = i43;
                            if (iArr4[0] == 3) {
                                z25 = true;
                            } else {
                                z25 = false;
                            }
                            if (iArr4[1] == 3) {
                                z26 = true;
                            } else {
                                z26 = false;
                            }
                            if (!z25) {
                            }
                            if (dVar4.q()) {
                                i43 = i44 + 1;
                                z3 = z24;
                                size = i12;
                            } else {
                                i43 = i44 + 1;
                                z3 = z24;
                                size = i12;
                            }
                            i13 = 1073741824;
                            z4 = false;
                        } else {
                            z4 = z3;
                            i12 = size;
                            i13 = 1073741824;
                        }
                    }
                } else {
                    z4 = z3;
                    i12 = size;
                    i13 = 1073741824;
                }
                if (z4 && ((mode != i13 && mode2 == i13) || z2)) {
                    iMin3 = Math.min(iArr2[0], i100);
                    iMin4 = Math.min(iArr2[1], i101);
                    i32 = 1073741824;
                    if (mode == 1073741824) {
                        if (eVar4.l() != iMin3) {
                            eVar4.y(iMin3);
                            eVar5.b = true;
                        }
                        i32 = 1073741824;
                    }
                    if (mode2 == i32) {
                        eVar4.v(iMin4);
                        eVar5.b = true;
                    }
                    if (mode == i32) {
                        eVar2 = eVar;
                        arrayList2 = arrayList;
                        fVar2 = fVar;
                        i14 = iL2;
                        i15 = i11;
                        eVar3 = eVar5.f5585a;
                        if (eVar5.b) {
                            arrayList5 = eVar3.f5496d0;
                            size5 = arrayList5.size();
                            i35 = 0;
                            while (i35 < size5) {
                                Object obj11 = arrayList5.get(i35);
                                i35++;
                                d dVar25 = (d) obj11;
                                dVar25.f5470a = false;
                                j jVar8 = dVar25.f5475d;
                                jVar8.f5607e.f5596j = false;
                                jVar8.g = false;
                                jVar8.n();
                                l lVar8 = dVar25.f5476e;
                                lVar8.f5607e.f5596j = false;
                                lVar8.g = false;
                                lVar8.m();
                            }
                            i33 = 0;
                            eVar3.f5470a = false;
                            j jVar9 = eVar3.f5475d;
                            jVar9.f5607e.f5596j = false;
                            jVar9.g = false;
                            jVar9.n();
                            l lVar9 = eVar3.f5476e;
                            lVar9.f5607e.f5596j = false;
                            lVar9.g = false;
                            lVar9.m();
                            eVar5.c();
                        } else {
                            i33 = 0;
                        }
                        eVar5.b(eVar5.f5587d);
                        eVar3.f5458N = i33;
                        eVar3.f5459O = i33;
                        eVar3.f5475d.f5608h.d(i33);
                        eVar3.f5476e.f5608h.d(i33);
                        i34 = 1073741824;
                        if (mode == 1073741824) {
                            zD = eVar4.D(i33, z2);
                            i16 = 1;
                        } else {
                            i16 = 0;
                            zD = true;
                        }
                        if (mode2 == 1073741824) {
                            zD &= eVar4.D(1, z2);
                            i16++;
                        }
                    } else {
                        eVar2 = eVar;
                        arrayList2 = arrayList;
                        fVar2 = fVar;
                        i14 = iL2;
                        i15 = i11;
                        eVar3 = eVar5.f5585a;
                        if (eVar5.b) {
                            arrayList5 = eVar3.f5496d0;
                            size5 = arrayList5.size();
                            i35 = 0;
                            while (i35 < size5) {
                                Object obj12 = arrayList5.get(i35);
                                i35++;
                                d dVar26 = (d) obj12;
                                dVar26.f5470a = false;
                                j jVar10 = dVar26.f5475d;
                                jVar10.f5607e.f5596j = false;
                                jVar10.g = false;
                                jVar10.n();
                                l lVar10 = dVar26.f5476e;
                                lVar10.f5607e.f5596j = false;
                                lVar10.g = false;
                                lVar10.m();
                            }
                            i33 = 0;
                            eVar3.f5470a = false;
                            j jVar11 = eVar3.f5475d;
                            jVar11.f5607e.f5596j = false;
                            jVar11.g = false;
                            jVar11.n();
                            l lVar11 = eVar3.f5476e;
                            lVar11.f5607e.f5596j = false;
                            lVar11.g = false;
                            lVar11.m();
                            eVar5.c();
                        } else {
                            i33 = 0;
                        }
                        eVar5.b(eVar5.f5587d);
                        eVar3.f5458N = i33;
                        eVar3.f5459O = i33;
                        eVar3.f5475d.f5608h.d(i33);
                        eVar3.f5476e.f5608h.d(i33);
                        i34 = 1073741824;
                        if (mode == 1073741824) {
                            zD = eVar4.D(i33, z2);
                            i16 = 1;
                        } else {
                            i16 = 0;
                            zD = true;
                        }
                        if (mode2 == 1073741824) {
                            zD &= eVar4.D(1, z2);
                            i16++;
                        }
                    }
                    if (zD) {
                        if (mode == i34) {
                            z20 = true;
                        } else {
                            z20 = false;
                        }
                        if (mode2 == i34) {
                            z21 = true;
                        } else {
                            z21 = false;
                        }
                        eVar4.z(z20, z21);
                    }
                } else {
                    eVar2 = eVar;
                    arrayList2 = arrayList;
                    fVar2 = fVar;
                    i14 = iL2;
                    i15 = i11;
                    i16 = 0;
                    zD = false;
                }
                if (zD) {
                    if (i12 > 0) {
                        size3 = eVar4.f5496d0.size();
                        fVar6 = eVar4.f5499g0;
                        while (i29 < size3) {
                            dVar3 = (d) eVar4.f5496d0.get(i29);
                            if (dVar3 instanceof h) {
                                iH = dVar3.h(0);
                                int iH7 = dVar3.h(1);
                                if (iH == 3) {
                                    bVar.j(fVar6, dVar3, false);
                                } else {
                                    bVar.j(fVar6, dVar3, false);
                                }
                            }
                        }
                        constraintLayout = fVar6.f5896a;
                        childCount = constraintLayout.getChildCount();
                        arrayList4 = constraintLayout.f2797c;
                        while (i30 < childCount) {
                            constraintLayout.getChildAt(i30);
                        }
                        size4 = arrayList4.size();
                        if (size4 > 0) {
                            while (i31 < size4) {
                                ((c) arrayList4.get(i31)).getClass();
                            }
                        }
                    }
                    i17 = eVar4.p0;
                    size2 = arrayList2.size();
                    i18 = i14;
                    i19 = i15;
                    if (i12 > 0) {
                        bVar.l(eVar4, i18, i19);
                    }
                    if (size2 > 0) {
                        iArr3 = eVar4.f5474c0;
                        if (iArr3[0] == 2) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        if (iArr3[1] == 2) {
                            z7 = true;
                        } else {
                            z7 = false;
                        }
                        e eVar12 = eVar2;
                        iMax3 = Math.max(eVar4.l(), eVar12.f5461Q);
                        iMax4 = Math.max(eVar4.i(), eVar12.f5462R);
                        i20 = 0;
                        z8 = false;
                        while (i20 < size2) {
                            ArrayList arrayList15 = arrayList2;
                            dVar2 = (d) arrayList15.get(i20);
                            if (dVar2 instanceof p053v.g) {
                                z14 = z7;
                                z15 = z6;
                                fVar5 = fVar2;
                            } else {
                                iL5 = dVar2.l();
                                i27 = dVar2.i();
                                z14 = z7;
                                z15 = z6;
                                fVar5 = fVar2;
                                boolean zJ5 = z8 | bVar.j(fVar5, dVar2, true);
                                iL6 = dVar2.l();
                                z16 = zJ5;
                                i28 = dVar2.i();
                                if (iL6 != iL5) {
                                    dVar2.y(iL6);
                                    if (z15) {
                                        iMax3 = Math.max(iMax3, dVar2.g(4).c() + dVar2.m() + dVar2.f5455J);
                                    }
                                    z16 = true;
                                }
                                if (i28 != i27) {
                                    dVar2.v(i28);
                                    if (z14) {
                                        iMax4 = Math.max(iMax4, dVar2.g(5).c() + dVar2.n() + dVar2.K);
                                    }
                                    z17 = true;
                                } else {
                                    z17 = z16;
                                }
                                z8 = ((p053v.g) dVar2).f5544l0 | z17;
                            }
                            i20++;
                            fVar2 = fVar5;
                            arrayList2 = arrayList15;
                            z7 = z14;
                            z6 = z15;
                        }
                        z9 = z7;
                        z10 = z6;
                        fVar3 = fVar2;
                        arrayList3 = arrayList2;
                        i21 = 0;
                        while (i21 < 2) {
                            i22 = 0;
                            while (i22 < size2) {
                                dVar = (d) arrayList3.get(i22);
                                if (dVar instanceof i) {
                                    iL3 = dVar.l();
                                    i23 = dVar.i();
                                    i24 = size2;
                                    int i1119 = dVar.f5460P;
                                    i25 = i21;
                                    zJ = z8 | bVar.j(fVar3, dVar, true);
                                    iL4 = dVar.l();
                                    fVar4 = fVar3;
                                    i26 = dVar.i();
                                    if (iL4 != iL3) {
                                        dVar.y(iL4);
                                        if (!z10) {
                                        }
                                        zJ = true;
                                    }
                                    if (i26 != i23) {
                                        dVar.v(i26);
                                        if (!z9) {
                                        }
                                        z13 = true;
                                    } else {
                                        z13 = zJ;
                                    }
                                    if (dVar.f5492w) {
                                        z8 = z13;
                                    } else {
                                        z8 = z13;
                                    }
                                } else {
                                    iL3 = dVar.l();
                                    i23 = dVar.i();
                                    i24 = size2;
                                    int i11110 = dVar.f5460P;
                                    i25 = i21;
                                    zJ = z8 | bVar.j(fVar3, dVar, true);
                                    iL4 = dVar.l();
                                    fVar4 = fVar3;
                                    i26 = dVar.i();
                                    if (iL4 != iL3) {
                                        dVar.y(iL4);
                                        if (!z10) {
                                        }
                                        zJ = true;
                                    }
                                    if (i26 != i23) {
                                        dVar.v(i26);
                                        if (!z9) {
                                        }
                                        z13 = true;
                                    } else {
                                        z13 = zJ;
                                    }
                                    if (dVar.f5492w) {
                                        z8 = z13;
                                    } else {
                                        z8 = z13;
                                    }
                                }
                                i22++;
                                size2 = i24;
                                i21 = i25;
                                fVar3 = fVar4;
                            }
                            int i11111 = size2;
                            f fVar15 = fVar3;
                            int i11112 = i21;
                            if (z8) {
                                bVar.l(eVar4, i18, i19);
                                z8 = false;
                            }
                            i21 = i11112 + 1;
                            size2 = i11111;
                            fVar3 = fVar15;
                        }
                        if (z8) {
                            bVar.l(eVar4, i18, i19);
                            if (eVar4.l() < iMax3) {
                                eVar4.y(iMax3);
                                z11 = true;
                            } else {
                                z11 = false;
                            }
                            if (eVar4.i() < iMax4) {
                                eVar4.v(iMax4);
                                z12 = true;
                            } else {
                                z12 = z11;
                            }
                            if (z12) {
                                bVar.l(eVar4, i18, i19);
                            }
                        }
                    }
                    eVar4.p0 = i17;
                    if ((i17 & 256) == 256) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    p051u.e.f5344p = z5;
                } else {
                    if (i12 > 0) {
                        size3 = eVar4.f5496d0.size();
                        fVar6 = eVar4.f5499g0;
                        while (i29 < size3) {
                            dVar3 = (d) eVar4.f5496d0.get(i29);
                            if (dVar3 instanceof h) {
                                iH = dVar3.h(0);
                                int iH8 = dVar3.h(1);
                                if (iH == 3) {
                                    bVar.j(fVar6, dVar3, false);
                                } else {
                                    bVar.j(fVar6, dVar3, false);
                                }
                            }
                        }
                        constraintLayout = fVar6.f5896a;
                        childCount = constraintLayout.getChildCount();
                        arrayList4 = constraintLayout.f2797c;
                        while (i30 < childCount) {
                            constraintLayout.getChildAt(i30);
                        }
                        size4 = arrayList4.size();
                        if (size4 > 0) {
                            while (i31 < size4) {
                                ((c) arrayList4.get(i31)).getClass();
                            }
                        }
                    }
                    i17 = eVar4.p0;
                    size2 = arrayList2.size();
                    i18 = i14;
                    i19 = i15;
                    if (i12 > 0) {
                        bVar.l(eVar4, i18, i19);
                    }
                    if (size2 > 0) {
                        iArr3 = eVar4.f5474c0;
                        if (iArr3[0] == 2) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        if (iArr3[1] == 2) {
                            z7 = true;
                        } else {
                            z7 = false;
                        }
                        e eVar13 = eVar2;
                        iMax3 = Math.max(eVar4.l(), eVar13.f5461Q);
                        iMax4 = Math.max(eVar4.i(), eVar13.f5462R);
                        i20 = 0;
                        z8 = false;
                        while (i20 < size2) {
                            ArrayList arrayList16 = arrayList2;
                            dVar2 = (d) arrayList16.get(i20);
                            if (dVar2 instanceof p053v.g) {
                                z14 = z7;
                                z15 = z6;
                                fVar5 = fVar2;
                            } else {
                                iL5 = dVar2.l();
                                i27 = dVar2.i();
                                z14 = z7;
                                z15 = z6;
                                fVar5 = fVar2;
                                boolean zJ6 = z8 | bVar.j(fVar5, dVar2, true);
                                iL6 = dVar2.l();
                                z16 = zJ6;
                                i28 = dVar2.i();
                                if (iL6 != iL5) {
                                    dVar2.y(iL6);
                                    if (z15) {
                                        iMax3 = Math.max(iMax3, dVar2.g(4).c() + dVar2.m() + dVar2.f5455J);
                                    }
                                    z16 = true;
                                }
                                if (i28 != i27) {
                                    dVar2.v(i28);
                                    if (z14) {
                                        iMax4 = Math.max(iMax4, dVar2.g(5).c() + dVar2.n() + dVar2.K);
                                    }
                                    z17 = true;
                                } else {
                                    z17 = z16;
                                }
                                z8 = ((p053v.g) dVar2).f5544l0 | z17;
                            }
                            i20++;
                            fVar2 = fVar5;
                            arrayList2 = arrayList16;
                            z7 = z14;
                            z6 = z15;
                        }
                        z9 = z7;
                        z10 = z6;
                        fVar3 = fVar2;
                        arrayList3 = arrayList2;
                        i21 = 0;
                        while (i21 < 2) {
                            i22 = 0;
                            while (i22 < size2) {
                                dVar = (d) arrayList3.get(i22);
                                if (dVar instanceof i) {
                                    iL3 = dVar.l();
                                    i23 = dVar.i();
                                    i24 = size2;
                                    int i11113 = dVar.f5460P;
                                    i25 = i21;
                                    zJ = z8 | bVar.j(fVar3, dVar, true);
                                    iL4 = dVar.l();
                                    fVar4 = fVar3;
                                    i26 = dVar.i();
                                    if (iL4 != iL3) {
                                        dVar.y(iL4);
                                        if (!z10) {
                                        }
                                        zJ = true;
                                    }
                                    if (i26 != i23) {
                                        dVar.v(i26);
                                        if (!z9) {
                                        }
                                        z13 = true;
                                    } else {
                                        z13 = zJ;
                                    }
                                    if (dVar.f5492w) {
                                        z8 = z13;
                                    } else {
                                        z8 = z13;
                                    }
                                } else {
                                    iL3 = dVar.l();
                                    i23 = dVar.i();
                                    i24 = size2;
                                    int i11114 = dVar.f5460P;
                                    i25 = i21;
                                    zJ = z8 | bVar.j(fVar3, dVar, true);
                                    iL4 = dVar.l();
                                    fVar4 = fVar3;
                                    i26 = dVar.i();
                                    if (iL4 != iL3) {
                                        dVar.y(iL4);
                                        if (!z10) {
                                        }
                                        zJ = true;
                                    }
                                    if (i26 != i23) {
                                        dVar.v(i26);
                                        if (!z9) {
                                        }
                                        z13 = true;
                                    } else {
                                        z13 = zJ;
                                    }
                                    if (dVar.f5492w) {
                                        z8 = z13;
                                    } else {
                                        z8 = z13;
                                    }
                                }
                                i22++;
                                size2 = i24;
                                i21 = i25;
                                fVar3 = fVar4;
                            }
                            int i11115 = size2;
                            f fVar16 = fVar3;
                            int i11116 = i21;
                            if (z8) {
                                bVar.l(eVar4, i18, i19);
                                z8 = false;
                            }
                            i21 = i11116 + 1;
                            size2 = i11115;
                            fVar3 = fVar16;
                        }
                        if (z8) {
                            bVar.l(eVar4, i18, i19);
                            if (eVar4.l() < iMax3) {
                                eVar4.y(iMax3);
                                z11 = true;
                            } else {
                                z11 = false;
                            }
                            if (eVar4.i() < iMax4) {
                                eVar4.v(iMax4);
                                z12 = true;
                            } else {
                                z12 = z11;
                            }
                            if (z12) {
                                bVar.l(eVar4, i18, i19);
                            }
                        }
                    }
                    eVar4.p0 = i17;
                    if ((i17 & 256) == 256) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    p051u.e.f5344p = z5;
                }
                int iL12 = eVar4.l();
                int i11117 = eVar4.i();
                z18 = eVar4.f5507q0;
                z19 = eVar4.f5508r0;
                f fVar17 = fVar7;
                int i11118 = fVar17.f5899e;
                int iResolveSizeAndState5 = View.resolveSizeAndState(iL12 + fVar17.f5898d, i3, 0);
                int iResolveSizeAndState6 = View.resolveSizeAndState(i11117 + i11118, i4, 0);
                int i11119 = iResolveSizeAndState5 & ViewCompat.MEASURED_SIZE_MASK;
                int i11120 = iResolveSizeAndState6 & ViewCompat.MEASURED_SIZE_MASK;
                iMin = Math.min(this.g, i11119);
                iMin2 = Math.min(this.f2800h, i11120);
                if (z18) {
                    iMin |= 16777216;
                }
                if (z19) {
                    iMin2 |= 16777216;
                }
                setMeasuredDimension(iMin, iMin2);
            }
            iArr2 = iArr;
            z3 = true;
            if (z3) {
                i43 = 0;
                while (true) {
                    if (i43 < size) {
                        z24 = z3;
                        dVar4 = (d) eVar4.f5496d0.get(i43);
                        i12 = size;
                        iArr4 = dVar4.f5474c0;
                        i44 = i43;
                        if (iArr4[0] == 3) {
                            z25 = true;
                        } else {
                            z25 = false;
                        }
                        if (iArr4[1] == 3) {
                            z26 = true;
                        } else {
                            z26 = false;
                        }
                        if (!z25) {
                        }
                        if (dVar4.q()) {
                            i43 = i44 + 1;
                            z3 = z24;
                            size = i12;
                        } else {
                            i43 = i44 + 1;
                            z3 = z24;
                            size = i12;
                        }
                        i13 = 1073741824;
                        z4 = false;
                    } else {
                        z4 = z3;
                        i12 = size;
                        i13 = 1073741824;
                    }
                }
            } else {
                z4 = z3;
                i12 = size;
                i13 = 1073741824;
            }
            if (z4 && ((mode != i13 && mode2 == i13) || z2)) {
                iMin3 = Math.min(iArr2[0], i100);
                iMin4 = Math.min(iArr2[1], i101);
                i32 = 1073741824;
                if (mode == 1073741824) {
                    if (eVar4.l() != iMin3) {
                        eVar4.y(iMin3);
                        eVar5.b = true;
                    }
                    i32 = 1073741824;
                }
                if (mode2 == i32) {
                    eVar4.v(iMin4);
                    eVar5.b = true;
                }
                if (mode == i32) {
                    eVar2 = eVar;
                    arrayList2 = arrayList;
                    fVar2 = fVar;
                    i14 = iL2;
                    i15 = i11;
                    eVar3 = eVar5.f5585a;
                    if (eVar5.b) {
                        arrayList5 = eVar3.f5496d0;
                        size5 = arrayList5.size();
                        i35 = 0;
                        while (i35 < size5) {
                            Object obj13 = arrayList5.get(i35);
                            i35++;
                            d dVar27 = (d) obj13;
                            dVar27.f5470a = false;
                            j jVar12 = dVar27.f5475d;
                            jVar12.f5607e.f5596j = false;
                            jVar12.g = false;
                            jVar12.n();
                            l lVar12 = dVar27.f5476e;
                            lVar12.f5607e.f5596j = false;
                            lVar12.g = false;
                            lVar12.m();
                        }
                        i33 = 0;
                        eVar3.f5470a = false;
                        j jVar13 = eVar3.f5475d;
                        jVar13.f5607e.f5596j = false;
                        jVar13.g = false;
                        jVar13.n();
                        l lVar13 = eVar3.f5476e;
                        lVar13.f5607e.f5596j = false;
                        lVar13.g = false;
                        lVar13.m();
                        eVar5.c();
                    } else {
                        i33 = 0;
                    }
                    eVar5.b(eVar5.f5587d);
                    eVar3.f5458N = i33;
                    eVar3.f5459O = i33;
                    eVar3.f5475d.f5608h.d(i33);
                    eVar3.f5476e.f5608h.d(i33);
                    i34 = 1073741824;
                    if (mode == 1073741824) {
                        zD = eVar4.D(i33, z2);
                        i16 = 1;
                    } else {
                        i16 = 0;
                        zD = true;
                    }
                    if (mode2 == 1073741824) {
                        zD &= eVar4.D(1, z2);
                        i16++;
                    }
                } else {
                    eVar2 = eVar;
                    arrayList2 = arrayList;
                    fVar2 = fVar;
                    i14 = iL2;
                    i15 = i11;
                    eVar3 = eVar5.f5585a;
                    if (eVar5.b) {
                        arrayList5 = eVar3.f5496d0;
                        size5 = arrayList5.size();
                        i35 = 0;
                        while (i35 < size5) {
                            Object obj14 = arrayList5.get(i35);
                            i35++;
                            d dVar28 = (d) obj14;
                            dVar28.f5470a = false;
                            j jVar14 = dVar28.f5475d;
                            jVar14.f5607e.f5596j = false;
                            jVar14.g = false;
                            jVar14.n();
                            l lVar14 = dVar28.f5476e;
                            lVar14.f5607e.f5596j = false;
                            lVar14.g = false;
                            lVar14.m();
                        }
                        i33 = 0;
                        eVar3.f5470a = false;
                        j jVar15 = eVar3.f5475d;
                        jVar15.f5607e.f5596j = false;
                        jVar15.g = false;
                        jVar15.n();
                        l lVar15 = eVar3.f5476e;
                        lVar15.f5607e.f5596j = false;
                        lVar15.g = false;
                        lVar15.m();
                        eVar5.c();
                    } else {
                        i33 = 0;
                    }
                    eVar5.b(eVar5.f5587d);
                    eVar3.f5458N = i33;
                    eVar3.f5459O = i33;
                    eVar3.f5475d.f5608h.d(i33);
                    eVar3.f5476e.f5608h.d(i33);
                    i34 = 1073741824;
                    if (mode == 1073741824) {
                        zD = eVar4.D(i33, z2);
                        i16 = 1;
                    } else {
                        i16 = 0;
                        zD = true;
                    }
                    if (mode2 == 1073741824) {
                        zD &= eVar4.D(1, z2);
                        i16++;
                    }
                }
                if (zD) {
                    if (mode == i34) {
                        z20 = true;
                    } else {
                        z20 = false;
                    }
                    if (mode2 == i34) {
                        z21 = true;
                    } else {
                        z21 = false;
                    }
                    eVar4.z(z20, z21);
                }
            } else {
                eVar2 = eVar;
                arrayList2 = arrayList;
                fVar2 = fVar;
                i14 = iL2;
                i15 = i11;
                i16 = 0;
                zD = false;
            }
            if (zD) {
                if (i12 > 0) {
                    size3 = eVar4.f5496d0.size();
                    fVar6 = eVar4.f5499g0;
                    while (i29 < size3) {
                        dVar3 = (d) eVar4.f5496d0.get(i29);
                        if (dVar3 instanceof h) {
                            iH = dVar3.h(0);
                            int iH9 = dVar3.h(1);
                            if (iH == 3) {
                                bVar.j(fVar6, dVar3, false);
                            } else {
                                bVar.j(fVar6, dVar3, false);
                            }
                        }
                    }
                    constraintLayout = fVar6.f5896a;
                    childCount = constraintLayout.getChildCount();
                    arrayList4 = constraintLayout.f2797c;
                    while (i30 < childCount) {
                        constraintLayout.getChildAt(i30);
                    }
                    size4 = arrayList4.size();
                    if (size4 > 0) {
                        while (i31 < size4) {
                            ((c) arrayList4.get(i31)).getClass();
                        }
                    }
                }
                i17 = eVar4.p0;
                size2 = arrayList2.size();
                i18 = i14;
                i19 = i15;
                if (i12 > 0) {
                    bVar.l(eVar4, i18, i19);
                }
                if (size2 > 0) {
                    iArr3 = eVar4.f5474c0;
                    if (iArr3[0] == 2) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (iArr3[1] == 2) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    e eVar14 = eVar2;
                    iMax3 = Math.max(eVar4.l(), eVar14.f5461Q);
                    iMax4 = Math.max(eVar4.i(), eVar14.f5462R);
                    i20 = 0;
                    z8 = false;
                    while (i20 < size2) {
                        ArrayList arrayList17 = arrayList2;
                        dVar2 = (d) arrayList17.get(i20);
                        if (dVar2 instanceof p053v.g) {
                            z14 = z7;
                            z15 = z6;
                            fVar5 = fVar2;
                        } else {
                            iL5 = dVar2.l();
                            i27 = dVar2.i();
                            z14 = z7;
                            z15 = z6;
                            fVar5 = fVar2;
                            boolean zJ7 = z8 | bVar.j(fVar5, dVar2, true);
                            iL6 = dVar2.l();
                            z16 = zJ7;
                            i28 = dVar2.i();
                            if (iL6 != iL5) {
                                dVar2.y(iL6);
                                if (z15) {
                                    iMax3 = Math.max(iMax3, dVar2.g(4).c() + dVar2.m() + dVar2.f5455J);
                                }
                                z16 = true;
                            }
                            if (i28 != i27) {
                                dVar2.v(i28);
                                if (z14) {
                                    iMax4 = Math.max(iMax4, dVar2.g(5).c() + dVar2.n() + dVar2.K);
                                }
                                z17 = true;
                            } else {
                                z17 = z16;
                            }
                            z8 = ((p053v.g) dVar2).f5544l0 | z17;
                        }
                        i20++;
                        fVar2 = fVar5;
                        arrayList2 = arrayList17;
                        z7 = z14;
                        z6 = z15;
                    }
                    z9 = z7;
                    z10 = z6;
                    fVar3 = fVar2;
                    arrayList3 = arrayList2;
                    i21 = 0;
                    while (i21 < 2) {
                        i22 = 0;
                        while (i22 < size2) {
                            dVar = (d) arrayList3.get(i22);
                            if (dVar instanceof i) {
                                iL3 = dVar.l();
                                i23 = dVar.i();
                                i24 = size2;
                                int i111110 = dVar.f5460P;
                                i25 = i21;
                                zJ = z8 | bVar.j(fVar3, dVar, true);
                                iL4 = dVar.l();
                                fVar4 = fVar3;
                                i26 = dVar.i();
                                if (iL4 != iL3) {
                                    dVar.y(iL4);
                                    if (!z10) {
                                    }
                                    zJ = true;
                                }
                                if (i26 != i23) {
                                    dVar.v(i26);
                                    if (!z9) {
                                    }
                                    z13 = true;
                                } else {
                                    z13 = zJ;
                                }
                                if (dVar.f5492w) {
                                    z8 = z13;
                                } else {
                                    z8 = z13;
                                }
                            } else {
                                iL3 = dVar.l();
                                i23 = dVar.i();
                                i24 = size2;
                                int i111111 = dVar.f5460P;
                                i25 = i21;
                                zJ = z8 | bVar.j(fVar3, dVar, true);
                                iL4 = dVar.l();
                                fVar4 = fVar3;
                                i26 = dVar.i();
                                if (iL4 != iL3) {
                                    dVar.y(iL4);
                                    if (!z10) {
                                    }
                                    zJ = true;
                                }
                                if (i26 != i23) {
                                    dVar.v(i26);
                                    if (!z9) {
                                    }
                                    z13 = true;
                                } else {
                                    z13 = zJ;
                                }
                                if (dVar.f5492w) {
                                    z8 = z13;
                                } else {
                                    z8 = z13;
                                }
                            }
                            i22++;
                            size2 = i24;
                            i21 = i25;
                            fVar3 = fVar4;
                        }
                        int i111112 = size2;
                        f fVar18 = fVar3;
                        int i111113 = i21;
                        if (z8) {
                            bVar.l(eVar4, i18, i19);
                            z8 = false;
                        }
                        i21 = i111113 + 1;
                        size2 = i111112;
                        fVar3 = fVar18;
                    }
                    if (z8) {
                        bVar.l(eVar4, i18, i19);
                        if (eVar4.l() < iMax3) {
                            eVar4.y(iMax3);
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        if (eVar4.i() < iMax4) {
                            eVar4.v(iMax4);
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (z12) {
                            bVar.l(eVar4, i18, i19);
                        }
                    }
                }
                eVar4.p0 = i17;
                if ((i17 & 256) == 256) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                p051u.e.f5344p = z5;
            } else {
                if (i12 > 0) {
                    size3 = eVar4.f5496d0.size();
                    fVar6 = eVar4.f5499g0;
                    while (i29 < size3) {
                        dVar3 = (d) eVar4.f5496d0.get(i29);
                        if (dVar3 instanceof h) {
                            iH = dVar3.h(0);
                            int iH10 = dVar3.h(1);
                            if (iH == 3) {
                                bVar.j(fVar6, dVar3, false);
                            } else {
                                bVar.j(fVar6, dVar3, false);
                            }
                        }
                    }
                    constraintLayout = fVar6.f5896a;
                    childCount = constraintLayout.getChildCount();
                    arrayList4 = constraintLayout.f2797c;
                    while (i30 < childCount) {
                        constraintLayout.getChildAt(i30);
                    }
                    size4 = arrayList4.size();
                    if (size4 > 0) {
                        while (i31 < size4) {
                            ((c) arrayList4.get(i31)).getClass();
                        }
                    }
                }
                i17 = eVar4.p0;
                size2 = arrayList2.size();
                i18 = i14;
                i19 = i15;
                if (i12 > 0) {
                    bVar.l(eVar4, i18, i19);
                }
                if (size2 > 0) {
                    iArr3 = eVar4.f5474c0;
                    if (iArr3[0] == 2) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (iArr3[1] == 2) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    e eVar15 = eVar2;
                    iMax3 = Math.max(eVar4.l(), eVar15.f5461Q);
                    iMax4 = Math.max(eVar4.i(), eVar15.f5462R);
                    i20 = 0;
                    z8 = false;
                    while (i20 < size2) {
                        ArrayList arrayList18 = arrayList2;
                        dVar2 = (d) arrayList18.get(i20);
                        if (dVar2 instanceof p053v.g) {
                            z14 = z7;
                            z15 = z6;
                            fVar5 = fVar2;
                        } else {
                            iL5 = dVar2.l();
                            i27 = dVar2.i();
                            z14 = z7;
                            z15 = z6;
                            fVar5 = fVar2;
                            boolean zJ8 = z8 | bVar.j(fVar5, dVar2, true);
                            iL6 = dVar2.l();
                            z16 = zJ8;
                            i28 = dVar2.i();
                            if (iL6 != iL5) {
                                dVar2.y(iL6);
                                if (z15) {
                                    iMax3 = Math.max(iMax3, dVar2.g(4).c() + dVar2.m() + dVar2.f5455J);
                                }
                                z16 = true;
                            }
                            if (i28 != i27) {
                                dVar2.v(i28);
                                if (z14) {
                                    iMax4 = Math.max(iMax4, dVar2.g(5).c() + dVar2.n() + dVar2.K);
                                }
                                z17 = true;
                            } else {
                                z17 = z16;
                            }
                            z8 = ((p053v.g) dVar2).f5544l0 | z17;
                        }
                        i20++;
                        fVar2 = fVar5;
                        arrayList2 = arrayList18;
                        z7 = z14;
                        z6 = z15;
                    }
                    z9 = z7;
                    z10 = z6;
                    fVar3 = fVar2;
                    arrayList3 = arrayList2;
                    i21 = 0;
                    while (i21 < 2) {
                        i22 = 0;
                        while (i22 < size2) {
                            dVar = (d) arrayList3.get(i22);
                            if (dVar instanceof i) {
                                iL3 = dVar.l();
                                i23 = dVar.i();
                                i24 = size2;
                                int i111114 = dVar.f5460P;
                                i25 = i21;
                                zJ = z8 | bVar.j(fVar3, dVar, true);
                                iL4 = dVar.l();
                                fVar4 = fVar3;
                                i26 = dVar.i();
                                if (iL4 != iL3) {
                                    dVar.y(iL4);
                                    if (!z10) {
                                    }
                                    zJ = true;
                                }
                                if (i26 != i23) {
                                    dVar.v(i26);
                                    if (!z9) {
                                    }
                                    z13 = true;
                                } else {
                                    z13 = zJ;
                                }
                                if (dVar.f5492w) {
                                    z8 = z13;
                                } else {
                                    z8 = z13;
                                }
                            } else {
                                iL3 = dVar.l();
                                i23 = dVar.i();
                                i24 = size2;
                                int i111115 = dVar.f5460P;
                                i25 = i21;
                                zJ = z8 | bVar.j(fVar3, dVar, true);
                                iL4 = dVar.l();
                                fVar4 = fVar3;
                                i26 = dVar.i();
                                if (iL4 != iL3) {
                                    dVar.y(iL4);
                                    if (!z10) {
                                    }
                                    zJ = true;
                                }
                                if (i26 != i23) {
                                    dVar.v(i26);
                                    if (!z9) {
                                    }
                                    z13 = true;
                                } else {
                                    z13 = zJ;
                                }
                                if (dVar.f5492w) {
                                    z8 = z13;
                                } else {
                                    z8 = z13;
                                }
                            }
                            i22++;
                            size2 = i24;
                            i21 = i25;
                            fVar3 = fVar4;
                        }
                        int i111116 = size2;
                        f fVar19 = fVar3;
                        int i111117 = i21;
                        if (z8) {
                            bVar.l(eVar4, i18, i19);
                            z8 = false;
                        }
                        i21 = i111117 + 1;
                        size2 = i111116;
                        fVar3 = fVar19;
                    }
                    if (z8) {
                        bVar.l(eVar4, i18, i19);
                        if (eVar4.l() < iMax3) {
                            eVar4.y(iMax3);
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        if (eVar4.i() < iMax4) {
                            eVar4.v(iMax4);
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (z12) {
                            bVar.l(eVar4, i18, i19);
                        }
                    }
                }
                eVar4.p0 = i17;
                if ((i17 & 256) == 256) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                p051u.e.f5344p = z5;
            }
            int iL13 = eVar4.l();
            int i111118 = eVar4.i();
            z18 = eVar4.f5507q0;
            z19 = eVar4.f5508r0;
            f fVar110 = fVar7;
            int i111119 = fVar110.f5899e;
            int iResolveSizeAndState7 = View.resolveSizeAndState(iL13 + fVar110.f5898d, i3, 0);
            int iResolveSizeAndState8 = View.resolveSizeAndState(i111118 + i111119, i4, 0);
            int i111120 = iResolveSizeAndState7 & ViewCompat.MEASURED_SIZE_MASK;
            int i11121 = iResolveSizeAndState8 & ViewCompat.MEASURED_SIZE_MASK;
            iMin = Math.min(this.g, i111120);
            iMin2 = Math.min(this.f2800h, i11121);
            if (z18) {
                iMin |= 16777216;
            }
            if (z19) {
                iMin2 |= 16777216;
            }
            setMeasuredDimension(iMin, iMin2);
        }
        i103 = i103;
        iMax = childCount4 == 0 ? Math.max(0, this.f2799e) : i100;
        i6 = Integer.MIN_VALUE;
        i7 = 2;
        if (mode2 != i6) {
            if (mode2 != 0) {
                if (childCount4 == 0) {
                    iMax2 = Math.max(0, this.f);
                } else {
                    iMax2 = 0;
                }
                i8 = 2;
            } else if (mode2 != 1073741824) {
                fVar7 = fVar7;
                i8 = 1;
                iMax2 = 0;
            } else {
                iMax2 = Math.min(this.f2800h - i102, i101);
                fVar7 = fVar7;
                i8 = 1;
            }
            iL = eVar4.l();
            iArr = eVar4.f5490u;
            if (iMax == iL) {
                eVar5.f5586c = true;
                c3 = 1;
            } else {
                eVar5.f5586c = true;
                c3 = 1;
            }
            eVar4.f5458N = 0;
            eVar4.f5459O = 0;
            iArr[0] = this.g - i103;
            iArr[c3] = this.f2800h - i102;
            eVar4.f5461Q = 0;
            eVar4.f5462R = 0;
            eVar4.w(i7);
            eVar4.y(iMax);
            eVar4.x(i8);
            eVar4.v(iMax2);
            i9 = this.f2799e - i103;
            if (i9 < 0) {
                eVar4.f5461Q = 0;
            } else {
                eVar4.f5461Q = i9;
            }
            i10 = this.f - i102;
            if (i10 < 0) {
                eVar4.f5462R = 0;
            } else {
                eVar4.f5462R = i10;
            }
            eVar4.f5502j0 = iMax7;
            eVar4.f5503k0 = iMax5;
            eVar = (e) bVar.f945e;
            arrayList = (ArrayList) bVar.f943c;
            fVar = eVar4.f5499g0;
            size = eVar4.f5496d0.size();
            iL2 = eVar4.l();
            i11 = eVar4.i();
            if ((i98 & 128) == 128) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (!z2) {
                iArr2 = iArr;
                if ((i98 & 64) == 64) {
                    z3 = false;
                }
                if (z3) {
                    i43 = 0;
                    while (true) {
                        if (i43 < size) {
                            z24 = z3;
                            dVar4 = (d) eVar4.f5496d0.get(i43);
                            i12 = size;
                            iArr4 = dVar4.f5474c0;
                            i44 = i43;
                            if (iArr4[0] == 3) {
                                z25 = true;
                            } else {
                                z25 = false;
                            }
                            if (iArr4[1] == 3) {
                                z26 = true;
                            } else {
                                z26 = false;
                            }
                            if (!z25) {
                            }
                            if (dVar4.q()) {
                                i43 = i44 + 1;
                                z3 = z24;
                                size = i12;
                            } else {
                                i43 = i44 + 1;
                                z3 = z24;
                                size = i12;
                            }
                            i13 = 1073741824;
                            z4 = false;
                        } else {
                            z4 = z3;
                            i12 = size;
                            i13 = 1073741824;
                        }
                    }
                } else {
                    z4 = z3;
                    i12 = size;
                    i13 = 1073741824;
                }
                if (z4 && ((mode != i13 && mode2 == i13) || z2)) {
                    iMin3 = Math.min(iArr2[0], i100);
                    iMin4 = Math.min(iArr2[1], i101);
                    i32 = 1073741824;
                    if (mode == 1073741824) {
                        if (eVar4.l() != iMin3) {
                            eVar4.y(iMin3);
                            eVar5.b = true;
                        }
                        i32 = 1073741824;
                    }
                    if (mode2 == i32) {
                        eVar4.v(iMin4);
                        eVar5.b = true;
                    }
                    if (mode == i32) {
                        eVar2 = eVar;
                        arrayList2 = arrayList;
                        fVar2 = fVar;
                        i14 = iL2;
                        i15 = i11;
                        eVar3 = eVar5.f5585a;
                        if (eVar5.b) {
                            arrayList5 = eVar3.f5496d0;
                            size5 = arrayList5.size();
                            i35 = 0;
                            while (i35 < size5) {
                                Object obj15 = arrayList5.get(i35);
                                i35++;
                                d dVar29 = (d) obj15;
                                dVar29.f5470a = false;
                                j jVar16 = dVar29.f5475d;
                                jVar16.f5607e.f5596j = false;
                                jVar16.g = false;
                                jVar16.n();
                                l lVar16 = dVar29.f5476e;
                                lVar16.f5607e.f5596j = false;
                                lVar16.g = false;
                                lVar16.m();
                            }
                            i33 = 0;
                            eVar3.f5470a = false;
                            j jVar17 = eVar3.f5475d;
                            jVar17.f5607e.f5596j = false;
                            jVar17.g = false;
                            jVar17.n();
                            l lVar17 = eVar3.f5476e;
                            lVar17.f5607e.f5596j = false;
                            lVar17.g = false;
                            lVar17.m();
                            eVar5.c();
                        } else {
                            i33 = 0;
                        }
                        eVar5.b(eVar5.f5587d);
                        eVar3.f5458N = i33;
                        eVar3.f5459O = i33;
                        eVar3.f5475d.f5608h.d(i33);
                        eVar3.f5476e.f5608h.d(i33);
                        i34 = 1073741824;
                        if (mode == 1073741824) {
                            zD = eVar4.D(i33, z2);
                            i16 = 1;
                        } else {
                            i16 = 0;
                            zD = true;
                        }
                        if (mode2 == 1073741824) {
                            zD &= eVar4.D(1, z2);
                            i16++;
                        }
                    } else {
                        eVar2 = eVar;
                        arrayList2 = arrayList;
                        fVar2 = fVar;
                        i14 = iL2;
                        i15 = i11;
                        eVar3 = eVar5.f5585a;
                        if (eVar5.b) {
                            arrayList5 = eVar3.f5496d0;
                            size5 = arrayList5.size();
                            i35 = 0;
                            while (i35 < size5) {
                                Object obj16 = arrayList5.get(i35);
                                i35++;
                                d dVar210 = (d) obj16;
                                dVar210.f5470a = false;
                                j jVar18 = dVar210.f5475d;
                                jVar18.f5607e.f5596j = false;
                                jVar18.g = false;
                                jVar18.n();
                                l lVar18 = dVar210.f5476e;
                                lVar18.f5607e.f5596j = false;
                                lVar18.g = false;
                                lVar18.m();
                            }
                            i33 = 0;
                            eVar3.f5470a = false;
                            j jVar19 = eVar3.f5475d;
                            jVar19.f5607e.f5596j = false;
                            jVar19.g = false;
                            jVar19.n();
                            l lVar19 = eVar3.f5476e;
                            lVar19.f5607e.f5596j = false;
                            lVar19.g = false;
                            lVar19.m();
                            eVar5.c();
                        } else {
                            i33 = 0;
                        }
                        eVar5.b(eVar5.f5587d);
                        eVar3.f5458N = i33;
                        eVar3.f5459O = i33;
                        eVar3.f5475d.f5608h.d(i33);
                        eVar3.f5476e.f5608h.d(i33);
                        i34 = 1073741824;
                        if (mode == 1073741824) {
                            zD = eVar4.D(i33, z2);
                            i16 = 1;
                        } else {
                            i16 = 0;
                            zD = true;
                        }
                        if (mode2 == 1073741824) {
                            zD &= eVar4.D(1, z2);
                            i16++;
                        }
                    }
                    if (zD) {
                        if (mode == i34) {
                            z20 = true;
                        } else {
                            z20 = false;
                        }
                        if (mode2 == i34) {
                            z21 = true;
                        } else {
                            z21 = false;
                        }
                        eVar4.z(z20, z21);
                    }
                } else {
                    eVar2 = eVar;
                    arrayList2 = arrayList;
                    fVar2 = fVar;
                    i14 = iL2;
                    i15 = i11;
                    i16 = 0;
                    zD = false;
                }
                if (zD) {
                    if (i12 > 0) {
                        size3 = eVar4.f5496d0.size();
                        fVar6 = eVar4.f5499g0;
                        while (i29 < size3) {
                            dVar3 = (d) eVar4.f5496d0.get(i29);
                            if (dVar3 instanceof h) {
                                iH = dVar3.h(0);
                                int iH11 = dVar3.h(1);
                                if (iH == 3) {
                                    bVar.j(fVar6, dVar3, false);
                                } else {
                                    bVar.j(fVar6, dVar3, false);
                                }
                            }
                        }
                        constraintLayout = fVar6.f5896a;
                        childCount = constraintLayout.getChildCount();
                        arrayList4 = constraintLayout.f2797c;
                        while (i30 < childCount) {
                            constraintLayout.getChildAt(i30);
                        }
                        size4 = arrayList4.size();
                        if (size4 > 0) {
                            while (i31 < size4) {
                                ((c) arrayList4.get(i31)).getClass();
                            }
                        }
                    }
                    i17 = eVar4.p0;
                    size2 = arrayList2.size();
                    i18 = i14;
                    i19 = i15;
                    if (i12 > 0) {
                        bVar.l(eVar4, i18, i19);
                    }
                    if (size2 > 0) {
                        iArr3 = eVar4.f5474c0;
                        if (iArr3[0] == 2) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        if (iArr3[1] == 2) {
                            z7 = true;
                        } else {
                            z7 = false;
                        }
                        e eVar16 = eVar2;
                        iMax3 = Math.max(eVar4.l(), eVar16.f5461Q);
                        iMax4 = Math.max(eVar4.i(), eVar16.f5462R);
                        i20 = 0;
                        z8 = false;
                        while (i20 < size2) {
                            ArrayList arrayList19 = arrayList2;
                            dVar2 = (d) arrayList19.get(i20);
                            if (dVar2 instanceof p053v.g) {
                                z14 = z7;
                                z15 = z6;
                                fVar5 = fVar2;
                            } else {
                                iL5 = dVar2.l();
                                i27 = dVar2.i();
                                z14 = z7;
                                z15 = z6;
                                fVar5 = fVar2;
                                boolean zJ9 = z8 | bVar.j(fVar5, dVar2, true);
                                iL6 = dVar2.l();
                                z16 = zJ9;
                                i28 = dVar2.i();
                                if (iL6 != iL5) {
                                    dVar2.y(iL6);
                                    if (z15) {
                                        iMax3 = Math.max(iMax3, dVar2.g(4).c() + dVar2.m() + dVar2.f5455J);
                                    }
                                    z16 = true;
                                }
                                if (i28 != i27) {
                                    dVar2.v(i28);
                                    if (z14) {
                                        iMax4 = Math.max(iMax4, dVar2.g(5).c() + dVar2.n() + dVar2.K);
                                    }
                                    z17 = true;
                                } else {
                                    z17 = z16;
                                }
                                z8 = ((p053v.g) dVar2).f5544l0 | z17;
                            }
                            i20++;
                            fVar2 = fVar5;
                            arrayList2 = arrayList19;
                            z7 = z14;
                            z6 = z15;
                        }
                        z9 = z7;
                        z10 = z6;
                        fVar3 = fVar2;
                        arrayList3 = arrayList2;
                        i21 = 0;
                        while (i21 < 2) {
                            i22 = 0;
                            while (i22 < size2) {
                                dVar = (d) arrayList3.get(i22);
                                if (dVar instanceof i) {
                                    iL3 = dVar.l();
                                    i23 = dVar.i();
                                    i24 = size2;
                                    int i1111110 = dVar.f5460P;
                                    i25 = i21;
                                    zJ = z8 | bVar.j(fVar3, dVar, true);
                                    iL4 = dVar.l();
                                    fVar4 = fVar3;
                                    i26 = dVar.i();
                                    if (iL4 != iL3) {
                                        dVar.y(iL4);
                                        if (!z10) {
                                        }
                                        zJ = true;
                                    }
                                    if (i26 != i23) {
                                        dVar.v(i26);
                                        if (!z9) {
                                        }
                                        z13 = true;
                                    } else {
                                        z13 = zJ;
                                    }
                                    if (dVar.f5492w) {
                                        z8 = z13;
                                    } else {
                                        z8 = z13;
                                    }
                                } else {
                                    iL3 = dVar.l();
                                    i23 = dVar.i();
                                    i24 = size2;
                                    int i1111111 = dVar.f5460P;
                                    i25 = i21;
                                    zJ = z8 | bVar.j(fVar3, dVar, true);
                                    iL4 = dVar.l();
                                    fVar4 = fVar3;
                                    i26 = dVar.i();
                                    if (iL4 != iL3) {
                                        dVar.y(iL4);
                                        if (!z10) {
                                        }
                                        zJ = true;
                                    }
                                    if (i26 != i23) {
                                        dVar.v(i26);
                                        if (!z9) {
                                        }
                                        z13 = true;
                                    } else {
                                        z13 = zJ;
                                    }
                                    if (dVar.f5492w) {
                                        z8 = z13;
                                    } else {
                                        z8 = z13;
                                    }
                                }
                                i22++;
                                size2 = i24;
                                i21 = i25;
                                fVar3 = fVar4;
                            }
                            int i1111112 = size2;
                            f fVar111 = fVar3;
                            int i1111113 = i21;
                            if (z8) {
                                bVar.l(eVar4, i18, i19);
                                z8 = false;
                            }
                            i21 = i1111113 + 1;
                            size2 = i1111112;
                            fVar3 = fVar111;
                        }
                        if (z8) {
                            bVar.l(eVar4, i18, i19);
                            if (eVar4.l() < iMax3) {
                                eVar4.y(iMax3);
                                z11 = true;
                            } else {
                                z11 = false;
                            }
                            if (eVar4.i() < iMax4) {
                                eVar4.v(iMax4);
                                z12 = true;
                            } else {
                                z12 = z11;
                            }
                            if (z12) {
                                bVar.l(eVar4, i18, i19);
                            }
                        }
                    }
                    eVar4.p0 = i17;
                    if ((i17 & 256) == 256) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    p051u.e.f5344p = z5;
                } else {
                    if (i12 > 0) {
                        size3 = eVar4.f5496d0.size();
                        fVar6 = eVar4.f5499g0;
                        while (i29 < size3) {
                            dVar3 = (d) eVar4.f5496d0.get(i29);
                            if (dVar3 instanceof h) {
                                iH = dVar3.h(0);
                                int iH12 = dVar3.h(1);
                                if (iH == 3) {
                                    bVar.j(fVar6, dVar3, false);
                                } else {
                                    bVar.j(fVar6, dVar3, false);
                                }
                            }
                        }
                        constraintLayout = fVar6.f5896a;
                        childCount = constraintLayout.getChildCount();
                        arrayList4 = constraintLayout.f2797c;
                        while (i30 < childCount) {
                            constraintLayout.getChildAt(i30);
                        }
                        size4 = arrayList4.size();
                        if (size4 > 0) {
                            while (i31 < size4) {
                                ((c) arrayList4.get(i31)).getClass();
                            }
                        }
                    }
                    i17 = eVar4.p0;
                    size2 = arrayList2.size();
                    i18 = i14;
                    i19 = i15;
                    if (i12 > 0) {
                        bVar.l(eVar4, i18, i19);
                    }
                    if (size2 > 0) {
                        iArr3 = eVar4.f5474c0;
                        if (iArr3[0] == 2) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        if (iArr3[1] == 2) {
                            z7 = true;
                        } else {
                            z7 = false;
                        }
                        e eVar17 = eVar2;
                        iMax3 = Math.max(eVar4.l(), eVar17.f5461Q);
                        iMax4 = Math.max(eVar4.i(), eVar17.f5462R);
                        i20 = 0;
                        z8 = false;
                        while (i20 < size2) {
                            ArrayList arrayList110 = arrayList2;
                            dVar2 = (d) arrayList110.get(i20);
                            if (dVar2 instanceof p053v.g) {
                                z14 = z7;
                                z15 = z6;
                                fVar5 = fVar2;
                            } else {
                                iL5 = dVar2.l();
                                i27 = dVar2.i();
                                z14 = z7;
                                z15 = z6;
                                fVar5 = fVar2;
                                boolean zJ10 = z8 | bVar.j(fVar5, dVar2, true);
                                iL6 = dVar2.l();
                                z16 = zJ10;
                                i28 = dVar2.i();
                                if (iL6 != iL5) {
                                    dVar2.y(iL6);
                                    if (z15) {
                                        iMax3 = Math.max(iMax3, dVar2.g(4).c() + dVar2.m() + dVar2.f5455J);
                                    }
                                    z16 = true;
                                }
                                if (i28 != i27) {
                                    dVar2.v(i28);
                                    if (z14) {
                                        iMax4 = Math.max(iMax4, dVar2.g(5).c() + dVar2.n() + dVar2.K);
                                    }
                                    z17 = true;
                                } else {
                                    z17 = z16;
                                }
                                z8 = ((p053v.g) dVar2).f5544l0 | z17;
                            }
                            i20++;
                            fVar2 = fVar5;
                            arrayList2 = arrayList110;
                            z7 = z14;
                            z6 = z15;
                        }
                        z9 = z7;
                        z10 = z6;
                        fVar3 = fVar2;
                        arrayList3 = arrayList2;
                        i21 = 0;
                        while (i21 < 2) {
                            i22 = 0;
                            while (i22 < size2) {
                                dVar = (d) arrayList3.get(i22);
                                if (dVar instanceof i) {
                                    iL3 = dVar.l();
                                    i23 = dVar.i();
                                    i24 = size2;
                                    int i1111114 = dVar.f5460P;
                                    i25 = i21;
                                    zJ = z8 | bVar.j(fVar3, dVar, true);
                                    iL4 = dVar.l();
                                    fVar4 = fVar3;
                                    i26 = dVar.i();
                                    if (iL4 != iL3) {
                                        dVar.y(iL4);
                                        if (!z10) {
                                        }
                                        zJ = true;
                                    }
                                    if (i26 != i23) {
                                        dVar.v(i26);
                                        if (!z9) {
                                        }
                                        z13 = true;
                                    } else {
                                        z13 = zJ;
                                    }
                                    if (dVar.f5492w) {
                                        z8 = z13;
                                    } else {
                                        z8 = z13;
                                    }
                                } else {
                                    iL3 = dVar.l();
                                    i23 = dVar.i();
                                    i24 = size2;
                                    int i1111115 = dVar.f5460P;
                                    i25 = i21;
                                    zJ = z8 | bVar.j(fVar3, dVar, true);
                                    iL4 = dVar.l();
                                    fVar4 = fVar3;
                                    i26 = dVar.i();
                                    if (iL4 != iL3) {
                                        dVar.y(iL4);
                                        if (!z10) {
                                        }
                                        zJ = true;
                                    }
                                    if (i26 != i23) {
                                        dVar.v(i26);
                                        if (!z9) {
                                        }
                                        z13 = true;
                                    } else {
                                        z13 = zJ;
                                    }
                                    if (dVar.f5492w) {
                                        z8 = z13;
                                    } else {
                                        z8 = z13;
                                    }
                                }
                                i22++;
                                size2 = i24;
                                i21 = i25;
                                fVar3 = fVar4;
                            }
                            int i1111116 = size2;
                            f fVar112 = fVar3;
                            int i1111117 = i21;
                            if (z8) {
                                bVar.l(eVar4, i18, i19);
                                z8 = false;
                            }
                            i21 = i1111117 + 1;
                            size2 = i1111116;
                            fVar3 = fVar112;
                        }
                        if (z8) {
                            bVar.l(eVar4, i18, i19);
                            if (eVar4.l() < iMax3) {
                                eVar4.y(iMax3);
                                z11 = true;
                            } else {
                                z11 = false;
                            }
                            if (eVar4.i() < iMax4) {
                                eVar4.v(iMax4);
                                z12 = true;
                            } else {
                                z12 = z11;
                            }
                            if (z12) {
                                bVar.l(eVar4, i18, i19);
                            }
                        }
                    }
                    eVar4.p0 = i17;
                    if ((i17 & 256) == 256) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    p051u.e.f5344p = z5;
                }
                int iL14 = eVar4.l();
                int i1111118 = eVar4.i();
                z18 = eVar4.f5507q0;
                z19 = eVar4.f5508r0;
                f fVar113 = fVar7;
                int i1111119 = fVar113.f5899e;
                int iResolveSizeAndState9 = View.resolveSizeAndState(iL14 + fVar113.f5898d, i3, 0);
                int iResolveSizeAndState10 = View.resolveSizeAndState(i1111118 + i1111119, i4, 0);
                int i111121 = iResolveSizeAndState9 & ViewCompat.MEASURED_SIZE_MASK;
                int i11122 = iResolveSizeAndState10 & ViewCompat.MEASURED_SIZE_MASK;
                iMin = Math.min(this.g, i111121);
                iMin2 = Math.min(this.f2800h, i11122);
                if (z18) {
                    iMin |= 16777216;
                }
                if (z19) {
                    iMin2 |= 16777216;
                }
                setMeasuredDimension(iMin, iMin2);
            }
            iArr2 = iArr;
            z3 = true;
            if (z3) {
                i43 = 0;
                while (true) {
                    if (i43 < size) {
                        z24 = z3;
                        dVar4 = (d) eVar4.f5496d0.get(i43);
                        i12 = size;
                        iArr4 = dVar4.f5474c0;
                        i44 = i43;
                        if (iArr4[0] == 3) {
                            z25 = true;
                        } else {
                            z25 = false;
                        }
                        if (iArr4[1] == 3) {
                            z26 = true;
                        } else {
                            z26 = false;
                        }
                        if (!z25) {
                        }
                        if (dVar4.q()) {
                            i43 = i44 + 1;
                            z3 = z24;
                            size = i12;
                        } else {
                            i43 = i44 + 1;
                            z3 = z24;
                            size = i12;
                        }
                        i13 = 1073741824;
                        z4 = false;
                    } else {
                        z4 = z3;
                        i12 = size;
                        i13 = 1073741824;
                    }
                }
            } else {
                z4 = z3;
                i12 = size;
                i13 = 1073741824;
            }
            if (z4 && ((mode != i13 && mode2 == i13) || z2)) {
                iMin3 = Math.min(iArr2[0], i100);
                iMin4 = Math.min(iArr2[1], i101);
                i32 = 1073741824;
                if (mode == 1073741824) {
                    if (eVar4.l() != iMin3) {
                        eVar4.y(iMin3);
                        eVar5.b = true;
                    }
                    i32 = 1073741824;
                }
                if (mode2 == i32) {
                    eVar4.v(iMin4);
                    eVar5.b = true;
                }
                if (mode == i32) {
                    eVar2 = eVar;
                    arrayList2 = arrayList;
                    fVar2 = fVar;
                    i14 = iL2;
                    i15 = i11;
                    eVar3 = eVar5.f5585a;
                    if (eVar5.b) {
                        arrayList5 = eVar3.f5496d0;
                        size5 = arrayList5.size();
                        i35 = 0;
                        while (i35 < size5) {
                            Object obj17 = arrayList5.get(i35);
                            i35++;
                            d dVar211 = (d) obj17;
                            dVar211.f5470a = false;
                            j jVar110 = dVar211.f5475d;
                            jVar110.f5607e.f5596j = false;
                            jVar110.g = false;
                            jVar110.n();
                            l lVar110 = dVar211.f5476e;
                            lVar110.f5607e.f5596j = false;
                            lVar110.g = false;
                            lVar110.m();
                        }
                        i33 = 0;
                        eVar3.f5470a = false;
                        j jVar111 = eVar3.f5475d;
                        jVar111.f5607e.f5596j = false;
                        jVar111.g = false;
                        jVar111.n();
                        l lVar111 = eVar3.f5476e;
                        lVar111.f5607e.f5596j = false;
                        lVar111.g = false;
                        lVar111.m();
                        eVar5.c();
                    } else {
                        i33 = 0;
                    }
                    eVar5.b(eVar5.f5587d);
                    eVar3.f5458N = i33;
                    eVar3.f5459O = i33;
                    eVar3.f5475d.f5608h.d(i33);
                    eVar3.f5476e.f5608h.d(i33);
                    i34 = 1073741824;
                    if (mode == 1073741824) {
                        zD = eVar4.D(i33, z2);
                        i16 = 1;
                    } else {
                        i16 = 0;
                        zD = true;
                    }
                    if (mode2 == 1073741824) {
                        zD &= eVar4.D(1, z2);
                        i16++;
                    }
                } else {
                    eVar2 = eVar;
                    arrayList2 = arrayList;
                    fVar2 = fVar;
                    i14 = iL2;
                    i15 = i11;
                    eVar3 = eVar5.f5585a;
                    if (eVar5.b) {
                        arrayList5 = eVar3.f5496d0;
                        size5 = arrayList5.size();
                        i35 = 0;
                        while (i35 < size5) {
                            Object obj18 = arrayList5.get(i35);
                            i35++;
                            d dVar212 = (d) obj18;
                            dVar212.f5470a = false;
                            j jVar112 = dVar212.f5475d;
                            jVar112.f5607e.f5596j = false;
                            jVar112.g = false;
                            jVar112.n();
                            l lVar112 = dVar212.f5476e;
                            lVar112.f5607e.f5596j = false;
                            lVar112.g = false;
                            lVar112.m();
                        }
                        i33 = 0;
                        eVar3.f5470a = false;
                        j jVar113 = eVar3.f5475d;
                        jVar113.f5607e.f5596j = false;
                        jVar113.g = false;
                        jVar113.n();
                        l lVar113 = eVar3.f5476e;
                        lVar113.f5607e.f5596j = false;
                        lVar113.g = false;
                        lVar113.m();
                        eVar5.c();
                    } else {
                        i33 = 0;
                    }
                    eVar5.b(eVar5.f5587d);
                    eVar3.f5458N = i33;
                    eVar3.f5459O = i33;
                    eVar3.f5475d.f5608h.d(i33);
                    eVar3.f5476e.f5608h.d(i33);
                    i34 = 1073741824;
                    if (mode == 1073741824) {
                        zD = eVar4.D(i33, z2);
                        i16 = 1;
                    } else {
                        i16 = 0;
                        zD = true;
                    }
                    if (mode2 == 1073741824) {
                        zD &= eVar4.D(1, z2);
                        i16++;
                    }
                }
                if (zD) {
                    if (mode == i34) {
                        z20 = true;
                    } else {
                        z20 = false;
                    }
                    if (mode2 == i34) {
                        z21 = true;
                    } else {
                        z21 = false;
                    }
                    eVar4.z(z20, z21);
                }
            } else {
                eVar2 = eVar;
                arrayList2 = arrayList;
                fVar2 = fVar;
                i14 = iL2;
                i15 = i11;
                i16 = 0;
                zD = false;
            }
            if (zD) {
                if (i12 > 0) {
                    size3 = eVar4.f5496d0.size();
                    fVar6 = eVar4.f5499g0;
                    while (i29 < size3) {
                        dVar3 = (d) eVar4.f5496d0.get(i29);
                        if (dVar3 instanceof h) {
                            iH = dVar3.h(0);
                            int iH13 = dVar3.h(1);
                            if (iH == 3) {
                                bVar.j(fVar6, dVar3, false);
                            } else {
                                bVar.j(fVar6, dVar3, false);
                            }
                        }
                    }
                    constraintLayout = fVar6.f5896a;
                    childCount = constraintLayout.getChildCount();
                    arrayList4 = constraintLayout.f2797c;
                    while (i30 < childCount) {
                        constraintLayout.getChildAt(i30);
                    }
                    size4 = arrayList4.size();
                    if (size4 > 0) {
                        while (i31 < size4) {
                            ((c) arrayList4.get(i31)).getClass();
                        }
                    }
                }
                i17 = eVar4.p0;
                size2 = arrayList2.size();
                i18 = i14;
                i19 = i15;
                if (i12 > 0) {
                    bVar.l(eVar4, i18, i19);
                }
                if (size2 > 0) {
                    iArr3 = eVar4.f5474c0;
                    if (iArr3[0] == 2) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (iArr3[1] == 2) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    e eVar18 = eVar2;
                    iMax3 = Math.max(eVar4.l(), eVar18.f5461Q);
                    iMax4 = Math.max(eVar4.i(), eVar18.f5462R);
                    i20 = 0;
                    z8 = false;
                    while (i20 < size2) {
                        ArrayList arrayList111 = arrayList2;
                        dVar2 = (d) arrayList111.get(i20);
                        if (dVar2 instanceof p053v.g) {
                            z14 = z7;
                            z15 = z6;
                            fVar5 = fVar2;
                        } else {
                            iL5 = dVar2.l();
                            i27 = dVar2.i();
                            z14 = z7;
                            z15 = z6;
                            fVar5 = fVar2;
                            boolean zJ11 = z8 | bVar.j(fVar5, dVar2, true);
                            iL6 = dVar2.l();
                            z16 = zJ11;
                            i28 = dVar2.i();
                            if (iL6 != iL5) {
                                dVar2.y(iL6);
                                if (z15) {
                                    iMax3 = Math.max(iMax3, dVar2.g(4).c() + dVar2.m() + dVar2.f5455J);
                                }
                                z16 = true;
                            }
                            if (i28 != i27) {
                                dVar2.v(i28);
                                if (z14) {
                                    iMax4 = Math.max(iMax4, dVar2.g(5).c() + dVar2.n() + dVar2.K);
                                }
                                z17 = true;
                            } else {
                                z17 = z16;
                            }
                            z8 = ((p053v.g) dVar2).f5544l0 | z17;
                        }
                        i20++;
                        fVar2 = fVar5;
                        arrayList2 = arrayList111;
                        z7 = z14;
                        z6 = z15;
                    }
                    z9 = z7;
                    z10 = z6;
                    fVar3 = fVar2;
                    arrayList3 = arrayList2;
                    i21 = 0;
                    while (i21 < 2) {
                        i22 = 0;
                        while (i22 < size2) {
                            dVar = (d) arrayList3.get(i22);
                            if (dVar instanceof i) {
                                iL3 = dVar.l();
                                i23 = dVar.i();
                                i24 = size2;
                                int i11111110 = dVar.f5460P;
                                i25 = i21;
                                zJ = z8 | bVar.j(fVar3, dVar, true);
                                iL4 = dVar.l();
                                fVar4 = fVar3;
                                i26 = dVar.i();
                                if (iL4 != iL3) {
                                    dVar.y(iL4);
                                    if (!z10) {
                                    }
                                    zJ = true;
                                }
                                if (i26 != i23) {
                                    dVar.v(i26);
                                    if (!z9) {
                                    }
                                    z13 = true;
                                } else {
                                    z13 = zJ;
                                }
                                if (dVar.f5492w) {
                                    z8 = z13;
                                } else {
                                    z8 = z13;
                                }
                            } else {
                                iL3 = dVar.l();
                                i23 = dVar.i();
                                i24 = size2;
                                int i11111111 = dVar.f5460P;
                                i25 = i21;
                                zJ = z8 | bVar.j(fVar3, dVar, true);
                                iL4 = dVar.l();
                                fVar4 = fVar3;
                                i26 = dVar.i();
                                if (iL4 != iL3) {
                                    dVar.y(iL4);
                                    if (!z10) {
                                    }
                                    zJ = true;
                                }
                                if (i26 != i23) {
                                    dVar.v(i26);
                                    if (!z9) {
                                    }
                                    z13 = true;
                                } else {
                                    z13 = zJ;
                                }
                                if (dVar.f5492w) {
                                    z8 = z13;
                                } else {
                                    z8 = z13;
                                }
                            }
                            i22++;
                            size2 = i24;
                            i21 = i25;
                            fVar3 = fVar4;
                        }
                        int i11111112 = size2;
                        f fVar114 = fVar3;
                        int i11111113 = i21;
                        if (z8) {
                            bVar.l(eVar4, i18, i19);
                            z8 = false;
                        }
                        i21 = i11111113 + 1;
                        size2 = i11111112;
                        fVar3 = fVar114;
                    }
                    if (z8) {
                        bVar.l(eVar4, i18, i19);
                        if (eVar4.l() < iMax3) {
                            eVar4.y(iMax3);
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        if (eVar4.i() < iMax4) {
                            eVar4.v(iMax4);
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (z12) {
                            bVar.l(eVar4, i18, i19);
                        }
                    }
                }
                eVar4.p0 = i17;
                if ((i17 & 256) == 256) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                p051u.e.f5344p = z5;
            } else {
                if (i12 > 0) {
                    size3 = eVar4.f5496d0.size();
                    fVar6 = eVar4.f5499g0;
                    while (i29 < size3) {
                        dVar3 = (d) eVar4.f5496d0.get(i29);
                        if (dVar3 instanceof h) {
                            iH = dVar3.h(0);
                            int iH14 = dVar3.h(1);
                            if (iH == 3) {
                                bVar.j(fVar6, dVar3, false);
                            } else {
                                bVar.j(fVar6, dVar3, false);
                            }
                        }
                    }
                    constraintLayout = fVar6.f5896a;
                    childCount = constraintLayout.getChildCount();
                    arrayList4 = constraintLayout.f2797c;
                    while (i30 < childCount) {
                        constraintLayout.getChildAt(i30);
                    }
                    size4 = arrayList4.size();
                    if (size4 > 0) {
                        while (i31 < size4) {
                            ((c) arrayList4.get(i31)).getClass();
                        }
                    }
                }
                i17 = eVar4.p0;
                size2 = arrayList2.size();
                i18 = i14;
                i19 = i15;
                if (i12 > 0) {
                    bVar.l(eVar4, i18, i19);
                }
                if (size2 > 0) {
                    iArr3 = eVar4.f5474c0;
                    if (iArr3[0] == 2) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (iArr3[1] == 2) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    e eVar19 = eVar2;
                    iMax3 = Math.max(eVar4.l(), eVar19.f5461Q);
                    iMax4 = Math.max(eVar4.i(), eVar19.f5462R);
                    i20 = 0;
                    z8 = false;
                    while (i20 < size2) {
                        ArrayList arrayList112 = arrayList2;
                        dVar2 = (d) arrayList112.get(i20);
                        if (dVar2 instanceof p053v.g) {
                            z14 = z7;
                            z15 = z6;
                            fVar5 = fVar2;
                        } else {
                            iL5 = dVar2.l();
                            i27 = dVar2.i();
                            z14 = z7;
                            z15 = z6;
                            fVar5 = fVar2;
                            boolean zJ12 = z8 | bVar.j(fVar5, dVar2, true);
                            iL6 = dVar2.l();
                            z16 = zJ12;
                            i28 = dVar2.i();
                            if (iL6 != iL5) {
                                dVar2.y(iL6);
                                if (z15) {
                                    iMax3 = Math.max(iMax3, dVar2.g(4).c() + dVar2.m() + dVar2.f5455J);
                                }
                                z16 = true;
                            }
                            if (i28 != i27) {
                                dVar2.v(i28);
                                if (z14) {
                                    iMax4 = Math.max(iMax4, dVar2.g(5).c() + dVar2.n() + dVar2.K);
                                }
                                z17 = true;
                            } else {
                                z17 = z16;
                            }
                            z8 = ((p053v.g) dVar2).f5544l0 | z17;
                        }
                        i20++;
                        fVar2 = fVar5;
                        arrayList2 = arrayList112;
                        z7 = z14;
                        z6 = z15;
                    }
                    z9 = z7;
                    z10 = z6;
                    fVar3 = fVar2;
                    arrayList3 = arrayList2;
                    i21 = 0;
                    while (i21 < 2) {
                        i22 = 0;
                        while (i22 < size2) {
                            dVar = (d) arrayList3.get(i22);
                            if (dVar instanceof i) {
                                iL3 = dVar.l();
                                i23 = dVar.i();
                                i24 = size2;
                                int i11111114 = dVar.f5460P;
                                i25 = i21;
                                zJ = z8 | bVar.j(fVar3, dVar, true);
                                iL4 = dVar.l();
                                fVar4 = fVar3;
                                i26 = dVar.i();
                                if (iL4 != iL3) {
                                    dVar.y(iL4);
                                    if (!z10) {
                                    }
                                    zJ = true;
                                }
                                if (i26 != i23) {
                                    dVar.v(i26);
                                    if (!z9) {
                                    }
                                    z13 = true;
                                } else {
                                    z13 = zJ;
                                }
                                if (dVar.f5492w) {
                                    z8 = z13;
                                } else {
                                    z8 = z13;
                                }
                            } else {
                                iL3 = dVar.l();
                                i23 = dVar.i();
                                i24 = size2;
                                int i11111115 = dVar.f5460P;
                                i25 = i21;
                                zJ = z8 | bVar.j(fVar3, dVar, true);
                                iL4 = dVar.l();
                                fVar4 = fVar3;
                                i26 = dVar.i();
                                if (iL4 != iL3) {
                                    dVar.y(iL4);
                                    if (!z10) {
                                    }
                                    zJ = true;
                                }
                                if (i26 != i23) {
                                    dVar.v(i26);
                                    if (!z9) {
                                    }
                                    z13 = true;
                                } else {
                                    z13 = zJ;
                                }
                                if (dVar.f5492w) {
                                    z8 = z13;
                                } else {
                                    z8 = z13;
                                }
                            }
                            i22++;
                            size2 = i24;
                            i21 = i25;
                            fVar3 = fVar4;
                        }
                        int i11111116 = size2;
                        f fVar115 = fVar3;
                        int i11111117 = i21;
                        if (z8) {
                            bVar.l(eVar4, i18, i19);
                            z8 = false;
                        }
                        i21 = i11111117 + 1;
                        size2 = i11111116;
                        fVar3 = fVar115;
                    }
                    if (z8) {
                        bVar.l(eVar4, i18, i19);
                        if (eVar4.l() < iMax3) {
                            eVar4.y(iMax3);
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        if (eVar4.i() < iMax4) {
                            eVar4.v(iMax4);
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (z12) {
                            bVar.l(eVar4, i18, i19);
                        }
                    }
                }
                eVar4.p0 = i17;
                if ((i17 & 256) == 256) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                p051u.e.f5344p = z5;
            }
            int iL15 = eVar4.l();
            int i11111118 = eVar4.i();
            z18 = eVar4.f5507q0;
            z19 = eVar4.f5508r0;
            f fVar116 = fVar7;
            int i11111119 = fVar116.f5899e;
            int iResolveSizeAndState11 = View.resolveSizeAndState(iL15 + fVar116.f5898d, i3, 0);
            int iResolveSizeAndState12 = View.resolveSizeAndState(i11111118 + i11111119, i4, 0);
            int i111122 = iResolveSizeAndState11 & ViewCompat.MEASURED_SIZE_MASK;
            int i11123 = iResolveSizeAndState12 & ViewCompat.MEASURED_SIZE_MASK;
            iMin = Math.min(this.g, i111122);
            iMin2 = Math.min(this.f2800h, i11123);
            if (z18) {
                iMin |= 16777216;
            }
            if (z19) {
                iMin2 |= 16777216;
            }
            setMeasuredDimension(iMin, iMin2);
        }
        if (childCount4 == 0) {
            iMax2 = Math.max(0, this.f);
        } else {
            iMax2 = i101;
        }
        i8 = 2;
        iL = eVar4.l();
        iArr = eVar4.f5490u;
        if (iMax == iL) {
            eVar5.f5586c = true;
            c3 = 1;
        } else {
            eVar5.f5586c = true;
            c3 = 1;
        }
        eVar4.f5458N = 0;
        eVar4.f5459O = 0;
        iArr[0] = this.g - i103;
        iArr[c3] = this.f2800h - i102;
        eVar4.f5461Q = 0;
        eVar4.f5462R = 0;
        eVar4.w(i7);
        eVar4.y(iMax);
        eVar4.x(i8);
        eVar4.v(iMax2);
        i9 = this.f2799e - i103;
        if (i9 < 0) {
            eVar4.f5461Q = 0;
        } else {
            eVar4.f5461Q = i9;
        }
        i10 = this.f - i102;
        if (i10 < 0) {
            eVar4.f5462R = 0;
        } else {
            eVar4.f5462R = i10;
        }
        eVar4.f5502j0 = iMax7;
        eVar4.f5503k0 = iMax5;
        eVar = (e) bVar.f945e;
        arrayList = (ArrayList) bVar.f943c;
        fVar = eVar4.f5499g0;
        size = eVar4.f5496d0.size();
        iL2 = eVar4.l();
        i11 = eVar4.i();
        if ((i98 & 128) == 128) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z2) {
            iArr2 = iArr;
            if ((i98 & 64) == 64) {
                z3 = false;
            }
            if (z3) {
                i43 = 0;
                while (true) {
                    if (i43 < size) {
                        z24 = z3;
                        dVar4 = (d) eVar4.f5496d0.get(i43);
                        i12 = size;
                        iArr4 = dVar4.f5474c0;
                        i44 = i43;
                        if (iArr4[0] == 3) {
                            z25 = true;
                        } else {
                            z25 = false;
                        }
                        if (iArr4[1] == 3) {
                            z26 = true;
                        } else {
                            z26 = false;
                        }
                        if (!z25) {
                        }
                        if (dVar4.q()) {
                            i43 = i44 + 1;
                            z3 = z24;
                            size = i12;
                        } else {
                            i43 = i44 + 1;
                            z3 = z24;
                            size = i12;
                        }
                        i13 = 1073741824;
                        z4 = false;
                    } else {
                        z4 = z3;
                        i12 = size;
                        i13 = 1073741824;
                    }
                }
            } else {
                z4 = z3;
                i12 = size;
                i13 = 1073741824;
            }
            if (z4 && ((mode != i13 && mode2 == i13) || z2)) {
                iMin3 = Math.min(iArr2[0], i100);
                iMin4 = Math.min(iArr2[1], i101);
                i32 = 1073741824;
                if (mode == 1073741824) {
                    if (eVar4.l() != iMin3) {
                        eVar4.y(iMin3);
                        eVar5.b = true;
                    }
                    i32 = 1073741824;
                }
                if (mode2 == i32) {
                    eVar4.v(iMin4);
                    eVar5.b = true;
                }
                if (mode == i32) {
                    eVar2 = eVar;
                    arrayList2 = arrayList;
                    fVar2 = fVar;
                    i14 = iL2;
                    i15 = i11;
                    eVar3 = eVar5.f5585a;
                    if (eVar5.b) {
                        arrayList5 = eVar3.f5496d0;
                        size5 = arrayList5.size();
                        i35 = 0;
                        while (i35 < size5) {
                            Object obj19 = arrayList5.get(i35);
                            i35++;
                            d dVar213 = (d) obj19;
                            dVar213.f5470a = false;
                            j jVar114 = dVar213.f5475d;
                            jVar114.f5607e.f5596j = false;
                            jVar114.g = false;
                            jVar114.n();
                            l lVar114 = dVar213.f5476e;
                            lVar114.f5607e.f5596j = false;
                            lVar114.g = false;
                            lVar114.m();
                        }
                        i33 = 0;
                        eVar3.f5470a = false;
                        j jVar115 = eVar3.f5475d;
                        jVar115.f5607e.f5596j = false;
                        jVar115.g = false;
                        jVar115.n();
                        l lVar115 = eVar3.f5476e;
                        lVar115.f5607e.f5596j = false;
                        lVar115.g = false;
                        lVar115.m();
                        eVar5.c();
                    } else {
                        i33 = 0;
                    }
                    eVar5.b(eVar5.f5587d);
                    eVar3.f5458N = i33;
                    eVar3.f5459O = i33;
                    eVar3.f5475d.f5608h.d(i33);
                    eVar3.f5476e.f5608h.d(i33);
                    i34 = 1073741824;
                    if (mode == 1073741824) {
                        zD = eVar4.D(i33, z2);
                        i16 = 1;
                    } else {
                        i16 = 0;
                        zD = true;
                    }
                    if (mode2 == 1073741824) {
                        zD &= eVar4.D(1, z2);
                        i16++;
                    }
                } else {
                    eVar2 = eVar;
                    arrayList2 = arrayList;
                    fVar2 = fVar;
                    i14 = iL2;
                    i15 = i11;
                    eVar3 = eVar5.f5585a;
                    if (eVar5.b) {
                        arrayList5 = eVar3.f5496d0;
                        size5 = arrayList5.size();
                        i35 = 0;
                        while (i35 < size5) {
                            Object obj110 = arrayList5.get(i35);
                            i35++;
                            d dVar214 = (d) obj110;
                            dVar214.f5470a = false;
                            j jVar116 = dVar214.f5475d;
                            jVar116.f5607e.f5596j = false;
                            jVar116.g = false;
                            jVar116.n();
                            l lVar116 = dVar214.f5476e;
                            lVar116.f5607e.f5596j = false;
                            lVar116.g = false;
                            lVar116.m();
                        }
                        i33 = 0;
                        eVar3.f5470a = false;
                        j jVar117 = eVar3.f5475d;
                        jVar117.f5607e.f5596j = false;
                        jVar117.g = false;
                        jVar117.n();
                        l lVar117 = eVar3.f5476e;
                        lVar117.f5607e.f5596j = false;
                        lVar117.g = false;
                        lVar117.m();
                        eVar5.c();
                    } else {
                        i33 = 0;
                    }
                    eVar5.b(eVar5.f5587d);
                    eVar3.f5458N = i33;
                    eVar3.f5459O = i33;
                    eVar3.f5475d.f5608h.d(i33);
                    eVar3.f5476e.f5608h.d(i33);
                    i34 = 1073741824;
                    if (mode == 1073741824) {
                        zD = eVar4.D(i33, z2);
                        i16 = 1;
                    } else {
                        i16 = 0;
                        zD = true;
                    }
                    if (mode2 == 1073741824) {
                        zD &= eVar4.D(1, z2);
                        i16++;
                    }
                }
                if (zD) {
                    if (mode == i34) {
                        z20 = true;
                    } else {
                        z20 = false;
                    }
                    if (mode2 == i34) {
                        z21 = true;
                    } else {
                        z21 = false;
                    }
                    eVar4.z(z20, z21);
                }
            } else {
                eVar2 = eVar;
                arrayList2 = arrayList;
                fVar2 = fVar;
                i14 = iL2;
                i15 = i11;
                i16 = 0;
                zD = false;
            }
            if (zD) {
                if (i12 > 0) {
                    size3 = eVar4.f5496d0.size();
                    fVar6 = eVar4.f5499g0;
                    while (i29 < size3) {
                        dVar3 = (d) eVar4.f5496d0.get(i29);
                        if (dVar3 instanceof h) {
                            iH = dVar3.h(0);
                            int iH15 = dVar3.h(1);
                            if (iH == 3) {
                                bVar.j(fVar6, dVar3, false);
                            } else {
                                bVar.j(fVar6, dVar3, false);
                            }
                        }
                    }
                    constraintLayout = fVar6.f5896a;
                    childCount = constraintLayout.getChildCount();
                    arrayList4 = constraintLayout.f2797c;
                    while (i30 < childCount) {
                        constraintLayout.getChildAt(i30);
                    }
                    size4 = arrayList4.size();
                    if (size4 > 0) {
                        while (i31 < size4) {
                            ((c) arrayList4.get(i31)).getClass();
                        }
                    }
                }
                i17 = eVar4.p0;
                size2 = arrayList2.size();
                i18 = i14;
                i19 = i15;
                if (i12 > 0) {
                    bVar.l(eVar4, i18, i19);
                }
                if (size2 > 0) {
                    iArr3 = eVar4.f5474c0;
                    if (iArr3[0] == 2) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (iArr3[1] == 2) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    e eVar110 = eVar2;
                    iMax3 = Math.max(eVar4.l(), eVar110.f5461Q);
                    iMax4 = Math.max(eVar4.i(), eVar110.f5462R);
                    i20 = 0;
                    z8 = false;
                    while (i20 < size2) {
                        ArrayList arrayList113 = arrayList2;
                        dVar2 = (d) arrayList113.get(i20);
                        if (dVar2 instanceof p053v.g) {
                            z14 = z7;
                            z15 = z6;
                            fVar5 = fVar2;
                        } else {
                            iL5 = dVar2.l();
                            i27 = dVar2.i();
                            z14 = z7;
                            z15 = z6;
                            fVar5 = fVar2;
                            boolean zJ13 = z8 | bVar.j(fVar5, dVar2, true);
                            iL6 = dVar2.l();
                            z16 = zJ13;
                            i28 = dVar2.i();
                            if (iL6 != iL5) {
                                dVar2.y(iL6);
                                if (z15) {
                                    iMax3 = Math.max(iMax3, dVar2.g(4).c() + dVar2.m() + dVar2.f5455J);
                                }
                                z16 = true;
                            }
                            if (i28 != i27) {
                                dVar2.v(i28);
                                if (z14) {
                                    iMax4 = Math.max(iMax4, dVar2.g(5).c() + dVar2.n() + dVar2.K);
                                }
                                z17 = true;
                            } else {
                                z17 = z16;
                            }
                            z8 = ((p053v.g) dVar2).f5544l0 | z17;
                        }
                        i20++;
                        fVar2 = fVar5;
                        arrayList2 = arrayList113;
                        z7 = z14;
                        z6 = z15;
                    }
                    z9 = z7;
                    z10 = z6;
                    fVar3 = fVar2;
                    arrayList3 = arrayList2;
                    i21 = 0;
                    while (i21 < 2) {
                        i22 = 0;
                        while (i22 < size2) {
                            dVar = (d) arrayList3.get(i22);
                            if (dVar instanceof i) {
                                iL3 = dVar.l();
                                i23 = dVar.i();
                                i24 = size2;
                                int i111111110 = dVar.f5460P;
                                i25 = i21;
                                zJ = z8 | bVar.j(fVar3, dVar, true);
                                iL4 = dVar.l();
                                fVar4 = fVar3;
                                i26 = dVar.i();
                                if (iL4 != iL3) {
                                    dVar.y(iL4);
                                    if (!z10) {
                                    }
                                    zJ = true;
                                }
                                if (i26 != i23) {
                                    dVar.v(i26);
                                    if (!z9) {
                                    }
                                    z13 = true;
                                } else {
                                    z13 = zJ;
                                }
                                if (dVar.f5492w) {
                                    z8 = z13;
                                } else {
                                    z8 = z13;
                                }
                            } else {
                                iL3 = dVar.l();
                                i23 = dVar.i();
                                i24 = size2;
                                int i111111111 = dVar.f5460P;
                                i25 = i21;
                                zJ = z8 | bVar.j(fVar3, dVar, true);
                                iL4 = dVar.l();
                                fVar4 = fVar3;
                                i26 = dVar.i();
                                if (iL4 != iL3) {
                                    dVar.y(iL4);
                                    if (!z10) {
                                    }
                                    zJ = true;
                                }
                                if (i26 != i23) {
                                    dVar.v(i26);
                                    if (!z9) {
                                    }
                                    z13 = true;
                                } else {
                                    z13 = zJ;
                                }
                                if (dVar.f5492w) {
                                    z8 = z13;
                                } else {
                                    z8 = z13;
                                }
                            }
                            i22++;
                            size2 = i24;
                            i21 = i25;
                            fVar3 = fVar4;
                        }
                        int i111111112 = size2;
                        f fVar117 = fVar3;
                        int i111111113 = i21;
                        if (z8) {
                            bVar.l(eVar4, i18, i19);
                            z8 = false;
                        }
                        i21 = i111111113 + 1;
                        size2 = i111111112;
                        fVar3 = fVar117;
                    }
                    if (z8) {
                        bVar.l(eVar4, i18, i19);
                        if (eVar4.l() < iMax3) {
                            eVar4.y(iMax3);
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        if (eVar4.i() < iMax4) {
                            eVar4.v(iMax4);
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (z12) {
                            bVar.l(eVar4, i18, i19);
                        }
                    }
                }
                eVar4.p0 = i17;
                if ((i17 & 256) == 256) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                p051u.e.f5344p = z5;
            } else {
                if (i12 > 0) {
                    size3 = eVar4.f5496d0.size();
                    fVar6 = eVar4.f5499g0;
                    while (i29 < size3) {
                        dVar3 = (d) eVar4.f5496d0.get(i29);
                        if (dVar3 instanceof h) {
                            iH = dVar3.h(0);
                            int iH16 = dVar3.h(1);
                            if (iH == 3) {
                                bVar.j(fVar6, dVar3, false);
                            } else {
                                bVar.j(fVar6, dVar3, false);
                            }
                        }
                    }
                    constraintLayout = fVar6.f5896a;
                    childCount = constraintLayout.getChildCount();
                    arrayList4 = constraintLayout.f2797c;
                    while (i30 < childCount) {
                        constraintLayout.getChildAt(i30);
                    }
                    size4 = arrayList4.size();
                    if (size4 > 0) {
                        while (i31 < size4) {
                            ((c) arrayList4.get(i31)).getClass();
                        }
                    }
                }
                i17 = eVar4.p0;
                size2 = arrayList2.size();
                i18 = i14;
                i19 = i15;
                if (i12 > 0) {
                    bVar.l(eVar4, i18, i19);
                }
                if (size2 > 0) {
                    iArr3 = eVar4.f5474c0;
                    if (iArr3[0] == 2) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (iArr3[1] == 2) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    e eVar111 = eVar2;
                    iMax3 = Math.max(eVar4.l(), eVar111.f5461Q);
                    iMax4 = Math.max(eVar4.i(), eVar111.f5462R);
                    i20 = 0;
                    z8 = false;
                    while (i20 < size2) {
                        ArrayList arrayList114 = arrayList2;
                        dVar2 = (d) arrayList114.get(i20);
                        if (dVar2 instanceof p053v.g) {
                            z14 = z7;
                            z15 = z6;
                            fVar5 = fVar2;
                        } else {
                            iL5 = dVar2.l();
                            i27 = dVar2.i();
                            z14 = z7;
                            z15 = z6;
                            fVar5 = fVar2;
                            boolean zJ14 = z8 | bVar.j(fVar5, dVar2, true);
                            iL6 = dVar2.l();
                            z16 = zJ14;
                            i28 = dVar2.i();
                            if (iL6 != iL5) {
                                dVar2.y(iL6);
                                if (z15) {
                                    iMax3 = Math.max(iMax3, dVar2.g(4).c() + dVar2.m() + dVar2.f5455J);
                                }
                                z16 = true;
                            }
                            if (i28 != i27) {
                                dVar2.v(i28);
                                if (z14) {
                                    iMax4 = Math.max(iMax4, dVar2.g(5).c() + dVar2.n() + dVar2.K);
                                }
                                z17 = true;
                            } else {
                                z17 = z16;
                            }
                            z8 = ((p053v.g) dVar2).f5544l0 | z17;
                        }
                        i20++;
                        fVar2 = fVar5;
                        arrayList2 = arrayList114;
                        z7 = z14;
                        z6 = z15;
                    }
                    z9 = z7;
                    z10 = z6;
                    fVar3 = fVar2;
                    arrayList3 = arrayList2;
                    i21 = 0;
                    while (i21 < 2) {
                        i22 = 0;
                        while (i22 < size2) {
                            dVar = (d) arrayList3.get(i22);
                            if (dVar instanceof i) {
                                iL3 = dVar.l();
                                i23 = dVar.i();
                                i24 = size2;
                                int i111111114 = dVar.f5460P;
                                i25 = i21;
                                zJ = z8 | bVar.j(fVar3, dVar, true);
                                iL4 = dVar.l();
                                fVar4 = fVar3;
                                i26 = dVar.i();
                                if (iL4 != iL3) {
                                    dVar.y(iL4);
                                    if (!z10) {
                                    }
                                    zJ = true;
                                }
                                if (i26 != i23) {
                                    dVar.v(i26);
                                    if (!z9) {
                                    }
                                    z13 = true;
                                } else {
                                    z13 = zJ;
                                }
                                if (dVar.f5492w) {
                                    z8 = z13;
                                } else {
                                    z8 = z13;
                                }
                            } else {
                                iL3 = dVar.l();
                                i23 = dVar.i();
                                i24 = size2;
                                int i111111115 = dVar.f5460P;
                                i25 = i21;
                                zJ = z8 | bVar.j(fVar3, dVar, true);
                                iL4 = dVar.l();
                                fVar4 = fVar3;
                                i26 = dVar.i();
                                if (iL4 != iL3) {
                                    dVar.y(iL4);
                                    if (!z10) {
                                    }
                                    zJ = true;
                                }
                                if (i26 != i23) {
                                    dVar.v(i26);
                                    if (!z9) {
                                    }
                                    z13 = true;
                                } else {
                                    z13 = zJ;
                                }
                                if (dVar.f5492w) {
                                    z8 = z13;
                                } else {
                                    z8 = z13;
                                }
                            }
                            i22++;
                            size2 = i24;
                            i21 = i25;
                            fVar3 = fVar4;
                        }
                        int i111111116 = size2;
                        f fVar118 = fVar3;
                        int i111111117 = i21;
                        if (z8) {
                            bVar.l(eVar4, i18, i19);
                            z8 = false;
                        }
                        i21 = i111111117 + 1;
                        size2 = i111111116;
                        fVar3 = fVar118;
                    }
                    if (z8) {
                        bVar.l(eVar4, i18, i19);
                        if (eVar4.l() < iMax3) {
                            eVar4.y(iMax3);
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        if (eVar4.i() < iMax4) {
                            eVar4.v(iMax4);
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (z12) {
                            bVar.l(eVar4, i18, i19);
                        }
                    }
                }
                eVar4.p0 = i17;
                if ((i17 & 256) == 256) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                p051u.e.f5344p = z5;
            }
            int iL16 = eVar4.l();
            int i111111118 = eVar4.i();
            z18 = eVar4.f5507q0;
            z19 = eVar4.f5508r0;
            f fVar119 = fVar7;
            int i111111119 = fVar119.f5899e;
            int iResolveSizeAndState13 = View.resolveSizeAndState(iL16 + fVar119.f5898d, i3, 0);
            int iResolveSizeAndState14 = View.resolveSizeAndState(i111111118 + i111111119, i4, 0);
            int i111123 = iResolveSizeAndState13 & ViewCompat.MEASURED_SIZE_MASK;
            int i11124 = iResolveSizeAndState14 & ViewCompat.MEASURED_SIZE_MASK;
            iMin = Math.min(this.g, i111123);
            iMin2 = Math.min(this.f2800h, i11124);
            if (z18) {
                iMin |= 16777216;
            }
            if (z19) {
                iMin2 |= 16777216;
            }
            setMeasuredDimension(iMin, iMin2);
        }
        iArr2 = iArr;
        z3 = true;
        if (z3) {
            i43 = 0;
            while (true) {
                if (i43 < size) {
                    z24 = z3;
                    dVar4 = (d) eVar4.f5496d0.get(i43);
                    i12 = size;
                    iArr4 = dVar4.f5474c0;
                    i44 = i43;
                    if (iArr4[0] == 3) {
                        z25 = true;
                    } else {
                        z25 = false;
                    }
                    if (iArr4[1] == 3) {
                        z26 = true;
                    } else {
                        z26 = false;
                    }
                    if (!z25) {
                    }
                    if (dVar4.q()) {
                        i43 = i44 + 1;
                        z3 = z24;
                        size = i12;
                    } else {
                        i43 = i44 + 1;
                        z3 = z24;
                        size = i12;
                    }
                    i13 = 1073741824;
                    z4 = false;
                } else {
                    z4 = z3;
                    i12 = size;
                    i13 = 1073741824;
                }
            }
        } else {
            z4 = z3;
            i12 = size;
            i13 = 1073741824;
        }
        if (z4 && ((mode != i13 && mode2 == i13) || z2)) {
            iMin3 = Math.min(iArr2[0], i100);
            iMin4 = Math.min(iArr2[1], i101);
            i32 = 1073741824;
            if (mode == 1073741824) {
                if (eVar4.l() != iMin3) {
                    eVar4.y(iMin3);
                    eVar5.b = true;
                }
                i32 = 1073741824;
            }
            if (mode2 == i32) {
                eVar4.v(iMin4);
                eVar5.b = true;
            }
            if (mode == i32) {
                eVar2 = eVar;
                arrayList2 = arrayList;
                fVar2 = fVar;
                i14 = iL2;
                i15 = i11;
                eVar3 = eVar5.f5585a;
                if (eVar5.b) {
                    arrayList5 = eVar3.f5496d0;
                    size5 = arrayList5.size();
                    i35 = 0;
                    while (i35 < size5) {
                        Object obj111 = arrayList5.get(i35);
                        i35++;
                        d dVar215 = (d) obj111;
                        dVar215.f5470a = false;
                        j jVar118 = dVar215.f5475d;
                        jVar118.f5607e.f5596j = false;
                        jVar118.g = false;
                        jVar118.n();
                        l lVar118 = dVar215.f5476e;
                        lVar118.f5607e.f5596j = false;
                        lVar118.g = false;
                        lVar118.m();
                    }
                    i33 = 0;
                    eVar3.f5470a = false;
                    j jVar119 = eVar3.f5475d;
                    jVar119.f5607e.f5596j = false;
                    jVar119.g = false;
                    jVar119.n();
                    l lVar119 = eVar3.f5476e;
                    lVar119.f5607e.f5596j = false;
                    lVar119.g = false;
                    lVar119.m();
                    eVar5.c();
                } else {
                    i33 = 0;
                }
                eVar5.b(eVar5.f5587d);
                eVar3.f5458N = i33;
                eVar3.f5459O = i33;
                eVar3.f5475d.f5608h.d(i33);
                eVar3.f5476e.f5608h.d(i33);
                i34 = 1073741824;
                if (mode == 1073741824) {
                    zD = eVar4.D(i33, z2);
                    i16 = 1;
                } else {
                    i16 = 0;
                    zD = true;
                }
                if (mode2 == 1073741824) {
                    zD &= eVar4.D(1, z2);
                    i16++;
                }
            } else {
                eVar2 = eVar;
                arrayList2 = arrayList;
                fVar2 = fVar;
                i14 = iL2;
                i15 = i11;
                eVar3 = eVar5.f5585a;
                if (eVar5.b) {
                    arrayList5 = eVar3.f5496d0;
                    size5 = arrayList5.size();
                    i35 = 0;
                    while (i35 < size5) {
                        Object obj112 = arrayList5.get(i35);
                        i35++;
                        d dVar216 = (d) obj112;
                        dVar216.f5470a = false;
                        j jVar1110 = dVar216.f5475d;
                        jVar1110.f5607e.f5596j = false;
                        jVar1110.g = false;
                        jVar1110.n();
                        l lVar1110 = dVar216.f5476e;
                        lVar1110.f5607e.f5596j = false;
                        lVar1110.g = false;
                        lVar1110.m();
                    }
                    i33 = 0;
                    eVar3.f5470a = false;
                    j jVar1111 = eVar3.f5475d;
                    jVar1111.f5607e.f5596j = false;
                    jVar1111.g = false;
                    jVar1111.n();
                    l lVar1111 = eVar3.f5476e;
                    lVar1111.f5607e.f5596j = false;
                    lVar1111.g = false;
                    lVar1111.m();
                    eVar5.c();
                } else {
                    i33 = 0;
                }
                eVar5.b(eVar5.f5587d);
                eVar3.f5458N = i33;
                eVar3.f5459O = i33;
                eVar3.f5475d.f5608h.d(i33);
                eVar3.f5476e.f5608h.d(i33);
                i34 = 1073741824;
                if (mode == 1073741824) {
                    zD = eVar4.D(i33, z2);
                    i16 = 1;
                } else {
                    i16 = 0;
                    zD = true;
                }
                if (mode2 == 1073741824) {
                    zD &= eVar4.D(1, z2);
                    i16++;
                }
            }
            if (zD) {
                if (mode == i34) {
                    z20 = true;
                } else {
                    z20 = false;
                }
                if (mode2 == i34) {
                    z21 = true;
                } else {
                    z21 = false;
                }
                eVar4.z(z20, z21);
            }
        } else {
            eVar2 = eVar;
            arrayList2 = arrayList;
            fVar2 = fVar;
            i14 = iL2;
            i15 = i11;
            i16 = 0;
            zD = false;
        }
        if (zD) {
            if (i12 > 0) {
                size3 = eVar4.f5496d0.size();
                fVar6 = eVar4.f5499g0;
                while (i29 < size3) {
                    dVar3 = (d) eVar4.f5496d0.get(i29);
                    if (dVar3 instanceof h) {
                        iH = dVar3.h(0);
                        int iH17 = dVar3.h(1);
                        if (iH == 3) {
                            bVar.j(fVar6, dVar3, false);
                        } else {
                            bVar.j(fVar6, dVar3, false);
                        }
                    }
                }
                constraintLayout = fVar6.f5896a;
                childCount = constraintLayout.getChildCount();
                arrayList4 = constraintLayout.f2797c;
                while (i30 < childCount) {
                    constraintLayout.getChildAt(i30);
                }
                size4 = arrayList4.size();
                if (size4 > 0) {
                    while (i31 < size4) {
                        ((c) arrayList4.get(i31)).getClass();
                    }
                }
            }
            i17 = eVar4.p0;
            size2 = arrayList2.size();
            i18 = i14;
            i19 = i15;
            if (i12 > 0) {
                bVar.l(eVar4, i18, i19);
            }
            if (size2 > 0) {
                iArr3 = eVar4.f5474c0;
                if (iArr3[0] == 2) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (iArr3[1] == 2) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                e eVar112 = eVar2;
                iMax3 = Math.max(eVar4.l(), eVar112.f5461Q);
                iMax4 = Math.max(eVar4.i(), eVar112.f5462R);
                i20 = 0;
                z8 = false;
                while (i20 < size2) {
                    ArrayList arrayList115 = arrayList2;
                    dVar2 = (d) arrayList115.get(i20);
                    if (dVar2 instanceof p053v.g) {
                        z14 = z7;
                        z15 = z6;
                        fVar5 = fVar2;
                    } else {
                        iL5 = dVar2.l();
                        i27 = dVar2.i();
                        z14 = z7;
                        z15 = z6;
                        fVar5 = fVar2;
                        boolean zJ15 = z8 | bVar.j(fVar5, dVar2, true);
                        iL6 = dVar2.l();
                        z16 = zJ15;
                        i28 = dVar2.i();
                        if (iL6 != iL5) {
                            dVar2.y(iL6);
                            if (z15) {
                                iMax3 = Math.max(iMax3, dVar2.g(4).c() + dVar2.m() + dVar2.f5455J);
                            }
                            z16 = true;
                        }
                        if (i28 != i27) {
                            dVar2.v(i28);
                            if (z14) {
                                iMax4 = Math.max(iMax4, dVar2.g(5).c() + dVar2.n() + dVar2.K);
                            }
                            z17 = true;
                        } else {
                            z17 = z16;
                        }
                        z8 = ((p053v.g) dVar2).f5544l0 | z17;
                    }
                    i20++;
                    fVar2 = fVar5;
                    arrayList2 = arrayList115;
                    z7 = z14;
                    z6 = z15;
                }
                z9 = z7;
                z10 = z6;
                fVar3 = fVar2;
                arrayList3 = arrayList2;
                i21 = 0;
                while (i21 < 2) {
                    i22 = 0;
                    while (i22 < size2) {
                        dVar = (d) arrayList3.get(i22);
                        if (dVar instanceof i) {
                            iL3 = dVar.l();
                            i23 = dVar.i();
                            i24 = size2;
                            int i1111111110 = dVar.f5460P;
                            i25 = i21;
                            zJ = z8 | bVar.j(fVar3, dVar, true);
                            iL4 = dVar.l();
                            fVar4 = fVar3;
                            i26 = dVar.i();
                            if (iL4 != iL3) {
                                dVar.y(iL4);
                                if (!z10) {
                                }
                                zJ = true;
                            }
                            if (i26 != i23) {
                                dVar.v(i26);
                                if (!z9) {
                                }
                                z13 = true;
                            } else {
                                z13 = zJ;
                            }
                            if (dVar.f5492w) {
                                z8 = z13;
                            } else {
                                z8 = z13;
                            }
                        } else {
                            iL3 = dVar.l();
                            i23 = dVar.i();
                            i24 = size2;
                            int i1111111111 = dVar.f5460P;
                            i25 = i21;
                            zJ = z8 | bVar.j(fVar3, dVar, true);
                            iL4 = dVar.l();
                            fVar4 = fVar3;
                            i26 = dVar.i();
                            if (iL4 != iL3) {
                                dVar.y(iL4);
                                if (!z10) {
                                }
                                zJ = true;
                            }
                            if (i26 != i23) {
                                dVar.v(i26);
                                if (!z9) {
                                }
                                z13 = true;
                            } else {
                                z13 = zJ;
                            }
                            if (dVar.f5492w) {
                                z8 = z13;
                            } else {
                                z8 = z13;
                            }
                        }
                        i22++;
                        size2 = i24;
                        i21 = i25;
                        fVar3 = fVar4;
                    }
                    int i1111111112 = size2;
                    f fVar1110 = fVar3;
                    int i1111111113 = i21;
                    if (z8) {
                        bVar.l(eVar4, i18, i19);
                        z8 = false;
                    }
                    i21 = i1111111113 + 1;
                    size2 = i1111111112;
                    fVar3 = fVar1110;
                }
                if (z8) {
                    bVar.l(eVar4, i18, i19);
                    if (eVar4.l() < iMax3) {
                        eVar4.y(iMax3);
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    if (eVar4.i() < iMax4) {
                        eVar4.v(iMax4);
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (z12) {
                        bVar.l(eVar4, i18, i19);
                    }
                }
            }
            eVar4.p0 = i17;
            if ((i17 & 256) == 256) {
                z5 = true;
            } else {
                z5 = false;
            }
            p051u.e.f5344p = z5;
        } else {
            if (i12 > 0) {
                size3 = eVar4.f5496d0.size();
                fVar6 = eVar4.f5499g0;
                while (i29 < size3) {
                    dVar3 = (d) eVar4.f5496d0.get(i29);
                    if (dVar3 instanceof h) {
                        iH = dVar3.h(0);
                        int iH18 = dVar3.h(1);
                        if (iH == 3) {
                            bVar.j(fVar6, dVar3, false);
                        } else {
                            bVar.j(fVar6, dVar3, false);
                        }
                    }
                }
                constraintLayout = fVar6.f5896a;
                childCount = constraintLayout.getChildCount();
                arrayList4 = constraintLayout.f2797c;
                while (i30 < childCount) {
                    constraintLayout.getChildAt(i30);
                }
                size4 = arrayList4.size();
                if (size4 > 0) {
                    while (i31 < size4) {
                        ((c) arrayList4.get(i31)).getClass();
                    }
                }
            }
            i17 = eVar4.p0;
            size2 = arrayList2.size();
            i18 = i14;
            i19 = i15;
            if (i12 > 0) {
                bVar.l(eVar4, i18, i19);
            }
            if (size2 > 0) {
                iArr3 = eVar4.f5474c0;
                if (iArr3[0] == 2) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (iArr3[1] == 2) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                e eVar113 = eVar2;
                iMax3 = Math.max(eVar4.l(), eVar113.f5461Q);
                iMax4 = Math.max(eVar4.i(), eVar113.f5462R);
                i20 = 0;
                z8 = false;
                while (i20 < size2) {
                    ArrayList arrayList116 = arrayList2;
                    dVar2 = (d) arrayList116.get(i20);
                    if (dVar2 instanceof p053v.g) {
                        z14 = z7;
                        z15 = z6;
                        fVar5 = fVar2;
                    } else {
                        iL5 = dVar2.l();
                        i27 = dVar2.i();
                        z14 = z7;
                        z15 = z6;
                        fVar5 = fVar2;
                        boolean zJ16 = z8 | bVar.j(fVar5, dVar2, true);
                        iL6 = dVar2.l();
                        z16 = zJ16;
                        i28 = dVar2.i();
                        if (iL6 != iL5) {
                            dVar2.y(iL6);
                            if (z15) {
                                iMax3 = Math.max(iMax3, dVar2.g(4).c() + dVar2.m() + dVar2.f5455J);
                            }
                            z16 = true;
                        }
                        if (i28 != i27) {
                            dVar2.v(i28);
                            if (z14) {
                                iMax4 = Math.max(iMax4, dVar2.g(5).c() + dVar2.n() + dVar2.K);
                            }
                            z17 = true;
                        } else {
                            z17 = z16;
                        }
                        z8 = ((p053v.g) dVar2).f5544l0 | z17;
                    }
                    i20++;
                    fVar2 = fVar5;
                    arrayList2 = arrayList116;
                    z7 = z14;
                    z6 = z15;
                }
                z9 = z7;
                z10 = z6;
                fVar3 = fVar2;
                arrayList3 = arrayList2;
                i21 = 0;
                while (i21 < 2) {
                    i22 = 0;
                    while (i22 < size2) {
                        dVar = (d) arrayList3.get(i22);
                        if (dVar instanceof i) {
                            iL3 = dVar.l();
                            i23 = dVar.i();
                            i24 = size2;
                            int i1111111114 = dVar.f5460P;
                            i25 = i21;
                            zJ = z8 | bVar.j(fVar3, dVar, true);
                            iL4 = dVar.l();
                            fVar4 = fVar3;
                            i26 = dVar.i();
                            if (iL4 != iL3) {
                                dVar.y(iL4);
                                if (!z10) {
                                }
                                zJ = true;
                            }
                            if (i26 != i23) {
                                dVar.v(i26);
                                if (!z9) {
                                }
                                z13 = true;
                            } else {
                                z13 = zJ;
                            }
                            if (dVar.f5492w) {
                                z8 = z13;
                            } else {
                                z8 = z13;
                            }
                        } else {
                            iL3 = dVar.l();
                            i23 = dVar.i();
                            i24 = size2;
                            int i1111111115 = dVar.f5460P;
                            i25 = i21;
                            zJ = z8 | bVar.j(fVar3, dVar, true);
                            iL4 = dVar.l();
                            fVar4 = fVar3;
                            i26 = dVar.i();
                            if (iL4 != iL3) {
                                dVar.y(iL4);
                                if (!z10) {
                                }
                                zJ = true;
                            }
                            if (i26 != i23) {
                                dVar.v(i26);
                                if (!z9) {
                                }
                                z13 = true;
                            } else {
                                z13 = zJ;
                            }
                            if (dVar.f5492w) {
                                z8 = z13;
                            } else {
                                z8 = z13;
                            }
                        }
                        i22++;
                        size2 = i24;
                        i21 = i25;
                        fVar3 = fVar4;
                    }
                    int i1111111116 = size2;
                    f fVar1111 = fVar3;
                    int i1111111117 = i21;
                    if (z8) {
                        bVar.l(eVar4, i18, i19);
                        z8 = false;
                    }
                    i21 = i1111111117 + 1;
                    size2 = i1111111116;
                    fVar3 = fVar1111;
                }
                if (z8) {
                    bVar.l(eVar4, i18, i19);
                    if (eVar4.l() < iMax3) {
                        eVar4.y(iMax3);
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    if (eVar4.i() < iMax4) {
                        eVar4.v(iMax4);
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (z12) {
                        bVar.l(eVar4, i18, i19);
                    }
                }
            }
            eVar4.p0 = i17;
            if ((i17 & 256) == 256) {
                z5 = true;
            } else {
                z5 = false;
            }
            p051u.e.f5344p = z5;
        }
        int iL17 = eVar4.l();
        int i1111111118 = eVar4.i();
        z18 = eVar4.f5507q0;
        z19 = eVar4.f5508r0;
        f fVar1112 = fVar7;
        int i1111111119 = fVar1112.f5899e;
        int iResolveSizeAndState15 = View.resolveSizeAndState(iL17 + fVar1112.f5898d, i3, 0);
        int iResolveSizeAndState16 = View.resolveSizeAndState(i1111111118 + i1111111119, i4, 0);
        int i111124 = iResolveSizeAndState15 & ViewCompat.MEASURED_SIZE_MASK;
        int i11125 = iResolveSizeAndState16 & ViewCompat.MEASURED_SIZE_MASK;
        iMin = Math.min(this.g, i111124);
        iMin2 = Math.min(this.f2800h, i11125);
        if (z18) {
            iMin |= 16777216;
        }
        if (z19) {
            iMin2 |= 16777216;
        }
        setMeasuredDimension(iMin, iMin2);
    }

    @Override // android.view.ViewGroup
    public final void onViewAdded(View view) {
        super.onViewAdded(view);
        d dVarB = b(view);
        if ((view instanceof o) && !(dVarB instanceof h)) {
            p059x.e eVar = (p059x.e) view.getLayoutParams();
            h hVar = new h();
            eVar.f5880k0 = hVar;
            eVar.f5861Y = true;
            hVar.B(eVar.f5854R);
        }
        if (view instanceof c) {
            c cVar = (c) view;
            cVar.g();
            ((p059x.e) view.getLayoutParams()).Z = true;
            ArrayList arrayList = this.f2797c;
            if (!arrayList.contains(cVar)) {
                arrayList.add(cVar);
            }
        }
        this.b.put(view.getId(), view);
        this.f2801i = true;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        this.b.remove(view.getId());
        d dVarB = b(view);
        this.f2798d.f5496d0.remove(dVarB);
        dVarB.f5454I = null;
        this.f2797c.remove(view);
        this.f2801i = true;
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        this.f2801i = true;
        super.requestLayout();
    }

    public void setConstraintSet(m mVar) {
        this.f2803k = mVar;
    }

    @Override // android.view.View
    public void setId(int i3) {
        int id = getId();
        SparseArray sparseArray = this.b;
        sparseArray.remove(id);
        super.setId(i3);
        sparseArray.put(getId(), this);
    }

    public void setMaxHeight(int i3) {
        if (i3 == this.f2800h) {
            return;
        }
        this.f2800h = i3;
        requestLayout();
    }

    public void setMaxWidth(int i3) {
        if (i3 == this.g) {
            return;
        }
        this.g = i3;
        requestLayout();
    }

    public void setMinHeight(int i3) {
        if (i3 == this.f) {
            return;
        }
        this.f = i3;
        requestLayout();
    }

    public void setMinWidth(int i3) {
        if (i3 == this.f2799e) {
            return;
        }
        this.f2799e = i3;
        requestLayout();
    }

    public void setOnConstraintsChanged(n nVar) {
        C0013d c0013d = this.f2804l;
        if (c0013d != null) {
            c0013d.getClass();
        }
    }

    public void setOptimizationLevel(int i3) {
        this.f2802j = i3;
        this.f2798d.p0 = i3;
        p051u.e.f5344p = (i3 & 256) == 256;
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i3) {
        super(context, attributeSet, i3);
        this.b = new SparseArray();
        this.f2797c = new ArrayList(4);
        this.f2798d = new e();
        this.f2799e = 0;
        this.f = 0;
        this.g = IntCompanionObject.MAX_VALUE;
        this.f2800h = IntCompanionObject.MAX_VALUE;
        this.f2801i = true;
        this.f2802j = 263;
        this.f2803k = null;
        this.f2804l = null;
        this.f2805m = -1;
        this.f2806n = new HashMap();
        this.f2807o = new SparseArray();
        this.f2808p = new f(this);
        c(attributeSet, i3);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        p059x.e eVar = new p059x.e(layoutParams);
        eVar.f5862a = -1;
        eVar.b = -1;
        eVar.f5865c = -1.0f;
        eVar.f5867d = -1;
        eVar.f5869e = -1;
        eVar.f = -1;
        eVar.g = -1;
        eVar.f5873h = -1;
        eVar.f5875i = -1;
        eVar.f5877j = -1;
        eVar.f5879k = -1;
        eVar.f5881l = -1;
        eVar.f5882m = -1;
        eVar.f5883n = 0;
        eVar.f5884o = 0.0f;
        eVar.f5885p = -1;
        eVar.f5886q = -1;
        eVar.f5887r = -1;
        eVar.f5888s = -1;
        eVar.f5889t = -1;
        eVar.f5890u = -1;
        eVar.f5891v = -1;
        eVar.f5892w = -1;
        eVar.f5893x = -1;
        eVar.f5894y = -1;
        eVar.f5895z = 0.5f;
        eVar.f5838A = 0.5f;
        eVar.f5839B = null;
        eVar.f5840C = 1;
        eVar.f5841D = -1.0f;
        eVar.f5842E = -1.0f;
        eVar.f5843F = 0;
        eVar.f5844G = 0;
        eVar.f5845H = 0;
        eVar.f5846I = 0;
        eVar.f5847J = 0;
        eVar.K = 0;
        eVar.f5848L = 0;
        eVar.f5849M = 0;
        eVar.f5850N = 1.0f;
        eVar.f5851O = 1.0f;
        eVar.f5852P = -1;
        eVar.f5853Q = -1;
        eVar.f5854R = -1;
        eVar.f5855S = false;
        eVar.f5856T = false;
        eVar.f5857U = null;
        eVar.f5858V = true;
        eVar.f5859W = true;
        eVar.f5860X = false;
        eVar.f5861Y = false;
        eVar.Z = false;
        eVar.f5863a0 = -1;
        eVar.f5864b0 = -1;
        eVar.f5866c0 = -1;
        eVar.f5868d0 = -1;
        eVar.f5870e0 = -1;
        eVar.f5871f0 = -1;
        eVar.f5872g0 = 0.5f;
        eVar.f5880k0 = new d();
        return eVar;
    }
}
