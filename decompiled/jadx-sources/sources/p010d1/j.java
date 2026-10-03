package p010d1;

import R0.o;
import android.text.Editable;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class j extends o {
    public final /* synthetic */ n b;

    public j(n nVar) {
        this.b = nVar;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        this.b.b().a();
    }

    @Override // R0.o, android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
        this.b.b().b();
    }
}
