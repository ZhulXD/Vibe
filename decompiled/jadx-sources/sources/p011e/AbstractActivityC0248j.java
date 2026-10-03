package p011e;

import N.f;
import android.R;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.activity.ViewTreeOnBackPressedDispatcherOwner;
import androidx.core.app.ActivityCompat;
import androidx.core.app.AppLocalesStorageHelper;
import androidx.core.app.NavUtils;
import androidx.core.app.TaskStackBuilder;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.os.LocaleListCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import androidx.lifecycle.ViewTreeViewModelStoreOwner;
import androidx.savedstate.ViewTreeSavedStateRegistryOwner;
import k.C0321w;
import k.P0;
import k.i1;
import k.n1;
import p021i.c;
import p021i.h;
import p021i.j;
import p041q.g;

/* JADX INFO: renamed from: e.j, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractActivityC0248j extends FragmentActivity implements InterfaceC0249k, TaskStackBuilder.SupportParentable {
    public B b;

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        l();
        B b = (B) k();
        b.w();
        ((ViewGroup) b.f4008B.findViewById(R.id.content)).addView(view, layoutParams);
        b.f4042n.a(b.f4041m.getCallback());
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0194  */
    /* JADX WARN: Code duplicated, block: B:104:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:107:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:110:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:113:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:116:0x01d6  */
    /* JADX WARN: Code duplicated, block: B:119:0x01de  */
    /* JADX WARN: Code duplicated, block: B:123:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:44:0x0091  */
    /* JADX WARN: Code duplicated, block: B:47:0x009d  */
    /* JADX WARN: Code duplicated, block: B:50:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:52:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:55:0x00db  */
    /* JADX WARN: Code duplicated, block: B:57:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:60:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:63:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:66:0x0100  */
    /* JADX WARN: Code duplicated, block: B:69:0x0108  */
    /* JADX WARN: Code duplicated, block: B:72:0x0110  */
    /* JADX WARN: Code duplicated, block: B:75:0x0118  */
    /* JADX WARN: Code duplicated, block: B:78:0x0120  */
    /* JADX WARN: Code duplicated, block: B:81:0x0128  */
    /* JADX WARN: Code duplicated, block: B:84:0x0134  */
    /* JADX WARN: Code duplicated, block: B:87:0x0143  */
    /* JADX WARN: Code duplicated, block: B:90:0x0152  */
    /* JADX WARN: Code duplicated, block: B:93:0x0161  */
    /* JADX WARN: Code duplicated, block: B:96:0x016a  */
    /* JADX WARN: Code duplicated, block: B:98:0x0178  */
    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        Configuration configuration;
        Configuration configuration2;
        c cVar;
        float f;
        float f3;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        int i30;
        int i31;
        int i32;
        int i33;
        int i34;
        int i35;
        int i36;
        int i37;
        int i38;
        int i39;
        B b = (B) k();
        b.f4021P = true;
        int i40 = b.f4025T;
        if (i40 == -100) {
            i40 = p.f4152c;
        }
        int iB = b.B(context, i40);
        if (p.d(context) && p.d(context)) {
            if (Build.VERSION.SDK_INT < 33) {
                synchronized (p.f4157j) {
                    try {
                        LocaleListCompat localeListCompat = p.f4153d;
                        if (localeListCompat == null) {
                            if (p.f4154e == null) {
                                p.f4154e = LocaleListCompat.forLanguageTags(AppLocalesStorageHelper.readLocales(context));
                            }
                            if (!p.f4154e.isEmpty()) {
                                p.f4153d = p.f4154e;
                            }
                        } else if (!localeListCompat.equals(p.f4154e)) {
                            LocaleListCompat localeListCompat2 = p.f4153d;
                            p.f4154e = localeListCompat2;
                            AppLocalesStorageHelper.persistLocales(context, localeListCompat2.toLanguageTags());
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } else if (!p.g) {
                p.b.execute(new f(context, 3));
            }
        }
        LocaleListCompat localeListCompatP = B.p(context);
        Configuration configuration3 = null;
        if (context instanceof ContextThemeWrapper) {
            try {
                ((ContextThemeWrapper) context).applyOverrideConfiguration(B.t(context, iB, localeListCompatP, null, false));
            } catch (IllegalStateException unused) {
                if (context instanceof c) {
                    try {
                        ((c) context).a(B.t(context, iB, localeListCompatP, null, false));
                    } catch (IllegalStateException unused2) {
                        if (B.f4006k0) {
                            Configuration configuration4 = new Configuration();
                            configuration4.uiMode = -1;
                            configuration4.fontScale = 0.0f;
                            configuration = context.createConfigurationContext(configuration4).getResources().getConfiguration();
                            configuration2 = context.getResources().getConfiguration();
                            configuration.uiMode = configuration2.uiMode;
                            if (!configuration.equals(configuration2)) {
                                configuration3 = new Configuration();
                                configuration3.fontScale = 0.0f;
                                if (configuration.diff(configuration2) != 0) {
                                    f = configuration.fontScale;
                                    f3 = configuration2.fontScale;
                                    if (f != f3) {
                                        configuration3.fontScale = f3;
                                    }
                                    i3 = configuration.mcc;
                                    i4 = configuration2.mcc;
                                    if (i3 != i4) {
                                        configuration3.mcc = i4;
                                    }
                                    i5 = configuration.mnc;
                                    i6 = configuration2.mnc;
                                    if (i5 != i6) {
                                        configuration3.mnc = i6;
                                    }
                                    i7 = Build.VERSION.SDK_INT;
                                    u.a(configuration, configuration2, configuration3);
                                    i8 = configuration.touchscreen;
                                    i9 = configuration2.touchscreen;
                                    if (i8 != i9) {
                                        configuration3.touchscreen = i9;
                                    }
                                    i10 = configuration.keyboard;
                                    i11 = configuration2.keyboard;
                                    if (i10 != i11) {
                                        configuration3.keyboard = i11;
                                    }
                                    i12 = configuration.keyboardHidden;
                                    i13 = configuration2.keyboardHidden;
                                    if (i12 != i13) {
                                        configuration3.keyboardHidden = i13;
                                    }
                                    i14 = configuration.navigation;
                                    i15 = configuration2.navigation;
                                    if (i14 != i15) {
                                        configuration3.navigation = i15;
                                    }
                                    i16 = configuration.navigationHidden;
                                    i17 = configuration2.navigationHidden;
                                    if (i16 != i17) {
                                        configuration3.navigationHidden = i17;
                                    }
                                    i18 = configuration.orientation;
                                    i19 = configuration2.orientation;
                                    if (i18 != i19) {
                                        configuration3.orientation = i19;
                                    }
                                    i20 = configuration.screenLayout & 15;
                                    i21 = configuration2.screenLayout & 15;
                                    if (i20 != i21) {
                                        configuration3.screenLayout |= i21;
                                    }
                                    i22 = configuration.screenLayout & 192;
                                    i23 = configuration2.screenLayout & 192;
                                    if (i22 != i23) {
                                        configuration3.screenLayout |= i23;
                                    }
                                    i24 = configuration.screenLayout & 48;
                                    i25 = configuration2.screenLayout & 48;
                                    if (i24 != i25) {
                                        configuration3.screenLayout |= i25;
                                    }
                                    i26 = configuration.screenLayout & 768;
                                    i27 = configuration2.screenLayout & 768;
                                    if (i26 != i27) {
                                        configuration3.screenLayout |= i27;
                                    }
                                    if (i7 >= 26) {
                                        if ((configuration.colorMode & 3) != (configuration2.colorMode & 3)) {
                                            configuration3.colorMode |= configuration2.colorMode & 3;
                                        }
                                        if ((configuration.colorMode & 12) != (configuration2.colorMode & 12)) {
                                            configuration3.colorMode |= configuration2.colorMode & 12;
                                        }
                                    }
                                    i28 = configuration.uiMode & 15;
                                    i29 = configuration2.uiMode & 15;
                                    if (i28 != i29) {
                                        configuration3.uiMode |= i29;
                                    }
                                    i30 = configuration.uiMode & 48;
                                    i31 = configuration2.uiMode & 48;
                                    if (i30 != i31) {
                                        configuration3.uiMode |= i31;
                                    }
                                    i32 = configuration.screenWidthDp;
                                    i33 = configuration2.screenWidthDp;
                                    if (i32 != i33) {
                                        configuration3.screenWidthDp = i33;
                                    }
                                    i34 = configuration.screenHeightDp;
                                    i35 = configuration2.screenHeightDp;
                                    if (i34 != i35) {
                                        configuration3.screenHeightDp = i35;
                                    }
                                    i36 = configuration.smallestScreenWidthDp;
                                    i37 = configuration2.smallestScreenWidthDp;
                                    if (i36 != i37) {
                                        configuration3.smallestScreenWidthDp = i37;
                                    }
                                    i38 = configuration.densityDpi;
                                    i39 = configuration2.densityDpi;
                                    if (i38 != i39) {
                                        configuration3.densityDpi = i39;
                                    }
                                }
                            }
                            Configuration configurationT = B.t(context, iB, localeListCompatP, configuration3, true);
                            cVar = new c(context, com.minhub.gamehub.R.style.Theme_AppCompat_Empty);
                            cVar.a(configurationT);
                            try {
                                if (context.getTheme() != null) {
                                    ResourcesCompat.ThemeCompat.rebase(cVar.getTheme());
                                }
                            } catch (NullPointerException unused3) {
                            }
                            context = cVar;
                        }
                    }
                } else if (B.f4006k0) {
                    Configuration configuration5 = new Configuration();
                    configuration5.uiMode = -1;
                    configuration5.fontScale = 0.0f;
                    configuration = context.createConfigurationContext(configuration5).getResources().getConfiguration();
                    configuration2 = context.getResources().getConfiguration();
                    configuration.uiMode = configuration2.uiMode;
                    if (!configuration.equals(configuration2)) {
                        configuration3 = new Configuration();
                        configuration3.fontScale = 0.0f;
                        if (configuration.diff(configuration2) != 0) {
                            f = configuration.fontScale;
                            f3 = configuration2.fontScale;
                            if (f != f3) {
                                configuration3.fontScale = f3;
                            }
                            i3 = configuration.mcc;
                            i4 = configuration2.mcc;
                            if (i3 != i4) {
                                configuration3.mcc = i4;
                            }
                            i5 = configuration.mnc;
                            i6 = configuration2.mnc;
                            if (i5 != i6) {
                                configuration3.mnc = i6;
                            }
                            i7 = Build.VERSION.SDK_INT;
                            u.a(configuration, configuration2, configuration3);
                            i8 = configuration.touchscreen;
                            i9 = configuration2.touchscreen;
                            if (i8 != i9) {
                                configuration3.touchscreen = i9;
                            }
                            i10 = configuration.keyboard;
                            i11 = configuration2.keyboard;
                            if (i10 != i11) {
                                configuration3.keyboard = i11;
                            }
                            i12 = configuration.keyboardHidden;
                            i13 = configuration2.keyboardHidden;
                            if (i12 != i13) {
                                configuration3.keyboardHidden = i13;
                            }
                            i14 = configuration.navigation;
                            i15 = configuration2.navigation;
                            if (i14 != i15) {
                                configuration3.navigation = i15;
                            }
                            i16 = configuration.navigationHidden;
                            i17 = configuration2.navigationHidden;
                            if (i16 != i17) {
                                configuration3.navigationHidden = i17;
                            }
                            i18 = configuration.orientation;
                            i19 = configuration2.orientation;
                            if (i18 != i19) {
                                configuration3.orientation = i19;
                            }
                            i20 = configuration.screenLayout & 15;
                            i21 = configuration2.screenLayout & 15;
                            if (i20 != i21) {
                                configuration3.screenLayout |= i21;
                            }
                            i22 = configuration.screenLayout & 192;
                            i23 = configuration2.screenLayout & 192;
                            if (i22 != i23) {
                                configuration3.screenLayout |= i23;
                            }
                            i24 = configuration.screenLayout & 48;
                            i25 = configuration2.screenLayout & 48;
                            if (i24 != i25) {
                                configuration3.screenLayout |= i25;
                            }
                            i26 = configuration.screenLayout & 768;
                            i27 = configuration2.screenLayout & 768;
                            if (i26 != i27) {
                                configuration3.screenLayout |= i27;
                            }
                            if (i7 >= 26) {
                                if ((configuration.colorMode & 3) != (configuration2.colorMode & 3)) {
                                    configuration3.colorMode |= configuration2.colorMode & 3;
                                }
                                if ((configuration.colorMode & 12) != (configuration2.colorMode & 12)) {
                                    configuration3.colorMode |= configuration2.colorMode & 12;
                                }
                            }
                            i28 = configuration.uiMode & 15;
                            i29 = configuration2.uiMode & 15;
                            if (i28 != i29) {
                                configuration3.uiMode |= i29;
                            }
                            i30 = configuration.uiMode & 48;
                            i31 = configuration2.uiMode & 48;
                            if (i30 != i31) {
                                configuration3.uiMode |= i31;
                            }
                            i32 = configuration.screenWidthDp;
                            i33 = configuration2.screenWidthDp;
                            if (i32 != i33) {
                                configuration3.screenWidthDp = i33;
                            }
                            i34 = configuration.screenHeightDp;
                            i35 = configuration2.screenHeightDp;
                            if (i34 != i35) {
                                configuration3.screenHeightDp = i35;
                            }
                            i36 = configuration.smallestScreenWidthDp;
                            i37 = configuration2.smallestScreenWidthDp;
                            if (i36 != i37) {
                                configuration3.smallestScreenWidthDp = i37;
                            }
                            i38 = configuration.densityDpi;
                            i39 = configuration2.densityDpi;
                            if (i38 != i39) {
                                configuration3.densityDpi = i39;
                            }
                        }
                    }
                    Configuration configurationT2 = B.t(context, iB, localeListCompatP, configuration3, true);
                    cVar = new c(context, com.minhub.gamehub.R.style.Theme_AppCompat_Empty);
                    cVar.a(configurationT2);
                    if (context.getTheme() != null) {
                        ResourcesCompat.ThemeCompat.rebase(cVar.getTheme());
                    }
                    context = cVar;
                }
            }
        } else if (context instanceof c) {
            ((c) context).a(B.t(context, iB, localeListCompatP, null, false));
        } else if (B.f4006k0) {
            Configuration configuration6 = new Configuration();
            configuration6.uiMode = -1;
            configuration6.fontScale = 0.0f;
            configuration = context.createConfigurationContext(configuration6).getResources().getConfiguration();
            configuration2 = context.getResources().getConfiguration();
            configuration.uiMode = configuration2.uiMode;
            if (!configuration.equals(configuration2)) {
                configuration3 = new Configuration();
                configuration3.fontScale = 0.0f;
                if (configuration.diff(configuration2) != 0) {
                    f = configuration.fontScale;
                    f3 = configuration2.fontScale;
                    if (f != f3) {
                        configuration3.fontScale = f3;
                    }
                    i3 = configuration.mcc;
                    i4 = configuration2.mcc;
                    if (i3 != i4) {
                        configuration3.mcc = i4;
                    }
                    i5 = configuration.mnc;
                    i6 = configuration2.mnc;
                    if (i5 != i6) {
                        configuration3.mnc = i6;
                    }
                    i7 = Build.VERSION.SDK_INT;
                    u.a(configuration, configuration2, configuration3);
                    i8 = configuration.touchscreen;
                    i9 = configuration2.touchscreen;
                    if (i8 != i9) {
                        configuration3.touchscreen = i9;
                    }
                    i10 = configuration.keyboard;
                    i11 = configuration2.keyboard;
                    if (i10 != i11) {
                        configuration3.keyboard = i11;
                    }
                    i12 = configuration.keyboardHidden;
                    i13 = configuration2.keyboardHidden;
                    if (i12 != i13) {
                        configuration3.keyboardHidden = i13;
                    }
                    i14 = configuration.navigation;
                    i15 = configuration2.navigation;
                    if (i14 != i15) {
                        configuration3.navigation = i15;
                    }
                    i16 = configuration.navigationHidden;
                    i17 = configuration2.navigationHidden;
                    if (i16 != i17) {
                        configuration3.navigationHidden = i17;
                    }
                    i18 = configuration.orientation;
                    i19 = configuration2.orientation;
                    if (i18 != i19) {
                        configuration3.orientation = i19;
                    }
                    i20 = configuration.screenLayout & 15;
                    i21 = configuration2.screenLayout & 15;
                    if (i20 != i21) {
                        configuration3.screenLayout |= i21;
                    }
                    i22 = configuration.screenLayout & 192;
                    i23 = configuration2.screenLayout & 192;
                    if (i22 != i23) {
                        configuration3.screenLayout |= i23;
                    }
                    i24 = configuration.screenLayout & 48;
                    i25 = configuration2.screenLayout & 48;
                    if (i24 != i25) {
                        configuration3.screenLayout |= i25;
                    }
                    i26 = configuration.screenLayout & 768;
                    i27 = configuration2.screenLayout & 768;
                    if (i26 != i27) {
                        configuration3.screenLayout |= i27;
                    }
                    if (i7 >= 26) {
                        if ((configuration.colorMode & 3) != (configuration2.colorMode & 3)) {
                            configuration3.colorMode |= configuration2.colorMode & 3;
                        }
                        if ((configuration.colorMode & 12) != (configuration2.colorMode & 12)) {
                            configuration3.colorMode |= configuration2.colorMode & 12;
                        }
                    }
                    i28 = configuration.uiMode & 15;
                    i29 = configuration2.uiMode & 15;
                    if (i28 != i29) {
                        configuration3.uiMode |= i29;
                    }
                    i30 = configuration.uiMode & 48;
                    i31 = configuration2.uiMode & 48;
                    if (i30 != i31) {
                        configuration3.uiMode |= i31;
                    }
                    i32 = configuration.screenWidthDp;
                    i33 = configuration2.screenWidthDp;
                    if (i32 != i33) {
                        configuration3.screenWidthDp = i33;
                    }
                    i34 = configuration.screenHeightDp;
                    i35 = configuration2.screenHeightDp;
                    if (i34 != i35) {
                        configuration3.screenHeightDp = i35;
                    }
                    i36 = configuration.smallestScreenWidthDp;
                    i37 = configuration2.smallestScreenWidthDp;
                    if (i36 != i37) {
                        configuration3.smallestScreenWidthDp = i37;
                    }
                    i38 = configuration.densityDpi;
                    i39 = configuration2.densityDpi;
                    if (i38 != i39) {
                        configuration3.densityDpi = i39;
                    }
                }
            }
            Configuration configurationT3 = B.t(context, iB, localeListCompatP, configuration3, true);
            cVar = new c(context, com.minhub.gamehub.R.style.Theme_AppCompat_Empty);
            cVar.a(configurationT3);
            if (context.getTheme() != null) {
                ResourcesCompat.ThemeCompat.rebase(cVar.getTheme());
            }
            context = cVar;
        }
        super.attachBaseContext(context);
    }

    @Override // android.app.Activity
    public final void closeOptionsMenu() {
        ((B) k()).A();
        if (getWindow().hasFeature(0)) {
            super.closeOptionsMenu();
        }
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        keyEvent.getKeyCode();
        ((B) k()).A();
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity
    public final View findViewById(int i3) {
        B b = (B) k();
        b.w();
        return b.f4041m.findViewById(i3);
    }

    @Override // android.app.Activity
    public final MenuInflater getMenuInflater() {
        B b = (B) k();
        if (b.f4045q == null) {
            b.A();
            M m2 = b.f4044p;
            b.f4045q = new h(m2 != null ? m2.f0() : b.f4040l);
        }
        return b.f4045q;
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        int i3 = n1.f4892a;
        return super.getResources();
    }

    @Override // androidx.core.app.TaskStackBuilder.SupportParentable
    public final Intent getSupportParentActivityIntent() {
        return NavUtils.getParentActivityIntent(this);
    }

    @Override // android.app.Activity
    public final void invalidateOptionsMenu() {
        k().b();
    }

    public final p k() {
        if (this.b == null) {
            n nVar = p.b;
            this.b = new B(this, null, this, this);
        }
        return this.b;
    }

    public final void l() {
        ViewTreeLifecycleOwner.set(getWindow().getDecorView(), this);
        ViewTreeViewModelStoreOwner.set(getWindow().getDecorView(), this);
        ViewTreeSavedStateRegistryOwner.set(getWindow().getDecorView(), this);
        ViewTreeOnBackPressedDispatcherOwner.set(getWindow().getDecorView(), this);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        B b = (B) k();
        if (b.f4013G && b.f4007A) {
            b.A();
            M m2 = b.f4044p;
            if (m2 != null) {
                m2.i0(m2.b.getResources().getBoolean(com.minhub.gamehub.R.bool.abc_action_bar_embed_tabs));
            }
        }
        C0321w c0321wA = C0321w.a();
        Context context = b.f4040l;
        synchronized (c0321wA) {
            P0 p0 = c0321wA.f4935a;
            synchronized (p0) {
                g gVar = (g) p0.b.get(context);
                if (gVar != null) {
                    gVar.a();
                }
            }
        }
        b.f4024S = new Configuration(b.f4040l.getResources().getConfiguration());
        b.n(false, false);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        k().f();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i3, KeyEvent keyEvent) {
        Window window;
        if (Build.VERSION.SDK_INT >= 26 || keyEvent.isCtrlPressed() || KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState()) || keyEvent.getRepeatCount() != 0 || KeyEvent.isModifierKey(keyEvent.getKeyCode()) || (window = getWindow()) == null || window.getDecorView() == null || !window.getDecorView().dispatchKeyShortcutEvent(keyEvent)) {
            return super.onKeyDown(i3, keyEvent);
        }
        return true;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i3, MenuItem menuItem) {
        Intent parentActivityIntent;
        if (!super.onMenuItemSelected(i3, menuItem)) {
            B b = (B) k();
            b.A();
            M m2 = b.f4044p;
            if (menuItem.getItemId() != 16908332 || m2 == null || (((i1) m2.f).b & 4) == 0 || (parentActivityIntent = NavUtils.getParentActivityIntent(this)) == null) {
                return false;
            }
            if (!NavUtils.shouldUpRecreateTask(this, parentActivityIntent)) {
                NavUtils.navigateUpTo(this, parentActivityIntent);
                return true;
            }
            TaskStackBuilder taskStackBuilderCreate = TaskStackBuilder.create(this);
            taskStackBuilderCreate.addParentStack(this);
            taskStackBuilderCreate.startActivities();
            try {
                ActivityCompat.finishAffinity(this);
            } catch (IllegalStateException unused) {
                finish();
            }
        }
        return true;
    }

    @Override // android.app.Activity
    public final void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        ((B) k()).w();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPostResume() {
        super.onPostResume();
        B b = (B) k();
        b.A();
        M m2 = b.f4044p;
        if (m2 != null) {
            m2.f4090u = true;
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onStart() {
        super.onStart();
        ((B) k()).n(true, false);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        B b = (B) k();
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

    @Override // android.app.Activity
    public final void onTitleChanged(CharSequence charSequence, int i3) {
        super.onTitleChanged(charSequence, i3);
        k().m(charSequence);
    }

    @Override // android.app.Activity
    public final void openOptionsMenu() {
        ((B) k()).A();
        if (getWindow().hasFeature(0)) {
            super.openOptionsMenu();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void setContentView(int i3) {
        l();
        k().j(i3);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i3) {
        super.setTheme(i3);
        ((B) k()).f4026U = i3;
    }

    @Override // androidx.fragment.app.FragmentActivity
    public final void supportInvalidateOptionsMenu() {
        k().b();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        l();
        k().k(view);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        l();
        k().l(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onContentChanged() {
    }
}
