package C1;

import android.util.Log;
import com.minhub.gamehub.data.protect.GameContentProtection;
import com.minhub.gamehub.game.KiriKiriGameActivity;
import com.minhub.gamehub.hub.HubActivity;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import org.godotengine.godot.GodotLib;
import org.tvp.kirikiri2.KR2Activity;
import p064y1.C0373f1;

/* JADX INFO: renamed from: C1.e1, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0062e1 implements Runnable {
    public final /* synthetic */ int b;

    public /* synthetic */ RunnableC0062e1(int i3) {
        this.b = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        String str2;
        boolean z2;
        switch (this.b) {
            case 0:
                int i3 = HubActivity.f3779j;
                GameContentProtection.INSTANCE.isUsable();
                return;
            case 1:
                GodotLib.onNightModeChanged();
                return;
            case 2:
                GodotLib.back();
                return;
            default:
                int i4 = KiriKiriGameActivity.f3720e;
                p066z1.k kVar = p066z1.k.f6452a;
                synchronized (kVar) {
                    ArrayList arrayList = p066z1.k.b;
                    if (arrayList.isEmpty()) {
                        str2 = "surface trace: nothing recorded";
                    } else {
                        String strO = CollectionsKt.o(arrayList, "\n", null, null, new C0373f1(17), 30);
                        ArrayList arrayListA = kVar.a();
                        if (arrayListA.isEmpty()) {
                            str = "  complete";
                        } else {
                            str = "  never reached: " + CollectionsKt.o(arrayListA, ", ", null, null, null, 62);
                        }
                        str2 = "surface trace:\n" + strO + "\n" + str;
                    }
                }
                Log.i("KiriKiriGame", "TVPCheckStartupArg was asked " + KR2Activity.getStartupPathReadCount() + " time(s)");
                synchronized (kVar) {
                    z2 = kVar.b(p066z1.j.f6447e) && !kVar.b(p066z1.j.f6449i);
                }
                if (z2) {
                    E.b.x("KiriKiri start-up stalled after the surface was created\n", str2, "KiriKiriGame");
                    return;
                } else {
                    Log.i("KiriKiriGame", str2);
                    return;
                }
        }
    }
}
