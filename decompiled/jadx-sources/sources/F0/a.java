package F0;

import android.graphics.Rect;
import android.view.View;
import android.widget.ImageView;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements View.OnLayoutChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f969a;
    public final /* synthetic */ Object b;

    public /* synthetic */ a(int i3, Object obj) {
        this.f969a = i3;
        this.b = obj;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        D0.a aVar;
        switch (this.f969a) {
            case 0:
                throw null;
            case 1:
                G0.a aVar2 = (G0.a) this.b;
                ImageView imageView = aVar2.f2155o;
                if (imageView.getVisibility() != 0 || (aVar = aVar2.f2144G) == null) {
                    return;
                }
                Rect rect = new Rect();
                imageView.getDrawingRect(rect);
                aVar.setBounds(rect);
                aVar.i(imageView, null);
                return;
            default:
                p017g1.a aVar3 = (p017g1.a) this.b;
                int[] iArr = new int[2];
                view.getLocationOnScreen(iArr);
                aVar3.K = iArr[0];
                view.getWindowVisibleDisplayFrame(aVar3.f4344D);
                return;
        }
    }
}
