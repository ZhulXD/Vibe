package p064y1;

import L1.a;
import android.R;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.minhub.gamehub.game.GodotGameActivity;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.collections.ArraysKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import p024j.C0269h;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class V0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GodotGameActivity f6145a;
    public final a b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C0269h f6146c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f6147d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public R0 f6148e;
    public S0 f;

    public V0(GodotGameActivity activity, a build, C0269h host) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(build, "build");
        Intrinsics.checkNotNullParameter(host, "host");
        this.f6145a = activity;
        this.b = build;
        this.f6146c = host;
    }

    public static Class a(Class cls) {
        if (Intrinsics.areEqual(cls, Boolean.TYPE)) {
            return Boolean.class;
        }
        if (Intrinsics.areEqual(cls, Integer.TYPE)) {
            return Integer.class;
        }
        if (Intrinsics.areEqual(cls, Long.TYPE)) {
            return Long.class;
        }
        if (Intrinsics.areEqual(cls, Float.TYPE)) {
            return Float.class;
        }
        if (Intrinsics.areEqual(cls, Double.TYPE)) {
            return Double.class;
        }
        if (Intrinsics.areEqual(cls, Short.TYPE)) {
            return Short.class;
        }
        if (Intrinsics.areEqual(cls, Byte.TYPE)) {
            return Byte.class;
        }
        return Intrinsics.areEqual(cls, Character.TYPE) ? Character.class : cls;
    }

    public static Object c(View view, Class cls) {
        if (view == null) {
            return null;
        }
        if (cls.isInstance(view)) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            Object objC = c(viewGroup.getChildAt(i3), cls);
            if (objC != null) {
                return objC;
            }
        }
        return null;
    }

    public final void b(String name, Object... args) {
        Class cls;
        Method method;
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(args, "args");
        S0 s0 = this.f;
        if (s0 == null || (cls = s0.f6134c) == null) {
            return;
        }
        try {
            Method[] methods = cls.getMethods();
            Intrinsics.checkNotNullExpressionValue(methods, "getMethods(...)");
            int length = methods.length;
            int i3 = 0;
            loop0: while (true) {
                if (i3 >= length) {
                    method = null;
                    break;
                }
                method = methods[i3];
                if (Intrinsics.areEqual(method.getName(), name) && method.getParameterTypes().length == args.length) {
                    Class<?>[] parameterTypes = method.getParameterTypes();
                    Intrinsics.checkNotNullExpressionValue(parameterTypes, "getParameterTypes(...)");
                    Iterable indices = ArraysKt.getIndices(parameterTypes);
                    if (!(indices instanceof Collection) || !((Collection) indices).isEmpty()) {
                        Iterator it = indices.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break loop0;
                            }
                            int iNextInt = ((IntIterator) it).nextInt();
                            Class<?> cls2 = method.getParameterTypes()[iNextInt];
                            Object obj = args[iNextInt];
                            if (obj != null) {
                                Intrinsics.checkNotNull(cls2);
                                if (!a(cls2).isInstance(obj) && !cls2.isPrimitive()) {
                                    break;
                                }
                            }
                        }
                    } else {
                        break;
                    }
                }
                i3++;
            }
            if (method == null) {
                Method[] methods2 = cls.getMethods();
                Intrinsics.checkNotNullExpressionValue(methods2, "getMethods(...)");
                int length2 = methods2.length;
                int i4 = 0;
                while (true) {
                    if (i4 >= length2) {
                        method = null;
                        break;
                    }
                    Method method2 = methods2[i4];
                    if (Intrinsics.areEqual(method2.getName(), name) && method2.getParameterTypes().length == args.length) {
                        method = method2;
                        break;
                    }
                    i4++;
                }
            }
            if (method != null) {
                method.invoke(null, Arrays.copyOf(args, args.length));
                return;
            }
            Log.w("GodotRuntimeLoader", "GodotLib." + name + " not found for arity " + args.length);
        } catch (Exception e2) {
            Log.w("GodotRuntimeLoader", "GodotLib." + name + " failed: " + e2.getMessage());
        }
    }

    /* JADX WARN: Code duplicated, block: B:104:0x0163 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:106:0x014b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:33:0x0112  */
    /* JADX WARN: Code duplicated, block: B:51:0x0151  */
    /* JADX WARN: Code duplicated, block: B:75:0x01b3  */
    public final Fragment d(String tag) throws IllegalAccessException, InstantiationException, ClassNotFoundException, InvocationTargetException {
        File file;
        ArrayList arrayList;
        ApplicationInfo applicationInfo;
        String str;
        Intrinsics.checkNotNullParameter(tag, "tag");
        C0429y1 c0429y1 = C0429y1.f6409a;
        EnumC0420v1 enumC0420v1 = EnumC0420v1.GODOT;
        GodotGameActivity godotGameActivity = this.f6145a;
        Context applicationContext = godotGameActivity.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        a build = this.b;
        if (!C0429y1.k(build, applicationContext, enumC0420v1)) {
            throw new IllegalStateException(("Godot runtime " + build.a() + " is absent or has an inconsistent commit marker").toString());
        }
        Context applicationContext2 = godotGameActivity.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext2, "getApplicationContext(...)");
        File fileO = C0429y1.o(build, applicationContext2, enumC0420v1);
        File file2 = new File(fileO, "godot-lib.jar");
        if (!file2.isFile()) {
            throw new IllegalStateException(("Missing godot-lib.jar in " + fileO.getAbsolutePath()).toString());
        }
        try {
            new ProcessBuilder("chmod", "0444", file2.getAbsolutePath()).redirectErrorStream(true).start().waitFor();
        } catch (Exception e2) {
            Log.w("GodotRuntimeLoader", "chmod on " + file2.getName() + " failed, falling back to setWritable", e2);
        }
        file2.setWritable(false, false);
        if (file2.canWrite()) {
            Log.w("GodotRuntimeLoader", file2.getName() + " is still writable; DexClassLoader may reject it");
        }
        File codeCacheDir = godotGameActivity.getCodeCacheDir();
        Intrinsics.checkNotNullExpressionValue(codeCacheDir, "getCodeCacheDir(...)");
        Intrinsics.checkNotNullParameter(codeCacheDir, "codeCacheDir");
        Intrinsics.checkNotNullParameter(build, "build");
        String strA = build.a();
        String lowerCase = build.f1280e.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        File file3 = new File(codeCacheDir, "godot-dex-" + strA + "-" + lowerCase);
        file3.mkdirs();
        String strA2 = EnumC0420v1.GODOT.a();
        String absolutePath = strA2 != null ? new File(fileO, strA2).getAbsolutePath() : null;
        List list = AbstractC0428y0.f6408a;
        Context applicationContext3 = godotGameActivity.getApplicationContext();
        List list2 = AbstractC0428y0.f6408a;
        if (applicationContext3 == null || (applicationInfo = applicationContext3.getApplicationInfo()) == null || (str = applicationInfo.nativeLibraryDir) == null) {
            file = null;
        } else {
            if (StringsKt.isBlank(str)) {
                str = null;
            }
            if (str == null) {
                file = null;
            } else {
                file = new File(str);
                if (!file.isDirectory()) {
                    file = null;
                }
            }
        }
        if (file != null) {
            if (!file.isDirectory()) {
                arrayList = new ArrayList();
                for (Object obj : list2) {
                    if (!new File(file, (String) obj).isFile()) {
                        arrayList.add(obj);
                    }
                }
                Log.w("GodotExtensionLibs", "GDExtension libraries missing from " + file.getAbsolutePath() + ": " + arrayList);
            } else if (list2 == null || !list2.isEmpty()) {
                Iterator it = list2.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (!new File(file, (String) it.next()).isFile()) {
                            arrayList = new ArrayList();
                            while (r7.hasNext()) {
                                if (!new File(file, (String) obj).isFile()) {
                                    arrayList.add(obj);
                                }
                            }
                            Log.w("GodotExtensionLibs", "GDExtension libraries missing from " + file.getAbsolutePath() + ": " + arrayList);
                        }
                    }
                }
            }
        }
        String absolutePath2 = file != null ? file.getAbsolutePath() : null;
        if (absolutePath == null) {
            absolutePath = null;
        } else {
            if (StringsKt.isBlank(absolutePath)) {
                absolutePath = null;
            }
            if (absolutePath == null) {
                absolutePath = null;
            } else {
                if (absolutePath2 == null || StringsKt.isBlank(absolutePath2)) {
                    absolutePath2 = null;
                }
                if (absolutePath2 != null && !Intrinsics.areEqual(absolutePath2, absolutePath)) {
                    absolutePath = kotlin.collections.unsigned.a.h(absolutePath, File.pathSeparator, absolutePath2);
                }
            }
        }
        Log.i("GodotExtensionLibs", "Godot library search path: " + absolutePath);
        String dexPath = file2.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(dexPath, "getAbsolutePath(...)");
        String optimizedDirectory = file3.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(optimizedDirectory, "getAbsolutePath(...)");
        ClassLoader parent = godotGameActivity.getClassLoader();
        Intrinsics.checkNotNullExpressionValue(parent, "getClassLoader(...)");
        Intrinsics.checkNotNullParameter(dexPath, "dexPath");
        Intrinsics.checkNotNullParameter(optimizedDirectory, "optimizedDirectory");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Q0 q1 = new Q0(dexPath, optimizedDirectory, absolutePath, parent);
        Class<?> clsLoadClass = q1.loadClass("org.godotengine.godot.GodotFragment");
        Class<?> clsLoadClass2 = q1.loadClass("org.godotengine.godot.GodotHost");
        Class<?> clsLoadClass3 = q1.loadClass("org.godotengine.godot.GodotLib");
        Class<?> clsLoadClass4 = q1.loadClass("org.godotengine.godot.GodotRenderView");
        Intrinsics.checkNotNull(clsLoadClass);
        R0 r2 = new R0(this.f6146c, clsLoadClass);
        this.f6148e = r2;
        Intrinsics.checkNotNull(r2);
        this.f6147d = Proxy.newProxyInstance(q1, new Class[]{clsLoadClass2}, r2);
        FragmentManager supportFragmentManager = godotGameActivity.getSupportFragmentManager();
        Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "getSupportFragmentManager(...)");
        supportFragmentManager.setFragmentFactory(new T0(clsLoadClass));
        supportFragmentManager.registerFragmentLifecycleCallbacks(new U0(clsLoadClass, this), false);
        Fragment fragment = supportFragmentManager.findFragmentByTag(tag);
        if (fragment != null && (Intrinsics.areEqual(fragment.getClass().getName(), "org.godotengine.godot.GodotFragment") || Intrinsics.areEqual(fragment.getClass(), clsLoadClass))) {
            R0 r3 = this.f6148e;
            if (r3 != null) {
                Intrinsics.checkNotNullParameter(fragment, "fragment");
                r3.f6126c = fragment;
            }
            Intrinsics.checkNotNull(clsLoadClass3);
            Intrinsics.checkNotNull(clsLoadClass4);
            this.f = new S0(fragment, q1, clsLoadClass3, clsLoadClass4);
            return fragment;
        }
        if (fragment != null) {
            supportFragmentManager.beginTransaction().remove(fragment).commitNowAllowingStateLoss();
        }
        Object objNewInstance = clsLoadClass.getDeclaredConstructor(null).newInstance(null);
        Intrinsics.checkNotNull(objNewInstance, "null cannot be cast to non-null type androidx.fragment.app.Fragment");
        Fragment fragment2 = (Fragment) objNewInstance;
        supportFragmentManager.beginTransaction().replace(R.id.content, fragment2, tag).commitNowAllowingStateLoss();
        R0 r4 = this.f6148e;
        if (r4 != null) {
            Intrinsics.checkNotNullParameter(fragment2, "fragment");
            r4.f6126c = fragment2;
        }
        Intrinsics.checkNotNull(clsLoadClass3);
        Intrinsics.checkNotNull(clsLoadClass4);
        this.f = new S0(fragment2, q1, clsLoadClass3, clsLoadClass4);
        return fragment2;
    }
}
