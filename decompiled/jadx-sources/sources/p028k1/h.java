package p028k1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f4971a;

    static {
        int i3;
        String property = System.getProperty("java.version");
        try {
            String[] strArrSplit = property.split("[._]");
            i3 = Integer.parseInt(strArrSplit[0]);
            if (i3 == 1 && strArrSplit.length > 1) {
                i3 = Integer.parseInt(strArrSplit[1]);
            }
        } catch (NumberFormatException unused) {
            i3 = -1;
        }
        if (i3 == -1) {
            try {
                StringBuilder sb = new StringBuilder();
                for (int i4 = 0; i4 < property.length(); i4++) {
                    char cCharAt = property.charAt(i4);
                    if (!Character.isDigit(cCharAt)) {
                        break;
                    }
                    sb.append(cCharAt);
                }
                i3 = Integer.parseInt(sb.toString());
            } catch (NumberFormatException unused2) {
                i3 = -1;
            }
        }
        if (i3 == -1) {
            i3 = 6;
        }
        f4971a = i3;
    }
}
