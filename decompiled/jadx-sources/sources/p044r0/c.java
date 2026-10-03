package p044r0;

import C0.b;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicReference;
import p009d0.i;
import p014f0.F;
import p033m0.A;
import p042q0.f;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c implements a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final c f5296c = new c(0);
    public final /* synthetic */ int b;

    public /* synthetic */ c(int i3) {
        this.b = i3;
    }

    @Override // p044r0.a
    public final F a(F f, i iVar) {
        b bVar;
        byte[] bArrArray;
        switch (this.b) {
            case 0:
                return f;
            default:
                ByteBuffer byteBufferAsReadOnlyBuffer = ((f) ((p042q0.b) f.get()).b.b).f5276a.f3129d.asReadOnlyBuffer();
                AtomicReference atomicReference = p063y0.b.f6013a;
                if (byteBufferAsReadOnlyBuffer.isReadOnly() || !byteBufferAsReadOnlyBuffer.hasArray()) {
                    bVar = null;
                } else {
                    bVar = new b(byteBufferAsReadOnlyBuffer.arrayOffset(), byteBufferAsReadOnlyBuffer.limit(), byteBufferAsReadOnlyBuffer.array());
                }
                if (bVar != null && bVar.f384a == 0 && bVar.b == ((byte[]) bVar.f385c).length) {
                    bArrArray = byteBufferAsReadOnlyBuffer.array();
                } else {
                    ByteBuffer byteBufferAsReadOnlyBuffer2 = byteBufferAsReadOnlyBuffer.asReadOnlyBuffer();
                    byte[] bArr = new byte[byteBufferAsReadOnlyBuffer2.limit()];
                    byteBufferAsReadOnlyBuffer2.get(bArr);
                    bArrArray = bArr;
                }
                return new A(bArrArray);
        }
    }
}
