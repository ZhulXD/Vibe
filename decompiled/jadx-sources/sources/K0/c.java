package K0;

import P.AbstractC0141d0;
import android.graphics.Canvas;
import android.graphics.Paint;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.carousel.CarouselLayoutManager;
import com.minhub.gamehub.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c extends AbstractC0141d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Paint f1219a;
    public final List b;

    public c() {
        Paint paint = new Paint();
        this.f1219a = paint;
        this.b = Collections.unmodifiableList(new ArrayList());
        paint.setStrokeWidth(5.0f);
        paint.setColor(-65281);
    }

    @Override // P.AbstractC0141d0
    public final void h(Canvas canvas, RecyclerView recyclerView) {
        Canvas canvas2;
        int iH;
        int I2;
        int iJ;
        int iG;
        float dimension = recyclerView.getResources().getDimension(R.dimen.m3_carousel_debug_keyline_width);
        Paint paint = this.f1219a;
        paint.setStrokeWidth(dimension);
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((e) it.next()).getClass();
            paint.setColor(ColorUtils.blendARGB(-65281, -16776961, 0.0f));
            if (((CarouselLayoutManager) recyclerView.getLayoutManager()).G0()) {
                d dVar = ((CarouselLayoutManager) recyclerView.getLayoutManager()).f3381q;
                switch (dVar.b) {
                    case 0:
                        iJ = 0;
                        break;
                    default:
                        iJ = dVar.f1221c.J();
                        break;
                }
                float f = iJ;
                d dVar2 = ((CarouselLayoutManager) recyclerView.getLayoutManager()).f3381q;
                switch (dVar2.b) {
                    case 0:
                        iG = dVar2.f1221c.f1685o;
                        break;
                    default:
                        CarouselLayoutManager carouselLayoutManager = dVar2.f1221c;
                        iG = carouselLayoutManager.f1685o - carouselLayoutManager.G();
                        break;
                }
                canvas2 = canvas;
                canvas2.drawLine(0.0f, f, 0.0f, iG, paint);
            } else {
                canvas2 = canvas;
                d dVar3 = ((CarouselLayoutManager) recyclerView.getLayoutManager()).f3381q;
                switch (dVar3.b) {
                    case 0:
                        iH = dVar3.f1221c.H();
                        break;
                    default:
                        iH = 0;
                        break;
                }
                float f3 = iH;
                d dVar4 = ((CarouselLayoutManager) recyclerView.getLayoutManager()).f3381q;
                switch (dVar4.b) {
                    case 0:
                        CarouselLayoutManager carouselLayoutManager2 = dVar4.f1221c;
                        I2 = carouselLayoutManager2.f1684n - carouselLayoutManager2.I();
                        break;
                    default:
                        I2 = dVar4.f1221c.f1684n;
                        break;
                }
                canvas2.drawLine(f3, 0.0f, I2, 0.0f, paint);
            }
            canvas = canvas2;
        }
    }
}
