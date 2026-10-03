package androidx.emoji2.text;

import A1.C0021h;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ProcessLifecycleInitializer;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class EmojiCompatInitializer implements Q.b {
    @Override // Q.b
    public final Object create(Context context) {
        Object objB;
        r rVar = new r(new C0021h(context, 2));
        rVar.f1635a = 1;
        if (j.f2876k == null) {
            synchronized (j.f2875j) {
                try {
                    if (j.f2876k == null) {
                        j.f2876k = new j(rVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        Q.a aVarC = Q.a.c(context);
        aVarC.getClass();
        synchronized (Q.a.f1829e) {
            try {
                objB = aVarC.f1830a.get(ProcessLifecycleInitializer.class);
                if (objB == null) {
                    objB = aVarC.b(ProcessLifecycleInitializer.class, new HashSet());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        final Lifecycle lifecycle = ((LifecycleOwner) objB).getLifecycle();
        lifecycle.addObserver(new DefaultLifecycleObserver(this) { // from class: androidx.emoji2.text.EmojiCompatInitializer.1
            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public final void onResume(LifecycleOwner lifecycleOwner) {
                (Build.VERSION.SDK_INT >= 28 ? b.a(Looper.getMainLooper()) : new Handler(Looper.getMainLooper())).postDelayed(new l(), 500L);
                lifecycle.removeObserver(this);
            }
        });
        return Boolean.TRUE;
    }

    @Override // Q.b
    public final List dependencies() {
        return Collections.singletonList(ProcessLifecycleInitializer.class);
    }
}
