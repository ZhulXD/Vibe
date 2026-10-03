package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.minhub.gamehub.R;
import p008d.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class ButtonBarLayout extends LinearLayout {
    public boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2705c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2706d;

    public ButtonBarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2706d = -1;
        int[] iArr = a.f3848k;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        ViewCompat.saveAttributeDataForStyleable(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, 0, 0);
        this.b = typedArrayObtainStyledAttributes.getBoolean(0, true);
        typedArrayObtainStyledAttributes.recycle();
        if (getOrientation() == 1) {
            setStacked(this.b);
        }
    }

    private void setStacked(boolean z2) {
        if (this.f2705c != z2) {
            if (!z2 || this.b) {
                this.f2705c = z2;
                setOrientation(z2 ? 1 : 0);
                setGravity(z2 ? GravityCompat.END : 80);
                View viewFindViewById = findViewById(R.id.spacer);
                if (viewFindViewById != null) {
                    viewFindViewById.setVisibility(z2 ? 8 : 4);
                }
                for (int childCount = getChildCount() - 2; childCount >= 0; childCount--) {
                    bringChildToFront(getChildAt(childCount));
                }
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i3, int i4) {
        int iMakeMeasureSpec;
        boolean z2;
        int i5;
        int size = View.MeasureSpec.getSize(i3);
        int paddingBottom = 0;
        if (this.b) {
            if (size > this.f2706d && this.f2705c) {
                setStacked(false);
            }
            this.f2706d = size;
        }
        if (this.f2705c || View.MeasureSpec.getMode(i3) != 1073741824) {
            iMakeMeasureSpec = i3;
            z2 = false;
        } else {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE);
            z2 = true;
        }
        super.onMeasure(iMakeMeasureSpec, i4);
        if (this.b && !this.f2705c && (getMeasuredWidthAndState() & ViewCompat.MEASURED_STATE_MASK) == 16777216) {
            setStacked(true);
            z2 = true;
        }
        if (z2) {
            super.onMeasure(i3, i4);
        }
        int childCount = getChildCount();
        int i6 = 0;
        while (true) {
            i5 = -1;
            if (i6 >= childCount) {
                i6 = -1;
                break;
            } else if (getChildAt(i6).getVisibility() == 0) {
                break;
            } else {
                i6++;
            }
        }
        if (i6 >= 0) {
            View childAt = getChildAt(i6);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight() + getPaddingTop() + layoutParams.topMargin + layoutParams.bottomMargin;
            if (this.f2705c) {
                int childCount2 = getChildCount();
                for (int i7 = i6 + 1; i7 < childCount2; i7++) {
                    if (getChildAt(i7).getVisibility() == 0) {
                        i5 = i7;
                        break;
                    }
                }
                paddingBottom = i5 >= 0 ? getChildAt(i5).getPaddingTop() + ((int) (getResources().getDisplayMetrics().density * 16.0f)) + measuredHeight : measuredHeight;
            } else {
                paddingBottom = getPaddingBottom() + measuredHeight;
            }
        }
        if (ViewCompat.getMinimumHeight(this) != paddingBottom) {
            setMinimumHeight(paddingBottom);
            if (i4 == 0) {
                super.onMeasure(i3, i4);
            }
        }
    }

    public void setAllowStacking(boolean z2) {
        if (this.b != z2) {
            this.b = z2;
            if (!z2 && this.f2705c) {
                setStacked(false);
            }
            requestLayout();
        }
    }
}
