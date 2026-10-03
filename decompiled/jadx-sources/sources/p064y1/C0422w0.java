package p064y1;

import P.H0;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.LinearLayout;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref;

/* JADX INFO: renamed from: y1.w0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0422w0 implements TextWatcher {
    public final /* synthetic */ LinearLayout b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ List f6387c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ List f6388d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0425x0 f6389e;
    public final /* synthetic */ H0 f;
    public final /* synthetic */ Ref.ObjectRef g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Function1 f6390h;

    public C0422w0(LinearLayout linearLayout, List list, List list2, C0425x0 c0425x0, H0 h2, Ref.ObjectRef objectRef, Function1 function1) {
        this.b = linearLayout;
        this.f6387c = list;
        this.f6388d = list2;
        this.f6389e = c0425x0;
        this.f = h2;
        this.g = objectRef;
        this.f6390h = function1;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        String string = editable != null ? editable.toString() : null;
        if (string == null) {
            string = "";
        }
        C0425x0.j(this.b, this.f6387c, this.f6388d, this.f6389e, this.f, this.g, this.f6390h, string);
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
    }
}
