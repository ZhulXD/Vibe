package p024j;

import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.AdapterView;
import androidx.appcompat.view.menu.ExpandedMenuView;
import p011e.C0240b;
import p011e.C0244f;
import p011e.DialogInterfaceC0245g;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class l implements C, AdapterView.OnItemClickListener {
    public Context b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public LayoutInflater f4545c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public p f4546d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ExpandedMenuView f4547e;
    public B f;
    public k g;

    public l(ContextWrapper contextWrapper) {
        this.b = contextWrapper;
        this.f4545c = LayoutInflater.from(contextWrapper);
    }

    @Override // p024j.C
    public final void a(p pVar, boolean z2) {
        B b = this.f;
        if (b != null) {
            b.a(pVar, z2);
        }
    }

    @Override // p024j.C
    public final boolean d(s sVar) {
        return false;
    }

    @Override // p024j.C
    public final void e(Parcelable parcelable) {
        SparseArray<Parcelable> sparseParcelableArray = ((Bundle) parcelable).getSparseParcelableArray("android:menu:list");
        if (sparseParcelableArray != null) {
            this.f4547e.restoreHierarchyState(sparseParcelableArray);
        }
    }

    @Override // p024j.C
    public final void g(boolean z2) {
        k kVar = this.g;
        if (kVar != null) {
            kVar.notifyDataSetChanged();
        }
    }

    @Override // p024j.C
    public final int getId() {
        return 0;
    }

    @Override // p024j.C
    public final void h(Context context, p pVar) {
        if (this.b != null) {
            this.b = context;
            if (this.f4545c == null) {
                this.f4545c = LayoutInflater.from(context);
            }
        }
        this.f4546d = pVar;
        k kVar = this.g;
        if (kVar != null) {
            kVar.notifyDataSetChanged();
        }
    }

    @Override // p024j.C
    public final boolean i() {
        return false;
    }

    @Override // p024j.C
    public final Parcelable j() {
        if (this.f4547e == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        ExpandedMenuView expandedMenuView = this.f4547e;
        if (expandedMenuView != null) {
            expandedMenuView.saveHierarchyState(sparseArray);
        }
        bundle.putSparseParcelableArray("android:menu:list", sparseArray);
        return bundle;
    }

    @Override // p024j.C
    public final boolean k(s sVar) {
        return false;
    }

    @Override // p024j.C
    public final void l(B b) {
        throw null;
    }

    @Override // p024j.C
    public final boolean m(I i3) {
        boolean zHasVisibleItems = i3.hasVisibleItems();
        Context context = i3.f4553a;
        if (!zHasVisibleItems) {
            return false;
        }
        q qVar = new q();
        qVar.b = i3;
        C0244f c0244f = new C0244f(context);
        C0240b c0240b = (C0240b) c0244f.f4145c;
        l lVar = new l(c0240b.f4096a);
        qVar.f4575d = lVar;
        lVar.f = qVar;
        i3.b(lVar, context);
        l lVar2 = qVar.f4575d;
        if (lVar2.g == null) {
            lVar2.g = new k(lVar2);
        }
        c0240b.f4110r = lVar2.g;
        c0240b.f4111s = qVar;
        View view = i3.f4564o;
        if (view != null) {
            c0240b.f4099e = view;
        } else {
            c0240b.f4097c = i3.f4563n;
            c0240b.f4098d = i3.f4562m;
        }
        c0240b.f4108p = qVar;
        DialogInterfaceC0245g dialogInterfaceC0245gC = c0244f.c();
        qVar.f4574c = dialogInterfaceC0245gC;
        dialogInterfaceC0245gC.setOnDismissListener(qVar);
        WindowManager.LayoutParams attributes = qVar.f4574c.getWindow().getAttributes();
        attributes.type = 1003;
        attributes.flags |= 131072;
        qVar.f4574c.show();
        B b = this.f;
        if (b == null) {
            return true;
        }
        b.i(i3);
        return true;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i3, long j2) {
        this.f4546d.q(this.g.getItem(i3), this, 0);
    }
}
