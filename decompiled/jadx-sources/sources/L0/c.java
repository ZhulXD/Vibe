package L0;

import R0.p;
import R0.t;
import T.e;
import T.f;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.AnimatedStateListDrawable;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.autofill.AutofillManager;
import android.widget.CompoundButton;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.widget.CompoundButtonCompat;
import com.bumptech.glide.d;
import com.minhub.gamehub.R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import k.C0313s;
import k.Z0;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c extends C0313s {
    public final LinkedHashSet f;
    public final LinkedHashSet g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ColorStateList f1259h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f1260i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f1261j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f1262k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public CharSequence f1263l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Drawable f1264m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Drawable f1265n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f1266o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public ColorStateList f1267p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public ColorStateList f1268q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public PorterDuff.Mode f1269r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f1270s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int[] f1271t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f1272u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public CharSequence f1273v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public CompoundButton.OnCheckedChangeListener f1274w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final f f1275x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final a f1276y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final int[] f1258z = {R.attr.state_indeterminate};

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public static final int[] f1255A = {R.attr.state_error};

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public static final int[][] f1256B = {new int[]{android.R.attr.state_enabled, R.attr.state_error}, new int[]{android.R.attr.state_enabled, android.R.attr.state_checked}, new int[]{android.R.attr.state_enabled, -16842912}, new int[]{-16842910, android.R.attr.state_checked}, new int[]{-16842910, -16842912}};

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public static final int f1257C = Resources.getSystem().getIdentifier("btn_check_material_anim", "drawable", "android");

    public c(Context context, AttributeSet attributeSet) {
        super(p015f1.a.a(context, attributeSet, R.attr.checkboxStyle, R.style.Widget_MaterialComponents_CompoundButton_CheckBox), attributeSet, R.attr.checkboxStyle);
        this.f = new LinkedHashSet();
        this.g = new LinkedHashSet();
        Context context2 = getContext();
        f fVar = new f(context2, 0);
        Drawable drawable = ResourcesCompat.getDrawable(context2.getResources(), R.drawable.mtrl_checkbox_button_checked_unchecked, context2.getTheme());
        fVar.b = drawable;
        drawable.setCallback(fVar.g);
        new e(0, fVar.b.getConstantState());
        this.f1275x = fVar;
        this.f1276y = new a(this);
        Context context3 = getContext();
        this.f1264m = CompoundButtonCompat.getButtonDrawable(this);
        this.f1267p = getSuperButtonTintList();
        setSupportButtonTintList(null);
        Z0 z0F = p.f(context3, attributeSet, A0.a.f35u, R.attr.checkboxStyle, R.style.Widget_MaterialComponents_CompoundButton_CheckBox, new int[0]);
        TypedArray typedArray = z0F.b;
        this.f1265n = z0F.b(2);
        if (this.f1264m != null && com.bumptech.glide.c.J(context3, R.attr.isMaterial3Theme, false)) {
            int resourceId = typedArray.getResourceId(0, 0);
            int resourceId2 = typedArray.getResourceId(1, 0);
            if (resourceId == f1257C && resourceId2 == 0) {
                super.setButtonDrawable((Drawable) null);
                this.f1264m = d.v(context3, R.drawable.mtrl_checkbox_button);
                this.f1266o = true;
                if (this.f1265n == null) {
                    this.f1265n = d.v(context3, R.drawable.mtrl_checkbox_button_icon);
                }
            }
        }
        this.f1268q = d.s(context3, z0F, 3);
        this.f1269r = t.e(typedArray.getInt(4, -1), PorterDuff.Mode.SRC_IN);
        this.f1260i = typedArray.getBoolean(10, false);
        this.f1261j = typedArray.getBoolean(6, true);
        this.f1262k = typedArray.getBoolean(9, false);
        this.f1263l = typedArray.getText(8);
        if (typedArray.hasValue(7)) {
            setCheckedState(typedArray.getInt(7, 0));
        }
        z0F.f();
        a();
    }

    private String getButtonStateDescription() {
        int i3 = this.f1270s;
        if (i3 == 1) {
            return getResources().getString(R.string.mtrl_checkbox_state_description_checked);
        }
        return i3 == 0 ? getResources().getString(R.string.mtrl_checkbox_state_description_unchecked) : getResources().getString(R.string.mtrl_checkbox_state_description_indeterminate);
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f1259h == null) {
            int iM = com.bumptech.glide.c.m(this, R.attr.colorControlActivated);
            int iM2 = com.bumptech.glide.c.m(this, R.attr.colorError);
            int iM3 = com.bumptech.glide.c.m(this, R.attr.colorSurface);
            int iM4 = com.bumptech.glide.c.m(this, R.attr.colorOnSurface);
            this.f1259h = new ColorStateList(f1256B, new int[]{com.bumptech.glide.c.w(iM3, 1.0f, iM2), com.bumptech.glide.c.w(iM3, 1.0f, iM), com.bumptech.glide.c.w(iM3, 0.54f, iM4), com.bumptech.glide.c.w(iM3, 0.38f, iM4), com.bumptech.glide.c.w(iM3, 0.38f, iM4)});
        }
        return this.f1259h;
    }

    private ColorStateList getSuperButtonTintList() {
        ColorStateList colorStateList = this.f1267p;
        if (colorStateList != null) {
            return colorStateList;
        }
        return super.getButtonTintList() != null ? super.getButtonTintList() : getSupportButtonTintList();
    }

    public final void a() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        E0.a aVar;
        Drawable drawableMutate = this.f1264m;
        ColorStateList colorStateList3 = this.f1267p;
        PorterDuff.Mode buttonTintMode = CompoundButtonCompat.getButtonTintMode(this);
        if (drawableMutate == null) {
            drawableMutate = null;
        } else if (colorStateList3 != null) {
            drawableMutate = DrawableCompat.wrap(drawableMutate).mutate();
            if (buttonTintMode != null) {
                DrawableCompat.setTintMode(drawableMutate, buttonTintMode);
            }
        }
        this.f1264m = drawableMutate;
        Drawable drawableMutate2 = this.f1265n;
        ColorStateList colorStateList4 = this.f1268q;
        PorterDuff.Mode mode = this.f1269r;
        if (drawableMutate2 == null) {
            drawableMutate2 = null;
        } else if (colorStateList4 != null) {
            drawableMutate2 = DrawableCompat.wrap(drawableMutate2).mutate();
            if (mode != null) {
                DrawableCompat.setTintMode(drawableMutate2, mode);
            }
        }
        this.f1265n = drawableMutate2;
        if (this.f1266o) {
            f fVar = this.f1275x;
            if (fVar != null) {
                T.d dVar = fVar.f2080c;
                Drawable drawable = fVar.b;
                a aVar2 = this.f1276y;
                if (drawable != null) {
                    AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) drawable;
                    if (aVar2.f1254a == null) {
                        aVar2.f1254a = new T.b(aVar2);
                    }
                    animatedVectorDrawable.unregisterAnimationCallback(aVar2.f1254a);
                }
                ArrayList arrayList = fVar.f;
                if (arrayList != null && aVar2 != null) {
                    arrayList.remove(aVar2);
                    if (fVar.f.size() == 0 && (aVar = fVar.f2082e) != null) {
                        dVar.b.removeListener(aVar);
                        fVar.f2082e = null;
                    }
                }
                Drawable drawable2 = fVar.b;
                if (drawable2 != null) {
                    AnimatedVectorDrawable animatedVectorDrawable2 = (AnimatedVectorDrawable) drawable2;
                    if (aVar2.f1254a == null) {
                        aVar2.f1254a = new T.b(aVar2);
                    }
                    animatedVectorDrawable2.registerAnimationCallback(aVar2.f1254a);
                } else if (aVar2 != null) {
                    if (fVar.f == null) {
                        fVar.f = new ArrayList();
                    }
                    if (!fVar.f.contains(aVar2)) {
                        fVar.f.add(aVar2);
                        if (fVar.f2082e == null) {
                            fVar.f2082e = new E0.a(4, fVar);
                        }
                        dVar.b.addListener(fVar.f2082e);
                    }
                }
            }
            Drawable drawable3 = this.f1264m;
            if ((drawable3 instanceof AnimatedStateListDrawable) && fVar != null) {
                ((AnimatedStateListDrawable) drawable3).addTransition(R.id.checked, R.id.unchecked, fVar, false);
                ((AnimatedStateListDrawable) this.f1264m).addTransition(R.id.indeterminate, R.id.unchecked, fVar, false);
            }
        }
        Drawable drawable4 = this.f1264m;
        if (drawable4 != null && (colorStateList2 = this.f1267p) != null) {
            DrawableCompat.setTintList(drawable4, colorStateList2);
        }
        Drawable drawable5 = this.f1265n;
        if (drawable5 != null && (colorStateList = this.f1268q) != null) {
            DrawableCompat.setTintList(drawable5, colorStateList);
        }
        Drawable drawable6 = this.f1264m;
        Drawable drawable7 = this.f1265n;
        if (drawable6 == null) {
            drawable6 = drawable7;
        } else if (drawable7 != null) {
            int intrinsicWidth = drawable7.getIntrinsicWidth();
            if (intrinsicWidth == -1) {
                intrinsicWidth = drawable6.getIntrinsicWidth();
            }
            int intrinsicHeight = drawable7.getIntrinsicHeight();
            if (intrinsicHeight == -1) {
                intrinsicHeight = drawable6.getIntrinsicHeight();
            }
            if (intrinsicWidth > drawable6.getIntrinsicWidth() || intrinsicHeight > drawable6.getIntrinsicHeight()) {
                float f = intrinsicWidth / intrinsicHeight;
                if (f >= drawable6.getIntrinsicWidth() / drawable6.getIntrinsicHeight()) {
                    int intrinsicWidth2 = drawable6.getIntrinsicWidth();
                    intrinsicHeight = (int) (intrinsicWidth2 / f);
                    intrinsicWidth = intrinsicWidth2;
                } else {
                    intrinsicHeight = drawable6.getIntrinsicHeight();
                    intrinsicWidth = (int) (f * intrinsicHeight);
                }
            }
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{drawable6, drawable7});
            layerDrawable.setLayerSize(1, intrinsicWidth, intrinsicHeight);
            layerDrawable.setLayerGravity(1, 17);
            drawable6 = layerDrawable;
        }
        super.setButtonDrawable(drawable6);
        refreshDrawableState();
    }

    @Override // android.widget.CompoundButton
    public Drawable getButtonDrawable() {
        return this.f1264m;
    }

    public Drawable getButtonIconDrawable() {
        return this.f1265n;
    }

    public ColorStateList getButtonIconTintList() {
        return this.f1268q;
    }

    public PorterDuff.Mode getButtonIconTintMode() {
        return this.f1269r;
    }

    @Override // android.widget.CompoundButton
    public ColorStateList getButtonTintList() {
        return this.f1267p;
    }

    public int getCheckedState() {
        return this.f1270s;
    }

    public CharSequence getErrorAccessibilityLabel() {
        return this.f1263l;
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final boolean isChecked() {
        return this.f1270s == 1;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f1260i && this.f1267p == null && this.f1268q == null) {
            setUseMaterialThemeColors(true);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i3) {
        int[] iArrCopyOf;
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i3 + 2);
        if (getCheckedState() == 2) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f1258z);
        }
        if (this.f1262k) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f1255A);
        }
        for (int i4 = 0; i4 < iArrOnCreateDrawableState.length; i4++) {
            int i5 = iArrOnCreateDrawableState[i4];
            if (i5 == 16842912) {
                iArrCopyOf = iArrOnCreateDrawableState;
            } else if (i5 == 0) {
                iArrCopyOf = (int[]) iArrOnCreateDrawableState.clone();
                iArrCopyOf[i4] = 16842912;
            }
            this.f1271t = iArrCopyOf;
            return iArrOnCreateDrawableState;
        }
        iArrCopyOf = Arrays.copyOf(iArrOnCreateDrawableState, iArrOnCreateDrawableState.length + 1);
        iArrCopyOf[iArrOnCreateDrawableState.length] = 16842912;
        this.f1271t = iArrCopyOf;
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        Drawable buttonDrawable;
        if (!this.f1261j || !TextUtils.isEmpty(getText()) || (buttonDrawable = CompoundButtonCompat.getButtonDrawable(this)) == null) {
            super.onDraw(canvas);
            return;
        }
        int width = ((getWidth() - buttonDrawable.getIntrinsicWidth()) / 2) * (t.d(this) ? -1 : 1);
        int iSave = canvas.save();
        canvas.translate(width, 0.0f);
        super.onDraw(canvas);
        canvas.restoreToCount(iSave);
        if (getBackground() != null) {
            Rect bounds = buttonDrawable.getBounds();
            DrawableCompat.setHotspotBounds(getBackground(), bounds.left + width, bounds.top, bounds.right + width, bounds.bottom);
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (accessibilityNodeInfo != null && this.f1262k) {
            accessibilityNodeInfo.setText(((Object) accessibilityNodeInfo.getText()) + ", " + ((Object) this.f1263l));
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof b)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        b bVar = (b) parcelable;
        super.onRestoreInstanceState(bVar.getSuperState());
        setCheckedState(bVar.b);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final Parcelable onSaveInstanceState() {
        b bVar = new b(super.onSaveInstanceState());
        bVar.b = getCheckedState();
        return bVar;
    }

    @Override // k.C0313s, android.widget.CompoundButton
    public void setButtonDrawable(int i3) {
        setButtonDrawable(d.v(getContext(), i3));
    }

    public void setButtonIconDrawable(Drawable drawable) {
        this.f1265n = drawable;
        a();
    }

    public void setButtonIconDrawableResource(int i3) {
        setButtonIconDrawable(d.v(getContext(), i3));
    }

    public void setButtonIconTintList(ColorStateList colorStateList) {
        if (this.f1268q == colorStateList) {
            return;
        }
        this.f1268q = colorStateList;
        a();
    }

    public void setButtonIconTintMode(PorterDuff.Mode mode) {
        if (this.f1269r == mode) {
            return;
        }
        this.f1269r = mode;
        a();
    }

    @Override // android.widget.CompoundButton
    public void setButtonTintList(ColorStateList colorStateList) {
        if (this.f1267p == colorStateList) {
            return;
        }
        this.f1267p = colorStateList;
        a();
    }

    @Override // android.widget.CompoundButton
    public void setButtonTintMode(PorterDuff.Mode mode) {
        setSupportButtonTintMode(mode);
        a();
    }

    public void setCenterIfNoTextEnabled(boolean z2) {
        this.f1261j = z2;
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z2) {
        setCheckedState(z2 ? 1 : 0);
    }

    public void setCheckedState(int i3) {
        AutofillManager autofillManager;
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
        if (this.f1270s != i3) {
            this.f1270s = i3;
            super.setChecked(i3 == 1);
            refreshDrawableState();
            int i4 = Build.VERSION.SDK_INT;
            if (i4 >= 30 && this.f1273v == null) {
                super.setStateDescription(getButtonStateDescription());
            }
            if (this.f1272u) {
                return;
            }
            this.f1272u = true;
            LinkedHashSet linkedHashSet = this.g;
            if (linkedHashSet != null) {
                Iterator it = linkedHashSet.iterator();
                if (it.hasNext()) {
                    throw E.b.g(it);
                }
            }
            if (this.f1270s != 2 && (onCheckedChangeListener = this.f1274w) != null) {
                onCheckedChangeListener.onCheckedChanged(this, isChecked());
            }
            if (i4 >= 26 && (autofillManager = (AutofillManager) getContext().getSystemService(AutofillManager.class)) != null) {
                autofillManager.notifyValueChanged(this);
            }
            this.f1272u = false;
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void setEnabled(boolean z2) {
        super.setEnabled(z2);
    }

    public void setErrorAccessibilityLabel(CharSequence charSequence) {
        this.f1263l = charSequence;
    }

    public void setErrorAccessibilityLabelResource(int i3) {
        setErrorAccessibilityLabel(i3 != 0 ? getResources().getText(i3) : null);
    }

    public void setErrorShown(boolean z2) {
        if (this.f1262k == z2) {
            return;
        }
        this.f1262k = z2;
        refreshDrawableState();
        Iterator it = this.f.iterator();
        if (it.hasNext()) {
            throw E.b.g(it);
        }
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f1274w = onCheckedChangeListener;
    }

    @Override // android.widget.CompoundButton, android.view.View
    public void setStateDescription(CharSequence charSequence) {
        this.f1273v = charSequence;
        if (charSequence != null) {
            super.setStateDescription(charSequence);
        } else {
            if (Build.VERSION.SDK_INT < 30 || charSequence != null) {
                return;
            }
            super.setStateDescription(getButtonStateDescription());
        }
    }

    public void setUseMaterialThemeColors(boolean z2) {
        this.f1260i = z2;
        if (z2) {
            CompoundButtonCompat.setButtonTintList(this, getMaterialThemeColorsTintList());
        } else {
            CompoundButtonCompat.setButtonTintList(this, null);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final void toggle() {
        setChecked(!isChecked());
    }

    @Override // k.C0313s, android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        this.f1264m = drawable;
        this.f1266o = false;
        a();
    }
}
