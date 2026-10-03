package p047s1;

import A1.H;
import android.app.Activity;
import android.content.Context;
import android.webkit.ValueCallback;
import android.widget.Toast;
import com.minhub.gamehub.R;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import p064y1.C0418v;
import u1.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements ValueCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5316a;
    public final /* synthetic */ Object b;

    public /* synthetic */ b(int i3, Object obj) {
        this.f5316a = i3;
        this.b = obj;
    }

    @Override // android.webkit.ValueCallback
    public final void onReceiveValue(Object obj) {
        String string;
        Integer intOrNull;
        switch (this.f5316a) {
            case 0:
                Context context = (Context) ((F.b) this.b).f943c;
                Toast.makeText(context, context.getString(R.string.toast_applied, "Scan Stores"), 0).show();
                break;
            case 1:
                a aVar = (a) this.b;
                Activity activity = aVar.f5423a;
                String str = (String) obj;
                int iIntValue = (str == null || (string = StringsKt.trim((CharSequence) str).toString()) == null || (intOrNull = StringsKt.toIntOrNull(string)) == null) ? -1 : intOrNull.intValue();
                if (!activity.isFinishing() && !activity.isDestroyed()) {
                    if (iIntValue < 0) {
                        Toast.makeText(activity, R.string.tyrano_cheat_not_ready, 0).show();
                    } else if (iIntValue == 0) {
                        Toast.makeText(activity, R.string.godot_cheat_nothing, 0).show();
                    } else {
                        Toast.makeText(activity, activity.getString(R.string.tyrano_cheat_applied, Integer.valueOf(iIntValue)), 1).show();
                    }
                    aVar.b.invoke();
                    break;
                }
                break;
            case 2:
                ((H) this.b).invoke(Boolean.valueOf(Intrinsics.areEqual((String) obj, "true")));
                break;
            default:
                ((C0418v) this.b).invoke(Boolean.valueOf(Intrinsics.areEqual((String) obj, "true")));
                break;
        }
    }

    public /* synthetic */ b(F.b bVar, a aVar) {
        this.f5316a = 0;
        this.b = bVar;
    }
}
