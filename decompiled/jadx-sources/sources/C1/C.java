package C1;

import android.view.View;
import androidx.core.content.res.ResourcesCompat;
import com.google.android.material.sidesheet.SideSheetBehavior;
import com.minhub.gamehub.hub.AddGameActivity;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f397c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f398d;

    public /* synthetic */ C(Object obj, int i3, int i4) {
        this.b = i4;
        this.f398d = obj;
        this.f397c = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                ((AddGameActivity) this.f398d).D(RangesKt.coerceIn(((this.f397c * 55) / 100) + 40, 41, 95));
                break;
            case 1:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.f398d;
                View view = (View) sideSheetBehavior.f3500p.get();
                if (view != null) {
                    sideSheetBehavior.y(view, this.f397c, false);
                }
                break;
            default:
                ((ResourcesCompat.FontCallback) this.f398d).lambda$callbackFailAsync$1(this.f397c);
                break;
        }
    }
}
