package k;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.CheckedTextViewCompat;
import androidx.core.widget.CompoundButtonCompat;

/* JADX INFO: renamed from: k.u, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0317u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ColorStateList f4916a = null;
    public PorterDuff.Mode b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f4917c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f4918d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f4919e;
    public final TextView f;

    public /* synthetic */ C0317u(TextView textView) {
        this.f = textView;
    }

    public void a() {
        CompoundButton compoundButton = (CompoundButton) this.f;
        Drawable buttonDrawable = CompoundButtonCompat.getButtonDrawable(compoundButton);
        if (buttonDrawable != null) {
            if (this.f4917c || this.f4918d) {
                Drawable drawableMutate = DrawableCompat.wrap(buttonDrawable).mutate();
                if (this.f4917c) {
                    DrawableCompat.setTintList(drawableMutate, this.f4916a);
                }
                if (this.f4918d) {
                    DrawableCompat.setTintMode(drawableMutate, this.b);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(compoundButton.getDrawableState());
                }
                compoundButton.setButtonDrawable(drawableMutate);
            }
        }
    }

    public void b() {
        C0315t c0315t = (C0315t) this.f;
        Drawable checkMarkDrawable = CheckedTextViewCompat.getCheckMarkDrawable(c0315t);
        if (checkMarkDrawable != null) {
            if (this.f4917c || this.f4918d) {
                Drawable drawableMutate = DrawableCompat.wrap(checkMarkDrawable).mutate();
                if (this.f4917c) {
                    DrawableCompat.setTintList(drawableMutate, this.f4916a);
                }
                if (this.f4918d) {
                    DrawableCompat.setTintMode(drawableMutate, this.b);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(c0315t.getDrawableState());
                }
                c0315t.setCheckMarkDrawable(drawableMutate);
            }
        }
    }

    public void c(AttributeSet attributeSet, int i3) {
        int resourceId;
        int resourceId2;
        CompoundButton compoundButton = (CompoundButton) this.f;
        Context context = compoundButton.getContext();
        int[] iArr = p008d.a.f3850m;
        Z0 z0E = Z0.e(context, attributeSet, iArr, i3);
        TypedArray typedArray = z0E.b;
        ViewCompat.saveAttributeDataForStyleable(compoundButton, compoundButton.getContext(), iArr, attributeSet, z0E.b, i3, 0);
        try {
            if (typedArray.hasValue(1) && (resourceId2 = typedArray.getResourceId(1, 0)) != 0) {
                try {
                    compoundButton.setButtonDrawable(com.bumptech.glide.d.v(compoundButton.getContext(), resourceId2));
                } catch (Resources.NotFoundException unused) {
                    if (typedArray.hasValue(0)) {
                        compoundButton.setButtonDrawable(com.bumptech.glide.d.v(compoundButton.getContext(), resourceId));
                    }
                }
            } else if (typedArray.hasValue(0) && (resourceId = typedArray.getResourceId(0, 0)) != 0) {
                compoundButton.setButtonDrawable(com.bumptech.glide.d.v(compoundButton.getContext(), resourceId));
            }
            if (typedArray.hasValue(2)) {
                CompoundButtonCompat.setButtonTintList(compoundButton, z0E.a(2));
            }
            if (typedArray.hasValue(3)) {
                CompoundButtonCompat.setButtonTintMode(compoundButton, AbstractC0309p0.c(typedArray.getInt(3, -1), null));
            }
        } finally {
            z0E.f();
        }
    }
}
