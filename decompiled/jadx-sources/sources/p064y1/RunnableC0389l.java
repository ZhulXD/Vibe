package p064y1;

import Q1.d;
import android.graphics.Color;
import android.widget.TextView;
import android.widget.Toast;
import com.minhub.gamehub.R;
import com.minhub.gamehub.game.GameActivity;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: renamed from: y1.l, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0389l implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GameActivity f6273c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ d f6274d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f6275e;

    public /* synthetic */ RunnableC0389l(GameActivity gameActivity, d dVar, String str, int i3) {
        this.b = i3;
        this.f6273c = gameActivity;
        this.f6274d = dVar;
        this.f6275e = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object objM9constructorimpl;
        int i3 = this.b;
        String str = this.f6275e;
        d dVar = this.f6274d;
        GameActivity gameActivity = this.f6273c;
        switch (i3) {
            case 0:
                if (gameActivity.y(dVar)) {
                    Toast.makeText(gameActivity, str == null ? gameActivity.getString(R.string.bug_report_sent_ok) : Intrinsics.areEqual(str, "outdated") ? gameActivity.getString(R.string.bug_report_outdated) : gameActivity.getString(R.string.bug_report_sent_fail, str), 1).show();
                    break;
                }
                break;
            default:
                int i4 = GameActivity.f3676L;
                if (gameActivity.y(dVar)) {
                    if (str == null || str.length() == 0) {
                        gameActivity.u().f5704o0.setVisibility(8);
                    } else {
                        try {
                            Result.Companion companion = Result.INSTANCE;
                            objM9constructorimpl = Result.m9constructorimpl(Integer.valueOf(Color.parseColor(S1.d.h(gameActivity))));
                        } catch (Throwable th) {
                            Result.Companion companion2 = Result.INSTANCE;
                            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
                        }
                        Integer numValueOf = Integer.valueOf(Color.parseColor("#EF4444"));
                        if (Result.m15isFailureimpl(objM9constructorimpl)) {
                            objM9constructorimpl = numValueOf;
                        }
                        int iIntValue = ((Number) objM9constructorimpl).intValue();
                        float fCoerceIn = RangesKt.coerceIn(S1.d.j(gameActivity), 10, 32);
                        TextView textView = gameActivity.u().f5704o0;
                        textView.setText(str);
                        textView.setTextColor(iIntValue);
                        textView.setTextSize(2, fCoerceIn);
                        textView.setVisibility(0);
                    }
                }
                break;
        }
    }
}
