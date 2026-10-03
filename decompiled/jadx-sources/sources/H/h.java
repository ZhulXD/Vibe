package H;

import android.widget.EditText;
import java.lang.ref.WeakReference;
import k.U0;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class h extends androidx.emoji2.text.h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1051a = 0;
    public final WeakReference b;

    public h(EditText editText) {
        this.b = new WeakReference(editText);
    }

    @Override // androidx.emoji2.text.h
    public void a() {
        switch (this.f1051a) {
            case 1:
                U0 u2 = (U0) this.b.get();
                if (u2 != null) {
                    u2.c();
                }
                break;
        }
    }

    @Override // androidx.emoji2.text.h
    public final void b() {
        switch (this.f1051a) {
            case 0:
                i.a((EditText) this.b.get(), 1);
                break;
            default:
                U0 u2 = (U0) this.b.get();
                if (u2 != null) {
                    u2.c();
                }
                break;
        }
    }

    public h(U0 u2) {
        this.b = new WeakReference(u2);
    }
}
