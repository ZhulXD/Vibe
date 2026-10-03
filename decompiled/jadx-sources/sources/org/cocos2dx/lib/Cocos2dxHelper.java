package org.cocos2dx.lib;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.IBinder;
import android.os.Process;
import android.os.Vibrator;
import android.preference.PreferenceManager;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.WindowManager;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import p001a0.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class Cocos2dxHelper {
    private static final int BOOST_TIME = 7;
    private static final String PREFS_NAME = "Cocos2dxPrefsFile";
    private static final int RUNNABLES_PER_FRAME = 5;
    private static final String TAG = "Cocos2dxHelper";
    private static boolean sAccelerometerEnabled;
    private static Activity sActivity;
    private static boolean sActivityVisible;
    private static AssetManager sAssetManager;
    private static Cocos2dxMusic sCocos2dMusic;
    private static Cocos2dxSound sCocos2dSound;
    private static Cocos2dxAccelerometer sCocos2dxAccelerometer;
    private static Cocos2dxHelperListener sCocos2dxHelperListener;
    private static boolean sCompassEnabled;
    private static a sOBBFile;
    private static String sPackageName;
    private static Set<PreferenceManager.OnActivityResultListener> onActivityResultListeners = new LinkedHashSet();
    private static Vibrator sVibrateService = null;
    private static Object mGameServiceBinder = null;
    private static String sAssetsPath = "";
    private static boolean sInited = false;
    private static ServiceConnection connection = new ServiceConnection() { // from class: org.cocos2dx.lib.Cocos2dxHelper.2
        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Cocos2dxHelper.sActivity.getApplicationContext().unbindService(Cocos2dxHelper.connection);
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        }
    };

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public interface Cocos2dxHelperListener {
        void runOnGLThread(Runnable runnable);

        void showDialog(String str, String str2);
    }

    public static void addOnActivityResultListener(PreferenceManager.OnActivityResultListener onActivityResultListener) {
        onActivityResultListeners.add(onActivityResultListener);
    }

    public static byte[] conversionEncoding(byte[] bArr, String str, String str2) {
        try {
            return new String(bArr, str).getBytes(str2);
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static void deleteValueForKey(String str) {
        SharedPreferences.Editor editorEdit = sActivity.getSharedPreferences(PREFS_NAME, 0).edit();
        editorEdit.remove(str);
        editorEdit.apply();
    }

    public static void disableAccelerometer() {
        sAccelerometerEnabled = false;
        getAccelerometer().disable();
    }

    public static void enableAccelerometer() {
        sAccelerometerEnabled = true;
        getAccelerometer().enableAccel();
    }

    public static void enableCompass() {
        sCompassEnabled = true;
        getAccelerometer().enableCompass();
    }

    public static void end() {
        sCocos2dMusic.end();
        getSound().end();
    }

    public static int fastLoading(int i3) {
        return -1;
    }

    public static float[] getAccelValue() {
        return getAccelerometer().accelerometerValues;
    }

    private static Cocos2dxAccelerometer getAccelerometer() {
        if (sCocos2dxAccelerometer == null) {
            sCocos2dxAccelerometer = new Cocos2dxAccelerometer(sActivity);
        }
        return sCocos2dxAccelerometer;
    }

    public static Activity getActivity() {
        return sActivity;
    }

    public static AssetManager getAssetManager() {
        return sAssetManager;
    }

    public static String getAssetsPath() {
        String str = "";
        if (sAssetsPath.equals("")) {
            String str2 = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Android/obb/" + sPackageName;
            String[] list = new File(str2).list(new FilenameFilter() { // from class: org.cocos2dx.lib.Cocos2dxHelper.1
                @Override // java.io.FilenameFilter
                public boolean accept(File file, String str3) {
                    return str3.startsWith("main.") && str3.endsWith(".obb");
                }
            });
            if (list != null && list.length > 0) {
                str = str2 + "/" + list[0];
            }
            if (new File(str).exists()) {
                sAssetsPath = str;
            } else {
                sAssetsPath = sActivity.getApplicationInfo().sourceDir;
            }
        }
        return sAssetsPath;
    }

    public static float getBackgroundMusicVolume() {
        return sCocos2dMusic.getBackgroundVolume();
    }

    public static boolean getBoolForKey(String str, boolean z2) {
        SharedPreferences sharedPreferences = sActivity.getSharedPreferences(PREFS_NAME, 0);
        try {
            return sharedPreferences.getBoolean(str, z2);
        } catch (Exception e2) {
            e2.printStackTrace();
            Object obj = sharedPreferences.getAll().get(str);
            if (obj instanceof String) {
                return Boolean.parseBoolean(obj.toString());
            }
            if (obj instanceof Integer) {
                return ((Integer) obj).intValue() != 0;
            }
            if (obj instanceof Float) {
                return ((Float) obj).floatValue() != 0.0f;
            }
            return z2;
        }
    }

    public static String getCocos2dxPackageName() {
        return sPackageName;
    }

    public static String getCocos2dxWritablePath() {
        return sActivity.getFilesDir().getAbsolutePath();
    }

    public static float[] getCompassValue() {
        return getAccelerometer().compassFieldValues;
    }

    public static String getCurrentLanguage() {
        return Locale.getDefault().getLanguage();
    }

    public static int getDPI() {
        Display defaultDisplay;
        if (sActivity == null) {
            return -1;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        WindowManager windowManager = sActivity.getWindowManager();
        if (windowManager == null || (defaultDisplay = windowManager.getDefaultDisplay()) == null) {
            return -1;
        }
        defaultDisplay.getMetrics(displayMetrics);
        return (int) (displayMetrics.density * 160.0f);
    }

    public static String getDeviceModel() {
        return Build.MODEL;
    }

    public static double getDoubleForKey(String str, double d3) {
        return getFloatForKey(str, (float) d3);
    }

    public static float getEffectsVolume() {
        return getSound().getEffectsVolume();
    }

    public static float getFloatForKey(String str, float f) {
        SharedPreferences sharedPreferences = sActivity.getSharedPreferences(PREFS_NAME, 0);
        try {
            return sharedPreferences.getFloat(str, f);
        } catch (Exception e2) {
            e2.printStackTrace();
            Object obj = sharedPreferences.getAll().get(str);
            if (obj instanceof String) {
                return Float.parseFloat(obj.toString());
            }
            if (obj instanceof Integer) {
                return ((Integer) obj).floatValue();
            }
            if ((obj instanceof Boolean) && ((Boolean) obj).booleanValue()) {
                return 1.0f;
            }
            return f;
        }
    }

    public static int getIntegerForKey(String str, int i3) {
        SharedPreferences sharedPreferences = sActivity.getSharedPreferences(PREFS_NAME, 0);
        try {
            return sharedPreferences.getInt(str, i3);
        } catch (Exception e2) {
            e2.printStackTrace();
            Object obj = sharedPreferences.getAll().get(str);
            if (obj instanceof String) {
                return Integer.parseInt(obj.toString());
            }
            if (obj instanceof Float) {
                return ((Float) obj).intValue();
            }
            if ((obj instanceof Boolean) && ((Boolean) obj).booleanValue()) {
                return 1;
            }
            return i3;
        }
    }

    public static long[] getObbAssetFileDescriptor(String str) {
        long[] jArr = new long[3];
        getObbFile();
        return jArr;
    }

    public static a getObbFile() {
        try {
            int i3 = Cocos2dxActivity.getContext().getPackageManager().getPackageInfo(getCocos2dxPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
        }
        try {
            Cocos2dxActivity.getContext();
            return null;
        } catch (IOException e3) {
            e3.printStackTrace();
            return null;
        }
    }

    public static Set<PreferenceManager.OnActivityResultListener> getOnActivityResultListeners() {
        return onActivityResultListeners;
    }

    public static int getSDKVersion() {
        return Build.VERSION.SDK_INT;
    }

    @SuppressLint({"NewApi"})
    public static int[] getSafeInsets() {
        DisplayCutout displayCutout;
        List boundingRects;
        int[] iArr = {0, 0, 0, 0};
        if (Build.VERSION.SDK_INT >= 28 && (displayCutout = sActivity.getWindow().getDecorView().getRootWindowInsets().getDisplayCutout()) != null && (boundingRects = displayCutout.getBoundingRects()) != null && boundingRects.size() != 0) {
            iArr[0] = displayCutout.getSafeInsetBottom();
            iArr[1] = displayCutout.getSafeInsetLeft();
            iArr[2] = displayCutout.getSafeInsetRight();
            iArr[3] = displayCutout.getSafeInsetTop();
        }
        return iArr;
    }

    private static Cocos2dxSound getSound() {
        if (sCocos2dSound == null) {
            sCocos2dSound = new Cocos2dxSound(sActivity);
        }
        return sCocos2dSound;
    }

    public static String getStringForKey(String str, String str2) {
        SharedPreferences sharedPreferences = sActivity.getSharedPreferences(PREFS_NAME, 0);
        try {
            return sharedPreferences.getString(str, str2);
        } catch (Exception e2) {
            e2.printStackTrace();
            return sharedPreferences.getAll().get(str).toString();
        }
    }

    public static int getTemperature() {
        return -1;
    }

    public static String getVersion() {
        try {
            return Cocos2dxActivity.getContext().getPackageManager().getPackageInfo(Cocos2dxActivity.getContext().getPackageName(), 0).versionName;
        } catch (Exception unused) {
            return "";
        }
    }

    public static boolean hasSoftKeys() {
        Display defaultDisplay = sActivity.getWindowManager().getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getRealMetrics(displayMetrics);
        int i3 = displayMetrics.heightPixels;
        int i4 = displayMetrics.widthPixels;
        DisplayMetrics displayMetrics2 = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics2);
        return i4 - displayMetrics2.widthPixels > 0 || i3 - displayMetrics2.heightPixels > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void init(Activity activity) {
        int i3;
        int i4;
        sActivity = activity;
        sCocos2dxHelperListener = (Cocos2dxHelperListener) activity;
        if (sInited) {
            return;
        }
        boolean zHasSystemFeature = activity.getPackageManager().hasSystemFeature("android.hardware.audio.low_latency");
        Log.d(TAG, "isSupportLowLatency:" + zHasSystemFeature);
        AudioManager audioManager = (AudioManager) activity.getSystemService("audio");
        String str = (String) Cocos2dxReflectionHelper.invokeInstanceMethod(audioManager, "getProperty", new Class[]{String.class}, new Object[]{Cocos2dxReflectionHelper.getConstantValue(AudioManager.class, "PROPERTY_OUTPUT_SAMPLE_RATE")});
        String str2 = (String) Cocos2dxReflectionHelper.invokeInstanceMethod(audioManager, "getProperty", new Class[]{String.class}, new Object[]{Cocos2dxReflectionHelper.getConstantValue(AudioManager.class, "PROPERTY_OUTPUT_FRAMES_PER_BUFFER")});
        try {
            i3 = Integer.parseInt(str);
            try {
                i4 = Integer.parseInt(str2);
            } catch (NumberFormatException e2) {
                e = e2;
                Log.e(TAG, "parseInt failed", e);
                i4 = 192;
            }
        } catch (NumberFormatException e3) {
            e = e3;
            i3 = 44100;
        }
        Log.d(TAG, "sampleRate: " + i3 + ", framesPerBuffer: " + i4);
        nativeSetAudioDeviceInfo(zHasSystemFeature, i3, i4);
        sPackageName = activity.getApplicationInfo().packageName;
        sCocos2dMusic = new Cocos2dxMusic(activity);
        AssetManager assets = activity.getAssets();
        sAssetManager = assets;
        nativeSetContext(activity, assets);
        Cocos2dxBitmap.setContext(activity);
        sVibrateService = (Vibrator) activity.getSystemService("vibrator");
        sInited = true;
    }

    public static boolean isActivityVisible() {
        return sActivityVisible;
    }

    public static boolean isBackgroundMusicPlaying() {
        return sCocos2dMusic.isBackgroundMusicPlaying();
    }

    @SuppressLint({"InlinedApi"})
    public static boolean isCutoutEnabled() {
        return Build.VERSION.SDK_INT >= 28 && sActivity.getWindow().getAttributes().layoutInDisplayCutoutMode == 1;
    }

    public static boolean isScreenRound() {
        return sActivity.getResources().getConfiguration().isScreenRound();
    }

    private static native void nativeSetAudioDeviceInfo(boolean z2, int i3, int i4);

    private static native void nativeSetContext(Context context, AssetManager assetManager);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeSetEditTextDialogResult(byte[] bArr);

    public static void onEnterBackground() {
        getSound().onEnterBackground();
        sCocos2dMusic.onEnterBackground();
    }

    public static void onEnterForeground() {
        getSound().onEnterForeground();
        sCocos2dMusic.onEnterForeground();
    }

    public static void onPause() {
        sActivityVisible = false;
        if (sAccelerometerEnabled) {
            getAccelerometer().disable();
        }
    }

    public static void onResume() {
        sActivityVisible = true;
        if (sAccelerometerEnabled) {
            getAccelerometer().enableAccel();
        }
        if (sCompassEnabled) {
            getAccelerometer().enableCompass();
        }
    }

    public static boolean openURL(String str) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(str));
            sActivity.startActivity(intent);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static void pauseAllEffects() {
        getSound().pauseAllEffects();
    }

    public static void pauseBackgroundMusic() {
        sCocos2dMusic.pauseBackgroundMusic();
    }

    public static void pauseEffect(int i3) {
        getSound().pauseEffect(i3);
    }

    public static void playBackgroundMusic(String str, boolean z2) {
        sCocos2dMusic.playBackgroundMusic(str, z2);
    }

    public static int playEffect(String str, boolean z2, float f, float f3, float f4) {
        return getSound().playEffect(str, z2, f, f3, f4);
    }

    public static void preloadBackgroundMusic(String str) {
        sCocos2dMusic.preloadBackgroundMusic(str);
    }

    public static void preloadEffect(String str) {
        getSound().preloadEffect(str);
    }

    public static void resumeAllEffects() {
        getSound().resumeAllEffects();
    }

    public static void resumeBackgroundMusic() {
        sCocos2dMusic.resumeBackgroundMusic();
    }

    public static void resumeEffect(int i3) {
        getSound().resumeEffect(i3);
    }

    public static void rewindBackgroundMusic() {
        sCocos2dMusic.rewindBackgroundMusic();
    }

    public static void runOnGLThread(Runnable runnable) {
        ((Cocos2dxActivity) sActivity).runOnGLThread(runnable);
    }

    public static void setAccelerometerInterval(float f) {
        getAccelerometer().setInterval(f);
    }

    public static void setAudioFocus(boolean z2) {
        sCocos2dMusic.setAudioFocus(z2);
        getSound().setAudioFocus(z2);
    }

    public static void setBackgroundMusicVolume(float f) {
        sCocos2dMusic.setBackgroundVolume(f);
    }

    public static void setBoolForKey(String str, boolean z2) {
        SharedPreferences.Editor editorEdit = sActivity.getSharedPreferences(PREFS_NAME, 0).edit();
        editorEdit.putBoolean(str, z2);
        editorEdit.apply();
    }

    public static void setDoubleForKey(String str, double d3) {
        SharedPreferences.Editor editorEdit = sActivity.getSharedPreferences(PREFS_NAME, 0).edit();
        editorEdit.putFloat(str, (float) d3);
        editorEdit.apply();
    }

    public static void setEditTextDialogResult(String str) {
        try {
            final byte[] bytes = str.getBytes("UTF8");
            sCocos2dxHelperListener.runOnGLThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxHelper.3
                @Override // java.lang.Runnable
                public void run() {
                    Cocos2dxHelper.nativeSetEditTextDialogResult(bytes);
                }
            });
        } catch (UnsupportedEncodingException unused) {
        }
    }

    public static void setEffectsVolume(float f) {
        getSound().setEffectsVolume(f);
    }

    public static int setFPS(int i3) {
        return -1;
    }

    public static void setFloatForKey(String str, float f) {
        SharedPreferences.Editor editorEdit = sActivity.getSharedPreferences(PREFS_NAME, 0).edit();
        editorEdit.putFloat(str, f);
        editorEdit.apply();
    }

    public static void setIntegerForKey(String str, int i3) {
        SharedPreferences.Editor editorEdit = sActivity.getSharedPreferences(PREFS_NAME, 0).edit();
        editorEdit.putInt(str, i3);
        editorEdit.apply();
    }

    public static void setKeepScreenOn(boolean z2) {
        ((Cocos2dxActivity) sActivity).setKeepScreenOn(z2);
    }

    public static int setLowPowerMode(boolean z2) {
        return -1;
    }

    public static int setResolutionPercent(int i3) {
        return -1;
    }

    public static void setStringForKey(String str, String str2) {
        SharedPreferences.Editor editorEdit = sActivity.getSharedPreferences(PREFS_NAME, 0).edit();
        editorEdit.putString(str, str2);
        editorEdit.apply();
    }

    private static void showDialog(String str, String str2) {
        sCocos2dxHelperListener.showDialog(str, str2);
    }

    public static void stopAllEffects() {
        getSound().stopAllEffects();
    }

    public static void stopBackgroundMusic() {
        sCocos2dMusic.stopBackgroundMusic();
    }

    public static void stopEffect(int i3) {
        getSound().stopEffect(i3);
    }

    public static void terminateProcess() {
        Process.killProcess(Process.myPid());
    }

    public static void unloadEffect(String str) {
        getSound().unloadEffect(str);
    }

    public static void vibrate(float f) {
        sVibrateService.vibrate((long) (f * 1000.0f));
    }

    public static boolean willPlayBackgroundMusic() {
        return sCocos2dMusic.willPlayBackgroundMusic();
    }
}
