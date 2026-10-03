package S;

import android.animation.Animator;
import android.animation.AnimatorSet;

/* JADX INFO: renamed from: S.q, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0184q {
    public static long a(Animator animator) {
        return animator.getTotalDuration();
    }

    public static void b(Animator animator, long j2) {
        ((AnimatorSet) animator).setCurrentPlayTime(j2);
    }
}
