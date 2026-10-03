package S0;

import android.window.BackEvent;
import android.window.OnBackAnimationCallback;
import androidx.activity.BackEventCompat;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class e implements OnBackAnimationCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b f2048a;
    public final /* synthetic */ f b;

    public e(f fVar, b bVar) {
        this.b = fVar;
        this.f2048a = bVar;
    }

    public final void onBackCancelled() {
        if (this.b.f2047a != null) {
            this.f2048a.d();
        }
    }

    public final void onBackInvoked() {
        this.f2048a.a();
    }

    public final void onBackProgressed(BackEvent backEvent) {
        if (this.b.f2047a != null) {
            this.f2048a.c(new BackEventCompat(backEvent));
        }
    }

    public final void onBackStarted(BackEvent backEvent) {
        if (this.b.f2047a != null) {
            this.f2048a.b(new BackEventCompat(backEvent));
        }
    }
}
