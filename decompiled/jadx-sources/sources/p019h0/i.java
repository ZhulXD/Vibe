package p019h0;

import com.google.android.material.datepicker.c;
import kotlin.UByte;
import p009d0.f;
import p063y0.j;
import p063y0.n;
import p065z0.d;
import p065z0.g;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final j f4373a = new j(1000);
    public final d b = g.a(10, new c(9));

    public final String a(f fVar) {
        String str;
        synchronized (this.f4373a) {
            str = (String) this.f4373a.a(fVar);
        }
        if (str == null) {
            h hVar = (h) this.b.acquire();
            try {
                fVar.b(hVar.b);
                byte[] bArrDigest = hVar.b.digest();
                char[] cArr = n.b;
                synchronized (cArr) {
                    for (int i3 = 0; i3 < bArrDigest.length; i3++) {
                        byte b = bArrDigest[i3];
                        int i4 = b & UByte.MAX_VALUE;
                        int i5 = i3 * 2;
                        char[] cArr2 = n.f6026a;
                        cArr[i5] = cArr2[i4 >>> 4];
                        cArr[i5 + 1] = cArr2[b & 15];
                    }
                    str = new String(cArr);
                }
                this.b.release(hVar);
            } catch (Throwable th) {
                this.b.release(hVar);
                throw th;
            }
        }
        synchronized (this.f4373a) {
            this.f4373a.d(fVar, str);
        }
        return str;
    }
}
