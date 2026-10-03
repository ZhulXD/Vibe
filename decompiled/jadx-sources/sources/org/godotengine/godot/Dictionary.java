package org.godotengine.godot;

import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class Dictionary extends HashMap<String, Object> {
    private String[] keys_cache;

    @Deprecated
    public String[] get_keys() {
        String[] strArr = new String[size()];
        Iterator<String> it = keySet().iterator();
        int i3 = 0;
        while (it.hasNext()) {
            strArr[i3] = it.next();
            i3++;
        }
        return strArr;
    }

    @Deprecated
    public Object[] get_values() {
        Object[] objArr = new Object[size()];
        Iterator<String> it = keySet().iterator();
        int i3 = 0;
        while (it.hasNext()) {
            objArr[i3] = get(it.next());
            i3++;
        }
        return objArr;
    }

    @Deprecated
    public void set_keys(String[] strArr) {
        this.keys_cache = strArr;
    }

    @Deprecated
    public void set_values(Object[] objArr) {
        int i3 = 0;
        for (String str : this.keys_cache) {
            put(str, objArr[i3]);
            i3++;
        }
        this.keys_cache = null;
    }
}
