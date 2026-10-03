package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.minhub.gamehub.R;
import k.C0280b;
import k.S0;
import p008d.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class ActionBarContainer extends FrameLayout {
    public boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public View f2643c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public View f2644d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Drawable f2645e;
    public Drawable f;
    public Drawable g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f2646h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f2647i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f2648j;

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBackground(new C0280b(this));
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f3841a);
        boolean z2 = false;
        this.f2645e = typedArrayObtainStyledAttributes.getDrawable(0);
        this.f = typedArrayObtainStyledAttributes.getDrawable(2);
        this.f2648j = typedArrayObtainStyledAttributes.getDimensionPixelSize(13, -1);
        if (getId() == R.id.split_action_bar) {
            this.f2646h = true;
            this.g = typedArrayObtainStyledAttributes.getDrawable(1);
        }
        typedArrayObtainStyledAttributes.recycle();
        if (!this.f2646h ? !(this.f2645e != null || this.f != null) : this.g == null) {
            z2 = true;
        }
        setWillNotDraw(z2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f2645e;
        if (drawable != null && drawable.isStateful()) {
            this.f2645e.setState(getDrawableState());
        }
        Drawable drawable2 = this.f;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f.setState(getDrawableState());
        }
        Drawable drawable3 = this.g;
        if (drawable3 == null || !drawable3.isStateful()) {
            return;
        }
        this.g.setState(getDrawableState());
    }

    public View getTabContainer() {
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f2645e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.g;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f2643c = findViewById(R.id.action_bar);
        this.f2644d = findViewById(R.id.action_context_bar);
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.b || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i3, int i4, int i5, int i6) {
        super.onLayout(z2, i3, i4, i5, i6);
        boolean z3 = true;
        if (this.f2646h) {
            Drawable drawable = this.g;
            if (drawable != null) {
                drawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            } else {
                z3 = false;
            }
        } else {
            if (this.f2645e == null) {
                z3 = false;
            } else if (this.f2643c.getVisibility() == 0) {
                this.f2645e.setBounds(this.f2643c.getLeft(), this.f2643c.getTop(), this.f2643c.getRight(), this.f2643c.getBottom());
            } else {
                View view = this.f2644d;
                if (view == null || view.getVisibility() != 0) {
                    this.f2645e.setBounds(0, 0, 0, 0);
                } else {
                    this.f2645e.setBounds(this.f2644d.getLeft(), this.f2644d.getTop(), this.f2644d.getRight(), this.f2644d.getBottom());
                }
            }
            this.f2647i = false;
        }
        if (z3) {
            invalidate();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i3, int i4) {
        int i5;
        if (this.f2643c == null && View.MeasureSpec.getMode(i4) == Integer.MIN_VALUE && (i5 = this.f2648j) >= 0) {
            i4 = View.MeasureSpec.makeMeasureSpec(Math.min(i5, View.MeasureSpec.getSize(i4)), Integer.MIN_VALUE);
        }
        super.onMeasure(i3, i4);
        if (this.f2643c == null) {
            return;
        }
        View.MeasureSpec.getMode(i4);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(Drawable drawable) {
        Drawable drawable2 = this.f2645e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f2645e);
        }
        this.f2645e = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            View view = this.f2643c;
            if (view != null) {
                this.f2645e.setBounds(view.getLeft(), this.f2643c.getTop(), this.f2643c.getRight(), this.f2643c.getBottom());
            }
        }
        boolean z2 = false;
        if (!this.f2646h ? !(this.f2645e != null || this.f != null) : this.g == null) {
            z2 = true;
        }
        setWillNotDraw(z2);
        invalidate();
        invalidateOutline();
    }

    public void setSplitBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.g;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.g);
        }
        this.g = drawable;
        boolean z2 = this.f2646h;
        boolean z3 = false;
        if (drawable != null) {
            drawable.setCallback(this);
            if (z2 && (drawable2 = this.g) != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            }
        }
        if (!z2 ? !(this.f2645e != null || this.f != null) : this.g == null) {
            z3 = true;
        }
        setWillNotDraw(z3);
        invalidate();
        invalidateOutline();
    }

    public void setStackedBackground(Drawable drawable) {
        Drawable drawable2 = this.f;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f);
        }
        this.f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f2647i && this.f != null) {
                throw null;
            }
        }
        boolean z2 = false;
        if (!this.f2646h ? !(this.f2645e != null || this.f != null) : this.g == null) {
            z2 = true;
        }
        setWillNotDraw(z2);
        invalidate();
        invalidateOutline();
    }

    public void setTransitioning(boolean z2) {
        this.b = z2;
        setDescendantFocusability(z2 ? 393216 : 262144);
    }

    @Override // android.view.View
    public void setVisibility(int i3) {
        super.setVisibility(i3);
        boolean z2 = i3 == 0;
        Drawable drawable = this.f2645e;
        if (drawable != null) {
            drawable.setVisible(z2, false);
        }
        Drawable drawable2 = this.f;
        if (drawable2 != null) {
            drawable2.setVisible(z2, false);
        }
        Drawable drawable3 = this.g;
        if (drawable3 != null) {
            drawable3.setVisible(z2, false);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        Drawable drawable2 = this.f2645e;
        boolean z2 = this.f2646h;
        if (drawable == drawable2 && !z2) {
            return true;
        }
        if (drawable == this.f && this.f2647i) {
            return true;
        }
        return (drawable == this.g && z2) || super.verifyDrawable(drawable);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i3) {
        if (i3 != 0) {
            return super.startActionModeForChild(view, callback, i3);
        }
        return null;
    }

    public void setTabContainer(S0 s0) {
    }
}
