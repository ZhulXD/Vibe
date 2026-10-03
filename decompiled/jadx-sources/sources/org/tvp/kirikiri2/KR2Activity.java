package org.tvp.kirikiri2;

import E.a;
import E.d;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Debug;
import android.os.Handler;
import android.os.Message;
import android.os.storage.StorageManager;
import android.preference.PreferenceManager;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.core.view.MotionEventCompat;
import com.minhub.gamehub.R;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Locale;
import org.cocos2dx.lib.Cocos2dxActivity;
import org.cocos2dx.lib.Cocos2dxGLSurfaceView;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class KR2Activity extends Cocos2dxActivity implements ActivityCompat.OnRequestPermissionsResultCallback {
    static final int ORIENT_HORIZONTAL = 2;
    static final int ORIENT_VERTICAL = 1;
    public static final int RC_PHONE_STATE = 2;
    public static final int RC_WRITE_EXTERNAL = 1;
    static String[] _extSdPaths;
    public static KR2Activity sInstance;
    SharedPreferences Sp;
    static ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
    static ActivityManager mAcitivityManager = null;
    static Debug.MemoryInfo mDbgMemoryInfo = new Debug.MemoryInfo();
    protected static String sIntentStartupPath = null;
    private static int sStartupPathReads = 0;
    static DialogMessage mDialogMessage = new DialogMessage();
    protected static View mTextEdit = null;
    static Handler msgHandler = new Handler() { // from class: org.tvp.kirikiri2.KR2Activity.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            KR2Activity.sInstance.handleMessage(message);
        }
    };
    StorageManager mStorageManager = null;
    Method mMethodGetPaths = null;
    Method mGetVolumeState = null;

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static class DialogMessage {
        public String[] Buttons;
        public String Text;
        public EditText TextEditor = null;
        public String Title;

        private Dialog buildStyledDialog() {
            View viewInflate = LayoutInflater.from(KR2Activity.sInstance).inflate(R.layout.dialog_kiri_message, (ViewGroup) null);
            TextView textView = (TextView) viewInflate.findViewById(R.id.tv_kiri_dialog_title);
            TextView textView2 = (TextView) viewInflate.findViewById(R.id.tv_kiri_dialog_message);
            String str = this.Title;
            if (str == null) {
                str = "";
            }
            textView.setText(str);
            String str2 = this.Text;
            if (str2 != null && !str2.trim().isEmpty()) {
                String strTrim = this.Text.trim();
                String str3 = this.Title;
                if (!strTrim.equals(str3 != null ? str3.trim() : "")) {
                    textView2.setText(this.Text);
                    textView2.setVisibility(0);
                }
            }
            Dialog dialog = new Dialog(KR2Activity.sInstance);
            dialog.requestWindowFeature(1);
            dialog.setContentView(viewInflate);
            dialog.setCancelable(false);
            LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.kiri_dialog_buttons);
            for (int length = this.Buttons.length - 1; length >= 1; length--) {
                linearLayout.addView(makeButton(dialog, length, false));
            }
            if (this.Buttons.length >= 1) {
                linearLayout.addView(makeButton(dialog, 0, true));
            }
            if (dialog.getWindow() != null) {
                dialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
                dialog.getWindow().setLayout(Math.min((int) (KR2Activity.sInstance.getResources().getDisplayMetrics().widthPixels * 0.9f), dp(360)), -2);
            }
            return dialog;
        }

        private int dp(int i3) {
            return Math.round(i3 * KR2Activity.sInstance.getResources().getDisplayMetrics().density);
        }

        private String localizedLabel(String str) {
            return ("cancel".equalsIgnoreCase(str) || "no".equalsIgnoreCase(str)) ? KR2Activity.sInstance.getString(R.string.dialog_cancel) : str;
        }

        private TextView makeButton(final Dialog dialog, final int i3, boolean z2) {
            TextView textView = new TextView(KR2Activity.sInstance);
            textView.setText(localizedLabel(this.Buttons[i3]));
            textView.setTextSize(2, 13.0f);
            textView.setGravity(17);
            textView.setMinWidth(dp(88));
            textView.setPadding(dp(16), 0, dp(16), 0);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, dp(38));
            layoutParams.setMarginStart(dp(8));
            textView.setLayoutParams(layoutParams);
            if (z2) {
                textView.setBackgroundResource(R.drawable.bg_btn_accent);
                textView.setTextColor(ContextCompat.getColor(KR2Activity.sInstance, android.R.color.white));
            } else {
                textView.setBackgroundResource(R.drawable.bg_btn_outline);
                textView.setTextColor(ContextCompat.getColor(KR2Activity.sInstance, R.color.text_sec));
            }
            textView.setOnClickListener(new View.OnClickListener() { // from class: org.tvp.kirikiri2.KR2Activity.DialogMessage.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    dialog.dismiss();
                    DialogMessage.this.onButtonClick(i3);
                }
            });
            return textView;
        }

        public void Init(String str, String str2, String[] strArr) {
            this.Title = str;
            this.Text = str2;
            this.Buttons = strArr;
        }

        public void ShowInputBox(String str) {
            Dialog dialogBuildStyledDialog = buildStyledDialog();
            EditText editText = new EditText(KR2Activity.sInstance);
            this.TextEditor = editText;
            editText.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
            this.TextEditor.setText(str);
            this.TextEditor.setTextColor(ContextCompat.getColor(KR2Activity.sInstance, R.color.text_pri));
            FrameLayout frameLayout = (FrameLayout) dialogBuildStyledDialog.findViewById(R.id.kiri_dialog_input);
            frameLayout.addView(this.TextEditor);
            frameLayout.setVisibility(0);
            dialogBuildStyledDialog.show();
            this.TextEditor.requestFocus();
            ((InputMethodManager) Cocos2dxActivity.getContext().getSystemService("input_method")).showSoftInput(this.TextEditor, 0);
        }

        public void ShowMessageBox() {
            this.TextEditor = null;
            buildStyledDialog().show();
        }

        public void onButtonClick(int i3) {
            EditText editText = this.TextEditor;
            if (editText != null) {
                KR2Activity.onMessageBoxText(editText.getText().toString());
            }
            KR2Activity.onMessageBoxOK(i3);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static class ShowTextInputTask implements Runnable {
        static final int HEIGHT_PADDING = 15;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f5203h;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public int f5204w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public int f5205x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public int f5206y;

        public ShowTextInputTask(int i3, int i4, int i5, int i6) {
            this.f5205x = i3;
            this.f5206y = i4;
            this.f5204w = i5;
            this.f5203h = i6;
        }

        @Override // java.lang.Runnable
        public void run() {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.f5204w, this.f5203h + 15);
            layoutParams.leftMargin = this.f5205x;
            layoutParams.topMargin = this.f5206y;
            View view = KR2Activity.mTextEdit;
            if (view == null) {
                KR2Activity.mTextEdit = new DummyEdit(Cocos2dxActivity.getContext());
                ((Cocos2dxActivity) KR2Activity.sInstance).mFrameLayout.addView(KR2Activity.mTextEdit, layoutParams);
            } else {
                view.setLayoutParams(layoutParams);
            }
            KR2Activity.mTextEdit.setVisibility(0);
            KR2Activity.mTextEdit.requestFocus();
            ((InputMethodManager) Cocos2dxActivity.getContext().getSystemService("input_method")).showSoftInput(KR2Activity.mTextEdit, 0);
        }
    }

    public static boolean CreateFolders(String str) {
        File file = new File(str);
        if (file.mkdirs()) {
            return true;
        }
        return getDocumentFile(file, true, sInstance).e();
    }

    public static boolean DeleteFile(String str) {
        File file = new File(str);
        boolean zDeleteFilesInFolder = deleteFilesInFolder(file, sInstance);
        if (file.delete() || zDeleteFilesInFolder) {
            return true;
        }
        return isOnExtSdCard(file, sInstance) ? getDocumentFile(file, false, sInstance).d() : !file.exists();
    }

    public static KR2Activity GetInstance() {
        return sInstance;
    }

    public static String GetVersion() {
        try {
            return sInstance.getPackageManager().getPackageInfo(sInstance.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public static void MessageController(int i3, int i4, int i5) {
        Message messageObtainMessage = msgHandler.obtainMessage();
        messageObtainMessage.what = i3;
        messageObtainMessage.arg1 = i4;
        messageObtainMessage.arg2 = i5;
        msgHandler.sendMessage(messageObtainMessage);
    }

    public static boolean RenameFile(String str, String str2) {
        File file = new File(str);
        File file2 = new File(str2);
        if (file.exists() && (!file2.exists() || DeleteFile(file2.getAbsolutePath()))) {
            File parentFile = file2.getParentFile();
            if ((parentFile.exists() || CreateFolders(parentFile.getAbsolutePath())) && (file.renameTo(file2) || getDocumentFile(file, false, sInstance).l(str2))) {
                return true;
            }
        }
        return false;
    }

    public static void ShowInputBox(String str, String str2, final String str3, String[] strArr) {
        mDialogMessage.Init(str, str2, strArr);
        msgHandler.post(new Runnable() { // from class: org.tvp.kirikiri2.KR2Activity.3
            @Override // java.lang.Runnable
            public void run() {
                KR2Activity.mDialogMessage.ShowInputBox(str3);
            }
        });
    }

    public static void ShowMessageBox(String str, String str2, String[] strArr) {
        mDialogMessage.Init(str, str2, strArr);
        msgHandler.post(new Runnable() { // from class: org.tvp.kirikiri2.KR2Activity.2
            @Override // java.lang.Runnable
            public void run() {
                KR2Activity.mDialogMessage.ShowMessageBox();
            }
        });
    }

    public static boolean WriteFile(String str, byte[] bArr) {
        OutputStream outputStreamOpenOutputStream;
        File file = new File(str);
        if (file.exists()) {
            DeleteFile(file.getAbsolutePath());
        } else {
            File parentFile = file.getParentFile();
            if (!parentFile.exists()) {
                CreateFolders(parentFile.getAbsolutePath());
            }
        }
        try {
            if (isWritable(file)) {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                fileOutputStream.write(bArr);
                fileOutputStream.close();
                return true;
            }
            try {
                outputStreamOpenOutputStream = sInstance.getContentResolver().openOutputStream(getDocumentFile(file, false, sInstance).i());
            } catch (IOException unused) {
                outputStreamOpenOutputStream = null;
            }
            if (outputStreamOpenOutputStream != null) {
                outputStreamOpenOutputStream.write(bArr);
                outputStreamOpenOutputStream.close();
                return true;
            }
            return false;
        } catch (FileNotFoundException | IOException unused2) {
        }
    }

    public static final boolean deleteFilesInFolder(File file, Context context) {
        if (file == null) {
            return false;
        }
        if (!file.isDirectory()) {
            return file.delete();
        }
        for (File file2 : file.listFiles()) {
            deleteFilesInFolder(file2, context);
        }
        return file.delete();
    }

    public static void exit() {
        System.exit(0);
    }

    public static long getAvailMemory() {
        return memoryInfo.availMem;
    }

    public static a getDocumentFile(File file, boolean z2, Context context) {
        String strSubstring;
        boolean z3;
        String extSdCardFolder = getExtSdCardFolder(file, context);
        if (extSdCardFolder != null) {
            int i3 = 0;
            try {
                String canonicalPath = file.getCanonicalPath();
                if (extSdCardFolder.equals(canonicalPath)) {
                    strSubstring = null;
                    z3 = true;
                } else {
                    strSubstring = canonicalPath.substring(extSdCardFolder.length() + 1);
                    z3 = false;
                }
            } catch (IOException | Exception unused) {
            } catch (Exception unused2) {
            }
            String string = PreferenceManager.getDefaultSharedPreferences(context).getString("URI", null);
            Uri uri = string != null ? Uri.parse(string) : null;
            if (uri != null) {
                a aVarG = a.g(context, uri);
                if (z3) {
                    return aVarG;
                }
                String[] strArrSplit = strSubstring.split("\\/");
                while (i3 < strArrSplit.length) {
                    a aVarF = aVarG.f(strArrSplit[i3]);
                    if (aVarF == null) {
                        aVarG = (i3 < strArrSplit.length - 1 || z2) ? aVarG.b(strArrSplit[i3]) : aVarG.c("image", strArrSplit[i3]);
                    } else {
                        aVarG = aVarF;
                    }
                    i3++;
                }
                return aVarG;
            }
        }
        return null;
    }

    public static String getExtSdCardFolder(File file, Context context) {
        if (_extSdPaths == null) {
            _extSdPaths = getExtSdCardPaths(context);
        }
        for (int i3 = 0; i3 < _extSdPaths.length; i3++) {
            try {
                if (file.getCanonicalPath().startsWith(_extSdPaths[i3])) {
                    return _extSdPaths[i3];
                }
            } catch (IOException unused) {
            }
        }
        return null;
    }

    @TargetApi(19)
    private static String[] getExtSdCardPaths(Context context) {
        ArrayList arrayList = new ArrayList();
        for (File file : context.getExternalFilesDirs("external")) {
            if (file != null && !file.equals(context.getExternalFilesDir("external"))) {
                int iLastIndexOf = file.getAbsolutePath().lastIndexOf("/Android/data");
                if (iLastIndexOf < 0) {
                    Log.w("FileUtils", "Unexpected external file dir: " + file.getAbsolutePath());
                } else {
                    String strSubstring = file.getAbsolutePath().substring(0, iLastIndexOf);
                    try {
                        strSubstring = new File(strSubstring).getCanonicalPath();
                    } catch (IOException unused) {
                    }
                    arrayList.add(strSubstring);
                }
            }
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    public static String getIntentStartupPath() {
        sStartupPathReads++;
        Log.i("KiriKiriGame", "TVPCheckStartupArg read #" + sStartupPathReads + " -> " + sIntentStartupPath);
        return sIntentStartupPath;
    }

    public static String getKRDeviceId() {
        return "";
    }

    public static String getLocaleName() {
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        String country = locale.getCountry();
        if (country.isEmpty()) {
            return language;
        }
        return kotlin.collections.unsigned.a.g(language, "_") + country.toLowerCase();
    }

    public static OutputStream getOutputStream(File file, Context context, long j2) {
        try {
            if (isWritable(file)) {
                return new FileOutputStream(file);
            }
            return context.getContentResolver().openOutputStream(getDocumentFile(file, false, context).i());
        } catch (Exception e2) {
            Log.e("FileUtils", "Error when copying file from " + file.getAbsolutePath(), e2);
            return null;
        }
    }

    public static int getStartupPathReadCount() {
        return sStartupPathReads;
    }

    public static long getUsedMemory() {
        return mDbgMemoryInfo.getTotalPss();
    }

    public static void guideDialogForLEXA(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(sInstance);
        ImageView imageView = new ImageView(sInstance);
        imageView.setImageResource(sInstance.get_res_sd_operate_step());
        builder.setView(imageView).setTitle(str).setPositiveButton("OK", new DialogInterface.OnClickListener() { // from class: org.tvp.kirikiri2.KR2Activity.7
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i3) {
                KR2Activity.triggerStorageAccessFramework();
            }
        }).setNegativeButton("Cancel", new DialogInterface.OnClickListener() { // from class: org.tvp.kirikiri2.KR2Activity.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i3) {
            }
        }).show();
    }

    public static void hideTextInput() {
        msgHandler.post(new Runnable() { // from class: org.tvp.kirikiri2.KR2Activity.4
            @Override // java.lang.Runnable
            public void run() {
                View view = KR2Activity.mTextEdit;
                if (view != null) {
                    view.setVisibility(8);
                    ((InputMethodManager) KR2Activity.sInstance.getSystemService("input_method")).hideSoftInputFromWindow(KR2Activity.mTextEdit.getWindowToken(), 0);
                }
            }
        });
    }

    private static native void initDump(String str);

    public static boolean isOnExtSdCard(File file, Context context) {
        return getExtSdCardFolder(file, context) != null;
    }

    public static final boolean isWritable(File file) {
        boolean zCanWrite = false;
        if (file == null) {
            return false;
        }
        boolean zExists = file.exists();
        try {
            try {
                new FileOutputStream(file, true).close();
            } catch (IOException unused) {
            }
            zCanWrite = file.canWrite();
            if (!zExists) {
                file.delete();
            }
        } catch (FileNotFoundException unused2) {
        }
        return zCanWrite;
    }

    public static final boolean isWritableNormal(String str) {
        isWritableNormalOrSaf(str);
        requestExternalWrite();
        return isWritableNormalOrSaf(str);
    }

    public static final boolean isWritableNormalOrSaf(String str) {
        File file;
        Log.i("kr2activaty", "check path " + str + "permision");
        KR2Activity kR2Activity = sInstance;
        File file2 = new File(str);
        file2.mkdir();
        boolean z2 = false;
        if (file2.exists() && file2.isDirectory()) {
            int i3 = 0;
            do {
                StringBuilder sb = new StringBuilder("AugendiagnoseDummyFile");
                i3++;
                sb.append(i3);
                file = new File(file2, sb.toString());
            } while (file.exists());
            Log.d("ke2activate", isWritable(file) + "  ");
            if (isWritable(file)) {
                return true;
            }
            a documentFile = getDocumentFile(file, false, kR2Activity);
            if (documentFile != null) {
                if (documentFile.a() && file.exists()) {
                    z2 = true;
                }
                documentFile.d();
                d.m(file2);
                file2.delete();
            }
        }
        return z2;
    }

    public static native void nativeCharInput(int i3);

    public static native void nativeCommitText(String str, int i3);

    public static native void nativeDeleteBackward();

    private static native String nativeGetContentText();

    private static native boolean nativeGetHideSystemButton();

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeHoverMoved(float f, float f3);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeInsertText(String str);

    public static native boolean nativeKeyAction(int i3, boolean z2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeMouseScrolled(float f);

    private static native void nativeOnLowMemory();

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeTouchesBegin(int i3, float f, float f3);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeTouchesCancel(int[] iArr, float[] fArr, float[] fArr2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeTouchesEnd(int i3, float f, float f3);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeTouchesMove(int[] iArr, float[] fArr, float[] fArr2);

    public static native void onBannerSizeChanged(int i3, int i4);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void onMessageBoxOK(int i3);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void onMessageBoxText(String str);

    private static native void onNativeExit();

    public static native void onNativeInit();

    private static void requestExternalWrite() {
        if (ActivityCompat.shouldShowRequestPermissionRationale(sInstance, "android.permission.WRITE_EXTERNAL_STORAGE")) {
            ActivityCompat.requestPermissions(sInstance, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 1);
        } else {
            ActivityCompat.requestPermissions(sInstance, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 1);
        }
    }

    private static void requestPhoneState() {
        if (ActivityCompat.shouldShowRequestPermissionRationale(sInstance, "android.permission.READ_PHONE_STATE")) {
            ActivityCompat.requestPermissions(sInstance, new String[]{"android.permission.READ_PHONE_STATE"}, 2);
        } else {
            ActivityCompat.requestPermissions(sInstance, new String[]{"android.permission.READ_PHONE_STATE"}, 2);
        }
    }

    public static void requireLEXA(final String str) {
        msgHandler.post(new Runnable() { // from class: org.tvp.kirikiri2.KR2Activity.5
            @Override // java.lang.Runnable
            public void run() {
                KR2Activity.guideDialogForLEXA(str);
            }
        });
    }

    public static void setOrientation(int i3) {
        KR2Activity kR2Activity = sInstance;
        if (kR2Activity == null || !kR2Activity.keepsHostOrientation()) {
            if (i3 == 1) {
                sInstance.setRequestedOrientation(1);
            } else if (i3 == 2) {
                sInstance.setRequestedOrientation(0);
            }
        }
    }

    public static void showTextInput(int i3, int i4, int i5, int i6) {
        msgHandler.post(new ShowTextInputTask(i3, i4, i5, i6));
    }

    @TargetApi(21)
    public static void triggerStorageAccessFramework() {
        sInstance.startActivityForResult(new Intent("android.intent.action.OPEN_DOCUMENT_TREE"), 3);
    }

    public static void updateMemoryInfo() {
        if (mAcitivityManager == null) {
            mAcitivityManager = (ActivityManager) sInstance.getSystemService("activity");
        }
        mAcitivityManager.getMemoryInfo(memoryInfo);
        Debug.getMemoryInfo(mDbgMemoryInfo);
    }

    @TargetApi(MotionEventCompat.AXIS_Z)
    public void doSetSystemUiVisibility() {
        getWindow().getDecorView().setSystemUiVisibility(5894);
    }

    public String[] getStoragePath() {
        String[] strArr = new String[0];
        if (this.mStorageManager == null) {
            this.mStorageManager = (StorageManager) getSystemService("storage");
            try {
                this.mMethodGetPaths = StorageManager.class.getMethod("getVolumePaths", null);
                this.mGetVolumeState = StorageManager.class.getMethod("getVolumeState", String.class);
            } catch (NoSuchMethodException e2) {
                e2.printStackTrace();
            }
        }
        Method method = this.mMethodGetPaths;
        if (method != null) {
            try {
                strArr = (String[]) method.invoke(this.mStorageManager, null);
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException | Exception unused) {
            }
        }
        if (this.mGetVolumeState != null) {
            for (int i3 = 0; i3 < strArr.length; i3++) {
                try {
                    String str = (String) this.mGetVolumeState.invoke(this.mStorageManager, strArr[i3]);
                    if (!"mounted".equals(str) && !"mounted_ro".equals(str)) {
                        strArr[i3] = null;
                    }
                } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException | Exception unused2) {
                }
            }
        }
        return strArr;
    }

    public int get_res_sd_operate_step() {
        return -1;
    }

    public void hideSystemUI() {
        if (nativeGetHideSystemButton()) {
            doSetSystemUiVisibility();
        }
    }

    public boolean keepsHostOrientation() {
        return false;
    }

    @Override // org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    @SuppressLint({"WrongConstant"})
    @TargetApi(19)
    public void onActivityResult(int i3, int i4, Intent intent) {
        if (i3 == 3) {
            Uri data = null;
            String string = this.Sp.getString("URI", null);
            Uri uri = string != null ? Uri.parse(string) : null;
            if (i4 == -1 && (data = intent.getData()) != null) {
                this.Sp.edit().putString("URI", data.toString()).commit();
            }
            if (i4 == -1) {
                getContentResolver().takePersistableUriPermission(data, intent.getFlags() & 3);
            } else if (data != null) {
                this.Sp.edit().putString("URI", uri.toString()).commit();
            }
        }
    }

    @Override // org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        sInstance = this;
        this.Sp = PreferenceManager.getDefaultSharedPreferences(this);
        super.onCreate(bundle);
        for (String str : getExtSdCardPaths(this)) {
            if (!isWritableNormalOrSaf(str)) {
                guideDialogForLEXA(str);
            }
        }
        requestExternalWrite();
        initDump(getFilesDir().getAbsolutePath() + "/dump");
    }

    @Override // org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        System.exit(0);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        nativeOnLowMemory();
    }

    @Override // android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i3, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i3, strArr, iArr);
        if (i3 == 1) {
            Log.d("Krkr2", "onRequestPermissionsResult: WRITE EXTERNAL");
        } else {
            if (i3 != 2) {
                return;
            }
            Log.d("Krkr2", "onRequestPermissionsResult: PHONE STATE");
        }
    }

    @Override // org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        if (z2) {
            hideSystemUI();
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public class KR2GLSurfaceView extends Cocos2dxGLSurfaceView {
        public KR2GLSurfaceView(Context context) {
            super(context);
        }

        @Override // org.cocos2dx.lib.Cocos2dxGLSurfaceView
        public void deleteBackward() {
            KR2Activity.nativeDeleteBackward();
        }

        @Override // org.cocos2dx.lib.Cocos2dxGLSurfaceView
        public void insertText(String str) {
            KR2Activity.nativeInsertText(str);
        }

        @Override // android.view.View
        @TargetApi(12)
        public boolean onGenericMotionEvent(MotionEvent motionEvent) {
            if (motionEvent.getActionMasked() != 8) {
                return super.onGenericMotionEvent(motionEvent);
            }
            KR2Activity.nativeMouseScrolled(-motionEvent.getAxisValue(9));
            return true;
        }

        @Override // android.view.View
        public boolean onHoverEvent(MotionEvent motionEvent) {
            int pointerCount = motionEvent.getPointerCount();
            float[] fArr = new float[pointerCount];
            float[] fArr2 = new float[pointerCount];
            for (int i3 = 0; i3 < pointerCount; i3++) {
                fArr[i3] = motionEvent.getX(i3);
                fArr2[i3] = motionEvent.getY(i3);
            }
            if (motionEvent.getActionMasked() != 7) {
                return true;
            }
            KR2Activity.nativeHoverMoved(fArr[0], fArr2[0]);
            return true;
        }

        @Override // org.cocos2dx.lib.Cocos2dxGLSurfaceView, android.view.View, android.view.KeyEvent.Callback
        public boolean onKeyDown(int i3, KeyEvent keyEvent) {
            if (i3 != 4 && i3 != 66 && i3 != 82 && i3 != 85) {
                switch (i3) {
                    case 19:
                    case MotionEventCompat.AXIS_RUDDER /* 20 */:
                    case 21:
                    case 22:
                    case 23:
                        break;
                    default:
                        return super.onKeyDown(i3, keyEvent);
                }
            }
            KR2Activity.nativeKeyAction(i3, true);
            return true;
        }

        @Override // org.cocos2dx.lib.Cocos2dxGLSurfaceView, android.view.View, android.view.KeyEvent.Callback
        public boolean onKeyUp(int i3, KeyEvent keyEvent) {
            if (i3 != 4 && i3 != 66 && i3 != 82 && i3 != 85) {
                switch (i3) {
                    case 19:
                    case MotionEventCompat.AXIS_RUDDER /* 20 */:
                    case 21:
                    case 22:
                    case 23:
                        break;
                    default:
                        return super.onKeyUp(i3, keyEvent);
                }
            }
            KR2Activity.nativeKeyAction(i3, false);
            return true;
        }

        @Override // org.cocos2dx.lib.Cocos2dxGLSurfaceView, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            int pointerCount = motionEvent.getPointerCount();
            int[] iArr = new int[pointerCount];
            float[] fArr = new float[pointerCount];
            float[] fArr2 = new float[pointerCount];
            for (int i3 = 0; i3 < pointerCount; i3++) {
                iArr[i3] = motionEvent.getPointerId(i3);
                fArr[i3] = motionEvent.getX(i3);
                fArr2[i3] = motionEvent.getY(i3);
            }
            int action = motionEvent.getAction() & 255;
            if (action == 0) {
                KR2Activity.nativeTouchesBegin(motionEvent.getPointerId(0), fArr[0], fArr2[0]);
                return true;
            }
            if (action == 1) {
                KR2Activity.nativeTouchesEnd(motionEvent.getPointerId(0), fArr[0], fArr2[0]);
                return true;
            }
            if (action == 2) {
                KR2Activity.nativeTouchesMove(iArr, fArr, fArr2);
                return true;
            }
            if (action == 3) {
                KR2Activity.nativeTouchesCancel(iArr, fArr, fArr2);
                return true;
            }
            if (action == 5) {
                int action2 = motionEvent.getAction() >> 8;
                KR2Activity.nativeTouchesBegin(motionEvent.getPointerId(action2), motionEvent.getX(action2), motionEvent.getY(action2));
                return true;
            }
            if (action != 6) {
                return true;
            }
            int action3 = motionEvent.getAction() >> 8;
            KR2Activity.nativeTouchesEnd(motionEvent.getPointerId(action3), motionEvent.getX(action3), motionEvent.getY(action3));
            return true;
        }

        public KR2GLSurfaceView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public void handleMessage(Message message) {
    }
}
