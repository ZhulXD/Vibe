package p011e;

import android.content.Context;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.ComponentDialog;
import androidx.activity.ViewTreeOnBackPressedDispatcherOwner;
import androidx.core.view.KeyEventDispatcher;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import androidx.savedstate.ViewTreeSavedStateRegistryOwner;
import com.minhub.gamehub.R;
import p021i.j;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class D extends ComponentDialog implements InterfaceC0249k {
    public B b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C f4055c;

    /* JADX WARN: Type inference failed for: r2v2, types: [e.C] */
    public D(Context context, int i3) {
        int i4;
        if (i3 == 0) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(R.attr.dialogTheme, typedValue, true);
            i4 = typedValue.resourceId;
        } else {
            i4 = i3;
        }
        super(context, i4);
        this.f4055c = new KeyEventDispatcher.Component() { // from class: e.C
            @Override // androidx.core.view.KeyEventDispatcher.Component
            public final boolean superDispatchKeyEvent(KeyEvent keyEvent) {
                return this.b.d(keyEvent);
            }
        };
        p pVarB = b();
        if (i3 == 0) {
            TypedValue typedValue2 = new TypedValue();
            context.getTheme().resolveAttribute(R.attr.dialogTheme, typedValue2, true);
            i3 = typedValue2.resourceId;
        }
        ((B) pVarB).f4026U = i3;
        pVarB.e();
    }

    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        B b = (B) b();
        b.w();
        ((ViewGroup) b.f4008B.findViewById(android.R.id.content)).addView(view, layoutParams);
        b.f4042n.a(b.f4041m.getCallback());
    }

    public final p b() {
        if (this.b == null) {
            n nVar = p.b;
            this.b = new B(getContext(), getWindow(), this, this);
        }
        return this.b;
    }

    public final void c() {
        ViewTreeLifecycleOwner.set(getWindow().getDecorView(), this);
        ViewTreeSavedStateRegistryOwner.set(getWindow().getDecorView(), this);
        ViewTreeOnBackPressedDispatcherOwner.set(getWindow().getDecorView(), this);
    }

    public final boolean d(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        super.dismiss();
        b().f();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return KeyEventDispatcher.dispatchKeyEvent(this.f4055c, getWindow().getDecorView(), this, keyEvent);
    }

    @Override // android.app.Dialog
    public final View findViewById(int i3) {
        B b = (B) b();
        b.w();
        return b.f4041m.findViewById(i3);
    }

    @Override // android.app.Dialog
    public final void invalidateOptionsMenu() {
        b().b();
    }

    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        b().a();
        super.onCreate(bundle);
        b().e();
    }

    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    public final void onStop() {
        super.onStop();
        B b = (B) b();
        b.A();
        M m2 = b.f4044p;
        if (m2 != null) {
            m2.f4090u = false;
            j jVar = m2.f4089t;
            if (jVar != null) {
                jVar.a();
            }
        }
    }

    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    public void setContentView(int i3) {
        c();
        b().j(i3);
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        b().m(charSequence);
    }

    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    public void setContentView(View view) {
        c();
        b().k(view);
    }

    @Override // android.app.Dialog
    public final void setTitle(int i3) {
        super.setTitle(i3);
        b().m(getContext().getString(i3));
    }

    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        c();
        b().l(view, layoutParams);
    }
}
