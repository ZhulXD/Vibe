package C1;

import android.content.Intent;
import android.net.Uri;
import android.widget.Toast;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.data.GameEngine;
import com.minhub.gamehub.data.GameKt;
import com.minhub.gamehub.data.Save;
import com.minhub.gamehub.data.SaveRepository;
import com.minhub.gamehub.hub.GameDetailActivity;
import java.io.File;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class R0 {
    public static final void a(GameDetailActivity gameDetailActivity, Uri sourceUri, int i3, boolean z2) {
        Intrinsics.checkNotNullParameter(gameDetailActivity, "<this>");
        Intrinsics.checkNotNullParameter(sourceUri, "sourceUri");
        Game game = gameDetailActivity.g;
        if (game == null) {
            return;
        }
        boolean zImportSaveFromZip = z2 ? gameDetailActivity.p().importSaveFromZip(game, sourceUri, i3) : gameDetailActivity.p().importSave(game, sourceUri, i3);
        String string = i3 == 999 ? gameDetailActivity.getString(R.string.slot_quick_save) : gameDetailActivity.getString(R.string.format_slot_name, Integer.valueOf(i3));
        Intrinsics.checkNotNull(string);
        Toast.makeText(gameDetailActivity, zImportSaveFromZip ? gameDetailActivity.getString(R.string.toast_import_success, string) : gameDetailActivity.getString(R.string.toast_import_failed), 0).show();
        if (zImportSaveFromZip) {
            d(gameDetailActivity);
        }
    }

    public static final boolean b(GameDetailActivity gameDetailActivity) {
        Intrinsics.checkNotNullParameter(gameDetailActivity, "<this>");
        return new Intent("android.intent.action.OPEN_DOCUMENT_TREE").resolveActivity(gameDetailActivity.getPackageManager()) != null;
    }

    public static final void c(GameDetailActivity gameDetailActivity, h2 mode, Save save) {
        Intrinsics.checkNotNullParameter(gameDetailActivity, "<this>");
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.checkNotNullParameter(save, "save");
        int iOrdinal = mode.ordinal();
        if (iOrdinal == 0) {
            gameDetailActivity.f3777u.launch(null);
            return;
        }
        if (iOrdinal == 1) {
            gameDetailActivity.f3778v.launch("minhub-save-" + save.getFileName() + ".zip");
            return;
        }
        if (iOrdinal != 2) {
            throw new NoWhenBranchMatchedException();
        }
        File fileExportSaveAsZipToAppPrivate = gameDetailActivity.p().exportSaveAsZipToAppPrivate(save);
        String string = fileExportSaveAsZipToAppPrivate != null ? gameDetailActivity.getString(R.string.toast_export_success, fileExportSaveAsZipToAppPrivate.getAbsolutePath()) : gameDetailActivity.getString(R.string.toast_export_failed);
        Intrinsics.checkNotNull(string);
        Toast.makeText(gameDetailActivity, string, 1).show();
        gameDetailActivity.f3768l = null;
    }

    public static final void d(GameDetailActivity gameDetailActivity) {
        GameEngine engineEnum;
        Intrinsics.checkNotNullParameter(gameDetailActivity, "<this>");
        Game game = gameDetailActivity.g;
        if (game == null) {
            return;
        }
        Intrinsics.checkNotNullParameter(gameDetailActivity, "<this>");
        Game game2 = gameDetailActivity.g;
        if (game2 == null || (engineEnum = GameKt.getEngineEnum(game2)) == null || !SaveRepository.INSTANCE.supportsSaveManagement(engineEnum)) {
            gameDetailActivity.n().f5749u.setVisibility(8);
            gameDetailActivity.n().f5734d.setVisibility(8);
            gameDetailActivity.n().f5723G.setVisibility(0);
            gameDetailActivity.n().f5723G.setText(gameDetailActivity.getString(R.string.saves_unsupported_engine));
            gameDetailActivity.n().K.setText(gameDetailActivity.getString(R.string.format_slot_count, 0));
            return;
        }
        gameDetailActivity.n().f5734d.setVisibility(0);
        List<Save> listScanSaves = gameDetailActivity.p().scanSaves(game);
        Intrinsics.checkNotNullParameter(listScanSaves, "<set-?>");
        gameDetailActivity.f3767k = listScanSaves;
        g2 g2Var = gameDetailActivity.f3766j;
        if (g2Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("saveAdapter");
            g2Var = null;
        }
        g2Var.k(gameDetailActivity.f3767k);
        if (gameDetailActivity.f3767k.isEmpty()) {
            gameDetailActivity.n().f5723G.setVisibility(0);
            gameDetailActivity.n().f5749u.setVisibility(8);
        } else {
            gameDetailActivity.n().f5723G.setVisibility(8);
            gameDetailActivity.n().f5749u.setVisibility(0);
        }
        gameDetailActivity.n().K.setText(gameDetailActivity.getString(R.string.format_slot_count, Integer.valueOf(gameDetailActivity.f3767k.size())));
        if (game.getSaveCount() != gameDetailActivity.f3767k.size()) {
            Game gameCopy$default = Game.copy$default(game, 0, null, null, null, null, null, null, null, null, null, null, false, 0, 0L, gameDetailActivity.f3767k.size(), null, 0, null, null, null, null, null, false, 0L, null, null, null, 134201343, null);
            gameDetailActivity.g = gameCopy$default;
            gameDetailActivity.q().a(gameCopy$default);
        }
    }
}
