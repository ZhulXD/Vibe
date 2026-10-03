package org.cocos2dx.lib;

import android.app.Activity;
import android.content.Context;
import android.opengl.GLSurfaceView;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.inputmethod.InputMethodManager;
import androidx.core.view.MotionEventCompat;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class Cocos2dxGLSurfaceView extends GLSurfaceView {
    private static final int HANDLER_CLOSE_IME_KEYBOARD = 3;
    private static final int HANDLER_OPEN_IME_KEYBOARD = 2;
    private static final String TAG = "Cocos2dxGLSurfaceView";
    private static Cocos2dxGLSurfaceView mCocos2dxGLSurfaceView;
    private static Cocos2dxTextInputWrapper sCocos2dxTextInputWraper;
    private static Handler sHandler;
    private Cocos2dxEditBox mCocos2dxEditText;
    private Cocos2dxRenderer mCocos2dxRenderer;
    private boolean mMultipleTouchEnabled;
    private boolean mSoftKeyboardShown;

    public Cocos2dxGLSurfaceView(Context context) {
        super(context);
        this.mSoftKeyboardShown = false;
        this.mMultipleTouchEnabled = true;
        initView();
    }

    public static void closeIMEKeyboard() {
        Message message = new Message();
        message.what = 3;
        sHandler.sendMessage(message);
    }

    private static void dumpMotionEvent(MotionEvent motionEvent) {
        StringBuilder sb = new StringBuilder("event ACTION_");
        int action = motionEvent.getAction();
        int i3 = action & 255;
        sb.append(new String[]{"DOWN", "UP", "MOVE", "CANCEL", "OUTSIDE", "POINTER_DOWN", "POINTER_UP", "7?", "8?", "9?"}[i3]);
        if (i3 == 5 || i3 == 6) {
            sb.append("(pid ");
            sb.append(action >> 8);
            sb.append(")");
        }
        sb.append("[");
        int i4 = 0;
        while (i4 < motionEvent.getPointerCount()) {
            sb.append("#");
            sb.append(i4);
            sb.append("(pid ");
            sb.append(motionEvent.getPointerId(i4));
            sb.append(")=");
            sb.append((int) motionEvent.getX(i4));
            sb.append(",");
            sb.append((int) motionEvent.getY(i4));
            i4++;
            if (i4 < motionEvent.getPointerCount()) {
                sb.append(";");
            }
        }
        sb.append("]");
        Log.d(TAG, sb.toString());
    }

    private String getContentText() {
        return this.mCocos2dxRenderer.getContentText();
    }

    public static Cocos2dxGLSurfaceView getInstance() {
        return mCocos2dxGLSurfaceView;
    }

    public static void openIMEKeyboard() {
        Message message = new Message();
        message.what = 2;
        message.obj = mCocos2dxGLSurfaceView.getContentText();
        sHandler.sendMessage(message);
    }

    public static void queueAccelerometer(final float f, final float f3, final float f4, final long j2) {
        mCocos2dxGLSurfaceView.queueEvent(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.2
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxAccelerometer.onSensorChanged(f, f3, f4, j2);
            }
        });
    }

    public void deleteBackward() {
        queueEvent(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.16
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleDeleteBackward();
            }
        });
    }

    public Cocos2dxEditBox getCocos2dxEditText() {
        return this.mCocos2dxEditText;
    }

    public void initView() {
        setEGLContextClientVersion(2);
        setFocusableInTouchMode(true);
        mCocos2dxGLSurfaceView = this;
        sCocos2dxTextInputWraper = new Cocos2dxTextInputWrapper(this);
        sHandler = new Handler() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i3 = message.what;
                if (i3 != 2) {
                    if (i3 == 3 && Cocos2dxGLSurfaceView.this.mCocos2dxEditText != null) {
                        Cocos2dxGLSurfaceView.this.mCocos2dxEditText.removeTextChangedListener(Cocos2dxGLSurfaceView.sCocos2dxTextInputWraper);
                        ((InputMethodManager) Cocos2dxGLSurfaceView.mCocos2dxGLSurfaceView.getContext().getSystemService("input_method")).hideSoftInputFromWindow(Cocos2dxGLSurfaceView.this.mCocos2dxEditText.getWindowToken(), 0);
                        Cocos2dxGLSurfaceView.this.requestFocus();
                        ((Cocos2dxActivity) Cocos2dxGLSurfaceView.mCocos2dxGLSurfaceView.getContext()).hideVirtualButton();
                        Log.d("GLSurfaceView", "HideSoftInput");
                        return;
                    }
                    return;
                }
                if (Cocos2dxGLSurfaceView.this.mCocos2dxEditText == null || !Cocos2dxGLSurfaceView.this.mCocos2dxEditText.requestFocus()) {
                    return;
                }
                Cocos2dxGLSurfaceView.this.mCocos2dxEditText.removeTextChangedListener(Cocos2dxGLSurfaceView.sCocos2dxTextInputWraper);
                Cocos2dxGLSurfaceView.this.mCocos2dxEditText.setText("");
                String str = (String) message.obj;
                Cocos2dxGLSurfaceView.this.mCocos2dxEditText.append(str);
                Cocos2dxGLSurfaceView.sCocos2dxTextInputWraper.setOriginText(str);
                Cocos2dxGLSurfaceView.this.mCocos2dxEditText.addTextChangedListener(Cocos2dxGLSurfaceView.sCocos2dxTextInputWraper);
                ((InputMethodManager) Cocos2dxGLSurfaceView.mCocos2dxGLSurfaceView.getContext().getSystemService("input_method")).showSoftInput(Cocos2dxGLSurfaceView.this.mCocos2dxEditText, 0);
                Log.d("GLSurfaceView", "showSoftInput");
            }
        };
    }

    public void insertText(final String str) {
        queueEvent(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.15
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleInsertText(str);
            }
        });
    }

    public boolean isMultipleTouchEnabled() {
        return this.mMultipleTouchEnabled;
    }

    public boolean isSoftKeyboardShown() {
        return this.mSoftKeyboardShown;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(final int i3, KeyEvent keyEvent) {
        if (i3 == 4) {
            Cocos2dxVideoHelper.mVideoHandler.sendEmptyMessage(1000);
        } else if (i3 != 66 && i3 != 82 && i3 != 85) {
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
        queueEvent(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.13
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleKeyDown(i3);
            }
        });
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(final int i3, KeyEvent keyEvent) {
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
        queueEvent(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.14
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleKeyUp(i3);
            }
        });
        return true;
    }

    @Override // android.opengl.GLSurfaceView
    public void onPause() {
        queueEvent(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.4
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleOnPause();
            }
        });
        setRenderMode(0);
        super.onPause();
    }

    @Override // android.opengl.GLSurfaceView
    public void onResume() {
        super.onResume();
        setRenderMode(1);
        queueEvent(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.3
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleOnResume();
            }
        });
    }

    @Override // android.view.View
    public void onSizeChanged(int i3, int i4, int i5, int i6) {
        if (isInEditMode()) {
            return;
        }
        this.mCocos2dxRenderer.setScreenWidthAndHeight(i3, i4);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        final int[] iArr = new int[pointerCount];
        final float[] fArr = new float[pointerCount];
        final float[] fArr2 = new float[pointerCount];
        if (this.mSoftKeyboardShown) {
            ((InputMethodManager) getContext().getSystemService("input_method")).hideSoftInputFromWindow(((Activity) getContext()).getCurrentFocus().getWindowToken(), 0);
            requestFocus();
            this.mSoftKeyboardShown = false;
        }
        for (int i3 = 0; i3 < pointerCount; i3++) {
            iArr[i3] = motionEvent.getPointerId(i3);
            fArr[i3] = motionEvent.getX(i3);
            fArr2[i3] = motionEvent.getY(i3);
        }
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            final int pointerId = motionEvent.getPointerId(0);
            final float f = fArr[0];
            final float f3 = fArr2[0];
            queueEvent(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.6
                @Override // java.lang.Runnable
                public void run() {
                    Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleActionDown(pointerId, f, f3);
                }
            });
        } else if (action == 1) {
            final int pointerId2 = motionEvent.getPointerId(0);
            final float f4 = fArr[0];
            final float f5 = fArr2[0];
            queueEvent(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.10
                @Override // java.lang.Runnable
                public void run() {
                    Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleActionUp(pointerId2, f4, f5);
                }
            });
        } else if (action != 2) {
            if (action != 3) {
                if (action == 5) {
                    int action2 = motionEvent.getAction() >> 8;
                    if (this.mMultipleTouchEnabled || action2 == 0) {
                        final int pointerId3 = motionEvent.getPointerId(action2);
                        final float x2 = motionEvent.getX(action2);
                        final float y2 = motionEvent.getY(action2);
                        queueEvent(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.5
                            @Override // java.lang.Runnable
                            public void run() {
                                Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleActionDown(pointerId3, x2, y2);
                            }
                        });
                    }
                } else if (action == 6) {
                    int action3 = motionEvent.getAction() >> 8;
                    if (this.mMultipleTouchEnabled || action3 == 0) {
                        final int pointerId4 = motionEvent.getPointerId(action3);
                        final float x3 = motionEvent.getX(action3);
                        final float y3 = motionEvent.getY(action3);
                        queueEvent(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.9
                            @Override // java.lang.Runnable
                            public void run() {
                                Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleActionUp(pointerId4, x3, y3);
                            }
                        });
                    }
                }
            } else if (this.mMultipleTouchEnabled) {
                queueEvent(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.12
                    @Override // java.lang.Runnable
                    public void run() {
                        Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleActionCancel(iArr, fArr, fArr2);
                    }
                });
            } else {
                for (int i4 = 0; i4 < pointerCount; i4++) {
                    if (iArr[i4] == 0) {
                        final int[] iArr2 = {0};
                        final float[] fArr3 = {fArr[i4]};
                        final float[] fArr4 = {fArr2[i4]};
                        queueEvent(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.11
                            @Override // java.lang.Runnable
                            public void run() {
                                Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleActionCancel(iArr2, fArr3, fArr4);
                            }
                        });
                        break;
                    }
                }
            }
        } else if (this.mMultipleTouchEnabled) {
            queueEvent(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.8
                @Override // java.lang.Runnable
                public void run() {
                    Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleActionMove(iArr, fArr, fArr2);
                }
            });
        } else {
            for (int i5 = 0; i5 < pointerCount; i5++) {
                if (iArr[i5] == 0) {
                    final int[] iArr3 = {0};
                    final float[] fArr5 = {fArr[i5]};
                    final float[] fArr6 = {fArr2[i5]};
                    queueEvent(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.7
                        @Override // java.lang.Runnable
                        public void run() {
                            Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleActionMove(iArr3, fArr5, fArr6);
                        }
                    });
                    break;
                }
            }
        }
        return true;
    }

    public void setCocos2dxEditText(Cocos2dxEditBox cocos2dxEditBox) {
        Cocos2dxTextInputWrapper cocos2dxTextInputWrapper;
        this.mCocos2dxEditText = cocos2dxEditBox;
        if (cocos2dxEditBox == null || (cocos2dxTextInputWrapper = sCocos2dxTextInputWraper) == null) {
            return;
        }
        cocos2dxEditBox.setOnEditorActionListener(cocos2dxTextInputWrapper);
        requestFocus();
    }

    public void setCocos2dxRenderer(Cocos2dxRenderer cocos2dxRenderer) {
        this.mCocos2dxRenderer = cocos2dxRenderer;
        setRenderer(cocos2dxRenderer);
    }

    public void setMultipleTouchEnabled(boolean z2) {
        this.mMultipleTouchEnabled = z2;
    }

    public void setSoftKeyboardShown(boolean z2) {
        this.mSoftKeyboardShown = z2;
    }

    public Cocos2dxGLSurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mSoftKeyboardShown = false;
        this.mMultipleTouchEnabled = true;
        initView();
    }
}
