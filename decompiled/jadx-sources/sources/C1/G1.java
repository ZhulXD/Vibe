package C1;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.core.os.EnvironmentCompat;
import com.google.android.material.card.MaterialCardView;
import com.minhub.gamehub.R;
import com.minhub.gamehub.hub.catalog.CatalogDownloadJob;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class G1 extends P.W {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public List f434d;

    @Override // P.W
    public final int a() {
        return this.f434d.size();
    }

    @Override // P.W
    public final void e(P.y0 y0Var, int i3) {
        String strJ;
        F1 holder = (F1) y0Var;
        Intrinsics.checkNotNullParameter(holder, "holder");
        CatalogDownloadJob job = (CatalogDownloadJob) this.f434d.get(i3);
        Intrinsics.checkNotNullParameter(job, "job");
        N1.w wVar = holder.f427u;
        ((TextView) wVar.f1495d).setText(job.getTitle());
        ProgressBar progressBar = (ProgressBar) wVar.b;
        progressBar.setMax(100);
        progressBar.setProgress(job.getProgress());
        TextView textView = (TextView) wVar.f1494c;
        Intrinsics.checkNotNullParameter(job, "job");
        int i4 = H1.f439a[job.getState().ordinal()];
        if (i4 == 1) {
            strJ = "Dang cho tai";
        } else if (i4 == 2) {
            strJ = E.b.j(job.getProgress(), "Dang tai... ", "%");
        } else if (i4 == 3) {
            strJ = "Da cai";
        } else {
            if (i4 != 4) {
                throw new NoWhenBranchMatchedException();
            }
            String errorMessage = job.getErrorMessage();
            if (errorMessage == null) {
                errorMessage = EnvironmentCompat.MEDIA_UNKNOWN;
            }
            strJ = "Tai that bai: ".concat(errorMessage);
        }
        textView.setText(strJ);
    }

    @Override // P.W
    public final P.y0 f(ViewGroup parent) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_catalog_download, parent, false);
        int i3 = R.id.progress;
        ProgressBar progressBar = (ProgressBar) viewInflate.findViewById(R.id.progress);
        if (progressBar != null) {
            i3 = R.id.tv_status;
            TextView textView = (TextView) viewInflate.findViewById(R.id.tv_status);
            if (textView != null) {
                i3 = R.id.tv_title;
                TextView textView2 = (TextView) viewInflate.findViewById(R.id.tv_title);
                if (textView2 != null) {
                    N1.w wVar = new N1.w();
                    wVar.f1493a = (MaterialCardView) viewInflate;
                    wVar.b = progressBar;
                    wVar.f1494c = textView;
                    wVar.f1495d = textView2;
                    Intrinsics.checkNotNullExpressionValue(wVar, "inflate(...)");
                    return new F1(wVar);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i3)));
    }
}
