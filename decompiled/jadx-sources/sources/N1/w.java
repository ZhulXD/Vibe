package N1;

import C1.V;
import C1.ViewOnClickListenerC0075j;
import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.util.SparseArray;
import android.view.ActionMode;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.core.internal.view.SupportMenu;
import androidx.core.internal.view.SupportMenuItem;
import androidx.core.util.Preconditions;
import androidx.core.view.GravityCompat;
import com.minhub.gamehub.R;
import java.math.BigInteger;
import java.security.Signature;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.crypto.Cipher;
import javax.crypto.Mac;
import kotlin.jvm.internal.Intrinsics;
import p024j.F;
import p064y1.C0368e;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f1493a;
    public Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f1494c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f1495d;

    public w(BigInteger x2, BigInteger y2, BigInteger z2, BigInteger t2) {
        Intrinsics.checkNotNullParameter(x2, "x");
        Intrinsics.checkNotNullParameter(y2, "y");
        Intrinsics.checkNotNullParameter(z2, "z");
        Intrinsics.checkNotNullParameter(t2, "t");
        this.f1493a = x2;
        this.b = y2;
        this.f1494c = z2;
        this.f1495d = t2;
    }

    public int a(int i3) {
        return (int) (i3 * ((Context) this.f1493a).getResources().getDisplayMetrics().density);
    }

    public p021i.e b(p021i.a aVar) {
        ArrayList arrayList = (ArrayList) this.f1494c;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            p021i.e eVar = (p021i.e) arrayList.get(i3);
            if (eVar != null && eVar.b == aVar) {
                return eVar;
            }
        }
        p021i.e eVar2 = new p021i.e((Context) this.b, aVar);
        arrayList.add(eVar2);
        return eVar2;
    }

    public boolean c(p021i.a aVar, MenuItem menuItem) {
        return ((ActionMode.Callback) this.f1493a).onActionItemClicked(b(aVar), new p024j.x((Context) this.b, (SupportMenuItem) menuItem));
    }

    public boolean d(p021i.a aVar, Menu menu) {
        ActionMode.Callback callback = (ActionMode.Callback) this.f1493a;
        p021i.e eVarB = b(aVar);
        p041q.j jVar = (p041q.j) this.f1495d;
        Menu f = (Menu) jVar.get(menu);
        if (f == null) {
            f = new F((Context) this.b, (SupportMenu) menu);
            jVar.put(menu, f);
        }
        return callback.onCreateActionMode(eVarB, f);
    }

    public void e(List list, boolean z2) {
        PopupWindow popupWindow = (PopupWindow) this.f1495d;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
        this.f1495d = null;
        Context context = (Context) this.f1493a;
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.view_ingame_basic_cheat_panel, (ViewGroup) null, false);
        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.layout_basic_cheat_items);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            C0368e c0368e = (C0368e) it.next();
            View viewInflate2 = LayoutInflater.from(context).inflate(R.layout.item_basic_cheat_action, (ViewGroup) null, false);
            ((TextView) viewInflate2.findViewById(R.id.tv_basic_cheat_action)).setText(c0368e.b);
            viewInflate2.setOnClickListener(new ViewOnClickListenerC0075j(26, this, c0368e));
            Intrinsics.checkNotNullExpressionValue(viewInflate2, "apply(...)");
            linearLayout.addView(viewInflate2);
        }
        if (z2) {
            View viewInflate3 = LayoutInflater.from(context).inflate(R.layout.item_basic_cheat_action, (ViewGroup) null, false);
            ((TextView) viewInflate3.findViewById(R.id.tv_basic_cheat_action)).setText("Stats Menu");
            viewInflate3.setOnClickListener(new V(8, this));
            Intrinsics.checkNotNullExpressionValue(viewInflate3, "apply(...)");
            linearLayout.addView(viewInflate3);
        }
        PopupWindow popupWindow2 = new PopupWindow(viewInflate, a(220), -2, true);
        popupWindow2.setOutsideTouchable(true);
        popupWindow2.setElevation(a(14));
        popupWindow2.setBackgroundDrawable(new ColorDrawable(0));
        popupWindow2.showAsDropDown((View) this.b, a(6), a(8), GravityCompat.END);
        popupWindow2.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: y1.c
            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                this.b.f1495d = null;
            }
        });
        this.f1495d = popupWindow2;
    }

    public w() {
        this.f1493a = new p041q.e(0);
        this.b = new SparseArray();
        this.f1494c = new p041q.g();
        this.f1495d = new p041q.e(0);
    }

    public w(Typeface typeface, G.b bVar) {
        int i3;
        int i4;
        int i5;
        int i6;
        this.f1495d = typeface;
        this.f1493a = bVar;
        this.f1494c = new androidx.emoji2.text.s(1024);
        int iA = bVar.a(6);
        if (iA != 0) {
            int i7 = iA + bVar.f984a;
            i3 = bVar.b.getInt(bVar.b.getInt(i7) + i7);
        } else {
            i3 = 0;
        }
        this.b = new char[i3 * 2];
        int iA2 = bVar.a(6);
        if (iA2 != 0) {
            int i8 = iA2 + bVar.f984a;
            i4 = bVar.b.getInt(bVar.b.getInt(i8) + i8);
        } else {
            i4 = 0;
        }
        for (int i9 = 0; i9 < i4; i9++) {
            androidx.emoji2.text.v vVar = new androidx.emoji2.text.v(this, i9);
            G.a aVarB = vVar.b();
            int iA3 = aVarB.a(4);
            Character.toChars(iA3 != 0 ? aVarB.b.getInt(iA3 + aVarB.f984a) : 0, (char[]) this.b, i9 * 2);
            Preconditions.checkNotNull(vVar, "emoji metadata cannot be null");
            G.a aVarB2 = vVar.b();
            int iA4 = aVarB2.a(16);
            if (iA4 != 0) {
                int i10 = iA4 + aVarB2.f984a;
                i5 = aVarB2.b.getInt(aVarB2.b.getInt(i10) + i10);
            } else {
                i5 = 0;
            }
            Preconditions.checkArgument(i5 > 0, "invalid metadata codepoint length");
            androidx.emoji2.text.s sVar = (androidx.emoji2.text.s) this.f1494c;
            G.a aVarB3 = vVar.b();
            int iA5 = aVarB3.a(16);
            if (iA5 != 0) {
                int i11 = iA5 + aVarB3.f984a;
                i6 = aVarB3.b.getInt(aVarB3.b.getInt(i11) + i11);
            } else {
                i6 = 0;
            }
            sVar.a(vVar, 0, i6 - 1);
        }
    }

    public w(Signature signature) {
        this.f1493a = signature;
        this.b = null;
        this.f1494c = null;
        this.f1495d = null;
    }

    public w(Cipher cipher) {
        this.f1493a = null;
        this.b = cipher;
        this.f1494c = null;
        this.f1495d = null;
    }

    public w(Mac mac) {
        this.f1493a = null;
        this.b = null;
        this.f1494c = mac;
        this.f1495d = null;
    }
}
