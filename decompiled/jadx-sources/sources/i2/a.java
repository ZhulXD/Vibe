package i2;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public StringBuffer f4457a;
    public long b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte f4458c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public StringBuffer f4459d;

    public static StringBuffer a(int i3, int i4, byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer(i4);
        int i5 = i4 + i3;
        while (i3 < i5) {
            byte b = bArr[i3];
            if (b == 0) {
                break;
            }
            stringBuffer.append((char) b);
            i3++;
        }
        return stringBuffer;
    }
}
