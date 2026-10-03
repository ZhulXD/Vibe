package org.godotengine.godot;

import android.view.SurfaceView;
import org.godotengine.godot.input.GodotInputHandler;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public interface GodotRenderView {
    boolean blockingExitRenderer(long j2);

    boolean canCapturePointer();

    void configurePointerIcon(int i3, String str, float f, float f3);

    GodotInputHandler getInputHandler();

    SurfaceView getView();

    void onActivityPaused();

    void onActivityResumed();

    void onActivityStarted();

    void onActivityStopped();

    void queueOnRenderThread(Runnable runnable);

    void setPointerIcon(int i3);

    void startRenderer();
}
