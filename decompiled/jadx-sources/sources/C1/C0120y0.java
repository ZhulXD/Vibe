package C1;

import android.view.KeyEvent;
import androidx.viewpager2.widget.ViewPager2;
import com.minhub.gamehub.hub.GameDetailActivity;
import com.minhub.gamehub.hub.OnlineGameDetailActivity;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: C1.y0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0120y0 implements p007c1.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f716a;
    public final KeyEvent.Callback b;

    public /* synthetic */ C0120y0(KeyEvent.Callback callback, int i3) {
        this.f716a = i3;
        this.b = callback;
    }

    @Override // p007c1.b
    public final void a(p007c1.f fVar) {
        switch (this.f716a) {
            case 0:
                if (fVar != null && fVar.b == 1) {
                    R0.d((GameDetailActivity) this.b);
                    break;
                }
                break;
        }
    }

    @Override // p007c1.b
    public final void b(p007c1.f tab) {
        K1 k2;
        int i3 = this.f716a;
        KeyEvent.Callback callback = this.b;
        switch (i3) {
            case 0:
                GameDetailActivity gameDetailActivity = (GameDetailActivity) callback;
                Intrinsics.checkNotNullParameter(tab, "tab");
                int i4 = tab.b;
                if (i4 == 0) {
                    int i5 = GameDetailActivity.f3762w;
                    gameDetailActivity.t(0);
                    break;
                } else if (i4 == 1) {
                    int i6 = GameDetailActivity.f3762w;
                    gameDetailActivity.t(1);
                    R0.d(gameDetailActivity);
                    break;
                } else if (i4 == 2) {
                    int i7 = GameDetailActivity.f3762w;
                    gameDetailActivity.t(2);
                    break;
                }
                break;
            case 1:
                Intrinsics.checkNotNullParameter(tab, "tab");
                OnlineGameDetailActivity onlineGameDetailActivity = (OnlineGameDetailActivity) callback;
                int i8 = tab.b;
                if (i8 != 1) {
                    k2 = i8 != 2 ? K1.b : K1.f460d;
                } else {
                    k2 = K1.f459c;
                }
                int i9 = OnlineGameDetailActivity.f3801i;
                onlineGameDetailActivity.p(k2);
                break;
            default:
                ((ViewPager2) callback).b(tab.b, true);
                break;
        }
    }

    @Override // p007c1.b
    public final void c(p007c1.f fVar) {
        int i3 = this.f716a;
    }

    private final void d(p007c1.f fVar) {
    }

    private final void e(p007c1.f fVar) {
    }

    private final void f(p007c1.f fVar) {
    }

    private final void g(p007c1.f fVar) {
    }

    private final void h(p007c1.f fVar) {
    }
}
