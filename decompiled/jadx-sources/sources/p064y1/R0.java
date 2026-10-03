package p064y1;

import android.content.Context;
import android.util.Log;
import androidx.fragment.app.Fragment;
import com.minhub.gamehub.game.GodotGameActivity;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;
import p024j.C0269h;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class R0 implements InvocationHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0269h f6125a;
    public final Class b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Fragment f6126c;

    public R0(C0269h host, Class fragmentClass) {
        Intrinsics.checkNotNullParameter(host, "host");
        Intrinsics.checkNotNullParameter(fragmentClass, "fragmentClass");
        this.f6125a = host;
        this.b = fragmentClass;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object proxy, Method method, Object[] objArr) {
        GodotGameActivity godotGameActivity = (GodotGameActivity) this.f6125a.f4518c;
        Intrinsics.checkNotNullParameter(proxy, "proxy");
        Intrinsics.checkNotNullParameter(method, "method");
        String name = method.getName();
        if (objArr == null) {
            objArr = new Object[0];
        }
        Class cls = Boolean.TYPE;
        if (name != null) {
            switch (name.hashCode()) {
                case -2101760855:
                    if (name.equals("getCommandLine")) {
                        String str = godotGameActivity.f3710e;
                        if (str == null) {
                            return CollectionsKt.emptyList();
                        }
                        Context context = godotGameActivity.getApplicationContext();
                        Intrinsics.checkNotNullExpressionValue(context, "getApplicationContext(...)");
                        Intrinsics.checkNotNullParameter(context, "context");
                        N0 frameRate = C0363c0.b(context);
                        O0 renderer = C0363c0.d(context);
                        Intrinsics.checkNotNullParameter(frameRate, "frameRate");
                        Intrinsics.checkNotNullParameter(renderer, "renderer");
                        List listCreateListBuilder = CollectionsKt.createListBuilder();
                        if (frameRate != N0.UNLIMITED) {
                            listCreateListBuilder.add("--max-fps");
                            listCreateListBuilder.add(String.valueOf(frameRate.f6108c));
                        }
                        if (renderer == O0.OPENGL) {
                            listCreateListBuilder.add("--rendering-method");
                            listCreateListBuilder.add("gl_compatibility");
                            listCreateListBuilder.add("--rendering-driver");
                            listCreateListBuilder.add("opengl3");
                            listCreateListBuilder.add("--render-thread");
                            listCreateListBuilder.add("safe");
                        }
                        List listBuild = CollectionsKt.build(listCreateListBuilder);
                        Log.i("GodotGame", "Godot options: " + listBuild);
                        return CollectionsKt___CollectionsKt.plus((Collection) CollectionsKt.listOf((Object[]) new String[]{"--main-pack", str}), (Iterable) listBuild);
                    }
                    break;
                case -1909208776:
                    if (name.equals("onGodotForceQuit")) {
                        godotGameActivity.finish();
                        if (Intrinsics.areEqual(method.getReturnType(), cls) || Intrinsics.areEqual(method.getReturnType(), cls)) {
                            return Boolean.TRUE;
                        }
                    }
                    return null;
                case -1776922004:
                    if (name.equals("toString")) {
                        return "GodotHostProxy";
                    }
                    break;
                case -1462010926:
                    if (name.equals("supportsFeature")) {
                        return Boolean.FALSE;
                    }
                    break;
                case -1295482945:
                    if (name.equals("equals")) {
                        return Boolean.valueOf(proxy == ArraysKt.getOrNull(objArr, 0));
                    }
                    break;
                case 147696667:
                    if (name.equals("hashCode")) {
                        return Integer.valueOf(System.identityHashCode(proxy));
                    }
                    break;
                case 421933189:
                    if (name.equals("getActivity")) {
                        return godotGameActivity;
                    }
                    break;
                case 909915042:
                    if (name.equals("getHostPlugins")) {
                        return SetsKt.emptySet();
                    }
                    break;
                case 1021874585:
                    if (!name.equals("onNewGodotInstanceRequested")) {
                    }
                    return 0;
                case 1954354603:
                    if (name.equals("getGodot")) {
                        Fragment fragment = this.f6126c;
                        if (fragment != null) {
                            try {
                                return this.b.getMethod("getGodot", null).invoke(fragment, null);
                            } catch (Exception unused) {
                            }
                        }
                    }
                    return null;
            }
        }
        Class<?> returnType = method.getReturnType();
        Intrinsics.checkNotNullExpressionValue(returnType, "getReturnType(...)");
        if (!Intrinsics.areEqual(returnType, Void.TYPE)) {
            if (Intrinsics.areEqual(returnType, cls) || Intrinsics.areEqual(returnType, cls)) {
                return Boolean.FALSE;
            }
            Class cls2 = Integer.TYPE;
            if (!Intrinsics.areEqual(returnType, cls2) && !Intrinsics.areEqual(returnType, cls2)) {
                Class cls3 = Long.TYPE;
                if (Intrinsics.areEqual(returnType, cls3) || Intrinsics.areEqual(returnType, cls3)) {
                    return 0L;
                }
                if (!returnType.isPrimitive()) {
                    if (List.class.isAssignableFrom(returnType)) {
                        return CollectionsKt.emptyList();
                    }
                    if (Set.class.isAssignableFrom(returnType)) {
                        return SetsKt.emptySet();
                    }
                }
            }
            return 0;
        }
        return null;
    }
}
