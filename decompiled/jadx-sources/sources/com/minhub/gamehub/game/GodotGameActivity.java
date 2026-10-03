package com.minhub.gamehub.game;

import A1.H;
import A1.RunnableC0034o;
import A1.v0;
import B1.m;
import B1.o;
import B1.s;
import B1.t;
import B1.u;
import B1.v;
import C1.I1;
import C1.RunnableC0068g1;
import I1.j;
import O0.b;
import S1.d;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.widget.FrameLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.data.GameRepository;
import com.minhub.gamehub.editor.EditModeOverlay;
import com.minhub.gamehub.game.GodotGameActivity;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import p011e.C0240b;
import p024j.C0269h;
import p061x1.a;
import p061x1.e;
import p064y1.AbstractC0367d1;
import p064y1.AbstractC0369e0;
import p064y1.C0;
import p064y1.C0356a;
import p064y1.C0429y1;
import p064y1.D0;
import p064y1.DialogInterfaceOnCancelListenerC0380i;
import p064y1.EnumC0420v1;
import p064y1.J0;
import p064y1.L1;
import p064y1.M;
import p064y1.S0;
import p064y1.V0;
import p064y1.W0;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/minhub/gamehub/game/GodotGameActivity;", "Landroidx/fragment/app/FragmentActivity;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGodotGameActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GodotGameActivity.kt\ncom/minhub/gamehub/game/GodotGameActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,965:1\n1#2:966\n1761#3,3:967\n774#3:970\n865#3,2:971\n1869#3,2:973\n774#3:975\n865#3,2:976\n1563#3:978\n1634#3,3:979\n360#3,7:982\n1208#3,2:989\n1236#3,4:991\n1563#3:995\n1634#3,3:996\n1869#3,2:1001\n1869#3,2:1003\n1869#3,2:1005\n1056#3:1014\n216#4,2:999\n216#4,2:1007\n1310#5,2:1009\n3829#5:1011\n4344#5,2:1012\n1310#5,2:1015\n*S KotlinDebug\n*F\n+ 1 GodotGameActivity.kt\ncom/minhub/gamehub/game/GodotGameActivity\n*L\n443#1:967,3\n485#1:970\n485#1:971,2\n485#1:973,2\n607#1:975\n607#1:976,2\n607#1:978\n607#1:979,3\n617#1:982,7\n727#1:989,2\n727#1:991,4\n728#1:995\n728#1:996,3\n831#1:1001,2\n842#1:1003,2\n850#1:1005,2\n938#1:1014\n759#1:999,2\n868#1:1007,2\n935#1:1009,2\n938#1:1011\n938#1:1012,2\n940#1:1015,2\n*E\n"})
public final class GodotGameActivity extends FragmentActivity {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final /* synthetic */ int f3707q = 0;
    public V0 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Fragment f3708c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public File f3709d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f3710e;
    public v0 f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Pair f3711h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public View f3712i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public FrameLayout f3713j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public FrameLayout f3714k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public j f3715l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public EditModeOverlay f3716m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public View f3717n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public View f3718o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f3719p;

    public GodotGameActivity() {
        System.currentTimeMillis();
        this.f3711h = TuplesKt.to(0, 0);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        Intrinsics.checkNotNullParameter(context, "base");
        String langCode = d.d(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(langCode, "langCode");
        Locale locale = new Locale(langCode);
        Locale.setDefault(locale);
        Configuration configuration = new Configuration(context.getResources().getConfiguration());
        configuration.setLocale(locale);
        Context contextCreateConfigurationContext = context.createConfigurationContext(configuration);
        Intrinsics.checkNotNullExpressionValue(contextCreateConfigurationContext, "createConfigurationContext(...)");
        super.attachBaseContext(contextCreateConfigurationContext);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final File getFilesDir() {
        File file = this.f3709d;
        if (file != null) {
            return file;
        }
        File filesDir = super.getFilesDir();
        Intrinsics.checkNotNullExpressionValue(filesDir, "getFilesDir(...)");
        return filesDir;
    }

    public final FrameLayout k() {
        int i3;
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        float f = displayMetrics.density;
        View decorView = getWindow().getDecorView();
        Intrinsics.checkNotNull(decorView, "null cannot be cast to non-null type android.view.ViewGroup");
        ViewGroup viewGroup = (ViewGroup) decorView;
        float width = viewGroup.getWidth() > 0 ? viewGroup.getWidth() : displayMetrics.widthPixels;
        float height = viewGroup.getHeight() > 0 ? viewGroup.getHeight() : displayMetrics.heightPixels;
        List listP = p();
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        frameLayout.setClickable(false);
        frameLayout.setFocusable(false);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listP) {
            if (((a) obj).f6001k) {
                arrayList.add(obj);
            }
        }
        int i4 = 0;
        for (int size = arrayList.size(); i4 < size; size = i3) {
            Object obj2 = arrayList.get(i4);
            i4++;
            a aVar = (a) obj2;
            List list = t.f351a;
            String str = aVar.f5994a;
            String str2 = aVar.f5999i;
            String str3 = aVar.b;
            float f3 = aVar.f5997e;
            float f4 = aVar.f5996d;
            float f5 = aVar.f6000j;
            final u uVarB = t.b(str);
            int i5 = (int) (aVar.f * f);
            float f6 = height;
            int i6 = (int) (aVar.g * f);
            float f7 = f;
            int color = -7829368;
            if (uVarB != null) {
                i3 = size;
                if (J0.f6092a[uVarB.f354d.ordinal()] == 3) {
                    o oVar = new o(this);
                    oVar.setAlpha(f5);
                    oVar.setOnDir(new H(10, this, uVarB));
                    oVar.setLayoutParams(new FrameLayout.LayoutParams(i5, i6));
                    oVar.setX((f4 * width) - (i5 / 2.0f));
                    oVar.setY((f3 * f6) - (i6 / 2.0f));
                    frameLayout.addView(oVar);
                } else {
                    m mVar = new m(this);
                    mVar.setLabel(str3);
                    try {
                        color = Color.parseColor(str2);
                    } catch (Exception unused) {
                    }
                    mVar.setBtnColor(color);
                    mVar.setShape(aVar.b());
                    mVar.setAlpha(f5);
                    mVar.setLayoutParams(new FrameLayout.LayoutParams(i5, i6));
                    mVar.setX((f4 * width) - (i5 / 2.0f));
                    mVar.setY((f3 * f6) - (i6 / 2.0f));
                    final int i7 = 0;
                    mVar.setOnPress(new Function0(this) { // from class: y1.B0

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public final /* synthetic */ GodotGameActivity f6036c;

                        {
                            this.f6036c = this;
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            int i8 = i7;
                            u uVar = uVarB;
                            GodotGameActivity godotGameActivity = this.f6036c;
                            switch (i8) {
                                case 0:
                                    int i9 = GodotGameActivity.f3707q;
                                    godotGameActivity.o(uVar, true);
                                    break;
                                default:
                                    int i10 = GodotGameActivity.f3707q;
                                    godotGameActivity.o(uVar, false);
                                    break;
                            }
                            return Unit.INSTANCE;
                        }
                    });
                    final int i8 = 1;
                    mVar.setOnRelease(new Function0(this) { // from class: y1.B0

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public final /* synthetic */ GodotGameActivity f6036c;

                        {
                            this.f6036c = this;
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            int i9 = i8;
                            u uVar = uVarB;
                            GodotGameActivity godotGameActivity = this.f6036c;
                            switch (i9) {
                                case 0:
                                    int i10 = GodotGameActivity.f3707q;
                                    godotGameActivity.o(uVar, true);
                                    break;
                                default:
                                    int i11 = GodotGameActivity.f3707q;
                                    godotGameActivity.o(uVar, false);
                                    break;
                            }
                            return Unit.INSTANCE;
                        }
                    });
                    frameLayout.addView(mVar);
                }
            } else {
                i3 = size;
                Map map = s.f350a;
                String jsKeyCode = aVar.f5995c;
                Intrinsics.checkNotNullParameter(jsKeyCode, "jsKeyCode");
                Integer num = (Integer) s.f350a.get(jsKeyCode);
                if (num != null) {
                    int iIntValue = num.intValue();
                    m mVar2 = new m(this);
                    mVar2.setLabel(str3);
                    try {
                        color = Color.parseColor(str2);
                    } catch (Exception unused2) {
                    }
                    mVar2.setBtnColor(color);
                    mVar2.setShape(aVar.b());
                    mVar2.setAlpha(f5);
                    mVar2.setLayoutParams(new FrameLayout.LayoutParams(i5, i6));
                    mVar2.setX((f4 * width) - (i5 / 2.0f));
                    mVar2.setY((f3 * f6) - (i6 / 2.0f));
                    mVar2.setOnPress(new C0(this, iIntValue, 0));
                    mVar2.setOnRelease(new C0(this, iIntValue, 1));
                    frameLayout.addView(mVar2);
                }
                height = f6;
                f = f7;
            }
            height = f6;
            f = f7;
        }
        return frameLayout;
    }

    public final void l(boolean z2) {
        if (z2) {
            EditModeOverlay editModeOverlay = this.f3716m;
            List<a> currentConfigs = editModeOverlay != null ? editModeOverlay.getCurrentConfigs() : null;
            if (currentConfigs == null) {
                currentConfigs = CollectionsKt.emptyList();
            }
            if (!currentConfigs.isEmpty()) {
                List<a> listP = p();
                LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(currentConfigs, 10)), 16));
                for (Object obj : currentConfigs) {
                    linkedHashMap.put(((a) obj).f5994a, obj);
                }
                ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listP, 10));
                for (a aVar : listP) {
                    a aVar2 = (a) linkedHashMap.get(aVar.f5994a);
                    if (aVar2 != null) {
                        aVar = aVar2;
                    }
                    arrayList.add(aVar);
                }
                e.b(this, Integer.MIN_VALUE, arrayList);
                FrameLayout frameLayout = this.f3713j;
                if (frameLayout != null) {
                    View decorView = getWindow().getDecorView();
                    Intrinsics.checkNotNull(decorView, "null cannot be cast to non-null type android.view.ViewGroup");
                    ViewGroup viewGroup = (ViewGroup) decorView;
                    viewGroup.removeView(frameLayout);
                    FrameLayout frameLayoutK = k();
                    viewGroup.addView(frameLayoutK);
                    this.f3713j = frameLayoutK;
                }
            }
        }
        EditModeOverlay editModeOverlay2 = this.f3716m;
        if (editModeOverlay2 != null) {
            editModeOverlay2.setVisibility(8);
        }
        View view = this.f3717n;
        if (view != null) {
            view.setVisibility(8);
        }
        View view2 = this.f3718o;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        FrameLayout frameLayout2 = this.f3713j;
        if (frameLayout2 != null) {
            frameLayout2.setVisibility(0);
        }
    }

    public final Object m() {
        Class cls;
        V0 v2 = this.b;
        if (v2 != null) {
            Fragment fragment = this.f3708c;
            View view = fragment != null ? fragment.getView() : null;
            S0 s0 = v2.f;
            if (s0 != null && (cls = s0.f6135d) != null) {
                return V0.c(view, cls);
            }
        }
        return null;
    }

    public final void n() {
        View decorView = getWindow().getDecorView();
        Intrinsics.checkNotNullExpressionValue(decorView, "getDecorView(...)");
        if (Build.VERSION.SDK_INT < 30) {
            decorView.setSystemUiVisibility(5894);
            return;
        }
        getWindow().setDecorFitsSystemWindows(false);
        WindowInsetsController windowInsetsController = decorView.getWindowInsetsController();
        if (windowInsetsController != null) {
            windowInsetsController.hide(WindowInsets.Type.systemBars());
            windowInsetsController.setSystemBarsBehavior(2);
        }
    }

    public final void o(final u uVar, final boolean z2) {
        int iOrdinal = uVar.f354d.ordinal();
        if (iOrdinal != 3) {
            if (iOrdinal == 4) {
                s(!z2 ? 1 : 0, uVar.f355e);
                return;
            }
            if (!this.g && m() != null) {
                this.g = true;
                q(new D0(this, 3));
            }
            q(new Function0() { // from class: y1.E0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    V0 v2;
                    int i3 = GodotGameActivity.f3707q;
                    u uVar2 = uVar;
                    v vVar = uVar2.f354d;
                    int i4 = uVar2.f355e;
                    int iOrdinal2 = vVar.ordinal();
                    GodotGameActivity godotGameActivity = this;
                    boolean z3 = z2;
                    if (iOrdinal2 == 0) {
                        V0 v3 = godotGameActivity.b;
                        if (v3 != null) {
                            v3.b("joybutton", 0, Integer.valueOf(i4), Boolean.valueOf(z3));
                        }
                    } else if (iOrdinal2 == 2 && (v2 = godotGameActivity.b) != null) {
                        v2.b("joyaxis", 0, Integer.valueOf(i4), Float.valueOf(z3 ? 1.0f : 0.0f));
                    }
                    return Unit.INSTANCE;
                }
            });
            return;
        }
        Object objM = m();
        if (objM != null && this.b != null) {
            View view = null;
            try {
                Object objInvoke = objM.getClass().getMethod("getView", null).invoke(objM, null);
                if (objInvoke instanceof View) {
                    view = (View) objInvoke;
                }
            } catch (Exception unused) {
            }
            if (view != null) {
                final float width = view.getWidth() / 2.0f;
                final float height = view.getHeight() / 2.0f;
                final int i3 = !z2 ? 1 : 0;
                final float f = z2 ? 1.0f : 0.0f;
                q(new Function0() { // from class: y1.H0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Float fValueOf = Float.valueOf(0.0f);
                        V0 v2 = this.b.b;
                        if (v2 != null) {
                            Integer numValueOf = Integer.valueOf(i3);
                            Float fValueOf2 = Float.valueOf(width);
                            Float fValueOf3 = Float.valueOf(height);
                            Boolean bool = Boolean.FALSE;
                            v2.b("dispatchMouseEvent", numValueOf, 1, fValueOf2, fValueOf3, fValueOf, fValueOf, bool, bool, Float.valueOf(f), fValueOf, fValueOf);
                        }
                        return Unit.INSTANCE;
                    }
                });
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        File file;
        File[] fileArrListFiles;
        Object objM9constructorimpl;
        Object objM9constructorimpl2;
        Object objM9constructorimpl3;
        File file2;
        int intExtra = getIntent().getIntExtra("game_id", -1);
        String stringExtra = getIntent().getStringExtra("godot_game_path");
        L1.a build = null;
        Object obj = null;
        build = null;
        if (intExtra >= 0 && stringExtra != null && !StringsKt.isBlank(stringExtra)) {
            Context applicationContext = getApplicationContext();
            try {
                Result.Companion companion = Result.INSTANCE;
                Intrinsics.checkNotNull(applicationContext);
                Game gameFindById = new GameRepository(applicationContext).findById(intExtra);
                objM9constructorimpl = Result.m9constructorimpl(gameFindById != null ? Boolean.valueOf(gameFindById.getLastPlayedMs() > 0 || gameFindById.getPlaytimeMinutes() > 0) : null);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
            }
            if (Result.m15isFailureimpl(objM9constructorimpl)) {
                objM9constructorimpl = null;
            }
            Boolean bool = (Boolean) objM9constructorimpl;
            boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
            try {
                Set set = AbstractC0367d1.f6210a;
                File filesDir = applicationContext.getFilesDir();
                Intrinsics.checkNotNullExpressionValue(filesDir, "getFilesDir(...)");
                objM9constructorimpl2 = Result.m9constructorimpl(AbstractC0367d1.d(filesDir, new File(stringExtra), zBooleanValue, intExtra).f6203a);
            } catch (Throwable th2) {
                Result.Companion companion3 = Result.INSTANCE;
                objM9constructorimpl2 = Result.m9constructorimpl(ResultKt.createFailure(th2));
            }
            Throwable thM12exceptionOrNullimpl = Result.m12exceptionOrNullimpl(objM9constructorimpl2);
            if (thM12exceptionOrNullimpl != null) {
                Log.w("GodotGame", "user:// in the game folder unavailable, using the old per-game one", thM12exceptionOrNullimpl);
            }
            Throwable thM12exceptionOrNullimpl2 = Result.m12exceptionOrNullimpl(objM9constructorimpl2);
            Object obj2 = objM9constructorimpl2;
            if (thM12exceptionOrNullimpl2 != null) {
                try {
                    Set set2 = AbstractC0367d1.f6210a;
                    File filesDir2 = applicationContext.getFilesDir();
                    Intrinsics.checkNotNullExpressionValue(filesDir2, "getFilesDir(...)");
                    File fileC = AbstractC0367d1.c(filesDir2, intExtra);
                    fileC.mkdirs();
                    objM9constructorimpl3 = Result.m9constructorimpl(fileC);
                } catch (Throwable th3) {
                    Result.Companion companion4 = Result.INSTANCE;
                    objM9constructorimpl3 = Result.m9constructorimpl(ResultKt.createFailure(th3));
                }
                if (Result.m15isFailureimpl(objM9constructorimpl3)) {
                    objM9constructorimpl3 = null;
                }
                file2 = (File) objM9constructorimpl3;
                if (file2 == null || !file2.isDirectory()) {
                    obj2 = file2;
                    obj2 = null;
                }
            }
            obj2 = file2;
            File filesDir3 = (File) obj2;
            this.f3709d = filesDir3;
            if (filesDir3 == null) {
                filesDir3 = applicationContext.getFilesDir();
            }
            Log.i("GodotGame", "user:// = " + filesDir3 + " (played before: " + zBooleanValue + ")");
        }
        super.onCreate(bundle);
        this.f = p000a.a.r(this, "godot", null, null);
        n();
        String[] SUPPORTED_64_BIT_ABIS = Build.SUPPORTED_64_BIT_ABIS;
        Intrinsics.checkNotNullExpressionValue(SUPPORTED_64_BIT_ABIS, "SUPPORTED_64_BIT_ABIS");
        if (SUPPORTED_64_BIT_ABIS.length == 0) {
            b bVar = new b(this, 0);
            C0240b c0240b = (C0240b) bVar.f4145c;
            c0240b.f4098d = getString(R.string.godot_unsupported_title);
            c0240b.f = getString(R.string.godot_unsupported_message);
            bVar.h(android.R.string.ok, new I1(6, this));
            c0240b.f4106n = new DialogInterfaceOnCancelListenerC0380i(2, this);
            bVar.e();
            return;
        }
        AbstractC0369e0.a(this, getIntent().getIntExtra("game_id", -1));
        String stringExtra2 = getIntent().getStringExtra("godot_game_path");
        if (stringExtra2 == null || StringsKt.isBlank(stringExtra2)) {
            finish();
            return;
        }
        File file3 = new File(stringExtra2);
        if (!file3.exists() || !file3.isDirectory() || (fileArrListFiles = file3.listFiles()) == null) {
            file = null;
            break;
        }
        Iterator it = CollectionsKt.listOf((Object[]) new String[]{"pck", "apk"}).iterator();
        do {
            if (!it.hasNext()) {
                ArrayList arrayList = new ArrayList();
                for (File file4 : fileArrListFiles) {
                    if (file4.isDirectory()) {
                        arrayList.add(file4);
                    }
                }
                Iterator it2 = CollectionsKt.sortedWith(arrayList, new M(1)).iterator();
                do {
                    if (!it2.hasNext()) {
                        file = null;
                        break;
                    }
                    File[] fileArrListFiles2 = ((File) it2.next()).listFiles();
                    if (fileArrListFiles2 != null) {
                        int length = fileArrListFiles2.length;
                        int i3 = 0;
                        while (true) {
                            if (i3 < length) {
                                File file5 = fileArrListFiles2[i3];
                                if (file5.isFile() && (E.b.y(file5, file5, "pck", true) || StringsKt.equals(FilesKt.getExtension(file5), "apk", true))) {
                                    file = file5;
                                } else {
                                    i3++;
                                }
                            } else {
                                file = null;
                            }
                        }
                    } else {
                        file = null;
                    }
                } while (file == null);
            } else {
                Object next = it.next();
                Intrinsics.checkNotNullExpressionValue(next, "next(...)");
                String str = (String) next;
                int length2 = fileArrListFiles.length;
                int i4 = 0;
                while (true) {
                    if (i4 >= length2) {
                        file = null;
                        break;
                    }
                    file = fileArrListFiles[i4];
                    if (file.isFile() && E.b.y(file, file, str, true)) {
                        break;
                    } else {
                        i4++;
                    }
                }
            }
        } while (file == null);
        if (file == null) {
            Toast.makeText(this, getString(R.string.toast_cannot_open_game), 1).show();
            finish();
            return;
        }
        this.f3710e = file.getAbsolutePath();
        Object objC = L1.C(file);
        String absolutePath = file.getAbsolutePath();
        if (objC == null) {
            objC = "?";
        }
        Log.i("GodotGame", "Game pack: " + absolutePath + " (Godot " + objC + ")");
        String stringExtra3 = getIntent().getStringExtra("godotRuntimeKey");
        Regex regex = W0.f6153a;
        getApplicationContext();
        if (stringExtra3 != null && W0.f6153a.matches(stringExtra3)) {
            for (Object obj3 : W0.b) {
                if (Intrinsics.areEqual(((L1.a) obj3).a(), stringExtra3)) {
                    obj = obj3;
                    break;
                }
            }
            build = (L1.a) obj;
        }
        if (build == null) {
            Toast.makeText(this, getString(R.string.toast_cannot_open_game), 1).show();
            finish();
            return;
        }
        L1.e eVar = build.b;
        Log.i("GodotGame", "Using Godot " + eVar + " (" + build.a() + ")");
        Regex regex2 = W0.f6153a;
        Context context = getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(context, "getApplicationContext(...)");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(build, "build");
        C0429y1 c0429y1 = C0429y1.f6409a;
        if (!C0429y1.k(build, context, EnumC0420v1.GODOT)) {
            Toast.makeText(this, getString(R.string.godot_runtime_update_needed, eVar.toString()), 1).show();
            finish();
            return;
        }
        try {
            V0 v2 = new V0(this, build, new C0269h(13, this));
            this.b = v2;
            this.f3708c = v2.d("GodotFragment_" + build.a());
            getWindow().getDecorView().post(new RunnableC0068g1(18, this));
        } catch (Exception e2) {
            Log.e("GodotGame", "Failed to start Godot: " + e2.getMessage(), e2);
            Toast.makeText(this, getString(R.string.error_message_format, e2.getMessage()), 1).show();
            finish();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        v0 v0Var = this.f;
        if (v0Var != null) {
            v0Var.b();
        }
        super.onDestroy();
        Process.killProcess(Process.myPid());
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        if (z2) {
            n();
        }
    }

    public final List p() {
        SharedPreferences sharedPreferences = getSharedPreferences("gamepad_layout", 0);
        String string = sharedPreferences.getString("godot_schema", "0");
        if (!Intrinsics.areEqual(string != null ? string : "0", "5")) {
            ArrayList arrayListA = t.a();
            e.b(this, Integer.MIN_VALUE, arrayListA);
            sharedPreferences.edit().putString("godot_schema", "5").apply();
            return arrayListA;
        }
        Set set = d.f2060a;
        Intrinsics.checkNotNullParameter(this, "<this>");
        String string2 = d.s(this).getString("button_layout_-2147483648", "[]");
        if (string2 == null) {
            string2 = "[]";
        }
        if (StringsKt.isBlank(string2) || Intrinsics.areEqual(string2, "[]")) {
            return t.a();
        }
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        View decorView = getWindow().getDecorView();
        Intrinsics.checkNotNull(decorView, "null cannot be cast to non-null type android.view.ViewGroup");
        ViewGroup viewGroup = (ViewGroup) decorView;
        if (viewGroup.getWidth() > 0) {
            viewGroup.getWidth();
        } else {
            int i3 = displayMetrics.widthPixels;
        }
        if (viewGroup.getHeight() > 0) {
            viewGroup.getHeight();
        } else {
            int i4 = displayMetrics.heightPixels;
        }
        List listA = e.a(this, Integer.MIN_VALUE, true);
        return listA.isEmpty() ? t.a() : listA;
    }

    public final void q(Function0 function0) {
        Object objM = m();
        if (this.b != null) {
            RunnableC0034o action = new RunnableC0034o(4, function0);
            Intrinsics.checkNotNullParameter(action, "action");
            if (objM == null) {
                return;
            }
            try {
                objM.getClass().getMethod("queueOnRenderThread", Runnable.class).invoke(objM, action);
            } catch (Exception e2) {
                E.b.x("queueOnRenderThread failed: ", e2.getMessage(), "GodotRuntimeLoader");
            }
        }
    }

    public final void r() {
        View view = this.f3718o;
        if (view == null) {
            return;
        }
        EditModeOverlay editModeOverlay = this.f3716m;
        a selectedButtonConfig = editModeOverlay != null ? editModeOverlay.getSelectedButtonConfig() : null;
        boolean z2 = selectedButtonConfig != null;
        boolean z3 = this.f3719p;
        C0356a c0356a = z2 ? new C0356a(true, !z3, z3 ? "▴" : "▾") : new C0356a(false, false, "▾");
        float f = getResources().getDisplayMetrics().density;
        view.setVisibility(c0356a.f6168a ? 0 : 8);
        view.findViewById(R.id.layout_arrange_body).setVisibility(c0356a.b ? 0 : 8);
        ((TextView) view.findViewById(R.id.btn_toggle_customize)).setText(c0356a.f6169c);
        SeekBar seekBar = (SeekBar) view.findViewById(R.id.seek_size);
        SeekBar seekBar2 = (SeekBar) view.findViewById(R.id.seek_opacity);
        TextView textView = (TextView) view.findViewById(R.id.tv_size_label);
        TextView textView2 = (TextView) view.findViewById(R.id.tv_opacity_label);
        View viewFindViewById = view.findViewById(R.id.btn_shape_circle);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById, "findViewById(...)");
        View viewFindViewById2 = view.findViewById(R.id.btn_shape_rounded);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById2, "findViewById(...)");
        View viewFindViewById3 = view.findViewById(R.id.btn_shape_rect);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById3, "findViewById(...)");
        View viewFindViewById4 = view.findViewById(R.id.color_green);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById4, "findViewById(...)");
        View viewFindViewById5 = view.findViewById(R.id.color_red);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById5, "findViewById(...)");
        View viewFindViewById6 = view.findViewById(R.id.color_blue);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById6, "findViewById(...)");
        View viewFindViewById7 = view.findViewById(R.id.color_yellow);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById7, "findViewById(...)");
        View viewFindViewById8 = view.findViewById(R.id.color_purple);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById8, "findViewById(...)");
        View viewFindViewById9 = view.findViewById(R.id.color_orange);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById9, "findViewById(...)");
        View viewFindViewById10 = view.findViewById(R.id.color_pink);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById10, "findViewById(...)");
        View viewFindViewById11 = view.findViewById(R.id.color_gray);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById11, "findViewById(...)");
        View viewFindViewById12 = view.findViewById(R.id.color_white);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById12, "findViewById(...)");
        Intrinsics.checkNotNull(seekBar);
        Intrinsics.checkNotNull(seekBar2);
        List<View> listListOf = CollectionsKt.listOf((Object[]) new View[]{viewFindViewById, viewFindViewById2, viewFindViewById3, viewFindViewById4, viewFindViewById5, viewFindViewById6, viewFindViewById7, viewFindViewById8, viewFindViewById9, viewFindViewById10, viewFindViewById11, viewFindViewById12, seekBar, seekBar2});
        if (selectedButtonConfig == null) {
            ((TextView) view.findViewById(R.id.tv_arrange_selected)).setText("3 — " + getString(R.string.label_customize));
            textView.setText(getString(R.string.format_size_dp, "36"));
            textView2.setText(getString(R.string.format_opacity_percent, 100));
            seekBar.setProgress(36);
            seekBar2.setProgress(100);
            for (View view2 : listListOf) {
                view2.setEnabled(false);
                view2.setAlpha(0.45f);
            }
            u(null, f);
            t(null, f);
            return;
        }
        int i3 = selectedButtonConfig.f;
        ((TextView) view.findViewById(R.id.tv_arrange_selected)).setText(selectedButtonConfig.b + " — " + getString(R.string.label_customize));
        textView.setText(getString(R.string.format_size_dp, String.valueOf(i3)));
        int iCoerceIn = RangesKt.coerceIn((int) (selectedButtonConfig.f6000j * ((float) 100)), 10, 100);
        textView2.setText(getString(R.string.format_opacity_percent, Integer.valueOf(iCoerceIn)));
        seekBar.setProgress(RangesKt.coerceIn(i3, 20, 140));
        seekBar2.setProgress(iCoerceIn);
        for (View view3 : listListOf) {
            view3.setEnabled(true);
            view3.setAlpha(1.0f);
        }
        String str = selectedButtonConfig.f5998h;
        Locale locale = Locale.ROOT;
        String upperCase = str.toUpperCase(locale);
        Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
        u(upperCase, f);
        String upperCase2 = selectedButtonConfig.f5999i.toUpperCase(locale);
        Intrinsics.checkNotNullExpressionValue(upperCase2, "toUpperCase(...)");
        t(upperCase2, f);
    }

    public final void s(int i3, int i4) {
        Object objM;
        long jUptimeMillis = SystemClock.uptimeMillis();
        View view = null;
        if (this.b != null && (objM = m()) != null) {
            try {
                Object objInvoke = objM.getClass().getMethod("getView", null).invoke(objM, null);
                if (objInvoke instanceof View) {
                    view = (View) objInvoke;
                }
            } catch (Exception unused) {
            }
        }
        View view2 = view;
        if (view2 != null) {
            view2.dispatchKeyEvent(new KeyEvent(jUptimeMillis, jUptimeMillis, i3, i4, 0));
        }
    }

    public final void t(String str, float f) {
        View view = this.f3718o;
        if (view == null) {
            return;
        }
        for (Map.Entry entry : MapsKt.mapOf(TuplesKt.to(Integer.valueOf(R.id.color_green), "#22C55E"), TuplesKt.to(Integer.valueOf(R.id.color_red), "#EF4444"), TuplesKt.to(Integer.valueOf(R.id.color_blue), "#3B82F6"), TuplesKt.to(Integer.valueOf(R.id.color_yellow), "#F59E0B"), TuplesKt.to(Integer.valueOf(R.id.color_purple), "#8B5CF6"), TuplesKt.to(Integer.valueOf(R.id.color_orange), "#F97316"), TuplesKt.to(Integer.valueOf(R.id.color_pink), "#EC4899"), TuplesKt.to(Integer.valueOf(R.id.color_gray), "#6B7280"), TuplesKt.to(Integer.valueOf(R.id.color_white), "#F5F5F5")).entrySet()) {
            int iIntValue = ((Number) entry.getKey()).intValue();
            String str2 = (String) entry.getValue();
            View viewFindViewById = view.findViewById(iIntValue);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setCornerRadius(6 * f);
            gradientDrawable.setColor(Color.parseColor(str2));
            int i3 = (int) (2 * f);
            String upperCase = str2.toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
            gradientDrawable.setStroke(i3, Intrinsics.areEqual(str, upperCase) ? -1 : Color.parseColor("#26FFFFFF"));
            viewFindViewById.setBackground(gradientDrawable);
        }
    }

    public final void u(String str, float f) {
        View view = this.f3718o;
        if (view == null) {
            return;
        }
        for (Pair pair : CollectionsKt.listOf((Object[]) new Pair[]{TuplesKt.to(Integer.valueOf(R.id.btn_shape_circle), "CIRCLE"), TuplesKt.to(Integer.valueOf(R.id.btn_shape_rounded), "ROUNDED"), TuplesKt.to(Integer.valueOf(R.id.btn_shape_rect), "RECT")})) {
            int iIntValue = ((Number) pair.component1()).intValue();
            boolean zAreEqual = Intrinsics.areEqual(str, (String) pair.component2());
            View viewFindViewById = view.findViewById(iIntValue);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setCornerRadius(10 * f);
            gradientDrawable.setColor(Color.parseColor(zAreEqual ? "#1FFF424D" : "#1B212D"));
            gradientDrawable.setStroke((int) f, Color.parseColor(zAreEqual ? "#FF424D" : "#2A3446"));
            viewFindViewById.setBackground(gradientDrawable);
        }
    }
}
