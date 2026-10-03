package p064y1;

import T1.k;
import android.widget.SeekBar;
import com.minhub.gamehub.editor.EditModeOverlay;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import p061x1.a;

/* JADX INFO: renamed from: y1.h1, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0379h1 implements SeekBar.OnSeekBarChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6241a;
    public final /* synthetic */ C0385j1 b;

    public /* synthetic */ C0379h1(C0385j1 c0385j1, int i3) {
        this.f6241a = i3;
        this.b = c0385j1;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i3, boolean z2) {
        switch (this.f6241a) {
            case 0:
                if (z2) {
                    int iCoerceIn = RangesKt.coerceIn(i3, 20, 140);
                    C0385j1 c0385j1 = this.b;
                    EditModeOverlay editModeOverlay = c0385j1.f6261i;
                    if (editModeOverlay != null) {
                        editModeOverlay.g(new k(iCoerceIn, 4));
                    }
                    c0385j1.g();
                    break;
                }
                break;
            default:
                if (z2) {
                    final float fCoerceIn = RangesKt.coerceIn(i3 / 100.0f, 0.1f, 1.0f);
                    C0385j1 c0385j2 = this.b;
                    EditModeOverlay editModeOverlay2 = c0385j2.f6261i;
                    if (editModeOverlay2 != null) {
                        editModeOverlay2.g(new Function1() { // from class: y1.i1
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                a it = (a) obj;
                                Intrinsics.checkNotNullParameter(it, "it");
                                return a.a(it, null, 0.0f, 0.0f, 0, 0, null, null, fCoerceIn, false, 1535);
                            }
                        });
                    }
                    c0385j2.g();
                    break;
                }
                break;
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
        int i3 = this.f6241a;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        int i3 = this.f6241a;
    }

    private final void a(SeekBar seekBar) {
    }

    private final void b(SeekBar seekBar) {
    }

    private final void c(SeekBar seekBar) {
    }

    private final void d(SeekBar seekBar) {
    }
}
