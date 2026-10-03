package p064y1;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.minhub.gamehub.game.GodotGameActivity;
import java.io.Serializable;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class S implements View.OnTouchListener {
    public final /* synthetic */ int b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Ref.FloatRef f6128c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Ref.FloatRef f6129d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Ref.BooleanRef f6130e;
    public final /* synthetic */ int f;
    public final /* synthetic */ float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Serializable f6131h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Serializable f6132i;

    public /* synthetic */ S(Ref.FloatRef floatRef, Ref.FloatRef floatRef2, Ref.FloatRef floatRef3, Ref.FloatRef floatRef4, Ref.BooleanRef booleanRef, int i3, float f) {
        this.f6128c = floatRef;
        this.f6129d = floatRef2;
        this.f6131h = floatRef3;
        this.f6132i = floatRef4;
        this.f6130e = booleanRef;
        this.f = i3;
        this.g = f;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent event) {
        int i3 = this.b;
        float f = this.g;
        int i4 = this.f;
        Ref.BooleanRef booleanRef = this.f6130e;
        Ref.FloatRef floatRef = this.f6129d;
        Ref.FloatRef floatRef2 = this.f6128c;
        Serializable serializable = this.f6132i;
        Serializable serializable2 = this.f6131h;
        switch (i3) {
            case 0:
                Ref.FloatRef floatRef3 = (Ref.FloatRef) serializable2;
                Ref.FloatRef floatRef4 = (Ref.FloatRef) serializable;
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(event, "event");
                int actionMasked = event.getActionMasked();
                if (actionMasked == 0) {
                    floatRef2.element = event.getRawX();
                    floatRef.element = event.getRawY();
                    floatRef3.element = view.getTranslationX();
                    floatRef4.element = view.getTranslationY();
                    booleanRef.element = false;
                    view.bringToFront();
                    return true;
                }
                if (actionMasked == 1) {
                    if (booleanRef.element) {
                        return true;
                    }
                    view.performClick();
                    return true;
                }
                if (actionMasked != 2) {
                    return false;
                }
                float rawX = event.getRawX() - floatRef2.element;
                float rawY = event.getRawY() - floatRef.element;
                if (!booleanRef.element) {
                    float f3 = i4;
                    if (Math.abs(rawX) > f3 || Math.abs(rawY) > f3) {
                        booleanRef.element = true;
                    }
                }
                if (!booleanRef.element) {
                    return true;
                }
                Object parent = view.getParent();
                Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.View");
                View view2 = (View) parent;
                float left = f - view.getLeft();
                float fCoerceAtLeast = RangesKt.coerceAtLeast((view2.getWidth() - f) - view.getRight(), left);
                float top = f - view.getTop();
                float fCoerceAtLeast2 = RangesKt.coerceAtLeast((view2.getHeight() - f) - view.getBottom(), top);
                view.setTranslationX(RangesKt.coerceIn(floatRef3.element + rawX, left, fCoerceAtLeast));
                view.setTranslationY(RangesKt.coerceIn(floatRef4.element + rawY, top, fCoerceAtLeast2));
                return true;
            default:
                Ref.IntRef intRef = (Ref.IntRef) serializable2;
                Ref.IntRef intRef2 = (Ref.IntRef) serializable;
                int i5 = GodotGameActivity.f3707q;
                int actionMasked2 = event.getActionMasked();
                if (actionMasked2 == 0) {
                    view.setPressed(true);
                    view.bringToFront();
                    ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                    Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
                    FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
                    intRef.element = layoutParams2.leftMargin;
                    intRef2.element = layoutParams2.topMargin;
                    floatRef2.element = event.getRawX();
                    floatRef.element = event.getRawY();
                    booleanRef.element = false;
                    return true;
                }
                if (actionMasked2 == 1) {
                    view.setPressed(false);
                    if (booleanRef.element) {
                        return true;
                    }
                    view.performClick();
                    return true;
                }
                if (actionMasked2 != 2) {
                    if (actionMasked2 != 3) {
                        return false;
                    }
                    view.setPressed(false);
                    return true;
                }
                if (!booleanRef.element) {
                    float f4 = i4;
                    if (Math.abs(event.getRawX() - floatRef2.element) > f4 || Math.abs(event.getRawY() - floatRef.element) > f4) {
                        booleanRef.element = true;
                    }
                }
                if (!booleanRef.element) {
                    return true;
                }
                ViewGroup.LayoutParams layoutParams3 = view.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams3, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
                FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) layoutParams3;
                Object parent2 = view.getParent();
                Intrinsics.checkNotNull(parent2, "null cannot be cast to non-null type android.view.View");
                View view3 = (View) parent2;
                layoutParams4.leftMargin = (int) RangesKt.coerceIn((event.getRawX() + intRef.element) - floatRef2.element, f, (view3.getWidth() - view.getWidth()) - f);
                layoutParams4.topMargin = (int) RangesKt.coerceIn((event.getRawY() + intRef2.element) - floatRef.element, f, (view3.getHeight() - view.getHeight()) - f);
                view.setLayoutParams(layoutParams4);
                return true;
        }
    }

    public /* synthetic */ S(Ref.IntRef intRef, Ref.IntRef intRef2, Ref.FloatRef floatRef, Ref.FloatRef floatRef2, Ref.BooleanRef booleanRef, int i3, float f) {
        this.f6131h = intRef;
        this.f6132i = intRef2;
        this.f6128c = floatRef;
        this.f6129d = floatRef2;
        this.f6130e = booleanRef;
        this.f = i3;
        this.g = f;
    }
}
