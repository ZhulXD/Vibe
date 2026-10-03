package p023i1;

import p028k1.i;
import p1.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final enum u extends x {
    public u() {
        super("LAZILY_PARSED_NUMBER", 1);
    }

    @Override // p023i1.x
    public final Number a(a aVar) {
        return new i(aVar.t());
    }
}
