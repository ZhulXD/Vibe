package G0;

import T0.f;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import com.minhub.gamehub.R;
import java.util.ArrayList;
import p024j.p;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends f {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f987I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f988J;
    public final int K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final int f989L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public boolean f990M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final ArrayList f991N;

    public b(Context context) {
        super(context);
        this.f991N = new ArrayList();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        setLayoutParams(layoutParams);
        Resources resources = getResources();
        this.f987I = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_item_max_width);
        this.f988J = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_item_min_width);
        this.K = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_active_item_max_width);
        this.f989L = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_active_item_min_width);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i3, int i4, int i5, int i6) {
        int childCount = getChildCount();
        int i7 = i5 - i3;
        int i8 = i6 - i4;
        int measuredWidth = 0;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                if (ViewCompat.getLayoutDirection(this) == 1) {
                    int i10 = i7 - measuredWidth;
                    childAt.layout(i10 - childAt.getMeasuredWidth(), 0, i10, i8);
                } else {
                    childAt.layout(measuredWidth, 0, childAt.getMeasuredWidth() + measuredWidth, i8);
                }
                measuredWidth += childAt.getMeasuredWidth();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00a9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:38:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:40:0x00c2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:41:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:42:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:43:0x00cb  */
    @Override // android.view.View
    public final void onMeasure(int i3, int i4) {
        int i5;
        int iMin;
        int i6;
        int i7;
        int i8;
        p menu = getMenu();
        int size = View.MeasureSpec.getSize(i3);
        int size2 = menu.l().size();
        int childCount = getChildCount();
        ArrayList arrayList = this.f991N;
        arrayList.clear();
        int size3 = View.MeasureSpec.getSize(i4);
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size3, 1073741824);
        int labelVisibilityMode = getLabelVisibilityMode();
        int i9 = this.K;
        if (labelVisibilityMode != -1 ? labelVisibilityMode != 0 : size2 <= 3) {
            iMin = Math.min(size / (size2 != 0 ? size2 : 1), i9);
            i6 = size - (size2 * iMin);
            for (i7 = 0; i7 < childCount; i7++) {
                if (getChildAt(i7).getVisibility() != 8) {
                    i8 = 0;
                } else if (i6 > 0) {
                    i8 = iMin + 1;
                    i6--;
                } else {
                    i8 = iMin;
                }
                arrayList.add(Integer.valueOf(i8));
            }
        } else if (this.f990M) {
            View childAt = getChildAt(getSelectedItemPosition());
            int visibility = childAt.getVisibility();
            int iMax = this.f989L;
            if (visibility != 8) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i9, Integer.MIN_VALUE), iMakeMeasureSpec);
                iMax = Math.max(iMax, childAt.getMeasuredWidth());
            }
            int i10 = size2 - (childAt.getVisibility() != 8 ? 1 : 0);
            int iMin2 = Math.min(size - (this.f988J * i10), Math.min(iMax, i9));
            int i11 = size - iMin2;
            int iMin3 = Math.min(i11 / (i10 != 0 ? i10 : 1), this.f987I);
            int i12 = i11 - (i10 * iMin3);
            int i13 = 0;
            while (i13 < childCount) {
                if (getChildAt(i13).getVisibility() != 8) {
                    i5 = i13 == getSelectedItemPosition() ? iMin2 : iMin3;
                    if (i12 > 0) {
                        i5++;
                        i12--;
                    }
                } else {
                    i5 = 0;
                }
                arrayList.add(Integer.valueOf(i5));
                i13++;
            }
        } else {
            iMin = Math.min(size / (size2 != 0 ? size2 : 1), i9);
            i6 = size - (size2 * iMin);
            while (i7 < childCount) {
                if (getChildAt(i7).getVisibility() != 8) {
                    i8 = 0;
                } else if (i6 > 0) {
                    i8 = iMin + 1;
                    i6--;
                } else {
                    i8 = iMin;
                }
                arrayList.add(Integer.valueOf(i8));
            }
        }
        int measuredWidth = 0;
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt2 = getChildAt(i14);
            if (childAt2.getVisibility() != 8) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec(((Integer) arrayList.get(i14)).intValue(), 1073741824), iMakeMeasureSpec);
                childAt2.getLayoutParams().width = childAt2.getMeasuredWidth();
                measuredWidth = childAt2.getMeasuredWidth() + measuredWidth;
            }
        }
        setMeasuredDimension(measuredWidth, size3);
    }

    public void setItemHorizontalTranslationEnabled(boolean z2) {
        this.f990M = z2;
    }
}
