package org.godotengine.godot.utils;

import android.view.MotionEvent;
import android.view.View;
import android.widget.PopupWindow;
import androidx.core.app.NotificationCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082D¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"org/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1", "Landroid/view/View$OnTouchListener;", "initialX", "", "dX", "threshold", "onTouch", "", "v", "Landroid/view/View;", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DialogUtils$Companion$addSwipeToDismiss$1 implements View.OnTouchListener {
    final /* synthetic */ PopupWindow $popupWindow;
    final /* synthetic */ View $view;
    private float dX;
    private float initialX;
    private final float threshold = 300.0f;

    public DialogUtils$Companion$addSwipeToDismiss$1(View view, PopupWindow popupWindow) {
        this.$view = view;
        this.$popupWindow = popupWindow;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View v2, MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        int action = event.getAction();
        if (action == 0) {
            this.initialX = event.getRawX();
            this.dX = this.$view.getTranslationX();
            return true;
        }
        if (action != 1) {
            if (action == 2) {
                this.$view.setTranslationX(this.dX + (event.getRawX() - this.initialX));
                return true;
            }
            if (action != 3) {
                return true;
            }
        }
        float rawX = event.getRawX() - this.initialX;
        if (Math.abs(rawX) > this.threshold) {
            this.$view.animate().translationX(rawX > 0.0f ? this.$view.getWidth() : -this.$view.getWidth()).setDuration(200L).withEndAction(new a(this.$popupWindow, 1)).start();
            return true;
        }
        this.$view.animate().translationX(0.0f).setDuration(200L).start();
        return true;
    }
}
