package C1;

import android.widget.LinearLayout;
import android.widget.TextView;
import com.minhub.gamehub.hub.ImageViewerActivity;
import java.util.ArrayList;

/* JADX INFO: renamed from: C1.q1, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0098q1 extends X.j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ boolean f671a;
    public final /* synthetic */ LinearLayout b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TextView f672c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ArrayList f673d;

    public C0098q1(boolean z2, LinearLayout linearLayout, TextView textView, ArrayList arrayList) {
        this.f671a = z2;
        this.b = linearLayout;
        this.f672c = textView;
        this.f673d = arrayList;
    }

    @Override // X.j
    public final void c(int i3) {
        ImageViewerActivity.m(this.f671a, this.b, this.f672c, this.f673d, i3);
    }
}
