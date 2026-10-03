package org.godotengine.godot.nativeapi;

import A1.C0033n;
import C1.RunnableC0051b;
import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.ComponentCallbacks2;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.util.Log;
import android.util.Rational;
import android.util.TypedValue;
import f2.b;
import f2.c;
import f2.d;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.godotengine.godot.BuildProvider;
import org.godotengine.godot.Godot;
import org.godotengine.godot.GodotActivity;
import org.godotengine.godot.GodotHost;
import org.godotengine.godot.GodotRenderView;
import org.godotengine.godot.error.Error;
import org.godotengine.godot.feature.PictureInPictureProvider;
import org.godotengine.godot.io.FilePicker;
import org.godotengine.godot.plugin.GodotPlugin;
import org.godotengine.godot.utils.BenchmarkUtils;
import org.godotengine.godot.utils.DialogUtils;
import org.godotengine.godot.utils.GodotNetUtils;
import org.godotengine.godot.variant.Callable;
import p005c.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@a
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0018\u0002\n\u0002\b\u0016\b\u0001\u0018\u0000 q2\u00020\u0001:\u0001qB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\f\u001a\u00020\rH\u0002J\b\u0010\u000e\u001a\u00020\rH\u0002J\b\u0010\u000f\u001a\u00020\rH\u0002J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\b\u0010\u0013\u001a\u00020\u0012H\u0002J\b\u0010\u0014\u001a\u00020\u0012H\u0002J\u0010\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\b\u0010\u0016\u001a\u00020\rH\u0002J\u0018\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u0010\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\b\u0010\u001e\u001a\u00020\u0012H\u0002J\b\u0010\u001f\u001a\u00020\u0012H\u0002J3\u0010 \u001a\u00020\r2\u0006\u0010!\u001a\u00020\u00192\u0006\u0010\"\u001a\u00020\u00192\u0006\u0010#\u001a\u00020\u001d2\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00190%H\u0002¢\u0006\u0002\u0010&J+\u0010'\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u00192\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00190%H\u0002¢\u0006\u0002\u0010)J \u0010*\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010+\u001a\u00020\u0019H\u0002J\b\u0010,\u001a\u00020\u001dH\u0002J\b\u0010-\u001a\u00020\u001dH\u0002J\u0012\u0010.\u001a\u00020\u00122\b\u0010/\u001a\u0004\u0018\u00010\u0019H\u0002J\b\u00100\u001a\u00020\u0012H\u0002J\u0017\u00101\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0019\u0018\u00010%H\u0002¢\u0006\u0002\u00102J\u0018\u00103\u001a\u00020\r2\u0006\u00104\u001a\u00020\u001d2\u0006\u00105\u001a\u00020\u001dH\u0003J\u0010\u00106\u001a\u00020\u00122\u0006\u00107\u001a\u00020\u0019H\u0002J\u0013\u00108\u001a\b\u0012\u0004\u0012\u00020\u00190%H\u0002¢\u0006\u0002\u00102J\b\u00109\u001a\u00020\u0019H\u0002J\n\u0010:\u001a\u0004\u0018\u00010;H\u0002J\n\u0010<\u001a\u0004\u0018\u00010=H\u0002J\b\u0010>\u001a\u00020\u0019H\u0002J\u0010\u0010?\u001a\u00020\r2\u0006\u0010@\u001a\u00020\u0019H\u0002J\b\u0010A\u001a\u00020\u0012H\u0002J\u0010\u0010B\u001a\u00020\r2\u0006\u0010C\u001a\u00020\u0019H\u0002J\n\u0010D\u001a\u0004\u0018\u00010\u0019H\u0002J\b\u0010E\u001a\u00020\rH\u0002J\u001b\u0010F\u001a\u00020\u001d2\f\u0010G\u001a\b\u0012\u0004\u0012\u00020\u00190%H\u0002¢\u0006\u0002\u0010HJ\u0018\u0010I\u001a\u00020\r2\u0006\u0010J\u001a\u00020\u00192\u0006\u0010K\u001a\u00020\u0019H\u0002J\u0018\u0010L\u001a\u00020\r2\u0006\u0010J\u001a\u00020\u00192\u0006\u0010K\u001a\u00020\u0019H\u0002J\u0010\u0010M\u001a\u00020\r2\u0006\u0010N\u001a\u00020\u0019H\u0002J0\u0010O\u001a\u00020\u001d2\u0006\u0010P\u001a\u00020\u00192\u0006\u0010Q\u001a\u00020\u00192\u0006\u0010R\u001a\u00020\u00192\u0006\u0010S\u001a\u00020\u00192\u0006\u0010T\u001a\u00020\u0019H\u0002J\u0010\u0010U\u001a\u00020\u001d2\u0006\u0010V\u001a\u00020\u0019H\u0002J\u0010\u0010W\u001a\u00020\r2\u0006\u0010X\u001a\u00020\u0019H\u0002J\u0010\u0010Y\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0010\u0010Z\u001a\u00020\u00122\u0006\u0010[\u001a\u00020\\H\u0002J\b\u0010]\u001a\u00020\rH\u0002JC\u0010^\u001a\u00020\u001d2\u0006\u0010_\u001a\u00020\u00192\f\u0010`\u001a\b\u0012\u0004\u0012\u00020\u00190%2\u0006\u0010a\u001a\u00020\u00192\u0006\u0010b\u001a\u00020\u00192\u0006\u0010c\u001a\u00020\\2\u0006\u0010d\u001a\u00020\\H\u0002¢\u0006\u0002\u0010eJ\u0010\u0010f\u001a\u00020\r2\u0006\u0010g\u001a\u00020\u001dH\u0002J \u0010h\u001a\u00020\r2\u0006\u0010a\u001a\u00020\u00192\u0006\u0010b\u001a\u00020\u00192\u0006\u0010[\u001a\u00020\\H\u0002J\b\u0010i\u001a\u00020\u0012H\u0002J\b\u0010j\u001a\u00020\u0012H\u0002J\b\u0010k\u001a\u00020\rH\u0002J\u0018\u0010l\u001a\u00020\r2\u0006\u0010m\u001a\u00020\u001d2\u0006\u0010n\u001a\u00020\u001dH\u0002J\u0010\u0010o\u001a\u00020\r2\u0006\u0010p\u001a\u00020\u0012H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u0006\u001a\u0004\u0018\u00010\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\t¨\u0006r"}, d2 = {"Lorg/godotengine/godot/nativeapi/GodotNativeBridge;", "", "godot", "Lorg/godotengine/godot/Godot;", "<init>", "(Lorg/godotengine/godot/Godot;)V", "vibratorService", "Landroid/os/Vibrator;", "getVibratorService", "()Landroid/os/Vibrator;", "vibratorService$delegate", "Lkotlin/Lazy;", "onGodotSetupCompleted", "", "onGodotMainLoopStarted", "onGodotTerminating", "nativeEnableImmersiveMode", "enabled", "", "isInImmersiveMode", "isInEdgeToEdgeMode", "setKeepScreenOn", "restart", "alert", "message", "", "title", "forceQuit", "instanceId", "", "isDarkModeSupported", "isDarkMode", "showFilePicker", "currentDirectory", "filename", "fileMode", "filters", "", "(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V", "showDialog", "buttons", "(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V", "showInputDialog", "existingText", "getAccentColor", "getBaseColor", "requestPermission", "name", "requestPermissions", "getGrantedPermissions", "()[Ljava/lang/String;", "vibrate", "durationMs", "amplitude", "checkInternalFeatureSupport", "feature", "getGDExtensionConfigFiles", "getCACertificates", "getActivity", "Landroid/app/Activity;", "getRenderView", "Lorg/godotengine/godot/GodotRenderView;", "getClipboard", "setClipboard", "text", "hasClipboard", "setWindowColor", "color", "getInputFallbackMapping", "initInputDevices", "createNewGodotInstance", "args", "([Ljava/lang/String;)I", "nativeBeginBenchmarkMeasure", "scope", "label", "nativeEndBenchmarkMeasure", "nativeDumpBenchmark", "benchmarkFile", "nativeSignApk", "inputPath", "outputPath", "keystorePath", "keystoreUser", "keystorePassword", "nativeVerifyApk", "apkPath", "nativeOnEditorWorkspaceSelected", "workspace", "nativeOnDistractionFreeModeChanged", "nativeBuildEnvConnect", "callback", "Lorg/godotengine/godot/variant/Callable;", "nativeBuildEnvDisconnect", "nativeBuildEnvExecute", "buildTool", "arguments", "projectPath", "buildDir", "outputCallback", "resultCallback", "(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/godotengine/godot/variant/Callable;Lorg/godotengine/godot/variant/Callable;)I", "nativeBuildEnvCancel", "jobId", "nativeBuildEnvCleanProject", "nativeIsPiPModeSupported", "nativeIsInPiPMode", "nativeEnterPiPMode", "nativeSetPiPModeAspectRatio", "numerator", "denominator", "nativeSetAutoEnterPiPModeOnBackground", "autoEnterPiPOnBackground", "Companion", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGodotNativeBridge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GodotNativeBridge.kt\norg/godotengine/godot/nativeapi/GodotNativeBridge\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,436:1\n1#2:437\n37#3:438\n36#3,3:439\n29#4:442\n*S KotlinDebug\n*F\n+ 1 GodotNativeBridge.kt\norg/godotengine/godot/nativeapi/GodotNativeBridge\n*L\n239#1:438\n239#1:439,3\n323#1:442\n*E\n"})
public final class GodotNativeBridge {
    private static final String TAG = "GodotNativeBridge";
    private final Godot godot;

    /* JADX INFO: renamed from: vibratorService$delegate, reason: from kotlin metadata */
    private final Lazy vibratorService;

    public GodotNativeBridge(Godot godot) {
        Intrinsics.checkNotNullParameter(godot, "godot");
        this.godot = godot;
        this.vibratorService = LazyKt.lazy(new C0033n(10, this));
    }

    private final void alert(String message, String title) {
        Godot.alert$default(this.godot, message, title, null, 4, null);
    }

    private final boolean checkInternalFeatureSupport(String feature) {
        GodotHost primaryHost = this.godot.getPrimaryHost();
        if (primaryHost != null && primaryHost.supportsFeature(feature)) {
            return true;
        }
        Iterator<GodotPlugin> it = this.godot.getPluginRegistry$lib_templateRelease().getAllPlugins().iterator();
        while (it.hasNext()) {
            if (it.next().supportsFeature(feature)) {
                return true;
            }
        }
        return false;
    }

    private final int createNewGodotInstance(String[] args) {
        GodotHost primaryHost = this.godot.getPrimaryHost();
        if (primaryHost != null) {
            return primaryHost.onNewGodotInstanceRequested(args);
        }
        return -1;
    }

    private final boolean forceQuit(int instanceId) {
        return this.godot.forceQuit$lib_templateRelease(instanceId);
    }

    private final int getAccentColor() {
        TypedValue typedValue = new TypedValue();
        this.godot.getContext().getTheme().resolveAttribute(R.attr.colorAccent, typedValue, true);
        return typedValue.data;
    }

    private final Activity getActivity() {
        return this.godot.getActivity();
    }

    private final int getBaseColor() {
        TypedValue typedValue = new TypedValue();
        this.godot.getContext().getTheme().resolveAttribute(R.attr.colorBackground, typedValue, true);
        return typedValue.data;
    }

    private final String getCACertificates() {
        String cACertificates = GodotNetUtils.getCACertificates();
        Intrinsics.checkNotNullExpressionValue(cACertificates, "getCACertificates(...)");
        return cACertificates;
    }

    private final String getClipboard() {
        return this.godot.getClipboard();
    }

    private final String[] getGDExtensionConfigFiles() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<GodotPlugin> it = this.godot.getPluginRegistry$lib_templateRelease().getAllPlugins().iterator();
        while (it.hasNext()) {
            Set<String> pluginGDExtensionLibrariesPaths = it.next().getPluginGDExtensionLibrariesPaths();
            Intrinsics.checkNotNullExpressionValue(pluginGDExtensionLibrariesPaths, "getPluginGDExtensionLibrariesPaths(...)");
            linkedHashSet.addAll(pluginGDExtensionLibrariesPaths);
        }
        return (String[]) linkedHashSet.toArray(new String[0]);
    }

    private final String[] getGrantedPermissions() {
        return this.godot.getGrantedPermissions();
    }

    private final String getInputFallbackMapping() {
        return this.godot.getXrMode().inputFallbackMapping;
    }

    private final GodotRenderView getRenderView() {
        return this.godot.getRenderView();
    }

    private final Vibrator getVibratorService() {
        return (Vibrator) this.vibratorService.getValue();
    }

    private final boolean hasClipboard() {
        return this.godot.hasClipboard();
    }

    private final void initInputDevices() {
        this.godot.getGodotInputHandler().initInputDevices();
    }

    private final boolean isDarkMode() {
        return this.godot.getDarkMode();
    }

    private final boolean isDarkModeSupported() {
        Configuration configuration;
        Resources resources = this.godot.getContext().getResources();
        boolean z2 = false;
        if (resources != null && (configuration = resources.getConfiguration()) != null && (configuration.uiMode & 48) == 0) {
            z2 = true;
        }
        return !z2;
    }

    private final boolean isInEdgeToEdgeMode() {
        return this.godot.isInEdgeToEdgeMode();
    }

    private final boolean isInImmersiveMode() {
        return this.godot.isInImmersiveMode();
    }

    private final void nativeBeginBenchmarkMeasure(String scope, String label) {
        BenchmarkUtils.beginBenchmarkMeasure(scope, label);
    }

    private final void nativeBuildEnvCancel(int jobId) {
        try {
            GodotHost primaryHost = this.godot.getPrimaryHost();
            BuildProvider buildProvider = primaryHost != null ? primaryHost.getBuildProvider() : null;
            if (buildProvider != null) {
                buildProvider.buildEnvCancel(jobId);
            }
        } catch (Exception e2) {
            Log.e(TAG, "Unable to cancel command in build environment", e2);
        }
    }

    private final void nativeBuildEnvCleanProject(String projectPath, String buildDir, Callable callback) {
        try {
            GodotHost primaryHost = this.godot.getPrimaryHost();
            BuildProvider buildProvider = primaryHost != null ? primaryHost.getBuildProvider() : null;
            if (buildProvider != null) {
                buildProvider.buildEnvCleanProject(projectPath, buildDir, callback);
            }
        } catch (Exception e2) {
            Log.e(TAG, "Unable to clean project in build environment", e2);
        }
    }

    private final boolean nativeBuildEnvConnect(Callable callback) {
        try {
            GodotHost primaryHost = this.godot.getPrimaryHost();
            BuildProvider buildProvider = primaryHost != null ? primaryHost.getBuildProvider() : null;
            boolean zBuildEnvConnect = buildProvider != null ? buildProvider.buildEnvConnect(callback) : false;
            if (!zBuildEnvConnect) {
                Activity activity = this.godot.getActivity();
                if (activity == null) {
                    return false;
                }
                this.godot.runOnHostThread(new b(activity, 1));
            }
            return zBuildEnvConnect;
        } catch (Exception e2) {
            Log.e(TAG, "Unable to connect to build environment", e2);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void nativeBuildEnvConnect$lambda$6(Activity activity) {
        new AlertDialog.Builder(activity).setMessage(activity.getString(org.godotengine.godot.R.string.gabe_connection_error_message)).setTitle(activity.getString(org.godotengine.godot.R.string.gabe_connection_error_title)).setCancelable(false).setPositiveButton(activity.getString(org.godotengine.godot.R.string.dialog_download), new c(activity, 0)).setNegativeButton(activity.getString(org.godotengine.godot.R.string.dialog_cancel), new d()).create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void nativeBuildEnvConnect$lambda$6$lambda$4(Activity activity, DialogInterface dialog, int i3) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        Uri uri = Uri.parse("https://godotengine.org/download/android#gabe");
        Intrinsics.checkExpressionValueIsNotNull(uri, "Uri.parse(this)");
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        intent.addFlags(268435456);
        activity.startActivity(intent);
        dialog.cancel();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void nativeBuildEnvConnect$lambda$6$lambda$5(DialogInterface dialog, int i3) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        dialog.dismiss();
    }

    private final void nativeBuildEnvDisconnect() {
        try {
            GodotHost primaryHost = this.godot.getPrimaryHost();
            BuildProvider buildProvider = primaryHost != null ? primaryHost.getBuildProvider() : null;
            if (buildProvider != null) {
                buildProvider.buildEnvDisconnect();
            }
        } catch (Exception e2) {
            Log.e(TAG, "Unable to disconnect from build environment", e2);
        }
    }

    private final int nativeBuildEnvExecute(String buildTool, String[] arguments, String projectPath, String buildDir, Callable outputCallback, Callable resultCallback) {
        try {
            GodotHost primaryHost = this.godot.getPrimaryHost();
            BuildProvider buildProvider = primaryHost != null ? primaryHost.getBuildProvider() : null;
            if (buildProvider != null) {
                return buildProvider.buildEnvExecute(buildTool, arguments, projectPath, buildDir, outputCallback, resultCallback);
            }
            return -1;
        } catch (Exception e2) {
            Log.e(TAG, "Unable to execute Gradle command in build environment", e2);
            return -1;
        }
    }

    private final void nativeDumpBenchmark(String benchmarkFile) {
        BenchmarkUtils.dumpBenchmark(this.godot.getFileAccessHandler(), benchmarkFile);
    }

    private final void nativeEnableImmersiveMode(boolean enabled) {
        this.godot.runOnHostThread(new f2.a(this, enabled, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void nativeEnableImmersiveMode$lambda$1(GodotNativeBridge godotNativeBridge, boolean z2) {
        Godot.enableImmersiveMode$default(godotNativeBridge.godot, z2, false, 2, null);
    }

    private final void nativeEndBenchmarkMeasure(String scope, String label) {
        BenchmarkUtils.endBenchmarkMeasure$default(scope, label, false, 4, null);
    }

    private final void nativeEnterPiPMode() {
        Activity activity = this.godot.getActivity();
        if (activity instanceof PictureInPictureProvider) {
            this.godot.runOnHostThread(new b(activity, 0));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void nativeEnterPiPMode$lambda$7(Activity activity) {
        ((PictureInPictureProvider) activity).enterPiPMode();
    }

    private final boolean nativeIsInPiPMode() {
        Activity activity = this.godot.getActivity();
        if (activity instanceof GodotActivity) {
            return ((GodotActivity) activity).isInPictureInPictureMode();
        }
        return false;
    }

    private final boolean nativeIsPiPModeSupported() {
        ComponentCallbacks2 activity = this.godot.getActivity();
        if (activity instanceof PictureInPictureProvider) {
            return ((PictureInPictureProvider) activity).isPiPModeSupported();
        }
        return false;
    }

    private final void nativeOnDistractionFreeModeChanged(boolean enabled) {
        GodotHost primaryHost = this.godot.getPrimaryHost();
        if (primaryHost != null) {
            primaryHost.onDistractionFreeModeChanged(Boolean.valueOf(enabled));
        }
    }

    private final void nativeOnEditorWorkspaceSelected(String workspace) {
        GodotHost primaryHost = this.godot.getPrimaryHost();
        if (primaryHost != null) {
            primaryHost.onEditorWorkspaceSelected(workspace);
        }
    }

    private final void nativeSetAutoEnterPiPModeOnBackground(boolean autoEnterPiPOnBackground) {
        Activity activity = this.godot.getActivity();
        if (activity instanceof GodotActivity) {
            this.godot.runOnHostThread(new f2.a((GodotActivity) activity, autoEnterPiPOnBackground, 1));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void nativeSetAutoEnterPiPModeOnBackground$lambda$9(Activity activity, boolean z2) {
        GodotActivity.updatePiPParams$default((GodotActivity) activity, z2, null, 2, null);
    }

    private final void nativeSetPiPModeAspectRatio(int numerator, int denominator) {
        Activity activity = this.godot.getActivity();
        if (activity instanceof GodotActivity) {
            this.godot.runOnHostThread(new RunnableC0051b((GodotActivity) activity, numerator, denominator, 2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void nativeSetPiPModeAspectRatio$lambda$8(Activity activity, int i3, int i4) {
        GodotActivity.updatePiPParams$default((GodotActivity) activity, false, new Rational(i3, i4), 1, null);
    }

    private final int nativeSignApk(String inputPath, String outputPath, String keystorePath, String keystoreUser, String keystorePassword) {
        Error errorSignApk;
        GodotHost primaryHost = this.godot.getPrimaryHost();
        if (primaryHost == null || (errorSignApk = primaryHost.signApk(inputPath, outputPath, keystorePath, keystoreUser, keystorePassword)) == null) {
            errorSignApk = Error.ERR_UNAVAILABLE;
        }
        return errorSignApk.toNativeValue();
    }

    private final int nativeVerifyApk(String apkPath) {
        Error errorVerifyApk;
        GodotHost primaryHost = this.godot.getPrimaryHost();
        if (primaryHost == null || (errorVerifyApk = primaryHost.verifyApk(apkPath)) == null) {
            errorVerifyApk = Error.ERR_UNAVAILABLE;
        }
        return errorVerifyApk.toNativeValue();
    }

    private final void onGodotMainLoopStarted() {
        this.godot.onGodotMainLoopStarted$lib_templateRelease();
    }

    private final void onGodotSetupCompleted() {
        this.godot.onGodotSetupCompleted$lib_templateRelease();
    }

    private final void onGodotTerminating() {
        this.godot.onGodotTerminating$lib_templateRelease();
    }

    private final boolean requestPermission(String name) {
        return this.godot.requestPermission(name);
    }

    private final boolean requestPermissions() {
        return this.godot.requestPermissions();
    }

    private final void restart() {
        GodotHost primaryHost = this.godot.getPrimaryHost();
        if (primaryHost != null) {
            primaryHost.onGodotRestartRequested(this.godot);
        }
    }

    private final void setClipboard(String text) {
        this.godot.setClipboard(text);
    }

    private final void setKeepScreenOn(boolean enabled) {
        this.godot.setKeepScreenOn$lib_templateRelease(enabled);
    }

    private final void setWindowColor(String color) {
        this.godot.setWindowColor(color);
    }

    private final void showDialog(String title, String message, String[] buttons) {
        Activity activity = this.godot.getActivity();
        if (activity != null) {
            DialogUtils.INSTANCE.showDialog$lib_templateRelease(activity, title, message, buttons);
        }
    }

    private final void showFilePicker(String currentDirectory, String filename, int fileMode, String[] filters) {
        FilePicker.INSTANCE.showFilePicker(this.godot.getContext(), this.godot.getActivity(), currentDirectory, filename, fileMode, filters);
    }

    private final void showInputDialog(String title, String message, String existingText) {
        Activity activity = this.godot.getActivity();
        if (activity != null) {
            DialogUtils.INSTANCE.showInputDialog$lib_templateRelease(activity, title, message, existingText);
        }
    }

    @SuppressLint({"MissingPermission"})
    private final void vibrate(int durationMs, int amplitude) {
        if (durationMs <= 0 || !this.godot.requestPermission("VIBRATE")) {
            return;
        }
        try {
            if (Build.VERSION.SDK_INT < 26) {
                Vibrator vibratorService = getVibratorService();
                if (vibratorService != null) {
                    vibratorService.vibrate(durationMs);
                    return;
                }
                return;
            }
            if (amplitude <= -1) {
                Vibrator vibratorService2 = getVibratorService();
                if (vibratorService2 != null) {
                    vibratorService2.vibrate(VibrationEffect.createOneShot(durationMs, -1));
                    return;
                }
                return;
            }
            Vibrator vibratorService3 = getVibratorService();
            if (vibratorService3 != null) {
                vibratorService3.vibrate(VibrationEffect.createOneShot(durationMs, amplitude));
            }
        } catch (SecurityException unused) {
            Log.w(TAG, "SecurityException: VIBRATE permission not found. Make sure it is declared in the manifest or enabled in the export preset.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Vibrator vibratorService_delegate$lambda$0(GodotNativeBridge godotNativeBridge) {
        Object systemService = godotNativeBridge.godot.getContext().getSystemService("vibrator");
        if (systemService instanceof Vibrator) {
            return (Vibrator) systemService;
        }
        return null;
    }
}
