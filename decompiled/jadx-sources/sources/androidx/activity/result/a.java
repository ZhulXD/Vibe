package androidx.activity.result;

import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements ActivityResultCallback {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f2612c;

    public /* synthetic */ a(Function1 function1, int i3) {
        this.b = i3;
        this.f2612c = function1;
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public final void onActivityResult(Object obj) {
        switch (this.b) {
            case 0:
                ActivityResultCallerKt.registerForActivityResult$lambda$0(this.f2612c, obj);
                break;
            default:
                ActivityResultCallerKt.registerForActivityResult$lambda$1(this.f2612c, obj);
                break;
        }
    }
}
