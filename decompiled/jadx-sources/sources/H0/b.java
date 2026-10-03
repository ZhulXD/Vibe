package H0;

import android.graphics.Typeface;
import android.view.View;
import android.widget.TextView;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b implements Runnable {
    public final /* synthetic */ int b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f1054c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ View f1055d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f1056e;

    public b(TextView textView, Typeface typeface, int i3) {
        this.f1055d = textView;
        this.f1056e = typeface;
        this.f1054c = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                ((BottomSheetBehavior) this.f1056e).K(this.f1055d, this.f1054c, false);
                break;
            default:
                ((TextView) this.f1055d).setTypeface((Typeface) this.f1056e, this.f1054c);
                break;
        }
    }

    public b(BottomSheetBehavior bottomSheetBehavior, View view, int i3) {
        this.f1056e = bottomSheetBehavior;
        this.f1055d = view;
        this.f1054c = i3;
    }
}
