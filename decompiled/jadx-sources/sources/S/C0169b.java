package S;

import android.graphics.PointF;
import android.graphics.Rect;
import android.util.Property;
import android.view.View;
import k.U0;

/* JADX INFO: renamed from: S.b, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0169b extends Property {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1976a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0169b(Class cls, String str, int i3) {
        super(cls, str);
        this.f1976a = i3;
    }

    @Override // android.util.Property
    public final Object get(Object obj) {
        switch (this.f1976a) {
            case 0:
                return null;
            case 1:
                return null;
            case 2:
                return null;
            case 3:
                return null;
            case 4:
                return null;
            case 5:
                return Float.valueOf(H.f1959a.l((View) obj));
            case 6:
                return ((View) obj).getClipBounds();
            default:
                return Float.valueOf(((U0) obj).f4746A);
        }
    }

    @Override // android.util.Property
    public final void set(Object obj, Object obj2) {
        switch (this.f1976a) {
            case 0:
                C0172e c0172e = (C0172e) obj;
                PointF pointF = (PointF) obj2;
                c0172e.getClass();
                c0172e.f1978a = Math.round(pointF.x);
                int iRound = Math.round(pointF.y);
                c0172e.b = iRound;
                int i3 = c0172e.f + 1;
                c0172e.f = i3;
                if (i3 == c0172e.g) {
                    H.a(c0172e.f1981e, c0172e.f1978a, iRound, c0172e.f1979c, c0172e.f1980d);
                    c0172e.f = 0;
                    c0172e.g = 0;
                }
                break;
            case 1:
                C0172e c0172e2 = (C0172e) obj;
                PointF pointF2 = (PointF) obj2;
                c0172e2.getClass();
                c0172e2.f1979c = Math.round(pointF2.x);
                int iRound2 = Math.round(pointF2.y);
                c0172e2.f1980d = iRound2;
                int i4 = c0172e2.g + 1;
                c0172e2.g = i4;
                if (c0172e2.f == i4) {
                    H.a(c0172e2.f1981e, c0172e2.f1978a, c0172e2.b, c0172e2.f1979c, iRound2);
                    c0172e2.f = 0;
                    c0172e2.g = 0;
                }
                break;
            case 2:
                View view = (View) obj;
                PointF pointF3 = (PointF) obj2;
                H.a(view, view.getLeft(), view.getTop(), Math.round(pointF3.x), Math.round(pointF3.y));
                break;
            case 3:
                View view2 = (View) obj;
                PointF pointF4 = (PointF) obj2;
                H.a(view2, Math.round(pointF4.x), Math.round(pointF4.y), view2.getRight(), view2.getBottom());
                break;
            case 4:
                View view3 = (View) obj;
                PointF pointF5 = (PointF) obj2;
                int iRound3 = Math.round(pointF5.x);
                int iRound4 = Math.round(pointF5.y);
                H.a(view3, iRound3, iRound4, view3.getWidth() + iRound3, view3.getHeight() + iRound4);
                break;
            case 5:
                float fFloatValue = ((Float) obj2).floatValue();
                H.f1959a.K((View) obj, fFloatValue);
                break;
            case 6:
                ((View) obj).setClipBounds((Rect) obj2);
                break;
            default:
                ((U0) obj).setThumbPosition(((Float) obj2).floatValue());
                break;
        }
    }
}
