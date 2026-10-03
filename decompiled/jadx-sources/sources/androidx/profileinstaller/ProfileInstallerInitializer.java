package androidx.profileinstaller;

import N.f;
import N.h;
import Q.b;
import Y0.e;
import android.content.Context;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class ProfileInstallerInitializer implements b {
    @Override // Q.b
    public final Object create(Context context) {
        h.a(new f(this, context.getApplicationContext()));
        return new e(11);
    }

    @Override // Q.b
    public final List dependencies() {
        return Collections.EMPTY_LIST;
    }
}
