package R0;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.chip.ChipGroup;
import com.minhub.gamehub.R;
import kotlin.jvm.internal.IntCompanionObject;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class e extends ViewGroup {
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1917c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1918d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1919e;

    public int getItemSpacing() {
        return this.f1917c;
    }

    public int getLineSpacing() {
        return this.b;
    }

    public int getRowCount() {
        return this.f1919e;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i3, int i4, int i5, int i6) {
        int marginEnd;
        int marginStart;
        if (getChildCount() == 0) {
            this.f1919e = 0;
            return;
        }
        this.f1919e = 1;
        boolean z3 = ViewCompat.getLayoutDirection(this) == 1;
        int paddingRight = z3 ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = z3 ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int i7 = (i5 - i3) - paddingLeft;
        int measuredWidth = paddingRight;
        int i8 = paddingTop;
        for (int i9 = 0; i9 < getChildCount(); i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() == 8) {
                childAt.setTag(R.id.row_index_key, -1);
            } else {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    marginStart = MarginLayoutParamsCompat.getMarginStart(marginLayoutParams);
                    marginEnd = MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams);
                } else {
                    marginEnd = 0;
                    marginStart = 0;
                }
                int measuredWidth2 = childAt.getMeasuredWidth() + measuredWidth + marginStart;
                if (!this.f1918d && measuredWidth2 > i7) {
                    i8 = this.b + paddingTop;
                    this.f1919e++;
                    measuredWidth = paddingRight;
                }
                childAt.setTag(R.id.row_index_key, Integer.valueOf(this.f1919e - 1));
                int i10 = measuredWidth + marginStart;
                int measuredWidth3 = childAt.getMeasuredWidth() + i10;
                int measuredHeight = childAt.getMeasuredHeight() + i8;
                if (z3) {
                    childAt.layout(i7 - measuredWidth3, i8, (i7 - measuredWidth) - marginStart, measuredHeight);
                } else {
                    childAt.layout(i10, i8, measuredWidth3, measuredHeight);
                }
                measuredWidth += childAt.getMeasuredWidth() + marginStart + marginEnd + this.f1917c;
                paddingTop = measuredHeight;
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int size = View.MeasureSpec.getSize(i3);
        int mode = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i4);
        int mode2 = View.MeasureSpec.getMode(i4);
        int i8 = (mode == Integer.MIN_VALUE || mode == 1073741824) ? size : IntCompanionObject.MAX_VALUE;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = i8 - getPaddingRight();
        int i9 = paddingTop;
        int i10 = 0;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                measureChild(childAt, i3, i4);
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    i7 = marginLayoutParams.leftMargin;
                    i6 = marginLayoutParams.rightMargin;
                } else {
                    i6 = 0;
                    i7 = 0;
                }
                int i12 = i6;
                if (childAt.getMeasuredWidth() + paddingLeft + i7 > paddingRight && !((ChipGroup) this).f1918d) {
                    paddingLeft = getPaddingLeft();
                    i9 = paddingTop + this.b;
                }
                int measuredWidth = childAt.getMeasuredWidth() + paddingLeft + i7;
                int measuredHeight = childAt.getMeasuredHeight() + i9;
                if (measuredWidth > i10) {
                    i10 = measuredWidth;
                }
                int measuredWidth2 = childAt.getMeasuredWidth() + i7 + i12 + this.f1917c + paddingLeft;
                if (i11 == getChildCount() - 1) {
                    i10 += i12;
                }
                paddingLeft = measuredWidth2;
                paddingTop = measuredHeight;
            }
        }
        int paddingRight2 = getPaddingRight() + i10;
        int paddingBottom = getPaddingBottom() + paddingTop;
        if (mode != Integer.MIN_VALUE) {
            i5 = 1073741824;
            if (mode != 1073741824) {
                size = paddingRight2;
            }
        } else {
            i5 = 1073741824;
            size = Math.min(paddingRight2, size);
        }
        if (mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(paddingBottom, size2);
        } else if (mode2 != i5) {
            size2 = paddingBottom;
        }
        setMeasuredDimension(size, size2);
    }

    public void setItemSpacing(int i3) {
        this.f1917c = i3;
    }

    public void setLineSpacing(int i3) {
        this.b = i3;
    }

    public void setSingleLine(boolean z2) {
        this.f1918d = z2;
    }
}
