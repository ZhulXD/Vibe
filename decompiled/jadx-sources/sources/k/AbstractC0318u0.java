package k;

import android.widget.AbsListView;
import java.lang.reflect.Field;

/* JADX INFO: renamed from: k.u0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0318u0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Field f4920a;

    static {
        Field declaredField = null;
        try {
            declaredField = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            declaredField.setAccessible(true);
        } catch (NoSuchFieldException e2) {
            e2.printStackTrace();
        }
        f4920a = declaredField;
    }
}
