package E1;

import android.content.Context;
import android.widget.CompoundButton;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: E1.c, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0127c implements CompoundButton.OnCheckedChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f884a;
    public final /* synthetic */ Context b;

    public /* synthetic */ C0127c(Context context, int i3) {
        this.f884a = i3;
        this.b = context;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
        int i3 = this.f884a;
        Context context = this.b;
        switch (i3) {
            case 0:
                Set set = S1.d.f2060a;
                Intrinsics.checkNotNullParameter(context, "<this>");
                context.getSharedPreferences("minhub_prefs", 0).edit().putBoolean("gamepad_vibration", z2).apply();
                break;
            case 1:
                Set set2 = S1.d.f2060a;
                Intrinsics.checkNotNullParameter(context, "<this>");
                context.getSharedPreferences("minhub_prefs", 0).edit().putBoolean("gamepad_automap", z2).apply();
                break;
            case 2:
                S1.d.u(context, z2);
                break;
            case 3:
                S1.d.u(context, z2);
                break;
            case 4:
                Set set3 = S1.d.f2060a;
                Intrinsics.checkNotNullParameter(context, "<this>");
                context.getSharedPreferences("minhub_prefs", 0).edit().putBoolean("fullscreen", z2).apply();
                break;
            case 5:
                Set set4 = S1.d.f2060a;
                Intrinsics.checkNotNullParameter(context, "<this>");
                context.getSharedPreferences("minhub_prefs", 0).edit().putBoolean("vibration", z2).apply();
                break;
            case 6:
                Set set5 = S1.d.f2060a;
                Intrinsics.checkNotNullParameter(context, "<this>");
                context.getSharedPreferences("minhub_prefs", 0).edit().putBoolean("auto_save", z2).apply();
                break;
            case 7:
                Intrinsics.checkNotNullParameter(context, "context");
                context.getSharedPreferences("minhub_prefs", 0).edit().putBoolean("renpy_memory_saver", z2).apply();
                break;
            default:
                Set set6 = S1.d.f2060a;
                Intrinsics.checkNotNullParameter(context, "<this>");
                context.getSharedPreferences("minhub_prefs", 0).edit().putBoolean("frame_skip", z2).apply();
                break;
        }
    }
}
