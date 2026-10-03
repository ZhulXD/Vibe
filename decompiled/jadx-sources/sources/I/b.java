package I;

import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class b extends InputStream implements DataInput {
    public static final ByteOrder f = ByteOrder.LITTLE_ENDIAN;
    public static final ByteOrder g = ByteOrder.BIG_ENDIAN;
    public final DataInputStream b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ByteOrder f1099c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1100d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte[] f1101e;

    public b(byte[] bArr) {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
        this(byteArrayInputStream, 0);
    }

    public final void a(int i3) throws IOException {
        int i4 = 0;
        while (i4 < i3) {
            int i5 = i3 - i4;
            DataInputStream dataInputStream = this.b;
            int iSkip = (int) dataInputStream.skip(i5);
            if (iSkip <= 0) {
                if (this.f1101e == null) {
                    this.f1101e = new byte[8192];
                }
                iSkip = dataInputStream.read(this.f1101e, 0, Math.min(8192, i5));
                if (iSkip == -1) {
                    throw new EOFException(E.b.j(i3, "Reached EOF while skipping ", " bytes."));
                }
            }
            i4 += iSkip;
        }
        this.f1100d += i4;
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.b.available();
    }

    @Override // java.io.InputStream
    public final void mark(int i3) {
        throw new UnsupportedOperationException("Mark is currently unsupported");
    }

    @Override // java.io.InputStream
    public final int read() {
        this.f1100d++;
        return this.b.read();
    }

    @Override // java.io.DataInput
    public final boolean readBoolean() {
        this.f1100d++;
        return this.b.readBoolean();
    }

    @Override // java.io.DataInput
    public final byte readByte() throws IOException {
        this.f1100d++;
        int i3 = this.b.read();
        if (i3 >= 0) {
            return (byte) i3;
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public final char readChar() {
        this.f1100d += 2;
        return this.b.readChar();
    }

    @Override // java.io.DataInput
    public final double readDouble() {
        return Double.longBitsToDouble(readLong());
    }

    @Override // java.io.DataInput
    public final float readFloat() {
        return Float.intBitsToFloat(readInt());
    }

    @Override // java.io.DataInput
    public final void readFully(byte[] bArr, int i3, int i4) throws IOException {
        this.f1100d += i4;
        this.b.readFully(bArr, i3, i4);
    }

    @Override // java.io.DataInput
    public final int readInt() throws IOException {
        this.f1100d += 4;
        DataInputStream dataInputStream = this.b;
        int i3 = dataInputStream.read();
        int i4 = dataInputStream.read();
        int i5 = dataInputStream.read();
        int i6 = dataInputStream.read();
        if ((i3 | i4 | i5 | i6) < 0) {
            throw new EOFException();
        }
        ByteOrder byteOrder = this.f1099c;
        if (byteOrder == f) {
            return (i6 << 24) + (i5 << 16) + (i4 << 8) + i3;
        }
        if (byteOrder == g) {
            return (i3 << 24) + (i4 << 16) + (i5 << 8) + i6;
        }
        throw new IOException("Invalid byte order: " + this.f1099c);
    }

    @Override // java.io.DataInput
    public final String readLine() {
        Log.d("ExifInterface", "Currently unsupported");
        return null;
    }

    @Override // java.io.DataInput
    public final long readLong() throws IOException {
        long j2;
        long j3;
        this.f1100d += 8;
        DataInputStream dataInputStream = this.b;
        int i3 = dataInputStream.read();
        int i4 = dataInputStream.read();
        int i5 = dataInputStream.read();
        int i6 = dataInputStream.read();
        int i7 = dataInputStream.read();
        int i8 = dataInputStream.read();
        int i9 = dataInputStream.read();
        int i10 = dataInputStream.read();
        if ((i3 | i4 | i5 | i6 | i7 | i8 | i9 | i10) < 0) {
            throw new EOFException();
        }
        ByteOrder byteOrder = this.f1099c;
        if (byteOrder == f) {
            j2 = (((long) i10) << 56) + (((long) i9) << 48) + (((long) i8) << 40) + (((long) i7) << 32) + (((long) i6) << 24) + (((long) i5) << 16) + (((long) i4) << 8);
            j3 = i3;
        } else {
            if (byteOrder != g) {
                throw new IOException("Invalid byte order: " + this.f1099c);
            }
            j2 = (((long) i3) << 56) + (((long) i4) << 48) + (((long) i5) << 40) + (((long) i6) << 32) + (((long) i7) << 24) + (((long) i8) << 16) + (((long) i9) << 8);
            j3 = i10;
        }
        return j2 + j3;
    }

    @Override // java.io.DataInput
    public final short readShort() throws IOException {
        this.f1100d += 2;
        DataInputStream dataInputStream = this.b;
        int i3 = dataInputStream.read();
        int i4 = dataInputStream.read();
        if ((i3 | i4) < 0) {
            throw new EOFException();
        }
        ByteOrder byteOrder = this.f1099c;
        if (byteOrder == f) {
            return (short) ((i4 << 8) + i3);
        }
        if (byteOrder == g) {
            return (short) ((i3 << 8) + i4);
        }
        throw new IOException("Invalid byte order: " + this.f1099c);
    }

    @Override // java.io.DataInput
    public final String readUTF() {
        this.f1100d += 2;
        return this.b.readUTF();
    }

    @Override // java.io.DataInput
    public final int readUnsignedByte() {
        this.f1100d++;
        return this.b.readUnsignedByte();
    }

    @Override // java.io.DataInput
    public final int readUnsignedShort() throws IOException {
        this.f1100d += 2;
        DataInputStream dataInputStream = this.b;
        int i3 = dataInputStream.read();
        int i4 = dataInputStream.read();
        if ((i3 | i4) < 0) {
            throw new EOFException();
        }
        ByteOrder byteOrder = this.f1099c;
        if (byteOrder == f) {
            return (i4 << 8) + i3;
        }
        if (byteOrder == g) {
            return (i3 << 8) + i4;
        }
        throw new IOException("Invalid byte order: " + this.f1099c);
    }

    @Override // java.io.InputStream
    public final void reset() {
        throw new UnsupportedOperationException("Reset is currently unsupported");
    }

    @Override // java.io.DataInput
    public final int skipBytes(int i3) {
        throw new UnsupportedOperationException("skipBytes is currently unsupported");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public b(InputStream inputStream) {
        this(inputStream, 0);
        ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
    }

    public b(InputStream inputStream, int i3) {
        ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
        this.f1099c = byteOrder;
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        this.b = dataInputStream;
        dataInputStream.mark(0);
        this.f1100d = 0;
        this.f1099c = byteOrder;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i3, int i4) throws IOException {
        int i5 = this.b.read(bArr, i3, i4);
        this.f1100d += i5;
        return i5;
    }

    @Override // java.io.DataInput
    public final void readFully(byte[] bArr) throws IOException {
        this.f1100d += bArr.length;
        this.b.readFully(bArr);
    }
}
