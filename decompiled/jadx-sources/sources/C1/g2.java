package C1;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.TextView;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Save;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class g2 extends P.W {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Function1 f604d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Function1 f605e;
    public final Function1 f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList f606h;

    public g2(Function1 onExportClick, Function1 onDeleteClick, Function1 onSaveClick, boolean z2) {
        Intrinsics.checkNotNullParameter(onExportClick, "onExportClick");
        Intrinsics.checkNotNullParameter(onDeleteClick, "onDeleteClick");
        Intrinsics.checkNotNullParameter(onSaveClick, "onSaveClick");
        this.f604d = onExportClick;
        this.f605e = onDeleteClick;
        this.f = onSaveClick;
        this.g = z2;
        this.f606h = new ArrayList();
    }

    @Override // P.W
    public final int a() {
        return this.f606h.size();
    }

    @Override // P.W
    public final void e(P.y0 y0Var, int i3) {
        f2 holder = (f2) y0Var;
        Intrinsics.checkNotNullParameter(holder, "holder");
        final Save save = (Save) this.f606h.get(i3);
        ImageButton imageButton = holder.f589C;
        Button button = holder.f588B;
        TextView textView = holder.f595y;
        TextView textView2 = holder.f594x;
        final g2 g2Var = holder.f590D;
        boolean z2 = g2Var.g;
        Intrinsics.checkNotNullParameter(save, "save");
        holder.f591u.setText(save.getDisplaySlotBadge());
        holder.f592v.setText(save.getDisplaySlotLabel());
        TextView textView3 = holder.f593w;
        String chapterName = save.getChapterName();
        if (chapterName == null) {
            chapterName = "Unknown Location";
        }
        textView3.setText(chapterName);
        textView3.setVisibility(save.getChapterName() != null ? 0 : 8);
        String playtime = save.getPlaytime();
        if (playtime == null) {
            playtime = "--:--";
        }
        textView2.setText(playtime);
        textView2.setVisibility(save.getPlaytime() != null ? 0 : 8);
        String leaderName = save.getLeaderName();
        if (leaderName == null) {
            leaderName = "";
        }
        textView.setText(leaderName);
        textView.setVisibility(save.getLeaderName() != null ? 0 : 8);
        holder.f596z.setText(save.getSizeLabel());
        holder.f587A.setText(save.getLastPlayedLabel());
        button.setVisibility(z2 ? 0 : 8);
        imageButton.setVisibility(z2 ? 0 : 8);
        final int i4 = 0;
        button.setOnClickListener(new View.OnClickListener(g2Var) { // from class: C1.e2

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ g2 f581c;

            {
                this.f581c = g2Var;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i4) {
                    case 0:
                        this.f581c.f604d.invoke(save);
                        break;
                    case 1:
                        this.f581c.f605e.invoke(save);
                        break;
                    default:
                        this.f581c.f.invoke(save);
                        break;
                }
            }
        });
        final int i5 = 1;
        imageButton.setOnClickListener(new View.OnClickListener(g2Var) { // from class: C1.e2

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ g2 f581c;

            {
                this.f581c = g2Var;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i5) {
                    case 0:
                        this.f581c.f604d.invoke(save);
                        break;
                    case 1:
                        this.f581c.f605e.invoke(save);
                        break;
                    default:
                        this.f581c.f.invoke(save);
                        break;
                }
            }
        });
        final int i6 = 2;
        holder.f1807a.setOnClickListener(new View.OnClickListener(g2Var) { // from class: C1.e2

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ g2 f581c;

            {
                this.f581c = g2Var;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i6) {
                    case 0:
                        this.f581c.f604d.invoke(save);
                        break;
                    case 1:
                        this.f581c.f605e.invoke(save);
                        break;
                    default:
                        this.f581c.f.invoke(save);
                        break;
                }
            }
        });
    }

    @Override // P.W
    public final P.y0 f(ViewGroup parent) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_save, parent, false);
        Intrinsics.checkNotNull(viewInflate);
        return new f2(this, viewInflate);
    }

    public final void k(List newSaves) {
        Intrinsics.checkNotNullParameter(newSaves, "newSaves");
        ArrayList arrayList = this.f606h;
        arrayList.clear();
        arrayList.addAll(newSaves);
        c();
    }
}
