package p024j;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.core.content.ContextCompat;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ActionProvider;
import androidx.core.view.ViewConfigurationCompat;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class p implements SupportMenu {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final int[] f4552y = {1, 4, 5, 3, 2, 0};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f4553a;
    public final Resources b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f4554c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f4555d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public n f4556e;
    public final ArrayList f;
    public final ArrayList g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f4557h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ArrayList f4558i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ArrayList f4559j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f4560k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public CharSequence f4562m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Drawable f4563n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public View f4564o;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public s f4571v;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f4573x;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f4561l = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f4565p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f4566q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f4567r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f4568s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final ArrayList f4569t = new ArrayList();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final CopyOnWriteArrayList f4570u = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f4572w = false;

    public p(Context context) {
        boolean z2 = false;
        this.f4553a = context;
        Resources resources = context.getResources();
        this.b = resources;
        this.f = new ArrayList();
        this.g = new ArrayList();
        this.f4557h = true;
        this.f4558i = new ArrayList();
        this.f4559j = new ArrayList();
        this.f4560k = true;
        if (resources.getConfiguration().keyboard != 1 && ViewConfigurationCompat.shouldShowMenuShortcutsWhenKeyboardPresent(ViewConfiguration.get(context), context)) {
            z2 = true;
        }
        this.f4555d = z2;
    }

    public s a(int i3, int i4, int i5, CharSequence charSequence) {
        int i6;
        int i7 = ((-65536) & i5) >> 16;
        if (i7 < 0 || i7 >= 6) {
            throw new IllegalArgumentException("order does not contain a valid category.");
        }
        int i8 = (f4552y[i7] << 16) | (65535 & i5);
        s sVar = new s(this, i3, i4, i5, i8, charSequence, this.f4561l);
        ArrayList arrayList = this.f;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (((s) arrayList.get(size)).f4582d <= i8) {
                i6 = size + 1;
                arrayList.add(i6, sVar);
                p(true);
                return sVar;
            }
        }
        i6 = 0;
        arrayList.add(i6, sVar);
        p(true);
        return sVar;
    }

    @Override // android.view.Menu
    public final MenuItem add(CharSequence charSequence) {
        return a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public final int addIntentOptions(int i3, int i4, int i5, ComponentName componentName, Intent[] intentArr, Intent intent, int i6, MenuItem[] menuItemArr) {
        int i7;
        PackageManager packageManager = this.f4553a.getPackageManager();
        List<ResolveInfo> listQueryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = listQueryIntentActivityOptions != null ? listQueryIntentActivityOptions.size() : 0;
        if ((i6 & 1) == 0) {
            removeGroup(i3);
        }
        for (int i8 = 0; i8 < size; i8++) {
            ResolveInfo resolveInfo = listQueryIntentActivityOptions.get(i8);
            int i9 = resolveInfo.specificIndex;
            Intent intent2 = new Intent(i9 < 0 ? intent : intentArr[i9]);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent2.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
            s sVarA = a(i3, i4, i5, resolveInfo.loadLabel(packageManager));
            sVarA.setIcon(resolveInfo.loadIcon(packageManager));
            sVarA.g = intent2;
            if (menuItemArr != null && (i7 = resolveInfo.specificIndex) >= 0) {
                menuItemArr[i7] = sVarA;
            }
        }
        return size;
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    public final void b(C c3, Context context) {
        this.f4570u.add(new WeakReference(c3));
        c3.h(context, this);
        this.f4560k = true;
    }

    public final void c(boolean z2) {
        if (this.f4568s) {
            return;
        }
        this.f4568s = true;
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.f4570u;
        for (WeakReference weakReference : copyOnWriteArrayList) {
            C c3 = (C) weakReference.get();
            if (c3 == null) {
                copyOnWriteArrayList.remove(weakReference);
            } else {
                c3.a(this, z2);
            }
        }
        this.f4568s = false;
    }

    @Override // android.view.Menu
    public final void clear() {
        s sVar = this.f4571v;
        if (sVar != null) {
            d(sVar);
        }
        this.f.clear();
        p(true);
    }

    public final void clearHeader() {
        this.f4563n = null;
        this.f4562m = null;
        this.f4564o = null;
        p(false);
    }

    @Override // android.view.Menu
    public final void close() {
        c(true);
    }

    public boolean d(s sVar) {
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.f4570u;
        boolean zK = false;
        if (!copyOnWriteArrayList.isEmpty() && this.f4571v == sVar) {
            w();
            for (WeakReference weakReference : copyOnWriteArrayList) {
                C c3 = (C) weakReference.get();
                if (c3 != null) {
                    zK = c3.k(sVar);
                    if (zK) {
                        break;
                    }
                } else {
                    copyOnWriteArrayList.remove(weakReference);
                }
            }
            v();
            if (zK) {
                this.f4571v = null;
            }
        }
        return zK;
    }

    public boolean e(p pVar, MenuItem menuItem) {
        n nVar = this.f4556e;
        return nVar != null && nVar.h(pVar, menuItem);
    }

    public boolean f(s sVar) {
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.f4570u;
        boolean zD = false;
        if (copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        w();
        for (WeakReference weakReference : copyOnWriteArrayList) {
            C c3 = (C) weakReference.get();
            if (c3 != null) {
                zD = c3.d(sVar);
                if (zD) {
                    break;
                }
            } else {
                copyOnWriteArrayList.remove(weakReference);
            }
        }
        v();
        if (zD) {
            this.f4571v = sVar;
        }
        return zD;
    }

    @Override // android.view.Menu
    public final MenuItem findItem(int i3) {
        MenuItem menuItemFindItem;
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            s sVar = (s) arrayList.get(i4);
            if (sVar.f4580a == i3) {
                return sVar;
            }
            if (sVar.hasSubMenu() && (menuItemFindItem = sVar.f4591o.findItem(i3)) != null) {
                return menuItemFindItem;
            }
        }
        return null;
    }

    public final s g(int i3, KeyEvent keyEvent) {
        ArrayList arrayList = this.f4569t;
        arrayList.clear();
        h(arrayList, i3, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return (s) arrayList.get(0);
        }
        boolean zN = n();
        for (int i4 = 0; i4 < size; i4++) {
            s sVar = (s) arrayList.get(i4);
            char c3 = zN ? sVar.f4586j : sVar.f4584h;
            char[] cArr = keyData.meta;
            if ((c3 == cArr[0] && (metaState & 2) == 0) || ((c3 == cArr[2] && (metaState & 2) != 0) || (zN && c3 == '\b' && i3 == 67))) {
                return sVar;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public final MenuItem getItem(int i3) {
        return (MenuItem) this.f.get(i3);
    }

    public final void h(List list, int i3, KeyEvent keyEvent) {
        boolean zN = n();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i3 == 67) {
            ArrayList arrayList = this.f;
            int size = arrayList.size();
            for (int i4 = 0; i4 < size; i4++) {
                s sVar = (s) arrayList.get(i4);
                if (sVar.hasSubMenu()) {
                    sVar.f4591o.h(list, i3, keyEvent);
                }
                char c3 = zN ? sVar.f4586j : sVar.f4584h;
                if ((modifiers & SupportMenu.SUPPORTED_MODIFIERS_MASK) == ((zN ? sVar.f4587k : sVar.f4585i) & SupportMenu.SUPPORTED_MODIFIERS_MASK) && c3 != 0) {
                    char[] cArr = keyData.meta;
                    if ((c3 == cArr[0] || c3 == cArr[2] || (zN && c3 == '\b' && i3 == 67)) && sVar.isEnabled()) {
                        list.add(sVar);
                    }
                }
            }
        }
    }

    @Override // android.view.Menu
    public final boolean hasVisibleItems() {
        if (this.f4573x) {
            return true;
        }
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            if (((s) arrayList.get(i3)).isVisible()) {
                return true;
            }
        }
        return false;
    }

    public final void i() {
        ArrayList arrayListL = l();
        if (this.f4560k) {
            CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.f4570u;
            boolean zI = false;
            for (WeakReference weakReference : copyOnWriteArrayList) {
                C c3 = (C) weakReference.get();
                if (c3 == null) {
                    copyOnWriteArrayList.remove(weakReference);
                } else {
                    zI |= c3.i();
                }
            }
            ArrayList arrayList = this.f4558i;
            ArrayList arrayList2 = this.f4559j;
            if (zI) {
                arrayList.clear();
                arrayList2.clear();
                int size = arrayListL.size();
                for (int i3 = 0; i3 < size; i3++) {
                    s sVar = (s) arrayListL.get(i3);
                    if ((sVar.f4600x & 32) == 32) {
                        arrayList.add(sVar);
                    } else {
                        arrayList2.add(sVar);
                    }
                }
            } else {
                arrayList.clear();
                arrayList2.clear();
                arrayList2.addAll(l());
            }
            this.f4560k = false;
        }
    }

    @Override // android.view.Menu
    public final boolean isShortcutKey(int i3, KeyEvent keyEvent) {
        return g(i3, keyEvent) != null;
    }

    public String j() {
        return "android:menu:actionviewstates";
    }

    public final ArrayList l() {
        boolean z2 = this.f4557h;
        ArrayList arrayList = this.g;
        if (!z2) {
            return arrayList;
        }
        arrayList.clear();
        ArrayList arrayList2 = this.f;
        int size = arrayList2.size();
        for (int i3 = 0; i3 < size; i3++) {
            s sVar = (s) arrayList2.get(i3);
            if (sVar.isVisible()) {
                arrayList.add(sVar);
            }
        }
        this.f4557h = false;
        this.f4560k = true;
        return arrayList;
    }

    public boolean m() {
        return this.f4572w;
    }

    public boolean n() {
        return this.f4554c;
    }

    public boolean o() {
        return this.f4555d;
    }

    public final void p(boolean z2) {
        if (this.f4565p) {
            this.f4566q = true;
            if (z2) {
                this.f4567r = true;
                return;
            }
            return;
        }
        if (z2) {
            this.f4557h = true;
            this.f4560k = true;
        }
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.f4570u;
        if (copyOnWriteArrayList.isEmpty()) {
            return;
        }
        w();
        for (WeakReference weakReference : copyOnWriteArrayList) {
            C c3 = (C) weakReference.get();
            if (c3 == null) {
                copyOnWriteArrayList.remove(weakReference);
            } else {
                c3.g(z2);
            }
        }
        v();
    }

    @Override // android.view.Menu
    public final boolean performIdentifierAction(int i3, int i4) {
        return q(findItem(i3), null, i4);
    }

    @Override // android.view.Menu
    public final boolean performShortcut(int i3, KeyEvent keyEvent, int i4) {
        s sVarG = g(i3, keyEvent);
        boolean zQ = sVarG != null ? q(sVarG, null, i4) : false;
        if ((i4 & 2) != 0) {
            c(true);
        }
        return zQ;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001a  */
    /* JADX WARN: Code duplicated, block: B:32:0x004d  */
    /* JADX WARN: Code duplicated, block: B:35:0x0054  */
    /* JADX WARN: Code duplicated, block: B:37:0x005b  */
    /* JADX WARN: Code duplicated, block: B:38:0x0060  */
    /* JADX WARN: Code duplicated, block: B:45:0x0071  */
    /* JADX WARN: Code duplicated, block: B:47:0x0075  */
    /* JADX WARN: Code duplicated, block: B:50:0x007e  */
    /* JADX WARN: Code duplicated, block: B:53:0x0090  */
    /* JADX WARN: Code duplicated, block: B:57:0x009c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:58:0x009e  */
    /* JADX WARN: Code duplicated, block: B:62:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:69:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:75:0x00be A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:76:0x00c0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:77:0x00ba A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:79:0x00a6 A[SYNTHETIC] */
    public final boolean q(MenuItem menuItem, C c3, int i3) {
        ActionProvider actionProvider;
        boolean zExpandActionView;
        ActionProvider actionProvider2;
        boolean z2;
        I i4;
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList;
        C c4;
        s sVar = (s) menuItem;
        boolean zM = false;
        if (sVar == null || !sVar.isEnabled()) {
            return false;
        }
        p pVar = sVar.f4590n;
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = sVar.f4592p;
        if ((onMenuItemClickListener == null || !onMenuItemClickListener.onMenuItemClick(sVar)) && !pVar.e(pVar, sVar)) {
            Intent intent = sVar.g;
            if (intent != null) {
                try {
                    pVar.f4553a.startActivity(intent);
                } catch (ActivityNotFoundException e2) {
                    Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", e2);
                    actionProvider = sVar.f4577A;
                    if (actionProvider == null) {
                    }
                    zExpandActionView = false;
                    actionProvider2 = sVar.f4577A;
                    if (actionProvider2 == null) {
                        z2 = false;
                    } else {
                        z2 = false;
                    }
                    if (sVar.c()) {
                        zExpandActionView |= sVar.expandActionView();
                        if (zExpandActionView) {
                            c(true);
                        }
                    } else if (sVar.hasSubMenu()) {
                        if ((i3 & 4) == 0) {
                            c(false);
                        }
                        if (!sVar.hasSubMenu()) {
                            I i5 = new I(this.f4553a, this, sVar);
                            sVar.f4591o = i5;
                            i5.setHeaderTitle(sVar.f4583e);
                        }
                        i4 = sVar.f4591o;
                        if (z2) {
                            actionProvider2.onPrepareSubMenu(i4);
                        }
                        copyOnWriteArrayList = this.f4570u;
                        if (!copyOnWriteArrayList.isEmpty()) {
                            if (c3 != null) {
                            }
                            for (WeakReference weakReference : copyOnWriteArrayList) {
                                c4 = (C) weakReference.get();
                                if (c4 == null) {
                                    copyOnWriteArrayList.remove(weakReference);
                                } else if (!zM) {
                                    zM = c4.m(i4);
                                }
                            }
                        }
                        zExpandActionView |= zM;
                        if (!zExpandActionView) {
                            c(true);
                        }
                    } else {
                        if ((i3 & 4) == 0) {
                            c(false);
                        }
                        if (!sVar.hasSubMenu()) {
                            I i6 = new I(this.f4553a, this, sVar);
                            sVar.f4591o = i6;
                            i6.setHeaderTitle(sVar.f4583e);
                        }
                        i4 = sVar.f4591o;
                        if (z2) {
                            actionProvider2.onPrepareSubMenu(i4);
                        }
                        copyOnWriteArrayList = this.f4570u;
                        if (!copyOnWriteArrayList.isEmpty()) {
                            zM = c3 != null ? c3.m(i4) : false;
                            while (r8.hasNext()) {
                                c4 = (C) weakReference.get();
                                if (c4 == null) {
                                    copyOnWriteArrayList.remove(weakReference);
                                } else if (!zM) {
                                    zM = c4.m(i4);
                                }
                            }
                        }
                        zExpandActionView |= zM;
                        if (!zExpandActionView) {
                            c(true);
                        }
                    }
                    return zExpandActionView;
                }
                zExpandActionView = true;
            } else {
                actionProvider = sVar.f4577A;
                if (actionProvider == null && actionProvider.onPerformDefaultAction()) {
                    zExpandActionView = true;
                } else {
                    zExpandActionView = false;
                }
            }
        } else {
            zExpandActionView = true;
        }
        actionProvider2 = sVar.f4577A;
        if (actionProvider2 == null && actionProvider2.hasSubMenu()) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (sVar.c()) {
            zExpandActionView |= sVar.expandActionView();
            if (zExpandActionView) {
                c(true);
            }
        } else if (sVar.hasSubMenu() || z2) {
            if ((i3 & 4) == 0) {
                c(false);
            }
            if (!sVar.hasSubMenu()) {
                I i7 = new I(this.f4553a, this, sVar);
                sVar.f4591o = i7;
                i7.setHeaderTitle(sVar.f4583e);
            }
            i4 = sVar.f4591o;
            if (z2) {
                actionProvider2.onPrepareSubMenu(i4);
            }
            copyOnWriteArrayList = this.f4570u;
            if (!copyOnWriteArrayList.isEmpty()) {
                if (c3 != null) {
                }
                while (r8.hasNext()) {
                    c4 = (C) weakReference.get();
                    if (c4 == null) {
                        copyOnWriteArrayList.remove(weakReference);
                    } else if (!zM) {
                        zM = c4.m(i4);
                    }
                }
            }
            zExpandActionView |= zM;
            if (!zExpandActionView) {
                c(true);
            }
        } else if ((i3 & 1) == 0) {
            c(true);
        }
        return zExpandActionView;
    }

    public final void r(C c3) {
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.f4570u;
        for (WeakReference weakReference : copyOnWriteArrayList) {
            C c4 = (C) weakReference.get();
            if (c4 == null || c4 == c3) {
                copyOnWriteArrayList.remove(weakReference);
            }
        }
    }

    @Override // android.view.Menu
    public final void removeGroup(int i3) {
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        int i4 = 0;
        int i5 = 0;
        while (true) {
            if (i5 >= size) {
                i5 = -1;
                break;
            } else if (((s) arrayList.get(i5)).b == i3) {
                break;
            } else {
                i5++;
            }
        }
        if (i5 >= 0) {
            int size2 = arrayList.size() - i5;
            while (true) {
                int i6 = i4 + 1;
                if (i4 >= size2 || ((s) arrayList.get(i5)).b != i3) {
                    break;
                }
                if (i5 >= 0 && i5 < arrayList.size()) {
                    arrayList.remove(i5);
                }
                i4 = i6;
            }
            p(true);
        }
    }

    @Override // android.view.Menu
    public final void removeItem(int i3) {
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        int i4 = 0;
        while (true) {
            if (i4 >= size) {
                i4 = -1;
                break;
            } else if (((s) arrayList.get(i4)).f4580a == i3) {
                break;
            } else {
                i4++;
            }
        }
        if (i4 < 0 || i4 >= arrayList.size()) {
            return;
        }
        arrayList.remove(i4);
        p(true);
    }

    public final void s(Bundle bundle) {
        MenuItem menuItemFindItem;
        if (bundle == null) {
            return;
        }
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(j());
        int size = this.f.size();
        for (int i3 = 0; i3 < size; i3++) {
            MenuItem item = getItem(i3);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                actionView.restoreHierarchyState(sparseParcelableArray);
            }
            if (item.hasSubMenu()) {
                ((I) item.getSubMenu()).s(bundle);
            }
        }
        int i4 = bundle.getInt("android:menu:expandedactionview");
        if (i4 <= 0 || (menuItemFindItem = findItem(i4)) == null) {
            return;
        }
        menuItemFindItem.expandActionView();
    }

    @Override // android.view.Menu
    public final void setGroupCheckable(int i3, boolean z2, boolean z3) {
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            s sVar = (s) arrayList.get(i4);
            if (sVar.b == i3) {
                sVar.d(z3);
                sVar.setCheckable(z2);
            }
        }
    }

    @Override // androidx.core.internal.view.SupportMenu, android.view.Menu
    public void setGroupDividerEnabled(boolean z2) {
        this.f4572w = z2;
    }

    @Override // android.view.Menu
    public final void setGroupEnabled(int i3, boolean z2) {
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            s sVar = (s) arrayList.get(i4);
            if (sVar.b == i3) {
                sVar.setEnabled(z2);
            }
        }
    }

    @Override // android.view.Menu
    public final void setGroupVisible(int i3, boolean z2) {
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        boolean z3 = false;
        for (int i4 = 0; i4 < size; i4++) {
            s sVar = (s) arrayList.get(i4);
            if (sVar.b == i3) {
                int i5 = sVar.f4600x;
                int i6 = (i5 & (-9)) | (z2 ? 0 : 8);
                sVar.f4600x = i6;
                if (i5 != i6) {
                    z3 = true;
                }
            }
        }
        if (z3) {
            p(true);
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z2) {
        this.f4554c = z2;
        p(false);
    }

    @Override // android.view.Menu
    public final int size() {
        return this.f.size();
    }

    public final void t(Bundle bundle) {
        int size = this.f.size();
        SparseArray<? extends Parcelable> sparseArray = null;
        for (int i3 = 0; i3 < size; i3++) {
            MenuItem item = getItem(i3);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                actionView.saveHierarchyState(sparseArray);
                if (item.isActionViewExpanded()) {
                    bundle.putInt("android:menu:expandedactionview", item.getItemId());
                }
            }
            if (item.hasSubMenu()) {
                ((I) item.getSubMenu()).t(bundle);
            }
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(j(), sparseArray);
        }
    }

    public final void u(int i3, CharSequence charSequence, int i4, Drawable drawable, View view) {
        if (view != null) {
            this.f4564o = view;
            this.f4562m = null;
            this.f4563n = null;
        } else {
            if (i3 > 0) {
                this.f4562m = this.b.getText(i3);
            } else if (charSequence != null) {
                this.f4562m = charSequence;
            }
            if (i4 > 0) {
                this.f4563n = ContextCompat.getDrawable(this.f4553a, i4);
            } else if (drawable != null) {
                this.f4563n = drawable;
            }
            this.f4564o = null;
        }
        p(false);
    }

    public final void v() {
        this.f4565p = false;
        if (this.f4566q) {
            this.f4566q = false;
            p(this.f4567r);
        }
    }

    public final void w() {
        if (this.f4565p) {
            return;
        }
        this.f4565p = true;
        this.f4566q = false;
        this.f4567r = false;
    }

    @Override // android.view.Menu
    public final MenuItem add(int i3) {
        return a(0, 0, 0, this.b.getString(i3));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i3) {
        return addSubMenu(0, 0, 0, this.b.getString(i3));
    }

    @Override // android.view.Menu
    public final MenuItem add(int i3, int i4, int i5, CharSequence charSequence) {
        return a(i3, i4, i5, charSequence);
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i3, int i4, int i5, CharSequence charSequence) {
        s sVarA = a(i3, i4, i5, charSequence);
        I i6 = new I(this.f4553a, this, sVarA);
        sVarA.f4591o = i6;
        i6.setHeaderTitle(sVarA.f4583e);
        return i6;
    }

    @Override // android.view.Menu
    public final MenuItem add(int i3, int i4, int i5, int i6) {
        return a(i3, i4, i5, this.b.getString(i6));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i3, int i4, int i5, int i6) {
        return addSubMenu(i3, i4, i5, this.b.getString(i6));
    }

    public p k() {
        return this;
    }
}
