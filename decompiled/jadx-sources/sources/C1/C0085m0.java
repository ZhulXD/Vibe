package C1;

import android.content.DialogInterface;
import android.net.Uri;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.Toast;
import androidx.activity.result.ActivityResultCallback;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.data.GameEngine;
import com.minhub.gamehub.data.GameKt;
import com.minhub.gamehub.data.Save;
import com.minhub.gamehub.data.SaveRepository;
import com.minhub.gamehub.hub.GameDetailActivity;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import p011e.C0240b;

/* JADX INFO: renamed from: C1.m0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0085m0 implements ActivityResultCallback, OnApplyWindowInsetsListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GameDetailActivity f652c;

    public /* synthetic */ C0085m0(GameDetailActivity gameDetailActivity, int i3) {
        this.b = i3;
        this.f652c = gameDetailActivity;
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        GameEngine engineEnum;
        int i3 = this.b;
        final GameDetailActivity gameDetailActivity = this.f652c;
        final Uri sourceUri = (Uri) obj;
        switch (i3) {
            case 0:
                int i4 = GameDetailActivity.f3762w;
                if (sourceUri != null) {
                    Intrinsics.checkNotNullParameter(gameDetailActivity, "<this>");
                    Intrinsics.checkNotNullParameter(sourceUri, "sourceUri");
                    Intrinsics.checkNotNullParameter(gameDetailActivity, "<this>");
                    Game game = gameDetailActivity.g;
                    if (game == null || (engineEnum = GameKt.getEngineEnum(game)) == null || !SaveRepository.INSTANCE.supportsSaveManagement(engineEnum)) {
                        Toast.makeText(gameDetailActivity, gameDetailActivity.getString(R.string.saves_unsupported_engine), 1).show();
                    } else {
                        final boolean zIsSaveZip = gameDetailActivity.p().isSaveZip(sourceUri);
                        String[] strArr = {gameDetailActivity.getString(R.string.format_slot_name, 1), gameDetailActivity.getString(R.string.format_slot_name, 2), gameDetailActivity.getString(R.string.format_slot_name, 3), gameDetailActivity.getString(R.string.format_slot_name, 4), gameDetailActivity.getString(R.string.format_slot_name, 5), gameDetailActivity.getString(R.string.slot_quick_save)};
                        O0.b bVar = new O0.b(gameDetailActivity, 0);
                        String string = gameDetailActivity.getString(R.string.dialog_import_slot_title);
                        C0240b c0240b = (C0240b) bVar.f4145c;
                        c0240b.f4098d = string;
                        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: C1.P0
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i5) {
                                final int i6 = i5 == 5 ? 999 : i5 + 1;
                                final GameDetailActivity gameDetailActivity2 = gameDetailActivity;
                                String string2 = i6 == 999 ? gameDetailActivity2.getString(R.string.slot_quick_save) : gameDetailActivity2.getString(R.string.format_slot_name, Integer.valueOf(i6));
                                Intrinsics.checkNotNull(string2);
                                List list = gameDetailActivity2.f3767k;
                                final Uri uri = sourceUri;
                                final boolean z2 = zIsSaveZip;
                                if (list == null || !list.isEmpty()) {
                                    Iterator it = list.iterator();
                                    while (it.hasNext()) {
                                        if (((Save) it.next()).getSlotNumber() == i6) {
                                            O0.b bVar2 = new O0.b(gameDetailActivity2, 0);
                                            C0240b c0240b2 = (C0240b) bVar2.f4145c;
                                            c0240b2.f4098d = gameDetailActivity2.getString(R.string.dialog_import_overwrite_title);
                                            c0240b2.f = gameDetailActivity2.getString(R.string.dialog_import_overwrite_message, string2);
                                            bVar2.i(gameDetailActivity2.getString(R.string.dialog_import_overwrite_confirm), new DialogInterface.OnClickListener() { // from class: C1.Q0
                                                @Override // android.content.DialogInterface.OnClickListener
                                                public final void onClick(DialogInterface dialogInterface2, int i7) {
                                                    R0.a(gameDetailActivity2, uri, i6, z2);
                                                }
                                            });
                                            bVar2.g(gameDetailActivity2.getString(R.string.dialog_cancel), null);
                                            bVar2.e();
                                            return;
                                        }
                                    }
                                }
                                R0.a(gameDetailActivity2, uri, i6, z2);
                            }
                        };
                        c0240b.f4109q = strArr;
                        c0240b.f4111s = onClickListener;
                        bVar.g(gameDetailActivity.getString(R.string.dialog_cancel), null);
                        bVar.e();
                    }
                }
                break;
            case 1:
                int i5 = GameDetailActivity.f3762w;
                if (sourceUri != null) {
                    Intrinsics.checkNotNullParameter(gameDetailActivity, "<this>");
                    Intrinsics.checkNotNullParameter(sourceUri, "destinationUri");
                    Save save = gameDetailActivity.f3768l;
                    if (save != null) {
                        Toast.makeText(gameDetailActivity, gameDetailActivity.p().exportSaveAsZipToDirectory(save, sourceUri) ? gameDetailActivity.getString(R.string.toast_export_success, gameDetailActivity.p().zipFileNameFor(save)) : gameDetailActivity.getString(R.string.toast_export_failed), 0).show();
                        gameDetailActivity.f3768l = null;
                        break;
                    }
                }
                break;
            default:
                int i6 = GameDetailActivity.f3762w;
                if (sourceUri != null) {
                    Intrinsics.checkNotNullParameter(gameDetailActivity, "<this>");
                    Intrinsics.checkNotNullParameter(sourceUri, "destinationUri");
                    Save save2 = gameDetailActivity.f3768l;
                    if (save2 != null) {
                        Toast.makeText(gameDetailActivity, gameDetailActivity.p().exportSaveAsZip(save2, sourceUri) ? gameDetailActivity.getString(R.string.toast_export_success, save2.getFileName()) : gameDetailActivity.getString(R.string.toast_export_failed), 0).show();
                        gameDetailActivity.f3768l = null;
                        break;
                    }
                }
                break;
        }
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat insets) {
        int i3 = GameDetailActivity.f3762w;
        Intrinsics.checkNotNullParameter(view, "<unused var>");
        Intrinsics.checkNotNullParameter(insets, "insets");
        Insets insets2 = insets.getInsets(WindowInsetsCompat.Type.systemBars());
        Intrinsics.checkNotNullExpressionValue(insets2, "getInsets(...)");
        FrameLayout heroFrame = this.f652c.n().f5742n;
        Intrinsics.checkNotNullExpressionValue(heroFrame, "heroFrame");
        heroFrame.setPadding(heroFrame.getPaddingLeft(), insets2.top, heroFrame.getPaddingRight(), heroFrame.getPaddingBottom());
        return insets;
    }
}
