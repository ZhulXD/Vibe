package org.godotengine.godot;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.View;
import androidx.core.content.FileProvider;
import androidx.core.graphics.Insets;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.WindowInsetsCompat;
import java.io.File;
import java.util.List;
import java.util.Locale;
import org.godotengine.godot.error.Error;
import org.godotengine.godot.input.GodotEditText;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class GodotIO {
    public static final int SYSTEM_DIR_DCIM = 1;
    public static final int SYSTEM_DIR_DESKTOP = 0;
    public static final int SYSTEM_DIR_DOCUMENTS = 2;
    public static final int SYSTEM_DIR_DOWNLOADS = 3;
    public static final int SYSTEM_DIR_MOVIES = 4;
    public static final int SYSTEM_DIR_MUSIC = 5;
    public static final int SYSTEM_DIR_PICTURES = 6;
    public static final int SYSTEM_DIR_RINGTONES = 7;
    private static final String TAG = "GodotIO";
    GodotEditText edit;
    private final Godot godot;
    private final String uniqueId;
    final int SCREEN_LANDSCAPE = 0;
    final int SCREEN_PORTRAIT = 1;
    final int SCREEN_REVERSE_LANDSCAPE = 2;
    final int SCREEN_REVERSE_PORTRAIT = 3;
    final int SCREEN_SENSOR_LANDSCAPE = 4;
    final int SCREEN_SENSOR_PORTRAIT = 5;
    final int SCREEN_SENSOR = 6;

    public GodotIO(Godot godot) {
        this.godot = godot;
        String string = Settings.Secure.getString(godot.getContext().getContentResolver(), "android_id");
        this.uniqueId = string == null ? "" : string;
    }

    private Context getContext() {
        Activity activity = this.godot.getActivity();
        return activity == null ? this.godot.getContext() : activity;
    }

    public String getCacheDir() {
        return getContext().getCacheDir().getAbsolutePath();
    }

    public String getDataDir() {
        return getContext().getFilesDir().getAbsolutePath();
    }

    public int[] getDisplayCutouts() {
        int i3 = 0;
        if (Build.VERSION.SDK_INT < 28) {
            return new int[0];
        }
        View decorView = this.godot.getActivity() != null ? this.godot.getActivity().getWindow().getDecorView() : this.godot.getRenderView() != null ? this.godot.getRenderView().getView() : null;
        if (decorView == null) {
            return new int[0];
        }
        DisplayCutout displayCutout = decorView.getRootWindowInsets().getDisplayCutout();
        if (displayCutout == null) {
            return new int[0];
        }
        List<Rect> boundingRects = displayCutout.getBoundingRects();
        int[] iArr = new int[boundingRects.size() * 4];
        for (Rect rect : boundingRects) {
            iArr[i3] = rect.left;
            iArr[i3 + 1] = rect.top;
            int i4 = i3 + 3;
            iArr[i3 + 2] = rect.width();
            i3 += 4;
            iArr[i4] = rect.height();
        }
        return iArr;
    }

    public int getDisplayRotation() {
        Display display;
        Activity activity = this.godot.getActivity();
        if (activity != null) {
            display = activity.getWindowManager().getDefaultDisplay();
        } else {
            display = Build.VERSION.SDK_INT >= 30 ? this.godot.getContext().getDisplay() : null;
        }
        if (display == null) {
            return 0;
        }
        int rotation = display.getRotation();
        if (rotation == 1) {
            return 90;
        }
        if (rotation == 2) {
            return 180;
        }
        return rotation == 3 ? 270 : 0;
    }

    public int[] getDisplaySafeArea() {
        View view;
        new Rect();
        int[] iArr = new int[4];
        if (this.godot.getActivity() != null) {
            view = this.godot.getActivity().getWindow().getDecorView();
        } else {
            view = this.godot.getRenderView() != null ? this.godot.getRenderView().getView() : null;
        }
        if (view != null) {
            int iDisplayCutout = this.godot.isInImmersiveMode() ? WindowInsetsCompat.Type.displayCutout() : WindowInsetsCompat.Type.systemBars() | WindowInsetsCompat.Type.displayCutout();
            if (view.getRootWindowInsets() != null) {
                Insets insets = WindowInsetsCompat.toWindowInsetsCompat(view.getRootWindowInsets(), view).getInsets(iDisplayCutout);
                if (this.godot.isInEdgeToEdgeMode() || this.godot.isInImmersiveMode()) {
                    iArr[0] = insets.left;
                    iArr[1] = insets.top;
                } else {
                    iArr[0] = 0;
                    iArr[1] = 0;
                }
                iArr[2] = (view.getWidth() - insets.right) - insets.left;
                iArr[3] = (view.getHeight() - insets.bottom) - insets.top;
            }
        }
        return iArr;
    }

    public String getLocale() {
        return Locale.getDefault().toString();
    }

    public String getModel() {
        return Build.MODEL;
    }

    public float getScaledDensity() {
        int i3 = getContext().getResources().getDisplayMetrics().densityDpi;
        if (i3 >= 640) {
            return 4.0f;
        }
        if (i3 >= 480) {
            return 3.0f;
        }
        if (i3 >= 320) {
            return 2.0f;
        }
        if (i3 >= 240) {
            return 1.5f;
        }
        return i3 >= 160 ? 1.0f : 0.75f;
    }

    public int getScreenDPI() {
        return getContext().getResources().getDisplayMetrics().densityDpi;
    }

    public int getScreenOrientation() {
        Activity activity = this.godot.getActivity();
        if (activity == null) {
            return -1;
        }
        int requestedOrientation = activity.getRequestedOrientation();
        if (requestedOrientation == 0) {
            return 0;
        }
        if (requestedOrientation == 1) {
            return 1;
        }
        if (requestedOrientation == 4) {
            return 6;
        }
        switch (requestedOrientation) {
            case 6:
            case MotionEventCompat.AXIS_Z /* 11 */:
                return 4;
            case 7:
            case 12:
                return 5;
            case 8:
                return 2;
            case 9:
                return 3;
            case 10:
            case 13:
                return 6;
            default:
                return -1;
        }
    }

    public double getScreenRefreshRate(double d3) {
        Display display;
        Activity activity = this.godot.getActivity();
        if (activity != null) {
            display = activity.getWindowManager().getDefaultDisplay();
        } else {
            display = Build.VERSION.SDK_INT >= 30 ? this.godot.getContext().getDisplay() : null;
        }
        return display != null ? display.getRefreshRate() : d3;
    }

    public String getSystemDir(int i3, boolean z2) {
        String str;
        switch (i3) {
            case 1:
                str = Environment.DIRECTORY_DCIM;
                break;
            case 2:
                str = Environment.DIRECTORY_DOCUMENTS;
                break;
            case 3:
                str = Environment.DIRECTORY_DOWNLOADS;
                break;
            case 4:
                str = Environment.DIRECTORY_MOVIES;
                break;
            case 5:
                str = Environment.DIRECTORY_MUSIC;
                break;
            case 6:
                str = Environment.DIRECTORY_PICTURES;
                break;
            case 7:
                str = Environment.DIRECTORY_RINGTONES;
                break;
            default:
                str = null;
                break;
        }
        if (!z2) {
            return getContext().getExternalFilesDir(str).getAbsolutePath();
        }
        if (Build.VERSION.SDK_INT >= 29) {
            Log.w(TAG, "Shared storage access is limited on Android 10 and higher.");
        }
        return TextUtils.isEmpty(str) ? Environment.getExternalStorageDirectory().getAbsolutePath() : Environment.getExternalStoragePublicDirectory(str).getAbsolutePath();
    }

    public String getTempDir() {
        File file = new File(getCacheDir() + "/tmp");
        if (!file.exists() && !file.mkdirs()) {
            Log.e(TAG, "Unable to create temp dir");
        }
        return file.getAbsolutePath();
    }

    public String getUniqueID() {
        return this.uniqueId;
    }

    public boolean hasHardwareKeyboard() {
        GodotEditText godotEditText = this.edit;
        if (godotEditText != null) {
            return godotEditText.hasHardwareKeyboard();
        }
        return false;
    }

    public void hideKeyboard() {
        GodotEditText godotEditText = this.edit;
        if (godotEditText != null) {
            godotEditText.hideKeyboard();
        }
    }

    public int openURI(String str) {
        Uri uriForFile;
        boolean z2;
        try {
            Context context = getContext();
            String type = "";
            if (str.startsWith("/") || str.startsWith("file://")) {
                uriForFile = FileProvider.getUriForFile(context, context.getPackageName() + ".fileprovider", new File(str.startsWith("file://") ? str.replace("file://", "") : str));
                type = context.getContentResolver().getType(uriForFile);
                z2 = true;
            } else {
                uriForFile = Uri.parse(str);
                z2 = false;
            }
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW").addFlags(268435456);
            if (TextUtils.isEmpty(type)) {
                intent.setData(uriForFile);
            } else {
                intent.setDataAndType(uriForFile, type);
            }
            if (z2) {
                intent.addFlags(1);
            }
            context.startActivity(intent);
            return Error.OK.toNativeValue();
        } catch (Exception e2) {
            Log.e(TAG, "Unable to open uri " + str, e2);
            return Error.FAILED.toNativeValue();
        }
    }

    public void setEdit(GodotEditText godotEditText) {
        this.edit = godotEditText;
    }

    public void setScreenOrientation(int i3) {
        Activity activity = this.godot.getActivity();
        if (activity == null) {
            return;
        }
        switch (i3) {
            case 0:
                activity.setRequestedOrientation(0);
                break;
            case 1:
                activity.setRequestedOrientation(1);
                break;
            case 2:
                activity.setRequestedOrientation(8);
                break;
            case 3:
                activity.setRequestedOrientation(9);
                break;
            case 4:
                activity.setRequestedOrientation(11);
                break;
            case 5:
                activity.setRequestedOrientation(12);
                break;
            case 6:
                activity.setRequestedOrientation(13);
                break;
        }
    }

    public void showKeyboard(String str, int i3, int i4, int i5, int i6) {
        GodotEditText godotEditText = this.edit;
        if (godotEditText != null) {
            godotEditText.showKeyboard(str, GodotEditText.VirtualKeyboardType.values()[i3], i4, i5, i6);
        }
    }
}
