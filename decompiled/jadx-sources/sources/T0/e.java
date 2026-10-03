package T0;

import android.content.Context;
import android.view.SubMenu;
import p024j.p;
import p024j.s;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class e extends p {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public final int f2167A;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final Class f2168z;

    public e(Context context, Class cls, int i3) {
        super(context);
        this.f2168z = cls;
        this.f2167A = i3;
    }

    @Override // p024j.p
    public final s a(int i3, int i4, int i5, CharSequence charSequence) {
        int size = this.f.size() + 1;
        int i6 = this.f2167A;
        if (size <= i6) {
            w();
            s sVarA = super.a(i3, i4, i5, charSequence);
            sVarA.d(true);
            v();
            return sVarA;
        }
        String simpleName = this.f2168z.getSimpleName();
        StringBuilder sb = new StringBuilder("Maximum number of items supported by ");
        sb.append(simpleName);
        sb.append(" is ");
        sb.append(i6);
        sb.append(". Limit can be checked with ");
        throw new IllegalArgumentException(kotlin.collections.unsigned.a.i(sb, simpleName, "#getMaxItemCount()"));
    }

    @Override // p024j.p, android.view.Menu
    public final SubMenu addSubMenu(int i3, int i4, int i5, CharSequence charSequence) {
        throw new UnsupportedOperationException(this.f2168z.getSimpleName().concat(" does not support submenus"));
    }
}
