package org.godotengine.godot.plugin;

import C1.RunnableC0068g1;
import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.util.Log;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.godotengine.godot.Godot;
import org.godotengine.godot.plugin.AndroidRuntimePlugin;
import org.godotengine.godot.variant.Callable;
import p005c.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\n\u0010\b\u001a\u0004\u0018\u00010\tH\u0007J\n\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0017J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u0016\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0014H\u0007¨\u0006\u0018"}, d2 = {"Lorg/godotengine/godot/plugin/AndroidRuntimePlugin;", "Lorg/godotengine/godot/plugin/GodotPlugin;", "godot", "Lorg/godotengine/godot/Godot;", "<init>", "(Lorg/godotengine/godot/Godot;)V", "getPluginName", "", "getApplicationContext", "Landroid/content/Context;", "getActivity", "Landroid/app/Activity;", "createRunnableFromGodotCallable", "Ljava/lang/Runnable;", "godotCallable", "Lorg/godotengine/godot/variant/Callable;", "createCallableFromGodotCallable", "Ljava/util/concurrent/Callable;", "", "updatePersistableUriPermission", "", "uriString", "persist", "Companion", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAndroidRuntimePlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidRuntimePlugin.kt\norg/godotengine/godot/plugin/AndroidRuntimePlugin\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,170:1\n29#2:171\n*S KotlinDebug\n*F\n+ 1 AndroidRuntimePlugin.kt\norg/godotengine/godot/plugin/AndroidRuntimePlugin\n*L\n156#1:171\n*E\n"})
public final class AndroidRuntimePlugin extends GodotPlugin {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = "AndroidRuntimePlugin";

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J%\u0010\u0007\u001a\u0004\u0018\u00010\u00012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\t2\u0006\u0010\n\u001a\u00020\u000bH\u0003¢\u0006\u0002\u0010\fJ\u001a\u0010\r\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0010H\u0003J%\u0010\u0011\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0012\u001a\u00020\u00132\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\tH\u0003¢\u0006\u0002\u0010\u0014R\u0016\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lorg/godotengine/godot/plugin/AndroidRuntimePlugin$Companion;", "", "<init>", "()V", "TAG", "", "kotlin.jvm.PlatformType", "generateProxyInstance", "interfaces", "", "invocationHandler", "Ljava/lang/reflect/InvocationHandler;", "([Ljava/lang/String;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;", "createProxyFromGodotCallable", "interfaceName", "godotCallable", "Lorg/godotengine/godot/variant/Callable;", "createProxyFromGodotObjectID", "godotObjectID", "", "(J[Ljava/lang/String;)Ljava/lang/Object;", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nAndroidRuntimePlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidRuntimePlugin.kt\norg/godotengine/godot/plugin/AndroidRuntimePlugin$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,170:1\n11228#2:171\n11563#2,3:172\n37#3:175\n36#3,3:176\n*S KotlinDebug\n*F\n+ 1 AndroidRuntimePlugin.kt\norg/godotengine/godot/plugin/AndroidRuntimePlugin$Companion\n*L\n60#1:171\n60#1:172,3\n60#1:175\n60#1:176,3\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        @JvmStatic
        @a
        public final Object createProxyFromGodotCallable(final String interfaceName, final Callable godotCallable) {
            return generateProxyInstance(new String[]{interfaceName}, new InvocationHandler() { // from class: g2.b
                @Override // java.lang.reflect.InvocationHandler
                public final Object invoke(Object obj, Method method, Object[] objArr) {
                    return AndroidRuntimePlugin.Companion.createProxyFromGodotCallable$lambda$1(interfaceName, godotCallable, obj, method, objArr);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Object createProxyFromGodotCallable$lambda$1(String str, Callable callable, Object obj, Method method, Object[] objArr) {
            String name = method.getName();
            if (name != null) {
                int iHashCode = name.hashCode();
                if (iHashCode != -1776922004) {
                    if (iHashCode != -1295482945) {
                        if (iHashCode == 147696667 && name.equals("hashCode")) {
                            return Integer.valueOf(callable.hashCode());
                        }
                    } else if (name.equals("equals")) {
                        return Boolean.valueOf(obj == objArr[0]);
                    }
                } else if (name.equals("toString")) {
                    return kotlin.collections.unsigned.a.o("Godot Callable Proxy for ", str);
                }
            }
            if (objArr == null) {
                objArr = new Object[0];
            }
            return callable.call(Arrays.copyOf(objArr, objArr.length));
        }

        /* JADX INFO: Access modifiers changed from: private */
        @JvmStatic
        @a
        public final Object createProxyFromGodotObjectID(final long godotObjectID, final String[] interfaces) {
            return generateProxyInstance(interfaces, new InvocationHandler() { // from class: g2.c
                @Override // java.lang.reflect.InvocationHandler
                public final Object invoke(Object obj, Method method, Object[] objArr) {
                    return AndroidRuntimePlugin.Companion.createProxyFromGodotObjectID$lambda$2(interfaces, godotObjectID, obj, method, objArr);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Object createProxyFromGodotObjectID$lambda$2(String[] strArr, long j2, Object obj, Method method, Object[] objArr) {
            String name = method.getName();
            if (name != null) {
                int iHashCode = name.hashCode();
                if (iHashCode != -1776922004) {
                    if (iHashCode != -1295482945) {
                        if (iHashCode == 147696667 && name.equals("hashCode")) {
                            return Integer.valueOf(Long.hashCode(j2));
                        }
                    } else if (name.equals("equals")) {
                        return Boolean.valueOf(obj == objArr[0]);
                    }
                } else if (name.equals("toString")) {
                    return kotlin.collections.unsigned.a.o("Godot Object Proxy for ", ArraysKt___ArraysKt.joinToString$default(strArr, ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62, (Object) null));
                }
            }
            Callable.Companion companion = Callable.INSTANCE;
            Intrinsics.checkNotNull(name);
            if (objArr == null) {
                objArr = new Object[0];
            }
            return companion.call(j2, name, Arrays.copyOf(objArr, objArr.length));
        }

        /* JADX INFO: Access modifiers changed from: private */
        @JvmStatic
        @a
        public final Object generateProxyInstance(String[] interfaces, InvocationHandler invocationHandler) {
            try {
                ArrayList arrayList = new ArrayList(interfaces.length);
                for (String str : interfaces) {
                    arrayList.add(Class.forName(str));
                }
                return Proxy.newProxyInstance(invocationHandler.getClass().getClassLoader(), (Class[]) arrayList.toArray(new Class[0]), invocationHandler);
            } catch (Exception e2) {
                Log.w(AndroidRuntimePlugin.TAG, "Error generating Godot proxy for interfaces " + ArraysKt___ArraysKt.joinToString$default(interfaces, ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62, (Object) null), e2);
                return null;
            }
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidRuntimePlugin(Godot godot) {
        super(godot);
        Intrinsics.checkNotNullParameter(godot, "godot");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object createCallableFromGodotCallable$lambda$1(Callable callable) {
        return callable.call(new Object[0]);
    }

    @JvmStatic
    @a
    private static final Object createProxyFromGodotCallable(String str, Callable callable) {
        return INSTANCE.createProxyFromGodotCallable(str, callable);
    }

    @JvmStatic
    @a
    private static final Object createProxyFromGodotObjectID(long j2, String[] strArr) {
        return INSTANCE.createProxyFromGodotObjectID(j2, strArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createRunnableFromGodotCallable$lambda$0(Callable callable) {
        callable.call(new Object[0]);
    }

    @JvmStatic
    @a
    private static final Object generateProxyInstance(String[] strArr, InvocationHandler invocationHandler) {
        return INSTANCE.generateProxyInstance(strArr, invocationHandler);
    }

    @UsedByGodot
    public final java.util.concurrent.Callable<Object> createCallableFromGodotCallable(final Callable godotCallable) {
        Intrinsics.checkNotNullParameter(godotCallable, "godotCallable");
        return new java.util.concurrent.Callable() { // from class: g2.a
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return AndroidRuntimePlugin.createCallableFromGodotCallable$lambda$1(godotCallable);
            }
        };
    }

    @UsedByGodot
    public final Runnable createRunnableFromGodotCallable(Callable godotCallable) {
        Intrinsics.checkNotNullParameter(godotCallable, "godotCallable");
        return new RunnableC0068g1(15, godotCallable);
    }

    @Override // org.godotengine.godot.plugin.GodotPlugin
    @UsedByGodot
    public Activity getActivity() {
        return super.getActivity();
    }

    @UsedByGodot
    public final Context getApplicationContext() {
        Activity activity = getActivity();
        if (activity != null) {
            return activity.getApplicationContext();
        }
        return null;
    }

    @Override // org.godotengine.godot.plugin.GodotPlugin
    public String getPluginName() {
        return "AndroidRuntime";
    }

    @UsedByGodot
    public final boolean updatePersistableUriPermission(String uriString, boolean persist) {
        Intrinsics.checkNotNullParameter(uriString, "uriString");
        try {
            Uri uri = Uri.parse(uriString);
            Intrinsics.checkExpressionValueIsNotNull(uri, "Uri.parse(this)");
            ContentResolver contentResolver = getContext().getContentResolver();
            if (persist) {
                contentResolver.takePersistableUriPermission(uri, 3);
                return true;
            }
            contentResolver.releasePersistableUriPermission(uri, 3);
            return true;
        } catch (RuntimeException e2) {
            Log.d(TAG, "Error updating persistable permission: ", e2);
            return false;
        }
    }
}
