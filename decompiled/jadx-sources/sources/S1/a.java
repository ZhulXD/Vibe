package S1;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.widget.TextView;
import com.minhub.gamehub.data.Game;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a extends p054v0.d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ View f2054d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ TextView f2055e;
    public final /* synthetic */ Game f;
    public final /* synthetic */ float g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(View view, TextView textView, Game game, float f) {
        super(view);
        this.f2054d = view;
        this.f2055e = textView;
        this.f = game;
        this.g = f;
    }

    @Override // p054v0.f
    public final void b(Drawable drawable) {
        GradientDrawable.Orientation orientation = GradientDrawable.Orientation.TL_BR;
        Game game = this.f;
        GradientDrawable gradientDrawable = new GradientDrawable(orientation, new int[]{com.bumptech.glide.d.Z(game.getCoverColor1()), com.bumptech.glide.d.Z(game.getCoverColor2())});
        gradientDrawable.setCornerRadius(this.g);
        this.f2054d.setBackground(gradientDrawable);
        TextView textView = this.f2055e;
        if (textView != null) {
            String upperCase = StringsKt.take(game.getTitle(), 3).toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
            textView.setText(upperCase);
        }
    }

    @Override // p054v0.f
    public final void h(Object obj) {
        Drawable resource = (Drawable) obj;
        Intrinsics.checkNotNullParameter(resource, "resource");
        this.f2054d.setBackground(resource);
    }

    @Override // p054v0.d
    public final void j(Drawable drawable) {
        this.f2054d.setBackground(drawable);
    }
}
