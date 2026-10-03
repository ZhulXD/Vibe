package C1;

import android.text.Editable;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.lifecycle.LifecycleOwnerKt;
import com.minhub.gamehub.R;
import com.minhub.gamehub.hub.AddGameActivity;
import com.minhub.gamehub.hub.GameDetailActivity;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import p011e.C0240b;
import p011e.DialogInterfaceC0245g;
import p064y1.C0425x0;
import p064y1.EnumC0420v1;

/* JADX INFO: renamed from: C1.i, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC0072i implements View.OnClickListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f613c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f614d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f615e;
    public final /* synthetic */ Object f;
    public final /* synthetic */ Object g;

    public /* synthetic */ ViewOnClickListenerC0072i(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i3) {
        this.b = i3;
        this.f613c = obj;
        this.f614d = obj2;
        this.f615e = obj3;
        this.f = obj4;
        this.g = obj5;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0071  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        String strA;
        int i3 = this.b;
        Object obj = this.g;
        Object obj2 = this.f;
        Object obj3 = this.f615e;
        Object obj4 = this.f614d;
        Object obj5 = this.f613c;
        switch (i3) {
            case 0:
                AddGameActivity addGameActivity = (AddGameActivity) obj5;
                Ref.ObjectRef objectRef = (Ref.ObjectRef) obj3;
                Ref.ObjectRef objectRef2 = (Ref.ObjectRef) obj2;
                H0.o oVar = (H0.o) obj;
                int i4 = AddGameActivity.f3740y;
                Editable text = ((EditText) ((k.m1) obj4).b).getText();
                String string = text != null ? text.toString() : null;
                if (string == null) {
                    string = "";
                }
                addGameActivity.n(new Z(string, (Y) objectRef.element, (EnumC0055c0) objectRef2.element, 2));
                oVar.dismiss();
                break;
            case 1:
                GameDetailActivity gameDetailActivity = (GameDetailActivity) obj4;
                EnumC0420v1 enumC0420v1 = (EnumC0420v1) obj3;
                L1.a aVar = (L1.a) obj2;
                String str = (String) obj;
                ((DialogInterfaceC0245g) obj5).dismiss();
                View viewInflate = gameDetailActivity.getLayoutInflater().inflate(R.layout.dialog_engine_plugin_downloading, (ViewGroup) null);
                TextView textView = (TextView) viewInflate.findViewById(R.id.tv_plugin_dl_name);
                ProgressBar progressBar = (ProgressBar) viewInflate.findViewById(R.id.pb_plugin_download);
                TextView textView2 = (TextView) viewInflate.findViewById(R.id.tv_plugin_dl_percent);
                if (aVar == null) {
                    strA = enumC0420v1.f6383c;
                } else {
                    strA = B0.f395a[enumC0420v1.ordinal()] == 1 ? p064y1.W0.a(aVar) : p064y1.G1.b(aVar);
                    if (strA == null) {
                        strA = enumC0420v1.f6383c;
                    }
                }
                textView.setText(strA);
                O0.b bVar = new O0.b(gameDetailActivity, 0);
                C0240b c0240b = (C0240b) bVar.f4145c;
                c0240b.f4112t = viewInflate;
                c0240b.f4105m = false;
                DialogInterfaceC0245g dialogInterfaceC0245gC = bVar.c();
                Intrinsics.checkNotNullExpressionValue(dialogInterfaceC0245gC, "create(...)");
                Window window = dialogInterfaceC0245gC.getWindow();
                if (window != null) {
                    window.setBackgroundDrawableResource(android.R.color.transparent);
                }
                dialogInterfaceC0245gC.show();
                V1.A.c(LifecycleOwnerKt.getLifecycleScope(gameDetailActivity), null, new E0(dialogInterfaceC0245gC, enumC0420v1, str, gameDetailActivity, aVar, progressBar, textView2, strA, null), 3);
                break;
            default:
                C0425x0.c((EditText) obj4, (DialogInterfaceC0245g) obj2, (Function1) obj, (C0425x0) obj3, (p064y1.X0) obj5);
                break;
        }
    }
}
