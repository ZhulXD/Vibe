package p009d0;

import android.text.TextUtils;
import com.google.android.material.datepicker.c;
import kotlin.collections.unsigned.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final c f3869e = new c(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f3870a;
    public final g b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f3871c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile byte[] f3872d;

    public h(String str, Object obj, g gVar) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Must not be null or empty");
        }
        this.f3871c = str;
        this.f3870a = obj;
        this.b = gVar;
    }

    public static h a(Object obj, String str) {
        return new h(str, obj, f3869e);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof h) {
            return this.f3871c.equals(((h) obj).f3871c);
        }
        return false;
    }

    public final int hashCode() {
        return this.f3871c.hashCode();
    }

    public final String toString() {
        return a.i(new StringBuilder("Option{key='"), this.f3871c, "'}");
    }
}
