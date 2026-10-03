package p003b0;

import java.io.File;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3080a;
    public final long[] b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final File[] f3081c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final File[] f3082d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f3083e;
    public c f;
    public final /* synthetic */ e g;

    public d(e eVar, String str) {
        this.g = eVar;
        this.f3080a = str;
        int i3 = eVar.f3087h;
        File file = eVar.b;
        this.b = new long[i3];
        this.f3081c = new File[i3];
        this.f3082d = new File[i3];
        StringBuilder sb = new StringBuilder(str);
        sb.append('.');
        int length = sb.length();
        for (int i4 = 0; i4 < i3; i4++) {
            sb.append(i4);
            this.f3081c[i4] = new File(file, sb.toString());
            sb.append(".tmp");
            this.f3082d[i4] = new File(file, sb.toString());
            sb.setLength(length);
        }
    }

    public final String a() {
        StringBuilder sb = new StringBuilder();
        for (long j2 : this.b) {
            sb.append(' ');
            sb.append(j2);
        }
        return sb.toString();
    }
}
