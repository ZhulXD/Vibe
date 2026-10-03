package org.cocos2dx.lib;

import android.opengl.GLSurfaceView;
import android.os.SystemClock;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
import p066z1.j;
import p066z1.k;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class Cocos2dxRenderer implements GLSurfaceView.Renderer {
    private static final long NANOSECONDSPERMICROSECOND = 1000000;
    private static final long NANOSECONDSPERSECOND = 1000000000;
    private static long sAnimationInterval = 16666668;
    private long mLastTickInNanoSeconds;
    private int mScreenHeight;
    private int mScreenWidth;
    private boolean mNativeInitCompleted = false;
    private boolean mFirstFrameMarked = false;

    private static native void nativeDeleteBackward();

    private static native String nativeGetContentText();

    private static native void nativeInit(int i3, int i4);

    private static native void nativeInsertText(String str);

    private static native boolean nativeKeyEvent(int i3, boolean z2);

    private static native void nativeOnPause();

    private static native void nativeOnResume();

    private static native void nativeOnSurfaceChanged(int i3, int i4);

    private static native void nativeRender();

    private static native void nativeTouchesBegin(int i3, float f, float f3);

    private static native void nativeTouchesCancel(int[] iArr, float[] fArr, float[] fArr2);

    private static native void nativeTouchesEnd(int i3, float f, float f3);

    private static native void nativeTouchesMove(int[] iArr, float[] fArr, float[] fArr2);

    public static void setAnimationInterval(float f) {
        sAnimationInterval = (long) (f * 1.0E9f);
    }

    public String getContentText() {
        return nativeGetContentText();
    }

    public void handleActionCancel(int[] iArr, float[] fArr, float[] fArr2) {
        nativeTouchesCancel(iArr, fArr, fArr2);
    }

    public void handleActionDown(int i3, float f, float f3) {
        nativeTouchesBegin(i3, f, f3);
    }

    public void handleActionMove(int[] iArr, float[] fArr, float[] fArr2) {
        nativeTouchesMove(iArr, fArr, fArr2);
    }

    public void handleActionUp(int i3, float f, float f3) {
        nativeTouchesEnd(i3, f, f3);
    }

    public void handleDeleteBackward() {
        nativeDeleteBackward();
    }

    public void handleInsertText(String str) {
        nativeInsertText(str);
    }

    public void handleKeyDown(int i3) {
        nativeKeyEvent(i3, true);
    }

    public void handleKeyUp(int i3) {
        nativeKeyEvent(i3, false);
    }

    public void handleOnPause() {
        if (this.mNativeInitCompleted) {
            Cocos2dxHelper.onEnterBackground();
            nativeOnPause();
        }
    }

    public void handleOnResume() {
        Cocos2dxHelper.onEnterForeground();
        nativeOnResume();
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onDrawFrame(GL10 gl10) {
        if (!this.mFirstFrameMarked) {
            this.mFirstFrameMarked = true;
            k.f6452a.c(j.f6449i, Thread.currentThread().getName(), SystemClock.uptimeMillis());
        }
        if (sAnimationInterval <= 1.6666668E7f) {
            nativeRender();
            return;
        }
        long jNanoTime = System.nanoTime() - this.mLastTickInNanoSeconds;
        long j2 = sAnimationInterval;
        if (jNanoTime < j2) {
            try {
                Thread.sleep((j2 - jNanoTime) / NANOSECONDSPERMICROSECOND);
            } catch (Exception unused) {
            }
        }
        this.mLastTickInNanoSeconds = System.nanoTime();
        nativeRender();
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceChanged(GL10 gl10, int i3, int i4) {
        k.f6452a.c(j.f6448h, Thread.currentThread().getName(), SystemClock.uptimeMillis());
        nativeOnSurfaceChanged(i3, i4);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        k kVar = k.f6452a;
        kVar.c(j.f6447e, Thread.currentThread().getName(), SystemClock.uptimeMillis());
        kVar.c(j.f, Thread.currentThread().getName(), SystemClock.uptimeMillis());
        nativeInit(this.mScreenWidth, this.mScreenHeight);
        kVar.c(j.g, Thread.currentThread().getName(), SystemClock.uptimeMillis());
        this.mLastTickInNanoSeconds = System.nanoTime();
        this.mNativeInitCompleted = true;
    }

    public void setScreenWidthAndHeight(int i3, int i4) {
        this.mScreenWidth = i3;
        this.mScreenHeight = i4;
    }
}
