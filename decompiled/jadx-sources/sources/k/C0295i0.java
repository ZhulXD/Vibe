package k;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.Log;
import android.util.TypedValue;
import android.widget.TextView;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: renamed from: k.i0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0295i0 {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final RectF f4829l = new RectF();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final ConcurrentHashMap f4830m = new ConcurrentHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f4831a = 0;
    public boolean b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f4832c = -1.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f4833d = -1.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f4834e = -1.0f;
    public int[] f = new int[0];
    public boolean g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public TextPaint f4835h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TextView f4836i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Context f4837j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final C0289f0 f4838k;

    public C0295i0(TextView textView) {
        this.f4836i = textView;
        this.f4837j = textView.getContext();
        if (Build.VERSION.SDK_INT >= 29) {
            this.f4838k = new C0291g0();
        } else {
            this.f4838k = new C0289f0();
        }
    }

    public static int[] b(int[] iArr) {
        int length = iArr.length;
        if (length != 0) {
            Arrays.sort(iArr);
            ArrayList arrayList = new ArrayList();
            for (int i3 : iArr) {
                if (i3 > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i3)) < 0) {
                    arrayList.add(Integer.valueOf(i3));
                }
            }
            if (length != arrayList.size()) {
                int size = arrayList.size();
                int[] iArr2 = new int[size];
                for (int i4 = 0; i4 < size; i4++) {
                    iArr2[i4] = ((Integer) arrayList.get(i4)).intValue();
                }
                return iArr2;
            }
        }
        return iArr;
    }

    public static Method d(String str) {
        try {
            ConcurrentHashMap concurrentHashMap = f4830m;
            Method declaredMethod = (Method) concurrentHashMap.get(str);
            if (declaredMethod != null || (declaredMethod = TextView.class.getDeclaredMethod(str, null)) == null) {
                return declaredMethod;
            }
            declaredMethod.setAccessible(true);
            concurrentHashMap.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception e2) {
            Log.w("ACTVAutoSizeHelper", "Failed to retrieve TextView#" + str + "() method", e2);
            return null;
        }
    }

    public static Object e(Object obj, String str, Object obj2) {
        try {
            return d(str).invoke(obj, null);
        } catch (Exception e2) {
            Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#" + str + "() method", e2);
            return obj2;
        }
    }

    public final void a() {
        if (f()) {
            if (this.b) {
                if (this.f4836i.getMeasuredHeight() <= 0 || this.f4836i.getMeasuredWidth() <= 0) {
                    return;
                }
                int measuredWidth = this.f4838k.b(this.f4836i) ? 1048576 : (this.f4836i.getMeasuredWidth() - this.f4836i.getTotalPaddingLeft()) - this.f4836i.getTotalPaddingRight();
                int height = (this.f4836i.getHeight() - this.f4836i.getCompoundPaddingBottom()) - this.f4836i.getCompoundPaddingTop();
                if (measuredWidth <= 0 || height <= 0) {
                    return;
                }
                RectF rectF = f4829l;
                synchronized (rectF) {
                    try {
                        rectF.setEmpty();
                        rectF.right = measuredWidth;
                        rectF.bottom = height;
                        float fC = c(rectF);
                        if (fC != this.f4836i.getTextSize()) {
                            g(0, fC);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            this.b = true;
        }
    }

    public final int c(RectF rectF) {
        CharSequence transformation;
        int length = this.f.length;
        if (length == 0) {
            throw new IllegalStateException("No available text sizes to choose from.");
        }
        int i3 = length - 1;
        int i4 = 0;
        int i5 = 1;
        while (i5 <= i3) {
            int i6 = (i5 + i3) / 2;
            int i7 = this.f[i6];
            TextView textView = this.f4836i;
            CharSequence text = textView.getText();
            TransformationMethod transformationMethod = textView.getTransformationMethod();
            CharSequence charSequence = (transformationMethod == null || (transformation = transformationMethod.getTransformation(text, textView)) == null) ? text : transformation;
            int maxLines = textView.getMaxLines();
            TextPaint textPaint = this.f4835h;
            if (textPaint == null) {
                this.f4835h = new TextPaint();
            } else {
                textPaint.reset();
            }
            this.f4835h.set(textView.getPaint());
            this.f4835h.setTextSize(i7);
            StaticLayout staticLayoutA = AbstractC0287e0.a(charSequence, (Layout.Alignment) e(textView, "getLayoutAlignment", Layout.Alignment.ALIGN_NORMAL), Math.round(rectF.right), maxLines, this.f4836i, this.f4835h, this.f4838k);
            if ((maxLines == -1 || (staticLayoutA.getLineCount() <= maxLines && staticLayoutA.getLineEnd(staticLayoutA.getLineCount() - 1) == charSequence.length())) && staticLayoutA.getHeight() <= rectF.bottom) {
                int i8 = i6 + 1;
                i4 = i5;
                i5 = i8;
            } else {
                i4 = i6 - 1;
                i3 = i4;
            }
        }
        return this.f[i4];
    }

    public final boolean f() {
        return j() && this.f4831a != 0;
    }

    public final void g(int i3, float f) {
        Context context = this.f4837j;
        float fApplyDimension = TypedValue.applyDimension(i3, f, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics());
        TextView textView = this.f4836i;
        if (fApplyDimension != textView.getPaint().getTextSize()) {
            textView.getPaint().setTextSize(fApplyDimension);
            boolean zIsInLayout = textView.isInLayout();
            if (textView.getLayout() != null) {
                this.b = false;
                try {
                    Method methodD = d("nullLayouts");
                    if (methodD != null) {
                        methodD.invoke(textView, null);
                    }
                } catch (Exception e2) {
                    Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#nullLayouts() method", e2);
                }
                if (zIsInLayout) {
                    textView.forceLayout();
                } else {
                    textView.requestLayout();
                }
                textView.invalidate();
            }
        }
    }

    public final boolean h() {
        if (j() && this.f4831a == 1) {
            if (!this.g || this.f.length == 0) {
                int iFloor = ((int) Math.floor((this.f4834e - this.f4833d) / this.f4832c)) + 1;
                int[] iArr = new int[iFloor];
                for (int i3 = 0; i3 < iFloor; i3++) {
                    iArr[i3] = Math.round((i3 * this.f4832c) + this.f4833d);
                }
                this.f = b(iArr);
            }
            this.b = true;
        } else {
            this.b = false;
        }
        return this.b;
    }

    public final boolean i() {
        int[] iArr = this.f;
        int length = iArr.length;
        boolean z2 = length > 0;
        this.g = z2;
        if (z2) {
            this.f4831a = 1;
            this.f4833d = iArr[0];
            this.f4834e = iArr[length - 1];
            this.f4832c = -1.0f;
        }
        return z2;
    }

    public final boolean j() {
        return !(this.f4836i instanceof C0325y);
    }

    public final void k(float f, float f3, float f4) {
        if (f <= 0.0f) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f + "px) is less or equal to (0px)");
        }
        if (f3 <= f) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f3 + "px) is less or equal to minimum auto-size text size (" + f + "px)");
        }
        if (f4 <= 0.0f) {
            throw new IllegalArgumentException("The auto-size step granularity (" + f4 + "px) is less or equal to (0px)");
        }
        this.f4831a = 1;
        this.f4833d = f;
        this.f4834e = f3;
        this.f4832c = f4;
        this.g = false;
    }
}
