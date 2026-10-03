package org.libsdl.app;

import E.b;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.UiModeManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.InputDevice;
import android.view.KeyEvent;
import android.view.PointerIcon;
import android.view.Surface;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.view.InputDeviceCompat;
import java.util.Hashtable;
import java.util.Locale;
import kotlin.collections.unsigned.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class SDLActivity extends Activity implements View.OnSystemUiVisibilityChangeListener {
    static final int COMMAND_CHANGE_TITLE = 1;
    static final int COMMAND_CHANGE_WINDOW_STYLE = 2;
    static final int COMMAND_SET_KEEP_SCREEN_ON = 5;
    static final int COMMAND_TEXTEDIT_HIDE = 3;
    protected static final int COMMAND_USER = 32768;
    private static final int SDL_MAJOR_VERSION = 2;
    private static final int SDL_MICRO_VERSION = 3;
    private static final int SDL_MINOR_VERSION = 26;
    protected static final int SDL_ORIENTATION_LANDSCAPE = 1;
    protected static final int SDL_ORIENTATION_LANDSCAPE_FLIPPED = 2;
    protected static final int SDL_ORIENTATION_PORTRAIT = 3;
    protected static final int SDL_ORIENTATION_PORTRAIT_FLIPPED = 4;
    protected static final int SDL_ORIENTATION_UNKNOWN = 0;
    private static final int SDL_SYSTEM_CURSOR_ARROW = 0;
    private static final int SDL_SYSTEM_CURSOR_CROSSHAIR = 3;
    private static final int SDL_SYSTEM_CURSOR_HAND = 11;
    private static final int SDL_SYSTEM_CURSOR_IBEAM = 1;
    private static final int SDL_SYSTEM_CURSOR_NO = 10;
    private static final int SDL_SYSTEM_CURSOR_SIZEALL = 9;
    private static final int SDL_SYSTEM_CURSOR_SIZENESW = 6;
    private static final int SDL_SYSTEM_CURSOR_SIZENS = 8;
    private static final int SDL_SYSTEM_CURSOR_SIZENWSE = 5;
    private static final int SDL_SYSTEM_CURSOR_SIZEWE = 7;
    private static final int SDL_SYSTEM_CURSOR_WAIT = 2;
    private static final int SDL_SYSTEM_CURSOR_WAITARROW = 4;
    private static final String TAG = "SDL";
    protected static SDLClipboardHandler mClipboardHandler;
    protected static Locale mCurrentLocale;
    public static NativeState mCurrentNativeState;
    protected static int mCurrentOrientation;
    protected static Hashtable<Integer, PointerIcon> mCursors;
    protected static boolean mFullscreenModeActive;
    protected static HIDDeviceManager mHIDDeviceManager;
    public static boolean mHasFocus;
    public static boolean mIsResumedCalled;
    protected static int mLastCursorID;
    protected static ViewGroup mLayout;
    protected static SDLGenericMotionListener_API12 mMotionListener;
    public static NativeState mNextNativeState;
    protected static Thread mSDLThread;
    protected static boolean mScreenKeyboardShown;
    protected static SDLActivity mSingleton;
    protected static SDLSurface mSurface;
    protected static DummyEdit mTextEdit;
    Handler commandHandler = new SDLCommandHandler();
    protected final int[] messageboxSelection = new int[1];
    private final Runnable rehideSystemUi = new Runnable() { // from class: org.libsdl.app.SDLActivity.7
        @Override // java.lang.Runnable
        public void run() {
            SDLActivity.this.getWindow().getDecorView().setSystemUiVisibility(5894);
        }
    };
    public static final boolean mHasMultiWindow = true;
    public static boolean mBrokenLibraries = true;

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public enum NativeState {
        INIT,
        RESUMED,
        PAUSED
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static class SDLCommandHandler extends Handler {
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Window window;
            Context context = SDL.getContext();
            if (context == null) {
                Log.e(SDLActivity.TAG, "error handling message, getContext() returned null");
                return;
            }
            int i3 = message.arg1;
            if (i3 == 1) {
                if (context instanceof Activity) {
                    ((Activity) context).setTitle((String) message.obj);
                    return;
                } else {
                    Log.e(SDLActivity.TAG, "error handling message, getContext() returned no Activity");
                    return;
                }
            }
            if (i3 == 2) {
                if (!(context instanceof Activity)) {
                    Log.e(SDLActivity.TAG, "error handling message, getContext() returned no Activity");
                    return;
                }
                Window window2 = ((Activity) context).getWindow();
                if (window2 != null) {
                    Object obj = message.obj;
                    if (!(obj instanceof Integer) || ((Integer) obj).intValue() == 0) {
                        window2.getDecorView().setSystemUiVisibility(256);
                        window2.addFlags(2048);
                        window2.clearFlags(1024);
                        SDLActivity.mFullscreenModeActive = false;
                        return;
                    }
                    window2.getDecorView().setSystemUiVisibility(5894);
                    window2.addFlags(1024);
                    window2.clearFlags(2048);
                    SDLActivity.mFullscreenModeActive = true;
                    return;
                }
                return;
            }
            if (i3 == 3) {
                DummyEdit dummyEdit = SDLActivity.mTextEdit;
                if (dummyEdit != null) {
                    dummyEdit.setLayoutParams(new RelativeLayout.LayoutParams(0, 0));
                    ((InputMethodManager) context.getSystemService("input_method")).hideSoftInputFromWindow(SDLActivity.mTextEdit.getWindowToken(), 0);
                    SDLActivity.mScreenKeyboardShown = false;
                    SDLActivity.mSurface.requestFocus();
                    return;
                }
                return;
            }
            if (i3 != 5) {
                if (!(context instanceof SDLActivity) || ((SDLActivity) context).onUnhandledMessage(i3, message.obj)) {
                    return;
                }
                Log.e(SDLActivity.TAG, "error handling message, command is " + message.arg1);
                return;
            }
            if (!(context instanceof Activity) || (window = ((Activity) context).getWindow()) == null) {
                return;
            }
            Object obj2 = message.obj;
            if (!(obj2 instanceof Integer) || ((Integer) obj2).intValue() == 0) {
                window.clearFlags(128);
            } else {
                window.addFlags(128);
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static class ShowTextInputTask implements Runnable {
        static final int HEIGHT_PADDING = 15;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f5189h;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public int f5190w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public int f5191x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public int f5192y;

        public ShowTextInputTask(int i3, int i4, int i5, int i6) {
            this.f5191x = i3;
            this.f5192y = i4;
            this.f5190w = i5;
            this.f5189h = i6;
            if (i5 <= 0) {
                this.f5190w = 1;
            }
            if (i6 + 15 <= 0) {
                this.f5189h = -14;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(this.f5190w, this.f5189h + 15);
            layoutParams.leftMargin = this.f5191x;
            layoutParams.topMargin = this.f5192y;
            DummyEdit dummyEdit = SDLActivity.mTextEdit;
            if (dummyEdit == null) {
                SDLActivity.mTextEdit = new DummyEdit(SDL.getContext());
                SDLActivity.mLayout.addView(SDLActivity.mTextEdit, layoutParams);
            } else {
                dummyEdit.setLayoutParams(layoutParams);
            }
            SDLActivity.mTextEdit.setVisibility(0);
            SDLActivity.mTextEdit.requestFocus();
            ((InputMethodManager) SDL.getContext().getSystemService("input_method")).showSoftInput(SDLActivity.mTextEdit, 0);
            SDLActivity.mScreenKeyboardShown = true;
        }
    }

    public static String clipboardGetText() {
        return mClipboardHandler.clipboardGetText();
    }

    public static boolean clipboardHasText() {
        return mClipboardHandler.clipboardHasText();
    }

    public static void clipboardSetText(String str) {
        mClipboardHandler.clipboardSetText(str);
    }

    public static int createCustomCursor(int[] iArr, int i3, int i4, int i5, int i6) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iArr, i3, i4, Bitmap.Config.ARGB_8888);
        mLastCursorID++;
        try {
            mCursors.put(Integer.valueOf(mLastCursorID), PointerIcon.create(bitmapCreateBitmap, i5, i6));
            return mLastCursorID;
        } catch (Exception unused) {
            return 0;
        }
    }

    public static void destroyCustomCursor(int i3) {
        try {
            mCursors.remove(Integer.valueOf(i3));
        } catch (Exception unused) {
        }
    }

    public static View getContentView() {
        return mLayout;
    }

    public static Context getContext() {
        return SDL.getContext();
    }

    public static int getCurrentOrientation() {
        Activity activity = (Activity) getContext();
        if (activity == null) {
            return 0;
        }
        int rotation = activity.getWindowManager().getDefaultDisplay().getRotation();
        if (rotation == 0) {
            return 3;
        }
        if (rotation == 1) {
            return 1;
        }
        if (rotation != 2) {
            return rotation != 3 ? 0 : 2;
        }
        return 4;
    }

    public static double getDiagonal() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        Activity activity = (Activity) getContext();
        if (activity == null) {
            return 0.0d;
        }
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        double d3 = ((double) displayMetrics.widthPixels) / ((double) displayMetrics.xdpi);
        double d4 = ((double) displayMetrics.heightPixels) / ((double) displayMetrics.ydpi);
        return Math.sqrt((d4 * d4) + (d3 * d3));
    }

    public static DisplayMetrics getDisplayDPI() {
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        SDLSurface sDLSurface = mSurface;
        if (sDLSurface != null) {
            float fBufferPerViewX = sDLSurface.bufferPerViewX();
            float fBufferPerViewY = sDLSurface.bufferPerViewY();
            if (fBufferPerViewX != 1.0f || fBufferPerViewY != 1.0f) {
                DisplayMetrics displayMetrics2 = new DisplayMetrics();
                displayMetrics2.setTo(displayMetrics);
                displayMetrics2.widthPixels = Math.round(displayMetrics.widthPixels * fBufferPerViewX);
                displayMetrics2.heightPixels = Math.round(displayMetrics.heightPixels * fBufferPerViewY);
                displayMetrics2.xdpi = displayMetrics.xdpi * fBufferPerViewX;
                displayMetrics2.ydpi = displayMetrics.ydpi * fBufferPerViewY;
                return displayMetrics2;
            }
        }
        return displayMetrics;
    }

    public static boolean getManifestEnvironmentVariables() {
        Bundle bundle;
        try {
            if (getContext() == null || (bundle = getContext().getPackageManager().getApplicationInfo(getContext().getPackageName(), 128).metaData) == null) {
                return false;
            }
            for (String str : bundle.keySet()) {
                if (str.startsWith("SDL_ENV.")) {
                    nativeSetenv(str.substring(8), bundle.get(str).toString());
                }
            }
            return true;
        } catch (Exception e2) {
            Log.v(TAG, "exception " + e2.toString());
            return false;
        }
    }

    public static SDLGenericMotionListener_API12 getMotionListener() {
        if (mMotionListener == null) {
            if (Build.VERSION.SDK_INT >= 26) {
                mMotionListener = new SDLGenericMotionListener_API26();
            } else {
                mMotionListener = new SDLGenericMotionListener_API24();
            }
        }
        return mMotionListener;
    }

    public static Surface getNativeSurface() {
        SDLSurface sDLSurface = mSurface;
        if (sDLSurface == null) {
            return null;
        }
        return sDLSurface.getNativeSurface();
    }

    public static boolean handleKeyEvent(View view, int i3, KeyEvent keyEvent, InputConnection inputConnection) {
        InputDevice device;
        int deviceId = keyEvent.getDeviceId();
        int source = keyEvent.getSource();
        if (source == 0 && (device = InputDevice.getDevice(deviceId)) != null) {
            source = device.getSources();
        }
        if (SDLControllerManager.isDeviceSDLJoystick(deviceId)) {
            if (keyEvent.getAction() == 0) {
                if (SDLControllerManager.onNativePadDown(deviceId, i3) == 0) {
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && SDLControllerManager.onNativePadUp(deviceId, i3) == 0) {
                return true;
            }
        }
        if ((source & InputDeviceCompat.SOURCE_KEYBOARD) == 257) {
            if (keyEvent.getAction() == 0) {
                if (isTextInputEvent(keyEvent)) {
                    if (inputConnection != null) {
                        inputConnection.commitText(String.valueOf((char) keyEvent.getUnicodeChar()), 1);
                    } else {
                        SDLInputConnection.nativeCommitText(String.valueOf((char) keyEvent.getUnicodeChar()), 1);
                    }
                }
                onNativeKeyDown(i3);
                return true;
            }
            if (keyEvent.getAction() == 1) {
                onNativeKeyUp(i3);
                return true;
            }
        }
        if ((source & 8194) != 8194) {
            return false;
        }
        if (i3 != 4 && i3 != 125) {
            return false;
        }
        int action = keyEvent.getAction();
        return action == 0 || action == 1;
    }

    public static void handleNativeState() {
        NativeState nativeState = mNextNativeState;
        if (nativeState == mCurrentNativeState) {
            return;
        }
        if (nativeState == NativeState.INIT) {
            mCurrentNativeState = mNextNativeState;
            return;
        }
        if (mNextNativeState == NativeState.PAUSED) {
            if (mSDLThread != null) {
                nativePause();
            }
            SDLSurface sDLSurface = mSurface;
            if (sDLSurface != null) {
                sDLSurface.handlePause();
            }
            mCurrentNativeState = mNextNativeState;
            return;
        }
        if (mNextNativeState == NativeState.RESUMED) {
            StringBuilder sb = new StringBuilder("handleNativeState RESUMED: surfaceReady=");
            SDLSurface sDLSurface2 = mSurface;
            sb.append(sDLSurface2 != null ? Boolean.valueOf(sDLSurface2.mIsSurfaceReady) : "null");
            sb.append(" hasFocus=");
            sb.append(mHasFocus);
            sb.append(" resumed=");
            sb.append(mIsResumedCalled);
            Log.i(TAG, sb.toString());
            if (mSurface.mIsSurfaceReady && mHasFocus && mIsResumedCalled) {
                if (mSDLThread == null) {
                    Log.i(TAG, "Starting SDLThread");
                    mSDLThread = new Thread(new SDLMain(), "SDLThread");
                    mSurface.enableSensor(1, true);
                    mSDLThread.start();
                } else {
                    nativeResume();
                }
                mSurface.handleResume();
                mCurrentNativeState = mNextNativeState;
            }
        }
    }

    public static void initTouch() {
        for (int i3 : InputDevice.getDeviceIds()) {
            InputDevice device = InputDevice.getDevice(i3);
            if (device != null && ((device.getSources() & InputDeviceCompat.SOURCE_TOUCHSCREEN) == 4098 || device.isVirtual())) {
                int id = device.getId();
                if (id < 0) {
                    id--;
                }
                nativeAddTouch(id, device.getName());
            }
        }
    }

    public static void initialize() {
        mSingleton = null;
        mSurface = null;
        mTextEdit = null;
        mLayout = null;
        mClipboardHandler = null;
        mCursors = new Hashtable<>();
        mLastCursorID = 0;
        mSDLThread = null;
        mIsResumedCalled = false;
        mHasFocus = true;
        NativeState nativeState = NativeState.INIT;
        mNextNativeState = nativeState;
        mCurrentNativeState = nativeState;
    }

    public static boolean isAndroidTV() {
        if (((UiModeManager) getContext().getSystemService("uimode")).getCurrentModeType() == 4) {
            return true;
        }
        String str = Build.MANUFACTURER;
        if (str.equals("MINIX") && Build.MODEL.equals("NEO-U1")) {
            return true;
        }
        if (str.equals("Amlogic") && Build.MODEL.equals("X96-W")) {
            return true;
        }
        return str.equals("Amlogic") && Build.MODEL.startsWith("TV");
    }

    public static boolean isChromebook() {
        if (getContext() == null) {
            return false;
        }
        return getContext().getPackageManager().hasSystemFeature("org.chromium.arc.device_management");
    }

    public static boolean isDeXMode() {
        try {
            Configuration configuration = getContext().getResources().getConfiguration();
            Class<?> cls = configuration.getClass();
            return cls.getField("SEM_DESKTOP_MODE_ENABLED").getInt(cls) == cls.getField("semDesktopModeEnabled").getInt(configuration);
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean isScreenKeyboardShown() {
        if (mTextEdit != null && mScreenKeyboardShown) {
            return ((InputMethodManager) SDL.getContext().getSystemService("input_method")).isAcceptingText();
        }
        return false;
    }

    public static boolean isTablet() {
        return getDiagonal() >= 7.0d;
    }

    public static boolean isTextInputEvent(KeyEvent keyEvent) {
        if (keyEvent.isCtrlPressed()) {
            return false;
        }
        return keyEvent.isPrintingKey() || keyEvent.getKeyCode() == 62;
    }

    public static void manualBackButton() {
        mSingleton.pressBackButton();
    }

    public static void minimizeWindow() {
        if (mSingleton == null) {
            return;
        }
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        intent.setFlags(268435456);
        mSingleton.startActivity(intent);
    }

    public static native void nativeAddTouch(int i3, String str);

    public static native void nativeFocusChanged(boolean z2);

    public static native String nativeGetHint(String str);

    public static native boolean nativeGetHintBoolean(String str, boolean z2);

    public static native String nativeGetVersion();

    public static native void nativeLowMemory();

    public static native void nativePause();

    public static native void nativePermissionResult(int i3, boolean z2);

    public static native void nativeQuit();

    public static native void nativeResume();

    public static native int nativeRunMain(String str, String str2, Object obj);

    public static native void nativeSendQuit();

    public static native void nativeSetScreenResolution(int i3, int i4, int i5, int i6, float f);

    public static native void nativeSetenv(String str, String str2);

    public static native int nativeSetupJNI();

    public static native void onNativeAccel(float f, float f3, float f4);

    public static native void onNativeClipboardChanged();

    public static native void onNativeDropFile(String str);

    public static native void onNativeKeyDown(int i3);

    public static native void onNativeKeyUp(int i3);

    public static native void onNativeKeyboardFocusLost();

    public static native void onNativeLocaleChanged();

    public static native void onNativeMouse(int i3, int i4, float f, float f3, boolean z2);

    public static native void onNativeOrientationChanged(int i3);

    public static native void onNativeResize();

    public static native boolean onNativeSoftReturnKey();

    public static native void onNativeSurfaceChanged();

    public static native void onNativeSurfaceCreated();

    public static native void onNativeSurfaceDestroyed();

    public static native void onNativeTouch(int i3, int i4, int i5, float f, float f3, float f4);

    public static int openURL(String str) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(str));
            intent.addFlags(1208483840);
            mSingleton.startActivity(intent);
            return 0;
        } catch (Exception unused) {
            return -1;
        }
    }

    public static void requestPermission(String str, int i3) {
        Activity activity = (Activity) getContext();
        if (activity.checkSelfPermission(str) != 0) {
            activity.requestPermissions(new String[]{str}, i3);
        } else {
            nativePermissionResult(i3, true);
        }
    }

    public static boolean sendMessage(int i3, int i4) {
        SDLActivity sDLActivity = mSingleton;
        if (sDLActivity == null) {
            return false;
        }
        return sDLActivity.sendCommand(i3, Integer.valueOf(i4));
    }

    public static boolean setActivityTitle(String str) {
        return mSingleton.sendCommand(1, str);
    }

    public static boolean setCustomCursor(int i3) {
        try {
            mSurface.setPointerIcon(mCursors.get(Integer.valueOf(i3)));
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static void setOrientation(int i3, int i4, boolean z2, String str) {
        SDLActivity sDLActivity = mSingleton;
        if (sDLActivity != null) {
            sDLActivity.setOrientationBis(i3, i4, z2, str);
        }
    }

    public static boolean setRelativeMouseEnabled(boolean z2) {
        if (!z2 || supportsRelativeMouse()) {
            return getMotionListener().setRelativeMouseEnabled(z2);
        }
        return false;
    }

    public static boolean setSystemCursor(int i3) {
        int i4 = 1004;
        switch (i3) {
            case 0:
                i4 = 1000;
                break;
            case 1:
                i4 = 1008;
                break;
            case 2:
            case 4:
                break;
            case 3:
                i4 = 1007;
                break;
            case 5:
                i4 = 1017;
                break;
            case 6:
                i4 = 1016;
                break;
            case 7:
                i4 = 1014;
                break;
            case 8:
                i4 = 1015;
                break;
            case 9:
                i4 = 1020;
                break;
            case 10:
                i4 = 1012;
                break;
            case 11:
                i4 = 1002;
                break;
            default:
                i4 = 0;
                break;
        }
        try {
            mSurface.setPointerIcon(PointerIcon.getSystemIcon(SDL.getContext(), i4));
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static void setWindowStyle(boolean z2) {
        mSingleton.sendCommand(2, Integer.valueOf(z2 ? 1 : 0));
    }

    public static boolean shouldMinimizeOnFocusLoss() {
        return false;
    }

    public static boolean showTextInput(int i3, int i4, int i5, int i6) {
        return mSingleton.commandHandler.post(new ShowTextInputTask(i3, i4, i5, i6));
    }

    public static int showToast(String str, int i3, int i4, int i5, int i6) {
        SDLActivity sDLActivity = mSingleton;
        if (sDLActivity == null) {
            return -1;
        }
        try {
            sDLActivity.runOnUiThread(new Runnable(str, i3, i4, i5, i6) { // from class: org.libsdl.app.SDLActivity.1OneShotTask
                int mDuration;
                int mGravity;
                String mMessage;
                int mXOffset;
                int mYOffset;

                {
                    this.mMessage = str;
                    this.mDuration = i3;
                    this.mGravity = i4;
                    this.mXOffset = i5;
                    this.mYOffset = i6;
                }

                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Toast toastMakeText = Toast.makeText(SDLActivity.mSingleton, this.mMessage, this.mDuration);
                        int i7 = this.mGravity;
                        if (i7 >= 0) {
                            toastMakeText.setGravity(i7, this.mXOffset, this.mYOffset);
                        }
                        toastMakeText.show();
                    } catch (Exception e2) {
                        Log.e(SDLActivity.TAG, e2.getMessage());
                    }
                }
            });
            return 0;
        } catch (Exception unused) {
            return -1;
        }
    }

    public static boolean supportsRelativeMouse() {
        if (Build.VERSION.SDK_INT >= 27 || !isDeXMode()) {
            return getMotionListener().supportsRelativeMouse();
        }
        return false;
    }

    public static float surfaceX(float f) {
        SDLSurface sDLSurface = mSurface;
        return sDLSurface == null ? f : sDLSurface.bufferPerViewX() * f;
    }

    public static float surfaceY(float f) {
        SDLSurface sDLSurface = mSurface;
        return sDLSurface == null ? f : sDLSurface.bufferPerViewY() * f;
    }

    public SDLSurface createSDLSurface(Context context) {
        return new SDLSurface(context);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode;
        if (mBrokenLibraries || (keyCode = keyEvent.getKeyCode()) == 25 || keyCode == 24 || keyCode == 27 || keyCode == 168 || keyCode == 169) {
            return false;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    public String[] getArguments() {
        return new String[0];
    }

    public String[] getLibraries() {
        return new String[]{"SDL2", "SDL2_image", "SDL2_ttf", "SDL2_sound", "openal", "ruby", "mkxp-z"};
    }

    public String getMainFunction() {
        return "SDL_main";
    }

    public String getMainSharedObject() {
        String[] libraries = mSingleton.getLibraries();
        return getContext().getApplicationInfo().nativeLibraryDir + "/" + (libraries.length > 0 ? a.i(new StringBuilder("lib"), libraries[libraries.length - 1], ".so") : "libmkxp-z.so");
    }

    public void loadLibraries() {
        for (String str : getLibraries()) {
            SDL.loadLibrary(str);
        }
    }

    public void messageboxCreateAndShow(Bundle bundle) {
        int i3;
        int i4;
        int i5;
        int[] intArray = bundle.getIntArray("colors");
        char c3 = 2;
        int i6 = 0;
        if (intArray != null) {
            i3 = intArray[0];
            i4 = intArray[1];
            int i7 = intArray[2];
            i5 = intArray[3];
            int i8 = intArray[4];
        } else {
            i3 = 0;
            i4 = 0;
            i5 = 0;
        }
        final AlertDialog alertDialogCreate = new AlertDialog.Builder(this).create();
        alertDialogCreate.setTitle(bundle.getString("title"));
        alertDialogCreate.setCancelable(false);
        alertDialogCreate.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.libsdl.app.SDLActivity.4
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                synchronized (SDLActivity.this.messageboxSelection) {
                    SDLActivity.this.messageboxSelection.notify();
                }
            }
        });
        TextView textView = new TextView(this);
        textView.setPadding(40, 35, 40, 35);
        textView.setGravity(17);
        textView.setText(bundle.getString("message"));
        if (i4 != 0) {
            textView.setTextColor(i4);
        }
        int[] intArray2 = bundle.getIntArray("buttonFlags");
        int[] intArray3 = bundle.getIntArray("buttonIds");
        String[] stringArray = bundle.getStringArray("buttonTexts");
        final SparseArray sparseArray = new SparseArray();
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(17);
        while (i6 < stringArray.length) {
            Button button = new Button(this);
            final int i9 = intArray3[i6];
            char c4 = c3;
            button.setOnClickListener(new View.OnClickListener() { // from class: org.libsdl.app.SDLActivity.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    SDLActivity.this.messageboxSelection[0] = i9;
                    alertDialogCreate.dismiss();
                }
            });
            int i10 = intArray2[i6];
            if (i10 != 0) {
                if ((i10 & 1) != 0) {
                    sparseArray.put(66, button);
                }
                if ((intArray2[i6] & 2) != 0) {
                    sparseArray.put(111, button);
                }
            }
            button.setText(stringArray[i6]);
            if (i4 != 0) {
                button.setTextColor(i4);
            }
            if (i5 != 0) {
                Drawable background = button.getBackground();
                if (background == null) {
                    button.setBackgroundColor(i5);
                } else {
                    background.setColorFilter(i5, PorterDuff.Mode.MULTIPLY);
                }
            }
            linearLayout.addView(button);
            i6++;
            c3 = c4;
        }
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(1);
        linearLayout2.addView(textView);
        linearLayout2.addView(linearLayout);
        if (i3 != 0) {
            linearLayout2.setBackgroundColor(i3);
        }
        alertDialogCreate.setView(linearLayout2);
        alertDialogCreate.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: org.libsdl.app.SDLActivity.6
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i11, KeyEvent keyEvent) {
                Button button2 = (Button) sparseArray.get(i11);
                if (button2 == null) {
                    return false;
                }
                if (keyEvent.getAction() == 1) {
                    button2.performClick();
                }
                return true;
            }
        });
        alertDialogCreate.show();
    }

    public int messageboxShowMessageBox(int i3, String str, String str2, int[] iArr, int[] iArr2, String[] strArr, int[] iArr3) {
        this.messageboxSelection[0] = -1;
        if (iArr.length != iArr2.length && iArr2.length != strArr.length) {
            return -1;
        }
        final Bundle bundle = new Bundle();
        bundle.putInt("flags", i3);
        bundle.putString("title", str);
        bundle.putString("message", str2);
        bundle.putIntArray("buttonFlags", iArr);
        bundle.putIntArray("buttonIds", iArr2);
        bundle.putStringArray("buttonTexts", strArr);
        bundle.putIntArray("colors", iArr3);
        runOnUiThread(new Runnable() { // from class: org.libsdl.app.SDLActivity.3
            @Override // java.lang.Runnable
            public void run() {
                SDLActivity.this.messageboxCreateAndShow(bundle);
            }
        });
        synchronized (this.messageboxSelection) {
            try {
                this.messageboxSelection.wait();
            } catch (InterruptedException e2) {
                e2.printStackTrace();
                return -1;
            }
        }
        return this.messageboxSelection[0];
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (nativeGetHintBoolean("SDL_ANDROID_TRAP_BACK_BUTTON", false) || isFinishing()) {
            return;
        }
        super.onBackPressed();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        Log.v(TAG, "onConfigurationChanged()");
        super.onConfigurationChanged(configuration);
        if (mBrokenLibraries) {
            return;
        }
        Locale locale = mCurrentLocale;
        if (locale == null || !locale.equals(configuration.locale)) {
            mCurrentLocale = configuration.locale;
            onNativeLocaleChanged();
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        String message;
        String path;
        Log.v(TAG, "Device: " + Build.DEVICE);
        Log.v(TAG, "Model: " + Build.MODEL);
        Log.v(TAG, "onCreate()");
        super.onCreate(bundle);
        try {
            Thread.currentThread().setName("SDLActivity");
        } catch (Exception e2) {
            Log.v(TAG, "modify thread properties failed " + e2.toString());
        }
        try {
            loadLibraries();
            mBrokenLibraries = false;
            message = "";
        } catch (Exception e3) {
            System.err.println(e3.getMessage());
            mBrokenLibraries = true;
            message = e3.getMessage();
        } catch (UnsatisfiedLinkError e4) {
            System.err.println(e4.getMessage());
            mBrokenLibraries = true;
            message = e4.getMessage();
        }
        if (!mBrokenLibraries) {
            try {
                String str = String.valueOf(2) + "." + String.valueOf(26) + "." + String.valueOf(3);
                String strNativeGetVersion = nativeGetVersion();
                if (!strNativeGetVersion.equals(str)) {
                    mBrokenLibraries = true;
                    message = "SDL C/Java version mismatch (expected " + str + ", got " + strNativeGetVersion + ")";
                }
            } catch (UnsatisfiedLinkError e5) {
                Log.w(TAG, "nativeGetVersion unavailable, skipping SDL version check: " + e5.getMessage());
            }
        }
        if (mBrokenLibraries) {
            mSingleton = this;
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setMessage("An error occurred while trying to start the application. Please try again and/or reinstall." + System.getProperty("line.separator") + System.getProperty("line.separator") + "Error: " + message);
            builder.setTitle("SDL Error");
            builder.setPositiveButton("Exit", new DialogInterface.OnClickListener() { // from class: org.libsdl.app.SDLActivity.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i3) {
                    SDLActivity.mSingleton.finish();
                }
            });
            builder.setCancelable(false);
            builder.create().show();
            return;
        }
        SDL.setupJNI();
        SDL.initialize();
        mSingleton = this;
        SDL.setContext(this);
        mClipboardHandler = new SDLClipboardHandler();
        try {
            mHIDDeviceManager = HIDDeviceManager.acquire(this);
        } catch (UnsatisfiedLinkError e6) {
            Log.w(TAG, "HIDDeviceManager unavailable (old SDL build), HID support disabled: " + e6.getMessage());
            mHIDDeviceManager = null;
        }
        mSurface = createSDLSurface(getApplication());
        RelativeLayout relativeLayout = new RelativeLayout(this);
        mLayout = relativeLayout;
        relativeLayout.addView(mSurface, new RelativeLayout.LayoutParams(-1, -1));
        int currentOrientation = getCurrentOrientation();
        mCurrentOrientation = currentOrientation;
        onNativeOrientationChanged(currentOrientation);
        try {
            mCurrentLocale = getContext().getResources().getConfiguration().getLocales().get(0);
        } catch (Exception unused) {
        }
        setContentView(mLayout);
        setWindowStyle(true);
        getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(this);
        Intent intent = getIntent();
        if (intent == null || intent.getData() == null || (path = intent.getData().getPath()) == null) {
            return;
        }
        Log.v(TAG, "Got filename: ".concat(path));
        onNativeDropFile(path);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        Log.v(TAG, "onDestroy()");
        HIDDeviceManager hIDDeviceManager = mHIDDeviceManager;
        if (hIDDeviceManager != null) {
            HIDDeviceManager.release(hIDDeviceManager);
            mHIDDeviceManager = null;
        }
        if (mBrokenLibraries) {
            super.onDestroy();
            return;
        }
        if (mSDLThread != null) {
            nativeSendQuit();
            try {
                mSDLThread.join();
            } catch (Exception e2) {
                Log.v(TAG, "Problem stopping SDLThread: " + e2);
            }
        }
        nativeQuit();
        super.onDestroy();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        Log.v(TAG, "onLowMemory()");
        super.onLowMemory();
        if (mBrokenLibraries) {
            return;
        }
        nativeLowMemory();
    }

    @Override // android.app.Activity
    public void onPause() {
        Log.v(TAG, "onPause()");
        super.onPause();
        HIDDeviceManager hIDDeviceManager = mHIDDeviceManager;
        if (hIDDeviceManager != null) {
            hIDDeviceManager.setFrozen(true);
        }
        if (mHasMultiWindow) {
            return;
        }
        pauseNativeThread();
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i3, String[] strArr, int[] iArr) {
        boolean z2 = false;
        if (iArr.length > 0 && iArr[0] == 0) {
            z2 = true;
        }
        nativePermissionResult(i3, z2);
    }

    @Override // android.app.Activity
    public void onResume() {
        Log.v(TAG, "onResume()");
        super.onResume();
        HIDDeviceManager hIDDeviceManager = mHIDDeviceManager;
        if (hIDDeviceManager != null) {
            hIDDeviceManager.setFrozen(false);
        }
        if (mHasMultiWindow) {
            return;
        }
        resumeNativeThread();
    }

    @Override // android.app.Activity
    public void onStart() {
        Log.v(TAG, "onStart()");
        super.onStart();
        if (mHasMultiWindow) {
            resumeNativeThread();
        }
    }

    @Override // android.app.Activity
    public void onStop() {
        Log.v(TAG, "onStop()");
        super.onStop();
        if (mHasMultiWindow) {
            pauseNativeThread();
        }
    }

    @Override // android.view.View.OnSystemUiVisibilityChangeListener
    public void onSystemUiVisibilityChange(int i3) {
        Handler handler;
        if (mFullscreenModeActive) {
            if (((i3 & 4) == 0 || (i3 & 2) == 0) && (handler = getWindow().getDecorView().getHandler()) != null) {
                handler.removeCallbacks(this.rehideSystemUi);
                handler.postDelayed(this.rehideSystemUi, 2000L);
            }
        }
    }

    public boolean onUnhandledMessage(int i3, Object obj) {
        return false;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        Log.v(TAG, "onWindowFocusChanged(): " + z2);
        if (mBrokenLibraries) {
            return;
        }
        mHasFocus = z2;
        if (z2) {
            mNextNativeState = NativeState.RESUMED;
            getMotionListener().reclaimRelativeMouseModeIfNeeded();
            handleNativeState();
            nativeFocusChanged(true);
            return;
        }
        nativeFocusChanged(false);
        if (mHasMultiWindow) {
            return;
        }
        mNextNativeState = NativeState.PAUSED;
        handleNativeState();
    }

    public void pauseNativeThread() {
        mNextNativeState = NativeState.PAUSED;
        mIsResumedCalled = false;
        if (mBrokenLibraries) {
            return;
        }
        handleNativeState();
    }

    public void pressBackButton() {
        runOnUiThread(new Runnable() { // from class: org.libsdl.app.SDLActivity.2
            @Override // java.lang.Runnable
            public void run() {
                if (SDLActivity.this.isFinishing()) {
                    return;
                }
                SDLActivity.this.superOnBackPressed();
            }
        });
    }

    public void resumeNativeThread() {
        mNextNativeState = NativeState.RESUMED;
        mIsResumedCalled = true;
        if (mBrokenLibraries) {
            return;
        }
        handleNativeState();
    }

    public boolean sendCommand(int i3, Object obj) {
        Message messageObtainMessage = this.commandHandler.obtainMessage();
        messageObtainMessage.arg1 = i3;
        messageObtainMessage.obj = obj;
        boolean zSendMessage = this.commandHandler.sendMessage(messageObtainMessage);
        if (i3 == 2) {
            boolean z2 = false;
            if (obj instanceof Integer) {
                Display defaultDisplay = ((WindowManager) getSystemService("window")).getDefaultDisplay();
                DisplayMetrics displayMetrics = new DisplayMetrics();
                defaultDisplay.getRealMetrics(displayMetrics);
                if (displayMetrics.widthPixels == mSurface.getWidth() && displayMetrics.heightPixels == mSurface.getHeight()) {
                    z2 = true;
                }
                if (((Integer) obj).intValue() == 1) {
                    z2 = !z2;
                }
            }
            if (z2 && getContext() != null) {
                synchronized (getContext()) {
                    try {
                        getContext().wait(500L);
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }
        return zSendMessage;
    }

    /* JADX WARN: Code duplicated, block: B:46:0x006e  */
    public void setOrientationBis(int i3, int i4, boolean z2, String str) {
        int i5;
        int i6;
        if (str.contains("LandscapeRight") && str.contains("LandscapeLeft")) {
            i5 = 6;
        } else if (str.contains("LandscapeRight")) {
            i5 = 0;
        } else {
            i5 = str.contains("LandscapeLeft") ? 8 : -1;
        }
        if (str.contains("Portrait") && str.contains("PortraitUpsideDown")) {
            i6 = 7;
        } else if (str.contains("Portrait")) {
            i6 = 1;
        } else {
            i6 = str.contains("PortraitUpsideDown") ? 9 : -1;
        }
        boolean z3 = i5 != -1;
        boolean z4 = i6 != -1;
        int i7 = 10;
        if (z4 || z3) {
            if (!z2) {
                if (!z4 || !z3 ? !z3 : i3 <= i4) {
                    i5 = i6;
                }
                i7 = i5;
            } else if (!z4 || !z3) {
                if (!z3) {
                    i5 = i6;
                }
                i7 = i5;
            }
        } else if (!z2) {
            i7 = i3 <= i4 ? 7 : 6;
        }
        StringBuilder sbP = b.p("setOrientation() requestedOrientation=", i7, i3, " width=", " height=");
        sbP.append(i4);
        sbP.append(" resizable=");
        sbP.append(z2);
        sbP.append(" hint=");
        sbP.append(str);
        Log.v(TAG, sbP.toString());
        mSingleton.setRequestedOrientation(i7);
    }

    public void superOnBackPressed() {
        super.onBackPressed();
    }
}
