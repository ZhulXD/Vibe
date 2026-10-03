package com.bumptech.glide.manager;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import java.util.Iterator;
import java.util.List;
import p033m0.w;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class m implements Handler.Callback {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Y0.e f3263e = new Y0.e(29);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile com.bumptech.glide.n f3264a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final g f3265c;
    public final p041q.e b = new p041q.e(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final k f3266d = new k(f3263e);

    public m() {
        this.f3265c = (w.f && w.f5141e) ? new f() : new Y0.e(26);
    }

    public static Activity a(Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return a(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    public static void b(List list, p041q.e eVar) {
        if (list == null) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Fragment fragment = (Fragment) it.next();
            if (fragment != null && fragment.getView() != null) {
                eVar.put(fragment.getView(), fragment);
                b(fragment.getChildFragmentManager().getFragments(), eVar);
            }
        }
    }

    public final com.bumptech.glide.n c(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("You cannot start a load on a null Context");
        }
        char[] cArr = p063y0.n.f6026a;
        if (Looper.myLooper() == Looper.getMainLooper() && !(context instanceof Application)) {
            if (context instanceof FragmentActivity) {
                return d((FragmentActivity) context);
            }
            if (context instanceof ContextWrapper) {
                ContextWrapper contextWrapper = (ContextWrapper) context;
                if (contextWrapper.getBaseContext().getApplicationContext() != null) {
                    return c(contextWrapper.getBaseContext());
                }
            }
        }
        if (this.f3264a == null) {
            synchronized (this) {
                try {
                    if (this.f3264a == null) {
                        this.f3264a = new com.bumptech.glide.n(com.bumptech.glide.b.a(context.getApplicationContext()), new Y0.e(24), new Y0.e(27), context.getApplicationContext());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f3264a;
    }

    public final com.bumptech.glide.n d(FragmentActivity fragmentActivity) {
        char[] cArr = p063y0.n.f6026a;
        if (!(Looper.myLooper() == Looper.getMainLooper())) {
            return c(fragmentActivity.getApplicationContext());
        }
        if (fragmentActivity.isDestroyed()) {
            throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
        }
        this.f3265c.c(fragmentActivity);
        Activity activityA = a(fragmentActivity);
        return this.f3266d.a(fragmentActivity, com.bumptech.glide.b.a(fragmentActivity.getApplicationContext()), fragmentActivity.getLifecycle(), fragmentActivity.getSupportFragmentManager(), activityA == null || !activityA.isFinishing());
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        return false;
    }
}
