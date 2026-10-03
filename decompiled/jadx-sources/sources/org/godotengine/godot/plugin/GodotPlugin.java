package org.godotengine.godot.plugin;

import C1.A1;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.view.Surface;
import android.view.View;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
import org.godotengine.godot.Godot;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class GodotPlugin {
    private static final String TAG = "GodotPlugin";
    private final Godot godot;
    private final ConcurrentHashMap<String, SignalInfo> registeredSignals = new ConcurrentHashMap<>();

    public GodotPlugin(Godot godot) {
        this.godot = godot;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$emitSignal$0(String str, SignalInfo signalInfo, Object[] objArr) {
        nativeEmitSignal(str, signalInfo.getName(), objArr);
    }

    private static native void nativeEmitSignal(String str, String str2, Object[] objArr);

    private static native void nativeRegisterMethod(String str, String str2, String str3, String[] strArr);

    private static native void nativeRegisterSignal(String str, String str2, String[] strArr);

    private static native boolean nativeRegisterSingleton(String str, Object obj);

    public void emitSignal(String str, Object... objArr) {
        try {
            SignalInfo signalInfo = this.registeredSignals.get(str);
            if (signalInfo != null) {
                emitSignal(getGodot(), getPluginName(), signalInfo, objArr);
                return;
            }
            throw new IllegalArgumentException("Signal " + str + " is not registered for this plugin.");
        } catch (IllegalArgumentException e2) {
            Log.w(TAG, e2);
        }
    }

    public Activity getActivity() {
        return this.godot.getActivity();
    }

    public List<String> getCommandLineParams(List<String> list) {
        return Collections.EMPTY_LIST;
    }

    public Context getContext() {
        return this.godot.getContext();
    }

    public Godot getGodot() {
        return this.godot;
    }

    public Set<String> getPluginGDExtensionLibrariesPaths() {
        return Collections.EMPTY_SET;
    }

    @Deprecated
    public List<String> getPluginMethods() {
        return Collections.EMPTY_LIST;
    }

    public abstract String getPluginName();

    public Set<SignalInfo> getPluginSignals() {
        return Collections.EMPTY_SET;
    }

    public boolean onMainBackPressed() {
        return false;
    }

    public View onMainCreate(Activity activity) {
        return null;
    }

    public final void onRegisterPluginWithGodotNative() {
        String pluginName = getPluginName();
        if (nativeRegisterSingleton(pluginName, this)) {
            List<String> pluginMethods = getPluginMethods();
            HashSet<Method> hashSet = new HashSet();
            for (Method method : getClass().getDeclaredMethods()) {
                if (method.getAnnotation(UsedByGodot.class) == null) {
                    Iterator<String> it = pluginMethods.iterator();
                    while (it.hasNext()) {
                        if (it.next().equals(method.getName())) {
                            hashSet.add(method);
                            break;
                        }
                    }
                } else {
                    hashSet.add(method);
                }
            }
            for (Method method2 : hashSet) {
                ArrayList arrayList = new ArrayList();
                for (Class<?> cls : method2.getParameterTypes()) {
                    arrayList.add(cls.getName());
                }
                String[] strArr = new String[arrayList.size()];
                arrayList.toArray(strArr);
                nativeRegisterMethod(pluginName, method2.getName(), method2.getReturnType().getName(), strArr);
            }
            for (SignalInfo signalInfo : getPluginSignals()) {
                String name = signalInfo.getName();
                nativeRegisterSignal(pluginName, name, signalInfo.getParamTypesNames());
                this.registeredSignals.put(name, signalInfo);
            }
        }
    }

    public void runOnHostThread(Runnable runnable) {
        this.godot.runOnHostThread(runnable);
    }

    public void runOnRenderThread(Runnable runnable) {
        this.godot.runOnRenderThread(runnable);
    }

    @Deprecated
    public void runOnUiThread(Runnable runnable) {
        runOnHostThread(runnable);
    }

    public boolean shouldBeOnTop() {
        return true;
    }

    public boolean supportsFeature(String str) {
        return false;
    }

    public String toString() {
        return getPluginName();
    }

    public void emitSignal(SignalInfo signalInfo, Object... objArr) {
        emitSignal(signalInfo.getName(), objArr);
    }

    public static void emitSignal(Godot godot, String str, SignalInfo signalInfo, Object... objArr) {
        try {
            if (signalInfo != null) {
                Class<?>[] paramTypes = signalInfo.getParamTypes();
                if (objArr.length != paramTypes.length) {
                    throw new IllegalArgumentException("Invalid arguments count. Should be " + paramTypes.length + "  but is " + objArr.length);
                }
                for (int i3 = 0; i3 < paramTypes.length; i3++) {
                    Object obj = objArr[i3];
                    if (obj != null && !paramTypes[i3].isInstance(obj)) {
                        throw new IllegalArgumentException("Invalid type for argument #" + i3 + ". Should be of type '" + paramTypes[i3].getName() + "' but is of type '" + obj.getClass().getName() + "'.");
                    }
                }
                godot.runOnRenderThread(new A1(str, (Object) signalInfo, (Object) objArr, 7));
                return;
            }
            throw new IllegalArgumentException("Signal must be non null.");
        } catch (IllegalArgumentException e2) {
            Log.w(TAG, e2);
        }
    }

    public void onGodotMainLoopStarted() {
    }

    public void onGodotSetupCompleted() {
    }

    public void onGodotTerminating() {
    }

    public void onMainDestroy() {
    }

    public void onMainPause() {
    }

    public void onMainResume() {
    }

    public void onMainStart() {
    }

    public void onMainStop() {
    }

    public void onVkDrawFrame() {
    }

    public void onGLDrawFrame(GL10 gl10) {
    }

    public void onVkSurfaceCreated(Surface surface) {
    }

    public void onGLSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
    }

    public void onGLSurfaceChanged(GL10 gl10, int i3, int i4) {
    }

    public void onMainActivityResult(int i3, int i4, Intent intent) {
    }

    public void onMainRequestPermissionsResult(int i3, String[] strArr, int[] iArr) {
    }

    public void onVkSurfaceChanged(Surface surface, int i3, int i4) {
    }
}
