package p025j0;

import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Base64;
import android.util.Log;
import androidx.core.view.MotionEventCompat;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import p009d0.b;
import p009d0.i;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class B implements r, b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final B f4610c = new B(0);
    public final /* synthetic */ int b;

    public /* synthetic */ B(int i3) {
        this.b = i3;
    }

    public static ByteArrayInputStream a(String str) {
        if (!str.startsWith("data:image")) {
            throw new IllegalArgumentException("Not a valid image data URL.");
        }
        int iIndexOf = str.indexOf(44);
        if (iIndexOf == -1) {
            throw new IllegalArgumentException("Missing comma in data URL.");
        }
        if (str.substring(0, iIndexOf).endsWith(";base64")) {
            return new ByteArrayInputStream(Base64.decode(str.substring(iIndexOf + 1), 0));
        }
        throw new IllegalArgumentException("Not a base64 image data URL.");
    }

    public Class b() {
        switch (this.b) {
            case 1:
                return ByteBuffer.class;
            case 3:
                return InputStream.class;
            case 8:
                return ParcelFileDescriptor.class;
            default:
                return InputStream.class;
        }
    }

    @Override // p025j0.r
    public q l(y yVar) {
        switch (this.b) {
            case 0:
                return C.b;
            case 1:
            case 3:
            case 5:
            case 7:
            case 8:
            case 9:
            default:
                return new F(yVar.a(g.class, InputStream.class));
            case 2:
                return new C0274c(0, new B(1));
            case 4:
                return new C0274c(0, new B(3));
            case 6:
                return new C(1);
            case 10:
                return new A(yVar.a(Uri.class, AssetFileDescriptor.class), 0);
            case MotionEventCompat.AXIS_Z /* 11 */:
                return new A(yVar.a(Uri.class, ParcelFileDescriptor.class), 0);
            case 12:
                return new A(yVar.a(Uri.class, InputStream.class), 0);
        }
    }

    @Override // p009d0.b
    public boolean p(Object obj, File file, i iVar) throws Throwable {
        try {
            p063y0.b.d((ByteBuffer) obj, file);
            return true;
        } catch (IOException e2) {
            if (!Log.isLoggable("ByteBufferEncoder", 3)) {
                return false;
            }
            Log.d("ByteBufferEncoder", "Failed to write data", e2);
            return false;
        }
    }
}
