package org.cocos2dx.lib;

import android.graphics.Paint;
import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import android.widget.FrameLayout;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class Cocos2dxWebViewHelper {
    private static final String TAG = "Cocos2dxWebViewHelper";
    private static Cocos2dxActivity sCocos2dxActivity;
    private static Handler sHandler;
    private static FrameLayout sLayout;
    private static int viewTag;
    private static SparseArray<Cocos2dxWebView> webViews;

    public Cocos2dxWebViewHelper(FrameLayout frameLayout) {
        sLayout = frameLayout;
        sHandler = new Handler(Looper.myLooper());
        sCocos2dxActivity = (Cocos2dxActivity) Cocos2dxActivity.getContext();
        webViews = new SparseArray<>();
    }

    public static void _didFailLoading(int i3, String str) {
        didFailLoading(i3, str);
    }

    public static void _didFinishLoading(int i3, String str) {
        didFinishLoading(i3, str);
    }

    public static void _onJsCallback(int i3, String str) {
        onJsCallback(i3, str);
    }

    public static boolean _shouldStartLoading(int i3, String str) {
        return !shouldStartLoading(i3, str);
    }

    public static <T> T callInMainThread(Callable<T> callable) {
        FutureTask futureTask = new FutureTask(callable);
        sHandler.post(futureTask);
        return (T) futureTask.get();
    }

    public static boolean canGoBack(final int i3) {
        try {
            return ((Boolean) callInMainThread(new Callable<Boolean>() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.15
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public Boolean call() {
                    Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(i3);
                    return Boolean.valueOf(cocos2dxWebView != null && cocos2dxWebView.canGoBack());
                }
            })).booleanValue();
        } catch (InterruptedException | ExecutionException unused) {
            return false;
        }
    }

    public static boolean canGoForward(final int i3) {
        try {
            return ((Boolean) callInMainThread(new Callable<Boolean>() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.16
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public Boolean call() {
                    Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(i3);
                    return Boolean.valueOf(cocos2dxWebView != null && cocos2dxWebView.canGoForward());
                }
            })).booleanValue();
        } catch (InterruptedException | ExecutionException unused) {
            return false;
        }
    }

    public static int createWebView() {
        final int i3 = viewTag;
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.1
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = new Cocos2dxWebView(Cocos2dxWebViewHelper.sCocos2dxActivity, i3);
                Cocos2dxWebViewHelper.sLayout.addView(cocos2dxWebView, new FrameLayout.LayoutParams(-2, -2));
                Cocos2dxWebViewHelper.webViews.put(i3, cocos2dxWebView);
            }
        });
        int i4 = viewTag;
        viewTag = i4 + 1;
        return i4;
    }

    private static native void didFailLoading(int i3, String str);

    private static native void didFinishLoading(int i3, String str);

    public static void evaluateJS(final int i3, final String str) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.19
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(i3);
                if (cocos2dxWebView != null) {
                    cocos2dxWebView.loadUrl("javascript:" + str);
                }
            }
        });
    }

    public static float getOpacityWebView(final int i3) {
        FutureTask futureTask = new FutureTask(new Callable<Float>() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.6
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Float call() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(i3);
                Object objInvoke = null;
                if (cocos2dxWebView != null) {
                    try {
                        objInvoke = cocos2dxWebView.getClass().getMethod("getAlpha", null).invoke(cocos2dxWebView, null);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
                return (Float) objInvoke;
            }
        });
        sCocos2dxActivity.runOnUiThread(futureTask);
        try {
            return ((Float) futureTask.get()).floatValue();
        } catch (Exception e2) {
            e2.printStackTrace();
            return 1.0f;
        }
    }

    public static void goBack(final int i3) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.17
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(i3);
                if (cocos2dxWebView != null) {
                    cocos2dxWebView.goBack();
                }
            }
        });
    }

    public static void goForward(final int i3) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.18
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(i3);
                if (cocos2dxWebView != null) {
                    cocos2dxWebView.goForward();
                }
            }
        });
    }

    public static void loadData(final int i3, final String str, final String str2, final String str3, final String str4) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.9
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(i3);
                if (cocos2dxWebView != null) {
                    cocos2dxWebView.loadDataWithBaseURL(str4, str, str2, str3, null);
                }
            }
        });
    }

    public static void loadFile(final int i3, final String str) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.12
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(i3);
                if (cocos2dxWebView != null) {
                    cocos2dxWebView.loadUrl(str);
                }
            }
        });
    }

    public static void loadHTMLString(final int i3, final String str, final String str2) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.10
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(i3);
                if (cocos2dxWebView != null) {
                    cocos2dxWebView.loadDataWithBaseURL(str2, str, null, null, null);
                }
            }
        });
    }

    public static void loadUrl(final int i3, final String str, final boolean z2) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.11
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(i3);
                if (cocos2dxWebView != null) {
                    cocos2dxWebView.getSettings().setCacheMode(z2 ? 2 : -1);
                    cocos2dxWebView.loadUrl(str);
                }
            }
        });
    }

    private static native void onJsCallback(int i3, String str);

    public static void reload(final int i3) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.14
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(i3);
                if (cocos2dxWebView != null) {
                    cocos2dxWebView.reload();
                }
            }
        });
    }

    public static void removeWebView(final int i3) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.2
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(i3);
                if (cocos2dxWebView != null) {
                    Cocos2dxWebViewHelper.webViews.remove(i3);
                    Cocos2dxWebViewHelper.sLayout.removeView(cocos2dxWebView);
                }
            }
        });
    }

    public static void setBackgroundTransparent(final int i3) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.4
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(i3);
                if (cocos2dxWebView != null) {
                    cocos2dxWebView.setBackgroundColor(0);
                    try {
                        cocos2dxWebView.getClass().getMethod("setLayerType", Integer.TYPE, Paint.class).invoke(cocos2dxWebView, 1, null);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            }
        });
    }

    public static void setJavascriptInterfaceScheme(final int i3, final String str) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.8
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(i3);
                if (cocos2dxWebView != null) {
                    cocos2dxWebView.setJavascriptInterfaceScheme(str);
                }
            }
        });
    }

    public static void setOpacityWebView(final int i3, final float f) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.5
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(i3);
                if (cocos2dxWebView != null) {
                    try {
                        cocos2dxWebView.getClass().getMethod("setAlpha", Float.TYPE).invoke(cocos2dxWebView, Float.valueOf(f));
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            }
        });
    }

    public static void setScalesPageToFit(final int i3, final boolean z2) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.20
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(i3);
                if (cocos2dxWebView != null) {
                    cocos2dxWebView.setScalesPageToFit(z2);
                }
            }
        });
    }

    public static void setVisible(final int i3, final boolean z2) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.3
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(i3);
                if (cocos2dxWebView != null) {
                    cocos2dxWebView.setVisibility(z2 ? 0 : 8);
                }
            }
        });
    }

    public static void setWebViewRect(final int i3, final int i4, final int i5, final int i6, final int i7) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.7
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(i3);
                if (cocos2dxWebView != null) {
                    cocos2dxWebView.setWebViewRect(i4, i5, i6, i7);
                }
            }
        });
    }

    private static native boolean shouldStartLoading(int i3, String str);

    public static void stopLoading(final int i3) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.13
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(i3);
                if (cocos2dxWebView != null) {
                    cocos2dxWebView.stopLoading();
                }
            }
        });
    }
}
