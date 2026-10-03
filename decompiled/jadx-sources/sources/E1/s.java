package E1;

import P.H0;
import android.content.Context;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import p064y1.C0425x0;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class s implements View.OnClickListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f915c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f916d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f917e;
    public final /* synthetic */ Object f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ View f918h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f919i;

    public /* synthetic */ s(w wVar, Context context, TextView textView, L1.a aVar, TextView textView2, Button button, Button button2, int i3) {
        this.b = i3;
        this.f915c = wVar;
        this.f916d = context;
        this.f917e = textView;
        this.f = aVar;
        this.g = textView2;
        this.f918h = button;
        this.f919i = button2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.b) {
            case 0:
                w wVar = (w) this.f915c;
                Context context = (Context) this.f916d;
                TextView textView = (TextView) this.f917e;
                L1.a aVar = (L1.a) this.f;
                TextView textView2 = (TextView) this.g;
                Button button = (Button) this.f918h;
                Button button2 = (Button) this.f919i;
                LifecycleOwner viewLifecycleOwner = wVar.getViewLifecycleOwner();
                Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
                V1.A.c(LifecycleOwnerKt.getLifecycleScope(viewLifecycleOwner), null, new u(wVar, context, textView, aVar, textView2, button, button2, null, 0), 3);
                break;
            case 1:
                w wVar2 = (w) this.f915c;
                Context context2 = (Context) this.f916d;
                TextView textView3 = (TextView) this.f917e;
                L1.a aVar2 = (L1.a) this.f;
                TextView textView4 = (TextView) this.g;
                Button button3 = (Button) this.f918h;
                Button button4 = (Button) this.f919i;
                LifecycleOwner viewLifecycleOwner2 = wVar2.getViewLifecycleOwner();
                Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner2, "getViewLifecycleOwner(...)");
                V1.A.c(LifecycleOwnerKt.getLifecycleScope(viewLifecycleOwner2), null, new u(wVar2, context2, textView3, aVar2, textView4, button3, button4, null, 1), 3);
                break;
            default:
                C0425x0.e((EditText) this.f915c, (List) this.f916d, (C0425x0) this.f917e, (LinkedHashMap) this.g, (H0) this.f, (LinearLayout) this.f918h, (Ref.ObjectRef) this.f919i);
                break;
        }
    }

    public /* synthetic */ s(EditText editText, List list, C0425x0 c0425x0, LinkedHashMap linkedHashMap, H0 h2, LinearLayout linearLayout, Ref.ObjectRef objectRef) {
        this.b = 2;
        this.f915c = editText;
        this.f916d = list;
        this.f917e = c0425x0;
        this.g = linkedHashMap;
        this.f = h2;
        this.f918h = linearLayout;
        this.f919i = objectRef;
    }
}
