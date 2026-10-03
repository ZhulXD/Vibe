package A1;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class A extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a2.e f41a;
    public final /* synthetic */ Y b;

    public A(a2.e eVar, Y y2) {
        this.f41a = eVar;
        this.b = y2;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context c3, Intent intent) {
        String stringExtra;
        String stringExtra2;
        String stringExtra3;
        int intExtra;
        Object objM9constructorimpl;
        L0 l2;
        Intrinsics.checkNotNullParameter(c3, "c");
        Intrinsics.checkNotNullParameter(intent, "intent");
        String action = intent.getAction();
        if (action == null || (stringExtra = intent.getStringExtra("sessionId")) == null) {
            return;
        }
        String str = !StringsKt.isBlank(stringExtra) ? stringExtra : null;
        if (str == null || (stringExtra2 = intent.getStringExtra("sessionToken")) == null) {
            return;
        }
        String str2 = !StringsKt.isBlank(stringExtra2) ? stringExtra2 : null;
        if (str2 == null || (stringExtra3 = intent.getStringExtra("processName")) == null) {
            return;
        }
        String str3 = !StringsKt.isBlank(stringExtra3) ? stringExtra3 : null;
        if (str3 != null && (intExtra = intent.getIntExtra("pid", 0)) > 0) {
            long longExtra = intent.getLongExtra("issuedAt", 0L);
            long longExtra2 = intent.getLongExtra("messageTimestamp", 0L);
            if (D.a(longExtra, System.currentTimeMillis()) && D.a(longExtra2, System.currentTimeMillis())) {
                String stringExtra4 = intent.getStringExtra("state");
                if (stringExtra4 != null) {
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        objM9constructorimpl = Result.m9constructorimpl(L0.valueOf(stringExtra4));
                    } catch (Throwable th) {
                        Result.Companion companion2 = Result.INSTANCE;
                        objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
                    }
                    if (Result.m15isFailureimpl(objM9constructorimpl)) {
                        objM9constructorimpl = null;
                    }
                    l2 = (L0) objM9constructorimpl;
                } else {
                    l2 = null;
                }
                V1.A.c(this.f41a, null, new C0044z(this.b, str, str2, str3, intExtra, action, l2, goAsync(), null), 3);
            }
        }
    }
}
