package X;

import android.view.View;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.viewpager2.widget.ViewPager2;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class l implements AccessibilityViewCommand {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ m f2324a;

    public l(m mVar) {
        this.f2324a = mVar;
    }

    @Override // androidx.core.view.accessibility.AccessibilityViewCommand
    public final boolean perform(View view, AccessibilityViewCommand.CommandArguments commandArguments) {
        int currentItem = ((ViewPager2) view).getCurrentItem() - 1;
        ViewPager2 viewPager2 = this.f2324a.f2327e;
        if (viewPager2.f3073s) {
            viewPager2.c(currentItem, true);
        }
        return true;
    }
}
