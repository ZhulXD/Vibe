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
import org.godotengine.godot.input.GodotInputHandler;
import org.godotengine.godot.vulkan.VkRenderer;
import org.godotengine.godot.vulkan.VkSurfaceView;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
class GodotVulkanRenderView extends VkSurfaceView implements GodotRenderView {
    private final SparseArray<PointerIcon> customPointerIcons;
    private final Godot godot;
    private final GodotInputHandler mInputHandler;
    private final VkRenderer mRenderer;

    public GodotVulkanRenderView(Godot godot, GodotInputHandler godotInputHandler, boolean z2) {
        super(godot.getContext());
        this.customPointerIcons = new SparseArray<>();
        this.godot = godot;
        this.mInputHandler = godotInputHandler;
        this.mRenderer = new VkRenderer();
        setPointerIcon(PointerIcon.getSystemIcon(getContext(), 1000));
        setFocusableInTouchMode(true);
        setClickable(false);
        if (z2) {
            getHolder().setFormat(-3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onActivityPaused$0() {
        GodotLib.focusout();
        this.mRenderer.onVkPause();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onActivityResumed$1() {
        this.mRenderer.onVkResume();
        GodotLib.focusin();
    }

    @Override // org.godotengine.godot.GodotRenderView
    public boolean blockingExitRenderer(long j2) {
        return requestRenderThreadExitAndWait(j2);
    }

    @Override // org.godotengine.godot.GodotRenderView
    public boolean canCapturePointer() {
        return !this.godot.isXrRuntime() && this.mInputHandler.canCapturePointer();
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
        return this.mInputHandler;
    }

    @Override // org.godotengine.godot.GodotRenderView
    public void onActivityPaused() {
        queueOnVkThread(new m(this, 0));
    }

    @Override // org.godotengine.godot.GodotRenderView
    public void onActivityResumed() {
        queueOnVkThread(new m(this, 1));
    }

    @Override // org.godotengine.godot.GodotRenderView
    public void onActivityStarted() {
        resumeRenderThread();
    }

    @Override // org.godotengine.godot.GodotRenderView
    public void onActivityStopped() {
        pauseRenderThread();
    }

    @Override // android.view.View
    public boolean onCapturedPointerEvent(MotionEvent motionEvent) {
        return this.mInputHandler.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        return this.mInputHandler.onGenericMotionEvent(motionEvent) || super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i3, KeyEvent keyEvent) {
        return this.mInputHandler.onKeyDown(i3, keyEvent) || super.onKeyDown(i3, keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i3, KeyEvent keyEvent) {
        return this.mInputHandler.onKeyUp(i3, keyEvent) || super.onKeyUp(i3, keyEvent);
    }

    @Override // android.view.View
    public void onPointerCaptureChange(boolean z2) {
        super.onPointerCaptureChange(z2);
        this.mInputHandler.onPointerCaptureChange(z2);
    }

    @Override // android.view.View
    public PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i3) {
        return getPointerIcon();
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return this.mInputHandler.onTouchEvent(motionEvent);
    }

    @Override // org.godotengine.godot.GodotRenderView
    public void queueOnRenderThread(Runnable runnable) {
        queueOnVkThread(runnable);
    }

    @Override // android.view.View
    public void releasePointerCapture() {
        super.releasePointerCapture();
        this.mInputHandler.onPointerCaptureChange(false);
    }

    @Override // android.view.View
    public void requestPointerCapture() {
        if (canCapturePointer()) {
            super.requestPointerCapture();
            this.mInputHandler.onPointerCaptureChange(true);
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
        startRenderer(this.mRenderer);
    }

    @Override // org.godotengine.godot.GodotRenderView
    public SurfaceView getView() {
        return this;
    }
}
