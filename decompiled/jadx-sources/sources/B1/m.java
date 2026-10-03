package B1;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.view.MotionEvent;
import android.view.View;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class m extends View {
    public String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f325c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public EnumC0045a f326d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f327e;
    public Function0 f;
    public Function0 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f328h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Paint f329i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Paint f330j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Paint f331k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Lazy f332l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(Context ctx) {
        super(ctx, null);
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        this.b = "A";
        this.f325c = Color.argb(85, 255, 255, 255);
        this.f326d = EnumC0045a.b;
        this.f327e = 0.85f;
        this.f329i = new Paint(1);
        Paint paint = new Paint(1);
        paint.setColor(-1);
        paint.setTextAlign(Paint.Align.CENTER);
        paint.setFakeBoldText(true);
        this.f330j = paint;
        Paint paint2 = new Paint(1);
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setStrokeWidth(2.0f);
        paint2.setColor(Color.argb(85, 255, 255, 255));
        this.f331k = paint2;
        this.f332l = LazyKt.lazy(new l(ctx, 0));
    }

    private final Vibrator getVib() {
        return (Vibrator) this.f332l.getValue();
    }

    public final int getBtnColor() {
        return this.f325c;
    }

    public final String getLabel() {
        return this.b;
    }

    public final Function0<Unit> getOnPress() {
        return this.f;
    }

    public final Function0<Unit> getOnRelease() {
        return this.g;
    }

    public final float getPressedAlpha() {
        return this.f327e;
    }

    public final EnumC0045a getShape() {
        return this.f326d;
    }

    @Override // android.view.View
    public final void onDraw(Canvas c3) {
        Intrinsics.checkNotNullParameter(c3, "c");
        float f = this.f328h ? this.f327e : 0.55f;
        int i3 = this.f325c;
        Paint paint = this.f329i;
        paint.setColor(i3);
        paint.setAlpha((int) (f * 255));
        RectF rectF = new RectF(4.0f, 4.0f, getWidth() - 4.0f, getHeight() - 4.0f);
        int iOrdinal = this.f326d.ordinal();
        if (iOrdinal == 0) {
            c3.drawOval(rectF, paint);
        } else if (iOrdinal == 1) {
            c3.drawRoundRect(rectF, 18.0f, 18.0f, paint);
        } else {
            if (iOrdinal != 2) {
                throw new NoWhenBranchMatchedException();
            }
            c3.drawRect(rectF, paint);
        }
        int i4 = this.f328h ? 170 : 85;
        Paint paint2 = this.f331k;
        paint2.setAlpha(i4);
        int iOrdinal2 = this.f326d.ordinal();
        if (iOrdinal2 == 0) {
            c3.drawOval(rectF, paint2);
        } else if (iOrdinal2 == 1) {
            c3.drawRoundRect(rectF, 18.0f, 18.0f, paint2);
        } else {
            if (iOrdinal2 != 2) {
                throw new NoWhenBranchMatchedException();
            }
            c3.drawRect(rectF, paint2);
        }
        float fCoerceAtLeast = RangesKt.coerceAtLeast(Math.min(getWidth(), getHeight()) * 0.32f, 10.0f);
        Paint paint3 = this.f330j;
        paint3.setTextSize(fCoerceAtLeast);
        c3.drawText(this.b, getWidth() / 2.0f, (paint3.getTextSize() * 0.38f) + (getHeight() / 2.0f), paint3);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0023  */
    /* JADX WARN: Code duplicated, block: B:21:0x0055  */
    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent e2) {
        Context context;
        Function0 function0;
        Vibrator vib;
        Intrinsics.checkNotNullParameter(e2, "e");
        int actionMasked = e2.getActionMasked();
        if (actionMasked == 0) {
            this.f328h = true;
            invalidate();
            Set set = S1.d.f2060a;
            context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            Intrinsics.checkNotNullParameter(context, "<this>");
            if (S1.d.s(context).getBoolean("gamepad_vibration", true) && (vib = getVib()) != null) {
                vib.vibrate(VibrationEffect.createOneShot(18L, 80));
            }
            function0 = this.f;
            if (function0 != null) {
                function0.invoke();
            }
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f328h = false;
            invalidate();
            Function0 function1 = this.g;
            if (function1 != null) {
                function1.invoke();
                return true;
            }
        } else if (actionMasked == 5) {
            this.f328h = true;
            invalidate();
            Set set2 = S1.d.f2060a;
            context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            Intrinsics.checkNotNullParameter(context, "<this>");
            if (S1.d.s(context).getBoolean("gamepad_vibration", true)) {
                vib.vibrate(VibrationEffect.createOneShot(18L, 80));
            }
            function0 = this.f;
            if (function0 != null) {
                function0.invoke();
            }
        }
        return true;
    }

    public final void setBtnColor(int i3) {
        this.f325c = i3;
    }

    public final void setLabel(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.b = str;
    }

    public final void setOnPress(Function0<Unit> function0) {
        this.f = function0;
    }

    public final void setOnRelease(Function0<Unit> function0) {
        this.g = function0;
    }

    public final void setPressedAlpha(float f) {
        this.f327e = f;
    }

    public final void setShape(EnumC0045a enumC0045a) {
        Intrinsics.checkNotNullParameter(enumC0045a, "<set-?>");
        this.f326d = enumC0045a;
    }
}
