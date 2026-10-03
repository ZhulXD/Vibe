package org.cocos2dx.lib;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class GameControllerAdapter {
    private static ArrayList<Runnable> sRunnableFrameStartList;

    public static void addRunnableToFrameStartList(Runnable runnable) {
        if (sRunnableFrameStartList == null) {
            sRunnableFrameStartList = new ArrayList<>();
        }
        sRunnableFrameStartList.add(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeControllerAxisEvent(String str, int i3, int i4, float f, boolean z2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeControllerButtonEvent(String str, int i3, int i4, boolean z2, float f, boolean z3);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeControllerConnected(String str, int i3);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeControllerDisconnected(String str, int i3);

    public static void onAxisEvent(final String str, final int i3, final int i4, final float f, final boolean z2) {
        Cocos2dxHelper.runOnGLThread(new Runnable() { // from class: org.cocos2dx.lib.GameControllerAdapter.4
            @Override // java.lang.Runnable
            public void run() {
                GameControllerAdapter.nativeControllerAxisEvent(str, i3, i4, f, z2);
            }
        });
    }

    public static void onButtonEvent(final String str, final int i3, final int i4, final boolean z2, final float f, final boolean z3) {
        Cocos2dxHelper.runOnGLThread(new Runnable() { // from class: org.cocos2dx.lib.GameControllerAdapter.3
            @Override // java.lang.Runnable
            public void run() {
                GameControllerAdapter.nativeControllerButtonEvent(str, i3, i4, z2, f, z3);
            }
        });
    }

    public static void onConnected(final String str, final int i3) {
        Cocos2dxHelper.runOnGLThread(new Runnable() { // from class: org.cocos2dx.lib.GameControllerAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                GameControllerAdapter.nativeControllerConnected(str, i3);
            }
        });
    }

    public static void onDisconnected(final String str, final int i3) {
        Cocos2dxHelper.runOnGLThread(new Runnable() { // from class: org.cocos2dx.lib.GameControllerAdapter.2
            @Override // java.lang.Runnable
            public void run() {
                GameControllerAdapter.nativeControllerDisconnected(str, i3);
            }
        });
    }

    public static void onDrawFrameStart() {
        ArrayList<Runnable> arrayList = sRunnableFrameStartList;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i3 = 0; i3 < size; i3++) {
                sRunnableFrameStartList.get(i3).run();
            }
        }
    }

    public static void removeRunnableFromFrameStartList(Runnable runnable) {
        ArrayList<Runnable> arrayList = sRunnableFrameStartList;
        if (arrayList != null) {
            arrayList.remove(runnable);
        }
    }
}
