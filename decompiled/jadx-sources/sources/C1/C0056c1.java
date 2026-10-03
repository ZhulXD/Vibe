package C1;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.TextView;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: renamed from: C1.c1, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0056c1 implements TextWatcher {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f568c;

    public /* synthetic */ C0056c1(int i3, Object obj) {
        this.b = i3;
        this.f568c = obj;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        switch (this.b) {
            case 0:
                C0059d1 c0059d1 = (C0059d1) this.f568c;
                String string = editable != null ? editable.toString() : null;
                if (string == null) {
                    string = "";
                }
                c0059d1.f = StringsKt.trim((CharSequence) string).toString();
                List list = (List) ((Z0) c0059d1.f574c.getValue()).b.getValue();
                if (list != null) {
                    c0059d1.b(list, true);
                }
                break;
        }
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
        int i6 = this.b;
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
        switch (this.b) {
            case 0:
                break;
            default:
                TextView textView = (TextView) this.f568c;
                if (textView.getVisibility() == 0) {
                    String name = charSequence != null ? charSequence.toString() : null;
                    if (name == null) {
                        name = "";
                    }
                    Intrinsics.checkNotNullParameter(name, "name");
                    if (StringsKt.trim((CharSequence) name).toString().length() > 0) {
                        textView.setVisibility(8);
                    }
                }
                break;
        }
    }

    private final void a(Editable editable) {
    }

    private final void b(int i3, int i4, int i5, CharSequence charSequence) {
    }

    private final void c(int i3, int i4, int i5, CharSequence charSequence) {
    }

    private final void d(int i3, int i4, int i5, CharSequence charSequence) {
    }
}
