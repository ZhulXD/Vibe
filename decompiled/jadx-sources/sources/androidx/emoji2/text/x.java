package androidx.emoji2.text;

import androidx.core.text.PrecomputedTextCompat;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class x extends Y0.e {
    @Override // Y0.e
    public final boolean n(CharSequence charSequence) {
        return androidx.core.view.n.v(charSequence) || (charSequence instanceof PrecomputedTextCompat);
    }
}
