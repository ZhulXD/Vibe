package p064y1;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import java.lang.reflect.InvocationTargetException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class T0 extends FragmentFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Class f6137a;

    public T0(Class cls) {
        this.f6137a = cls;
    }

    @Override // androidx.fragment.app.FragmentFactory
    public final Fragment instantiate(ClassLoader classLoader, String className) throws IllegalAccessException, InstantiationException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(classLoader, "classLoader");
        Intrinsics.checkNotNullParameter(className, "className");
        boolean zAreEqual = Intrinsics.areEqual(className, "org.godotengine.godot.GodotFragment");
        Class cls = this.f6137a;
        if (zAreEqual || Intrinsics.areEqual(className, cls.getName())) {
            Object objNewInstance = cls.getDeclaredConstructor(null).newInstance(null);
            Intrinsics.checkNotNull(objNewInstance, "null cannot be cast to non-null type androidx.fragment.app.Fragment");
            return (Fragment) objNewInstance;
        }
        Fragment fragmentInstantiate = super.instantiate(classLoader, className);
        Intrinsics.checkNotNullExpressionValue(fragmentInstantiate, "instantiate(...)");
        return fragmentInstantiate;
    }
}
