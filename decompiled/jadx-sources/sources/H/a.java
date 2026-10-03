package H;

import android.text.Editable;
import androidx.emoji2.text.u;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a extends Editable.Factory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f1041a = new Object();
    public static volatile a b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class f1042c;

    @Override // android.text.Editable.Factory
    public final Editable newEditable(CharSequence charSequence) {
        Class cls = f1042c;
        return cls != null ? new u(cls, charSequence) : super.newEditable(charSequence);
    }
}
