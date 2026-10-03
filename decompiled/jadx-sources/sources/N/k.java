package N;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1404a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f1405c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f1406d;

    public k(int i3, int i4, long j2, long j3) {
        this.f1404a = i3;
        this.b = i4;
        this.f1405c = j2;
        this.f1406d = j3;
    }

    public static k a(File file) throws IOException {
        DataInputStream dataInputStream = new DataInputStream(new FileInputStream(file));
        try {
            k kVar = new k(dataInputStream.readInt(), dataInputStream.readInt(), dataInputStream.readLong(), dataInputStream.readLong());
            dataInputStream.close();
            return kVar;
        } catch (Throwable th) {
            try {
                dataInputStream.close();
                throw th;
            } catch (Throwable th2) {
                th.addSuppressed(th2);
                throw th;
            }
        }
    }

    public final void b(File file) throws IOException {
        file.delete();
        DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(file));
        try {
            dataOutputStream.writeInt(this.f1404a);
            dataOutputStream.writeInt(this.b);
            dataOutputStream.writeLong(this.f1405c);
            dataOutputStream.writeLong(this.f1406d);
            dataOutputStream.close();
        } catch (Throwable th) {
            try {
                dataOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof k)) {
            k kVar = (k) obj;
            if (this.b == kVar.b && this.f1405c == kVar.f1405c && this.f1404a == kVar.f1404a && this.f1406d == kVar.f1406d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.b), Long.valueOf(this.f1405c), Integer.valueOf(this.f1404a), Long.valueOf(this.f1406d));
    }
}
