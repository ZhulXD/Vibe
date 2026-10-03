package C1;

import android.app.Activity;
import android.content.DialogInterface;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.minhub.gamehub.R;
import com.minhub.gamehub.hub.AddGameActivity;
import java.io.File;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.godotengine.godot.utils.DialogUtils;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class E implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Activity f413c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f414d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f415e;
    public final /* synthetic */ Object f;
    public final /* synthetic */ Object g;

    public /* synthetic */ E(Activity activity, String str, Object obj, Object obj2, Object obj3, int i3) {
        this.b = i3;
        this.f413c = activity;
        this.f414d = str;
        this.f415e = obj;
        this.g = obj2;
        this.f = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        D1.b bVar;
        J j2;
        int i3;
        switch (this.b) {
            case 0:
                AddGameActivity addGameActivity = (AddGameActivity) this.f413c;
                File file = (File) this.f415e;
                D1.p scan = (D1.p) this.g;
                boolean z2 = scan.b;
                D1.b bVar2 = (D1.b) this.f;
                boolean zIsFinishing = addGameActivity.isFinishing();
                boolean zIsDestroyed = addGameActivity.isDestroyed();
                if (zIsFinishing || zIsDestroyed) {
                    bVar2.b();
                    addGameActivity.r(bVar2);
                    new Thread(new F(file, 1)).start();
                    return;
                }
                AtomicBoolean atomicBoolean = new AtomicBoolean(false);
                String str = this.f414d;
                I onPicked = new I(atomicBoolean, addGameActivity, str, file, bVar2);
                if (z2) {
                    bVar = bVar2;
                    J j3 = new J(atomicBoolean, bVar, addGameActivity, str, file, 0);
                    bVar = bVar;
                    addGameActivity = addGameActivity;
                    j2 = j3;
                } else {
                    bVar = bVar2;
                    j2 = null;
                }
                final AddGameActivity addGameActivity2 = addGameActivity;
                final K onCancel = new K(0, atomicBoolean, bVar, addGameActivity2, file);
                Intrinsics.checkNotNullParameter(addGameActivity2, "<this>");
                Intrinsics.checkNotNullParameter(scan, "scan");
                Intrinsics.checkNotNullParameter(onPicked, "onPicked");
                Intrinsics.checkNotNullParameter(onCancel, "onCancel");
                final H0.o dialog = new H0.o(addGameActivity2);
                View viewInflate = addGameActivity2.getLayoutInflater().inflate(R.layout.sheet_launch_file_picker, (ViewGroup) null);
                dialog.setContentView(viewInflate);
                Window window = dialog.getWindow();
                if (window != null) {
                    window.setBackgroundDrawableResource(android.R.color.transparent);
                }
                dialog.setOnShowListener(new L(dialog, 1));
                TextView textView = (TextView) viewInflate.findViewById(R.id.launchPickHint);
                D1.o hint = scan.f853d;
                Intrinsics.checkNotNullParameter(hint, "hint");
                switch (hint.ordinal()) {
                    case 0:
                        i3 = R.string.launch_pick_hint_kiri;
                        break;
                    case 1:
                        i3 = R.string.launch_pick_hint_html;
                        break;
                    case 2:
                        i3 = R.string.launch_pick_hint_mz;
                        break;
                    case 3:
                        i3 = R.string.launch_pick_hint_mv;
                        break;
                    case 4:
                        i3 = R.string.launch_pick_hint_tyrano;
                        break;
                    case 5:
                        i3 = R.string.launch_pick_hint_renpy;
                        break;
                    case 6:
                        i3 = R.string.launch_pick_hint_godot;
                        break;
                    case 7:
                        i3 = R.string.launch_pick_hint_vxace;
                        break;
                    case 8:
                        i3 = R.string.launch_pick_hint_kiri_packed;
                        break;
                    case 9:
                        i3 = R.string.launch_pick_hint_vxace_packed;
                        break;
                    case 10:
                        i3 = R.string.launch_pick_hint_none;
                        break;
                    default:
                        throw new NoWhenBranchMatchedException();
                }
                textView.setText(addGameActivity2.getString(i3));
                RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R.id.launchPickList);
                recyclerView.setLayoutManager(new LinearLayoutManager(1));
                recyclerView.setAdapter(new C0076j0(scan.f851a, new A1.r(dialog, addGameActivity2, onPicked, 1)));
                Button button = (Button) viewInflate.findViewById(R.id.launchPickWizardButton);
                if (!z2 || j2 == null) {
                    button.setVisibility(8);
                } else {
                    button.setVisibility(0);
                    button.setOnClickListener(new ViewOnClickListenerC0113w(dialog, addGameActivity2, j2));
                }
                ((Button) viewInflate.findViewById(R.id.launchPickCancelButton)).setOnClickListener(new ViewOnClickListenerC0110v(dialog, 1));
                dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: C1.P
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        addGameActivity2.C(dialog);
                        onCancel.invoke();
                    }
                });
                Intrinsics.checkNotNullParameter(dialog, "dialog");
                List importDialogs = addGameActivity2.f3742h;
                Intrinsics.checkNotNullExpressionValue(importDialogs, "importDialogs");
                importDialogs.add(dialog);
                dialog.show();
                return;
            case 1:
                AddGameActivity addGameActivity3 = (AddGameActivity) this.f413c;
                File file2 = (File) this.f415e;
                D1.l lVar = (D1.l) this.g;
                O.c(addGameActivity3, this.f414d, file2, lVar.b, (D1.b) this.f);
                return;
            default:
                DialogUtils.Companion.showDialog$lambda$4(this.f413c, this.f414d, (String) this.f415e, (String[]) this.g, (Ref.ObjectRef) this.f);
                return;
        }
    }
}
