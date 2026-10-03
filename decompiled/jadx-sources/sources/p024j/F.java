package p024j;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.core.internal.view.SupportMenu;
import androidx.core.internal.view.SupportMenuItem;
import p041q.j;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class F extends AbstractC0266e implements Menu {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final SupportMenu f4470d;

    public F(Context context, SupportMenu supportMenu) {
        super(context);
        if (supportMenu == null) {
            throw new IllegalArgumentException("Wrapped Object can not be null.");
        }
        this.f4470d = supportMenu;
    }

    @Override // android.view.Menu
    public final MenuItem add(CharSequence charSequence) {
        return a(this.f4470d.add(charSequence));
    }

    @Override // android.view.Menu
    public final int addIntentOptions(int i3, int i4, int i5, ComponentName componentName, Intent[] intentArr, Intent intent, int i6, MenuItem[] menuItemArr) {
        MenuItem[] menuItemArr2 = menuItemArr != null ? new MenuItem[menuItemArr.length] : null;
        int iAddIntentOptions = this.f4470d.addIntentOptions(i3, i4, i5, componentName, intentArr, intent, i6, menuItemArr2);
        if (menuItemArr2 != null) {
            int length = menuItemArr2.length;
            for (int i7 = 0; i7 < length; i7++) {
                menuItemArr[i7] = a(menuItemArr2[i7]);
            }
        }
        return iAddIntentOptions;
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(CharSequence charSequence) {
        return b(this.f4470d.addSubMenu(charSequence));
    }

    @Override // android.view.Menu
    public final void clear() {
        j jVar = this.b;
        if (jVar != null) {
            jVar.clear();
        }
        j jVar2 = this.f4513c;
        if (jVar2 != null) {
            jVar2.clear();
        }
        this.f4470d.clear();
    }

    @Override // android.view.Menu
    public final void close() {
        this.f4470d.close();
    }

    @Override // android.view.Menu
    public final MenuItem findItem(int i3) {
        return a(this.f4470d.findItem(i3));
    }

    @Override // android.view.Menu
    public final MenuItem getItem(int i3) {
        return a(this.f4470d.getItem(i3));
    }

    @Override // android.view.Menu
    public final boolean hasVisibleItems() {
        return this.f4470d.hasVisibleItems();
    }

    @Override // android.view.Menu
    public final boolean isShortcutKey(int i3, KeyEvent keyEvent) {
        return this.f4470d.isShortcutKey(i3, keyEvent);
    }

    @Override // android.view.Menu
    public final boolean performIdentifierAction(int i3, int i4) {
        return this.f4470d.performIdentifierAction(i3, i4);
    }

    @Override // android.view.Menu
    public final boolean performShortcut(int i3, KeyEvent keyEvent, int i4) {
        return this.f4470d.performShortcut(i3, keyEvent, i4);
    }

    @Override // android.view.Menu
    public final void removeGroup(int i3) {
        if (this.b != null) {
            int i4 = 0;
            while (true) {
                j jVar = this.b;
                if (i4 >= jVar.f5258d) {
                    break;
                }
                if (((SupportMenuItem) jVar.f(i4)).getGroupId() == i3) {
                    this.b.h(i4);
                    i4--;
                }
                i4++;
            }
        }
        this.f4470d.removeGroup(i3);
    }

    @Override // android.view.Menu
    public final void removeItem(int i3) {
        if (this.b != null) {
            int i4 = 0;
            while (true) {
                j jVar = this.b;
                if (i4 >= jVar.f5258d) {
                    break;
                }
                if (((SupportMenuItem) jVar.f(i4)).getItemId() == i3) {
                    this.b.h(i4);
                    break;
                }
                i4++;
            }
        }
        this.f4470d.removeItem(i3);
    }

    @Override // android.view.Menu
    public final void setGroupCheckable(int i3, boolean z2, boolean z3) {
        this.f4470d.setGroupCheckable(i3, z2, z3);
    }

    @Override // android.view.Menu
    public final void setGroupEnabled(int i3, boolean z2) {
        this.f4470d.setGroupEnabled(i3, z2);
    }

    @Override // android.view.Menu
    public final void setGroupVisible(int i3, boolean z2) {
        this.f4470d.setGroupVisible(i3, z2);
    }

    @Override // android.view.Menu
    public final void setQwertyMode(boolean z2) {
        this.f4470d.setQwertyMode(z2);
    }

    @Override // android.view.Menu
    public final int size() {
        return this.f4470d.size();
    }

    @Override // android.view.Menu
    public final MenuItem add(int i3) {
        return a(this.f4470d.add(i3));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i3) {
        return b(this.f4470d.addSubMenu(i3));
    }

    @Override // android.view.Menu
    public final MenuItem add(int i3, int i4, int i5, CharSequence charSequence) {
        return a(this.f4470d.add(i3, i4, i5, charSequence));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i3, int i4, int i5, CharSequence charSequence) {
        return b(this.f4470d.addSubMenu(i3, i4, i5, charSequence));
    }

    @Override // android.view.Menu
    public final MenuItem add(int i3, int i4, int i5, int i6) {
        return a(this.f4470d.add(i3, i4, i5, i6));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i3, int i4, int i5, int i6) {
        return b(this.f4470d.addSubMenu(i3, i4, i5, i6));
    }
}
