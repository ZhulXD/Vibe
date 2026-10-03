package com.bumptech.glide;

import A1.L0;
import C1.T;
import C1.X0;
import C1.X1;
import C1.b2;
import C1.c2;
import G1.p;
import N1.w;
import V1.A;
import V1.C0195k;
import V1.W;
import V1.X;
import a2.t;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Trace;
import android.text.InputFilter;
import android.text.method.TransformationMethod;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewParent;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.biometric.s;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.graphics.PathParser;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewKt;
import androidx.core.view.animation.PathInterpolatorCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.data.GameEngine;
import com.minhub.gamehub.data.GameKt;
import com.minhub.gamehub.data.RpgMakerPluginConfig;
import com.minhub.gamehub.data.RpgMakerPluginConfigStore;
import com.minhub.gamehub.hub.GameDetailActivity;
import com.minhub.gamehub.hub.SetupAppLockActivity;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.URI;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static long f3204a;
    public static Method b;

    public static void D(String str) {
        try {
            Class<?> cls = Class.forName(str);
            try {
                throw new RuntimeException("Expected instanceof GlideModule, but found: " + cls.getDeclaredConstructor(null).newInstance(null));
            } catch (IllegalAccessException e2) {
                Y(cls, e2);
                throw null;
            } catch (InstantiationException e3) {
                Y(cls, e3);
                throw null;
            } catch (NoSuchMethodException e4) {
                Y(cls, e4);
                throw null;
            } catch (InvocationTargetException e5) {
                Y(cls, e5);
                throw null;
            }
        } catch (ClassNotFoundException e6) {
            throw new IllegalArgumentException("Unable to find GlideModule implementation", e6);
        }
    }

    public static long E(int i3, int i4, byte[] bArr) {
        int i5 = i4 + i3;
        long j2 = 0;
        boolean z2 = true;
        while (i3 < i5) {
            byte b3 = bArr[i3];
            if (b3 == 0) {
                break;
            }
            if (b3 != 32 && b3 != 48) {
                j2 = (j2 << 3) + ((long) (b3 - 48));
                z2 = false;
            } else if (z2) {
                continue;
            } else {
                if (b3 == 32) {
                    break;
                }
                j2 = (j2 << 3) + ((long) (b3 - 48));
                z2 = false;
            }
            i3++;
        }
        return j2;
    }

    public static void F(TextInputLayout textInputLayout, CheckableImageButton checkableImageButton, ColorStateList colorStateList) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (checkableImageButton.getDrawable() == null || colorStateList == null || !colorStateList.isStateful()) {
            return;
        }
        int[] drawableState = textInputLayout.getDrawableState();
        int[] drawableState2 = checkableImageButton.getDrawableState();
        int length = drawableState.length;
        int[] iArrCopyOf = Arrays.copyOf(drawableState, drawableState.length + drawableState2.length);
        System.arraycopy(drawableState2, 0, iArrCopyOf, length, drawableState2.length);
        int colorForState = colorStateList.getColorForState(iArrCopyOf, colorStateList.getDefaultColor());
        Drawable drawableMutate = DrawableCompat.wrap(drawable).mutate();
        DrawableCompat.setTintList(drawableMutate, ColorStateList.valueOf(colorForState));
        checkableImageButton.setImageDrawable(drawableMutate);
    }

    /* JADX WARN: Code duplicated, block: B:54:0x0194  */
    public static final void G(GameDetailActivity gameDetailActivity, Game g, X1 state) {
        boolean z2;
        String string;
        b2 b2Var;
        Intrinsics.checkNotNullParameter(gameDetailActivity, "<this>");
        Intrinsics.checkNotNullParameter(g, "g");
        Intrinsics.checkNotNullParameter(state, "state");
        String str = "pluginManagerAdapter";
        String str2 = "tvPluginsHint";
        if (!X0.a(GameKt.getEngineEnum(g))) {
            b2 b2Var2 = gameDetailActivity.f3774r;
            if (b2Var2 != null) {
                b2Var = b2Var2;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("pluginManagerAdapter");
                b2Var = null;
            }
            List items = CollectionsKt.emptyList();
            b2Var.getClass();
            Intrinsics.checkNotNullParameter(items, "items");
            b2Var.f561i = items;
            b2Var.f562j = false;
            b2Var.c();
            RecyclerView rvPluginsManager = gameDetailActivity.n().f5748t;
            Intrinsics.checkNotNullExpressionValue(rvPluginsManager, "rvPluginsManager");
            rvPluginsManager.setVisibility(8);
            Button btnAddPlugin = gameDetailActivity.n().b;
            Intrinsics.checkNotNullExpressionValue(btnAddPlugin, "btnAddPlugin");
            btnAddPlugin.setVisibility(8);
            Button btnSavePlugins = gameDetailActivity.n().f;
            Intrinsics.checkNotNullExpressionValue(btnSavePlugins, "btnSavePlugins");
            btnSavePlugins.setVisibility(8);
            TextView tvPluginsHint = gameDetailActivity.n().f5726J;
            Intrinsics.checkNotNullExpressionValue(tvPluginsHint, "tvPluginsHint");
            tvPluginsHint.setVisibility(8);
            TextView tvPluginsEmpty = gameDetailActivity.n().f5725I;
            Intrinsics.checkNotNullExpressionValue(tvPluginsEmpty, "tvPluginsEmpty");
            tvPluginsEmpty.setVisibility(0);
            gameDetailActivity.n().f5725I.setText(gameDetailActivity.getString(R.string.game_detail_plugins_unsupported));
            return;
        }
        boolean z3 = X0.a(GameKt.getEngineEnum(g)) && state.f530e == null && state.b != null;
        List list = state.f529d;
        List list2 = state.f528c;
        List list3 = state.f529d;
        String str3 = state.f530e;
        ArrayList items2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            RpgMakerPluginConfig rpgMakerPluginConfig = (RpgMakerPluginConfig) it.next();
            items2.add(new c2(rpgMakerPluginConfig.getName(), rpgMakerPluginConfig.getDescription(), rpgMakerPluginConfig.getStatus(), rpgMakerPluginConfig.getParameters()));
            it = it;
            str = str;
            str3 = str3;
            str2 = str2;
        }
        String str4 = str;
        String str5 = str2;
        String str6 = str3;
        b2 b2Var3 = gameDetailActivity.f3774r;
        if (b2Var3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException(str4);
            b2Var3 = null;
        }
        b2Var3.getClass();
        Intrinsics.checkNotNullParameter(items2, "items");
        b2Var3.f561i = items2;
        b2Var3.f562j = z3;
        b2Var3.c();
        RecyclerView rvPluginsManager2 = gameDetailActivity.n().f5748t;
        Intrinsics.checkNotNullExpressionValue(rvPluginsManager2, "rvPluginsManager");
        rvPluginsManager2.setVisibility(!items2.isEmpty() ? 0 : 8);
        TextView tvPluginsEmpty2 = gameDetailActivity.n().f5725I;
        Intrinsics.checkNotNullExpressionValue(tvPluginsEmpty2, "tvPluginsEmpty");
        tvPluginsEmpty2.setVisibility(items2.isEmpty() ? 0 : 8);
        Button btnAddPlugin2 = gameDetailActivity.n().b;
        Intrinsics.checkNotNullExpressionValue(btnAddPlugin2, "btnAddPlugin");
        GameEngine engine = GameKt.getEngineEnum(g);
        Intrinsics.checkNotNullParameter(engine, "engine");
        btnAddPlugin2.setVisibility((engine == GameEngine.MV || engine == GameEngine.MZ) ? 0 : 8);
        Button btnSavePlugins2 = gameDetailActivity.n().f;
        Intrinsics.checkNotNullExpressionValue(btnSavePlugins2, "btnSavePlugins");
        btnSavePlugins2.setVisibility(X0.a(GameKt.getEngineEnum(g)) ? 0 : 8);
        Button button = gameDetailActivity.n().f;
        if (z3) {
            boolean zAreEqual = Intrinsics.areEqual(list3, list2);
            boolean z4 = str6 != null;
            if (zAreEqual || z4) {
                z2 = false;
            } else {
                z2 = true;
            }
        } else {
            z2 = false;
        }
        button.setEnabled(z2);
        if (str6 != null) {
            string = str6;
        } else {
            String str7 = state.f;
            if (str7 != null) {
                string = str7;
            } else if (Intrinsics.areEqual(list3, list2)) {
                string = !X0.a(GameKt.getEngineEnum(g)) ? gameDetailActivity.getString(R.string.game_detail_plugins_read_only) : null;
            } else {
                string = gameDetailActivity.getString(R.string.game_detail_plugins_dirty);
            }
        }
        gameDetailActivity.n().f5726J.setText(string == null ? "" : string);
        TextView textView = gameDetailActivity.n().f5726J;
        Intrinsics.checkNotNullExpressionValue(textView, str5);
        textView.setVisibility((string == null || StringsKt.isBlank(string)) ? 8 : 0);
    }

    public static TypedValue H(Context context, int i3) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i3, typedValue, true)) {
            return typedValue;
        }
        return null;
    }

    public static File I(File rootDir, String str) {
        Intrinsics.checkNotNullParameter(rootDir, "rootDir");
        if (str == null || StringsKt.isBlank(str)) {
            return null;
        }
        File file = new File(rootDir, str);
        if (file.exists() && file.isFile()) {
            return file;
        }
        return null;
    }

    public static boolean J(Context context, int i3, boolean z2) {
        TypedValue typedValueH = H(context, i3);
        if (typedValueH == null || typedValueH.type != 18) {
            return z2;
        }
        return typedValueH.data != 0;
    }

    public static S1.b K(File startDir) {
        Object obj;
        Intrinsics.checkNotNullParameter(startDir, "startDir");
        File file = null;
        if (startDir.exists() && startDir.isDirectory()) {
            List listListOf = CollectionsKt.listOf((Object[]) new String[]{"index.html", "index.htm"});
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listListOf, 10));
            Iterator it = listListOf.iterator();
            while (it.hasNext()) {
                arrayList.add(new File(startDir, (String) it.next()));
            }
            int size = arrayList.size();
            int i3 = 0;
            while (true) {
                if (i3 >= size) {
                    obj = null;
                    break;
                }
                obj = arrayList.get(i3);
                i3++;
                File file2 = (File) obj;
                if (file2.exists() && file2.isFile()) {
                    break;
                }
            }
            File file3 = (File) obj;
            if (file3 != null) {
                File file4 = new File(startDir, "gameconfig.txt");
                if (file4.exists() && file4.isFile()) {
                    file = file4;
                }
                return new S1.b(startDir, file3, file);
            }
            File[] fileArrListFiles = startDir.listFiles();
            if (fileArrListFiles != null) {
                ArrayList arrayList2 = new ArrayList();
                for (File file5 : fileArrListFiles) {
                    if (file5.isDirectory()) {
                        arrayList2.add(file5);
                    }
                }
                List<File> listSortedWith = CollectionsKt.sortedWith(arrayList2, new T(7));
                if (listSortedWith != null) {
                    for (File file6 : listSortedWith) {
                        Intrinsics.checkNotNull(file6);
                        S1.b bVarK = K(file6);
                        if (bVarK != null) {
                            return bVarK;
                        }
                    }
                }
            }
        }
        return null;
    }

    public static p045r1.b L(Game game) {
        Intrinsics.checkNotNullParameter(game, "game");
        String string = StringsKt.trim((CharSequence) game.getEngine()).toString();
        Locale locale = Locale.ROOT;
        String lowerCase = string.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        String lowerCase2 = "VXACE".toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
        if (Intrinsics.areEqual(lowerCase, lowerCase2)) {
            return p045r1.b.f5299e;
        }
        String lowerCase3 = "MV".toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase3, "toLowerCase(...)");
        if (Intrinsics.areEqual(lowerCase, lowerCase3)) {
            return p045r1.b.b;
        }
        String lowerCase4 = "MZ".toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase4, "toLowerCase(...)");
        if (Intrinsics.areEqual(lowerCase, lowerCase4)) {
            return p045r1.b.f5297c;
        }
        String lowerCase5 = "TYRANO".toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase5, "toLowerCase(...)");
        if (Intrinsics.areEqual(lowerCase, lowerCase5)) {
            return p045r1.b.f5298d;
        }
        if (Intrinsics.areEqual(lowerCase, "vite")) {
            return p045r1.b.f;
        }
        if (Intrinsics.areEqual(lowerCase, "react")) {
            return p045r1.b.f;
        }
        if (Intrinsics.areEqual(lowerCase, "vite_react")) {
            return p045r1.b.f;
        }
        return Intrinsics.areEqual(lowerCase, "vite-react") ? p045r1.b.f : p045r1.b.g;
    }

    public static File M(File gameRoot, GameEngine engine) {
        Intrinsics.checkNotNullParameter(gameRoot, "gameRoot");
        Intrinsics.checkNotNullParameter(engine, "engine");
        if (engine == GameEngine.TYRANO) {
            return new File(gameRoot, "data");
        }
        if (engine == GameEngine.VXACE) {
            return new File(gameRoot, "Save");
        }
        File file = new File(gameRoot, "save");
        return (file.exists() || !new File(gameRoot, "www").exists()) ? file : new File(gameRoot, E.b.m("www", File.separator, "save"));
    }

    public static int N(Context context, int i3, int i4) {
        TypedValue typedValueH = H(context, i3);
        return (typedValueH == null || typedValueH.type != 16) ? i4 : typedValueH.data;
    }

    public static TimeInterpolator O(Context context, int i3, TimeInterpolator timeInterpolator) {
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(i3, typedValue, true)) {
            return timeInterpolator;
        }
        if (typedValue.type != 3) {
            throw new IllegalArgumentException("Motion easing theme attribute must be an @interpolator resource for ?attr/motionEasing*Interpolator attributes or a string for ?attr/motionEasing* attributes.");
        }
        String strValueOf = String.valueOf(typedValue.string);
        if (!t(strValueOf, "cubic-bezier") && !t(strValueOf, "path")) {
            return AnimationUtils.loadInterpolator(context, typedValue.resourceId);
        }
        if (!t(strValueOf, "cubic-bezier")) {
            if (t(strValueOf, "path")) {
                return PathInterpolatorCompat.create(PathParser.createPathFromPathData(strValueOf.substring(5, strValueOf.length() - 1)));
            }
            throw new IllegalArgumentException("Invalid motion easing type: ".concat(strValueOf));
        }
        String[] strArrSplit = strValueOf.substring(13, strValueOf.length() - 1).split(",");
        if (strArrSplit.length == 4) {
            return PathInterpolatorCompat.create(o(strArrSplit, 0), o(strArrSplit, 1), o(strArrSplit, 2), o(strArrSplit, 3));
        }
        throw new IllegalArgumentException("Motion easing theme attribute must have 4 control points if using bezier curve format; instead got: " + strArrSplit.length);
    }

    public static TypedValue P(Context context, String str, int i3) {
        TypedValue typedValueH = H(context, i3);
        if (typedValueH != null) {
            return typedValueH;
        }
        throw new IllegalArgumentException(String.format("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", str, context.getResources().getResourceName(i3)));
    }

    public static void S(CheckableImageButton checkableImageButton, View.OnLongClickListener onLongClickListener) {
        boolean zHasOnClickListeners = ViewCompat.hasOnClickListeners(checkableImageButton);
        boolean z2 = onLongClickListener != null;
        boolean z3 = zHasOnClickListeners || z2;
        checkableImageButton.setFocusable(z3);
        checkableImageButton.setClickable(zHasOnClickListeners);
        checkableImageButton.setPressable(zHasOnClickListeners);
        checkableImageButton.setLongClickable(z2);
        ViewCompat.setImportantForAccessibility(checkableImageButton, z3 ? 1 : 2);
    }

    public static void T(View view, Y0.h hVar) {
        Q0.a aVar = hVar.b.b;
        if (aVar == null || !aVar.f1832a) {
            return;
        }
        float elevation = 0.0f;
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            elevation += ViewCompat.getElevation((View) parent);
        }
        Y0.g gVar = hVar.b;
        if (gVar.f2391l != elevation) {
            gVar.f2391l = elevation;
            hVar.s();
        }
    }

    public static boolean U(String url) {
        Object objM9constructorimpl;
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter("h-game18.xyz", "hostHeader");
        if (StringsKt.isBlank("h-game18.xyz")) {
            return false;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            String host = new URI(url).getHost();
            if (host == null) {
                host = "";
            }
            objM9constructorimpl = Result.m9constructorimpl(host);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        String str = (String) (Result.m15isFailureimpl(objM9constructorimpl) ? "" : objM9constructorimpl);
        if (StringsKt.isBlank(str) || StringsKt.equals(str, "h-game18.xyz", true)) {
            return false;
        }
        return Intrinsics.areEqual(str, "localhost") || Intrinsics.areEqual(str, "127.0.0.1") || StringsKt.N(str, "10.") || StringsKt.N(str, "192.168.") || new Regex("172\\.(1[6-9]|2\\d|3[0-1])\\..+").matches(str);
    }

    public static final void V(GameDetailActivity gameDetailActivity) {
        Intrinsics.checkNotNullParameter(gameDetailActivity, "<this>");
        Toast.makeText(gameDetailActivity, gameDetailActivity.getString(R.string.feature_patreon_only), 0).show();
    }

    public static final String W(p utilityId) {
        Intrinsics.checkNotNullParameter(G1.a.b, "<this>");
        Intrinsics.checkNotNullParameter(utilityId, "utilityId");
        return StringsKt.trimIndent("\n    if (" + G1.a.c(utilityId) + " && !window.__minhubSpinePatched) {\n      window.__minhubSpinePatched = true;\n      // Watch for pixi-spine being assigned to PIXI.spine\n      try {\n        if (typeof PIXI !== 'undefined' && !PIXI.spine) {\n          Object.defineProperty(PIXI, 'spine', {\n            configurable: true,\n            get: function() { return this.__mhSpineVal; },\n            set: function(v) { this.__mhSpineVal = v; }\n          });\n        }\n      } catch(e) {}\n      // Patch PIXI.Texture.frame to correct atlas coordinates for rescaled textures.\n      // __mhOriginalDimension is set by largeImageRescaleBlock when a texture is downscaled.\n      var __mhPatchFrame = function() {\n        try {\n          if (typeof PIXI === 'undefined' || !PIXI.Texture) return false;\n          var desc = Object.getOwnPropertyDescriptor(PIXI.Texture.prototype, 'frame');\n          if (!desc || !desc.set || desc.set.__mhPatched) return true;\n          var origSet = desc.set;\n          var newSet = function(frame) {\n            var bt = this.baseTexture;\n            var od = bt && bt.__mhOriginalDimension;\n            if (od && frame) {\n              frame.x = (frame.x / od[0]) * bt.width;\n              frame.y = (frame.y / od[1]) * bt.height;\n              frame.width = (frame.width / od[0]) * bt.width;\n              frame.height = (frame.height / od[1]) * bt.height;\n            }\n            origSet.call(this, frame);\n          };\n          newSet.__mhPatched = true;\n          Object.defineProperty(PIXI.Texture.prototype, 'frame', {\n            set: newSet, get: desc.get, configurable: true, enumerable: desc.enumerable\n          });\n          return true;\n        } catch(e) { return false; }\n      };\n      var __mhSpineAttempt = 0;\n      var __mhTrySpine = function() {\n        if (__mhSpineAttempt++ > 40 || __mhPatchFrame()) return;\n        setTimeout(__mhTrySpine, 200);\n      };\n      __mhTrySpine();\n    }\n");
    }

    public static final Object X(t tVar, t tVar2, Function2 function2) throws Throwable {
        Object c0195k;
        W w2;
        try {
            c0195k = ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(tVar2, tVar);
        } catch (Throwable th) {
            c0195k = new C0195k(th, false);
        }
        if (c0195k == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            return IntrinsicsKt.getCOROUTINE_SUSPENDED();
        }
        Object objB = tVar.B(c0195k);
        if (objB == A.f2257e) {
            return IntrinsicsKt.getCOROUTINE_SUSPENDED();
        }
        if (objB instanceof C0195k) {
            throw ((C0195k) objB).f2296a;
        }
        X x2 = objB instanceof X ? (X) objB : null;
        return (x2 == null || (w2 = x2.f2274a) == null) ? objB : w2;
    }

    public static void Y(Class cls, ReflectiveOperationException reflectiveOperationException) {
        throw new RuntimeException("Unable to instantiate GlideModule implementation for " + cls, reflectiveOperationException);
    }

    public static final void Z(GameDetailActivity gameDetailActivity, Function1 transform) {
        Intrinsics.checkNotNullParameter(gameDetailActivity, "<this>");
        Intrinsics.checkNotNullParameter(transform, "transform");
        X1 x2 = gameDetailActivity.f3773q;
        if (x2 == null) {
            return;
        }
        X1 x3 = (X1) transform.invoke(x2);
        gameDetailActivity.f3773q = x3;
        Game game = gameDetailActivity.g;
        if (game == null) {
            return;
        }
        G(gameDetailActivity, game, x3);
    }

    public static void a(TextInputLayout textInputLayout, CheckableImageButton checkableImageButton, ColorStateList colorStateList, PorterDuff.Mode mode) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (drawable != null) {
            drawable = DrawableCompat.wrap(drawable).mutate();
            if (colorStateList == null || !colorStateList.isStateful()) {
                DrawableCompat.setTintList(drawable, colorStateList);
            } else {
                int[] drawableState = textInputLayout.getDrawableState();
                int[] drawableState2 = checkableImageButton.getDrawableState();
                int length = drawableState.length;
                int[] iArrCopyOf = Arrays.copyOf(drawableState, drawableState.length + drawableState2.length);
                System.arraycopy(drawableState2, 0, iArrCopyOf, length, drawableState2.length);
                DrawableCompat.setTintList(drawable, ColorStateList.valueOf(colorStateList.getColorForState(iArrCopyOf, colorStateList.getDefaultColor())));
            }
            if (mode != null) {
                DrawableCompat.setTintMode(drawable, mode);
            }
        }
        if (checkableImageButton.getDrawable() != drawable) {
            checkableImageButton.setImageDrawable(drawable);
        }
    }

    public static void b(String str) {
        if (str.length() > 127) {
            str = str.substring(0, 127);
        }
        Trace.beginSection(str);
    }

    public static final void c(GameDetailActivity gameDetailActivity, Game game, boolean z2) {
        List listEmptyList;
        Object objM9constructorimpl;
        X1 x2;
        Intrinsics.checkNotNullParameter(gameDetailActivity, "<this>");
        Intrinsics.checkNotNullParameter(game, "g");
        X1 x3 = gameDetailActivity.f3773q;
        if (z2 || x3 == null || x3.f527a != game.getId() || Intrinsics.areEqual(x3.f529d, x3.f528c)) {
            Intrinsics.checkNotNullParameter(gameDetailActivity, "<this>");
            Intrinsics.checkNotNullParameter(game, "g");
            boolean zA = X0.a(GameKt.getEngineEnum(game));
            Intrinsics.checkNotNullParameter(gameDetailActivity, "<this>");
            Intrinsics.checkNotNullParameter(game, "game");
            try {
                String[] strArr = (String[]) new p023i1.l().c(game.getPluginsJson(), String[].class);
                listEmptyList = strArr != null ? ArraysKt.toList(strArr) : null;
                if (listEmptyList == null) {
                    listEmptyList = CollectionsKt.emptyList();
                }
            } catch (Exception unused) {
                listEmptyList = CollectionsKt.emptyList();
            }
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listEmptyList, 10));
            Iterator it = listEmptyList.iterator();
            while (it.hasNext()) {
                arrayList.add(new RpgMakerPluginConfig((String) it.next(), true, "", new LinkedHashMap(), null, 16, null));
            }
            if (zA) {
                String gamePath = game.getGamePath();
                if (StringsKt.isBlank(gamePath)) {
                    gamePath = null;
                }
                File file = gamePath != null ? new File(gamePath) : null;
                File fileResolvePluginFile = file != null ? RpgMakerPluginConfigStore.INSTANCE.resolvePluginFile(file) : null;
                if (fileResolvePluginFile == null) {
                    x2 = new X1(game.getId(), null, arrayList, arrayList, gameDetailActivity.getString(R.string.game_detail_plugins_parse_failed), null, 32);
                } else {
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        List<RpgMakerPluginConfig> list = RpgMakerPluginConfigStore.INSTANCE.parse(FilesKt__FileReadWriteKt.readText$default(fileResolvePluginFile, null, 1, null));
                        try {
                            objM9constructorimpl = Result.m9constructorimpl(new X1(game.getId(), fileResolvePluginFile, list, list, null, null, 48));
                        } catch (Throwable th) {
                            th = th;
                            fileResolvePluginFile = fileResolvePluginFile;
                            Result.Companion companion2 = Result.INSTANCE;
                            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                    if (Result.m12exceptionOrNullimpl(objM9constructorimpl) != null) {
                        objM9constructorimpl = new X1(game.getId(), fileResolvePluginFile, arrayList, arrayList, gameDetailActivity.getString(R.string.game_detail_plugins_parse_failed), null, 32);
                    }
                    x3 = (X1) objM9constructorimpl;
                }
            } else {
                x2 = new X1(game.getId(), null, arrayList, arrayList, null, null, 48);
            }
            x3 = x2;
        }
        gameDetailActivity.f3773q = x3;
        if (x3 == null) {
            return;
        }
        G(gameDetailActivity, game, x3);
    }

    public static final int d(GameDetailActivity gameDetailActivity, int i3) {
        return (int) (i3 * gameDetailActivity.getResources().getDisplayMetrics().density);
    }

    public static final void e(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        for (View view2 : ViewKt.getAllViews(view)) {
            B.a aVar = (B.a) view2.getTag(R.id.pooling_container_listener_holder_tag);
            if (aVar == null) {
                aVar = new B.a();
                view2.setTag(R.id.pooling_container_listener_holder_tag, aVar);
            }
            ArrayList arrayList = aVar.f289a;
            int lastIndex = CollectionsKt.getLastIndex(arrayList);
            if (-1 < lastIndex) {
                arrayList.get(lastIndex).getClass();
                throw new ClassCastException();
            }
        }
    }

    public static final boolean f(L0 l2, L0 next) {
        Intrinsics.checkNotNullParameter(l2, "<this>");
        Intrinsics.checkNotNullParameter(next, "next");
        int iOrdinal = l2.ordinal();
        if (iOrdinal == 0) {
            return SetsKt.setOf((Object[]) new L0[]{L0.f86c, L0.f87d, L0.g}).contains(next);
        }
        if (iOrdinal == 1) {
            return SetsKt.setOf((Object[]) new L0[]{L0.f87d, L0.g}).contains(next);
        }
        if (iOrdinal == 2) {
            return SetsKt.setOf((Object[]) new L0[]{L0.f88e, L0.f, L0.g}).contains(next);
        }
        if (iOrdinal == 3) {
            return SetsKt.setOf((Object[]) new L0[]{L0.f, L0.g}).contains(next);
        }
        if (iOrdinal != 4) {
            if (iOrdinal != 5) {
                throw new NoWhenBranchMatchedException();
            }
            if (next != L0.f) {
                return false;
            }
        } else if (next != L0.g) {
            return false;
        }
        return true;
    }

    public static final Object g(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        if (!StringsKt.isBlank(url)) {
            try {
                if (!U(url)) {
                    return url;
                }
                p025j0.i iVar = new p025j0.i();
                iVar.a();
                iVar.f4629a = true;
                return new p025j0.g(url, new p025j0.k(iVar.b));
            } catch (Exception unused) {
            }
        }
        return url;
    }

    public static ImageView.ScaleType h(int i3) {
        if (i3 == 0) {
            return ImageView.ScaleType.FIT_XY;
        }
        if (i3 == 1) {
            return ImageView.ScaleType.FIT_START;
        }
        if (i3 == 2) {
            return ImageView.ScaleType.FIT_CENTER;
        }
        if (i3 == 3) {
            return ImageView.ScaleType.FIT_END;
        }
        if (i3 != 5) {
            return i3 != 6 ? ImageView.ScaleType.CENTER : ImageView.ScaleType.CENTER_INSIDE;
        }
        return ImageView.ScaleType.CENTER_CROP;
    }

    public static p000a.a i(int i3) {
        if (i3 != 0) {
            return i3 != 1 ? new Y0.k() : new Y0.d();
        }
        return new Y0.k();
    }

    public static Intent j(Context ctx) {
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        return new Intent(ctx, (Class<?>) SetupAppLockActivity.class);
    }

    public static int k(Context context, int i3, int i4) {
        Integer numValueOf;
        TypedValue typedValueH = H(context, i3);
        if (typedValueH != null) {
            int i5 = typedValueH.resourceId;
            numValueOf = Integer.valueOf(i5 != 0 ? ContextCompat.getColor(context, i5) : typedValueH.data);
        } else {
            numValueOf = null;
        }
        return numValueOf != null ? numValueOf.intValue() : i4;
    }

    public static int l(Context context, String str, int i3) {
        TypedValue typedValueP = P(context, str, i3);
        int i4 = typedValueP.resourceId;
        return i4 != 0 ? ContextCompat.getColor(context, i4) : typedValueP.data;
    }

    public static int m(View view, int i3) {
        Context context = view.getContext();
        TypedValue typedValueP = P(view.getContext(), view.getClass().getCanonicalName(), i3);
        int i4 = typedValueP.resourceId;
        return i4 != 0 ? ContextCompat.getColor(context, i4) : typedValueP.data;
    }

    public static float o(String[] strArr, int i3) {
        float f = Float.parseFloat(strArr[i3]);
        if (f >= 0.0f && f <= 1.0f) {
            return f;
        }
        throw new IllegalArgumentException("Motion easing control point value must be between 0 and 1; instead got: " + f);
    }

    public static String p(String startup) {
        Intrinsics.checkNotNullParameter(startup, "startup");
        if (StringsKt__StringsKt.contains$default((CharSequence) startup, (CharSequence) "MinHub:gdiplus-polyfill", false, 2, (Object) null)) {
            return null;
        }
        int iIndexOf$default = StringsKt__StringsKt.indexOf$default(startup, "\"Initialize.tjs\"", 0, false, 6, (Object) null);
        if (iIndexOf$default < 0) {
            return "// [MinHub:gdiplus-polyfill]\r\ntry{Scripts.execStorage(\"MinHubGdiPlusPolyfill.tjs\");}catch(e){}\r\n".concat(startup);
        }
        int iLastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) startup, '\n', iIndexOf$default, false, 4, (Object) null);
        int i3 = iLastIndexOf$default < 0 ? 0 : iLastIndexOf$default + 1;
        String strSubstring = startup.substring(0, i3);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        String strSubstring2 = startup.substring(i3);
        Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
        return kotlin.collections.unsigned.a.h(strSubstring, "// [MinHub:gdiplus-polyfill]\r\ntry{Scripts.execStorage(\"MinHubGdiPlusPolyfill.tjs\");}catch(e){}\r\n", strSubstring2);
    }

    public static boolean q(int i3) {
        return i3 != 0 && ColorUtils.calculateLuminance(i3) > 0.5d;
    }

    public static boolean s() {
        if (Build.VERSION.SDK_INT >= 29) {
            return R.a.a();
        }
        try {
            if (b == null) {
                f3204a = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                b = Trace.class.getMethod("isTagEnabled", Long.TYPE);
            }
            return ((Boolean) b.invoke(null, Long.valueOf(f3204a))).booleanValue();
        } catch (Exception e2) {
            if (!(e2 instanceof InvocationTargetException)) {
                Log.v("Trace", "Unable to call isTagEnabled via reflection", e2);
                return false;
            }
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            throw new RuntimeException(cause);
        }
    }

    public static boolean t(String str, String str2) {
        return str.startsWith(str2.concat("(")) && str.endsWith(")");
    }

    public static boolean u(Uri uri) {
        return uri != null && "content".equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }

    public static final String v(String runtimeLabel) {
        Intrinsics.checkNotNullParameter(G1.a.b, "<this>");
        Intrinsics.checkNotNullParameter(runtimeLabel, "runtimeLabel");
        return StringsKt.trimIndent("\n    if (!window.__minhubLargeImageRescale) {\n      window.__minhubLargeImageRescale = true;\n      (function() {\n        // ── Usable texture size, read from the GAME'S ACTUAL renderer context ────\n        // A throwaway getContext('webgl') probe is unreliable on LDPlayer/ANGLE; and a\n        // null-data probe passes at sizes where a real CANVAS upload fails. So we read\n        // MAX_TEXTURE_SIZE from the live renderer and validate by uploading a real test\n        // canvas (the same path PIXI uses), stepping down until it succeeds. Memoized.\n        var _maxSizeCache = 0;\n        var _internalTex = false; // re-entrancy guard for our own test uploads\n        var _liveGl = function() {\n          try {\n            var r = window.Graphics &&\n              ((Graphics._app && Graphics._app.renderer) || Graphics._renderer);\n            if (r && r.gl) return r.gl;\n          } catch(e) {}\n          return null;\n        };\n        var _getMaxSize = function() {\n          if (_maxSizeCache) return _maxSizeCache;\n          var gl = _liveGl();\n          if (!gl) return 2048; // renderer not ready — conservative, do NOT cache\n          var result = 1024;\n          try {\n            var reported = gl.getParameter(gl.MAX_TEXTURE_SIZE) || 2048;\n            var cap = Math.min(reported, " + (Intrinsics.areEqual(runtimeLabel, "RMMV") ? 2048 : 4096) + ");\n            var candidates = [];\n            [cap, 2048, 1024, 512].forEach(function(v) {\n              if (v <= cap && candidates.indexOf(v) === -1) candidates.push(v);\n            });\n            var saved = null;\n            try { saved = gl.getParameter(gl.TEXTURE_BINDING_2D); } catch(e) {}\n            var testCv = document.createElement('canvas');\n            var testCtx = testCv.getContext('2d');\n            _internalTex = true;\n            for (var i = 0; i < candidates.length; i++) {\n              var s = candidates[i];\n              testCv.width = s; testCv.height = Math.min(s, 1024);\n              testCtx.fillStyle = '#000'; testCtx.fillRect(0, 0, 2, 2);\n              var tex = gl.createTexture();\n              gl.bindTexture(gl.TEXTURE_2D, tex);\n              var guard = 0;\n              while (gl.getError() !== gl.NO_ERROR && guard++ < 8) {}\n              gl.texImage2D(gl.TEXTURE_2D, 0, gl.RGBA, gl.RGBA, gl.UNSIGNED_BYTE, testCv);\n              var err = gl.getError();\n              gl.deleteTexture(tex);\n              if (err === gl.NO_ERROR) { result = s; break; }\n            }\n            _internalTex = false;\n            try { gl.bindTexture(gl.TEXTURE_2D, saved); } catch(e) {}\n          } catch(e) { _internalTex = false; result = 1024; }\n          _maxSizeCache = result;\n          console.log('[WebGL Fix] " + G1.a.a(runtimeLabel) + " usable texture size (canvas-upload, live ctx): ' + result);\n          return result;\n        };\n\n        // ── High-quality multi-step downscale (halving) ─────────────────────────\n        var _downscaleHQ = function(source, sw, sh, dw, dh) {\n          var cur = source, curW = sw, curH = sh;\n          while (curW > dw * 2 || curH > dh * 2) {\n            var nextW = (curW > dw * 2) ? Math.max(dw, Math.floor(curW / 2)) : curW;\n            var nextH = (curH > dh * 2) ? Math.max(dh, Math.floor(curH / 2)) : curH;\n            var tmp = document.createElement('canvas');\n            tmp.width = nextW; tmp.height = nextH;\n            var tctx = tmp.getContext('2d');\n            tctx.imageSmoothingEnabled = true; tctx.imageSmoothingQuality = 'high';\n            tctx.drawImage(cur, 0, 0, curW, curH, 0, 0, nextW, nextH);\n            cur = tmp; curW = nextW; curH = nextH;\n          }\n          var out = document.createElement('canvas');\n          out.width = dw; out.height = dh;\n          var octx = out.getContext('2d');\n          octx.imageSmoothingEnabled = true; octx.imageSmoothingQuality = 'high';\n          octx.drawImage(cur, 0, 0, curW, curH, 0, 0, dw, dh);\n          return out;\n        };\n\n        // ── texImage2D interceptor: the single, engine-agnostic choke point ─────\n        // EVERY texture upload (MV/MZ, PIXI 4/5, plugins, from image OR canvas) goes\n        // through gl.texImage2D. If the source exceeds the usable size we downscale it\n        // right here, before upload. PIXI's baseTexture.width keeps the ORIGINAL size\n        // (set from the un-downscaled source), so its normalized UVs (frame/baseTexture)\n        // map the full frame onto the smaller texture → correct display at reduced\n        // resolution. This replaces all the fragile per-engine Bitmap/BaseTexture hooks\n        // (which broke on MV because PIXI 4 uses __baseTexture and re-creates _canvas).\n        var _patch = function(proto) {\n          if (!proto || typeof proto.texImage2D !== 'function' || proto.texImage2D.__mhFix) return;\n          var orig = proto.texImage2D;\n          var wrapped = function() {\n            var a = arguments;\n            if (!_internalTex && a.length === 6) {\n              var src = a[5];\n              var isElem = src && (\n                (typeof HTMLCanvasElement !== 'undefined' && src instanceof HTMLCanvasElement) ||\n                (typeof HTMLImageElement !== 'undefined' && src instanceof HTMLImageElement) ||\n                (typeof ImageBitmap !== 'undefined' && src instanceof ImageBitmap) ||\n                (typeof OffscreenCanvas !== 'undefined' && src instanceof OffscreenCanvas));\n              if (isElem) {\n                var w = (src.width || src.naturalWidth || 0) | 0;\n                var h = (src.height || src.naturalHeight || 0) | 0;\n                if (w > 0 && h > 0) {\n                  var MAX = _getMaxSize();\n                  if (w > MAX || h > MAX) {\n                    var dw = Math.min(w, MAX), dh = Math.min(h, MAX);\n                    try {\n                      var small = _downscaleHQ(src, w, h, dw, dh);\n                      var rr = orig.call(this, a[0], a[1], a[2], a[3], a[4], small);\n                      try { window.MinHub && window.MinHub.log &&\n                        window.MinHub.log('[TexFix] downscaled ' + w + 'x' + h + ' -> ' + dw + 'x' + dh); } catch(e){}\n                      return rr;\n                    } catch(ex) {\n                      try { window.MinHub && window.MinHub.log &&\n                        window.MinHub.log('[TexFix] downscale error ' + ex); } catch(e){}\n                    }\n                  }\n                }\n              }\n            }\n            return orig.apply(this, a);\n          };\n          wrapped.__mhFix = true;\n          proto.texImage2D = wrapped;\n        };\n        try { if (typeof WebGLRenderingContext !== 'undefined') _patch(WebGLRenderingContext.prototype); } catch(e) {}\n        try { if (typeof WebGL2RenderingContext !== 'undefined') _patch(WebGL2RenderingContext.prototype); } catch(e) {}\n        console.log('[WebGL Fix] " + G1.a.a(runtimeLabel) + " texImage2D downscale guard installed');\n      })();\n    }\n");
    }

    public static int w(int i3, float f, int i4) {
        return ColorUtils.compositeColors(ColorUtils.setAlphaComponent(i4, Math.round(Color.alpha(i4) * f)), i3);
    }

    public static Typeface x(Configuration configuration, Typeface typeface) {
        if (Build.VERSION.SDK_INT < 31 || configuration.fontWeightAdjustment == Integer.MAX_VALUE || configuration.fontWeightAdjustment == 0 || typeface == null) {
            return null;
        }
        return Typeface.create(typeface, MathUtils.clamp(configuration.fontWeightAdjustment + typeface.getWeight(), 1, 1000), typeface.isItalic());
    }

    public static final String y(p utilityId) {
        Intrinsics.checkNotNullParameter(G1.a.b, "<this>");
        Intrinsics.checkNotNullParameter(utilityId, "utilityId");
        return StringsKt.trimIndent("\n    if (" + G1.a.c(utilityId) + ") {\n      try {\n        var orig = window.PIXI?.BaseTexture?.fromImage || null;\n        if (orig && !window.__minhubNpotPatched) {\n          window.__minhubNpotPatched = true;\n          PIXI.BaseTexture.fromImage = function(src, cb, sc, res) {\n            var tex = orig.call(this, src, cb, sc, res);\n            tex.realWidth = tex.realWidth || tex.width;\n            tex.realHeight = tex.realHeight || tex.height;\n            return tex;\n          };\n        }\n      } catch (e) {}\n\n      (function() {\n        if (window.__minhubFakeLoad) return;\n        window.__minhubFakeLoad = true;\n        var _log = function(msg) {\n          try { window.MinHub && window.MinHub.log && window.MinHub.log('[FakeLoad] ' + msg); } catch(e) {}\n        };\n        var _apply = function(n) {\n          if (typeof Bitmap === 'undefined' || typeof SceneManager === 'undefined') {\n            if (n < 40) { setTimeout(function() { _apply(n + 1); }, 200); }\n            return;\n          }\n          Bitmap.prototype._onError = function() {\n            _log('missing image: ' + this._url);\n            var cv = document.createElement('canvas');\n            cv.width = 1; cv.height = 1;\n            cv.getContext('2d').clearRect(0, 0, 1, 1);\n            this._image = new Image();\n            this._canvas = cv;\n            this._context = cv.getContext('2d');\n            try {\n              if (typeof PIXI !== 'undefined' && PIXI.BaseTexture) {\n                this._baseTexture = new PIXI.BaseTexture(cv);\n                this._baseTexture.mipmap = false;\n                if (PIXI.SCALE_MODES) this._baseTexture.scaleMode = PIXI.SCALE_MODES.NEAREST;\n                this._baseTexture.update();\n              }\n            } catch(e) {}\n            this._loadingState = 'loaded';\n            this._isReady = true;\n            if (this._callLoadListeners) this._callLoadListeners();\n          };\n          try {\n            if (typeof Graphics !== 'undefined') {\n              Graphics.printLoadingError = function(url) { _log('skipped error popup: ' + url); };\n            }\n          } catch(e) {}\n          SceneManager.stop = function() { _log('suppressed SceneManager.stop()'); };\n          try {\n            if (typeof WebAudio !== 'undefined' && WebAudio.prototype) {\n              WebAudio.prototype._onError = function() {\n                _log('missing audio: ' + this._url);\n                this._isReady = false;\n                this._hasError = true;\n                if (this._onLoad) this._onLoad();\n              };\n            }\n          } catch(e) {}\n          _log('applied');\n        };\n        _apply(0);\n      })();\n    }\n");
    }

    public abstract void B(Throwable th);

    public abstract void C(w wVar);

    public abstract void Q(boolean z2);

    public abstract void R(boolean z2);

    public abstract TransformationMethod a0(TransformationMethod transformationMethod);

    public abstract InputFilter[] n(InputFilter[] inputFilterArr);

    public abstract boolean r();

    public void A(s sVar) {
    }

    public void z(int i3, CharSequence charSequence) {
    }
}
