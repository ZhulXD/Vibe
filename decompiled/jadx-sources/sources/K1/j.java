package K1;

import kotlin.text.Regex;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Regex f1245a = new Regex("[A-Za-z0-9][A-Za-z0-9._-]{0,127}");

    static {
        new Regex("[0-9]+(?:\\.[0-9]+){0,3}(?:[-+][A-Za-z0-9.-]+)?");
    }
}
