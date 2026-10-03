package p025j0;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Map f4628c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f4629a = true;
    public Map b = f4628c;

    static {
        String property = System.getProperty("http.agent");
        if (!TextUtils.isEmpty(property)) {
            int length = property.length();
            StringBuilder sb = new StringBuilder(property.length());
            for (int i3 = 0; i3 < length; i3++) {
                char cCharAt = property.charAt(i3);
                if ((cCharAt > 31 || cCharAt == '\t') && cCharAt < 127) {
                    sb.append(cCharAt);
                } else {
                    sb.append('?');
                }
            }
            property = sb.toString();
        }
        HashMap map = new HashMap(2);
        if (!TextUtils.isEmpty(property)) {
            map.put("User-Agent", Collections.singletonList(new j(property)));
        }
        f4628c = Collections.unmodifiableMap(map);
    }

    public final void a() {
        j jVar = new j("h-game18.xyz");
        if (this.f4629a) {
            this.f4629a = false;
            HashMap map = new HashMap(this.b.size());
            for (Map.Entry entry : this.b.entrySet()) {
                map.put(entry.getKey(), new ArrayList((Collection) entry.getValue()));
            }
            this.b = map;
        }
        List arrayList = (List) this.b.get("Host");
        if (arrayList == null) {
            arrayList = new ArrayList();
            this.b.put("Host", arrayList);
        }
        arrayList.add(jVar);
    }
}
