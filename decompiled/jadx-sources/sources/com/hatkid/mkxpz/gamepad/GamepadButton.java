package com.hatkid.mkxpz.gamepad;

import S.u;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class GamepadButton extends ImageView {
    private static final long EVENT_THROTTLE_MS = 16;
    private long lastEventTime;
    private Drawable mBackgroundDrawable;
    private Drawable mForegroundDrawable;
    private int mKey;
    private OnKeyDownListener mOnKeyDownListener;
    private OnKeyUpListener mOnKeyUpListener;
    private final Paint mPaint;
    private String mText;
    private final int mTextColor;
    private int mTextSize;

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public interface OnKeyDownListener {
        void onKeyDown(int i3);
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public interface OnKeyUpListener {
        void onKeyUp(int i3);
    }

    public GamepadButton(Context context) {
        super(context);
        this.mTextSize = 36;
        this.mTextColor = Color.rgb(255, 255, 255);
        this.mPaint = new Paint(1);
        this.mKey = 0;
        this.lastEventTime = 0L;
        this.mOnKeyDownListener = new u(7);
        this.mOnKeyUpListener = new u(8);
    }

    private int getTextSizeScaled() {
        if (this.mText == null) {
            return this.mTextSize;
        }
        this.mPaint.setTextSize(this.mTextSize);
        Paint paint = this.mPaint;
        String str = this.mText;
        int iRound = (int) Math.round(((double) paint.measureText(str, 0, str.length())) + 0.5d);
        int fontMetricsInt = this.mPaint.getFontMetricsInt(null);
        while (true) {
            if (fontMetricsInt <= ((double) getHeight()) * 0.85d && iRound <= ((double) getWidth()) * 0.85d) {
                return this.mTextSize;
            }
            int i3 = this.mTextSize - 2;
            this.mTextSize = i3;
            this.mPaint.setTextSize(i3);
            Paint paint2 = this.mPaint;
            String str2 = this.mText;
            iRound = (int) Math.round(((double) paint2.measureText(str2, 0, str2.length())) + 0.5d);
            fontMetricsInt = this.mPaint.getFontMetricsInt(null);
        }
    }

    private void initPaint() {
        this.mPaint.setColor(this.mTextColor);
        this.mPaint.setTypeface(Typeface.create("sans-serif", 1));
        this.mPaint.setTextAlign(Paint.Align.CENTER);
        this.mPaint.setTextSize(getTextSizeScaled());
    }

    public void initBitmap() {
        if (getWidth() < 1 || getHeight() < 1) {
            return;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Drawable drawable = this.mBackgroundDrawable;
        if (drawable != null) {
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            this.mBackgroundDrawable.draw(canvas);
        }
        int iRound = (int) Math.round(((double) canvas.getWidth()) * 0.9d);
        int iRound2 = (int) Math.round(((double) canvas.getHeight()) * 0.9d);
        int width = (canvas.getWidth() - iRound) / 2;
        int height = (canvas.getHeight() - iRound2) / 2;
        Drawable drawable2 = this.mForegroundDrawable;
        if (drawable2 != null) {
            drawable2.setBounds(width, height, iRound + width, iRound2 + height);
            this.mForegroundDrawable.draw(canvas);
        }
        if (this.mText != null) {
            initPaint();
            int width2 = canvas.getWidth() / 2;
            int height2 = canvas.getHeight() / 2;
            String str = this.mText;
            canvas.drawText(str, 0, str.length(), width2, height2 - (this.mPaint.ascent() / 2.0f), this.mPaint);
        }
        setImageBitmap(bitmapCreateBitmap);
    }

    @Override // android.view.View
    public void onLayout(boolean z2, int i3, int i4, int i5, int i6) {
        super.onLayout(z2, i3, i4, i5, i6);
        initBitmap();
    }

    @Override // android.view.View
    public void onSizeChanged(int i3, int i4, int i5, int i6) {
        super.onSizeChanged(i3, i4, i5, i6);
        initBitmap();
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0033 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:19:0x0035  */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0021, code lost:
    
        if (r7 != 6) goto L20;
     */
    @Override // android.view.View
    @android.annotation.SuppressLint({"ClickableViewAccessibility"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            long r0 = java.lang.System.currentTimeMillis()
            long r2 = r6.lastEventTime
            long r2 = r0 - r2
            r4 = 16
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            r3 = 1
            if (r2 >= 0) goto L11
            r2 = r3
            goto L12
        L11:
            r2 = 0
        L12:
            int r7 = r7.getAction()
            if (r7 == 0) goto L33
            if (r7 == r3) goto L24
            r4 = 3
            if (r7 == r4) goto L24
            r4 = 5
            if (r7 == r4) goto L33
            r2 = 6
            if (r7 == r2) goto L24
            goto L43
        L24:
            r7 = 1065353216(0x3f800000, float:1.0)
            r6.setAlpha(r7)
            com.hatkid.mkxpz.gamepad.GamepadButton$OnKeyUpListener r7 = r6.mOnKeyUpListener
            int r2 = r6.mKey
            r7.onKeyUp(r2)
            r6.lastEventTime = r0
            return r3
        L33:
            if (r2 != 0) goto L43
            r7 = 1056964608(0x3f000000, float:0.5)
            r6.setAlpha(r7)
            com.hatkid.mkxpz.gamepad.GamepadButton$OnKeyDownListener r7 = r6.mOnKeyDownListener
            int r2 = r6.mKey
            r7.onKeyDown(r2)
            r6.lastEventTime = r0
        L43:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hatkid.mkxpz.gamepad.GamepadButton.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        this.mBackgroundDrawable = drawable;
        initBitmap();
    }

    @Override // android.view.View
    public void setBackgroundResource(int i3) {
        setBackground(getContext().getResources().getDrawable(i3, getContext().getTheme()));
    }

    @Override // android.view.View
    public void setForeground(Drawable drawable) {
        this.mForegroundDrawable = drawable;
        this.mText = null;
        initBitmap();
    }

    public void setForegroundResource(int i3) {
        setForeground(getContext().getResources().getDrawable(i3, getContext().getTheme()));
    }

    public void setForegroundText(String str) {
        this.mForegroundDrawable = null;
        this.mText = str;
        initBitmap();
    }

    public void setKey(int i3) {
        this.mKey = i3;
        initBitmap();
    }

    public void setOnKeyDownListener(OnKeyDownListener onKeyDownListener) {
        this.mOnKeyDownListener = onKeyDownListener;
    }

    public void setOnKeyUpListener(OnKeyUpListener onKeyUpListener) {
        this.mOnKeyUpListener = onKeyUpListener;
    }

    public GamepadButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTextSize = 36;
        this.mTextColor = Color.rgb(255, 255, 255);
        this.mPaint = new Paint(1);
        this.mKey = 0;
        this.lastEventTime = 0L;
        this.mOnKeyDownListener = new u(7);
        this.mOnKeyUpListener = new u(8);
    }

    public GamepadButton(Context context, AttributeSet attributeSet, int i3) {
        super(context, attributeSet, i3);
        this.mTextSize = 36;
        this.mTextColor = Color.rgb(255, 255, 255);
        this.mPaint = new Paint(1);
        this.mKey = 0;
        this.lastEventTime = 0L;
        this.mOnKeyDownListener = new u(7);
        this.mOnKeyUpListener = new u(8);
    }

    public GamepadButton(Context context, AttributeSet attributeSet, int i3, int i4) {
        super(context, attributeSet, i3, i4);
        this.mTextSize = 36;
        this.mTextColor = Color.rgb(255, 255, 255);
        this.mPaint = new Paint(1);
        this.mKey = 0;
        this.lastEventTime = 0L;
        this.mOnKeyDownListener = new u(7);
        this.mOnKeyUpListener = new u(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$0(int i3) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$1(int i3) {
    }
}
