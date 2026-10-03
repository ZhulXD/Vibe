package p009d0;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c extends IOException {
    public c(String str, int i3, IOException iOException) {
        super(str + ", status code: " + i3, iOException);
    }
}
