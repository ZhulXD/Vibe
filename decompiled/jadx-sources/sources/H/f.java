package H;

import android.text.InputFilter;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.SparseArray;
import android.widget.TextView;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class f extends com.bumptech.glide.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TextView f1047c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final d f1048d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f1049e = true;

    public f(TextView textView) {
        this.f1047c = textView;
        this.f1048d = new d(textView);
    }

    @Override // com.bumptech.glide.c
    public final void Q(boolean z2) {
        if (z2) {
            TextView textView = this.f1047c;
            textView.setTransformationMethod(a0(textView.getTransformationMethod()));
        }
    }

    @Override // com.bumptech.glide.c
    public final void R(boolean z2) {
        this.f1049e = z2;
        TextView textView = this.f1047c;
        textView.setTransformationMethod(a0(textView.getTransformationMethod()));
        textView.setFilters(n(textView.getFilters()));
    }

    @Override // com.bumptech.glide.c
    public final TransformationMethod a0(TransformationMethod transformationMethod) {
        if (this.f1049e) {
            return ((transformationMethod instanceof j) || (transformationMethod instanceof PasswordTransformationMethod)) ? transformationMethod : new j(transformationMethod);
        }
        return transformationMethod instanceof j ? ((j) transformationMethod).b : transformationMethod;
    }

    @Override // com.bumptech.glide.c
    public final InputFilter[] n(InputFilter[] inputFilterArr) {
        if (!this.f1049e) {
            SparseArray sparseArray = new SparseArray(1);
            for (int i3 = 0; i3 < inputFilterArr.length; i3++) {
                InputFilter inputFilter = inputFilterArr[i3];
                if (inputFilter instanceof d) {
                    sparseArray.put(i3, inputFilter);
                }
            }
            if (sparseArray.size() == 0) {
                return inputFilterArr;
            }
            int length = inputFilterArr.length;
            InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length - sparseArray.size()];
            int i4 = 0;
            for (int i5 = 0; i5 < length; i5++) {
                if (sparseArray.indexOfKey(i5) < 0) {
                    inputFilterArr2[i4] = inputFilterArr[i5];
                    i4++;
                }
            }
            return inputFilterArr2;
        }
        int length2 = inputFilterArr.length;
        int i6 = 0;
        while (true) {
            d dVar = this.f1048d;
            if (i6 >= length2) {
                InputFilter[] inputFilterArr3 = new InputFilter[inputFilterArr.length + 1];
                System.arraycopy(inputFilterArr, 0, inputFilterArr3, 0, length2);
                inputFilterArr3[length2] = dVar;
                return inputFilterArr3;
            }
            if (inputFilterArr[i6] == dVar) {
                return inputFilterArr;
            }
            i6++;
        }
    }

    @Override // com.bumptech.glide.c
    public final boolean r() {
        return this.f1049e;
    }
}
