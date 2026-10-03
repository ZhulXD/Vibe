package C1;

import androidx.activity.OnBackPressedCallback;
import com.minhub.gamehub.hub.ImageViewerActivity;

/* JADX INFO: renamed from: C1.r1, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0100r1 extends OnBackPressedCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ImageViewerActivity f676a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0100r1(ImageViewerActivity imageViewerActivity) {
        super(true);
        this.f676a = imageViewerActivity;
    }

    @Override // androidx.activity.OnBackPressedCallback
    public final void handleOnBackPressed() {
        this.f676a.finish();
    }
}
