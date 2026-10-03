package com.hatkid.mkxpz.utils;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.hatkid.mkxpz.gamepad.GamepadButton;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0007J\u0018\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0007¨\u0006\u000f"}, d2 = {"Lcom/hatkid/mkxpz/utils/ViewUtils;", "", "<init>", "()V", "changeOpacity", "", "viewGroup", "Landroid/view/ViewGroup;", "opacity", "", "resize", "view", "Landroid/view/View;", "scale", "", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class ViewUtils {
    public static final ViewUtils INSTANCE = new ViewUtils();

    private ViewUtils() {
    }

    @JvmStatic
    public static final void changeOpacity(ViewGroup viewGroup, int opacity) {
        Intrinsics.checkNotNullParameter(viewGroup, "viewGroup");
        int childCount = viewGroup.getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = viewGroup.getChildAt(i3);
            if (childAt instanceof Button) {
                Button button = (Button) childAt;
                Drawable background = button.getBackground();
                if (background != null) {
                    background.setAlpha(MathKt.roundToInt(opacity * 2.25f));
                }
                button.setAlpha((opacity / 100.0f) * 2);
            } else if (childAt instanceof GamepadButton) {
                ((GamepadButton) childAt).setImageAlpha(MathKt.roundToInt(RangesKt.coerceAtMost(opacity, 100) * 2.55f));
            } else if (childAt instanceof ViewGroup) {
                changeOpacity((ViewGroup) childAt, opacity);
            }
        }
    }

    @JvmStatic
    public static final void resize(View view, float scale) {
        Intrinsics.checkNotNullParameter(view, "view");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int i3 = layoutParams.width;
        if (i3 > 0) {
            layoutParams.width = MathKt.roundToInt((scale / 100.0f) * i3);
        }
        int i4 = layoutParams.height;
        if (i4 > 0) {
            layoutParams.height = MathKt.roundToInt((scale / 100.0f) * i4);
        }
        view.setLayoutParams(layoutParams);
        float f = scale / 100.0f;
        view.setPadding(MathKt.roundToInt(view.getPaddingLeft() * f), MathKt.roundToInt(view.getPaddingTop() * f), MathKt.roundToInt(view.getPaddingRight() * f), MathKt.roundToInt(view.getPaddingBottom() * f));
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = viewGroup.getChildAt(i5);
                if (childAt != null) {
                    resize(childAt, scale);
                }
            }
        }
    }
}
