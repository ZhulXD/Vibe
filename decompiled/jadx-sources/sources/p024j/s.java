package p024j;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.internal.view.SupportMenuItem;
import androidx.core.view.ActionProvider;
import com.bumptech.glide.d;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class s implements SupportMenuItem {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public ActionProvider f4577A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public MenuItem.OnActionExpandListener f4578B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4580a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f4581c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f4582d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CharSequence f4583e;
    public CharSequence f;
    public Intent g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public char f4584h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public char f4586j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Drawable f4588l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final p f4590n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public I f4591o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public MenuItem.OnMenuItemClickListener f4592p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public CharSequence f4593q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public CharSequence f4594r;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f4601y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public View f4602z;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4585i = 4096;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f4587k = 4096;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f4589m = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public ColorStateList f4595s = null;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public PorterDuff.Mode f4596t = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f4597u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f4598v = false;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f4599w = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f4600x = 16;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public boolean f4579C = false;

    public s(p pVar, int i3, int i4, int i5, int i6, CharSequence charSequence, int i7) {
        this.f4590n = pVar;
        this.f4580a = i4;
        this.b = i3;
        this.f4581c = i5;
        this.f4582d = i6;
        this.f4583e = charSequence;
        this.f4601y = i7;
    }

    public static void a(StringBuilder sb, int i3, int i4, String str) {
        if ((i3 & i4) == i4) {
            sb.append(str);
        }
    }

    public final Drawable b(Drawable drawable) {
        if (drawable != null && this.f4599w && (this.f4597u || this.f4598v)) {
            drawable = DrawableCompat.wrap(drawable).mutate();
            if (this.f4597u) {
                DrawableCompat.setTintList(drawable, this.f4595s);
            }
            if (this.f4598v) {
                DrawableCompat.setTintMode(drawable, this.f4596t);
            }
            this.f4599w = false;
        }
        return drawable;
    }

    public final boolean c() {
        ActionProvider actionProvider;
        if ((this.f4601y & 8) != 0) {
            if (this.f4602z == null && (actionProvider = this.f4577A) != null) {
                this.f4602z = actionProvider.onCreateActionView(this);
            }
            if (this.f4602z != null) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public final boolean collapseActionView() {
        if ((this.f4601y & 8) == 0) {
            return false;
        }
        if (this.f4602z == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.f4578B;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionCollapse(this)) {
            return this.f4590n.d(this);
        }
        return false;
    }

    public final void d(boolean z2) {
        this.f4600x = (z2 ? 4 : 0) | (this.f4600x & (-5));
    }

    public final void e(boolean z2) {
        if (z2) {
            this.f4600x |= 32;
        } else {
            this.f4600x &= -33;
        }
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public final boolean expandActionView() {
        if (!c()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.f4578B;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionExpand(this)) {
            return this.f4590n.f(this);
        }
        return false;
    }

    @Override // android.view.MenuItem
    public final android.view.ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public final View getActionView() {
        View view = this.f4602z;
        if (view != null) {
            return view;
        }
        ActionProvider actionProvider = this.f4577A;
        if (actionProvider == null) {
            return null;
        }
        View viewOnCreateActionView = actionProvider.onCreateActionView(this);
        this.f4602z = viewOnCreateActionView;
        return viewOnCreateActionView;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return this.f4587k;
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return this.f4586j;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public final CharSequence getContentDescription() {
        return this.f4593q;
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return this.b;
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        Drawable drawable = this.f4588l;
        if (drawable != null) {
            return b(drawable);
        }
        int i3 = this.f4589m;
        if (i3 == 0) {
            return null;
        }
        Drawable drawableV = d.v(this.f4590n.f4553a, i3);
        this.f4589m = 0;
        this.f4588l = drawableV;
        return b(drawableV);
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return this.f4595s;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return this.f4596t;
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return this.g;
    }

    @Override // android.view.MenuItem
    public final int getItemId() {
        return this.f4580a;
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public final int getNumericModifiers() {
        return this.f4585i;
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return this.f4584h;
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return this.f4581c;
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return this.f4591o;
    }

    @Override // androidx.core.internal.view.SupportMenuItem
    public final ActionProvider getSupportActionProvider() {
        return this.f4577A;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitle() {
        return this.f4583e;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f;
        return charSequence != null ? charSequence : this.f4583e;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public final CharSequence getTooltipText() {
        return this.f4594r;
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return this.f4591o != null;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return this.f4579C;
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return (this.f4600x & 1) == 1;
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return (this.f4600x & 2) == 2;
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return (this.f4600x & 16) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        ActionProvider actionProvider = this.f4577A;
        if (actionProvider == null || !actionProvider.overridesItemVisibility()) {
            return (this.f4600x & 8) == 0;
        }
        return (this.f4600x & 8) == 0 && this.f4577A.isVisible();
    }

    @Override // androidx.core.internal.view.SupportMenuItem
    public final boolean requiresActionButton() {
        return (this.f4601y & 2) == 2;
    }

    @Override // androidx.core.internal.view.SupportMenuItem
    public final boolean requiresOverflow() {
        return (requiresActionButton() || (this.f4601y & 1) == 1) ? false : true;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(android.view.ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public final MenuItem setActionView(View view) {
        int i3;
        this.f4602z = view;
        this.f4577A = null;
        if (view != null && view.getId() == -1 && (i3 = this.f4580a) > 0) {
            view.setId(i3);
        }
        p pVar = this.f4590n;
        pVar.f4560k = true;
        pVar.p(true);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c3) {
        if (this.f4586j == c3) {
            return this;
        }
        this.f4586j = Character.toLowerCase(c3);
        this.f4590n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z2) {
        int i3 = this.f4600x;
        int i4 = (z2 ? 1 : 0) | (i3 & (-2));
        this.f4600x = i4;
        if (i3 != i4) {
            this.f4590n.p(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z2) {
        int i3 = this.f4600x;
        int i4 = i3 & 4;
        p pVar = this.f4590n;
        if (i4 == 0) {
            int i5 = (i3 & (-3)) | (z2 ? 2 : 0);
            this.f4600x = i5;
            if (i3 != i5) {
                pVar.p(false);
            }
            return this;
        }
        ArrayList arrayList = pVar.f;
        int size = arrayList.size();
        pVar.w();
        for (int i6 = 0; i6 < size; i6++) {
            s sVar = (s) arrayList.get(i6);
            if (sVar.b == this.b && (sVar.f4600x & 4) != 0 && sVar.isCheckable()) {
                boolean z3 = sVar == this;
                int i7 = sVar.f4600x;
                int i8 = (z3 ? 2 : 0) | (i7 & (-3));
                sVar.f4600x = i8;
                if (i7 != i8) {
                    sVar.f4590n.p(false);
                }
            }
        }
        pVar.v();
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public final /* bridge */ /* synthetic */ MenuItem setContentDescription(CharSequence charSequence) {
        setContentDescription(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z2) {
        if (z2) {
            this.f4600x |= 16;
        } else {
            this.f4600x &= -17;
        }
        this.f4590n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        this.f4589m = 0;
        this.f4588l = drawable;
        this.f4599w = true;
        this.f4590n.p(false);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f4595s = colorStateList;
        this.f4597u = true;
        this.f4599w = true;
        this.f4590n.p(false);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f4596t = mode;
        this.f4598v = true;
        this.f4599w = true;
        this.f4590n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        this.g = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c3) {
        if (this.f4584h == c3) {
            return this;
        }
        this.f4584h = c3;
        this.f4590n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f4578B = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f4592p = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c3, char c4) {
        this.f4584h = c3;
        this.f4586j = Character.toLowerCase(c4);
        this.f4590n.p(false);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public final void setShowAsAction(int i3) {
        int i4 = i3 & 3;
        if (i4 != 0 && i4 != 1 && i4 != 2) {
            throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
        }
        this.f4601y = i3;
        p pVar = this.f4590n;
        pVar.f4560k = true;
        pVar.p(true);
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public final MenuItem setShowAsActionFlags(int i3) {
        setShowAsAction(i3);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem
    public final SupportMenuItem setSupportActionProvider(ActionProvider actionProvider) {
        ActionProvider actionProvider2 = this.f4577A;
        if (actionProvider2 != null) {
            actionProvider2.reset();
        }
        this.f4602z = null;
        this.f4577A = actionProvider;
        this.f4590n.p(true);
        ActionProvider actionProvider3 = this.f4577A;
        if (actionProvider3 != null) {
            actionProvider3.setVisibilityListener(new r(this));
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        this.f4583e = charSequence;
        this.f4590n.p(false);
        I i3 = this.f4591o;
        if (i3 != null) {
            i3.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f = charSequence;
        this.f4590n.p(false);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public final /* bridge */ /* synthetic */ MenuItem setTooltipText(CharSequence charSequence) {
        setTooltipText(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z2) {
        int i3 = this.f4600x;
        int i4 = (z2 ? 0 : 8) | (i3 & (-9));
        this.f4600x = i4;
        if (i3 != i4) {
            p pVar = this.f4590n;
            pVar.f4557h = true;
            pVar.p(true);
        }
        return this;
    }

    public final String toString() {
        CharSequence charSequence = this.f4583e;
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public final SupportMenuItem setContentDescription(CharSequence charSequence) {
        this.f4593q = charSequence;
        this.f4590n.p(false);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public final SupportMenuItem setTooltipText(CharSequence charSequence) {
        this.f4594r = charSequence;
        this.f4590n.p(false);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c3, int i3) {
        if (this.f4586j == c3 && this.f4587k == i3) {
            return this;
        }
        this.f4586j = Character.toLowerCase(c3);
        this.f4587k = KeyEvent.normalizeMetaState(i3);
        this.f4590n.p(false);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public final MenuItem setNumericShortcut(char c3, int i3) {
        if (this.f4584h == c3 && this.f4585i == i3) {
            return this;
        }
        this.f4584h = c3;
        this.f4585i = KeyEvent.normalizeMetaState(i3);
        this.f4590n.p(false);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public final MenuItem setShortcut(char c3, char c4, int i3, int i4) {
        this.f4584h = c3;
        this.f4585i = KeyEvent.normalizeMetaState(i3);
        this.f4586j = Character.toLowerCase(c4);
        this.f4587k = KeyEvent.normalizeMetaState(i4);
        this.f4590n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i3) {
        this.f4588l = null;
        this.f4589m = i3;
        this.f4599w = true;
        this.f4590n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i3) {
        setTitle(this.f4590n.f4553a.getString(i3));
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public final MenuItem setActionView(int i3) {
        int i4;
        p pVar = this.f4590n;
        Context context = pVar.f4553a;
        View viewInflate = LayoutInflater.from(context).inflate(i3, (ViewGroup) new LinearLayout(context), false);
        this.f4602z = viewInflate;
        this.f4577A = null;
        if (viewInflate != null && viewInflate.getId() == -1 && (i4 = this.f4580a) > 0) {
            viewInflate.setId(i4);
        }
        pVar.f4560k = true;
        pVar.p(true);
        return this;
    }
}
