package org.renpy.android;

import android.app.AlertDialog;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e implements View.OnClickListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AlertDialog f5195c;

    public /* synthetic */ e(AlertDialog alertDialog, int i3) {
        this.b = i3;
        this.f5195c = alertDialog;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.b) {
            case 0:
                this.f5195c.dismiss();
                break;
            case 1:
                PythonSDLActivity.lambda$showLanguageReloadDialog$14(this.f5195c, view);
                break;
            case 2:
                PythonSDLActivity.lambda$showLanguageReloadDialog$15(this.f5195c, view);
                break;
            default:
                this.f5195c.dismiss();
                break;
        }
    }
}
