package B1;

import P.W;
import P.y0;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.Switch;
import android.widget.TextView;
import com.minhub.gamehub.R;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class h extends W {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List f316d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LinkedHashMap f317e;
    public final d f;

    public h(List items, LinkedHashMap visibility, d onToggle) {
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(visibility, "visibility");
        Intrinsics.checkNotNullParameter(onToggle, "onToggle");
        this.f316d = items;
        this.f317e = visibility;
        this.f = onToggle;
    }

    @Override // P.W
    public final int a() {
        return this.f316d.size();
    }

    @Override // P.W
    public final void e(y0 y0Var, int i3) {
        g holder = (g) y0Var;
        Intrinsics.checkNotNullParameter(holder, "holder");
        e item = (e) this.f316d.get(i3);
        Intrinsics.checkNotNullParameter(item, "item");
        I1.j jVar = holder.f314u;
        TextView textView = (TextView) jVar.f;
        Switch r2 = (Switch) jVar.f1189d;
        textView.setText(item.b);
        ((TextView) jVar.f1190e).setText(item.f310c);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(Color.parseColor(item.f311d));
        gradientDrawable.setAlpha(85);
        ((View) jVar.f1188c).setBackground(gradientDrawable);
        h hVar = holder.f315v;
        Boolean bool = (Boolean) hVar.f317e.get(item.f309a);
        r2.setChecked(bool != null ? bool.booleanValue() : true);
        r2.setOnCheckedChangeListener(new f(0, hVar, item));
    }

    @Override // P.W
    public final y0 f(ViewGroup parent) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_button_catalog, parent, false);
        int i3 = R.id.btn_preview;
        View viewFindViewById = viewInflate.findViewById(R.id.btn_preview);
        if (viewFindViewById != null) {
            i3 = R.id.switch_visible;
            Switch r4 = (Switch) viewInflate.findViewById(R.id.switch_visible);
            if (r4 != null) {
                i3 = R.id.tv_key;
                TextView textView = (TextView) viewInflate.findViewById(R.id.tv_key);
                if (textView != null) {
                    i3 = R.id.tv_name;
                    TextView textView2 = (TextView) viewInflate.findViewById(R.id.tv_name);
                    if (textView2 != null) {
                        I1.j jVar = new I1.j((LinearLayout) viewInflate, viewFindViewById, r4, textView, textView2, 4);
                        Intrinsics.checkNotNullExpressionValue(jVar, "inflate(...)");
                        return new g(this, jVar);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i3)));
    }
}
