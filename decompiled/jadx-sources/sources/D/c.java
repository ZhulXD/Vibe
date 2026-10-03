package D;

import android.graphics.Rect;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c implements Comparator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Rect f734a = new Rect();
    public final Rect b = new Rect();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f735c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Y0.e f736d;

    public c(boolean z2, Y0.e eVar) {
        this.f735c = z2;
        this.f736d = eVar;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        this.f736d.getClass();
        Rect rect = this.f734a;
        ((AccessibilityNodeInfoCompat) obj).getBoundsInParent(rect);
        Rect rect2 = this.b;
        ((AccessibilityNodeInfoCompat) obj2).getBoundsInParent(rect2);
        int i3 = rect.top;
        int i4 = rect2.top;
        if (i3 < i4) {
            return -1;
        }
        if (i3 > i4) {
            return 1;
        }
        int i5 = rect.left;
        int i6 = rect2.left;
        boolean z2 = this.f735c;
        if (i5 < i6) {
            return z2 ? 1 : -1;
        }
        if (i5 > i6) {
            return z2 ? -1 : 1;
        }
        int i7 = rect.bottom;
        int i8 = rect2.bottom;
        if (i7 < i8) {
            return -1;
        }
        if (i7 > i8) {
            return 1;
        }
        int i9 = rect.right;
        int i10 = rect2.right;
        if (i9 < i10) {
            return z2 ? 1 : -1;
        }
        if (i9 > i10) {
            return z2 ? -1 : 1;
        }
        return 0;
    }
}
