package C1;

import android.content.DialogInterface;
import android.widget.Toast;
import androidx.lifecycle.ViewModelKt;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.data.Save;
import com.minhub.gamehub.editor.ButtonEditorActivity;
import com.minhub.gamehub.editor.EditModeOverlay;
import com.minhub.gamehub.hub.GameDetailActivity;
import java.io.File;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import p064y1.C0425x0;
import p064y1.RunnableC0390l0;

/* JADX INFO: renamed from: C1.o0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class DialogInterfaceOnClickListenerC0091o0 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f663c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f664d;

    public /* synthetic */ DialogInterfaceOnClickListenerC0091o0(int i3, Object obj, Object obj2) {
        this.b = i3;
        this.f663c = obj;
        this.f664d = obj2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i3) {
        int i4 = this.b;
        p058w1.c cVar = null;
        Object obj = this.f664d;
        Object obj2 = this.f663c;
        switch (i4) {
            case 0:
                GameDetailActivity gameDetailActivity = (GameDetailActivity) obj2;
                Game g = (Game) obj;
                int i5 = GameDetailActivity.f3762w;
                Z0 z0Q = gameDetailActivity.q();
                z0Q.getClass();
                Intrinsics.checkNotNullParameter(g, "g");
                V1.A.c(ViewModelKt.getViewModelScope(z0Q), V1.H.b, new Y0(z0Q, g, null, 0), 2);
                gameDetailActivity.finish();
                break;
            case 1:
                GameDetailActivity gameDetailActivity2 = (GameDetailActivity) obj2;
                if (!gameDetailActivity2.p().deleteSave((Save) obj)) {
                    Toast.makeText(gameDetailActivity2, gameDetailActivity2.getString(R.string.toast_delete_failed), 0).show();
                } else {
                    Toast.makeText(gameDetailActivity2, gameDetailActivity2.getString(R.string.toast_deleted), 0).show();
                    R0.d(gameDetailActivity2);
                }
                break;
            case 2:
                ButtonEditorActivity buttonEditorActivity = (ButtonEditorActivity) obj2;
                String buttonId = (String) obj;
                p058w1.c cVar2 = buttonEditorActivity.f3666e;
                if (cVar2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("b");
                    cVar2 = null;
                }
                EditModeOverlay editModeOverlay = (EditModeOverlay) cVar2.f5652i;
                Intrinsics.checkNotNullParameter(buttonId, "buttonId");
                LinkedHashMap linkedHashMap = editModeOverlay.b;
                p061x1.h hVar = (p061x1.h) linkedHashMap.get(buttonId);
                if (hVar != null) {
                    editModeOverlay.removeView(hVar.b);
                    linkedHashMap.remove(buttonId);
                    if (Intrinsics.areEqual(editModeOverlay.f3669c, buttonId)) {
                        editModeOverlay.f3669c = null;
                    }
                    Function1 function1 = editModeOverlay.f3671e;
                    if (function1 != null) {
                        function1.invoke(editModeOverlay.getCurrentConfigs());
                    }
                }
                buttonEditorActivity.g = null;
                buttonEditorActivity.m(null);
                Toast.makeText(buttonEditorActivity, buttonEditorActivity.getString(R.string.toast_button_deleted), 0).show();
                break;
            case 3:
                ButtonEditorActivity buttonEditorActivity2 = (ButtonEditorActivity) obj;
                int i6 = ButtonEditorActivity.f3665i;
                String str = ((String[]) obj2)[i3];
                Locale locale = Locale.ROOT;
                String lowerCase = str.toLowerCase(locale);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                String str2 = "btn_" + lowerCase + "_" + System.currentTimeMillis();
                String lowerCase2 = str.toLowerCase(locale);
                Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
                p061x1.a config = new p061x1.a(str2, str, lowerCase2, 0.5f, 0.5f, 56, 56, "CIRCLE", "#666666", 0.8f, true);
                p058w1.c cVar3 = buttonEditorActivity2.f3666e;
                if (cVar3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("b");
                    cVar3 = null;
                }
                EditModeOverlay editModeOverlay2 = (EditModeOverlay) cVar3.f5652i;
                Intrinsics.checkNotNullParameter(config, "config");
                p061x1.h hVarB = editModeOverlay2.b(config, RangesKt.coerceAtLeast(editModeOverlay2.getWidth(), 1.0f), RangesKt.coerceAtLeast(editModeOverlay2.getHeight(), 1.0f));
                editModeOverlay2.b.put(str2, hVarB);
                editModeOverlay2.addView(hVarB.b);
                editModeOverlay2.e(str2);
                Function1 function2 = editModeOverlay2.f3671e;
                if (function2 != null) {
                    function2.invoke(editModeOverlay2.getCurrentConfigs());
                }
                p058w1.c cVar4 = buttonEditorActivity2.f3666e;
                if (cVar4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("b");
                } else {
                    cVar = cVar4;
                }
                buttonEditorActivity2.f = ((EditModeOverlay) cVar.f5652i).getCurrentConfigs();
                Toast.makeText(buttonEditorActivity2, buttonEditorActivity2.getString(R.string.toast_button_added, str), 0).show();
                break;
            default:
                new Thread(new RunnableC0390l0((C0425x0) obj2, (File) ((List) obj).get(i3), 1)).start();
                break;
        }
    }
}
