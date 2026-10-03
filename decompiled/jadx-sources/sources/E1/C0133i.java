package E1;

import android.content.Context;
import android.content.Intent;
import android.widget.CompoundButton;
import androidx.activity.result.ActivityResultLauncher;
import com.minhub.gamehub.hub.AppLockActivity;
import com.minhub.gamehub.hub.SetupAppLockActivity;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: E1.i, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0133i implements CompoundButton.OnCheckedChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f892a;
    public final /* synthetic */ Context b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ n f893c;

    public /* synthetic */ C0133i(Context context, n nVar, int i3) {
        this.f892a = i3;
        this.b = context;
        this.f893c = nVar;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
        int i3 = this.f892a;
        n nVar = this.f893c;
        Context ctx = this.b;
        switch (i3) {
            case 0:
                boolean z3 = S1.d.b(ctx).length() > 0;
                if (!z2) {
                    if (!z3) {
                        S1.d.v(ctx, false);
                        nVar.b(ctx);
                    } else {
                        p058w1.i iVar = nVar.b;
                        Intrinsics.checkNotNull(iVar);
                        iVar.f5810h.setChecked(true);
                        nVar.f900c = "disable";
                        ActivityResultLauncher activityResultLauncher = nVar.f901d;
                        int i4 = AppLockActivity.f3759i;
                        Intrinsics.checkNotNullParameter(ctx, "ctx");
                        activityResultLauncher.launch(new Intent(ctx, (Class<?>) AppLockActivity.class));
                    }
                } else if (!z3) {
                    p058w1.i iVar2 = nVar.b;
                    Intrinsics.checkNotNull(iVar2);
                    iVar2.f5810h.setChecked(false);
                    ActivityResultLauncher activityResultLauncher2 = nVar.f902e;
                    int i5 = SetupAppLockActivity.f3805j;
                    activityResultLauncher2.launch(com.bumptech.glide.c.j(ctx));
                } else {
                    S1.d.v(ctx, true);
                    nVar.b(ctx);
                }
                break;
            default:
                boolean z4 = S1.d.b(ctx).length() > 0;
                if (!z2) {
                    if (!z4) {
                        S1.d.v(ctx, false);
                        nVar.b(ctx);
                    } else {
                        p058w1.i iVar3 = nVar.b;
                        Intrinsics.checkNotNull(iVar3);
                        iVar3.f5810h.setChecked(true);
                        nVar.f900c = "disable";
                        ActivityResultLauncher activityResultLauncher3 = nVar.f901d;
                        int i6 = AppLockActivity.f3759i;
                        Intrinsics.checkNotNullParameter(ctx, "ctx");
                        activityResultLauncher3.launch(new Intent(ctx, (Class<?>) AppLockActivity.class));
                    }
                } else if (!z4) {
                    p058w1.i iVar4 = nVar.b;
                    Intrinsics.checkNotNull(iVar4);
                    iVar4.f5810h.setChecked(false);
                    ActivityResultLauncher activityResultLauncher4 = nVar.f902e;
                    int i7 = SetupAppLockActivity.f3805j;
                    activityResultLauncher4.launch(com.bumptech.glide.c.j(ctx));
                } else {
                    S1.d.v(ctx, true);
                    nVar.b(ctx);
                }
                break;
        }
    }
}
