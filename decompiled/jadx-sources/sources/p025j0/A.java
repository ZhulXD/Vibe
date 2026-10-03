package p025j0;

import android.net.Uri;
import android.text.TextUtils;
import java.io.File;
import java.net.URL;
import p009d0.i;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class A implements q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4609a;
    public final q b;

    public /* synthetic */ A(q qVar, int i3) {
        this.f4609a = i3;
        this.b = qVar;
    }

    @Override // p025j0.q
    public final p a(Object obj, int i3, int i4, i iVar) {
        Uri uriFromFile;
        switch (this.f4609a) {
            case 0:
                String str = (String) obj;
                if (TextUtils.isEmpty(str)) {
                    uriFromFile = null;
                } else if (str.charAt(0) == '/') {
                    uriFromFile = Uri.fromFile(new File(str));
                } else {
                    Uri uri = Uri.parse(str);
                    uriFromFile = uri.getScheme() == null ? Uri.fromFile(new File(str)) : uri;
                }
                if (uriFromFile == null) {
                    return null;
                }
                q qVar = this.b;
                if (qVar.b(uriFromFile)) {
                    return qVar.a(uriFromFile, i3, i4, iVar);
                }
                return null;
            default:
                return this.b.a(new g((URL) obj), i3, i4, iVar);
        }
    }

    @Override // p025j0.q
    public final /* bridge */ /* synthetic */ boolean b(Object obj) {
        switch (this.f4609a) {
            case 0:
                break;
            default:
                break;
        }
        return true;
    }
}
