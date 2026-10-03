package com.minhub.gamehub.game;

import A1.C0033n;
import A1.v0;
import C1.g2;
import S.u;
import S1.c;
import android.animation.AnimatorSet;
import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.app.NotificationCompat;
import com.bumptech.glide.d;
import com.hatkid.mkxpz.cheat.CheatsManager;
import com.hatkid.mkxpz.gamepad.Gamepad;
import com.hatkid.mkxpz.gamepad.GamepadConfig;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.data.GameStorage;
import com.minhub.gamehub.data.Save;
import com.minhub.gamehub.data.SaveRepository;
import com.minhub.gamehub.game.VxAceGameActivity;
import com.minhub.gamehub.gamepad.GamepadOverlay;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;
import org.godotengine.godot.h;
import org.libsdl.app.SDLActivity;
import org.libsdl.app.SDLSurface;
import p000a.a;
import p064y1.AbstractC0369e0;
import p064y1.C0385j1;
import p064y1.C0400o1;
import p064y1.L1;
import p064y1.Q;
import p064y1.T;
import p064y1.ViewOnClickListenerC0376g1;
import p064y1.W1;
import p064y1.h2;
import p064y1.k2;
import p064y1.n2;
import p064y1.p2;
import p064y1.q2;
import p064y1.r2;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000â\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 ª\u00012\u00020\u0001:\u0002«\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0014¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0014¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u000f\u001a\u00020\n2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0014¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\nH\u0014¢\u0006\u0004\b\u0011\u0010\u0003J\u000f\u0010\u0012\u001a\u00020\nH\u0014¢\u0006\u0004\b\u0012\u0010\u0003J\u000f\u0010\u0013\u001a\u00020\nH\u0014¢\u0006\u0004\b\u0013\u0010\u0003J\u000f\u0010\u0014\u001a\u00020\nH\u0014¢\u0006\u0004\b\u0014\u0010\u0003J\u000f\u0010\u0015\u001a\u00020\nH\u0014¢\u0006\u0004\b\u0015\u0010\u0003J\u000f\u0010\u0016\u001a\u00020\nH\u0017¢\u0006\u0004\b\u0016\u0010\u0003J/\u0010\u001d\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010!\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b!\u0010\"J\u0017\u0010$\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020#H\u0016¢\u0006\u0004\b$\u0010%J\u0017\u0010&\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020#H\u0016¢\u0006\u0004\b&\u0010%J\u0017\u0010(\u001a\u00020\n2\u0006\u0010'\u001a\u00020\u001aH\u0016¢\u0006\u0004\b(\u0010)J\u0015\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0014¢\u0006\u0004\b*\u0010\u0007J\u0017\u0010.\u001a\u00020\n2\u0006\u0010+\u001a\u00020\u0005H\u0000¢\u0006\u0004\b,\u0010-J\u000f\u00100\u001a\u00020\nH\u0000¢\u0006\u0004\b/\u0010\u0003J\u000f\u00102\u001a\u000201H\u0002¢\u0006\u0004\b2\u00103J\u000f\u00104\u001a\u00020\nH\u0002¢\u0006\u0004\b4\u0010\u0003J\u000f\u00105\u001a\u00020\nH\u0002¢\u0006\u0004\b5\u0010\u0003J\u000f\u00106\u001a\u00020\nH\u0002¢\u0006\u0004\b6\u0010\u0003J\u000f\u00107\u001a\u00020\nH\u0002¢\u0006\u0004\b7\u0010\u0003J\u000f\u00108\u001a\u00020\nH\u0002¢\u0006\u0004\b8\u0010\u0003R\u0016\u0010:\u001a\u0002098\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b:\u0010;R\"\u0010=\u001a\u00020<8\u0000@\u0000X\u0080.¢\u0006\u0012\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@\"\u0004\bA\u0010BR\u0016\u0010D\u001a\u00020C8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bD\u0010ER\u0014\u0010G\u001a\u00020F8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bG\u0010HR$\u0010J\u001a\u0004\u0018\u00010I8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bJ\u0010K\u001a\u0004\bL\u0010M\"\u0004\bN\u0010OR$\u0010P\u001a\u0004\u0018\u00010I8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bP\u0010K\u001a\u0004\bQ\u0010M\"\u0004\bR\u0010OR\"\u0010T\u001a\u00020S8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bT\u0010U\u001a\u0004\bV\u0010W\"\u0004\bX\u0010YR\"\u0010Z\u001a\u00020\u001a8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bZ\u0010[\u001a\u0004\b\\\u0010]\"\u0004\b^\u0010)R\u0016\u0010_\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b_\u0010`R$\u0010a\u001a\u0004\u0018\u0001018\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\ba\u0010b\u001a\u0004\bc\u00103\"\u0004\bd\u0010eR(\u0010h\u001a\b\u0012\u0004\u0012\u00020g0f8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bh\u0010i\u001a\u0004\bj\u0010k\"\u0004\bl\u0010mR\"\u0010o\u001a\u00020n8\u0000@\u0000X\u0080.¢\u0006\u0012\n\u0004\bo\u0010p\u001a\u0004\bq\u0010r\"\u0004\bs\u0010tR\u0016\u0010v\u001a\u00020u8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bv\u0010wR\u0016\u0010x\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bx\u0010[R\u0016\u0010y\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\by\u0010[R\u001a\u0010{\u001a\u00020z8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b{\u0010|\u001a\u0004\b}\u0010~R+\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u007f8\u0000@\u0000X\u0080\u000e¢\u0006\u0018\n\u0006\b\u0080\u0001\u0010\u0081\u0001\u001a\u0006\b\u0082\u0001\u0010\u0083\u0001\"\u0006\b\u0084\u0001\u0010\u0085\u0001R,\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0086\u00018\u0000@\u0000X\u0080\u000e¢\u0006\u0018\n\u0006\b\u0087\u0001\u0010\u0088\u0001\u001a\u0006\b\u0089\u0001\u0010\u008a\u0001\"\u0006\b\u008b\u0001\u0010\u008c\u0001R,\u0010\u008e\u0001\u001a\u0005\u0018\u00010\u008d\u00018\u0000@\u0000X\u0080\u000e¢\u0006\u0018\n\u0006\b\u008e\u0001\u0010\u008f\u0001\u001a\u0006\b\u0090\u0001\u0010\u0091\u0001\"\u0006\b\u0092\u0001\u0010\u0093\u0001R,\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u0094\u00018\u0000@\u0000X\u0080\u000e¢\u0006\u0018\n\u0006\b\u0095\u0001\u0010\u0096\u0001\u001a\u0006\b\u0097\u0001\u0010\u0098\u0001\"\u0006\b\u0099\u0001\u0010\u009a\u0001R&\u0010\u009b\u0001\u001a\u00020\u001a8\u0000@\u0000X\u0080\u000e¢\u0006\u0015\n\u0005\b\u009b\u0001\u0010[\u001a\u0005\b\u009c\u0001\u0010]\"\u0005\b\u009d\u0001\u0010)R\u001c\u0010\u009f\u0001\u001a\u0005\u0018\u00010\u009e\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009f\u0001\u0010 \u0001R\"\u0010¥\u0001\u001a\r ¢\u0001*\u0005\u0018\u00010¡\u00010¡\u00018@X\u0080\u0004¢\u0006\b\u001a\u0006\b£\u0001\u0010¤\u0001R\"\u0010©\u0001\u001a\r ¢\u0001*\u0005\u0018\u00010¦\u00010¦\u00018@X\u0080\u0004¢\u0006\b\u001a\u0006\b§\u0001\u0010¨\u0001¨\u0006¬\u0001"}, d2 = {"Lcom/minhub/gamehub/game/VxAceGameActivity;", "Lorg/libsdl/app/SDLActivity;", "<init>", "()V", "", "", "getLibraries", "()[Ljava/lang/String;", "Landroid/content/Context;", "base", "", "attachBaseContext", "(Landroid/content/Context;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onStart", "onResume", "onPause", "onStop", "onDestroy", "onBackPressed", "", "w", "h", "", "resizable", "hint", "setOrientationBis", "(IIZLjava/lang/String;)V", "Landroid/view/KeyEvent;", NotificationCompat.CATEGORY_EVENT, "dispatchKeyEvent", "(Landroid/view/KeyEvent;)Z", "Landroid/view/MotionEvent;", "dispatchTouchEvent", "(Landroid/view/MotionEvent;)Z", "onGenericMotionEvent", "hasFocus", "onWindowFocusChanged", "(Z)V", "getArguments", "script", "queueRuntimeScript$app_release", "(Ljava/lang/String;)V", "queueRuntimeScript", "updateStoredSaveCount$app_release", "updateStoredSaveCount", "Lcom/minhub/gamehub/data/Game;", "resolveCurrentGame", "()Lcom/minhub/gamehub/data/Game;", "persistPlaytime", "runSdlStartupBridge", "hideSystemBars", "flushCheatQueue", "scheduleDir8Patches", "Ly1/r2;", "runtimeInstaller", "Ly1/r2;", "Lcom/minhub/gamehub/data/SaveRepository;", "saveRepository", "Lcom/minhub/gamehub/data/SaveRepository;", "getSaveRepository$app_release", "()Lcom/minhub/gamehub/data/SaveRepository;", "setSaveRepository$app_release", "(Lcom/minhub/gamehub/data/SaveRepository;)V", "Lcom/minhub/gamehub/data/GameStorage;", "gameStorage", "Lcom/minhub/gamehub/data/GameStorage;", "Lcom/hatkid/mkxpz/cheat/CheatsManager;", "nativeScriptQueue", "Lcom/hatkid/mkxpz/cheat/CheatsManager;", "Landroid/view/View;", "menuOverlay", "Landroid/view/View;", "getMenuOverlay$app_release", "()Landroid/view/View;", "setMenuOverlay$app_release", "(Landroid/view/View;)V", "loadSaveOverlay", "getLoadSaveOverlay$app_release", "setLoadSaveOverlay$app_release", "Ly1/o1;", "menuSectionState", "Ly1/o1;", "getMenuSectionState$app_release", "()Ly1/o1;", "setMenuSectionState$app_release", "(Ly1/o1;)V", "fpsEnabled", "Z", "getFpsEnabled$app_release", "()Z", "setFpsEnabled$app_release", "gameId", "I", "currentGame", "Lcom/minhub/gamehub/data/Game;", "getCurrentGame$app_release", "setCurrentGame$app_release", "(Lcom/minhub/gamehub/data/Game;)V", "", "Lcom/minhub/gamehub/data/Save;", "currentLoadSaves", "Ljava/util/List;", "getCurrentLoadSaves$app_release", "()Ljava/util/List;", "setCurrentLoadSaves$app_release", "(Ljava/util/List;)V", "LC1/g2;", "loadSaveAdapter", "LC1/g2;", "getLoadSaveAdapter$app_release", "()LC1/g2;", "setLoadSaveAdapter$app_release", "(LC1/g2;)V", "", "launchedAtMs", "J", "playtimePersisted", "libsLoaded", "Lcom/hatkid/mkxpz/gamepad/Gamepad;", "mGamepad", "Lcom/hatkid/mkxpz/gamepad/Gamepad;", "getMGamepad$app_release", "()Lcom/hatkid/mkxpz/gamepad/Gamepad;", "Lcom/minhub/gamehub/gamepad/GamepadOverlay;", "vxGamepadOverlay", "Lcom/minhub/gamehub/gamepad/GamepadOverlay;", "getVxGamepadOverlay$app_release", "()Lcom/minhub/gamehub/gamepad/GamepadOverlay;", "setVxGamepadOverlay$app_release", "(Lcom/minhub/gamehub/gamepad/GamepadOverlay;)V", "Ly1/j1;", "vxControlsCoordinator", "Ly1/j1;", "getVxControlsCoordinator$app_release", "()Ly1/j1;", "setVxControlsCoordinator$app_release", "(Ly1/j1;)V", "Landroid/widget/ImageView;", "mCheatFab", "Landroid/widget/ImageView;", "getMCheatFab$app_release", "()Landroid/widget/ImageView;", "setMCheatFab$app_release", "(Landroid/widget/ImageView;)V", "Landroid/animation/AnimatorSet;", "mCheatFabBreathAnim", "Landroid/animation/AnimatorSet;", "getMCheatFabBreathAnim$app_release", "()Landroid/animation/AnimatorSet;", "setMCheatFabBreathAnim$app_release", "(Landroid/animation/AnimatorSet;)V", "mCheatFabVisible", "getMCheatFabVisible$app_release", "setMCheatFabVisible$app_release", "LA1/v0;", "lifecycleAdapter", "LA1/v0;", "Landroid/view/ViewGroup;", "kotlin.jvm.PlatformType", "getSafeLayout$app_release", "()Landroid/view/ViewGroup;", "safeLayout", "Lorg/libsdl/app/SDLSurface;", "getSafeSurface$app_release", "()Lorg/libsdl/app/SDLSurface;", "safeSurface", "Companion", "y1/h2", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nVxAceGameActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VxAceGameActivity.kt\ncom/minhub/gamehub/game/VxAceGameActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,391:1\n1#2:392\n774#3:393\n865#3,2:394\n1869#3,2:396\n1869#3,2:398\n*S KotlinDebug\n*F\n+ 1 VxAceGameActivity.kt\ncom/minhub/gamehub/game/VxAceGameActivity\n*L\n293#1:393\n293#1:394,2\n293#1:396,2\n300#1:398,2\n*E\n"})
public final class VxAceGameActivity extends SDLActivity {
    public static final h2 Companion = new h2();
    public static final String EXTRA_GAME_PATH = "vxace_game_path";

    @JvmField
    public static String GAME_PATH = "";
    private static final String TAG = "VxAceGameActivity";

    @JvmField
    public static Handler mMainHandler;

    @JvmField
    public static Vibrator mVibrator;

    @JvmField
    public static VxAceGameActivity sInstance;

    @JvmField
    public static TextView tvFps;
    private Game currentGame;
    private boolean fpsEnabled;
    private GameStorage gameStorage;
    private long launchedAtMs;
    private boolean libsLoaded;
    private v0 lifecycleAdapter;
    public g2 loadSaveAdapter;
    private View loadSaveOverlay;
    private ImageView mCheatFab;
    private AnimatorSet mCheatFabBreathAnim;
    private boolean mCheatFabVisible;
    private View menuOverlay;
    private boolean playtimePersisted;
    private r2 runtimeInstaller;
    public SaveRepository saveRepository;
    private C0385j1 vxControlsCoordinator;
    private GamepadOverlay vxGamepadOverlay;
    private final CheatsManager nativeScriptQueue = new CheatsManager();
    private C0400o1 menuSectionState = new C0400o1();
    private int gameId = -1;
    private List<Save> currentLoadSaves = CollectionsKt.emptyList();
    private final Gamepad mGamepad = new Gamepad();

    private final void flushCheatQueue() {
        SharedPreferences sharedPreferences = getSharedPreferences("vxace_cheat_queue", 4);
        String string = sharedPreferences.getString("pending_scripts", "");
        String str = string != null ? string : "";
        if (str.length() > 0) {
            sharedPreferences.edit().remove("pending_scripts").apply();
            int i3 = 0;
            List listSplit$default = StringsKt__StringsKt.split$default((CharSequence) str, new String[]{"\n"}, false, 0, 6, (Object) null);
            ArrayList arrayList = new ArrayList();
            for (Object obj : listSplit$default) {
                if (!StringsKt.isBlank((String) obj)) {
                    arrayList.add(obj);
                }
            }
            int size = arrayList.size();
            while (i3 < size) {
                Object obj2 = arrayList.get(i3);
                i3++;
                queueRuntimeScript$app_release((String) obj2);
            }
        }
    }

    @JvmStatic
    private static final String getAccountName() {
        Companion.getClass();
        return "";
    }

    @JvmStatic
    private static final int getFastForwardSpeed() {
        Companion.getClass();
        return 2;
    }

    @JvmStatic
    private static final int getLoginType() {
        Companion.getClass();
        return 0;
    }

    @JvmStatic
    private static final String getSystemLanguage() {
        Companion.getClass();
        String string = Locale.getDefault().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    @JvmStatic
    private static final boolean hasVibrator() {
        Companion.getClass();
        Vibrator vibrator = mVibrator;
        return vibrator != null && vibrator.hasVibrator();
    }

    private final void hideSystemBars() {
        View decorView = getWindow().getDecorView();
        Intrinsics.checkNotNullExpressionValue(decorView, "getDecorView(...)");
        if (Build.VERSION.SDK_INT < 30) {
            decorView.setSystemUiVisibility(5894);
            return;
        }
        getWindow().setDecorFitsSystemWindows(false);
        WindowInsetsController windowInsetsController = decorView.getWindowInsetsController();
        if (windowInsetsController != null) {
            windowInsetsController.hide(WindowInsets.Type.systemBars());
            windowInsetsController.setSystemBarsBehavior(2);
        }
    }

    @JvmStatic
    private static final boolean inMultiWindow(Activity activity) {
        Companion.getClass();
        return activity.isInMultiWindowMode();
    }

    private final void persistPlaytime() {
        if (this.playtimePersisted || this.gameId <= 0) {
            return;
        }
        this.playtimePersisted = true;
        int iCurrentTimeMillis = (int) ((System.currentTimeMillis() - this.launchedAtMs) / 60000);
        if (iCurrentTimeMillis > 0) {
            GameStorage gameStorage = this.gameStorage;
            if (gameStorage == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gameStorage");
                gameStorage = null;
            }
            gameStorage.addPlaytime(this.gameId, iCurrentTimeMillis, System.currentTimeMillis());
        }
    }

    private final Game resolveCurrentGame() {
        GameStorage gameStorage = this.gameStorage;
        if (gameStorage == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gameStorage");
            gameStorage = null;
        }
        Game gameFindById = gameStorage.findById(this.gameId);
        if (gameFindById != null) {
            return gameFindById;
        }
        String name = new File(GAME_PATH).getName();
        Intrinsics.checkNotNull(name);
        String str = StringsKt.isBlank(name) ? null : name;
        if (str == null) {
            str = "VX Ace";
        }
        return new Game(RangesKt.coerceAtLeast(this.gameId, 0), str, "VXACE", null, null, GAME_PATH, null, null, null, null, null, false, 0, 0L, 0, null, 0, null, null, null, null, null, false, 0L, null, null, null, 134217688, null);
    }

    private final void runSdlStartupBridge() {
        Log.i(TAG, "Game path: " + GAME_PATH);
        int iOrdinal = (SDLActivity.mHasMultiWindow ? q2.b : q2.f6331c).ordinal();
        if (iOrdinal == 0) {
            Log.d(TAG, "runSdlStartupBridge: resuming native thread for multi-window startup");
            resumeNativeThread();
        } else {
            if (iOrdinal != 1) {
                throw new NoWhenBranchMatchedException();
            }
            Log.d(TAG, "runSdlStartupBridge: standard SDLActivity resume path is active");
        }
    }

    private final void scheduleDir8Patches() {
        Handler handler = new Handler(getMainLooper());
        Iterator it = CollectionsKt.listOf((Object[]) new Long[]{0L, 3000L, 8000L, 15000L}).iterator();
        while (it.hasNext()) {
            handler.postDelayed(new W1(this, 1), ((Number) it.next()).longValue());
        }
    }

    @JvmStatic
    private static final void setFPSVisibility(boolean z2) {
        Companion.getClass();
        Handler handler = mMainHandler;
        if (handler != null) {
            handler.post(new h(1, z2));
        }
    }

    @JvmStatic
    private static final void updateFPSText(final int i3) {
        Companion.getClass();
        Handler handler = mMainHandler;
        if (handler != null) {
            handler.post(new Runnable() { // from class: y1.g2
                @Override // java.lang.Runnable
                public final void run() {
                    TextView textView = VxAceGameActivity.tvFps;
                    if (textView != null) {
                        textView.setText(i3 + " FPS");
                    }
                }
            });
        }
    }

    @JvmStatic
    private static final void vibrate(int i3) {
        Companion.getClass();
        Vibrator vibrator = mVibrator;
        if (vibrator == null) {
            return;
        }
        int iCoerceIn = RangesKt.coerceIn(i3, 1, 10000);
        if (Build.VERSION.SDK_INT >= 26) {
            vibrator.vibrate(VibrationEffect.createOneShot(iCoerceIn, 5));
        } else {
            vibrator.vibrate(iCoerceIn);
        }
    }

    @JvmStatic
    private static final void vibrateStop() {
        Companion.getClass();
        Vibrator vibrator = mVibrator;
        if (vibrator != null) {
            vibrator.cancel();
        }
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public void attachBaseContext(Context base) {
        Intrinsics.checkNotNullParameter(base, "base");
        int i3 = c.f2058d;
        super.attachBaseContext(d.a(base, S1.d.d(base)));
    }

    @Override // org.libsdl.app.SDLActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent event) {
        GamepadOverlay gamepadOverlay;
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getKeyCode() != 4 && event.getKeyCode() != 24 && event.getKeyCode() != 25 && event.getKeyCode() != 164 && event.getKeyCode() != 79 && (gamepadOverlay = this.vxGamepadOverlay) != null) {
            gamepadOverlay.setVisibility(8);
        }
        if (this.mGamepad.processGamepadEvent(event)) {
            return true;
        }
        return super.dispatchKeyEvent(event);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent event) {
        GamepadOverlay gamepadOverlay;
        Intrinsics.checkNotNullParameter(event, "event");
        C0385j1 c0385j1 = this.vxControlsCoordinator;
        if ((c0385j1 == null || c0385j1.f6257c.getVisibility() != 0) && (gamepadOverlay = this.vxGamepadOverlay) != null && gamepadOverlay.getVisibility() != 0) {
            gamepadOverlay.setVisibility(0);
        }
        return super.dispatchTouchEvent(event);
    }

    @Override // org.libsdl.app.SDLActivity
    public String[] getArguments() {
        return new String[]{"--gl-buffer-optimization", "--text-render-optimization", "--vertex-buffer-size=4194304", "--index-buffer-size=1048576", "--no-batch-rendering", "--immediate-gl-flush"};
    }

    /* JADX INFO: renamed from: getCurrentGame$app_release, reason: from getter */
    public final Game getCurrentGame() {
        return this.currentGame;
    }

    public final List<Save> getCurrentLoadSaves$app_release() {
        return this.currentLoadSaves;
    }

    /* JADX INFO: renamed from: getFpsEnabled$app_release, reason: from getter */
    public final boolean getFpsEnabled() {
        return this.fpsEnabled;
    }

    @Override // org.libsdl.app.SDLActivity
    public String[] getLibraries() {
        return new String[0];
    }

    public final g2 getLoadSaveAdapter$app_release() {
        g2 g2Var = this.loadSaveAdapter;
        if (g2Var != null) {
            return g2Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("loadSaveAdapter");
        return null;
    }

    /* JADX INFO: renamed from: getLoadSaveOverlay$app_release, reason: from getter */
    public final View getLoadSaveOverlay() {
        return this.loadSaveOverlay;
    }

    /* JADX INFO: renamed from: getMCheatFab$app_release, reason: from getter */
    public final ImageView getMCheatFab() {
        return this.mCheatFab;
    }

    /* JADX INFO: renamed from: getMCheatFabBreathAnim$app_release, reason: from getter */
    public final AnimatorSet getMCheatFabBreathAnim() {
        return this.mCheatFabBreathAnim;
    }

    /* JADX INFO: renamed from: getMCheatFabVisible$app_release, reason: from getter */
    public final boolean getMCheatFabVisible() {
        return this.mCheatFabVisible;
    }

    /* JADX INFO: renamed from: getMGamepad$app_release, reason: from getter */
    public final Gamepad getMGamepad() {
        return this.mGamepad;
    }

    /* JADX INFO: renamed from: getMenuOverlay$app_release, reason: from getter */
    public final View getMenuOverlay() {
        return this.menuOverlay;
    }

    /* JADX INFO: renamed from: getMenuSectionState$app_release, reason: from getter */
    public final C0400o1 getMenuSectionState() {
        return this.menuSectionState;
    }

    public final ViewGroup getSafeLayout$app_release() {
        return SDLActivity.mLayout;
    }

    public final SDLSurface getSafeSurface$app_release() {
        return SDLActivity.mSurface;
    }

    public final SaveRepository getSaveRepository$app_release() {
        SaveRepository saveRepository = this.saveRepository;
        if (saveRepository != null) {
            return saveRepository;
        }
        Intrinsics.throwUninitializedPropertyAccessException("saveRepository");
        return null;
    }

    /* JADX INFO: renamed from: getVxControlsCoordinator$app_release, reason: from getter */
    public final C0385j1 getVxControlsCoordinator() {
        return this.vxControlsCoordinator;
    }

    /* JADX INFO: renamed from: getVxGamepadOverlay$app_release, reason: from getter */
    public final GamepadOverlay getVxGamepadOverlay() {
        return this.vxGamepadOverlay;
    }

    @Override // org.libsdl.app.SDLActivity, android.app.Activity
    @Deprecated(message = "Replaced by OnBackPressedDispatcher; legacy override kept for compat")
    public void onBackPressed() {
        C0385j1 c0385j1 = this.vxControlsCoordinator;
        if (c0385j1 == null || !c0385j1.f()) {
            View view = this.loadSaveOverlay;
            if (view != null && view.getVisibility() == 0) {
                k2.c(this);
                return;
            }
            View view2 = this.menuOverlay;
            if (view2 == null || view2.getVisibility() != 0) {
                k2.e(this);
            } else {
                k2.b(this);
            }
        }
    }

    @Override // org.libsdl.app.SDLActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        boolean z2;
        VxAceGameActivity context = this;
        int i3 = 0;
        try {
            List list = p2.f6324a;
            Context applicationContext = context.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
            p2.a(applicationContext);
            z2 = true;
        } catch (UnsatisfiedLinkError e2) {
            Log.e("VxAceLibs", "loadLibraries failed", e2);
            System.exit(0);
            z2 = false;
        }
        context.libsLoaded = z2;
        String stringExtra = context.getIntent().getStringExtra(EXTRA_GAME_PATH);
        if (stringExtra == null) {
            stringExtra = "";
        }
        if (StringsKt.isBlank(stringExtra)) {
            super.onCreate(savedInstanceState);
            Toast.makeText(context, context.getString(R.string.vxace_runtime_missing_game_path), 1).show();
            context.finish();
            return;
        }
        GAME_PATH = stringExtra;
        context.gameId = context.getIntent().getIntExtra("game_id", -1);
        context.launchedAtMs = System.currentTimeMillis();
        sInstance = context;
        mMainHandler = new Handler(context.getMainLooper());
        Object systemService = context.getSystemService("vibrator");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.os.Vibrator");
        mVibrator = (Vibrator) systemService;
        context.runtimeInstaller = new r2(context);
        context.setSaveRepository$app_release(new SaveRepository(context));
        context.gameStorage = GameStorage.INSTANCE.get(context);
        Log.i(TAG, "Launching VX Ace game: " + GAME_PATH);
        try {
            r2 r2Var = context.runtimeInstaller;
            if (r2Var == null) {
                Intrinsics.throwUninitializedPropertyAccessException("runtimeInstaller");
                r2Var = null;
            }
            r2Var.b(new File(GAME_PATH));
            Intrinsics.checkNotNullParameter(context, "context");
            Thread thread = new Thread(new W1(context, i3));
            thread.setDaemon(true);
            thread.start();
            AbstractC0369e0.a(context, context.gameId);
            super.onCreate(savedInstanceState);
            context.lifecycleAdapter = a.r(context, "vxace", null, null);
            SDLActivity.nativeSetenv("SDL_JOYSTICK_HIDAPI", "0");
            context.currentGame = context.resolveCurrentGame();
            Set set = S1.d.f2060a;
            Intrinsics.checkNotNullParameter(context, "<this>");
            context.fpsEnabled = context.getSharedPreferences("minhub_prefs", 0).getBoolean("show_fps", false);
            Intrinsics.checkNotNullParameter(context, "<this>");
            ViewGroup safeLayout$app_release = context.getSafeLayout$app_release();
            if (tvFps == null && safeLayout$app_release != null) {
                TextView textView = new TextView(context);
                textView.setText(context.getString(R.string.fps_placeholder));
                textView.setVisibility(context.getFpsEnabled() ? 0 : 8);
                textView.setTextColor(1627389951);
                textView.setTextSize(11.0f);
                tvFps = textView;
                safeLayout$app_release.addView(textView);
            }
            Intrinsics.checkNotNullParameter(context, "<this>");
            final ViewGroup safeLayout$app_release2 = context.getSafeLayout$app_release();
            if (safeLayout$app_release2 != null) {
                float f = context.getResources().getDisplayMetrics().density;
                final int i4 = (int) (44 * f);
                ImageView imageView = new ImageView(context);
                imageView.setImageResource(R.drawable.ic_menu_selector);
                imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                imageView.setBackgroundColor(0);
                imageView.setContentDescription(context.getString(R.string.arrange_menu_title));
                final FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i4, i4);
                layoutParams.gravity = 8388659;
                layoutParams.topMargin = (int) (24 * f);
                layoutParams.leftMargin = (int) (16 * f);
                final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
                final Ref.FloatRef floatRef = new Ref.FloatRef();
                final Ref.FloatRef floatRef2 = new Ref.FloatRef();
                final Ref.FloatRef floatRef3 = new Ref.FloatRef();
                floatRef3.element = layoutParams.leftMargin;
                final Ref.FloatRef floatRef4 = new Ref.FloatRef();
                floatRef4.element = layoutParams.topMargin;
                final int scaledTouchSlop = ViewConfiguration.get(this).getScaledTouchSlop();
                View.OnTouchListener onTouchListener = new View.OnTouchListener() { // from class: y1.l2
                    @Override // android.view.View.OnTouchListener
                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                        int actionMasked = motionEvent.getActionMasked();
                        Ref.FloatRef floatRef5 = floatRef;
                        Ref.FloatRef floatRef6 = floatRef2;
                        Ref.FloatRef floatRef7 = floatRef3;
                        FrameLayout.LayoutParams layoutParams2 = layoutParams;
                        Ref.FloatRef floatRef8 = floatRef4;
                        Ref.BooleanRef booleanRef2 = booleanRef;
                        if (actionMasked == 0) {
                            floatRef5.element = motionEvent.getRawX();
                            floatRef6.element = motionEvent.getRawY();
                            floatRef7.element = layoutParams2.leftMargin;
                            floatRef8.element = layoutParams2.topMargin;
                            booleanRef2.element = false;
                            return true;
                        }
                        if (actionMasked != 1) {
                            if (actionMasked != 2) {
                                return false;
                            }
                            float rawX = motionEvent.getRawX() - floatRef5.element;
                            float rawY = motionEvent.getRawY() - floatRef6.element;
                            if (!booleanRef2.element) {
                                float fAbs = Math.abs(rawX);
                                float f3 = scaledTouchSlop;
                                if (fAbs > f3 || Math.abs(rawY) > f3) {
                                    booleanRef2.element = true;
                                }
                            }
                            if (booleanRef2.element) {
                                int i5 = (int) (floatRef7.element + rawX);
                                ViewGroup viewGroup = safeLayout$app_release2;
                                int width = viewGroup.getWidth();
                                int i6 = i4;
                                layoutParams2.leftMargin = RangesKt.coerceIn(i5, 0, RangesKt.coerceAtLeast(width - i6, 0));
                                layoutParams2.topMargin = RangesKt.coerceIn((int) (floatRef8.element + rawY), 0, RangesKt.coerceAtLeast(viewGroup.getHeight() - i6, 0));
                                view.setLayoutParams(layoutParams2);
                                return true;
                            }
                        } else if (!booleanRef2.element) {
                            f2[] f2VarArr = f2.b;
                            if (m2.f6291a[0] != 1) {
                                throw new NoWhenBranchMatchedException();
                            }
                            k2.e(this);
                            return true;
                        }
                        return true;
                    }
                };
                context = this;
                imageView.setOnTouchListener(onTouchListener);
                safeLayout$app_release2.addView(imageView, layoutParams);
            }
            Intrinsics.checkNotNullParameter(context, "<this>");
            SharedPreferences sharedPreferences = context.getSharedPreferences("gamepad_settings", 0);
            GamepadConfig gamepadConfig = new GamepadConfig();
            gamepadConfig.opacity = Integer.valueOf(sharedPreferences.getInt("opacity", 30));
            gamepadConfig.scale = Integer.valueOf(sharedPreferences.getInt("scale", 100));
            gamepadConfig.diagonalMovement = Boolean.valueOf(sharedPreferences.getBoolean("diagonal_movement", false));
            context.getMGamepad().init(gamepadConfig, false);
            context.getMGamepad().setOnKeyDownListener(new u(12));
            context.getMGamepad().setOnKeyUpListener(new u(13));
            ViewGroup safeLayout$app_release3 = context.getSafeLayout$app_release();
            int i5 = 6;
            if (safeLayout$app_release3 != null) {
                GamepadOverlay gamepadOverlay = new GamepadOverlay(context, null);
                gamepadOverlay.setNativeKeySender(new I1.d(3));
                Game currentGame = context.getCurrentGame();
                gamepadOverlay.b = currentGame != null ? currentGame.getId() : -1;
                gamepadOverlay.d();
                safeLayout$app_release3.addView(gamepadOverlay, new FrameLayout.LayoutParams(-1, -1));
                context.setVxGamepadOverlay$app_release(gamepadOverlay);
                ViewGroup safeLayout$app_release4 = context.getSafeLayout$app_release();
                if (safeLayout$app_release4 != null) {
                    ViewGroup frameLayout = new FrameLayout(context);
                    safeLayout$app_release4.addView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
                    FrameLayout frameLayoutA = n2.a(context);
                    FrameLayout frameLayoutA2 = n2.a(context);
                    FrameLayout frameLayoutA3 = n2.a(context);
                    frameLayout.addView(frameLayoutA);
                    frameLayout.addView(frameLayoutA3);
                    frameLayout.addView(frameLayoutA2);
                    LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
                    View viewInflate = layoutInflaterFrom.inflate(R.layout.view_arrange_toolbar, frameLayout, false);
                    View viewInflate2 = layoutInflaterFrom.inflate(R.layout.view_arrange_properties, frameLayout, false);
                    frameLayout.addView(viewInflate);
                    frameLayout.addView(viewInflate2);
                    Intrinsics.checkNotNull(viewInflate);
                    Intrinsics.checkNotNull(viewInflate2);
                    C0385j1 c0385j1 = new C0385j1(context, gamepadOverlay, frameLayoutA, frameLayoutA2, frameLayoutA3, viewInflate, viewInflate2, new C0033n(17, context));
                    Game currentGame2 = context.getCurrentGame();
                    c0385j1.g = currentGame2 != null ? currentGame2.getId() : -1;
                    viewInflate.findViewById(R.id.btn_arrange_cancel).setOnClickListener(new ViewOnClickListenerC0376g1(c0385j1, 5));
                    viewInflate.findViewById(R.id.btn_arrange_save).setOnClickListener(new ViewOnClickListenerC0376g1(c0385j1, i5));
                    context.setVxControlsCoordinator$app_release(c0385j1);
                }
            }
            Intrinsics.checkNotNullParameter(context, "<this>");
            ViewGroup safeLayout$app_release5 = context.getSafeLayout$app_release();
            if (safeLayout$app_release5 != null) {
                float f3 = context.getResources().getDisplayMetrics().density;
                int i6 = (int) (44 * f3);
                ImageView imageView2 = new ImageView(context);
                imageView2.setImageResource(R.drawable.cool);
                imageView2.setBackgroundResource(R.drawable.bg_basic_cheat_quick);
                imageView2.setScaleType(ImageView.ScaleType.FIT_CENTER);
                imageView2.setElevation(6 * f3);
                imageView2.setContentDescription(context.getString(R.string.menu_basic_cheat));
                imageView2.setVisibility(8);
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i6, i6);
                layoutParams2.gravity = 8388661;
                layoutParams2.topMargin = (int) (72 * f3);
                layoutParams2.setMarginEnd((int) (12 * f3));
                Q q2 = new Q(new Ref.FloatRef(), new Ref.FloatRef(), new Ref.FloatRef(), new Ref.FloatRef(), new Ref.BooleanRef(), ViewConfiguration.get(context).getScaledTouchSlop(), 24 * f3, this);
                context = this;
                imageView2.setOnTouchListener(q2);
                safeLayout$app_release5.addView(imageView2, layoutParams2);
                context.setMCheatFab$app_release(imageView2);
                context.setMCheatFabBreathAnim$app_release(T.a(imageView2));
            }
            context.queueRuntimeScript$app_release(L1.H(S1.d.c(context)));
        } catch (Exception e3) {
            Log.e(TAG, "Failed to install VX Ace support files", e3);
            super.onCreate(savedInstanceState);
            Toast.makeText(context, context.getString(R.string.vxace_runtime_install_failed), 1).show();
            context.finish();
        }
    }

    @Override // org.libsdl.app.SDLActivity, android.app.Activity
    public void onDestroy() {
        v0 v0Var = this.lifecycleAdapter;
        if (v0Var != null) {
            v0Var.b();
        }
        AnimatorSet animatorSet = this.mCheatFabBreathAnim;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        persistPlaytime();
        super.onDestroy();
        System.exit(0);
    }

    @Override // android.app.Activity
    public boolean onGenericMotionEvent(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.mGamepad.processDPadEvent(event)) {
            return true;
        }
        return super.onGenericMotionEvent(event);
    }

    @Override // org.libsdl.app.SDLActivity, android.app.Activity
    public void onPause() {
        if (this.libsLoaded) {
            super.onPause();
        } else {
            try {
                super.onPause();
            } catch (Throwable unused) {
            }
        }
    }

    @Override // org.libsdl.app.SDLActivity, android.app.Activity
    public void onResume() {
        if (!this.libsLoaded) {
            try {
                super.onResume();
            } catch (Throwable unused) {
            }
        } else {
            super.onResume();
            queueRuntimeScript$app_release(L1.H(S1.d.c(this)));
            scheduleDir8Patches();
            flushCheatQueue();
        }
    }

    @Override // org.libsdl.app.SDLActivity, android.app.Activity
    public void onStart() {
        if (this.libsLoaded) {
            super.onStart();
            runSdlStartupBridge();
        } else {
            try {
                super.onStart();
            } catch (Throwable unused) {
            }
        }
    }

    @Override // org.libsdl.app.SDLActivity, android.app.Activity
    public void onStop() {
        if (this.libsLoaded) {
            super.onStop();
        } else {
            try {
                super.onStop();
            } catch (Throwable unused) {
            }
        }
    }

    @Override // org.libsdl.app.SDLActivity, android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
        if (hasFocus) {
            SDLSurface sDLSurface = SDLActivity.mSurface;
            if (sDLSurface != null) {
                sDLSurface.invalidate();
            }
            hideSystemBars();
        }
    }

    public final void queueRuntimeScript$app_release(String script) {
        Object objM9constructorimpl;
        Intrinsics.checkNotNullParameter(script, "script");
        try {
            Result.Companion companion = Result.INSTANCE;
            this.nativeScriptQueue.nativeExecuteScript(script);
            objM9constructorimpl = Result.m9constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM12exceptionOrNullimpl = Result.m12exceptionOrNullimpl(objM9constructorimpl);
        if (thM12exceptionOrNullimpl != null) {
            Log.e(TAG, "Failed to queue VX Ace runtime script", thM12exceptionOrNullimpl);
        }
    }

    public final void setCurrentGame$app_release(Game game) {
        this.currentGame = game;
    }

    public final void setCurrentLoadSaves$app_release(List<Save> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.currentLoadSaves = list;
    }

    public final void setFpsEnabled$app_release(boolean z2) {
        this.fpsEnabled = z2;
    }

    public final void setLoadSaveAdapter$app_release(g2 g2Var) {
        Intrinsics.checkNotNullParameter(g2Var, "<set-?>");
        this.loadSaveAdapter = g2Var;
    }

    public final void setLoadSaveOverlay$app_release(View view) {
        this.loadSaveOverlay = view;
    }

    public final void setMCheatFab$app_release(ImageView imageView) {
        this.mCheatFab = imageView;
    }

    public final void setMCheatFabBreathAnim$app_release(AnimatorSet animatorSet) {
        this.mCheatFabBreathAnim = animatorSet;
    }

    public final void setMCheatFabVisible$app_release(boolean z2) {
        this.mCheatFabVisible = z2;
    }

    public final void setMenuOverlay$app_release(View view) {
        this.menuOverlay = view;
    }

    public final void setMenuSectionState$app_release(C0400o1 c0400o1) {
        Intrinsics.checkNotNullParameter(c0400o1, "<set-?>");
        this.menuSectionState = c0400o1;
    }

    @Override // org.libsdl.app.SDLActivity
    public void setOrientationBis(int w2, int h2, boolean resizable, String hint) {
        Intrinsics.checkNotNullParameter(hint, "hint");
        if (AbstractC0369e0.b(this, this.gameId)) {
            setRequestedOrientation(7);
        } else {
            super.setOrientationBis(w2, h2, resizable, hint);
        }
    }

    public final void setSaveRepository$app_release(SaveRepository saveRepository) {
        Intrinsics.checkNotNullParameter(saveRepository, "<set-?>");
        this.saveRepository = saveRepository;
    }

    public final void setVxControlsCoordinator$app_release(C0385j1 c0385j1) {
        this.vxControlsCoordinator = c0385j1;
    }

    public final void setVxGamepadOverlay$app_release(GamepadOverlay gamepadOverlay) {
        this.vxGamepadOverlay = gamepadOverlay;
    }

    public final void updateStoredSaveCount$app_release() throws Throwable {
        int size;
        Game game = this.currentGame;
        if (game == null || game.getId() <= 0 || (size = getSaveRepository$app_release().scanSaves(game).size()) == game.getSaveCount()) {
            return;
        }
        Game gameCopy$default = Game.copy$default(game, 0, null, null, null, null, null, null, null, null, null, null, false, 0, 0L, size, null, 0, null, null, null, null, null, false, 0L, null, null, null, 134201343, null);
        GameStorage gameStorage = this.gameStorage;
        if (gameStorage == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gameStorage");
            gameStorage = null;
        }
        gameStorage.update(gameCopy$default);
        this.currentGame = gameCopy$default;
    }
}
