package org.cocos2dx.lib;

import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Looper;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import android.widget.TextView;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class Cocos2dxEditBoxHelper {
    private static final String TAG = "Cocos2dxEditBoxHelper";
    private static Cocos2dxActivity mCocos2dxActivity = null;
    private static SparseArray<Cocos2dxEditBox> mEditBoxArray = null;
    private static ResizeLayout mFrameLayout = null;
    private static float mPadding = 5.0f;
    private static int mViewTag;

    /* JADX INFO: renamed from: org.cocos2dx.lib.Cocos2dxEditBoxHelper$1, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public class AnonymousClass1 implements Runnable {
        final /* synthetic */ int val$height;
        final /* synthetic */ int val$index;
        final /* synthetic */ int val$left;
        final /* synthetic */ float val$scaleX;
        final /* synthetic */ int val$top;
        final /* synthetic */ int val$width;

        public AnonymousClass1(float f, int i3, int i4, int i5, int i6, int i7) {
            this.val$scaleX = f;
            this.val$left = i3;
            this.val$top = i4;
            this.val$width = i5;
            this.val$height = i6;
            this.val$index = i7;
        }

        @Override // java.lang.Runnable
        public void run() {
            final Cocos2dxEditBox cocos2dxEditBox = new Cocos2dxEditBox(Cocos2dxEditBoxHelper.mCocos2dxActivity);
            cocos2dxEditBox.setFocusable(true);
            cocos2dxEditBox.setFocusableInTouchMode(true);
            cocos2dxEditBox.setInputFlag(5);
            cocos2dxEditBox.setInputMode(6);
            cocos2dxEditBox.setReturnType(0);
            cocos2dxEditBox.setHintTextColor(-7829368);
            cocos2dxEditBox.setVisibility(8);
            cocos2dxEditBox.setBackgroundColor(0);
            cocos2dxEditBox.setTextColor(-1);
            cocos2dxEditBox.setSingleLine();
            cocos2dxEditBox.setOpenGLViewScaleX(this.val$scaleX);
            cocos2dxEditBox.setPadding(Cocos2dxEditBoxHelper.getPadding(this.val$scaleX), 0, 0, 0);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            layoutParams.leftMargin = this.val$left;
            layoutParams.topMargin = this.val$top;
            layoutParams.width = this.val$width;
            layoutParams.height = this.val$height;
            layoutParams.gravity = 51;
            Cocos2dxEditBoxHelper.mFrameLayout.addView(cocos2dxEditBox, layoutParams);
            cocos2dxEditBox.setTag(Boolean.FALSE);
            cocos2dxEditBox.addTextChangedListener(new TextWatcher() { // from class: org.cocos2dx.lib.Cocos2dxEditBoxHelper.1.1
                @Override // android.text.TextWatcher
                public void afterTextChanged(final Editable editable) {
                    if (!cocos2dxEditBox.getChangedTextProgrammatically().booleanValue() && ((Boolean) cocos2dxEditBox.getTag()).booleanValue()) {
                        Cocos2dxEditBoxHelper.mCocos2dxActivity.runOnGLThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxEditBoxHelper.1.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                Cocos2dxEditBoxHelper.__editBoxEditingChanged(AnonymousClass1.this.val$index, editable.toString());
                            }
                        });
                    }
                    cocos2dxEditBox.setChangedTextProgrammatically(Boolean.FALSE);
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
                }
            });
            cocos2dxEditBox.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: org.cocos2dx.lib.Cocos2dxEditBoxHelper.1.2
                @Override // android.view.View.OnFocusChangeListener
                public void onFocusChange(View view, boolean z2) {
                    cocos2dxEditBox.setTag(Boolean.TRUE);
                    cocos2dxEditBox.setChangedTextProgrammatically(Boolean.FALSE);
                    if (z2) {
                        Cocos2dxEditBoxHelper.mCocos2dxActivity.runOnGLThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxEditBoxHelper.1.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                cocos2dxEditBox.endAction = 0;
                                Cocos2dxEditBoxHelper.__editBoxEditingDidBegin(AnonymousClass1.this.val$index);
                            }
                        });
                        Cocos2dxEditBox cocos2dxEditBox2 = cocos2dxEditBox;
                        cocos2dxEditBox2.setSelection(cocos2dxEditBox2.getText().length());
                        Cocos2dxEditBoxHelper.mFrameLayout.setEnableForceDoLayout(true);
                        Cocos2dxEditBoxHelper.mCocos2dxActivity.getGLSurfaceView().setSoftKeyboardShown(true);
                        Log.d(Cocos2dxEditBoxHelper.TAG, "edit box get focus");
                        return;
                    }
                    cocos2dxEditBox.setVisibility(8);
                    final String str = new String(cocos2dxEditBox.getText().toString());
                    Cocos2dxEditBoxHelper.mCocos2dxActivity.runOnGLThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxEditBoxHelper.1.2.2
                        @Override // java.lang.Runnable
                        public void run() {
                            AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                            Cocos2dxEditBoxHelper.__editBoxEditingDidEnd(AnonymousClass1.this.val$index, str, cocos2dxEditBox.endAction);
                        }
                    });
                    Cocos2dxEditBoxHelper.mCocos2dxActivity.hideVirtualButton();
                    Cocos2dxEditBoxHelper.mFrameLayout.setEnableForceDoLayout(false);
                    Log.d(Cocos2dxEditBoxHelper.TAG, "edit box lose focus");
                }
            });
            cocos2dxEditBox.setOnKeyListener(new View.OnKeyListener() { // from class: org.cocos2dx.lib.Cocos2dxEditBoxHelper.1.3
                @Override // android.view.View.OnKeyListener
                public boolean onKey(View view, int i3, KeyEvent keyEvent) {
                    if (keyEvent.getAction() != 0 || i3 != 66 || (cocos2dxEditBox.getInputType() & 131072) == 131072) {
                        return false;
                    }
                    Cocos2dxEditBoxHelper.closeKeyboardOnUiThread(AnonymousClass1.this.val$index);
                    return true;
                }
            });
            cocos2dxEditBox.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.cocos2dx.lib.Cocos2dxEditBoxHelper.1.4
                @Override // android.widget.TextView.OnEditorActionListener
                public boolean onEditorAction(TextView textView, int i3, KeyEvent keyEvent) {
                    if (i3 == 5) {
                        cocos2dxEditBox.endAction = 1;
                        Cocos2dxEditBoxHelper.closeKeyboardOnUiThread(AnonymousClass1.this.val$index);
                        return true;
                    }
                    if (i3 != 6 && i3 != 4 && i3 != 3 && i3 != 2) {
                        return false;
                    }
                    cocos2dxEditBox.endAction = 3;
                    Cocos2dxEditBoxHelper.closeKeyboardOnUiThread(AnonymousClass1.this.val$index);
                    return false;
                }
            });
            Cocos2dxEditBoxHelper.mEditBoxArray.put(this.val$index, cocos2dxEditBox);
        }
    }

    public Cocos2dxEditBoxHelper(ResizeLayout resizeLayout) {
        mFrameLayout = resizeLayout;
        mCocos2dxActivity = (Cocos2dxActivity) Cocos2dxActivity.getContext();
        mEditBoxArray = new SparseArray<>();
    }

    public static void __editBoxEditingChanged(int i3, String str) {
        editBoxEditingChanged(i3, str);
    }

    public static void __editBoxEditingDidBegin(int i3) {
        editBoxEditingDidBegin(i3);
    }

    public static void __editBoxEditingDidEnd(int i3, String str, int i4) {
        editBoxEditingDidEnd(i3, str, i4);
    }

    public static void closeKeyboard(final int i3) {
        mCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxEditBoxHelper.16
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxEditBoxHelper.closeKeyboardOnUiThread(i3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void closeKeyboardOnUiThread(int i3) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            Log.e(TAG, "closeKeyboardOnUiThread doesn't run on UI thread!");
            return;
        }
        InputMethodManager inputMethodManager = (InputMethodManager) Cocos2dxActivity.getContext().getSystemService("input_method");
        Cocos2dxEditBox cocos2dxEditBox = mEditBoxArray.get(i3);
        if (cocos2dxEditBox != null) {
            inputMethodManager.hideSoftInputFromWindow(cocos2dxEditBox.getWindowToken(), 0);
            mCocos2dxActivity.getGLSurfaceView().setSoftKeyboardShown(false);
            mCocos2dxActivity.getGLSurfaceView().requestFocus();
            mCocos2dxActivity.hideVirtualButton();
        }
    }

    public static int createEditBox(int i3, int i4, int i5, int i6, float f) {
        mCocos2dxActivity.runOnUiThread(new AnonymousClass1(f, i3, i4, i5, i6, mViewTag));
        int i7 = mViewTag;
        mViewTag = i7 + 1;
        return i7;
    }

    private static native void editBoxEditingChanged(int i3, String str);

    private static native void editBoxEditingDidBegin(int i3);

    private static native void editBoxEditingDidEnd(int i3, String str, int i4);

    public static int getPadding(float f) {
        return (int) (mPadding * f);
    }

    public static void openKeyboard(final int i3) {
        mCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxEditBoxHelper.15
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxEditBoxHelper.openKeyboardOnUiThread(i3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void openKeyboardOnUiThread(int i3) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            Log.e(TAG, "openKeyboardOnUiThread doesn't run on UI thread!");
            return;
        }
        InputMethodManager inputMethodManager = (InputMethodManager) Cocos2dxActivity.getContext().getSystemService("input_method");
        Cocos2dxEditBox cocos2dxEditBox = mEditBoxArray.get(i3);
        if (cocos2dxEditBox != null) {
            cocos2dxEditBox.requestFocus();
            mCocos2dxActivity.getGLSurfaceView().requestLayout();
            inputMethodManager.showSoftInput(cocos2dxEditBox, 0);
            mCocos2dxActivity.getGLSurfaceView().setSoftKeyboardShown(true);
        }
    }

    public static void removeEditBox(final int i3) {
        mCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxEditBoxHelper.2
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxEditBox cocos2dxEditBox = (Cocos2dxEditBox) Cocos2dxEditBoxHelper.mEditBoxArray.get(i3);
                if (cocos2dxEditBox != null) {
                    Cocos2dxEditBoxHelper.mEditBoxArray.remove(i3);
                    Cocos2dxEditBoxHelper.mFrameLayout.removeView(cocos2dxEditBox);
                    Log.e(Cocos2dxEditBoxHelper.TAG, "remove EditBox");
                }
            }
        });
    }

    public static void setEditBoxViewRect(final int i3, final int i4, final int i5, final int i6, final int i7) {
        mCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxEditBoxHelper.14
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxEditBox cocos2dxEditBox = (Cocos2dxEditBox) Cocos2dxEditBoxHelper.mEditBoxArray.get(i3);
                if (cocos2dxEditBox != null) {
                    cocos2dxEditBox.setEditBoxViewRect(i4, i5, i6, i7);
                }
            }
        });
    }

    public static void setFont(final int i3, final String str, final float f) {
        mCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxEditBoxHelper.3
            @Override // java.lang.Runnable
            public void run() {
                Typeface typefaceCreate;
                Cocos2dxEditBox cocos2dxEditBox = (Cocos2dxEditBox) Cocos2dxEditBoxHelper.mEditBoxArray.get(i3);
                if (cocos2dxEditBox != null) {
                    if (str.isEmpty()) {
                        typefaceCreate = Typeface.DEFAULT;
                    } else if (str.endsWith(".ttf")) {
                        try {
                            typefaceCreate = Cocos2dxTypefaces.get(Cocos2dxActivity.getContext(), str);
                        } catch (Exception unused) {
                            Log.e("Cocos2dxEditBoxHelper", "error to create ttf type face: " + str);
                            typefaceCreate = Typeface.create(str, 0);
                        }
                    } else {
                        typefaceCreate = Typeface.create(str, 0);
                    }
                    float f3 = f;
                    if (f3 >= 0.0f) {
                        cocos2dxEditBox.setTextSize(0, f3);
                    }
                    cocos2dxEditBox.setTypeface(typefaceCreate);
                }
            }
        });
    }

    public static void setFontColor(final int i3, final int i4, final int i5, final int i6, final int i7) {
        mCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxEditBoxHelper.4
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxEditBox cocos2dxEditBox = (Cocos2dxEditBox) Cocos2dxEditBoxHelper.mEditBoxArray.get(i3);
                if (cocos2dxEditBox != null) {
                    cocos2dxEditBox.setTextColor(Color.argb(i7, i4, i5, i6));
                }
            }
        });
    }

    public static void setInputFlag(final int i3, final int i4) {
        mCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxEditBoxHelper.13
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxEditBox cocos2dxEditBox = (Cocos2dxEditBox) Cocos2dxEditBoxHelper.mEditBoxArray.get(i3);
                if (cocos2dxEditBox != null) {
                    cocos2dxEditBox.setInputFlag(i4);
                }
            }
        });
    }

    public static void setInputMode(final int i3, final int i4) {
        mCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxEditBoxHelper.12
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxEditBox cocos2dxEditBox = (Cocos2dxEditBox) Cocos2dxEditBoxHelper.mEditBoxArray.get(i3);
                if (cocos2dxEditBox != null) {
                    cocos2dxEditBox.setInputMode(i4);
                }
            }
        });
    }

    public static void setMaxLength(final int i3, final int i4) {
        mCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxEditBoxHelper.7
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxEditBox cocos2dxEditBox = (Cocos2dxEditBox) Cocos2dxEditBoxHelper.mEditBoxArray.get(i3);
                if (cocos2dxEditBox != null) {
                    cocos2dxEditBox.setMaxLength(i4);
                }
            }
        });
    }

    public static void setPlaceHolderText(final int i3, final String str) {
        mCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxEditBoxHelper.5
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxEditBox cocos2dxEditBox = (Cocos2dxEditBox) Cocos2dxEditBoxHelper.mEditBoxArray.get(i3);
                if (cocos2dxEditBox != null) {
                    cocos2dxEditBox.setHint(str);
                }
            }
        });
    }

    public static void setPlaceHolderTextColor(final int i3, final int i4, final int i5, final int i6, final int i7) {
        mCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxEditBoxHelper.6
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxEditBox cocos2dxEditBox = (Cocos2dxEditBox) Cocos2dxEditBoxHelper.mEditBoxArray.get(i3);
                if (cocos2dxEditBox != null) {
                    cocos2dxEditBox.setHintTextColor(Color.argb(i7, i4, i5, i6));
                }
            }
        });
    }

    public static void setReturnType(final int i3, final int i4) {
        mCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxEditBoxHelper.10
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxEditBox cocos2dxEditBox = (Cocos2dxEditBox) Cocos2dxEditBoxHelper.mEditBoxArray.get(i3);
                if (cocos2dxEditBox != null) {
                    cocos2dxEditBox.setReturnType(i4);
                }
            }
        });
    }

    public static void setText(final int i3, final String str) {
        mCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxEditBoxHelper.9
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxEditBox cocos2dxEditBox = (Cocos2dxEditBox) Cocos2dxEditBoxHelper.mEditBoxArray.get(i3);
                if (cocos2dxEditBox != null) {
                    cocos2dxEditBox.setChangedTextProgrammatically(Boolean.TRUE);
                    cocos2dxEditBox.setText(str);
                    cocos2dxEditBox.setSelection(cocos2dxEditBox.getText().length());
                }
            }
        });
    }

    public static void setTextHorizontalAlignment(final int i3, final int i4) {
        mCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxEditBoxHelper.11
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxEditBox cocos2dxEditBox = (Cocos2dxEditBox) Cocos2dxEditBoxHelper.mEditBoxArray.get(i3);
                if (cocos2dxEditBox != null) {
                    cocos2dxEditBox.setTextHorizontalAlignment(i4);
                }
            }
        });
    }

    public static void setVisible(final int i3, final boolean z2) {
        mCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxEditBoxHelper.8
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxEditBox cocos2dxEditBox = (Cocos2dxEditBox) Cocos2dxEditBoxHelper.mEditBoxArray.get(i3);
                if (cocos2dxEditBox != null) {
                    cocos2dxEditBox.setVisibility(z2 ? 0 : 8);
                }
            }
        });
    }
}
