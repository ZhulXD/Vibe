package androidx.emoji2.text;

import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class v {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final ThreadLocal f2898d = new ThreadLocal();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2899a;
    public final N1.w b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile int f2900c = 0;

    public v(N1.w wVar, int i3) {
        this.b = wVar;
        this.f2899a = i3;
    }

    public final int a(int i3) {
        G.a aVarB = b();
        int iA = aVarB.a(16);
        if (iA == 0) {
            return 0;
        }
        ByteBuffer byteBuffer = aVarB.b;
        int i4 = iA + aVarB.f984a;
        return byteBuffer.getInt((i3 * 4) + byteBuffer.getInt(i4) + i4 + 4);
    }

    public final G.a b() {
        ThreadLocal threadLocal = f2898d;
        G.a aVar = (G.a) threadLocal.get();
        if (aVar == null) {
            aVar = new G.a();
            threadLocal.set(aVar);
        }
        G.b bVar = (G.b) this.b.f1493a;
        int iA = bVar.a(6);
        if (iA != 0) {
            int i3 = iA + bVar.f984a;
            int i4 = (this.f2899a * 4) + bVar.b.getInt(i3) + i3 + 4;
            int i5 = bVar.b.getInt(i4) + i4;
            ByteBuffer byteBuffer = bVar.b;
            aVar.b = byteBuffer;
            if (byteBuffer != null) {
                aVar.f984a = i5;
                int i6 = i5 - byteBuffer.getInt(i5);
                aVar.f985c = i6;
                aVar.f986d = aVar.b.getShort(i6);
                return aVar;
            }
            aVar.f984a = 0;
            aVar.f985c = 0;
            aVar.f986d = 0;
        }
        return aVar;
    }

    public final String toString() {
        int i3;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(", id:");
        G.a aVarB = b();
        int iA = aVarB.a(4);
        sb.append(Integer.toHexString(iA != 0 ? aVarB.b.getInt(iA + aVarB.f984a) : 0));
        sb.append(", codepoints:");
        G.a aVarB2 = b();
        int iA2 = aVarB2.a(16);
        if (iA2 != 0) {
            int i4 = iA2 + aVarB2.f984a;
            i3 = aVarB2.b.getInt(aVarB2.b.getInt(i4) + i4);
        } else {
            i3 = 0;
        }
        for (int i5 = 0; i5 < i3; i5++) {
            sb.append(Integer.toHexString(a(i5)));
            sb.append(" ");
        }
        return sb.toString();
    }
}
