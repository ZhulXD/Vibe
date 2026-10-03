package org.godotengine.godot;

import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class j implements View.OnLayoutChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5179a;
    public final /* synthetic */ Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f5180c;

    public /* synthetic */ j(int i3, Object obj, Object obj2) {
        this.f5179a = i3;
        this.b = obj;
        this.f5180c = obj2;
    }

    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v2, types: [T, java.lang.Object, kotlin.Pair] */
    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        int iMin;
        switch (this.f5179a) {
            case 0:
                GodotActivity.onCreate$lambda$1((View) this.b, (GodotActivity) this.f5180c, view, i3, i4, i5, i6, i7, i8, i9, i10);
                break;
            default:
                Integer num = (Integer) this.b;
                Ref.ObjectRef objectRef = (Ref.ObjectRef) this.f5180c;
                int i11 = i5 - i3;
                int i12 = i6 - i4;
                ?? r4 = 0;
                r4 = 0;
                r4 = 0;
                if (i11 > 0 && i12 > 0 && (iMin = Math.min(i11, i12)) > num.intValue()) {
                    double dIntValue = ((double) num.intValue()) / ((double) iMin);
                    double d3 = 2;
                    r4 = TuplesKt.to(Integer.valueOf(RangesKt.coerceAtLeast(MathKt.roundToInt((((double) i11) * dIntValue) / d3) * 2, 2)), Integer.valueOf(RangesKt.coerceAtLeast(MathKt.roundToInt((((double) i12) * dIntValue) / d3) * 2, 2)));
                }
                if (!Intrinsics.areEqual((Object) r4, objectRef.element)) {
                    objectRef.element = r4;
                    Intrinsics.checkNotNull(view, "null cannot be cast to non-null type android.view.SurfaceView");
                    SurfaceHolder holder = ((SurfaceView) view).getHolder();
                    if (r4 != 0) {
                        holder.setFixedSize(((Number) r4.getFirst()).intValue(), ((Number) r4.getSecond()).intValue());
                        Object first = r4.getFirst();
                        Object second = r4.getSecond();
                        StringBuilder sbP = E.b.p("view ", i11, i12, "x", " -> render buffer ");
                        sbP.append(first);
                        sbP.append("x");
                        sbP.append(second);
                        sbP.append(" (");
                        sbP.append(num);
                        sbP.append("p cap)");
                        Log.i("RenpyRenderResolution", sbP.toString());
                    } else {
                        holder.setSizeFromLayout();
                        Log.i("RenpyRenderResolution", "view " + i11 + "x" + i12 + " within " + num + "p; native buffer");
                    }
                    break;
                }
                break;
        }
    }
}
