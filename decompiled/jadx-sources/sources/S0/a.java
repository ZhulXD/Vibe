package S0;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.view.View;
import androidx.activity.BackEventCompat;
import androidx.core.view.animation.PathInterpolatorCompat;
import com.minhub.gamehub.R;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TimeInterpolator f2042a;
    public final View b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2043c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f2044d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f2045e;
    public BackEventCompat f;

    public a(View view) {
        this.b = view;
        Context context = view.getContext();
        this.f2042a = com.bumptech.glide.c.O(context, R.attr.motionEasingStandardDecelerateInterpolator, PathInterpolatorCompat.create(0.0f, 0.0f, 0.0f, 1.0f));
        this.f2043c = com.bumptech.glide.c.N(context, R.attr.motionDurationMedium2, 300);
        this.f2044d = com.bumptech.glide.c.N(context, R.attr.motionDurationShort3, 150);
        this.f2045e = com.bumptech.glide.c.N(context, R.attr.motionDurationShort2, 100);
    }
}
