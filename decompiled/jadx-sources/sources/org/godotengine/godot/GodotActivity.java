package org.godotengine.godot;

import C1.A1;
import android.app.Activity;
import android.app.PictureInPictureParams;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.util.Rational;
import android.view.View;
import androidx.activity.OnBackPressedCallback;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.OnBackPressedDispatcherKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentTransaction;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.godotengine.godot.feature.PictureInPictureProvider;
import org.godotengine.godot.utils.CommandLineFileParser;
import org.godotengine.godot.utils.ProcessPhoenix;
import p033m0.o;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u000b\b&\u0018\u0000 O2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001OB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u0019H\u0004J\u001d\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u000f0\u001c2\b\b\u0002\u0010\u001a\u001a\u00020\u0019H\u0004¢\u0006\u0002\u0010\u001dJ\u0012\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!H\u0015J\u001b\u0010\"\u001a\u00020#2\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u000f0\u001cH\u0016¢\u0006\u0002\u0010%J\u001a\u0010&\u001a\u00020\u001f2\b\u0010'\u001a\u0004\u0018\u00010!2\u0006\u0010(\u001a\u00020\u0019H\u0004J\b\u0010)\u001a\u00020#H\u0015J\b\u0010*\u001a\u00020\u001fH\u0014J\b\u0010+\u001a\u00020\u001fH\u0014J\u0010\u0010,\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020.H\u0016J\u0010\u0010/\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020.H\u0002J\u0010\u00100\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020.H\u0016J\b\u00101\u001a\u00020\u001fH\u0016J\u0010\u00102\u001a\u00020\u001f2\u0006\u00103\u001a\u00020\u0019H\u0014J\u0018\u00104\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020\u00192\u0006\u00105\u001a\u000206H\u0015J\"\u00107\u001a\u00020\u001f2\u0006\u00108\u001a\u00020#2\u0006\u00109\u001a\u00020#2\b\u0010:\u001a\u0004\u0018\u00010\u0019H\u0015J+\u0010;\u001a\u00020\u001f2\u0006\u00108\u001a\u00020#2\f\u0010<\u001a\b\u0012\u0004\u0012\u00020\u000f0\u001c2\u0006\u0010=\u001a\u00020>H\u0017¢\u0006\u0002\u0010?J\n\u0010@\u001a\u0004\u0018\u00010AH\u0016J\n\u0010B\u001a\u0004\u0018\u00010.H\u0016J\b\u0010C\u001a\u00020\u0014H\u0014J\u000e\u0010D\u001a\b\u0012\u0004\u0012\u00020\u000f0EH\u0017J\u0010\u0010F\u001a\u00020\u001f2\u0006\u0010G\u001a\u000206H\u0016J\b\u0010H\u001a\u000206H\u0016J\b\u0010I\u001a\u000206H\u0014J\u001c\u0010J\u001a\u00020\u001f2\b\b\u0002\u0010K\u001a\u0002062\n\b\u0002\u0010L\u001a\u0004\u0018\u00010\bJ\b\u0010M\u001a\u00020\u001fH\u0016J\b\u0010N\u001a\u00020\u001fH\u0014R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u000ej\b\u0012\u0004\u0012\u00020\u000f`\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\"\u0010\u0015\u001a\u0004\u0018\u00010\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014@BX\u0084\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017¨\u0006P"}, d2 = {"Lorg/godotengine/godot/GodotActivity;", "Landroidx/fragment/app/FragmentActivity;", "Lorg/godotengine/godot/GodotHost;", "Lorg/godotengine/godot/feature/PictureInPictureProvider;", "<init>", "()V", "pipAspectRatio", "Ljava/util/concurrent/atomic/AtomicReference;", "Landroid/util/Rational;", "autoEnterPiP", "Ljava/util/concurrent/atomic/AtomicBoolean;", "gameViewSourceRectHint", "Landroid/graphics/Rect;", "commandLineParams", "Ljava/util/ArrayList;", "", "Lkotlin/collections/ArrayList;", "minPiPRatio", "maxPiPRatio", "value", "Lorg/godotengine/godot/GodotFragment;", "godotFragment", "getGodotFragment", "()Lorg/godotengine/godot/GodotFragment;", "sanitizeLaunchIntent", "Landroid/content/Intent;", "launchIntent", "retrieveCommandLineParamsFromLaunchIntent", "", "(Landroid/content/Intent;)[Ljava/lang/String;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onNewGodotInstanceRequested", "", "args", "([Ljava/lang/String;)I", "triggerRebirth", "bundle", "intent", "getGodotAppLayout", "onDestroy", "onStop", "onGodotForceQuit", "instance", "Lorg/godotengine/godot/Godot;", "terminateGodotInstance", "onGodotRestartRequested", "onGodotSetupCompleted", "onNewIntent", "newIntent", "handleStartIntent", "newLaunch", "", "onActivityResult", "requestCode", "resultCode", "data", "onRequestPermissionsResult", "permissions", "grantResults", "", "(I[Ljava/lang/String;[I)V", "getActivity", "Landroid/app/Activity;", "getGodot", "initGodotInstance", "getCommandLine", "", "onPictureInPictureModeChanged", "isInPictureInPictureMode", "isPiPModeSupported", "isPiPEnabled", "updatePiPParams", "enableAutoEnter", "aspectRatio", "enterPiPMode", "onUserLeaveHint", "Companion", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class GodotActivity extends FragmentActivity implements GodotHost, PictureInPictureProvider {
    private GodotFragment godotFragment;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = "GodotActivity";
    private static final String EXTRA_COMMAND_LINE_PARAMS = "command_line_params";
    private static final String EXTRA_NEW_LAUNCH = "new_launch_requested";
    private static final int DEFAULT_WINDOW_ID = 664;
    private final AtomicReference<Rational> pipAspectRatio = new AtomicReference<>();
    private final AtomicBoolean autoEnterPiP = new AtomicBoolean(false);
    private final Rect gameViewSourceRectHint = new Rect();
    private final ArrayList<String> commandLineParams = new ArrayList<>();
    private final Rational minPiPRatio = new Rational(100, 239);
    private final Rational maxPiPRatio = new Rational(239, 100);

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0016\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u00020\u00058\u0006X\u0087D¢\u0006\u000e\n\u0000\u0012\u0004\b\b\u0010\u0003\u001a\u0004\b\t\u0010\nR\u001c\u0010\u000b\u001a\u00020\u00058\u0004X\u0085D¢\u0006\u000e\n\u0000\u0012\u0004\b\f\u0010\u0003\u001a\u0004\b\r\u0010\nR\u0016\u0010\u000e\u001a\u00020\u000f8\u0002X\u0083D¢\u0006\b\n\u0000\u0012\u0004\b\u0010\u0010\u0003¨\u0006\u0011"}, d2 = {"Lorg/godotengine/godot/GodotActivity$Companion;", "", "<init>", "()V", "TAG", "", "kotlin.jvm.PlatformType", "EXTRA_COMMAND_LINE_PARAMS", "getEXTRA_COMMAND_LINE_PARAMS$annotations", "getEXTRA_COMMAND_LINE_PARAMS", "()Ljava/lang/String;", "EXTRA_NEW_LAUNCH", "getEXTRA_NEW_LAUNCH$annotations", "getEXTRA_NEW_LAUNCH", "DEFAULT_WINDOW_ID", "", "getDEFAULT_WINDOW_ID$annotations", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String getEXTRA_COMMAND_LINE_PARAMS() {
            return GodotActivity.EXTRA_COMMAND_LINE_PARAMS;
        }

        public final String getEXTRA_NEW_LAUNCH() {
            return GodotActivity.EXTRA_NEW_LAUNCH;
        }

        private Companion() {
        }

        @JvmStatic
        private static /* synthetic */ void getDEFAULT_WINDOW_ID$annotations() {
        }

        @JvmStatic
        public static /* synthetic */ void getEXTRA_COMMAND_LINE_PARAMS$annotations() {
        }

        @JvmStatic
        public static /* synthetic */ void getEXTRA_NEW_LAUNCH$annotations() {
        }
    }

    public static final String getEXTRA_COMMAND_LINE_PARAMS() {
        return INSTANCE.getEXTRA_COMMAND_LINE_PARAMS();
    }

    public static final String getEXTRA_NEW_LAUNCH() {
        return INSTANCE.getEXTRA_NEW_LAUNCH();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreate$lambda$0(GodotActivity godotActivity, OnBackPressedCallback addCallback) {
        Intrinsics.checkNotNullParameter(addCallback, "$this$addCallback");
        GodotFragment godotFragment = godotActivity.godotFragment;
        if (godotFragment != null) {
            godotFragment.onBackPressed();
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$1(View view, GodotActivity godotActivity, View view2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        view.getGlobalVisibleRect(godotActivity.gameViewSourceRectHint);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onGodotRestartRequested$lambda$6(GodotActivity godotActivity, Godot godot) {
        GodotFragment godotFragment = godotActivity.godotFragment;
        if (godotFragment == null || godot != godotFragment.getGodot()) {
            return;
        }
        Log.v(TAG, "Restarting Godot instance...");
        ProcessPhoenix.triggerRebirth(godotActivity);
    }

    public static /* synthetic */ String[] retrieveCommandLineParamsFromLaunchIntent$default(GodotActivity godotActivity, Intent intent, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: retrieveCommandLineParamsFromLaunchIntent");
        }
        if ((i3 & 1) != 0) {
            intent = godotActivity.getIntent();
        }
        return godotActivity.retrieveCommandLineParamsFromLaunchIntent(intent);
    }

    public static /* synthetic */ Intent sanitizeLaunchIntent$default(GodotActivity godotActivity, Intent intent, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sanitizeLaunchIntent");
        }
        if ((i3 & 1) != 0) {
            intent = godotActivity.getIntent();
        }
        return godotActivity.sanitizeLaunchIntent(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void terminateGodotInstance(Godot instance) {
        GodotFragment godotFragment = this.godotFragment;
        if (godotFragment == null || instance != godotFragment.getGodot()) {
            return;
        }
        Log.v(TAG, "Force quitting Godot instance");
        ProcessPhoenix.forceQuit(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void triggerRebirth$lambda$2(GodotActivity godotActivity, Bundle bundle, Intent intent) {
        ProcessPhoenix.triggerRebirth(godotActivity, bundle, intent);
    }

    public static /* synthetic */ void updatePiPParams$default(GodotActivity godotActivity, boolean z2, Rational rational, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updatePiPParams");
        }
        if ((i3 & 1) != 0) {
            z2 = godotActivity.autoEnterPiP.get();
        }
        if ((i3 & 2) != 0) {
            rational = godotActivity.pipAspectRatio.get();
        }
        godotActivity.updatePiPParams(z2, rational);
    }

    @Override // org.godotengine.godot.feature.PictureInPictureProvider
    public void enterPiPMode() {
        if (isPiPModeSupported()) {
            updatePiPParams$default(this, false, null, 3, null);
            Log.v(TAG, "Entering PiP mode");
            enterPictureInPictureMode();
        }
    }

    @Override // org.godotengine.godot.GodotHost
    public List<String> getCommandLine() {
        return this.commandLineParams;
    }

    @Override // org.godotengine.godot.GodotHost
    public Godot getGodot() {
        GodotFragment godotFragment = this.godotFragment;
        if (godotFragment != null) {
            return godotFragment.getGodot();
        }
        return null;
    }

    public int getGodotAppLayout() {
        return R.layout.godot_app_layout;
    }

    public final GodotFragment getGodotFragment() {
        return this.godotFragment;
    }

    public void handleStartIntent(Intent intent, boolean newLaunch) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (newLaunch) {
            return;
        }
        String str = EXTRA_NEW_LAUNCH;
        if (intent.getBooleanExtra(str, false)) {
            Log.d(TAG, "New launch requested, restarting..");
            Intent intentPutExtra = new Intent(intent).putExtra(str, false);
            Intrinsics.checkNotNullExpressionValue(intentPutExtra, "putExtra(...)");
            ProcessPhoenix.triggerRebirth(this, intentPutExtra);
        }
    }

    public GodotFragment initGodotInstance() {
        return new GodotFragment();
    }

    public boolean isPiPEnabled() {
        return false;
    }

    @Override // org.godotengine.godot.feature.PictureInPictureProvider
    public boolean isPiPModeSupported() {
        return isPiPEnabled() && getPackageManager().hasSystemFeature("android.software.picture_in_picture");
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        GodotFragment godotFragment = this.godotFragment;
        if (godotFragment != null) {
            godotFragment.onActivityResult(requestCode, resultCode, data);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        List<String> arrayList;
        View viewFindViewById;
        Intent intent = getIntent();
        Intrinsics.checkNotNullExpressionValue(intent, "getIntent(...)");
        setIntent(sanitizeLaunchIntent(intent));
        try {
            CommandLineFileParser commandLineFileParser = CommandLineFileParser.INSTANCE;
            InputStream inputStreamOpen = getAssets().open("_cl_");
            Intrinsics.checkNotNullExpressionValue(inputStreamOpen, "open(...)");
            arrayList = commandLineFileParser.parseCommandLine(inputStreamOpen);
        } catch (Exception unused) {
            arrayList = new ArrayList<>();
        }
        String str = TAG;
        Log.d(str, "Project command line parameters: " + arrayList);
        this.commandLineParams.addAll(arrayList);
        String[] strArrRetrieveCommandLineParamsFromLaunchIntent$default = retrieveCommandLineParamsFromLaunchIntent$default(this, null, 1, null);
        Intent intent2 = getIntent();
        String string = Arrays.toString(strArrRetrieveCommandLineParamsFromLaunchIntent$default);
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        Log.d(str, "Launch intent " + intent2 + " with parameters " + string);
        CollectionsKt__MutableCollectionsKt.addAll(this.commandLineParams, strArrRetrieveCommandLineParamsFromLaunchIntent$default);
        super.onCreate(savedInstanceState);
        setContentView(getGodotAppLayout());
        OnBackPressedDispatcher onBackPressedDispatcher = getOnBackPressedDispatcher();
        Intrinsics.checkNotNullExpressionValue(onBackPressedDispatcher, "<get-onBackPressedDispatcher>(...)");
        OnBackPressedDispatcherKt.addCallback$default(onBackPressedDispatcher, null, false, new Function1() { // from class: org.godotengine.godot.i
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return GodotActivity.onCreate$lambda$0(this.b, (OnBackPressedCallback) obj);
            }
        }, 3, null);
        Intent intent3 = getIntent();
        Intrinsics.checkNotNullExpressionValue(intent3, "getIntent(...)");
        handleStartIntent(intent3, true);
        Fragment fragmentFindFragmentById = getSupportFragmentManager().findFragmentById(R.id.godot_fragment_container);
        if (fragmentFindFragmentById instanceof GodotFragment) {
            Log.v(str, "Reusing existing Godot fragment instance.");
            this.godotFragment = (GodotFragment) fragmentFindFragmentById;
        } else {
            Log.v(str, "Creating new Godot fragment instance.");
            this.godotFragment = initGodotInstance();
            FragmentTransaction fragmentTransactionBeginTransaction = getSupportFragmentManager().beginTransaction();
            Intrinsics.checkNotNullExpressionValue(fragmentTransactionBeginTransaction, "beginTransaction(...)");
            if (fragmentFindFragmentById != null) {
                Log.v(str, "Removing existing fragment before replacement.");
                fragmentTransactionBeginTransaction.remove(fragmentFindFragmentById);
            }
            int i3 = R.id.godot_fragment_container;
            GodotFragment godotFragment = this.godotFragment;
            Intrinsics.checkNotNull(godotFragment);
            fragmentTransactionBeginTransaction.replace(i3, godotFragment).setPrimaryNavigationFragment(this.godotFragment).commitNowAllowingStateLoss();
        }
        if (Build.VERSION.SDK_INT < 26 || (viewFindViewById = findViewById(R.id.godot_fragment_container)) == null) {
            return;
        }
        viewFindViewById.addOnLayoutChangeListener(new j(0, viewFindViewById, this));
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        Log.v(TAG, "Destroying GodotActivity " + this + "...");
        super.onDestroy();
    }

    @Override // org.godotengine.godot.GodotHost
    public void onGodotForceQuit(Godot instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        runOnUiThread(new k(this, instance, 0));
    }

    @Override // org.godotengine.godot.GodotHost
    public void onGodotRestartRequested(Godot instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        runOnUiThread(new k(this, instance, 1));
    }

    @Override // org.godotengine.godot.GodotHost
    public void onGodotSetupCompleted() {
        super.onGodotSetupCompleted();
        if (isPiPEnabled()) {
            try {
                this.pipAspectRatio.set(new Rational(Integer.parseInt(GodotLib.getGlobal("display/window/size/viewport_width")), Integer.parseInt(GodotLib.getGlobal("display/window/size/viewport_height"))));
            } catch (NumberFormatException e2) {
                Log.w(TAG, "Unable to parse viewport dimensions.", e2);
            }
        }
    }

    @Override // org.godotengine.godot.GodotHost
    public int onNewGodotInstanceRequested(String[] args) {
        Intrinsics.checkNotNullParameter(args, "args");
        String str = TAG;
        String string = Arrays.toString(args);
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        Log.d(str, "Restarting with parameters " + string);
        Intent intentPutExtra = new Intent().setComponent(new ComponentName(this, getClass().getName())).addFlags(268435456).putExtra(EXTRA_COMMAND_LINE_PARAMS, args);
        Intrinsics.checkNotNullExpressionValue(intentPutExtra, "putExtra(...)");
        triggerRebirth(null, intentPutExtra);
        return DEFAULT_WINDOW_ID;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onNewIntent(Intent newIntent) {
        Intrinsics.checkNotNullParameter(newIntent, "newIntent");
        setIntent(sanitizeLaunchIntent(newIntent));
        super.onNewIntent(getIntent());
        Intent intent = getIntent();
        Intrinsics.checkNotNullExpressionValue(intent, "getIntent(...)");
        handleStartIntent(intent, false);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onPictureInPictureModeChanged(boolean isInPictureInPictureMode) {
        super.onPictureInPictureModeChanged(isInPictureInPictureMode);
        Godot godot = getGodot();
        if (godot != null) {
            godot.onPictureInPictureModeChanged$lib_templateRelease(isInPictureInPictureMode);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(grantResults, "grantResults");
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        GodotFragment godotFragment = this.godotFragment;
        if (godotFragment != null) {
            godotFragment.onRequestPermissionsResult(requestCode, permissions, grantResults);
        }
        if (requestCode == 1001 || requestCode == 1002) {
            Log.d(TAG, "Received permissions request result..");
            int length = permissions.length;
            for (int i3 = 0; i3 < length; i3++) {
                boolean z2 = grantResults[i3] == 0;
                Log.d(TAG, "Permission " + permissions[i3] + " " + (z2 ? "granted" : "denied"));
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        if (!isInPictureInPictureMode() || isFinishing()) {
            return;
        }
        finish();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onUserLeaveHint() {
        if (this.autoEnterPiP.get()) {
            enterPiPMode();
        }
    }

    public final String[] retrieveCommandLineParamsFromLaunchIntent(Intent launchIntent) throws PackageManager.NameNotFoundException {
        Intrinsics.checkNotNullParameter(launchIntent, "launchIntent");
        ComponentName component = launchIntent.getComponent();
        if (component == null) {
            component = getComponentName();
        }
        ActivityInfo activityInfo = getPackageManager().getActivityInfo(component, 0);
        Intrinsics.checkNotNullExpressionValue(activityInfo, "getActivityInfo(...)");
        if (activityInfo.exported) {
            return new String[0];
        }
        String[] stringArrayExtra = launchIntent.getStringArrayExtra(EXTRA_COMMAND_LINE_PARAMS);
        return stringArrayExtra == null ? new String[0] : stringArrayExtra;
    }

    public final Intent sanitizeLaunchIntent(Intent launchIntent) throws PackageManager.NameNotFoundException {
        Intrinsics.checkNotNullParameter(launchIntent, "launchIntent");
        ComponentName component = launchIntent.getComponent();
        if (component == null) {
            component = getComponentName();
        }
        ActivityInfo activityInfo = getPackageManager().getActivityInfo(component, 0);
        Intrinsics.checkNotNullExpressionValue(activityInfo, "getActivityInfo(...)");
        if (activityInfo.exported) {
            launchIntent.removeExtra(EXTRA_COMMAND_LINE_PARAMS);
        }
        return launchIntent;
    }

    public final void triggerRebirth(Bundle bundle, Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Godot.Companion companion = Godot.INSTANCE;
        Context applicationContext = getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        companion.getInstance(applicationContext).destroyAndKillProcess(new A1(this, bundle, intent, 9));
    }

    public final void updatePiPParams(boolean enableAutoEnter, Rational aspectRatio) {
        if (aspectRatio == null) {
            aspectRatio = null;
        } else if (aspectRatio.compareTo(this.minPiPRatio) < 0 || aspectRatio.compareTo(this.maxPiPRatio) > 0) {
            Log.w(TAG, "The bounds of the aspect ratio must be between 2.39:1 and 1:2.39 (inclusive). Coercing to valid range.");
            aspectRatio = (Rational) RangesKt___RangesKt.coerceIn(aspectRatio, this.minPiPRatio, this.maxPiPRatio);
        }
        if (isPiPModeSupported()) {
            this.autoEnterPiP.set(enableAutoEnter);
            this.pipAspectRatio.set(aspectRatio);
            int i3 = Build.VERSION.SDK_INT;
            if (i3 >= 26) {
                PictureInPictureParams.Builder aspectRatio2 = o.b().setSourceRectHint(this.gameViewSourceRectHint).setAspectRatio(aspectRatio);
                if (i3 >= 31) {
                    aspectRatio2.setSeamlessResizeEnabled(false).setAutoEnterEnabled(enableAutoEnter);
                }
                if (i3 >= 33) {
                    aspectRatio2.setExpandedAspectRatio(aspectRatio);
                }
                setPictureInPictureParams(aspectRatio2.build());
            }
        }
    }

    @Override // org.godotengine.godot.GodotHost
    public Activity getActivity() {
        return this;
    }
}
