package org.godotengine.godot;

import android.app.Activity;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import org.godotengine.godot.error.Error;
import org.godotengine.godot.plugin.GodotPlugin;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public interface GodotHost {
    Activity getActivity();

    default BuildProvider getBuildProvider() {
        return null;
    }

    default List<String> getCommandLine() {
        return Collections.EMPTY_LIST;
    }

    Godot getGodot();

    default Set<GodotPlugin> getHostPlugins(Godot godot) {
        return Collections.EMPTY_SET;
    }

    default void onGodotForceQuit(Godot godot) {
    }

    default int onNewGodotInstanceRequested(String[] strArr) {
        return -1;
    }

    default void runOnHostThread(Runnable runnable) {
        Activity activity;
        if (runnable == null || (activity = getActivity()) == null) {
            return;
        }
        activity.runOnUiThread(runnable);
    }

    default Error signApk(String str, String str2, String str3, String str4, String str5) {
        return Error.ERR_UNAVAILABLE;
    }

    default boolean supportsFeature(String str) {
        return false;
    }

    default Error verifyApk(String str) {
        return Error.ERR_UNAVAILABLE;
    }

    default boolean onGodotForceQuit(int i3) {
        return false;
    }

    default void onGodotMainLoopStarted() {
    }

    default void onGodotSetupCompleted() {
    }

    default void onDistractionFreeModeChanged(Boolean bool) {
    }

    default void onEditorWorkspaceSelected(String str) {
    }

    default void onGodotRestartRequested(Godot godot) {
    }
}
