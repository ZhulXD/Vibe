package K0;

import C1.RunnableC0068g1;
import android.view.View;
import com.google.android.material.carousel.CarouselLayoutManager;
import org.renpy.android.PythonSDLActivity;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements View.OnLayoutChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1217a;
    public final /* synthetic */ Object b;

    public /* synthetic */ a(int i3, Object obj) {
        this.f1217a = i3;
        this.b = obj;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        switch (this.f1217a) {
            case 0:
                CarouselLayoutManager carouselLayoutManager = (CarouselLayoutManager) this.b;
                if (i3 != i7 || i4 != i8 || i5 != i9 || i6 != i10) {
                    view.post(new RunnableC0068g1(5, carouselLayoutManager));
                }
                break;
            default:
                ((PythonSDLActivity) this.b).lambda$onCreate$0(view, i3, i4, i5, i6, i7, i8, i9, i10);
                break;
        }
    }
}
