package p042q0;

import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import p000a.a;
import p009d0.i;
import p009d0.k;
import p014f0.F;
import p016g0.g;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class h implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f5290a;
    public final a b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final g f5291c;

    public h(ArrayList arrayList, a aVar, g gVar) {
        this.f5290a = arrayList;
        this.b = aVar;
        this.f5291c = gVar;
    }

    @Override // p009d0.k
    public final boolean a(Object obj, i iVar) {
        return !((Boolean) iVar.c(g.b)).booleanValue() && a.m(this.f5290a, (InputStream) obj, this.f5291c) == ImageHeaderParser$ImageType.GIF;
    }

    @Override // p009d0.k
    public final F b(Object obj, int i3, int i4, i iVar) {
        byte[] byteArray;
        InputStream inputStream = (InputStream) obj;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        try {
            byte[] bArr = new byte[16384];
            while (true) {
                int i5 = inputStream.read(bArr);
                if (i5 == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, i5);
            }
            byteArrayOutputStream.flush();
            byteArray = byteArrayOutputStream.toByteArray();
        } catch (IOException e2) {
            if (Log.isLoggable("StreamGifDecoder", 5)) {
                Log.w("StreamGifDecoder", "Error reading data from stream", e2);
            }
            byteArray = null;
        }
        if (byteArray == null) {
            return null;
        }
        return this.b.b(ByteBuffer.wrap(byteArray), i3, i4, iVar);
    }
}
