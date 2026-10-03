package androidx.lifecycle;

import V1.H;
import V1.InterfaceC0207x;
import V1.q0;
import a2.p;
import c2.d;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\"\u0014\u0010\u0001\u001a\u00020\u00008\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0001\u0010\u0002\"\u0015\u0010\u0007\u001a\u00020\u0004*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"", "JOB_KEY", "Ljava/lang/String;", "Landroidx/lifecycle/ViewModel;", "LV1/x;", "getViewModelScope", "(Landroidx/lifecycle/ViewModel;)LV1/x;", "viewModelScope", "lifecycle-viewmodel-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class ViewModelKt {
    private static final String JOB_KEY = "androidx.lifecycle.ViewModelCoroutineScope.JOB_KEY";

    public static final InterfaceC0207x getViewModelScope(ViewModel viewModel) {
        Intrinsics.checkNotNullParameter(viewModel, "<this>");
        InterfaceC0207x interfaceC0207x = (InterfaceC0207x) viewModel.getTag(JOB_KEY);
        if (interfaceC0207x != null) {
            return interfaceC0207x;
        }
        q0 q0Var = new q0();
        d dVar = H.f2265a;
        Object tagIfAbsent = viewModel.setTagIfAbsent(JOB_KEY, new CloseableCoroutineScope(CoroutineContext.Element.DefaultImpls.plus(q0Var, p.f2593a.f2306d)));
        Intrinsics.checkNotNullExpressionValue(tagIfAbsent, "setTagIfAbsent(\n        …Main.immediate)\n        )");
        return (InterfaceC0207x) tagIfAbsent;
    }
}
