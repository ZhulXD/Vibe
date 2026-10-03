package p064y1;

import A1.C0035p;
import C1.ViewOnClickListenerC0122z;
import C1.g2;
import E1.H;
import S1.d;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.provider.MediaStore;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.game.VxAceGameActivity;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.RangesKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import org.renpy.android.b;
import p011e.C0240b;
import p011e.DialogInterfaceC0245g;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class k2 {
    public static final void a(VxAceGameActivity vxAceGameActivity, View view) {
        ((TextView) view.findViewById(R.id.btn_menu_fps)).setText(vxAceGameActivity.getString(vxAceGameActivity.getFpsEnabled() ? R.string.fps_on : R.string.fps_off));
        TextView textView = VxAceGameActivity.tvFps;
        if (textView != null) {
            textView.setVisibility(vxAceGameActivity.getFpsEnabled() ? 0 : 8);
        }
    }

    public static final void b(VxAceGameActivity vxAceGameActivity) {
        Intrinsics.checkNotNullParameter(vxAceGameActivity, "<this>");
        View menuOverlay = vxAceGameActivity.getMenuOverlay();
        if (menuOverlay != null) {
            menuOverlay.setVisibility(8);
        }
    }

    public static final void c(VxAceGameActivity vxAceGameActivity) {
        Intrinsics.checkNotNullParameter(vxAceGameActivity, "<this>");
        View loadSaveOverlay = vxAceGameActivity.getLoadSaveOverlay();
        if (loadSaveOverlay != null) {
            loadSaveOverlay.setVisibility(8);
        }
    }

    public static final void d(VxAceGameActivity vxAceGameActivity, e2 entry) {
        String strReplace;
        String title;
        String strTake;
        Intrinsics.checkNotNullParameter(vxAceGameActivity, "<this>");
        Intrinsics.checkNotNullParameter(entry, "entry");
        switch (entry.ordinal()) {
            case 0:
                b(vxAceGameActivity);
                C0385j1 vxControlsCoordinator = vxAceGameActivity.getVxControlsCoordinator();
                if (vxControlsCoordinator != null) {
                    vxControlsCoordinator.h();
                    return;
                }
                return;
            case 1:
                b(vxAceGameActivity);
                C0385j1 vxControlsCoordinator2 = vxAceGameActivity.getVxControlsCoordinator();
                if (vxControlsCoordinator2 != null) {
                    vxControlsCoordinator2.d();
                    return;
                }
                return;
            case 2:
                b(vxAceGameActivity);
                vxAceGameActivity.setMCheatFabVisible$app_release(!vxAceGameActivity.getMCheatFabVisible());
                ImageView mCheatFab = vxAceGameActivity.getMCheatFab();
                if (mCheatFab != null) {
                    mCheatFab.setVisibility(vxAceGameActivity.getMCheatFabVisible() ? 0 : 8);
                    return;
                }
                return;
            case 3:
                b(vxAceGameActivity);
                vxAceGameActivity.queueRuntimeScript$app_release(StringsKt.trimIndent("\n        begin\n          Dir.mkdir(\"Save\") unless FileTest.directory?(\"Save\")\n        rescue\n        end\n        begin\n          if DataManager.save_game(" + (RangesKt.coerceAtLeast(1, 1) - 1) + ")\n            Sound.play_save rescue nil\n          else\n            Sound.play_buzzer rescue nil\n          end\n        rescue\n          Sound.play_buzzer rescue nil\n        end\n    "));
                Toast.makeText(vxAceGameActivity, vxAceGameActivity.getString(R.string.save_ok), 0).show();
                new Handler(vxAceGameActivity.getMainLooper()).postDelayed(new W1(vxAceGameActivity, 2), 800L);
                return;
            case 4:
                b(vxAceGameActivity);
                Intrinsics.checkNotNullParameter(vxAceGameActivity, "<this>");
                Game currentGame = vxAceGameActivity.getCurrentGame();
                if (currentGame == null) {
                    return;
                }
                Intrinsics.checkNotNullParameter(vxAceGameActivity, "<this>");
                View loadSaveOverlay = vxAceGameActivity.getLoadSaveOverlay();
                if (loadSaveOverlay == null) {
                    ViewGroup safeLayout$app_release = vxAceGameActivity.getSafeLayout$app_release();
                    if (safeLayout$app_release == null) {
                        throw new IllegalStateException("SDL layout missing");
                    }
                    View viewInflate = LayoutInflater.from(vxAceGameActivity).inflate(R.layout.view_vxace_load_save_overlay, safeLayout$app_release, false);
                    vxAceGameActivity.setLoadSaveAdapter$app_release(new g2(new C0373f1(9), new C0373f1(10), new C0035p(18, vxAceGameActivity), false));
                    RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R.id.rv_load_saves);
                    recyclerView.setLayoutManager(new LinearLayoutManager(1));
                    recyclerView.setAdapter(vxAceGameActivity.getLoadSaveAdapter$app_release());
                    viewInflate.findViewById(R.id.btn_close_load_save).setOnClickListener(new i2(vxAceGameActivity, 5));
                    viewInflate.setOnClickListener(new i2(vxAceGameActivity, 6));
                    viewInflate.findViewById(R.id.layout_load_save_card).setOnClickListener(new b(3));
                    safeLayout$app_release.addView(viewInflate, new RelativeLayout.LayoutParams(-1, -1));
                    vxAceGameActivity.setLoadSaveOverlay$app_release(viewInflate);
                    Intrinsics.checkNotNull(viewInflate);
                    loadSaveOverlay = viewInflate;
                }
                vxAceGameActivity.setCurrentLoadSaves$app_release(CollectionsKt.sortedWith(vxAceGameActivity.getSaveRepository$app_release().scanSaves(currentGame), new M(9)));
                vxAceGameActivity.getLoadSaveAdapter$app_release().k(vxAceGameActivity.getCurrentLoadSaves$app_release());
                boolean zIsEmpty = vxAceGameActivity.getCurrentLoadSaves$app_release().isEmpty();
                loadSaveOverlay.findViewById(R.id.tv_no_load_saves).setVisibility(!zIsEmpty ? 8 : 0);
                loadSaveOverlay.findViewById(R.id.rv_load_saves).setVisibility(zIsEmpty ? 8 : 0);
                loadSaveOverlay.setVisibility(0);
                loadSaveOverlay.bringToFront();
                return;
            case 5:
                b(vxAceGameActivity);
                try {
                    View safeSurface$app_release = vxAceGameActivity.getSafeSurface$app_release();
                    if (safeSurface$app_release == null && (safeSurface$app_release = vxAceGameActivity.getSafeLayout$app_release()) == null) {
                        return;
                    }
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(RangesKt.coerceAtLeast(safeSurface$app_release.getWidth(), 1), RangesKt.coerceAtLeast(safeSurface$app_release.getHeight(), 1), Bitmap.Config.ARGB_8888);
                    Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap, "createBitmap(...)");
                    safeSurface$app_release.draw(new Canvas(bitmapCreateBitmap));
                    Game currentGame2 = vxAceGameActivity.getCurrentGame();
                    if (currentGame2 == null || (title = currentGame2.getTitle()) == null || (strTake = StringsKt.take(title, 20)) == null || (strReplace = new Regex("\\W+").replace(strTake, "_")) == null) {
                        strReplace = "VXACE";
                    }
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    StringBuilder sb = new StringBuilder("MinHub_");
                    sb.append(strReplace);
                    sb.append("_");
                    sb.append(jCurrentTimeMillis);
                    sb.append(".png");
                    Toast.makeText(vxAceGameActivity, f(vxAceGameActivity, bitmapCreateBitmap, sb.toString()) ? vxAceGameActivity.getString(R.string.screenshot_ok) : vxAceGameActivity.getString(R.string.screenshot_fail), 0).show();
                    return;
                } catch (Throwable th) {
                    Log.e("VxAceGameActivity", "screenshot failed", th);
                    Toast.makeText(vxAceGameActivity, vxAceGameActivity.getString(R.string.error_message_format, th.getMessage()), 0).show();
                    return;
                }
            case 6:
                b(vxAceGameActivity);
                View viewInflate2 = vxAceGameActivity.getLayoutInflater().inflate(R.layout.dialog_exit_confirm, (ViewGroup) null);
                O0.b bVar = new O0.b(vxAceGameActivity, 0);
                ((C0240b) bVar.f4145c).f4112t = viewInflate2;
                DialogInterfaceC0245g dialogInterfaceC0245gC = bVar.c();
                Intrinsics.checkNotNullExpressionValue(dialogInterfaceC0245gC, "create(...)");
                Window window = dialogInterfaceC0245gC.getWindow();
                if (window != null) {
                    window.setBackgroundDrawableResource(android.R.color.transparent);
                }
                viewInflate2.findViewById(R.id.btn_exit_cancel).setOnClickListener(new ViewOnClickListenerC0122z(dialogInterfaceC0245gC, 9));
                viewInflate2.findViewById(R.id.btn_exit_confirm).setOnClickListener(new M0(3, dialogInterfaceC0245gC, vxAceGameActivity));
                dialogInterfaceC0245gC.show();
                return;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public static final void e(final VxAceGameActivity vxAceGameActivity) {
        Intrinsics.checkNotNullParameter(vxAceGameActivity, "<this>");
        c(vxAceGameActivity);
        Intrinsics.checkNotNullParameter(vxAceGameActivity, "<this>");
        View menuOverlay = vxAceGameActivity.getMenuOverlay();
        if (menuOverlay == null) {
            ViewGroup safeLayout$app_release = vxAceGameActivity.getSafeLayout$app_release();
            if (safeLayout$app_release == null) {
                throw new IllegalStateException("SDL layout missing");
            }
            final View viewInflate = LayoutInflater.from(vxAceGameActivity).inflate(R.layout.view_vxace_menu_overlay, safeLayout$app_release, false);
            Intrinsics.checkNotNull(viewInflate);
            viewInflate.setOnClickListener(new i2(vxAceGameActivity, 0));
            viewInflate.findViewById(R.id.layout_menu_card).setOnClickListener(new b(3));
            int scaledTouchSlop = ViewConfiguration.get(vxAceGameActivity).getScaledTouchSlop();
            float f = vxAceGameActivity.getResources().getDisplayMetrics().density * 16.0f;
            ((TextView) viewInflate.findViewById(R.id.tv_menu_title)).setOnTouchListener(new Q(viewInflate, new Ref.FloatRef(), new Ref.FloatRef(), new Ref.FloatRef(), new Ref.FloatRef(), new Ref.BooleanRef(), scaledTouchSlop, f));
            final int i3 = 1;
            viewInflate.findViewById(R.id.row_menu_buttons_header).setOnClickListener(new View.OnClickListener() { // from class: y1.j2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i4 = i3;
                    View view2 = viewInflate;
                    VxAceGameActivity vxAceGameActivity2 = vxAceGameActivity;
                    switch (i4) {
                        case 0:
                            vxAceGameActivity2.setFpsEnabled$app_release(!vxAceGameActivity2.getFpsEnabled());
                            Set set = d.f2060a;
                            boolean fpsEnabled = vxAceGameActivity2.getFpsEnabled();
                            Intrinsics.checkNotNullParameter(vxAceGameActivity2, "<this>");
                            vxAceGameActivity2.getSharedPreferences("minhub_prefs", 0).edit().putBoolean("show_fps", fpsEnabled).apply();
                            k2.a(vxAceGameActivity2, view2);
                            break;
                        case 1:
                            C0400o1 menuSectionState = vxAceGameActivity2.getMenuSectionState();
                            vxAceGameActivity2.setMenuSectionState$app_release(C0400o1.a(menuSectionState, !menuSectionState.f6310a, false, false, false, false, 30));
                            k2.g(vxAceGameActivity2, view2);
                            break;
                        case 2:
                            C0400o1 menuSectionState2 = vxAceGameActivity2.getMenuSectionState();
                            vxAceGameActivity2.setMenuSectionState$app_release(C0400o1.a(menuSectionState2, false, !menuSectionState2.b, false, false, false, 29));
                            k2.g(vxAceGameActivity2, view2);
                            break;
                        case 3:
                            C0400o1 menuSectionState3 = vxAceGameActivity2.getMenuSectionState();
                            vxAceGameActivity2.setMenuSectionState$app_release(C0400o1.a(menuSectionState3, false, false, !menuSectionState3.f6311c, false, false, 27));
                            k2.g(vxAceGameActivity2, view2);
                            break;
                        default:
                            C0400o1 menuSectionState4 = vxAceGameActivity2.getMenuSectionState();
                            vxAceGameActivity2.setMenuSectionState$app_release(C0400o1.a(menuSectionState4, false, false, false, !menuSectionState4.f6312d, false, 23));
                            k2.g(vxAceGameActivity2, view2);
                            break;
                    }
                }
            });
            final int i4 = 2;
            viewInflate.findViewById(R.id.row_menu_cheats_header).setOnClickListener(new View.OnClickListener() { // from class: y1.j2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i5 = i4;
                    View view2 = viewInflate;
                    VxAceGameActivity vxAceGameActivity2 = vxAceGameActivity;
                    switch (i5) {
                        case 0:
                            vxAceGameActivity2.setFpsEnabled$app_release(!vxAceGameActivity2.getFpsEnabled());
                            Set set = d.f2060a;
                            boolean fpsEnabled = vxAceGameActivity2.getFpsEnabled();
                            Intrinsics.checkNotNullParameter(vxAceGameActivity2, "<this>");
                            vxAceGameActivity2.getSharedPreferences("minhub_prefs", 0).edit().putBoolean("show_fps", fpsEnabled).apply();
                            k2.a(vxAceGameActivity2, view2);
                            break;
                        case 1:
                            C0400o1 menuSectionState = vxAceGameActivity2.getMenuSectionState();
                            vxAceGameActivity2.setMenuSectionState$app_release(C0400o1.a(menuSectionState, !menuSectionState.f6310a, false, false, false, false, 30));
                            k2.g(vxAceGameActivity2, view2);
                            break;
                        case 2:
                            C0400o1 menuSectionState2 = vxAceGameActivity2.getMenuSectionState();
                            vxAceGameActivity2.setMenuSectionState$app_release(C0400o1.a(menuSectionState2, false, !menuSectionState2.b, false, false, false, 29));
                            k2.g(vxAceGameActivity2, view2);
                            break;
                        case 3:
                            C0400o1 menuSectionState3 = vxAceGameActivity2.getMenuSectionState();
                            vxAceGameActivity2.setMenuSectionState$app_release(C0400o1.a(menuSectionState3, false, false, !menuSectionState3.f6311c, false, false, 27));
                            k2.g(vxAceGameActivity2, view2);
                            break;
                        default:
                            C0400o1 menuSectionState4 = vxAceGameActivity2.getMenuSectionState();
                            vxAceGameActivity2.setMenuSectionState$app_release(C0400o1.a(menuSectionState4, false, false, false, !menuSectionState4.f6312d, false, 23));
                            k2.g(vxAceGameActivity2, view2);
                            break;
                    }
                }
            });
            final int i5 = 3;
            viewInflate.findViewById(R.id.row_menu_save_load_header).setOnClickListener(new View.OnClickListener() { // from class: y1.j2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i6 = i5;
                    View view2 = viewInflate;
                    VxAceGameActivity vxAceGameActivity2 = vxAceGameActivity;
                    switch (i6) {
                        case 0:
                            vxAceGameActivity2.setFpsEnabled$app_release(!vxAceGameActivity2.getFpsEnabled());
                            Set set = d.f2060a;
                            boolean fpsEnabled = vxAceGameActivity2.getFpsEnabled();
                            Intrinsics.checkNotNullParameter(vxAceGameActivity2, "<this>");
                            vxAceGameActivity2.getSharedPreferences("minhub_prefs", 0).edit().putBoolean("show_fps", fpsEnabled).apply();
                            k2.a(vxAceGameActivity2, view2);
                            break;
                        case 1:
                            C0400o1 menuSectionState = vxAceGameActivity2.getMenuSectionState();
                            vxAceGameActivity2.setMenuSectionState$app_release(C0400o1.a(menuSectionState, !menuSectionState.f6310a, false, false, false, false, 30));
                            k2.g(vxAceGameActivity2, view2);
                            break;
                        case 2:
                            C0400o1 menuSectionState2 = vxAceGameActivity2.getMenuSectionState();
                            vxAceGameActivity2.setMenuSectionState$app_release(C0400o1.a(menuSectionState2, false, !menuSectionState2.b, false, false, false, 29));
                            k2.g(vxAceGameActivity2, view2);
                            break;
                        case 3:
                            C0400o1 menuSectionState3 = vxAceGameActivity2.getMenuSectionState();
                            vxAceGameActivity2.setMenuSectionState$app_release(C0400o1.a(menuSectionState3, false, false, !menuSectionState3.f6311c, false, false, 27));
                            k2.g(vxAceGameActivity2, view2);
                            break;
                        default:
                            C0400o1 menuSectionState4 = vxAceGameActivity2.getMenuSectionState();
                            vxAceGameActivity2.setMenuSectionState$app_release(C0400o1.a(menuSectionState4, false, false, false, !menuSectionState4.f6312d, false, 23));
                            k2.g(vxAceGameActivity2, view2);
                            break;
                    }
                }
            });
            final int i6 = 4;
            viewInflate.findViewById(R.id.row_menu_other_header).setOnClickListener(new View.OnClickListener() { // from class: y1.j2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i7 = i6;
                    View view2 = viewInflate;
                    VxAceGameActivity vxAceGameActivity2 = vxAceGameActivity;
                    switch (i7) {
                        case 0:
                            vxAceGameActivity2.setFpsEnabled$app_release(!vxAceGameActivity2.getFpsEnabled());
                            Set set = d.f2060a;
                            boolean fpsEnabled = vxAceGameActivity2.getFpsEnabled();
                            Intrinsics.checkNotNullParameter(vxAceGameActivity2, "<this>");
                            vxAceGameActivity2.getSharedPreferences("minhub_prefs", 0).edit().putBoolean("show_fps", fpsEnabled).apply();
                            k2.a(vxAceGameActivity2, view2);
                            break;
                        case 1:
                            C0400o1 menuSectionState = vxAceGameActivity2.getMenuSectionState();
                            vxAceGameActivity2.setMenuSectionState$app_release(C0400o1.a(menuSectionState, !menuSectionState.f6310a, false, false, false, false, 30));
                            k2.g(vxAceGameActivity2, view2);
                            break;
                        case 2:
                            C0400o1 menuSectionState2 = vxAceGameActivity2.getMenuSectionState();
                            vxAceGameActivity2.setMenuSectionState$app_release(C0400o1.a(menuSectionState2, false, !menuSectionState2.b, false, false, false, 29));
                            k2.g(vxAceGameActivity2, view2);
                            break;
                        case 3:
                            C0400o1 menuSectionState3 = vxAceGameActivity2.getMenuSectionState();
                            vxAceGameActivity2.setMenuSectionState$app_release(C0400o1.a(menuSectionState3, false, false, !menuSectionState3.f6311c, false, false, 27));
                            k2.g(vxAceGameActivity2, view2);
                            break;
                        default:
                            C0400o1 menuSectionState4 = vxAceGameActivity2.getMenuSectionState();
                            vxAceGameActivity2.setMenuSectionState$app_release(C0400o1.a(menuSectionState4, false, false, false, !menuSectionState4.f6312d, false, 23));
                            k2.g(vxAceGameActivity2, view2);
                            break;
                    }
                }
            });
            viewInflate.findViewById(R.id.btn_menu_buttons).setOnClickListener(new i2(vxAceGameActivity, 9));
            viewInflate.findViewById(R.id.btn_menu_editor).setOnClickListener(new i2(vxAceGameActivity, 1));
            viewInflate.findViewById(R.id.btn_menu_basic_cheat).setOnClickListener(new i2(vxAceGameActivity, 2));
            viewInflate.findViewById(R.id.btn_menu_save).setOnClickListener(new i2(vxAceGameActivity, 3));
            viewInflate.findViewById(R.id.btn_menu_load).setOnClickListener(new i2(vxAceGameActivity, 4));
            viewInflate.findViewById(R.id.btn_menu_screenshot).setOnClickListener(new i2(vxAceGameActivity, 7));
            viewInflate.findViewById(R.id.btn_menu_exit).setOnClickListener(new i2(vxAceGameActivity, 8));
            final int i7 = 0;
            ((TextView) viewInflate.findViewById(R.id.btn_menu_fps)).setOnClickListener(new View.OnClickListener() { // from class: y1.j2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i8 = i7;
                    View view2 = viewInflate;
                    VxAceGameActivity vxAceGameActivity2 = vxAceGameActivity;
                    switch (i8) {
                        case 0:
                            vxAceGameActivity2.setFpsEnabled$app_release(!vxAceGameActivity2.getFpsEnabled());
                            Set set = d.f2060a;
                            boolean fpsEnabled = vxAceGameActivity2.getFpsEnabled();
                            Intrinsics.checkNotNullParameter(vxAceGameActivity2, "<this>");
                            vxAceGameActivity2.getSharedPreferences("minhub_prefs", 0).edit().putBoolean("show_fps", fpsEnabled).apply();
                            k2.a(vxAceGameActivity2, view2);
                            break;
                        case 1:
                            C0400o1 menuSectionState = vxAceGameActivity2.getMenuSectionState();
                            vxAceGameActivity2.setMenuSectionState$app_release(C0400o1.a(menuSectionState, !menuSectionState.f6310a, false, false, false, false, 30));
                            k2.g(vxAceGameActivity2, view2);
                            break;
                        case 2:
                            C0400o1 menuSectionState2 = vxAceGameActivity2.getMenuSectionState();
                            vxAceGameActivity2.setMenuSectionState$app_release(C0400o1.a(menuSectionState2, false, !menuSectionState2.b, false, false, false, 29));
                            k2.g(vxAceGameActivity2, view2);
                            break;
                        case 3:
                            C0400o1 menuSectionState3 = vxAceGameActivity2.getMenuSectionState();
                            vxAceGameActivity2.setMenuSectionState$app_release(C0400o1.a(menuSectionState3, false, false, !menuSectionState3.f6311c, false, false, 27));
                            k2.g(vxAceGameActivity2, view2);
                            break;
                        default:
                            C0400o1 menuSectionState4 = vxAceGameActivity2.getMenuSectionState();
                            vxAceGameActivity2.setMenuSectionState$app_release(C0400o1.a(menuSectionState4, false, false, false, !menuSectionState4.f6312d, false, 23));
                            k2.g(vxAceGameActivity2, view2);
                            break;
                    }
                }
            });
            a(vxAceGameActivity, viewInflate);
            SeekBar seekBar = (SeekBar) viewInflate.findViewById(R.id.sb_volume);
            TextView textView = (TextView) viewInflate.findViewById(R.id.tv_volume_label);
            seekBar.setProgress(d.c(vxAceGameActivity));
            textView.setText(vxAceGameActivity.getString(R.string.volume_label, Integer.valueOf(seekBar.getProgress())));
            seekBar.setOnSeekBarChangeListener(new H(textView, vxAceGameActivity));
            safeLayout$app_release.addView(viewInflate, new RelativeLayout.LayoutParams(-1, -1));
            vxAceGameActivity.setMenuOverlay$app_release(viewInflate);
            menuOverlay = viewInflate;
        }
        vxAceGameActivity.setMenuSectionState$app_release(new C0400o1());
        g(vxAceGameActivity, menuOverlay);
        menuOverlay.setVisibility(0);
        menuOverlay.bringToFront();
    }

    public static final boolean f(VxAceGameActivity vxAceGameActivity, Bitmap bitmap, String str) {
        ContentResolver contentResolver = vxAceGameActivity.getContentResolver();
        try {
            if (Build.VERSION.SDK_INT >= 29) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("_display_name", str);
                contentValues.put("mime_type", "image/png");
                contentValues.put("relative_path", Environment.DIRECTORY_PICTURES + "/MinHub");
                contentValues.put("is_pending", (Integer) 1);
                Uri uriInsert = contentResolver.insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
                if (uriInsert == null) {
                    return false;
                }
                OutputStream outputStreamOpenOutputStream = contentResolver.openOutputStream(uriInsert);
                if (outputStreamOpenOutputStream != null) {
                    try {
                        bitmap.compress(Bitmap.CompressFormat.PNG, 100, outputStreamOpenOutputStream);
                        CloseableKt.closeFinally(outputStreamOpenOutputStream, null);
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            CloseableKt.closeFinally(outputStreamOpenOutputStream, th);
                            throw th2;
                        }
                    }
                }
                contentValues.clear();
                contentValues.put("is_pending", (Integer) 0);
                contentResolver.update(uriInsert, contentValues, null, null);
            } else {
                File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), "MinHub");
                if (!file.exists()) {
                    file.mkdirs();
                }
                File file2 = new File(file, str);
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                try {
                    bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                    CloseableKt.closeFinally(fileOutputStream, null);
                    MediaScannerConnection.scanFile(vxAceGameActivity, new String[]{file2.getAbsolutePath()}, new String[]{"image/png"}, null);
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        CloseableKt.closeFinally(fileOutputStream, th3);
                        throw th4;
                    }
                }
            }
            return true;
        } catch (Throwable th5) {
            Log.e("VxAceGameActivity", "saveBitmap failed", th5);
            return false;
        }
    }

    public static final void g(VxAceGameActivity vxAceGameActivity, View view) {
        String string = vxAceGameActivity.getString(R.string.menu_section_chevron_collapsed);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String string2 = vxAceGameActivity.getString(R.string.menu_section_chevron_expanded);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        view.findViewById(R.id.layout_menu_buttons).setVisibility(vxAceGameActivity.getMenuSectionState().f6310a ? 0 : 8);
        view.findViewById(R.id.layout_menu_cheats).setVisibility(vxAceGameActivity.getMenuSectionState().b ? 0 : 8);
        view.findViewById(R.id.layout_menu_save_load).setVisibility(vxAceGameActivity.getMenuSectionState().f6311c ? 0 : 8);
        view.findViewById(R.id.layout_menu_other).setVisibility(vxAceGameActivity.getMenuSectionState().f6312d ? 0 : 8);
        ((TextView) view.findViewById(R.id.tv_menu_buttons_chevron)).setText(vxAceGameActivity.getMenuSectionState().f6310a ? string2 : string);
        ((TextView) view.findViewById(R.id.tv_menu_cheats_chevron)).setText(vxAceGameActivity.getMenuSectionState().b ? string2 : string);
        ((TextView) view.findViewById(R.id.tv_menu_save_load_chevron)).setText(vxAceGameActivity.getMenuSectionState().f6311c ? string2 : string);
        TextView textView = (TextView) view.findViewById(R.id.tv_menu_other_chevron);
        if (vxAceGameActivity.getMenuSectionState().f6312d) {
            string = string2;
        }
        textView.setText(string);
    }
}
