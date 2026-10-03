package p059x;

import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import androidx.constraintlayout.widget.ConstraintLayout;
import p053v.g;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class r extends c {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f5992h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f5993i;

    @Override // p059x.c
    public void e(AttributeSet attributeSet) {
        super.e(attributeSet);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, q.b);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i3 = 0; i3 < indexCount; i3++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i3);
                if (index == 6) {
                    this.f5992h = true;
                } else if (index == 13) {
                    this.f5993i = true;
                }
            }
        }
    }

    public abstract void h(g gVar, int i3, int i4);

    @Override // p059x.c, android.view.View
    public final void onAttachedToWindow() {
        ViewParent parent;
        super.onAttachedToWindow();
        if ((this.f5992h || this.f5993i) && (parent = getParent()) != null && (parent instanceof ConstraintLayout)) {
            ConstraintLayout constraintLayout = (ConstraintLayout) parent;
            int visibility = getVisibility();
            float elevation = getElevation();
            for (int i3 = 0; i3 < this.f5834c; i3++) {
                View view = (View) constraintLayout.b.get(this.b[i3]);
                if (view != null) {
                    if (this.f5992h) {
                        view.setVisibility(visibility);
                    }
                    if (this.f5993i && elevation > 0.0f) {
                        view.setTranslationZ(view.getTranslationZ() + elevation);
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        c();
    }

    @Override // android.view.View
    public void setVisibility(int i3) {
        super.setVisibility(i3);
        c();
    }
}
