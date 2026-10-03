package p010d1;

import com.bumptech.glide.c;
import com.google.android.material.internal.CheckableImageButton;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class e extends o {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f3886e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ e(n nVar, int i3) {
        super(nVar);
        this.f3886e = i3;
    }

    @Override // p010d1.o
    public void q() {
        switch (this.f3886e) {
            case 0:
                n nVar = this.b;
                nVar.f3919p = null;
                CheckableImageButton checkableImageButton = nVar.f3911h;
                checkableImageButton.setOnLongClickListener(null);
                c.S(checkableImageButton, null);
                break;
        }
    }
}
