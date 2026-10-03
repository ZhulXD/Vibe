package p064y1;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.game.SplashGameActivity;
import kotlin.jvm.internal.Intrinsics;
import p054v0.d;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class P1 extends d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ SplashGameActivity f6117d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Game f6118e;
    public final /* synthetic */ T1 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public P1(SplashGameActivity splashGameActivity, Game game, T1 t2, ImageView imageView) {
        super(imageView);
        this.f6117d = splashGameActivity;
        this.f6118e = game;
        this.f = t2;
    }

    @Override // p054v0.f
    public final void b(Drawable drawable) {
        SplashGameActivity.m(this.f6117d, L1.G(this.f6118e, true), drawable);
    }

    @Override // p054v0.f
    public final void h(Object obj) {
        Drawable resource = (Drawable) obj;
        Intrinsics.checkNotNullParameter(resource, "resource");
        SplashGameActivity.m(this.f6117d, this.f, resource);
    }

    @Override // p054v0.d
    public final void j(Drawable drawable) {
        int i3 = SplashGameActivity.f3723h;
        T1 binding = new T1(null, true);
        Intrinsics.checkNotNullParameter(binding, "binding");
        this.f6117d.n(new U1(true, true, true, V1.b));
    }
}
