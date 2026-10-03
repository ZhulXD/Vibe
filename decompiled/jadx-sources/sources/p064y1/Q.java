package p064y1;

import android.content.Intent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import com.minhub.gamehub.R;
import com.minhub.gamehub.game.GameActivity;
import com.minhub.gamehub.game.VxAceCheatActivity;
import com.minhub.gamehub.game.VxAceGameActivity;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class Q implements View.OnTouchListener {
    public final /* synthetic */ int b = 3;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f6119c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Ref.FloatRef f6120d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Ref.FloatRef f6121e;
    public final /* synthetic */ Ref.BooleanRef f;
    public final /* synthetic */ int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ float f6122h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f6123i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f6124j;

    public /* synthetic */ Q(View view, Ref.FloatRef floatRef, Ref.FloatRef floatRef2, Ref.FloatRef floatRef3, Ref.FloatRef floatRef4, Ref.BooleanRef booleanRef, int i3, float f) {
        this.f6123i = view;
        this.f6120d = floatRef;
        this.f6121e = floatRef2;
        this.f6124j = floatRef3;
        this.f6119c = floatRef4;
        this.f = booleanRef;
        this.g = i3;
        this.f6122h = f;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        int i3 = this.b;
        Object obj = this.f6119c;
        float f = this.f6122h;
        int i4 = this.g;
        Ref.BooleanRef booleanRef = this.f;
        Object obj2 = this.f6124j;
        Object obj3 = this.f6123i;
        Ref.FloatRef floatRef = this.f6121e;
        Ref.FloatRef floatRef2 = this.f6120d;
        switch (i3) {
            case 0:
                Ref.IntRef intRef = (Ref.IntRef) obj3;
                Ref.IntRef intRef2 = (Ref.IntRef) obj2;
                GameActivity gameActivity = (GameActivity) obj;
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked == 0) {
                    view.setPressed(true);
                    view.bringToFront();
                    ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                    Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
                    FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
                    intRef.element = layoutParams2.leftMargin;
                    intRef2.element = layoutParams2.topMargin;
                    floatRef2.element = motionEvent.getRawX();
                    floatRef.element = motionEvent.getRawY();
                    booleanRef.element = false;
                    return true;
                }
                if (actionMasked == 1) {
                    view.setPressed(false);
                    if (!booleanRef.element) {
                        view.performClick();
                        return true;
                    }
                    ViewGroup.LayoutParams layoutParams3 = view.getLayoutParams();
                    Intrinsics.checkNotNull(layoutParams3, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
                    FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) layoutParams3;
                    layoutParams4.gravity = 8388659;
                    layoutParams4.leftMargin = (int) RangesKt.coerceIn(layoutParams4.leftMargin, f, RangesKt.coerceAtLeast((gameActivity.u().f5679a.getWidth() - view.getWidth()) - f, f));
                    layoutParams4.topMargin = (int) RangesKt.coerceIn(layoutParams4.topMargin, f, RangesKt.coerceAtLeast((gameActivity.u().f5679a.getHeight() - view.getHeight()) - f, f));
                    view.setLayoutParams(layoutParams4);
                    view.setTranslationX(0.0f);
                    view.setTranslationY(0.0f);
                    view.bringToFront();
                    return true;
                }
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                        return false;
                    }
                    view.setPressed(false);
                    return true;
                }
                float fAbs = Math.abs(motionEvent.getRawX() - floatRef2.element);
                float fAbs2 = Math.abs(motionEvent.getRawY() - floatRef.element);
                if (!booleanRef.element) {
                    float f3 = i4;
                    if (fAbs > f3 || fAbs2 > f3) {
                        booleanRef.element = true;
                    }
                }
                Pair pair = new Pair(Integer.valueOf(intRef.element + ((int) (motionEvent.getRawX() - floatRef2.element))), Integer.valueOf(intRef2.element + ((int) (motionEvent.getRawY() - floatRef.element))));
                float fCoerceIn = RangesKt.coerceIn(((Number) pair.getFirst()).intValue(), f, RangesKt.coerceAtLeast((gameActivity.u().f5679a.getWidth() - view.getWidth()) - f, f));
                float fCoerceIn2 = RangesKt.coerceIn(((Number) pair.getSecond()).intValue(), f, RangesKt.coerceAtLeast((gameActivity.u().f5679a.getHeight() - view.getHeight()) - f, f));
                ViewGroup.LayoutParams layoutParams5 = view.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams5, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
                FrameLayout.LayoutParams layoutParams6 = (FrameLayout.LayoutParams) layoutParams5;
                layoutParams6.leftMargin = (int) fCoerceIn;
                layoutParams6.topMargin = (int) fCoerceIn2;
                view.setLayoutParams(layoutParams6);
                view.setTranslationX(0.0f);
                view.setTranslationY(0.0f);
                view.bringToFront();
                return true;
            case 1:
                GameActivity gameActivity2 = (GameActivity) obj;
                Ref.FloatRef floatRef3 = (Ref.FloatRef) obj3;
                Ref.FloatRef floatRef4 = (Ref.FloatRef) obj2;
                ScrollView layoutMenuCard = gameActivity2.u().f5671R;
                Intrinsics.checkNotNullExpressionValue(layoutMenuCard, "layoutMenuCard");
                int actionMasked2 = motionEvent.getActionMasked();
                if (actionMasked2 == 0) {
                    floatRef2.element = motionEvent.getRawX();
                    floatRef.element = motionEvent.getRawY();
                    floatRef3.element = layoutMenuCard.getTranslationX();
                    floatRef4.element = layoutMenuCard.getTranslationY();
                    booleanRef.element = false;
                    layoutMenuCard.bringToFront();
                    ViewParent parent = gameActivity2.u().f5699l0.getParent();
                    if (parent == null) {
                        return true;
                    }
                    parent.requestDisallowInterceptTouchEvent(true);
                    return true;
                }
                if (actionMasked2 == 1) {
                    return true;
                }
                if (actionMasked2 != 2) {
                    return actionMasked2 == 3;
                }
                float rawX = motionEvent.getRawX() - floatRef2.element;
                float rawY = motionEvent.getRawY() - floatRef.element;
                if (!booleanRef.element) {
                    float f4 = i4;
                    if (Math.abs(rawX) > f4 || Math.abs(rawY) > f4) {
                        booleanRef.element = true;
                    }
                }
                if (!booleanRef.element) {
                    return true;
                }
                Object parent2 = layoutMenuCard.getParent();
                Intrinsics.checkNotNull(parent2, "null cannot be cast to non-null type android.view.View");
                View view2 = (View) parent2;
                float left = f - layoutMenuCard.getLeft();
                float fCoerceAtLeast = RangesKt.coerceAtLeast((view2.getWidth() - f) - layoutMenuCard.getRight(), left);
                float top = f - layoutMenuCard.getTop();
                float fCoerceAtLeast2 = RangesKt.coerceAtLeast((view2.getHeight() - f) - layoutMenuCard.getBottom(), top);
                layoutMenuCard.setTranslationX(RangesKt.coerceIn(floatRef3.element + rawX, left, fCoerceAtLeast));
                layoutMenuCard.setTranslationY(RangesKt.coerceIn(floatRef4.element + rawY, top, fCoerceAtLeast2));
                return true;
            case 2:
                Ref.FloatRef floatRef5 = (Ref.FloatRef) obj3;
                LinearLayout linearLayout = (LinearLayout) obj2;
                Ref.FloatRef floatRef6 = (Ref.FloatRef) obj;
                int i5 = VxAceCheatActivity.f3725o;
                int actionMasked3 = motionEvent.getActionMasked();
                if (actionMasked3 == 0) {
                    floatRef2.element = motionEvent.getRawX();
                    floatRef.element = motionEvent.getRawY();
                    floatRef5.element = linearLayout.getTranslationX();
                    floatRef6.element = linearLayout.getTranslationY();
                    booleanRef.element = false;
                    linearLayout.bringToFront();
                    return true;
                }
                if (actionMasked3 == 1) {
                    return true;
                }
                if (actionMasked3 != 2) {
                    return actionMasked3 == 3;
                }
                float rawX2 = motionEvent.getRawX() - floatRef2.element;
                float rawY2 = motionEvent.getRawY() - floatRef.element;
                if (!booleanRef.element) {
                    float f5 = i4;
                    if (Math.abs(rawX2) > f5 || Math.abs(rawY2) > f5) {
                        booleanRef.element = true;
                    }
                }
                if (!booleanRef.element) {
                    return true;
                }
                Object parent3 = linearLayout.getParent();
                Intrinsics.checkNotNull(parent3, "null cannot be cast to non-null type android.view.View");
                View view3 = (View) parent3;
                float left2 = f - linearLayout.getLeft();
                float fCoerceAtLeast3 = RangesKt.coerceAtLeast((view3.getWidth() - f) - linearLayout.getRight(), left2);
                float top2 = f - linearLayout.getTop();
                float fCoerceAtLeast4 = RangesKt.coerceAtLeast((view3.getHeight() - f) - linearLayout.getBottom(), top2);
                linearLayout.setTranslationX(RangesKt.coerceIn(floatRef5.element + rawX2, left2, fCoerceAtLeast3));
                linearLayout.setTranslationY(RangesKt.coerceIn(floatRef6.element + rawY2, top2, fCoerceAtLeast4));
                return true;
            case 3:
                Ref.FloatRef floatRef7 = (Ref.FloatRef) obj2;
                Ref.FloatRef floatRef8 = (Ref.FloatRef) obj;
                View viewFindViewById = ((View) obj3).findViewById(R.id.layout_menu_card);
                int actionMasked4 = motionEvent.getActionMasked();
                if (actionMasked4 == 0) {
                    floatRef2.element = motionEvent.getRawX();
                    floatRef.element = motionEvent.getRawY();
                    floatRef7.element = viewFindViewById.getTranslationX();
                    floatRef8.element = viewFindViewById.getTranslationY();
                    booleanRef.element = false;
                    viewFindViewById.bringToFront();
                    return true;
                }
                if (actionMasked4 == 1) {
                    return true;
                }
                if (actionMasked4 != 2) {
                    return actionMasked4 == 3;
                }
                float rawX3 = motionEvent.getRawX() - floatRef2.element;
                float rawY3 = motionEvent.getRawY() - floatRef.element;
                if (!booleanRef.element) {
                    float f6 = i4;
                    if (Math.abs(rawX3) > f6 || Math.abs(rawY3) > f6) {
                        booleanRef.element = true;
                    }
                }
                if (!booleanRef.element) {
                    return true;
                }
                Object parent4 = viewFindViewById.getParent();
                Intrinsics.checkNotNull(parent4, "null cannot be cast to non-null type android.view.View");
                View view4 = (View) parent4;
                float left3 = f - viewFindViewById.getLeft();
                float fCoerceAtLeast5 = RangesKt.coerceAtLeast((view4.getWidth() - f) - viewFindViewById.getRight(), left3);
                float top3 = f - viewFindViewById.getTop();
                float fCoerceAtLeast6 = RangesKt.coerceAtLeast((view4.getHeight() - f) - viewFindViewById.getBottom(), top3);
                viewFindViewById.setTranslationX(RangesKt.coerceIn(floatRef7.element + rawX3, left3, fCoerceAtLeast5));
                viewFindViewById.setTranslationY(RangesKt.coerceIn(floatRef8.element + rawY3, top3, fCoerceAtLeast6));
                return true;
            default:
                Ref.FloatRef floatRef9 = (Ref.FloatRef) obj3;
                Ref.FloatRef floatRef10 = (Ref.FloatRef) obj2;
                VxAceGameActivity vxAceGameActivity = (VxAceGameActivity) obj;
                int actionMasked5 = motionEvent.getActionMasked();
                if (actionMasked5 == 0) {
                    floatRef2.element = motionEvent.getRawX();
                    floatRef.element = motionEvent.getRawY();
                    floatRef9.element = view.getTranslationX();
                    floatRef10.element = view.getTranslationY();
                    booleanRef.element = false;
                    view.bringToFront();
                    return true;
                }
                if (actionMasked5 == 1) {
                    if (booleanRef.element) {
                        return true;
                    }
                    vxAceGameActivity.startActivity(new Intent(vxAceGameActivity, (Class<?>) VxAceCheatActivity.class));
                    return true;
                }
                if (actionMasked5 != 2) {
                    return false;
                }
                float rawX4 = motionEvent.getRawX() - floatRef2.element;
                float rawY4 = motionEvent.getRawY() - floatRef.element;
                if (!booleanRef.element) {
                    float f7 = i4;
                    if (Math.abs(rawX4) > f7 || Math.abs(rawY4) > f7) {
                        booleanRef.element = true;
                    }
                }
                if (!booleanRef.element) {
                    return true;
                }
                Object parent5 = view.getParent();
                Intrinsics.checkNotNull(parent5, "null cannot be cast to non-null type android.view.View");
                View view5 = (View) parent5;
                view.setTranslationX(RangesKt.coerceIn(floatRef9.element + rawX4, f - view.getLeft(), RangesKt.coerceAtLeast((view5.getWidth() - f) - view.getRight(), f - view.getLeft())));
                view.setTranslationY(RangesKt.coerceIn(floatRef10.element + rawY4, f - view.getTop(), RangesKt.coerceAtLeast((view5.getHeight() - f) - view.getBottom(), f - view.getTop())));
                return true;
        }
    }

    public /* synthetic */ Q(GameActivity gameActivity, Ref.FloatRef floatRef, Ref.FloatRef floatRef2, Ref.FloatRef floatRef3, Ref.FloatRef floatRef4, Ref.BooleanRef booleanRef, int i3, float f) {
        this.f6119c = gameActivity;
        this.f6120d = floatRef;
        this.f6121e = floatRef2;
        this.f6123i = floatRef3;
        this.f6124j = floatRef4;
        this.f = booleanRef;
        this.g = i3;
        this.f6122h = f;
    }

    public /* synthetic */ Q(Ref.FloatRef floatRef, Ref.FloatRef floatRef2, Ref.FloatRef floatRef3, LinearLayout linearLayout, Ref.FloatRef floatRef4, Ref.BooleanRef booleanRef, int i3, float f) {
        this.f6120d = floatRef;
        this.f6121e = floatRef2;
        this.f6123i = floatRef3;
        this.f6124j = linearLayout;
        this.f6119c = floatRef4;
        this.f = booleanRef;
        this.g = i3;
        this.f6122h = f;
    }

    public /* synthetic */ Q(Ref.FloatRef floatRef, Ref.FloatRef floatRef2, Ref.FloatRef floatRef3, Ref.FloatRef floatRef4, Ref.BooleanRef booleanRef, int i3, float f, VxAceGameActivity vxAceGameActivity) {
        this.f6120d = floatRef;
        this.f6121e = floatRef2;
        this.f6123i = floatRef3;
        this.f6124j = floatRef4;
        this.f = booleanRef;
        this.g = i3;
        this.f6122h = f;
        this.f6119c = vxAceGameActivity;
    }

    public /* synthetic */ Q(Ref.IntRef intRef, Ref.IntRef intRef2, Ref.FloatRef floatRef, Ref.FloatRef floatRef2, Ref.BooleanRef booleanRef, int i3, GameActivity gameActivity, float f) {
        this.f6123i = intRef;
        this.f6124j = intRef2;
        this.f6120d = floatRef;
        this.f6121e = floatRef2;
        this.f = booleanRef;
        this.g = i3;
        this.f6119c = gameActivity;
        this.f6122h = f;
    }
}
