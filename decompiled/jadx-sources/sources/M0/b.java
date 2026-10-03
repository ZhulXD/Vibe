package M0;

import R0.l;
import R0.m;
import android.graphics.Typeface;
import com.google.android.material.chip.Chip;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends p000a.a {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final /* synthetic */ int f1291m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final /* synthetic */ Object f1292n;

    public /* synthetic */ b(int i3, Object obj) {
        this.f1291m = i3;
        this.f1292n = obj;
    }

    @Override // p000a.a
    public final void w(int i3) {
        switch (this.f1291m) {
            case 0:
                break;
            default:
                m mVar = (m) this.f1292n;
                mVar.f1937e = true;
                l lVar = (l) mVar.f.get();
                if (lVar != null) {
                    lVar.a();
                }
                break;
        }
    }

    @Override // p000a.a
    public final void x(Typeface typeface, boolean z2) {
        switch (this.f1291m) {
            case 0:
                Chip chip = (Chip) this.f1292n;
                f fVar = chip.f;
                chip.setText(fVar.f1304D0 ? fVar.f1307F : chip.getText());
                chip.requestLayout();
                chip.invalidate();
                break;
            default:
                if (!z2) {
                    m mVar = (m) this.f1292n;
                    mVar.f1937e = true;
                    l lVar = (l) mVar.f.get();
                    if (lVar != null) {
                        lVar.a();
                    }
                    break;
                }
                break;
        }
    }

    private final void P(int i3) {
    }
}
