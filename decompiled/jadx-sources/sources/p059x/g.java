package p059x;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.Log;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f5900a;
    public final float b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f5901c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f5902d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f5903e;

    public g(Context context, XmlResourceParser xmlResourceParser) {
        this.f5900a = Float.NaN;
        this.b = Float.NaN;
        this.f5901c = Float.NaN;
        this.f5902d = Float.NaN;
        this.f5903e = -1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), q.f5991i);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i3 = 0; i3 < indexCount; i3++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i3);
            if (index == 0) {
                int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.f5903e);
                this.f5903e = resourceId;
                String resourceTypeName = context.getResources().getResourceTypeName(resourceId);
                context.getResources().getResourceName(resourceId);
                if ("layout".equals(resourceTypeName)) {
                    new m().b((ConstraintLayout) LayoutInflater.from(context).inflate(resourceId, (ViewGroup) null));
                }
            } else if (index == 1) {
                this.f5902d = typedArrayObtainStyledAttributes.getDimension(index, this.f5902d);
            } else if (index == 2) {
                this.b = typedArrayObtainStyledAttributes.getDimension(index, this.b);
            } else if (index == 3) {
                this.f5901c = typedArrayObtainStyledAttributes.getDimension(index, this.f5901c);
            } else if (index == 4) {
                this.f5900a = typedArrayObtainStyledAttributes.getDimension(index, this.f5900a);
            } else {
                Log.v("ConstraintLayoutStates", "Unknown tag");
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
