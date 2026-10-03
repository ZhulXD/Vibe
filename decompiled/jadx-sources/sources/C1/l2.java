package C1;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.ViewParent;
import android.widget.ImageView;
import androidx.core.view.GestureDetectorCompat;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class l2 extends k.B {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Matrix f644e;
    public float f;
    public float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ScaleGestureDetector f645h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final GestureDetectorCompat f646i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f647j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f648k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f649l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l2(Context context) {
        super(context, null, 0);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f644e = new Matrix();
        this.f = 1.0f;
        this.g = 4.0f;
        this.f645h = new ScaleGestureDetector(context, new k2(this));
        this.f646i = new GestureDetectorCompat(context, new j2(this));
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x004b  */
    /* JADX WARN: Code duplicated, block: B:20:0x004f  */
    /* JADX WARN: Code duplicated, block: B:22:0x0053  */
    /* JADX WARN: Code duplicated, block: B:23:0x0055  */
    /* JADX WARN: Code duplicated, block: B:26:0x005b  */
    /* JADX WARN: Code duplicated, block: B:29:0x0060  */
    public final void d() {
        float f;
        float f3;
        float f4;
        float f5;
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        float width = getWidth();
        float height = getHeight();
        float intrinsicWidth = drawable.getIntrinsicWidth();
        float intrinsicHeight = drawable.getIntrinsicHeight();
        float[] fArr = new float[9];
        Matrix matrix = this.f644e;
        matrix.getValues(fArr);
        float f6 = fArr[0];
        float f7 = fArr[2];
        float f8 = fArr[5];
        float f9 = intrinsicWidth * f6;
        float f10 = intrinsicHeight * f6;
        if (f9 > width) {
            if (f7 > 0.0f) {
                f3 = -f7;
            } else {
                f = width - f9;
                if (f7 >= f) {
                    f3 = 0.0f;
                }
            }
            if (f10 <= height) {
                if (f8 > 0.0f) {
                    f5 = -f8;
                } else {
                    f4 = height - f10;
                    if (f8 < f4) {
                        f5 = 0.0f;
                    }
                }
                if (f3 == 0.0f || f5 != 0.0f) {
                    matrix.postTranslate(f3, f5);
                }
                return;
            }
            f4 = (height - f10) / 2.0f;
            f5 = f4 - f8;
            if (f3 == 0.0f) {
            }
            matrix.postTranslate(f3, f5);
        }
        f = (width - f9) / 2.0f;
        f3 = f - f7;
        if (f10 <= height) {
            if (f8 > 0.0f) {
                f5 = -f8;
            } else {
                f4 = height - f10;
                if (f8 < f4) {
                    f5 = 0.0f;
                }
            }
            if (f3 == 0.0f) {
            }
            matrix.postTranslate(f3, f5);
        }
        f4 = (height - f10) / 2.0f;
        f5 = f4 - f8;
        if (f3 == 0.0f) {
        }
        matrix.postTranslate(f3, f5);
    }

    public final float e() {
        float[] fArr = new float[9];
        this.f644e.getValues(fArr);
        return fArr[0];
    }

    public final void f() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        Float fValueOf = Float.valueOf(getWidth());
        if (fValueOf.floatValue() <= 0.0f) {
            fValueOf = null;
        }
        if (fValueOf != null) {
            float fFloatValue = fValueOf.floatValue();
            Float fValueOf2 = Float.valueOf(getHeight());
            if (fValueOf2.floatValue() <= 0.0f) {
                fValueOf2 = null;
            }
            if (fValueOf2 != null) {
                float fFloatValue2 = fValueOf2.floatValue();
                Float fValueOf3 = Float.valueOf(drawable.getIntrinsicWidth());
                if (fValueOf3.floatValue() <= 0.0f) {
                    fValueOf3 = null;
                }
                if (fValueOf3 != null) {
                    float fFloatValue3 = fValueOf3.floatValue();
                    Float fValueOf4 = Float.valueOf(drawable.getIntrinsicHeight());
                    Float f = fValueOf4.floatValue() > 0.0f ? fValueOf4 : null;
                    if (f != null) {
                        float fFloatValue4 = f.floatValue();
                        float fMin = Math.min(fFloatValue / fFloatValue3, fFloatValue2 / fFloatValue4);
                        this.f = fMin;
                        this.g = 5.0f * fMin;
                        float f3 = (fFloatValue2 - (fFloatValue4 * fMin)) / 2.0f;
                        Matrix matrix = this.f644e;
                        matrix.setScale(fMin, fMin);
                        matrix.postTranslate((fFloatValue - (fFloatValue3 * fMin)) / 2.0f, f3);
                        setImageMatrix(matrix);
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i3, int i4, int i5, int i6) {
        super.onSizeChanged(i3, i4, i5, i6);
        f();
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ScaleGestureDetector scaleGestureDetector = this.f645h;
        scaleGestureDetector.onTouchEvent(event);
        this.f646i.onTouchEvent(event);
        float fE = e();
        int actionMasked = event.getActionMasked();
        if (actionMasked == 0) {
            this.f647j = event.getX();
            this.f648k = event.getY();
            this.f649l = false;
        } else if (actionMasked == 2 && !scaleGestureDetector.isInProgress()) {
            float x2 = event.getX() - this.f647j;
            float y2 = event.getY() - this.f648k;
            if (!this.f649l && (Math.abs(x2) > 8.0f || Math.abs(y2) > 8.0f)) {
                this.f649l = true;
            }
            if (this.f649l) {
                Matrix matrix = this.f644e;
                matrix.postTranslate(x2, y2);
                d();
                setImageMatrix(matrix);
            }
            this.f647j = event.getX();
            this.f648k = event.getY();
        }
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(fE > this.f * 1.05f);
        }
        return true;
    }

    @Override // k.B, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        post(new RunnableC0068g1(4, this));
    }
}
