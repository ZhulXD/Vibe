package p054v0;

import android.content.Context;
import android.graphics.Point;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import java.util.ArrayList;
import p063y0.f;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static Integer f5572d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f5573a;
    public final ArrayList b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public b f5574c;

    public g(ImageView imageView) {
        this.f5573a = imageView;
    }

    public final int a(int i3, int i4, int i5) {
        int i6 = i4 - i5;
        if (i6 > 0) {
            return i6;
        }
        int i7 = i3 - i5;
        if (i7 > 0) {
            return i7;
        }
        View view = this.f5573a;
        if (view.isLayoutRequested() || i4 != -2) {
            return 0;
        }
        if (Log.isLoggable("ViewTarget", 4)) {
            Log.i("ViewTarget", "Glide treats LayoutParams.WRAP_CONTENT as a request for an image the size of this device's screen dimensions. If you want to load the original image and are ok with the corresponding memory cost and OOMs (depending on the input size), use override(Target.SIZE_ORIGINAL). Otherwise, use LayoutParams.MATCH_PARENT, set layout_width and layout_height to fixed dimension, or use .override() with fixed dimensions.");
        }
        Context context = view.getContext();
        if (f5572d == null) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            f.c(windowManager, "Argument must not be null");
            Display defaultDisplay = windowManager.getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getSize(point);
            f5572d = Integer.valueOf(Math.max(point.x, point.y));
        }
        return f5572d.intValue();
    }
}
