package org.godotengine.godot.utils;

import android.widget.PopupWindow;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PopupWindow f5185c;

    public /* synthetic */ a(PopupWindow popupWindow, int i3) {
        this.b = i3;
        this.f5185c = popupWindow;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                this.f5185c.dismiss();
                break;
            default:
                this.f5185c.dismiss();
                break;
        }
    }
}
