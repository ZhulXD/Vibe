package a2;

import android.text.TextUtils;
import kotlin.text.Typography;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class w implements androidx.emoji2.text.n, p028k1.n {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f2599c;

    public /* synthetic */ w(String str, int i3) {
        this.b = i3;
        this.f2599c = str;
    }

    @Override // androidx.emoji2.text.n
    public boolean a(CharSequence charSequence, int i3, int i4, androidx.emoji2.text.v vVar) {
        if (!TextUtils.equals(charSequence.subSequence(i3, i4), this.f2599c)) {
            return true;
        }
        vVar.f2900c = (vVar.f2900c & 3) | 4;
        return false;
    }

    @Override // p028k1.n
    public Object n() {
        switch (this.b) {
            case 2:
                throw new p023i1.p(this.f2599c);
            case 3:
                throw new p023i1.p(this.f2599c);
            default:
                throw new p023i1.p(this.f2599c);
        }
    }

    public String toString() {
        switch (this.b) {
            case 0:
                return "<" + this.f2599c + Typography.greater;
            default:
                return super.toString();
        }
    }

    @Override // androidx.emoji2.text.n
    public Object getResult() {
        return this;
    }
}
