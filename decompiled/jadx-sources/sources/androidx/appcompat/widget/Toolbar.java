package androidx.appcompat.widget;

import A1.u0;
import H0.j;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.core.view.GravityCompat;
import androidx.core.view.MenuHost;
import androidx.core.view.MenuHostHelper;
import androidx.core.view.MenuProvider;
import androidx.core.view.ViewCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import com.bumptech.glide.d;
import com.minhub.gamehub.R;
import java.util.ArrayList;
import k.A;
import k.B;
import k.C0285d0;
import k.C0300l;
import k.InterfaceC0303m0;
import k.R0;
import k.Z0;
import k.a1;
import k.b1;
import k.c1;
import k.d1;
import k.e1;
import k.f1;
import k.g1;
import k.h1;
import k.i1;
import k.q1;
import p008d.a;
import p021i.h;
import p024j.p;
import p024j.s;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class Toolbar extends ViewGroup implements MenuHost {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public ColorStateList f2713A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public ColorStateList f2714B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public boolean f2715C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public boolean f2716D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public final ArrayList f2717E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public final ArrayList f2718F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int[] f2719G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final MenuHostHelper f2720H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public ArrayList f2721I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final b1 f2722J;
    public i1 K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public C0300l f2723L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public d1 f2724M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public boolean f2725N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public OnBackInvokedCallback f2726O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public OnBackInvokedDispatcher f2727P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public boolean f2728Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final u0 f2729R;
    public ActionMenuView b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public C0285d0 f2730c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public C0285d0 f2731d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public A f2732e;
    public B f;
    public final Drawable g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CharSequence f2733h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public A f2734i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public View f2735j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Context f2736k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f2737l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f2738m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f2739n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f2740o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f2741p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f2742q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f2743r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f2744s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f2745t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public R0 f2746u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f2747v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f2748w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f2749x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public CharSequence f2750y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public CharSequence f2751z;

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private ArrayList<MenuItem> getCurrentMenuItems() {
        ArrayList<MenuItem> arrayList = new ArrayList<>();
        Menu menu = getMenu();
        for (int i3 = 0; i3 < menu.size(); i3++) {
            arrayList.add(menu.getItem(i3));
        }
        return arrayList;
    }

    private MenuInflater getMenuInflater() {
        return new h(getContext());
    }

    public static e1 h() {
        e1 e1Var = new e1(-2, -2);
        e1Var.b = 0;
        e1Var.f4821a = 8388627;
        return e1Var;
    }

    public static e1 i(ViewGroup.LayoutParams layoutParams) {
        boolean z2 = layoutParams instanceof e1;
        if (z2) {
            e1 e1Var = (e1) layoutParams;
            e1 e1Var2 = new e1(e1Var);
            e1Var2.b = 0;
            e1Var2.b = e1Var.b;
            return e1Var2;
        }
        if (z2) {
            e1 e1Var3 = new e1((e1) layoutParams);
            e1Var3.b = 0;
            return e1Var3;
        }
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            e1 e1Var4 = new e1(layoutParams);
            e1Var4.b = 0;
            return e1Var4;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        e1 e1Var5 = new e1(marginLayoutParams);
        e1Var5.b = 0;
        ((ViewGroup.MarginLayoutParams) e1Var5).leftMargin = marginLayoutParams.leftMargin;
        ((ViewGroup.MarginLayoutParams) e1Var5).topMargin = marginLayoutParams.topMargin;
        ((ViewGroup.MarginLayoutParams) e1Var5).rightMargin = marginLayoutParams.rightMargin;
        ((ViewGroup.MarginLayoutParams) e1Var5).bottomMargin = marginLayoutParams.bottomMargin;
        return e1Var5;
    }

    public static int k(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.getMarginEnd() + marginLayoutParams.getMarginStart();
    }

    public static int l(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    public final void a(ArrayList arrayList, int i3) {
        boolean z2 = getLayoutDirection() == 1;
        int childCount = getChildCount();
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i3, getLayoutDirection());
        arrayList.clear();
        if (!z2) {
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = getChildAt(i4);
                e1 e1Var = (e1) childAt.getLayoutParams();
                if (e1Var.b == 0 && s(childAt)) {
                    int i5 = e1Var.f4821a;
                    int layoutDirection = getLayoutDirection();
                    int absoluteGravity2 = GravityCompat.getAbsoluteGravity(i5, layoutDirection) & 7;
                    if (absoluteGravity2 != 1 && absoluteGravity2 != 3 && absoluteGravity2 != 5) {
                        absoluteGravity2 = layoutDirection == 1 ? 5 : 3;
                    }
                    if (absoluteGravity2 == absoluteGravity) {
                        arrayList.add(childAt);
                    }
                }
            }
            return;
        }
        for (int i6 = childCount - 1; i6 >= 0; i6--) {
            View childAt2 = getChildAt(i6);
            e1 e1Var2 = (e1) childAt2.getLayoutParams();
            if (e1Var2.b == 0 && s(childAt2)) {
                int i7 = e1Var2.f4821a;
                int layoutDirection2 = getLayoutDirection();
                int absoluteGravity3 = GravityCompat.getAbsoluteGravity(i7, layoutDirection2) & 7;
                if (absoluteGravity3 != 1 && absoluteGravity3 != 3 && absoluteGravity3 != 5) {
                    absoluteGravity3 = layoutDirection2 == 1 ? 5 : 3;
                }
                if (absoluteGravity3 == absoluteGravity) {
                    arrayList.add(childAt2);
                }
            }
        }
    }

    @Override // androidx.core.view.MenuHost
    public final void addMenuProvider(MenuProvider menuProvider) {
        this.f2720H.addMenuProvider(menuProvider);
    }

    public final void b(View view, boolean z2) {
        e1 e1VarI;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            e1VarI = h();
        } else {
            e1VarI = !checkLayoutParams(layoutParams) ? i(layoutParams) : (e1) layoutParams;
        }
        e1VarI.b = 1;
        if (!z2 || this.f2735j == null) {
            addView(view, e1VarI);
        } else {
            view.setLayoutParams(e1VarI);
            this.f2718F.add(view);
        }
    }

    public final void c() {
        if (this.f2734i == null) {
            A a3 = new A(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            this.f2734i = a3;
            a3.setImageDrawable(this.g);
            this.f2734i.setContentDescription(this.f2733h);
            e1 e1VarH = h();
            e1VarH.f4821a = (this.f2740o & 112) | GravityCompat.START;
            e1VarH.b = 2;
            this.f2734i.setLayoutParams(e1VarH);
            this.f2734i.setOnClickListener(new j(5, this));
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof e1);
    }

    public final void d() {
        if (this.f2746u == null) {
            R0 r2 = new R0();
            r2.f4733a = 0;
            r2.b = 0;
            r2.f4734c = Integer.MIN_VALUE;
            r2.f4735d = Integer.MIN_VALUE;
            r2.f4736e = 0;
            r2.f = 0;
            r2.g = false;
            r2.f4737h = false;
            this.f2746u = r2;
        }
    }

    public final void e() {
        f();
        ActionMenuView actionMenuView = this.b;
        if (actionMenuView.f2695q == null) {
            p pVar = (p) actionMenuView.getMenu();
            if (this.f2724M == null) {
                this.f2724M = new d1(this);
            }
            this.b.setExpandedActionViewsExclusive(true);
            pVar.b(this.f2724M, this.f2736k);
            t();
        }
    }

    public final void f() {
        if (this.b == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext(), null);
            this.b = actionMenuView;
            actionMenuView.setPopupTheme(this.f2737l);
            this.b.setOnMenuItemClickListener(this.f2722J);
            ActionMenuView actionMenuView2 = this.b;
            b1 b1Var = new b1(this);
            actionMenuView2.getClass();
            actionMenuView2.f2700v = b1Var;
            e1 e1VarH = h();
            e1VarH.f4821a = (this.f2740o & 112) | GravityCompat.END;
            this.b.setLayoutParams(e1VarH);
            b(this.b, false);
        }
    }

    public final void g() {
        if (this.f2732e == null) {
            this.f2732e = new A(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            e1 e1VarH = h();
            e1VarH.f4821a = (this.f2740o & 112) | GravityCompat.START;
            this.f2732e.setLayoutParams(e1VarH);
        }
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return h();
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return i(layoutParams);
    }

    public CharSequence getCollapseContentDescription() {
        A a3 = this.f2734i;
        if (a3 != null) {
            return a3.getContentDescription();
        }
        return null;
    }

    public Drawable getCollapseIcon() {
        A a3 = this.f2734i;
        if (a3 != null) {
            return a3.getDrawable();
        }
        return null;
    }

    public int getContentInsetEnd() {
        R0 r2 = this.f2746u;
        if (r2 != null) {
            return r2.g ? r2.f4733a : r2.b;
        }
        return 0;
    }

    public int getContentInsetEndWithActions() {
        int i3 = this.f2748w;
        return i3 != Integer.MIN_VALUE ? i3 : getContentInsetEnd();
    }

    public int getContentInsetLeft() {
        R0 r2 = this.f2746u;
        if (r2 != null) {
            return r2.f4733a;
        }
        return 0;
    }

    public int getContentInsetRight() {
        R0 r2 = this.f2746u;
        if (r2 != null) {
            return r2.b;
        }
        return 0;
    }

    public int getContentInsetStart() {
        R0 r2 = this.f2746u;
        if (r2 != null) {
            return r2.g ? r2.b : r2.f4733a;
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i3 = this.f2747v;
        return i3 != Integer.MIN_VALUE ? i3 : getContentInsetStart();
    }

    public int getCurrentContentInsetEnd() {
        p pVar;
        ActionMenuView actionMenuView = this.b;
        return (actionMenuView == null || (pVar = actionMenuView.f2695q) == null || !pVar.hasVisibleItems()) ? getContentInsetEnd() : Math.max(getContentInsetEnd(), Math.max(this.f2748w, 0));
    }

    public int getCurrentContentInsetLeft() {
        return getLayoutDirection() == 1 ? getCurrentContentInsetEnd() : getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        return getLayoutDirection() == 1 ? getCurrentContentInsetStart() : getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        return getNavigationIcon() != null ? Math.max(getContentInsetStart(), Math.max(this.f2747v, 0)) : getContentInsetStart();
    }

    public Drawable getLogo() {
        B b = this.f;
        if (b != null) {
            return b.getDrawable();
        }
        return null;
    }

    public CharSequence getLogoDescription() {
        B b = this.f;
        if (b != null) {
            return b.getContentDescription();
        }
        return null;
    }

    public Menu getMenu() {
        e();
        return this.b.getMenu();
    }

    public View getNavButtonView() {
        return this.f2732e;
    }

    public CharSequence getNavigationContentDescription() {
        A a3 = this.f2732e;
        if (a3 != null) {
            return a3.getContentDescription();
        }
        return null;
    }

    public Drawable getNavigationIcon() {
        A a3 = this.f2732e;
        if (a3 != null) {
            return a3.getDrawable();
        }
        return null;
    }

    public C0300l getOuterActionMenuPresenter() {
        return this.f2723L;
    }

    public Drawable getOverflowIcon() {
        e();
        return this.b.getOverflowIcon();
    }

    public Context getPopupContext() {
        return this.f2736k;
    }

    public int getPopupTheme() {
        return this.f2737l;
    }

    public CharSequence getSubtitle() {
        return this.f2751z;
    }

    public final TextView getSubtitleTextView() {
        return this.f2731d;
    }

    public CharSequence getTitle() {
        return this.f2750y;
    }

    public int getTitleMarginBottom() {
        return this.f2745t;
    }

    public int getTitleMarginEnd() {
        return this.f2743r;
    }

    public int getTitleMarginStart() {
        return this.f2742q;
    }

    public int getTitleMarginTop() {
        return this.f2744s;
    }

    public final TextView getTitleTextView() {
        return this.f2730c;
    }

    public InterfaceC0303m0 getWrapper() {
        Drawable drawable;
        if (this.K == null) {
            i1 i1Var = new i1();
            i1Var.f4849n = 0;
            i1Var.f4839a = this;
            i1Var.f4843h = getTitle();
            i1Var.f4844i = getSubtitle();
            i1Var.g = i1Var.f4843h != null;
            i1Var.f = getNavigationIcon();
            Z0 z0E = Z0.e(getContext(), null, a.f3841a, R.attr.actionBarStyle);
            TypedArray typedArray = z0E.b;
            i1Var.f4850o = z0E.b(15);
            CharSequence text = typedArray.getText(27);
            if (!TextUtils.isEmpty(text)) {
                i1Var.g = true;
                i1Var.f4843h = text;
                if ((i1Var.b & 8) != 0) {
                    setTitle(text);
                    if (i1Var.g) {
                        ViewCompat.setAccessibilityPaneTitle(getRootView(), text);
                    }
                }
            }
            CharSequence text2 = typedArray.getText(25);
            if (!TextUtils.isEmpty(text2)) {
                i1Var.f4844i = text2;
                if ((i1Var.b & 8) != 0) {
                    setSubtitle(text2);
                }
            }
            Drawable drawableB = z0E.b(20);
            if (drawableB != null) {
                i1Var.f4842e = drawableB;
                i1Var.c();
            }
            Drawable drawableB2 = z0E.b(17);
            if (drawableB2 != null) {
                i1Var.f4841d = drawableB2;
                i1Var.c();
            }
            if (i1Var.f == null && (drawable = i1Var.f4850o) != null) {
                i1Var.f = drawable;
                if ((i1Var.b & 4) != 0) {
                    setNavigationIcon(drawable);
                } else {
                    setNavigationIcon((Drawable) null);
                }
            }
            i1Var.a(typedArray.getInt(10, 0));
            int resourceId = typedArray.getResourceId(9, 0);
            if (resourceId != 0) {
                View viewInflate = LayoutInflater.from(getContext()).inflate(resourceId, (ViewGroup) this, false);
                View view = i1Var.f4840c;
                if (view != null && (i1Var.b & 16) != 0) {
                    removeView(view);
                }
                i1Var.f4840c = viewInflate;
                if (viewInflate != null && (i1Var.b & 16) != 0) {
                    addView(viewInflate);
                }
                i1Var.a(i1Var.b | 16);
            }
            int layoutDimension = typedArray.getLayoutDimension(13, 0);
            if (layoutDimension > 0) {
                ViewGroup.LayoutParams layoutParams = getLayoutParams();
                layoutParams.height = layoutDimension;
                setLayoutParams(layoutParams);
            }
            int dimensionPixelOffset = typedArray.getDimensionPixelOffset(7, -1);
            int dimensionPixelOffset2 = typedArray.getDimensionPixelOffset(3, -1);
            if (dimensionPixelOffset >= 0 || dimensionPixelOffset2 >= 0) {
                int iMax = Math.max(dimensionPixelOffset, 0);
                int iMax2 = Math.max(dimensionPixelOffset2, 0);
                d();
                this.f2746u.a(iMax, iMax2);
            }
            int resourceId2 = typedArray.getResourceId(28, 0);
            if (resourceId2 != 0) {
                Context context = getContext();
                this.f2738m = resourceId2;
                C0285d0 c0285d0 = this.f2730c;
                if (c0285d0 != null) {
                    c0285d0.setTextAppearance(context, resourceId2);
                }
            }
            int resourceId3 = typedArray.getResourceId(26, 0);
            if (resourceId3 != 0) {
                Context context2 = getContext();
                this.f2739n = resourceId3;
                C0285d0 c0285d1 = this.f2731d;
                if (c0285d1 != null) {
                    c0285d1.setTextAppearance(context2, resourceId3);
                }
            }
            int resourceId4 = typedArray.getResourceId(22, 0);
            if (resourceId4 != 0) {
                setPopupTheme(resourceId4);
            }
            z0E.f();
            if (R.string.abc_action_bar_up_description != i1Var.f4849n) {
                i1Var.f4849n = R.string.abc_action_bar_up_description;
                if (TextUtils.isEmpty(getNavigationContentDescription())) {
                    int i3 = i1Var.f4849n;
                    i1Var.f4845j = i3 != 0 ? getContext().getString(i3) : null;
                    i1Var.b();
                }
            }
            i1Var.f4845j = getNavigationContentDescription();
            setNavigationOnClickListener(new h1(i1Var));
            this.K = i1Var;
        }
        return this.K;
    }

    @Override // androidx.core.view.MenuHost
    public final void invalidateMenu() {
        ArrayList arrayList = this.f2721I;
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            getMenu().removeItem(((MenuItem) obj).getItemId());
        }
        Menu menu = getMenu();
        ArrayList<MenuItem> currentMenuItems = getCurrentMenuItems();
        this.f2720H.onCreateMenu(menu, getMenuInflater());
        ArrayList<MenuItem> currentMenuItems2 = getCurrentMenuItems();
        currentMenuItems2.removeAll(currentMenuItems);
        this.f2721I = currentMenuItems2;
    }

    public final int j(View view, int i3) {
        e1 e1Var = (e1) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i4 = i3 > 0 ? (measuredHeight - i3) / 2 : 0;
        int i5 = e1Var.f4821a & 112;
        if (i5 != 16 && i5 != 48 && i5 != 80) {
            i5 = this.f2749x & 112;
        }
        if (i5 == 48) {
            return getPaddingTop() - i4;
        }
        if (i5 == 80) {
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) e1Var).bottomMargin) - i4;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int iMax = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
        int i6 = ((ViewGroup.MarginLayoutParams) e1Var).topMargin;
        if (iMax < i6) {
            iMax = i6;
        } else {
            int i7 = (((height - paddingBottom) - measuredHeight) - iMax) - paddingTop;
            int i8 = ((ViewGroup.MarginLayoutParams) e1Var).bottomMargin;
            if (i7 < i8) {
                iMax = Math.max(0, iMax - (i8 - i7));
            }
        }
        return paddingTop + iMax;
    }

    public void m(int i3) {
        getMenuInflater().inflate(i3, getMenu());
    }

    public final boolean n(View view) {
        return view.getParent() == this || this.f2718F.contains(view);
    }

    public final int o(View view, int i3, int i4, int[] iArr) {
        e1 e1Var = (e1) view.getLayoutParams();
        int i5 = ((ViewGroup.MarginLayoutParams) e1Var).leftMargin - iArr[0];
        int iMax = Math.max(0, i5) + i3;
        iArr[0] = Math.max(0, -i5);
        int iJ = j(view, i4);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax, iJ, iMax + measuredWidth, view.getMeasuredHeight() + iJ);
        return measuredWidth + ((ViewGroup.MarginLayoutParams) e1Var).rightMargin + iMax;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        t();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.f2729R);
        t();
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f2716D = false;
        }
        if (!this.f2716D) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.f2716D = true;
            }
        }
        if (actionMasked != 10 && actionMasked != 3) {
            return true;
        }
        this.f2716D = false;
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x027b  */
    /* JADX WARN: Code duplicated, block: B:103:0x028d A[LOOP:0: B:102:0x028b->B:103:0x028d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:106:0x02a5 A[LOOP:1: B:105:0x02a3->B:106:0x02a5, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:109:0x02c5 A[LOOP:2: B:108:0x02c3->B:109:0x02c5, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:113:0x030b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:114:0x030d  */
    /* JADX WARN: Code duplicated, block: B:115:0x0311  */
    /* JADX WARN: Code duplicated, block: B:118:0x0318 A[LOOP:3: B:117:0x0316->B:118:0x0318, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:19:0x0060 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:20:0x0062  */
    /* JADX WARN: Code duplicated, block: B:21:0x0069  */
    /* JADX WARN: Code duplicated, block: B:24:0x0077 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:25:0x0079  */
    /* JADX WARN: Code duplicated, block: B:26:0x0080  */
    /* JADX WARN: Code duplicated, block: B:29:0x00b4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:31:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:34:0x00cb A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:36:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:39:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:40:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:42:0x0104  */
    /* JADX WARN: Code duplicated, block: B:43:0x011d  */
    /* JADX WARN: Code duplicated, block: B:46:0x0123 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:47:0x0125  */
    /* JADX WARN: Code duplicated, block: B:48:0x0128  */
    /* JADX WARN: Code duplicated, block: B:50:0x012c  */
    /* JADX WARN: Code duplicated, block: B:51:0x012f  */
    /* JADX WARN: Code duplicated, block: B:54:0x0141  */
    /* JADX WARN: Code duplicated, block: B:56:0x0149 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:63:0x0162  */
    /* JADX WARN: Code duplicated, block: B:65:0x0166  */
    /* JADX WARN: Code duplicated, block: B:67:0x0177  */
    /* JADX WARN: Code duplicated, block: B:68:0x0179  */
    /* JADX WARN: Code duplicated, block: B:70:0x0185  */
    /* JADX WARN: Code duplicated, block: B:72:0x0191  */
    /* JADX WARN: Code duplicated, block: B:73:0x019b  */
    /* JADX WARN: Code duplicated, block: B:75:0x01a8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:76:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:77:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:80:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:81:0x01e4  */
    /* JADX WARN: Code duplicated, block: B:83:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:84:0x020b  */
    /* JADX WARN: Code duplicated, block: B:86:0x020e  */
    /* JADX WARN: Code duplicated, block: B:88:0x0216 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:89:0x0218  */
    /* JADX WARN: Code duplicated, block: B:91:0x021c  */
    /* JADX WARN: Code duplicated, block: B:94:0x0230  */
    /* JADX WARN: Code duplicated, block: B:95:0x0253  */
    /* JADX WARN: Code duplicated, block: B:97:0x0256  */
    /* JADX WARN: Code duplicated, block: B:98:0x0278  */
    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i3, int i4, int i5, int i6) {
        int iO;
        int iP;
        int iMax;
        int iMin;
        boolean zS;
        boolean zS2;
        int measuredHeight;
        C0285d0 c0285d0;
        C0285d0 c0285d1;
        e1 e1Var;
        e1 e1Var2;
        int i7;
        boolean z3;
        int i8;
        int i9;
        int paddingTop;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int iMax2;
        int i16;
        int i17;
        int i18;
        int i19;
        ArrayList arrayList;
        int size;
        int iO2;
        int i20;
        int size2;
        int i21;
        int i22;
        int size3;
        int i23;
        int i24;
        int measuredWidth;
        int i25;
        int i26;
        int i27;
        int size4;
        boolean z4 = getLayoutDirection() == 1;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop2 = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i28 = width - paddingRight;
        int[] iArr = this.f2719G;
        iArr[1] = 0;
        iArr[0] = 0;
        int minimumHeight = ViewCompat.getMinimumHeight(this);
        int iMin2 = minimumHeight >= 0 ? Math.min(minimumHeight, i6 - i4) : 0;
        if (s(this.f2732e)) {
            if (z4) {
                iP = p(this.f2732e, i28, iMin2, iArr);
                iO = paddingLeft;
            } else {
                iO = o(this.f2732e, paddingLeft, iMin2, iArr);
            }
            if (s(this.f2734i)) {
                if (z4) {
                    iP = p(this.f2734i, iP, iMin2, iArr);
                } else {
                    iO = o(this.f2734i, iO, iMin2, iArr);
                }
            }
            if (s(this.b)) {
                if (z4) {
                    iO = o(this.b, iO, iMin2, iArr);
                } else {
                    iP = p(this.b, iP, iMin2, iArr);
                }
            }
            int currentContentInsetLeft = getCurrentContentInsetLeft();
            int currentContentInsetRight = getCurrentContentInsetRight();
            iArr[0] = Math.max(0, currentContentInsetLeft - iO);
            iArr[1] = Math.max(0, currentContentInsetRight - (i28 - iP));
            iMax = Math.max(iO, currentContentInsetLeft);
            iMin = Math.min(iP, i28 - currentContentInsetRight);
            if (s(this.f2735j)) {
                if (z4) {
                    iMin = p(this.f2735j, iMin, iMin2, iArr);
                } else {
                    iMax = o(this.f2735j, iMax, iMin2, iArr);
                }
            }
            if (s(this.f)) {
                if (z4) {
                    iMin = p(this.f, iMin, iMin2, iArr);
                } else {
                    iMax = o(this.f, iMax, iMin2, iArr);
                }
            }
            zS = s(this.f2730c);
            zS2 = s(this.f2731d);
            if (zS) {
                e1 e1Var3 = (e1) this.f2730c.getLayoutParams();
                measuredHeight = this.f2730c.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) e1Var3).topMargin + ((ViewGroup.MarginLayoutParams) e1Var3).bottomMargin;
            } else {
                measuredHeight = 0;
            }
            if (zS2) {
                e1 e1Var4 = (e1) this.f2731d.getLayoutParams();
                measuredHeight = this.f2731d.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) e1Var4).topMargin + ((ViewGroup.MarginLayoutParams) e1Var4).bottomMargin + measuredHeight;
            }
            if (zS || zS2) {
                if (zS) {
                    c0285d0 = this.f2730c;
                } else {
                    c0285d0 = this.f2731d;
                }
                if (zS2) {
                    c0285d1 = this.f2731d;
                } else {
                    c0285d1 = this.f2730c;
                }
                e1Var = (e1) c0285d0.getLayoutParams();
                e1Var2 = (e1) c0285d1.getLayoutParams();
                i7 = measuredHeight;
                z3 = (!zS && this.f2730c.getMeasuredWidth() > 0) || (zS2 && this.f2731d.getMeasuredWidth() > 0);
                i8 = this.f2749x & 112;
                i9 = iMax;
                if (i8 == 48) {
                    paddingTop = getPaddingTop() + ((ViewGroup.MarginLayoutParams) e1Var).topMargin + this.f2744s;
                } else if (i8 != 80) {
                    iMax2 = (((height - paddingTop2) - paddingBottom) - i7) / 2;
                    i16 = ((ViewGroup.MarginLayoutParams) e1Var).topMargin + this.f2744s;
                    if (iMax2 < i16) {
                        iMax2 = i16;
                    } else {
                        i17 = (((height - paddingBottom) - i7) - iMax2) - paddingTop2;
                        i18 = ((ViewGroup.MarginLayoutParams) e1Var).bottomMargin;
                        i19 = this.f2745t;
                        if (i17 < i18 + i19) {
                            iMax2 = Math.max(0, iMax2 - ((((ViewGroup.MarginLayoutParams) e1Var2).bottomMargin + i19) - i17));
                        }
                    }
                    paddingTop = paddingTop2 + iMax2;
                } else {
                    paddingTop = (((height - paddingBottom) - ((ViewGroup.MarginLayoutParams) e1Var2).bottomMargin) - this.f2745t) - i7;
                }
                if (z4) {
                    if (z3) {
                        i13 = this.f2742q;
                    } else {
                        i13 = 0;
                    }
                    int i29 = i13 - iArr[1];
                    iMin -= Math.max(0, i29);
                    iArr[1] = Math.max(0, -i29);
                    if (zS) {
                        e1 e1Var5 = (e1) this.f2730c.getLayoutParams();
                        int measuredWidth2 = iMin - this.f2730c.getMeasuredWidth();
                        int measuredHeight2 = this.f2730c.getMeasuredHeight() + paddingTop;
                        this.f2730c.layout(measuredWidth2, paddingTop, iMin, measuredHeight2);
                        i14 = measuredWidth2 - this.f2743r;
                        paddingTop = measuredHeight2 + ((ViewGroup.MarginLayoutParams) e1Var5).bottomMargin;
                    } else {
                        i14 = iMin;
                    }
                    if (zS2) {
                        int i30 = paddingTop + ((ViewGroup.MarginLayoutParams) ((e1) this.f2731d.getLayoutParams())).topMargin;
                        this.f2731d.layout(iMin - this.f2731d.getMeasuredWidth(), i30, iMin, this.f2731d.getMeasuredHeight() + i30);
                        i15 = iMin - this.f2743r;
                    } else {
                        i15 = iMin;
                    }
                    if (z3) {
                        iMin = Math.min(i14, i15);
                    }
                    iMax = i9;
                } else {
                    if (z3) {
                        i10 = this.f2742q;
                    } else {
                        i10 = 0;
                    }
                    int i31 = i10 - iArr[0];
                    iMax = Math.max(0, i31) + i9;
                    iArr[0] = Math.max(0, -i31);
                    if (zS) {
                        e1 e1Var6 = (e1) this.f2730c.getLayoutParams();
                        int measuredWidth3 = this.f2730c.getMeasuredWidth() + iMax;
                        int measuredHeight3 = this.f2730c.getMeasuredHeight() + paddingTop;
                        this.f2730c.layout(iMax, paddingTop, measuredWidth3, measuredHeight3);
                        i11 = measuredWidth3 + this.f2743r;
                        paddingTop = measuredHeight3 + ((ViewGroup.MarginLayoutParams) e1Var6).bottomMargin;
                    } else {
                        i11 = iMax;
                    }
                    if (zS2) {
                        int i32 = paddingTop + ((ViewGroup.MarginLayoutParams) ((e1) this.f2731d.getLayoutParams())).topMargin;
                        int measuredWidth4 = this.f2731d.getMeasuredWidth() + iMax;
                        this.f2731d.layout(iMax, i32, measuredWidth4, this.f2731d.getMeasuredHeight() + i32);
                        i12 = measuredWidth4 + this.f2743r;
                    } else {
                        i12 = iMax;
                    }
                    if (z3) {
                        iMax = Math.max(i11, i12);
                    }
                }
            }
            arrayList = this.f2717E;
            a(arrayList, 3);
            size = arrayList.size();
            iO2 = iMax;
            for (i20 = 0; i20 < size; i20++) {
                iO2 = o((View) arrayList.get(i20), iO2, iMin2, iArr);
            }
            a(arrayList, 5);
            size2 = arrayList.size();
            for (i21 = 0; i21 < size2; i21++) {
                iMin = p((View) arrayList.get(i21), iMin, iMin2, iArr);
            }
            a(arrayList, 1);
            int i33 = iArr[0];
            i22 = iArr[1];
            size3 = arrayList.size();
            i23 = i33;
            i24 = 0;
            measuredWidth = 0;
            while (i24 < size3) {
                View view = (View) arrayList.get(i24);
                e1 e1Var7 = (e1) view.getLayoutParams();
                int i34 = i22;
                int i35 = ((ViewGroup.MarginLayoutParams) e1Var7).leftMargin - i23;
                int i36 = ((ViewGroup.MarginLayoutParams) e1Var7).rightMargin - i34;
                int iMax3 = Math.max(0, i35);
                int iMax4 = Math.max(0, i36);
                int iMax5 = Math.max(0, -i35);
                int iMax6 = Math.max(0, -i36);
                measuredWidth += view.getMeasuredWidth() + iMax3 + iMax4;
                i24++;
                i23 = iMax5;
                i22 = iMax6;
            }
            i26 = ((((width - paddingLeft) - paddingRight) / 2) + paddingLeft) - (measuredWidth / 2);
            i27 = measuredWidth + i26;
            if (i26 >= iO2) {
                if (i27 > iMin) {
                    iO2 = i26 - (i27 - iMin);
                } else {
                    iO2 = i26;
                }
            }
            size4 = arrayList.size();
            for (i25 = 0; i25 < size4; i25++) {
                iO2 = o((View) arrayList.get(i25), iO2, iMin2, iArr);
            }
            arrayList.clear();
        }
        iO = paddingLeft;
        iP = i28;
        if (s(this.f2734i)) {
            if (z4) {
                iP = p(this.f2734i, iP, iMin2, iArr);
            } else {
                iO = o(this.f2734i, iO, iMin2, iArr);
            }
        }
        if (s(this.b)) {
            if (z4) {
                iO = o(this.b, iO, iMin2, iArr);
            } else {
                iP = p(this.b, iP, iMin2, iArr);
            }
        }
        int currentContentInsetLeft2 = getCurrentContentInsetLeft();
        int currentContentInsetRight2 = getCurrentContentInsetRight();
        iArr[0] = Math.max(0, currentContentInsetLeft2 - iO);
        iArr[1] = Math.max(0, currentContentInsetRight2 - (i28 - iP));
        iMax = Math.max(iO, currentContentInsetLeft2);
        iMin = Math.min(iP, i28 - currentContentInsetRight2);
        if (s(this.f2735j)) {
            if (z4) {
                iMin = p(this.f2735j, iMin, iMin2, iArr);
            } else {
                iMax = o(this.f2735j, iMax, iMin2, iArr);
            }
        }
        if (s(this.f)) {
            if (z4) {
                iMin = p(this.f, iMin, iMin2, iArr);
            } else {
                iMax = o(this.f, iMax, iMin2, iArr);
            }
        }
        zS = s(this.f2730c);
        zS2 = s(this.f2731d);
        if (zS) {
            e1 e1Var8 = (e1) this.f2730c.getLayoutParams();
            measuredHeight = this.f2730c.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) e1Var8).topMargin + ((ViewGroup.MarginLayoutParams) e1Var8).bottomMargin;
        } else {
            measuredHeight = 0;
        }
        if (zS2) {
            e1 e1Var9 = (e1) this.f2731d.getLayoutParams();
            measuredHeight = this.f2731d.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) e1Var9).topMargin + ((ViewGroup.MarginLayoutParams) e1Var9).bottomMargin + measuredHeight;
        }
        if (zS) {
            if (zS) {
                c0285d0 = this.f2730c;
            } else {
                c0285d0 = this.f2731d;
            }
            if (zS2) {
                c0285d1 = this.f2731d;
            } else {
                c0285d1 = this.f2730c;
            }
            e1Var = (e1) c0285d0.getLayoutParams();
            e1Var2 = (e1) c0285d1.getLayoutParams();
            i7 = measuredHeight;
            if (zS) {
            }
            i8 = this.f2749x & 112;
            i9 = iMax;
            if (i8 == 48) {
                paddingTop = getPaddingTop() + ((ViewGroup.MarginLayoutParams) e1Var).topMargin + this.f2744s;
            } else if (i8 != 80) {
                iMax2 = (((height - paddingTop2) - paddingBottom) - i7) / 2;
                i16 = ((ViewGroup.MarginLayoutParams) e1Var).topMargin + this.f2744s;
                if (iMax2 < i16) {
                    iMax2 = i16;
                } else {
                    i17 = (((height - paddingBottom) - i7) - iMax2) - paddingTop2;
                    i18 = ((ViewGroup.MarginLayoutParams) e1Var).bottomMargin;
                    i19 = this.f2745t;
                    if (i17 < i18 + i19) {
                        iMax2 = Math.max(0, iMax2 - ((((ViewGroup.MarginLayoutParams) e1Var2).bottomMargin + i19) - i17));
                    }
                }
                paddingTop = paddingTop2 + iMax2;
            } else {
                paddingTop = (((height - paddingBottom) - ((ViewGroup.MarginLayoutParams) e1Var2).bottomMargin) - this.f2745t) - i7;
            }
            if (z4) {
                if (z3) {
                    i13 = this.f2742q;
                } else {
                    i13 = 0;
                }
                int i210 = i13 - iArr[1];
                iMin -= Math.max(0, i210);
                iArr[1] = Math.max(0, -i210);
                if (zS) {
                    e1 e1Var10 = (e1) this.f2730c.getLayoutParams();
                    int measuredWidth5 = iMin - this.f2730c.getMeasuredWidth();
                    int measuredHeight4 = this.f2730c.getMeasuredHeight() + paddingTop;
                    this.f2730c.layout(measuredWidth5, paddingTop, iMin, measuredHeight4);
                    i14 = measuredWidth5 - this.f2743r;
                    paddingTop = measuredHeight4 + ((ViewGroup.MarginLayoutParams) e1Var10).bottomMargin;
                } else {
                    i14 = iMin;
                }
                if (zS2) {
                    int i37 = paddingTop + ((ViewGroup.MarginLayoutParams) ((e1) this.f2731d.getLayoutParams())).topMargin;
                    this.f2731d.layout(iMin - this.f2731d.getMeasuredWidth(), i37, iMin, this.f2731d.getMeasuredHeight() + i37);
                    i15 = iMin - this.f2743r;
                } else {
                    i15 = iMin;
                }
                if (z3) {
                    iMin = Math.min(i14, i15);
                }
                iMax = i9;
            } else {
                if (z3) {
                    i10 = this.f2742q;
                } else {
                    i10 = 0;
                }
                int i38 = i10 - iArr[0];
                iMax = Math.max(0, i38) + i9;
                iArr[0] = Math.max(0, -i38);
                if (zS) {
                    e1 e1Var11 = (e1) this.f2730c.getLayoutParams();
                    int measuredWidth6 = this.f2730c.getMeasuredWidth() + iMax;
                    int measuredHeight5 = this.f2730c.getMeasuredHeight() + paddingTop;
                    this.f2730c.layout(iMax, paddingTop, measuredWidth6, measuredHeight5);
                    i11 = measuredWidth6 + this.f2743r;
                    paddingTop = measuredHeight5 + ((ViewGroup.MarginLayoutParams) e1Var11).bottomMargin;
                } else {
                    i11 = iMax;
                }
                if (zS2) {
                    int i39 = paddingTop + ((ViewGroup.MarginLayoutParams) ((e1) this.f2731d.getLayoutParams())).topMargin;
                    int measuredWidth7 = this.f2731d.getMeasuredWidth() + iMax;
                    this.f2731d.layout(iMax, i39, measuredWidth7, this.f2731d.getMeasuredHeight() + i39);
                    i12 = measuredWidth7 + this.f2743r;
                } else {
                    i12 = iMax;
                }
                if (z3) {
                    iMax = Math.max(i11, i12);
                }
            }
        } else {
            if (zS) {
                c0285d0 = this.f2730c;
            } else {
                c0285d0 = this.f2731d;
            }
            if (zS2) {
                c0285d1 = this.f2731d;
            } else {
                c0285d1 = this.f2730c;
            }
            e1Var = (e1) c0285d0.getLayoutParams();
            e1Var2 = (e1) c0285d1.getLayoutParams();
            i7 = measuredHeight;
            if (zS) {
            }
            i8 = this.f2749x & 112;
            i9 = iMax;
            if (i8 == 48) {
                paddingTop = getPaddingTop() + ((ViewGroup.MarginLayoutParams) e1Var).topMargin + this.f2744s;
            } else if (i8 != 80) {
                iMax2 = (((height - paddingTop2) - paddingBottom) - i7) / 2;
                i16 = ((ViewGroup.MarginLayoutParams) e1Var).topMargin + this.f2744s;
                if (iMax2 < i16) {
                    iMax2 = i16;
                } else {
                    i17 = (((height - paddingBottom) - i7) - iMax2) - paddingTop2;
                    i18 = ((ViewGroup.MarginLayoutParams) e1Var).bottomMargin;
                    i19 = this.f2745t;
                    if (i17 < i18 + i19) {
                        iMax2 = Math.max(0, iMax2 - ((((ViewGroup.MarginLayoutParams) e1Var2).bottomMargin + i19) - i17));
                    }
                }
                paddingTop = paddingTop2 + iMax2;
            } else {
                paddingTop = (((height - paddingBottom) - ((ViewGroup.MarginLayoutParams) e1Var2).bottomMargin) - this.f2745t) - i7;
            }
            if (z4) {
                if (z3) {
                    i13 = this.f2742q;
                } else {
                    i13 = 0;
                }
                int i211 = i13 - iArr[1];
                iMin -= Math.max(0, i211);
                iArr[1] = Math.max(0, -i211);
                if (zS) {
                    e1 e1Var12 = (e1) this.f2730c.getLayoutParams();
                    int measuredWidth8 = iMin - this.f2730c.getMeasuredWidth();
                    int measuredHeight6 = this.f2730c.getMeasuredHeight() + paddingTop;
                    this.f2730c.layout(measuredWidth8, paddingTop, iMin, measuredHeight6);
                    i14 = measuredWidth8 - this.f2743r;
                    paddingTop = measuredHeight6 + ((ViewGroup.MarginLayoutParams) e1Var12).bottomMargin;
                } else {
                    i14 = iMin;
                }
                if (zS2) {
                    int i310 = paddingTop + ((ViewGroup.MarginLayoutParams) ((e1) this.f2731d.getLayoutParams())).topMargin;
                    this.f2731d.layout(iMin - this.f2731d.getMeasuredWidth(), i310, iMin, this.f2731d.getMeasuredHeight() + i310);
                    i15 = iMin - this.f2743r;
                } else {
                    i15 = iMin;
                }
                if (z3) {
                    iMin = Math.min(i14, i15);
                }
                iMax = i9;
            } else {
                if (z3) {
                    i10 = this.f2742q;
                } else {
                    i10 = 0;
                }
                int i311 = i10 - iArr[0];
                iMax = Math.max(0, i311) + i9;
                iArr[0] = Math.max(0, -i311);
                if (zS) {
                    e1 e1Var13 = (e1) this.f2730c.getLayoutParams();
                    int measuredWidth9 = this.f2730c.getMeasuredWidth() + iMax;
                    int measuredHeight7 = this.f2730c.getMeasuredHeight() + paddingTop;
                    this.f2730c.layout(iMax, paddingTop, measuredWidth9, measuredHeight7);
                    i11 = measuredWidth9 + this.f2743r;
                    paddingTop = measuredHeight7 + ((ViewGroup.MarginLayoutParams) e1Var13).bottomMargin;
                } else {
                    i11 = iMax;
                }
                if (zS2) {
                    int i312 = paddingTop + ((ViewGroup.MarginLayoutParams) ((e1) this.f2731d.getLayoutParams())).topMargin;
                    int measuredWidth10 = this.f2731d.getMeasuredWidth() + iMax;
                    this.f2731d.layout(iMax, i312, measuredWidth10, this.f2731d.getMeasuredHeight() + i312);
                    i12 = measuredWidth10 + this.f2743r;
                } else {
                    i12 = iMax;
                }
                if (z3) {
                    iMax = Math.max(i11, i12);
                }
            }
        }
        arrayList = this.f2717E;
        a(arrayList, 3);
        size = arrayList.size();
        iO2 = iMax;
        while (i20 < size) {
            iO2 = o((View) arrayList.get(i20), iO2, iMin2, iArr);
        }
        a(arrayList, 5);
        size2 = arrayList.size();
        while (i21 < size2) {
            iMin = p((View) arrayList.get(i21), iMin, iMin2, iArr);
        }
        a(arrayList, 1);
        int i313 = iArr[0];
        i22 = iArr[1];
        size3 = arrayList.size();
        i23 = i313;
        i24 = 0;
        measuredWidth = 0;
        while (i24 < size3) {
            View view2 = (View) arrayList.get(i24);
            e1 e1Var14 = (e1) view2.getLayoutParams();
            int i314 = i22;
            int i315 = ((ViewGroup.MarginLayoutParams) e1Var14).leftMargin - i23;
            int i316 = ((ViewGroup.MarginLayoutParams) e1Var14).rightMargin - i314;
            int iMax7 = Math.max(0, i315);
            int iMax8 = Math.max(0, i316);
            int iMax9 = Math.max(0, -i315);
            int iMax10 = Math.max(0, -i316);
            measuredWidth += view2.getMeasuredWidth() + iMax7 + iMax8;
            i24++;
            i23 = iMax9;
            i22 = iMax10;
        }
        i26 = ((((width - paddingLeft) - paddingRight) / 2) + paddingLeft) - (measuredWidth / 2);
        i27 = measuredWidth + i26;
        if (i26 >= iO2) {
            if (i27 > iMin) {
                iO2 = i26 - (i27 - iMin);
            } else {
                iO2 = i26;
            }
        }
        size4 = arrayList.size();
        while (i25 < size4) {
            iO2 = o((View) arrayList.get(i25), iO2, iMin2, iArr);
        }
        arrayList.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View
    public final void onMeasure(int i3, int i4) {
        char c3;
        Object[] objArr;
        int iK;
        int iMax;
        int iCombineMeasuredStates;
        int iK2;
        int iL;
        int iCombineMeasuredStates2;
        int iMax2;
        boolean z2 = q1.f4902a;
        int i5 = 0;
        if (getLayoutDirection() == 1) {
            objArr = true;
            c3 = 0;
        } else {
            c3 = 1;
            objArr = false;
        }
        if (s(this.f2732e)) {
            r(this.f2732e, i3, 0, i4, this.f2741p);
            iK = k(this.f2732e) + this.f2732e.getMeasuredWidth();
            iMax = Math.max(0, l(this.f2732e) + this.f2732e.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(0, this.f2732e.getMeasuredState());
        } else {
            iK = 0;
            iMax = 0;
            iCombineMeasuredStates = 0;
        }
        if (s(this.f2734i)) {
            r(this.f2734i, i3, 0, i4, this.f2741p);
            iK = k(this.f2734i) + this.f2734i.getMeasuredWidth();
            iMax = Math.max(iMax, l(this.f2734i) + this.f2734i.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f2734i.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int iMax3 = Math.max(currentContentInsetStart, iK);
        int iMax4 = Math.max(0, currentContentInsetStart - iK);
        Object[] objArr2 = objArr;
        int[] iArr = this.f2719G;
        iArr[objArr2 == true ? 1 : 0] = iMax4;
        if (s(this.b)) {
            r(this.b, i3, iMax3, i4, this.f2741p);
            iK2 = k(this.b) + this.b.getMeasuredWidth();
            iMax = Math.max(iMax, l(this.b) + this.b.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.b.getMeasuredState());
        } else {
            iK2 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int iMax5 = iMax3 + Math.max(currentContentInsetEnd, iK2);
        iArr[c3] = Math.max(0, currentContentInsetEnd - iK2);
        if (s(this.f2735j)) {
            iMax5 += q(this.f2735j, i3, iMax5, i4, 0, iArr);
            iMax = Math.max(iMax, l(this.f2735j) + this.f2735j.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f2735j.getMeasuredState());
        }
        if (s(this.f)) {
            iMax5 += q(this.f, i3, iMax5, i4, 0, iArr);
            iMax = Math.max(iMax, l(this.f) + this.f.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f.getMeasuredState());
        }
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (((e1) childAt.getLayoutParams()).b == 0 && s(childAt)) {
                iMax5 += q(childAt, i3, iMax5, i4, 0, iArr);
                int iMax6 = Math.max(iMax, l(childAt) + childAt.getMeasuredHeight());
                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, childAt.getMeasuredState());
                iMax = iMax6;
            } else {
                iMax5 = iMax5;
            }
        }
        int i7 = iMax5;
        int i8 = this.f2744s + this.f2745t;
        int i9 = this.f2742q + this.f2743r;
        if (s(this.f2730c)) {
            q(this.f2730c, i3, i7 + i9, i4, i8, iArr);
            int iK3 = k(this.f2730c) + this.f2730c.getMeasuredWidth();
            iL = l(this.f2730c) + this.f2730c.getMeasuredHeight();
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.f2730c.getMeasuredState());
            iMax2 = iK3;
        } else {
            iL = 0;
            iCombineMeasuredStates2 = iCombineMeasuredStates;
            iMax2 = 0;
        }
        if (s(this.f2731d)) {
            iMax2 = Math.max(iMax2, q(this.f2731d, i3, i7 + i9, i4, i8 + iL, iArr));
            iL += l(this.f2731d) + this.f2731d.getMeasuredHeight();
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, this.f2731d.getMeasuredState());
        }
        int iMax7 = Math.max(iMax, iL);
        int paddingRight = getPaddingRight() + getPaddingLeft() + i7 + iMax2;
        int paddingBottom = getPaddingBottom() + getPaddingTop() + iMax7;
        int iResolveSizeAndState = View.resolveSizeAndState(Math.max(paddingRight, getSuggestedMinimumWidth()), i3, (-16777216) & iCombineMeasuredStates2);
        int iResolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i4, iCombineMeasuredStates2 << 16);
        if (!this.f2725N) {
            i5 = iResolveSizeAndState2;
            break;
        }
        int childCount2 = getChildCount();
        for (int i10 = 0; i10 < childCount2; i10++) {
            View childAt2 = getChildAt(i10);
            if (s(childAt2) && childAt2.getMeasuredWidth() > 0 && childAt2.getMeasuredHeight() > 0) {
                i5 = iResolveSizeAndState2;
                break;
            }
        }
        setMeasuredDimension(iResolveSizeAndState, i5);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem menuItemFindItem;
        if (!(parcelable instanceof g1)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        g1 g1Var = (g1) parcelable;
        super.onRestoreInstanceState(g1Var.b);
        ActionMenuView actionMenuView = this.b;
        p pVar = actionMenuView != null ? actionMenuView.f2695q : null;
        int i3 = g1Var.f4824d;
        if (i3 != 0 && this.f2724M != null && pVar != null && (menuItemFindItem = pVar.findItem(i3)) != null) {
            menuItemFindItem.expandActionView();
        }
        if (g1Var.f4825e) {
            u0 u0Var = this.f2729R;
            removeCallbacks(u0Var);
            post(u0Var);
        }
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i3) {
        super.onRtlPropertiesChanged(i3);
        d();
        R0 r2 = this.f2746u;
        boolean z2 = i3 == 1;
        if (z2 == r2.g) {
            return;
        }
        r2.g = z2;
        if (!r2.f4737h) {
            r2.f4733a = r2.f4736e;
            r2.b = r2.f;
            return;
        }
        if (z2) {
            int i4 = r2.f4735d;
            if (i4 == Integer.MIN_VALUE) {
                i4 = r2.f4736e;
            }
            r2.f4733a = i4;
            int i5 = r2.f4734c;
            if (i5 == Integer.MIN_VALUE) {
                i5 = r2.f;
            }
            r2.b = i5;
            return;
        }
        int i6 = r2.f4734c;
        if (i6 == Integer.MIN_VALUE) {
            i6 = r2.f4736e;
        }
        r2.f4733a = i6;
        int i7 = r2.f4735d;
        if (i7 == Integer.MIN_VALUE) {
            i7 = r2.f;
        }
        r2.b = i7;
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        C0300l c0300l;
        s sVar;
        g1 g1Var = new g1(super.onSaveInstanceState());
        d1 d1Var = this.f2724M;
        if (d1Var != null && (sVar = d1Var.f4819c) != null) {
            g1Var.f4824d = sVar.f4580a;
        }
        ActionMenuView actionMenuView = this.b;
        g1Var.f4825e = (actionMenuView == null || (c0300l = actionMenuView.f2699u) == null || !c0300l.f()) ? false : true;
        return g1Var;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f2715C = false;
        }
        if (!this.f2715C) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.f2715C = true;
            }
        }
        if (actionMasked != 1 && actionMasked != 3) {
            return true;
        }
        this.f2715C = false;
        return true;
    }

    public final int p(View view, int i3, int i4, int[] iArr) {
        e1 e1Var = (e1) view.getLayoutParams();
        int i5 = ((ViewGroup.MarginLayoutParams) e1Var).rightMargin - iArr[1];
        int iMax = i3 - Math.max(0, i5);
        iArr[1] = Math.max(0, -i5);
        int iJ = j(view, i4);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax - measuredWidth, iJ, iMax, view.getMeasuredHeight() + iJ);
        return iMax - (measuredWidth + ((ViewGroup.MarginLayoutParams) e1Var).leftMargin);
    }

    public final int q(View view, int i3, int i4, int i5, int i6, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i7 = marginLayoutParams.leftMargin - iArr[0];
        int i8 = marginLayoutParams.rightMargin - iArr[1];
        int iMax = Math.max(0, i8) + Math.max(0, i7);
        iArr[0] = Math.max(0, -i7);
        iArr[1] = Math.max(0, -i8);
        view.measure(ViewGroup.getChildMeasureSpec(i3, getPaddingRight() + getPaddingLeft() + iMax + i4, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i5, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i6, marginLayoutParams.height));
        return view.getMeasuredWidth() + iMax;
    }

    public final void r(View view, int i3, int i4, int i5, int i6) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i3, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i4, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i5, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i6 >= 0) {
            if (mode != 0) {
                i6 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i6);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i6, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    @Override // androidx.core.view.MenuHost
    public final void removeMenuProvider(MenuProvider menuProvider) {
        this.f2720H.removeMenuProvider(menuProvider);
    }

    public final boolean s(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    public void setBackInvokedCallbackEnabled(boolean z2) {
        if (this.f2728Q != z2) {
            this.f2728Q = z2;
            t();
        }
    }

    public void setCollapseContentDescription(int i3) {
        setCollapseContentDescription(i3 != 0 ? getContext().getText(i3) : null);
    }

    public void setCollapseIcon(int i3) {
        setCollapseIcon(d.v(getContext(), i3));
    }

    public void setCollapsible(boolean z2) {
        this.f2725N = z2;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i3) {
        if (i3 < 0) {
            i3 = Integer.MIN_VALUE;
        }
        if (i3 != this.f2748w) {
            this.f2748w = i3;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i3) {
        if (i3 < 0) {
            i3 = Integer.MIN_VALUE;
        }
        if (i3 != this.f2747v) {
            this.f2747v = i3;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setLogo(int i3) {
        setLogo(d.v(getContext(), i3));
    }

    public void setLogoDescription(int i3) {
        setLogoDescription(getContext().getText(i3));
    }

    public void setNavigationContentDescription(int i3) {
        setNavigationContentDescription(i3 != 0 ? getContext().getText(i3) : null);
    }

    public void setNavigationIcon(int i3) {
        setNavigationIcon(d.v(getContext(), i3));
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        g();
        this.f2732e.setOnClickListener(onClickListener);
    }

    public void setOverflowIcon(Drawable drawable) {
        e();
        this.b.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i3) {
        if (this.f2737l != i3) {
            this.f2737l = i3;
            if (i3 == 0) {
                this.f2736k = getContext();
            } else {
                this.f2736k = new ContextThemeWrapper(getContext(), i3);
            }
        }
    }

    public void setSubtitle(int i3) {
        setSubtitle(getContext().getText(i3));
    }

    public void setSubtitleTextColor(int i3) {
        setSubtitleTextColor(ColorStateList.valueOf(i3));
    }

    public void setTitle(int i3) {
        setTitle(getContext().getText(i3));
    }

    public void setTitleMarginBottom(int i3) {
        this.f2745t = i3;
        requestLayout();
    }

    public void setTitleMarginEnd(int i3) {
        this.f2743r = i3;
        requestLayout();
    }

    public void setTitleMarginStart(int i3) {
        this.f2742q = i3;
        requestLayout();
    }

    public void setTitleMarginTop(int i3) {
        this.f2744s = i3;
        requestLayout();
    }

    public void setTitleTextColor(int i3) {
        setTitleTextColor(ColorStateList.valueOf(i3));
    }

    public final void t() {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        if (Build.VERSION.SDK_INT >= 33) {
            OnBackInvokedDispatcher onBackInvokedDispatcherA = c1.a(this);
            d1 d1Var = this.f2724M;
            boolean z2 = (d1Var == null || d1Var.f4819c == null || onBackInvokedDispatcherA == null || !isAttachedToWindow() || !this.f2728Q) ? false : true;
            if (z2 && this.f2727P == null) {
                if (this.f2726O == null) {
                    this.f2726O = c1.b(new a1(this, 0));
                }
                c1.c(onBackInvokedDispatcherA, this.f2726O);
                this.f2727P = onBackInvokedDispatcherA;
                return;
            }
            if (z2 || (onBackInvokedDispatcher = this.f2727P) == null) {
                return;
            }
            c1.d(onBackInvokedDispatcher, this.f2726O);
            this.f2727P = null;
        }
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i3) {
        super(context, attributeSet, R.attr.toolbarStyle);
        this.f2749x = 8388627;
        this.f2717E = new ArrayList();
        this.f2718F = new ArrayList();
        this.f2719G = new int[2];
        this.f2720H = new MenuHostHelper(new a1(this, 1));
        this.f2721I = new ArrayList();
        this.f2722J = new b1(this);
        this.f2729R = new u0(14, this);
        Context context2 = getContext();
        int[] iArr = a.f3861x;
        Z0 z0E = Z0.e(context2, attributeSet, iArr, R.attr.toolbarStyle);
        ViewCompat.saveAttributeDataForStyleable(this, context, iArr, attributeSet, z0E.b, R.attr.toolbarStyle, 0);
        TypedArray typedArray = z0E.b;
        this.f2738m = typedArray.getResourceId(28, 0);
        this.f2739n = typedArray.getResourceId(19, 0);
        this.f2749x = typedArray.getInteger(0, 8388627);
        this.f2740o = typedArray.getInteger(2, 48);
        int dimensionPixelOffset = typedArray.getDimensionPixelOffset(22, 0);
        dimensionPixelOffset = typedArray.hasValue(27) ? typedArray.getDimensionPixelOffset(27, dimensionPixelOffset) : dimensionPixelOffset;
        this.f2745t = dimensionPixelOffset;
        this.f2744s = dimensionPixelOffset;
        this.f2743r = dimensionPixelOffset;
        this.f2742q = dimensionPixelOffset;
        int dimensionPixelOffset2 = typedArray.getDimensionPixelOffset(25, -1);
        if (dimensionPixelOffset2 >= 0) {
            this.f2742q = dimensionPixelOffset2;
        }
        int dimensionPixelOffset3 = typedArray.getDimensionPixelOffset(24, -1);
        if (dimensionPixelOffset3 >= 0) {
            this.f2743r = dimensionPixelOffset3;
        }
        int dimensionPixelOffset4 = typedArray.getDimensionPixelOffset(26, -1);
        if (dimensionPixelOffset4 >= 0) {
            this.f2744s = dimensionPixelOffset4;
        }
        int dimensionPixelOffset5 = typedArray.getDimensionPixelOffset(23, -1);
        if (dimensionPixelOffset5 >= 0) {
            this.f2745t = dimensionPixelOffset5;
        }
        this.f2741p = typedArray.getDimensionPixelSize(13, -1);
        int dimensionPixelOffset6 = typedArray.getDimensionPixelOffset(9, Integer.MIN_VALUE);
        int dimensionPixelOffset7 = typedArray.getDimensionPixelOffset(5, Integer.MIN_VALUE);
        int dimensionPixelSize = typedArray.getDimensionPixelSize(7, 0);
        int dimensionPixelSize2 = typedArray.getDimensionPixelSize(8, 0);
        d();
        R0 r2 = this.f2746u;
        r2.f4737h = false;
        if (dimensionPixelSize != Integer.MIN_VALUE) {
            r2.f4736e = dimensionPixelSize;
            r2.f4733a = dimensionPixelSize;
        }
        if (dimensionPixelSize2 != Integer.MIN_VALUE) {
            r2.f = dimensionPixelSize2;
            r2.b = dimensionPixelSize2;
        }
        if (dimensionPixelOffset6 != Integer.MIN_VALUE || dimensionPixelOffset7 != Integer.MIN_VALUE) {
            r2.a(dimensionPixelOffset6, dimensionPixelOffset7);
        }
        this.f2747v = typedArray.getDimensionPixelOffset(10, Integer.MIN_VALUE);
        this.f2748w = typedArray.getDimensionPixelOffset(6, Integer.MIN_VALUE);
        this.g = z0E.b(4);
        this.f2733h = typedArray.getText(3);
        CharSequence text = typedArray.getText(21);
        if (!TextUtils.isEmpty(text)) {
            setTitle(text);
        }
        CharSequence text2 = typedArray.getText(18);
        if (!TextUtils.isEmpty(text2)) {
            setSubtitle(text2);
        }
        this.f2736k = getContext();
        setPopupTheme(typedArray.getResourceId(17, 0));
        Drawable drawableB = z0E.b(16);
        if (drawableB != null) {
            setNavigationIcon(drawableB);
        }
        CharSequence text3 = typedArray.getText(15);
        if (!TextUtils.isEmpty(text3)) {
            setNavigationContentDescription(text3);
        }
        Drawable drawableB2 = z0E.b(11);
        if (drawableB2 != null) {
            setLogo(drawableB2);
        }
        CharSequence text4 = typedArray.getText(12);
        if (!TextUtils.isEmpty(text4)) {
            setLogoDescription(text4);
        }
        if (typedArray.hasValue(29)) {
            setTitleTextColor(z0E.a(29));
        }
        if (typedArray.hasValue(20)) {
            setSubtitleTextColor(z0E.a(20));
        }
        if (typedArray.hasValue(14)) {
            m(typedArray.getResourceId(14, 0));
        }
        z0E.f();
    }

    @Override // androidx.core.view.MenuHost
    public final void addMenuProvider(MenuProvider menuProvider, LifecycleOwner lifecycleOwner) {
        this.f2720H.addMenuProvider(menuProvider, lifecycleOwner);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        Context context = getContext();
        e1 e1Var = new e1(context, attributeSet);
        e1Var.f4821a = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.b);
        e1Var.f4821a = typedArrayObtainStyledAttributes.getInt(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        e1Var.b = 0;
        return e1Var;
    }

    public void setCollapseContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            c();
        }
        A a3 = this.f2734i;
        if (a3 != null) {
            a3.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(Drawable drawable) {
        if (drawable != null) {
            c();
            this.f2734i.setImageDrawable(drawable);
        } else {
            A a3 = this.f2734i;
            if (a3 != null) {
                a3.setImageDrawable(this.g);
            }
        }
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            if (this.f == null) {
                this.f = new B(getContext(), null, 0);
            }
            if (!n(this.f)) {
                b(this.f, true);
            }
        } else {
            B b = this.f;
            if (b != null && n(b)) {
                removeView(this.f);
                this.f2718F.remove(this.f);
            }
        }
        B b3 = this.f;
        if (b3 != null) {
            b3.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence) && this.f == null) {
            this.f = new B(getContext(), null, 0);
        }
        B b = this.f;
        if (b != null) {
            b.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            g();
        }
        A a3 = this.f2732e;
        if (a3 != null) {
            a3.setContentDescription(charSequence);
            p000a.a.J(this.f2732e, charSequence);
        }
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            g();
            if (!n(this.f2732e)) {
                b(this.f2732e, true);
            }
        } else {
            A a3 = this.f2732e;
            if (a3 != null && n(a3)) {
                removeView(this.f2732e);
                this.f2718F.remove(this.f2732e);
            }
        }
        A a4 = this.f2732e;
        if (a4 != null) {
            a4.setImageDrawable(drawable);
        }
    }

    public void setSubtitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            C0285d0 c0285d0 = this.f2731d;
            if (c0285d0 != null && n(c0285d0)) {
                removeView(this.f2731d);
                this.f2718F.remove(this.f2731d);
            }
        } else {
            if (this.f2731d == null) {
                Context context = getContext();
                C0285d0 c0285d1 = new C0285d0(context, null);
                this.f2731d = c0285d1;
                c0285d1.setSingleLine();
                this.f2731d.setEllipsize(TextUtils.TruncateAt.END);
                int i3 = this.f2739n;
                if (i3 != 0) {
                    this.f2731d.setTextAppearance(context, i3);
                }
                ColorStateList colorStateList = this.f2714B;
                if (colorStateList != null) {
                    this.f2731d.setTextColor(colorStateList);
                }
            }
            if (!n(this.f2731d)) {
                b(this.f2731d, true);
            }
        }
        C0285d0 c0285d2 = this.f2731d;
        if (c0285d2 != null) {
            c0285d2.setText(charSequence);
        }
        this.f2751z = charSequence;
    }

    public void setSubtitleTextColor(ColorStateList colorStateList) {
        this.f2714B = colorStateList;
        C0285d0 c0285d0 = this.f2731d;
        if (c0285d0 != null) {
            c0285d0.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            C0285d0 c0285d0 = this.f2730c;
            if (c0285d0 != null && n(c0285d0)) {
                removeView(this.f2730c);
                this.f2718F.remove(this.f2730c);
            }
        } else {
            if (this.f2730c == null) {
                Context context = getContext();
                C0285d0 c0285d1 = new C0285d0(context, null);
                this.f2730c = c0285d1;
                c0285d1.setSingleLine();
                this.f2730c.setEllipsize(TextUtils.TruncateAt.END);
                int i3 = this.f2738m;
                if (i3 != 0) {
                    this.f2730c.setTextAppearance(context, i3);
                }
                ColorStateList colorStateList = this.f2713A;
                if (colorStateList != null) {
                    this.f2730c.setTextColor(colorStateList);
                }
            }
            if (!n(this.f2730c)) {
                b(this.f2730c, true);
            }
        }
        C0285d0 c0285d2 = this.f2730c;
        if (c0285d2 != null) {
            c0285d2.setText(charSequence);
        }
        this.f2750y = charSequence;
    }

    public void setTitleTextColor(ColorStateList colorStateList) {
        this.f2713A = colorStateList;
        C0285d0 c0285d0 = this.f2730c;
        if (c0285d0 != null) {
            c0285d0.setTextColor(colorStateList);
        }
    }

    @Override // androidx.core.view.MenuHost
    public final void addMenuProvider(MenuProvider menuProvider, LifecycleOwner lifecycleOwner, Lifecycle.State state) {
        this.f2720H.addMenuProvider(menuProvider, lifecycleOwner, state);
    }

    public void setOnMenuItemClickListener(f1 f1Var) {
    }
}
