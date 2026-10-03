package org.godotengine.godot;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.SurfaceView;
import org.godotengine.godot.gl.GLSurfaceView;
import org.godotengine.godot.gl.GodotRenderer;
import org.godotengine.godot.input.GodotInputHandler;
import org.godotengine.godot.xr.XRMode;
import org.godotengine.godot.xr.ovr.OvrConfigChooser;
import org.godotengine.godot.xr.ovr.OvrContextFactory;
import org.godotengine.godot.xr.ovr.OvrWindowSurfaceFactory;
import org.godotengine.godot.xr.regular.RegularConfigChooser;
import org.godotengine.godot.xr.regular.RegularContextFactory;
import org.godotengine.godot.xr.regular.RegularFallbackConfigChooser;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
class GodotGLRenderView extends GLSurfaceView implements GodotRenderView {
    private final SparseArray<PointerIcon> customPointerIcons;
    private final Godot godot;
    private final GodotRenderer godotRenderer;
    private final GodotInputHandler inputHandler;

    /* JADX INFO: renamed from: org.godotengine.godot.GodotGLRenderView$1, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$godotengine$godot$xr$XRMode;

        static {
            int[] iArr = new int[XRMode.values().length];
            $SwitchMap$org$godotengine$godot$xr$XRMode = iArr;
            try {
                iArr[XRMode.OPENXR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$godotengine$godot$xr$XRMode[XRMode.REGULAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public GodotGLRenderView(Godot godot, GodotInputHandler godotInputHandler, XRMode xRMode, boolean z2, boolean z3) {
        super(godot.getContext());
        this.customPointerIcons = new SparseArray<>();
        this.godot = godot;
        this.inputHandler = godotInputHandler;
        this.godotRenderer = new GodotRenderer();
        setPointerIcon(PointerIcon.getSystemIcon(getContext(), 1000));
        init(xRMode, z3, z2);
    }

    private void init(XRMode xRMode, boolean z2, boolean z3) {
        setPreserveEGLContextOnPause(true);
        setFocusableInTouchMode(true);
        if (AnonymousClass1.$SwitchMap$org$godotengine$godot$xr$XRMode[xRMode.ordinal()] == 1) {
            setEGLConfigChooser(new OvrConfigChooser());
            setEGLContextFactory(new OvrContextFactory());
            setEGLWindowSurfaceFactory(new OvrWindowSurfaceFactory());
        } else {
            if (z2) {
                getHolder().setFormat(-3);
            }
            setEGLContextFactory(new RegularContextFactory(z3));
            setEGLConfigChooser(new RegularFallbackConfigChooser(8, 8, 8, 8, 24, 0, new RegularConfigChooser(8, 8, 8, 8, 16, 0)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onActivityPaused$0() {
        GodotLib.focusout();
        this.godotRenderer.onActivityPaused();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onActivityResumed$1() {
        this.godotRenderer.onActivityResumed();
        GodotLib.focusin();
    }

    @Override // org.godotengine.godot.GodotRenderView
    public boolean blockingExitRenderer(long j2) {
        return requestRenderThreadExitAndWait(j2);
    }

    @Override // org.godotengine.godot.GodotRenderView
    public boolean canCapturePointer() {
        return !this.godot.isXrRuntime() && this.inputHandler.canCapturePointer();
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0034  */
    @Override // org.godotengine.godot.GodotRenderView
    @p005c.a
    public void configurePointerIcon(int i3, String str, float f, float f3) {
        Bitmap bitmapDecodeStream;
        try {
            if (TextUtils.isEmpty(str)) {
                bitmapDecodeStream = null;
            } else if (this.godot.getDirectoryAccessHandler().filesystemFileExists(str)) {
                bitmapDecodeStream = BitmapFactory.decodeFile(str);
            } else if (this.godot.getDirectoryAccessHandler().assetsFileExists(str)) {
                bitmapDecodeStream = BitmapFactory.decodeStream(getContext().getAssets().open(str));
            } else {
                bitmapDecodeStream = null;
            }
            this.customPointerIcons.put(i3, PointerIcon.create(bitmapDecodeStream, f, f3));
        } catch (Exception unused) {
            this.customPointerIcons.delete(i3);
        }
    }

    @Override // org.godotengine.godot.GodotRenderView
    public GodotInputHandler getInputHandler() {
        return this.inputHandler;
    }

    @Override // org.godotengine.godot.GodotRenderView
    public void onActivityPaused() {
        queueEvent(new l(this, 0));
    }

    @Override // org.godotengine.godot.GodotRenderView
    public void onActivityResumed() {
        queueEvent(new l(this, 1));
    }

    @Override // org.godotengine.godot.GodotRenderView
    public void onActivityStarted() {
        resumeGLThread();
    }

    @Override // org.godotengine.godot.GodotRenderView
    public void onActivityStopped() {
        pauseGLThread();
    }

    @Override // android.view.View
    public boolean onCapturedPointerEvent(MotionEvent motionEvent) {
        return this.inputHandler.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        return this.inputHandler.onGenericMotionEvent(motionEvent) || super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i3, KeyEvent keyEvent) {
        return this.inputHandler.onKeyDown(i3, keyEvent) || super.onKeyDown(i3, keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i3, KeyEvent keyEvent) {
        return this.inputHandler.onKeyUp(i3, keyEvent) || super.onKeyUp(i3, keyEvent);
    }

    @Override // android.view.View
    public void onPointerCaptureChange(boolean z2) {
        super.onPointerCaptureChange(z2);
        this.inputHandler.onPointerCaptureChange(z2);
    }

    @Override // android.view.View
    public PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i3) {
        return getPointerIcon();
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return this.inputHandler.onTouchEvent(motionEvent);
    }

    @Override // org.godotengine.godot.GodotRenderView
    public void queueOnRenderThread(Runnable runnable) {
        queueEvent(runnable);
    }

    @Override // android.view.View
    public void releasePointerCapture() {
        super.releasePointerCapture();
        this.inputHandler.onPointerCaptureChange(false);
    }

    @Override // android.view.View
    public void requestPointerCapture() {
        if (canCapturePointer()) {
            super.requestPointerCapture();
            this.inputHandler.onPointerCaptureChange(true);
        }
    }

    @Override // org.godotengine.godot.GodotRenderView
    @p005c.a
    public void setPointerIcon(int i3) {
        PointerIcon systemIcon = this.customPointerIcons.get(i3);
        if (systemIcon == null) {
            systemIcon = PointerIcon.getSystemIcon(getContext(), i3);
        }
        setPointerIcon(systemIcon);
    }

    @Override // org.godotengine.godot.GodotRenderView
    public void startRenderer() {
        setRenderer(this.godotRenderer);
    }

    @Override // org.godotengine.godot.GodotRenderView
    public SurfaceView getView() {
        return this;
    }
}
