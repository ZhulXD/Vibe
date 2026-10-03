package p010d1;

import C1.V;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import com.minhub.gamehub.R;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class v extends o {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f3969e;
    public EditText f;
    public final V g;

    public v(n nVar, int i3) {
        super(nVar);
        this.f3969e = R.drawable.design_password_eye;
        this.g = new V(7, this);
        if (i3 != 0) {
            this.f3969e = i3;
        }
    }

    @Override // p010d1.o
    public final void b() {
        p();
    }

    @Override // p010d1.o
    public final int c() {
        return R.string.password_toggle_content_description;
    }

    @Override // p010d1.o
    public final int d() {
        return this.f3969e;
    }

    @Override // p010d1.o
    public final View.OnClickListener f() {
        return this.g;
    }

    @Override // p010d1.o
    public final boolean j() {
        return true;
    }

    @Override // p010d1.o
    public final boolean k() {
        EditText editText = this.f;
        return !(editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod));
    }

    @Override // p010d1.o
    public final void l(EditText editText) {
        this.f = editText;
        p();
    }

    @Override // p010d1.o
    public final void q() {
        EditText editText = this.f;
        if (editText != null) {
            if (editText.getInputType() == 16 || editText.getInputType() == 128 || editText.getInputType() == 144 || editText.getInputType() == 224) {
                this.f.setTransformationMethod(PasswordTransformationMethod.getInstance());
            }
        }
    }

    @Override // p010d1.o
    public final void r() {
        EditText editText = this.f;
        if (editText != null) {
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }
}
