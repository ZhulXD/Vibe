package H;

import android.text.InputFilter;
import android.text.method.TransformationMethod;
import android.widget.TextView;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class g extends com.bumptech.glide.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final f f1050c;

    public g(TextView textView) {
        this.f1050c = new f(textView);
    }

    @Override // com.bumptech.glide.c
    public final void Q(boolean z2) {
        if (androidx.emoji2.text.j.f2876k != null) {
            this.f1050c.Q(z2);
        }
    }

    @Override // com.bumptech.glide.c
    public final void R(boolean z2) {
        f fVar = this.f1050c;
        if (androidx.emoji2.text.j.f2876k != null) {
            fVar.R(z2);
        } else {
            fVar.f1049e = z2;
        }
    }

    @Override // com.bumptech.glide.c
    public final TransformationMethod a0(TransformationMethod transformationMethod) {
        return !(androidx.emoji2.text.j.f2876k != null) ? transformationMethod : this.f1050c.a0(transformationMethod);
    }

    @Override // com.bumptech.glide.c
    public final InputFilter[] n(InputFilter[] inputFilterArr) {
        return !(androidx.emoji2.text.j.f2876k != null) ? inputFilterArr : this.f1050c.n(inputFilterArr);
    }

    @Override // com.bumptech.glide.c
    public final boolean r() {
        return this.f1050c.f1049e;
    }
}
