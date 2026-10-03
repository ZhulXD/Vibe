package C1;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.EditText;
import com.minhub.gamehub.game.GameActivity;
import com.minhub.gamehub.hub.AddGameActivity;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import p064y1.AbstractC0409s;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class N implements TextWatcher {
    public final /* synthetic */ int b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ EditText f472c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Button f473d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ S1.c f474e;

    public N(EditText editText, Button button, GameActivity gameActivity) {
        this.f472c = editText;
        this.f473d = button;
        this.f474e = gameActivity;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        switch (this.b) {
            case 0:
                AddGameActivity addGameActivity = (AddGameActivity) this.f474e;
                Editable text = this.f472c.getText();
                Intrinsics.checkNotNullExpressionValue(text, "getText(...)");
                this.f473d.setEnabled((StringsKt.isBlank(text) || addGameActivity.f3748n == null) ? false : true);
                break;
            default:
                AbstractC0409s.c(this.f472c, this.f473d, (GameActivity) this.f474e);
                break;
        }
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
        int i6 = this.b;
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
        int i6 = this.b;
    }

    public N(Button button, EditText editText, AddGameActivity addGameActivity) {
        this.f473d = button;
        this.f472c = editText;
        this.f474e = addGameActivity;
    }

    private final void a(int i3, int i4, int i5, CharSequence charSequence) {
    }

    private final void b(int i3, int i4, int i5, CharSequence charSequence) {
    }

    private final void c(int i3, int i4, int i5, CharSequence charSequence) {
    }

    private final void d(int i3, int i4, int i5, CharSequence charSequence) {
    }
}
