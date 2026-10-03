package p033m0;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
import kotlin.UByte;
import p009d0.g;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class j implements l, g, com.bumptech.glide.load.data.g {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ByteBuffer f5124c;

    public j(int i3) {
        this.b = i3;
        switch (i3) {
            case 2:
                this.f5124c = ByteBuffer.allocate(4);
                break;
            default:
                this.f5124c = ByteBuffer.allocate(8);
                break;
        }
    }

    @Override // com.bumptech.glide.load.data.g
    public Object a() {
        ByteBuffer byteBuffer = this.f5124c;
        byteBuffer.position(0);
        return byteBuffer;
    }

    @Override // p009d0.g
    public void c(byte[] bArr, Object obj, MessageDigest messageDigest) {
        switch (this.b) {
            case 1:
                Long l2 = (Long) obj;
                messageDigest.update(bArr);
                synchronized (this.f5124c) {
                    this.f5124c.position(0);
                    messageDigest.update(this.f5124c.putLong(l2.longValue()).array());
                    break;
                }
                return;
            default:
                Integer num = (Integer) obj;
                if (num == null) {
                    return;
                }
                messageDigest.update(bArr);
                synchronized (this.f5124c) {
                    this.f5124c.position(0);
                    messageDigest.update(this.f5124c.putInt(num.intValue()).array());
                    break;
                }
                return;
        }
    }

    @Override // p033m0.l
    public int e(byte[] bArr, int i3) {
        ByteBuffer byteBuffer = this.f5124c;
        int iMin = Math.min(i3, byteBuffer.remaining());
        if (iMin == 0) {
            return -1;
        }
        byteBuffer.get(bArr, 0, iMin);
        return iMin;
    }

    @Override // p033m0.l
    public short f() throws k {
        ByteBuffer byteBuffer = this.f5124c;
        if (byteBuffer.remaining() >= 1) {
            return (short) (byteBuffer.get() & UByte.MAX_VALUE);
        }
        throw new k();
    }

    @Override // p033m0.l
    public int g() {
        return (f() << 8) | f();
    }

    @Override // p033m0.l
    public long skip(long j2) {
        ByteBuffer byteBuffer = this.f5124c;
        int iMin = (int) Math.min(byteBuffer.remaining(), j2);
        byteBuffer.position(byteBuffer.position() + iMin);
        return iMin;
    }

    public j(ByteBuffer byteBuffer, int i3) {
        this.b = i3;
        switch (i3) {
            case 3:
                this.f5124c = byteBuffer;
                break;
            default:
                this.f5124c = byteBuffer;
                byteBuffer.order(ByteOrder.BIG_ENDIAN);
                break;
        }
    }

    @Override // com.bumptech.glide.load.data.g
    public void b() {
    }
}
