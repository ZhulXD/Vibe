package C1;

import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.minhub.gamehub.R;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b2 extends P.W {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final F0 f558d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final F0 f559e;
    public final H0 f;
    public final H0 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final H0 f560h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public List f561i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f562j;

    public b2(F0 onToggleStatus, F0 onEditParameters, H0 isPatreon, H0 onPatreonLock, H0 touchHelper) {
        Intrinsics.checkNotNullParameter(onToggleStatus, "onToggleStatus");
        Intrinsics.checkNotNullParameter(onEditParameters, "onEditParameters");
        Intrinsics.checkNotNullParameter(isPatreon, "isPatreon");
        Intrinsics.checkNotNullParameter(onPatreonLock, "onPatreonLock");
        Intrinsics.checkNotNullParameter(touchHelper, "touchHelper");
        this.f558d = onToggleStatus;
        this.f559e = onEditParameters;
        this.f = isPatreon;
        this.g = onPatreonLock;
        this.f560h = touchHelper;
        this.f561i = CollectionsKt.emptyList();
    }

    @Override // P.W
    public final int a() {
        return this.f561i.size();
    }

    @Override // P.W
    public final void e(P.y0 y0Var, int i3) {
        final a2 holder = (a2) y0Var;
        Intrinsics.checkNotNullParameter(holder, "holder");
        final c2 item = (c2) this.f561i.get(i3);
        final boolean z2 = this.f562j;
        TextView editParameters = holder.f551y;
        View dragHandle = holder.f547u;
        TextView textView = holder.f550x;
        final b2 b2Var = holder.f552z;
        View view = holder.f1807a;
        Intrinsics.checkNotNullParameter(item, "item");
        TextView textView2 = holder.f548v;
        String str = item.f569a;
        boolean z3 = item.f570c;
        textView2.setText(str);
        TextView textView3 = holder.f549w;
        String str2 = item.b;
        if (StringsKt.isBlank(str2)) {
            str2 = item.f569a;
        }
        textView3.setText(str2);
        textView.setText(view.getContext().getString(z3 ? R.string.plugin_state_on : R.string.plugin_state_off));
        textView.setTextColor(ContextCompat.getColor(view.getContext(), z3 ? R.color.success : R.color.text_mut));
        Intrinsics.checkNotNullExpressionValue(dragHandle, "dragHandle");
        dragHandle.setVisibility(z2 ? 0 : 8);
        Intrinsics.checkNotNullExpressionValue(editParameters, "editParameters");
        editParameters.setVisibility(z2 ? 0 : 8);
        final int i4 = 0;
        view.setOnClickListener(new View.OnClickListener() { // from class: C1.Y1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                switch (i4) {
                    case 0:
                        if (z2) {
                            b2Var.f558d.invoke(item.f569a);
                        }
                        break;
                    default:
                        if (z2) {
                            b2Var.f559e.invoke(item);
                        }
                        break;
                }
            }
        });
        final int i5 = 1;
        editParameters.setOnClickListener(new View.OnClickListener() { // from class: C1.Y1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                switch (i5) {
                    case 0:
                        if (z2) {
                            b2Var.f558d.invoke(item.f569a);
                        }
                        break;
                    default:
                        if (z2) {
                            b2Var.f559e.invoke(item);
                        }
                        break;
                }
            }
        });
        dragHandle.setOnTouchListener(new View.OnTouchListener() { // from class: C1.Z1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                if (!z2 || motionEvent.getActionMasked() != 0) {
                    return false;
                }
                b2 b2Var2 = b2Var;
                boolean zBooleanValue = ((Boolean) b2Var2.f.invoke()).booleanValue();
                p023i1.l lVar = X0.f526a;
                if (!zBooleanValue) {
                    b2Var2.g.invoke();
                    return true;
                }
                P.G g = (P.G) b2Var2.f560h.invoke();
                N0 n0 = g.f1571m;
                RecyclerView recyclerView = g.f1576r;
                a2 a2Var = holder;
                if ((P.E.b(n0.f(recyclerView, a2Var), ViewCompat.getLayoutDirection(recyclerView)) & 16711680) == 0) {
                    Log.e("ItemTouchHelper", "Start drag has been called but dragging is not enabled");
                    return false;
                }
                if (a2Var.f1807a.getParent() != g.f1576r) {
                    Log.e("ItemTouchHelper", "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper.");
                    return false;
                }
                VelocityTracker velocityTracker = g.f1578t;
                if (velocityTracker != null) {
                    velocityTracker.recycle();
                }
                g.f1578t = VelocityTracker.obtain();
                g.f1567i = 0.0f;
                g.f1566h = 0.0f;
                g.r(a2Var, 2);
                return false;
            }
        });
    }

    @Override // P.W
    public final P.y0 f(ViewGroup parent) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_plugin_manager_row, parent, false);
        Intrinsics.checkNotNull(viewInflate);
        return new a2(this, viewInflate);
    }
}
