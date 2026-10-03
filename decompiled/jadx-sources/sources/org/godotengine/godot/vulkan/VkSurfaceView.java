package org.godotengine.godot.vulkan;

import A1.C0033n;
import android.content.Context;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.godotengine.godot.service.GodotService;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0010\u0018\u0000 #2\u00020\u00012\u00020\u0002:\u0001#B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0013J\b\u0010\u0014\u001a\u00020\u0010H\u0004J\b\u0010\u0015\u001a\u00020\u0010H\u0004J\u0006\u0010\u0016\u001a\u00020\u0010J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019J(\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\u001eH\u0016J\u0010\u0010!\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0010\u0010\"\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u001cH\u0016R\u001b\u0010\u0007\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u000e\u0010\r\u001a\u00020\u000eX\u0082.¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lorg/godotengine/godot/vulkan/VkSurfaceView;", "Landroid/view/SurfaceView;", "Landroid/view/SurfaceHolder$Callback;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "vkThread", "Lorg/godotengine/godot/vulkan/VkThread;", "getVkThread", "()Lorg/godotengine/godot/vulkan/VkThread;", "vkThread$delegate", "Lkotlin/Lazy;", "renderer", "Lorg/godotengine/godot/vulkan/VkRenderer;", "startRenderer", "", "queueOnVkThread", "runnable", "Ljava/lang/Runnable;", "resumeRenderThread", "pauseRenderThread", "requestRenderThreadExitAndWait", "", "timeInMs", "", "surfaceChanged", "holder", "Landroid/view/SurfaceHolder;", "format", "", GodotService.KEY_WIDTH, GodotService.KEY_HEIGHT, "surfaceDestroyed", "surfaceCreated", "Companion", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class VkSurfaceView extends SurfaceView implements SurfaceHolder.Callback {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private VkRenderer renderer;

    /* JADX INFO: renamed from: vkThread$delegate, reason: from kotlin metadata */
    private final Lazy vkThread;

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0001¨\u0006\t"}, d2 = {"Lorg/godotengine/godot/vulkan/VkSurfaceView$Companion;", "", "<init>", "()V", "checkState", "", "expression", "", "errorMessage", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nVkSurfaceView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VkSurfaceView.kt\norg/godotengine/godot/vulkan/VkSurfaceView$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,143:1\n1#2:144\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void checkState(boolean expression, Object errorMessage) {
            Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
            if (!expression) {
                throw new IllegalStateException(errorMessage.toString().toString());
            }
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VkSurfaceView(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.vkThread = LazyKt.lazy(new C0033n(11, this));
        setClickable(true);
        getHolder().addCallback(this);
    }

    private final VkThread getVkThread() {
        return (VkThread) this.vkThread.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final VkThread vkThread_delegate$lambda$0(VkSurfaceView vkSurfaceView) {
        VkRenderer vkRenderer = vkSurfaceView.renderer;
        if (vkRenderer == null) {
            Intrinsics.throwUninitializedPropertyAccessException("renderer");
            vkRenderer = null;
        }
        return new VkThread(vkSurfaceView, vkRenderer);
    }

    public final void pauseRenderThread() {
        getVkThread().onPause();
    }

    public final void queueOnVkThread(Runnable runnable) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        getVkThread().queueEvent(runnable);
    }

    public final void requestRenderThreadExitAndWait() {
        getVkThread().requestExitAndWait();
    }

    public final void resumeRenderThread() {
        getVkThread().onResume();
    }

    public final void startRenderer(VkRenderer renderer) {
        Intrinsics.checkNotNullParameter(renderer, "renderer");
        INSTANCE.checkState(this.renderer == null, "startRenderer must only be invoked once");
        this.renderer = renderer;
        getVkThread().start();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder holder, int format, int width, int height) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        getVkThread().onSurfaceChanged(width, height);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        getVkThread().onSurfaceCreated();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        getVkThread().onSurfaceDestroyed();
    }

    public final boolean requestRenderThreadExitAndWait(long timeInMs) {
        return getVkThread().requestExitAndWait(timeInMs);
    }
}
