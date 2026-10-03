package org.godotengine.godot.input;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import androidx.core.app.NotificationCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000 32\u00020\u00012\u00020\u0002:\u00013B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\u001b\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010!\u001a\u00020 2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u000e\u0010\"\u001a\u00020 2\u0006\u0010#\u001a\u00020\bJ\u000e\u0010$\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u001dJ\u0010\u0010%\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0010\u0010&\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0010\u0010'\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010(\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J*\u0010)\u001a\u00020\b2\b\u0010*\u001a\u0004\u0018\u00010\u001d2\u0006\u0010+\u001a\u00020\u001d2\u0006\u0010,\u001a\u00020\u00192\u0006\u0010-\u001a\u00020\u0019H\u0016J\u0010\u0010.\u001a\u00020\b2\u0006\u0010/\u001a\u000200H\u0016J\u0010\u00101\u001a\u00020\b2\u0006\u0010/\u001a\u000200H\u0016J\u0010\u00102\u001a\u00020 2\u0006\u0010/\u001a\u000200H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\n\"\u0004\b\u000f\u0010\fR\u001a\u0010\u0010\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\n\"\u0004\b\u0012\u0010\fR\u000e\u0010\u0013\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00064"}, d2 = {"Lorg/godotengine/godot/input/GodotGestureHandler;", "Landroid/view/GestureDetector$SimpleOnGestureListener;", "Landroid/view/ScaleGestureDetector$OnScaleGestureListener;", "inputHandler", "Lorg/godotengine/godot/input/GodotInputHandler;", "<init>", "(Lorg/godotengine/godot/input/GodotInputHandler;)V", "panningAndScalingEnabled", "", "getPanningAndScalingEnabled", "()Z", "setPanningAndScalingEnabled", "(Z)V", "scrollDeadzoneDisabled", "getScrollDeadzoneDisabled", "setScrollDeadzoneDisabled", "hapticFeedbackEnabled", "getHapticFeedbackEnabled", "setHapticFeedbackEnabled", "nextDownIsDoubleTap", "dragInProgress", "scaleInProgress", "contextClickInProgress", "pointerCaptureInProgress", "lastDragX", "", "lastDragY", "onDown", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "onSingleTapUp", "onLongPress", "", "contextClickRouter", "onPointerCaptureChange", "hasCapture", "onMotionEvent", "onActionUp", "onActionMove", "onDoubleTapEvent", "onDoubleTap", "onScroll", "originEvent", "terminusEvent", "distanceX", "distanceY", "onScale", "detector", "Landroid/view/ScaleGestureDetector;", "onScaleBegin", "onScaleEnd", "Companion", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class GodotGestureHandler extends GestureDetector.SimpleOnGestureListener implements ScaleGestureDetector.OnScaleGestureListener {
    private static final String TAG = "GodotGestureHandler";
    private boolean contextClickInProgress;
    private boolean dragInProgress;
    private boolean hapticFeedbackEnabled;
    private final GodotInputHandler inputHandler;
    private float lastDragX;
    private float lastDragY;
    private boolean nextDownIsDoubleTap;
    private boolean panningAndScalingEnabled;
    private boolean pointerCaptureInProgress;
    private boolean scaleInProgress;
    private boolean scrollDeadzoneDisabled;

    public GodotGestureHandler(GodotInputHandler inputHandler) {
        Intrinsics.checkNotNullParameter(inputHandler, "inputHandler");
        this.inputHandler = inputHandler;
    }

    private final void contextClickRouter(MotionEvent event) {
        if (this.scaleInProgress || this.nextDownIsDoubleTap) {
            return;
        }
        this.inputHandler.handleMotionEvent(event, 3);
        this.inputHandler.handleMouseEvent(event, 0, 2, false);
        this.contextClickInProgress = true;
    }

    private final boolean onActionMove(MotionEvent event) {
        if (this.contextClickInProgress) {
            this.inputHandler.handleMouseEvent(event, event.getActionMasked(), 2, false);
            return true;
        }
        if (!this.scrollDeadzoneDisabled || this.scaleInProgress || (this.lastDragX == event.getX(0) && this.lastDragY == event.getY(0))) {
            return false;
        }
        this.lastDragX = event.getX(0);
        this.lastDragY = event.getY(0);
        this.inputHandler.handleMotionEvent(event);
        return true;
    }

    private final boolean onActionUp(MotionEvent event) {
        if (event.getActionMasked() == 3 && this.pointerCaptureInProgress) {
            return true;
        }
        if (!this.pointerCaptureInProgress && !this.dragInProgress && !this.contextClickInProgress) {
            return false;
        }
        if (this.contextClickInProgress || GodotInputHandler.isMouseEvent(event)) {
            this.inputHandler.handleMouseEvent(event, 1);
        } else {
            this.inputHandler.handleTouchEvent(event);
        }
        this.pointerCaptureInProgress = false;
        this.dragInProgress = false;
        this.contextClickInProgress = false;
        this.lastDragX = 0.0f;
        this.lastDragY = 0.0f;
        return true;
    }

    public final boolean getHapticFeedbackEnabled() {
        return this.hapticFeedbackEnabled;
    }

    public final boolean getPanningAndScalingEnabled() {
        return this.panningAndScalingEnabled;
    }

    public final boolean getScrollDeadzoneDisabled() {
        return this.scrollDeadzoneDisabled;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTap(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.nextDownIsDoubleTap = true;
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTapEvent(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getActionMasked() == 1) {
            this.nextDownIsDoubleTap = false;
            this.inputHandler.handleMotionEvent(event);
        } else if (event.getActionMasked() == 2 && !this.panningAndScalingEnabled) {
            this.inputHandler.handleMotionEvent(event);
        }
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.inputHandler.handleMotionEvent(event, 0, this.nextDownIsDoubleTap);
        this.nextDownIsDoubleTap = false;
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public void onLongPress(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (GodotInputHandler.getEventToolType(event) != 3) {
            if (this.hapticFeedbackEnabled) {
                this.inputHandler.performHapticFeedback();
            }
            contextClickRouter(event);
        }
    }

    public final boolean onMotionEvent(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        int actionMasked = event.getActionMasked();
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                return onActionMove(event);
            }
            if (actionMasked != 3 && actionMasked != 12) {
                return false;
            }
        }
        return onActionUp(event);
    }

    public final void onPointerCaptureChange(boolean hasCapture) {
        if (this.pointerCaptureInProgress == hasCapture) {
            return;
        }
        if (!hasCapture) {
            this.inputHandler.handleMouseEvent(1, true);
        }
        this.pointerCaptureInProgress = hasCapture;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScale(ScaleGestureDetector detector) {
        Intrinsics.checkNotNullParameter(detector, "detector");
        if (!this.panningAndScalingEnabled || this.pointerCaptureInProgress || this.dragInProgress) {
            return false;
        }
        if (detector.getScaleFactor() < 0.8f || detector.getScaleFactor() == 1.0f || detector.getScaleFactor() > 1.2f) {
            return true;
        }
        this.inputHandler.handleMagnifyEvent(detector.getFocusX(), detector.getFocusY(), detector.getScaleFactor());
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScaleBegin(ScaleGestureDetector detector) {
        Intrinsics.checkNotNullParameter(detector, "detector");
        if (!this.panningAndScalingEnabled || this.pointerCaptureInProgress || this.dragInProgress) {
            return false;
        }
        this.scaleInProgress = true;
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public void onScaleEnd(ScaleGestureDetector detector) {
        Intrinsics.checkNotNullParameter(detector, "detector");
        this.scaleInProgress = false;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent originEvent, MotionEvent terminusEvent, float distanceX, float distanceY) {
        Intrinsics.checkNotNullParameter(terminusEvent, "terminusEvent");
        if (this.scaleInProgress && (this.dragInProgress || (this.scrollDeadzoneDisabled && (this.lastDragX != 0.0f || this.lastDragY != 0.0f)))) {
            if (originEvent != null) {
                this.inputHandler.handleMotionEvent(originEvent, 3);
            }
            this.dragInProgress = false;
            this.lastDragX = 0.0f;
            this.lastDragY = 0.0f;
        }
        float x2 = terminusEvent.getX();
        float y2 = terminusEvent.getY();
        if (terminusEvent.getPointerCount() >= 2 && this.panningAndScalingEnabled && !this.pointerCaptureInProgress && !this.dragInProgress) {
            this.inputHandler.handlePanEvent(x2, y2, distanceX / 5.0f, distanceY / 5.0f);
        } else if (!this.scaleInProgress) {
            this.dragInProgress = true;
            this.lastDragX = terminusEvent.getX(0);
            this.lastDragY = terminusEvent.getY(0);
            this.inputHandler.handleMotionEvent(terminusEvent);
        }
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.inputHandler.handleMotionEvent(event);
        return true;
    }

    public final void setHapticFeedbackEnabled(boolean z2) {
        this.hapticFeedbackEnabled = z2;
    }

    public final void setPanningAndScalingEnabled(boolean z2) {
        this.panningAndScalingEnabled = z2;
    }

    public final void setScrollDeadzoneDisabled(boolean z2) {
        this.scrollDeadzoneDisabled = z2;
    }
}
