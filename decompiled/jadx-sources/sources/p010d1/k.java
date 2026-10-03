package p010d1;

import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ n f3903a;

    public k(n nVar) {
        this.f3903a = nVar;
    }

    public final void a(TextInputLayout textInputLayout) {
        n nVar = this.f3903a;
        j jVar = nVar.f3926w;
        if (nVar.f3923t == textInputLayout.getEditText()) {
            return;
        }
        EditText editText = nVar.f3923t;
        if (editText != null) {
            editText.removeTextChangedListener(jVar);
            if (nVar.f3923t.getOnFocusChangeListener() == nVar.b().e()) {
                nVar.f3923t.setOnFocusChangeListener(null);
            }
        }
        EditText editText2 = textInputLayout.getEditText();
        nVar.f3923t = editText2;
        if (editText2 != null) {
            editText2.addTextChangedListener(jVar);
        }
        nVar.b().l(nVar.f3923t);
        nVar.j(nVar.b());
    }
}
