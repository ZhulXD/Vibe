package p064y1;

import L1.a;
import android.content.Context;
import android.util.Log;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import java.lang.reflect.Field;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class U0 extends FragmentManager.FragmentLifecycleCallbacks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Class f6140a;
    public final /* synthetic */ V0 b;

    public U0(Class cls, V0 v2) {
        this.f6140a = cls;
        this.b = v2;
    }

    @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
    public final void onFragmentAttached(FragmentManager fm, Fragment f, Context context) {
        V0 v2 = this.b;
        Intrinsics.checkNotNullParameter(fm, "fm");
        Intrinsics.checkNotNullParameter(f, "f");
        Intrinsics.checkNotNullParameter(context, "context");
        boolean zAreEqual = Intrinsics.areEqual(f.getClass().getName(), "org.godotengine.godot.GodotFragment");
        Class cls = this.f6140a;
        if (zAreEqual || Intrinsics.areEqual(f.getClass(), cls)) {
            try {
                Field declaredField = cls.getDeclaredField("parentHost");
                declaredField.setAccessible(true);
                declaredField.set(f, v2.f6147d);
                a aVar = v2.b;
                Log.i("GodotRuntimeLoader", "parentHost injected for Godot " + aVar.b + " (" + aVar.a() + ")");
            } catch (Exception e2) {
                Log.e("GodotRuntimeLoader", "Failed to inject parentHost", e2);
            }
        }
    }
}
