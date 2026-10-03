package com.google.android.material.internal;

import H0.k;
import R0.b;
import android.R;
import android.content.Context;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Checkable;
import androidx.core.view.ViewCompat;
import k.A;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class CheckableImageButton extends A implements Checkable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int[] f3474h = {R.attr.state_checked};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f3475e;
    public boolean f;
    public boolean g;

    public CheckableImageButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, com.minhub.gamehub.R.attr.imageButtonStyle);
        this.f = true;
        this.g = true;
        ViewCompat.setAccessibilityDelegate(this, new k(1, this));
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f3475e;
    }

    @Override // android.widget.ImageView, android.view.View
    public final int[] onCreateDrawableState(int i3) {
        return this.f3475e ? View.mergeDrawableStates(super.onCreateDrawableState(i3 + 1), f3474h) : super.onCreateDrawableState(i3);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof b)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        b bVar = (b) parcelable;
        super.onRestoreInstanceState(bVar.b);
        setChecked(bVar.f1862d);
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        b bVar = new b(super.onSaveInstanceState());
        bVar.f1862d = this.f3475e;
        return bVar;
    }

    public void setCheckable(boolean z2) {
        if (this.f != z2) {
            this.f = z2;
            sendAccessibilityEvent(0);
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z2) {
        if (!this.f || this.f3475e == z2) {
            return;
        }
        this.f3475e = z2;
        refreshDrawableState();
        sendAccessibilityEvent(2048);
    }

    public void setPressable(boolean z2) {
        this.g = z2;
    }

    @Override // android.view.View
    public void setPressed(boolean z2) {
        if (this.g) {
            super.setPressed(z2);
        }
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.f3475e);
    }
}
