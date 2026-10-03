package com.minhub.gamehub.keyboard;

import F1.e;
import F1.f;
import F1.g;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\r\u0018\u00002\u00020\u0001:\u0001\u0016B\u001d\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007R0\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R0\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\f\u001a\u0004\b\u0013\u0010\u000e\"\u0004\b\u0014\u0010\u0010¨\u0006\u0017"}, d2 = {"Lcom/minhub/gamehub/keyboard/VirtualKeyboardView;", "Landroid/view/View;", "Landroid/content/Context;", "ctx", "Landroid/util/AttributeSet;", "attr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Lkotlin/Function1;", "LF1/f;", "", "b", "Lkotlin/jvm/functions/Function1;", "getOnKeyPress", "()Lkotlin/jvm/functions/Function1;", "setOnKeyPress", "(Lkotlin/jvm/functions/Function1;)V", "onKeyPress", "c", "getOnKeyRelease", "setOnKeyRelease", "onKeyRelease", "F1/g", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nVirtualKeyboardView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VirtualKeyboardView.kt\ncom/minhub/gamehub/keyboard/VirtualKeyboardView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,169:1\n1869#2:170\n1869#2,2:172\n1870#2:174\n1869#2,2:175\n1869#2,2:177\n1#3:171\n*S KotlinDebug\n*F\n+ 1 VirtualKeyboardView.kt\ncom/minhub/gamehub/keyboard/VirtualKeyboardView\n*L\n68#1:170\n74#1:172,2\n68#1:174\n94#1:175,2\n112#1:177,2\n*E\n"})
public final class VirtualKeyboardView extends View {

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    public Function1 onKeyPress;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    public Function1 onKeyRelease;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ArrayList f3834d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LinkedHashSet f3835e;
    public f f;
    public final Paint g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Paint f3836h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Paint f3837i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Paint f3838j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Paint f3839k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public VirtualKeyboardView(Context ctx, AttributeSet attributeSet) {
        super(ctx, attributeSet);
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        this.f3834d = new ArrayList();
        this.f3835e = new LinkedHashSet();
        Paint paint = new Paint(1);
        paint.setColor(Color.parseColor("#2a2a3e"));
        this.g = paint;
        Paint paint2 = new Paint(1);
        paint2.setColor(Color.parseColor("#3a3a5e"));
        this.f3836h = paint2;
        Paint paint3 = new Paint(1);
        paint3.setStyle(Paint.Style.STROKE);
        paint3.setStrokeWidth(1.0f);
        paint3.setColor(Color.parseColor("#404055"));
        this.f3837i = paint3;
        Paint paint4 = new Paint(1);
        paint4.setColor(-1);
        Paint.Align align = Paint.Align.CENTER;
        paint4.setTextAlign(align);
        paint4.setTextSize(24.0f);
        this.f3838j = paint4;
        Paint paint5 = new Paint(1);
        paint5.setColor(Color.parseColor("#AAAAAA"));
        paint5.setTextAlign(align);
        paint5.setTextSize(18.0f);
        this.f3839k = paint5;
        a();
    }

    public final void a() {
        ArrayList arrayList = this.f3834d;
        arrayList.clear();
        float f = 20.0f;
        float f3 = 20.0f;
        for (List<f> list : e.f979h) {
            Iterator it = list.iterator();
            double d3 = 0.0d;
            while (it.hasNext()) {
                d3 += (double) ((f) it.next()).f981c;
            }
            float fCoerceAtMost = RangesKt___RangesKt.coerceAtMost((getWidth() - 32.0f) / ((float) d3), 36.0f);
            float f4 = 16.0f;
            for (f fVar : list) {
                float f5 = (fVar.f981c * fCoerceAtMost) + f4;
                arrayList.add(new g(fVar, new RectF(f4, f3, f5 - 4.0f, (48.0f + f3) - 4.0f)));
                f4 = f5;
            }
            f3 += 48.0f;
        }
        float width = getWidth() - 140.0f;
        Iterator it2 = e.g.iterator();
        while (it2.hasNext()) {
            float f6 = 36.0f + f;
            arrayList.add(new g((f) it2.next(), new RectF(width, f, 40.0f + width, f6 - 4.0f)));
            f = f6;
        }
    }

    public final Function1<f, Unit> getOnKeyPress() {
        return this.onKeyPress;
    }

    public final Function1<f, Unit> getOnKeyRelease() {
        return this.onKeyRelease;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        ArrayList arrayList = this.f3834d;
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            g gVar = (g) obj;
            f fVar = gVar.f983a;
            RectF rectF = gVar.b;
            String str = fVar.b;
            String str2 = fVar.f980a;
            canvas.drawRoundRect(rectF, 6.0f, 6.0f, this.f3835e.contains(str) ? this.f3836h : this.g);
            canvas.drawRoundRect(rectF, 6.0f, 6.0f, this.f3837i);
            Paint paint = fVar.f982d ? this.f3839k : this.f3838j;
            float textSize = str2.length() > 3 ? 16.0f : paint.getTextSize();
            paint.setTextSize(textSize);
            canvas.drawText(str2, rectF.centerX(), (textSize * 0.35f) + rectF.centerY(), paint);
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i3, int i4, int i5, int i6) {
        super.onSizeChanged(i3, i4, i5, i6);
        a();
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent event) {
        Object obj;
        Function1 function1;
        Intrinsics.checkNotNullParameter(event, "event");
        float x2 = event.getX();
        float y2 = event.getY();
        int actionMasked = event.getActionMasked();
        int i3 = 0;
        LinkedHashSet linkedHashSet = this.f3835e;
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 3) {
                    return false;
                }
                linkedHashSet.clear();
                this.f = null;
                invalidate();
                return true;
            }
            linkedHashSet.clear();
            f fVar = this.f;
            if (fVar != null && (function1 = this.onKeyRelease) != null) {
                function1.invoke(fVar);
            }
            this.f = null;
            invalidate();
            return true;
        }
        ArrayList arrayList = this.f3834d;
        int size = arrayList.size();
        do {
            if (i3 >= size) {
                obj = null;
                break;
            }
            obj = arrayList.get(i3);
            i3++;
        } while (!((g) obj).b.contains(x2, y2));
        g gVar = (g) obj;
        f fVar2 = gVar != null ? gVar.f983a : null;
        if (fVar2 != null) {
            linkedHashSet.add(fVar2.b);
            this.f = fVar2;
            Function1 function2 = this.onKeyPress;
            if (function2 != null) {
                function2.invoke(fVar2);
            }
            invalidate();
        }
        return true;
    }

    public final void setOnKeyPress(Function1<? super f, Unit> function1) {
        this.onKeyPress = function1;
    }

    public final void setOnKeyRelease(Function1<? super f, Unit> function1) {
        this.onKeyRelease = function1;
    }
}
