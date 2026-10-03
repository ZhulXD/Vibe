package p033m0;

import F.b;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import java.nio.ByteBuffer;
import p009d0.i;
import p009d0.k;
import p014f0.F;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class f implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5122a;
    public final q b;

    public /* synthetic */ f(q qVar, int i3) {
        this.f5122a = i3;
        this.b = qVar;
    }

    @Override // p009d0.k
    public final boolean a(Object obj, i iVar) {
        switch (this.f5122a) {
            case 0:
                this.b.getClass();
                return true;
            default:
                ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) obj;
                String str = Build.MANUFACTURER;
                return (!("HUAWEI".equalsIgnoreCase(str) || "HONOR".equalsIgnoreCase(str)) || parcelFileDescriptor.getStatSize() <= 536870912) && !"robolectric".equals(Build.FINGERPRINT);
        }
    }

    @Override // p009d0.k
    public final F b(Object obj, int i3, int i4, i iVar) {
        switch (this.f5122a) {
            case 0:
                q qVar = this.b;
                return qVar.a(new b((ByteBuffer) obj, qVar.f5137d, qVar.f5136c, 10), i3, i4, iVar, q.f5133j);
            default:
                q qVar2 = this.b;
                return qVar2.a(new b((ParcelFileDescriptor) obj, qVar2.f5137d, qVar2.f5136c), i3, i4, iVar, q.f5133j);
        }
    }
}
