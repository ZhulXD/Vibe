package p023i1;

import java.lang.reflect.Field;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final enum a extends h {
    public a() {
        super("IDENTITY", 0);
    }

    @Override // p023i1.h
    public final String b(Field field) {
        return field.getName();
    }
}
