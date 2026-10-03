package p025j0;

import android.net.Uri;
import android.text.TextUtils;
import java.net.URL;
import java.security.MessageDigest;
import p009d0.f;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class g implements f {
    public final h b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final URL f4623c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f4624d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f4625e;
    public URL f;
    public volatile byte[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f4626h;

    public g(URL url) {
        k kVar = h.f4627a;
        p063y0.f.c(url, "Argument must not be null");
        this.f4623c = url;
        this.f4624d = null;
        p063y0.f.c(kVar, "Argument must not be null");
        this.b = kVar;
    }

    @Override // p009d0.f
    public final void b(MessageDigest messageDigest) {
        if (this.g == null) {
            this.g = c().getBytes(f.f3868a);
        }
        messageDigest.update(this.g);
    }

    public final String c() {
        String str = this.f4624d;
        if (str != null) {
            return str;
        }
        URL url = this.f4623c;
        p063y0.f.c(url, "Argument must not be null");
        return url.toString();
    }

    public final URL d() {
        if (this.f == null) {
            if (TextUtils.isEmpty(this.f4625e)) {
                String string = this.f4624d;
                if (TextUtils.isEmpty(string)) {
                    URL url = this.f4623c;
                    p063y0.f.c(url, "Argument must not be null");
                    string = url.toString();
                }
                this.f4625e = Uri.encode(string, "@#&=*+-_.,:!?()/~'%;$");
            }
            this.f = new URL(this.f4625e);
        }
        return this.f;
    }

    @Override // p009d0.f
    public final boolean equals(Object obj) {
        if (obj instanceof g) {
            g gVar = (g) obj;
            if (c().equals(gVar.c()) && this.b.equals(gVar.b)) {
                return true;
            }
        }
        return false;
    }

    @Override // p009d0.f
    public final int hashCode() {
        if (this.f4626h == 0) {
            int iHashCode = c().hashCode();
            this.f4626h = iHashCode;
            this.f4626h = this.b.hashCode() + (iHashCode * 31);
        }
        return this.f4626h;
    }

    public final String toString() {
        return c();
    }

    public g(String str, h hVar) {
        this.f4623c = null;
        if (!TextUtils.isEmpty(str)) {
            this.f4624d = str;
            p063y0.f.c(hVar, "Argument must not be null");
            this.b = hVar;
            return;
        }
        throw new IllegalArgumentException("Must not be null or empty");
    }
}
