package p025j0;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import java.io.InputStream;
import p009d0.i;
import p014f0.F;
import p033m0.C0354d;
import p044r0.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class z implements r, a {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Resources f4652c;

    public /* synthetic */ z(Resources resources, int i3) {
        this.b = i3;
        this.f4652c = resources;
    }

    @Override // p044r0.a
    public F a(F f, i iVar) {
        if (f == null) {
            return null;
        }
        return new C0354d(this.f4652c, f);
    }

    @Override // p025j0.r
    public q l(y yVar) {
        switch (this.b) {
            case 0:
                return new C0273b(this.f4652c, yVar.a(Uri.class, AssetFileDescriptor.class));
            case 1:
                return new C0273b(this.f4652c, yVar.a(Uri.class, InputStream.class));
            default:
                return new C0273b(this.f4652c, C.b);
        }
    }
}
