package org.cocos2dx.lib;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.widget.FrameLayout;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class ResizeLayout extends FrameLayout {
    private boolean mEnableForceDoLayout;

    public ResizeLayout(Context context) {
        super(context);
        this.mEnableForceDoLayout = false;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i3, int i4, int i5, int i6) {
        super.onLayout(z2, i3, i4, i5, i6);
        if (this.mEnableForceDoLayout) {
            new Handler().postDelayed(new Runnable() { // from class: org.cocos2dx.lib.ResizeLayout.1
                @Override // java.lang.Runnable
                public void run() {
                    ResizeLayout.this.requestLayout();
                    ResizeLayout.this.invalidate();
                }
            }, 41L);
        }
    }

    public void setEnableForceDoLayout(boolean z2) {
        this.mEnableForceDoLayout = z2;
    }

    public ResizeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mEnableForceDoLayout = false;
    }
}
