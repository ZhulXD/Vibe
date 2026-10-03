package org.godotengine.godot;

import android.content.res.AssetManager;
import android.view.Surface;
import org.godotengine.godot.io.directory.DirectoryAccessHandler;
import org.godotengine.godot.io.file.FileAccessHandler;
import org.godotengine.godot.nativeapi.GodotNativeBridge;
import org.godotengine.godot.tts.GodotTTS;
import org.godotengine.godot.utils.GodotNetUtils;
import org.godotengine.godot.variant.Callable;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class GodotLib {
    static {
        System.loadLibrary("godot_android");
    }

    public static native void accelerometer(float f, float f3, float f4);

    public static native void back();

    @Deprecated
    public static void calldeferred(long j2, String str, Object[] objArr) {
        Callable.callDeferred(j2, str, objArr);
    }

    @Deprecated
    public static void callobject(long j2, String str, Object[] objArr) {
        Callable.call(j2, str, objArr);
    }

    public static native void dispatchMouseEvent(int i3, int i4, float f, float f3, float f4, float f5, boolean z2, boolean z3, float f6, float f7, float f8);

    public static native void dispatchTouchEvent(int i3, int i4, int i5, float[] fArr, boolean z2);

    public static native void filePickerCallback(boolean z2, String[] strArr);

    public static native void focusin();

    public static native void focusout();

    public static native Object getEditorProjectMetadata(String str, String str2, Object obj);

    public static native String getEditorSetting(String str);

    public static native String getGlobal(String str);

    public static native String getProjectResourceDir();

    public static native String[] getRendererInfo(boolean z2);

    public static native void gravity(float f, float f3, float f4);

    public static native void gyroscope(float f, float f3, float f4);

    public static native void hardwareKeyboardConnected(boolean z2);

    public static native boolean hasFeature(String str);

    public static native boolean initialize(GodotNativeBridge godotNativeBridge, AssetManager assetManager, GodotIO godotIO, GodotNetUtils godotNetUtils, DirectoryAccessHandler directoryAccessHandler, FileAccessHandler fileAccessHandler, boolean z2);

    public static native boolean isEditorHint();

    public static native boolean isProjectManagerHint();

    public static native void joyaxis(int i3, int i4, float f);

    public static native void joybutton(int i3, int i4, boolean z2);

    public static native void joyconnectionchanged(int i3, boolean z2, String str);

    public static native void joyhat(int i3, int i4, int i5);

    public static native void key(int i3, int i4, int i5, boolean z2, boolean z3);

    public static native void magnetometer(float f, float f3, float f4);

    public static native void magnify(float f, float f3, float f4);

    public static native void newcontext(Surface surface);

    public static native void onNightModeChanged();

    public static native void onOrientationChange(int i3);

    public static native void onPictureInPictureModeChanged(boolean z2);

    public static native void onRendererPaused();

    public static native void onRendererResumed();

    public static native void ondestroy();

    public static native void pan(float f, float f3, float f4, float f5);

    public static native void requestPermissionResult(String str, boolean z2);

    public static native void resize(Surface surface, int i3, int i4);

    public static native void setEditorProjectMetadata(String str, String str2, Object obj);

    public static native void setEditorSetting(String str, Object obj);

    public static native void setVirtualKeyboardHeight(int i3);

    public static native boolean setup(String[] strArr, GodotTTS godotTTS);

    public static native boolean shouldDispatchInputToRenderThread();

    public static native boolean step();

    public static native void ttsCallback(int i3, long j2, int i4);
}
