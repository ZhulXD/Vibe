package p064y1;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.ImageView;
import com.minhub.gamehub.game.GameActivity;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class T {
    public static final AnimatorSet a(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        AccelerateDecelerateInterpolator accelerateDecelerateInterpolator = new AccelerateDecelerateInterpolator();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "scaleX", 1.0f, 0.84f);
        objectAnimatorOfFloat.setDuration(1200L);
        objectAnimatorOfFloat.setRepeatCount(-1);
        objectAnimatorOfFloat.setRepeatMode(2);
        objectAnimatorOfFloat.setInterpolator(accelerateDecelerateInterpolator);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, "scaleY", 1.0f, 0.84f);
        objectAnimatorOfFloat2.setDuration(1200L);
        objectAnimatorOfFloat2.setRepeatCount(-1);
        objectAnimatorOfFloat2.setRepeatMode(2);
        objectAnimatorOfFloat2.setInterpolator(accelerateDecelerateInterpolator);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
        animatorSet.start();
        return animatorSet;
    }

    public static final AnimatorSet b(GameActivity gameActivity, ImageView targetView) {
        Intrinsics.checkNotNullParameter(gameActivity, "<this>");
        Intrinsics.checkNotNullParameter(targetView, "targetView");
        int scaledTouchSlop = ViewConfiguration.get(gameActivity).getScaledTouchSlop();
        float f = gameActivity.getResources().getDisplayMetrics().density * 24.0f;
        Ref.FloatRef floatRef = new Ref.FloatRef();
        Ref.FloatRef floatRef2 = new Ref.FloatRef();
        Ref.FloatRef floatRef3 = new Ref.FloatRef();
        Ref.FloatRef floatRef4 = new Ref.FloatRef();
        Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        AnimatorSet animatorSetA = a(targetView);
        targetView.setOnTouchListener(new S(floatRef, floatRef2, floatRef3, floatRef4, booleanRef, scaledTouchSlop, f));
        return animatorSetA;
    }
}
