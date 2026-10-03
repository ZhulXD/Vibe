package com.bumptech.glide;

import A1.C0009b;
import A1.C0021h;
import android.R;
import android.app.Activity;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.bumptech.glide.manager.q;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.IntCompanionObject;
import p014f0.r;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b implements ComponentCallbacks2 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static volatile b f3198i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static volatile boolean f3199j;
    public final p016g0.b b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p019h0.e f3200c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final e f3201d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final p016g0.g f3202e;
    public final com.bumptech.glide.manager.m f;
    public final Y0.e g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList f3203h = new ArrayList();

    public b(Context context, r rVar, p019h0.e eVar, p016g0.b bVar, p016g0.g gVar, com.bumptech.glide.manager.m mVar, Y0.e eVar2, Y0.e eVar3, p041q.e eVar4, List list, ArrayList arrayList, p000a.a aVar, C0009b c0009b) {
        this.b = bVar;
        this.f3202e = gVar;
        this.f3200c = eVar;
        this.f = mVar;
        this.g = eVar2;
        this.f3201d = new e(context, gVar, new q(this, arrayList, aVar), new p043r.b(), eVar3, eVar4, list, rVar, c0009b);
    }

    public static b a(Context context) {
        GeneratedAppGlideModule generatedAppGlideModule;
        if (f3198i == null) {
            try {
                generatedAppGlideModule = (GeneratedAppGlideModule) Class.forName("com.bumptech.glide.GeneratedAppGlideModuleImpl").getDeclaredConstructor(Context.class).newInstance(context.getApplicationContext().getApplicationContext());
            } catch (ClassNotFoundException unused) {
                if (Log.isLoggable("Glide", 5)) {
                    Log.w("Glide", "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored");
                }
                generatedAppGlideModule = null;
            } catch (IllegalAccessException e2) {
                throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e2);
            } catch (InstantiationException e3) {
                throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e3);
            } catch (NoSuchMethodException e4) {
                throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e4);
            } catch (InvocationTargetException e5) {
                throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e5);
            }
            synchronized (b.class) {
                if (f3198i == null) {
                    if (f3199j) {
                        throw new IllegalStateException("Glide has been called recursively, this is probably an internal library error!");
                    }
                    f3199j = true;
                    try {
                        b(context, generatedAppGlideModule);
                        f3199j = false;
                    } catch (Throwable th) {
                        f3199j = false;
                        throw th;
                    }
                }
            }
        }
        return f3198i;
    }

    public static void b(Context context, GeneratedAppGlideModule generatedAppGlideModule) {
        p041q.e eVar = new p041q.e(0);
        f fVar = new f(0);
        Y0.e eVar2 = new Y0.e(22);
        Context applicationContext = context.getApplicationContext();
        List list = Collections.EMPTY_LIST;
        if (Log.isLoggable("ManifestParser", 3)) {
            Log.d("ManifestParser", "Loading Glide modules");
        }
        ArrayList arrayList = new ArrayList();
        try {
            ApplicationInfo applicationInfo = applicationContext.getPackageManager().getApplicationInfo(applicationContext.getPackageName(), 128);
            if (applicationInfo != null && applicationInfo.metaData != null) {
                if (Log.isLoggable("ManifestParser", 2)) {
                    Log.v("ManifestParser", "Got app info metadata: " + applicationInfo.metaData);
                }
                for (String str : applicationInfo.metaData.keySet()) {
                    if ("GlideModule".equals(applicationInfo.metaData.get(str))) {
                        c.D(str);
                        throw null;
                    }
                }
                if (Log.isLoggable("ManifestParser", 3)) {
                    Log.d("ManifestParser", "Finished loading Glide modules");
                }
            } else if (Log.isLoggable("ManifestParser", 3)) {
                Log.d("ManifestParser", "Got null app info metadata");
            }
        } catch (PackageManager.NameNotFoundException e2) {
            if (Log.isLoggable("ManifestParser", 6)) {
                Log.e("ManifestParser", "Failed to parse glide modules", e2);
            }
        }
        if (generatedAppGlideModule != null && !new HashSet().isEmpty()) {
            new HashSet();
            Iterator it = arrayList.iterator();
            if (it.hasNext()) {
                throw E.b.g(it);
            }
        }
        if (Log.isLoggable("Glide", 3)) {
            Iterator it2 = arrayList.iterator();
            if (it2.hasNext()) {
                throw E.b.g(it2);
            }
        }
        Iterator it3 = arrayList.iterator();
        if (it3.hasNext()) {
            throw E.b.g(it3);
        }
        p022i0.b bVar = new p022i0.b();
        if (p022i0.e.f4431d == 0) {
            p022i0.e.f4431d = Math.min(4, Runtime.getRuntime().availableProcessors());
        }
        int i3 = p022i0.e.f4431d;
        if (TextUtils.isEmpty("source")) {
            throw new IllegalArgumentException("Name must be non-null and non-empty, but given: source");
        }
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        p022i0.e eVar3 = new p022i0.e(new ThreadPoolExecutor(i3, i3, 0L, timeUnit, new PriorityBlockingQueue(), new p022i0.c(bVar, "source", false)));
        p022i0.b bVar2 = new p022i0.b();
        if (TextUtils.isEmpty("disk-cache")) {
            throw new IllegalArgumentException("Name must be non-null and non-empty, but given: disk-cache");
        }
        p022i0.e eVar4 = new p022i0.e(new ThreadPoolExecutor(1, 1, 0L, timeUnit, new PriorityBlockingQueue(), new p022i0.c(bVar2, "disk-cache", true)));
        if (p022i0.e.f4431d == 0) {
            p022i0.e.f4431d = Math.min(4, Runtime.getRuntime().availableProcessors());
        }
        int i4 = p022i0.e.f4431d >= 4 ? 2 : 1;
        p022i0.b bVar3 = new p022i0.b();
        if (TextUtils.isEmpty("animation")) {
            throw new IllegalArgumentException("Name must be non-null and non-empty, but given: animation");
        }
        p022i0.e eVar5 = new p022i0.e(new ThreadPoolExecutor(i4, i4, 0L, timeUnit, new PriorityBlockingQueue(), new p022i0.c(bVar3, "animation", true)));
        p019h0.g gVar = new p019h0.g(new p019h0.f(applicationContext));
        Y0.e eVar6 = new Y0.e(25);
        int i5 = gVar.f4370a;
        p016g0.b hVar = i5 > 0 ? new p016g0.h(i5) : new com.google.android.material.datepicker.c(6);
        p016g0.g gVar2 = new p016g0.g(gVar.f4371c);
        p019h0.e eVar7 = new p019h0.e(gVar.b);
        C0021h c0021h = new C0021h(applicationContext, 4, false);
        C0009b c0009b = new C0009b();
        c0009b.b = c0021h;
        r rVar = new r(eVar7, c0009b, eVar4, eVar3, new p022i0.e(new ThreadPoolExecutor(0, IntCompanionObject.MAX_VALUE, p022i0.e.f4430c, timeUnit, new SynchronousQueue(), new p022i0.c(new p022i0.b(), "source-unlimited", false))), eVar5);
        List list2 = Collections.EMPTY_LIST;
        C0009b c0009b2 = new C0009b();
        c0009b2.b = Collections.unmodifiableMap(new HashMap(fVar.f3214a));
        b bVar4 = new b(applicationContext, rVar, eVar7, hVar, gVar2, new com.bumptech.glide.manager.m(), eVar6, eVar2, eVar, list2, arrayList, generatedAppGlideModule, c0009b2);
        applicationContext.registerComponentCallbacks(bVar4);
        f3198i = bVar4;
    }

    public static n c(View view) {
        Context context = view.getContext();
        p063y0.f.c(context, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        com.bumptech.glide.manager.m mVar = a(context).f;
        mVar.getClass();
        char[] cArr = p063y0.n.f6026a;
        if (!(Looper.myLooper() == Looper.getMainLooper())) {
            return mVar.c(view.getContext().getApplicationContext());
        }
        p063y0.f.c(view.getContext(), "Unable to obtain a request manager for a view without a Context");
        Activity activityA = com.bumptech.glide.manager.m.a(view.getContext());
        if (activityA == null) {
            return mVar.c(view.getContext().getApplicationContext());
        }
        if (!(activityA instanceof FragmentActivity)) {
            return mVar.c(view.getContext().getApplicationContext());
        }
        FragmentActivity fragmentActivity = (FragmentActivity) activityA;
        p041q.e eVar = mVar.b;
        eVar.clear();
        com.bumptech.glide.manager.m.b(fragmentActivity.getSupportFragmentManager().getFragments(), eVar);
        View viewFindViewById = fragmentActivity.findViewById(R.id.content);
        Fragment fragment = null;
        while (!view.equals(viewFindViewById) && (fragment = (Fragment) eVar.get(view)) == null && (view.getParent() instanceof View)) {
            view = (View) view.getParent();
        }
        eVar.clear();
        if (fragment == null) {
            return mVar.d(fragmentActivity);
        }
        p063y0.f.c(fragment.getContext(), "You cannot start a load on a fragment before it is attached or after it is destroyed");
        if (!(Looper.myLooper() == Looper.getMainLooper())) {
            return mVar.c(fragment.getContext().getApplicationContext());
        }
        if (fragment.getActivity() != null) {
            mVar.f3265c.c(fragment.getActivity());
        }
        FragmentManager childFragmentManager = fragment.getChildFragmentManager();
        Context context2 = fragment.getContext();
        return mVar.f3266d.a(context2, a(context2.getApplicationContext()), fragment.getLifecycle(), childFragmentManager, fragment.isVisible());
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
        p063y0.n.a();
        this.f3200c.e(0L);
        this.b.o();
        p016g0.g gVar = this.f3202e;
        synchronized (gVar) {
            gVar.b(0);
        }
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i3) {
        long j2;
        p063y0.n.a();
        synchronized (this.f3203h) {
            try {
                ArrayList arrayList = this.f3203h;
                int size = arrayList.size();
                int i4 = 0;
                while (i4 < size) {
                    Object obj = arrayList.get(i4);
                    i4++;
                    ((n) obj).getClass();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        p019h0.e eVar = this.f3200c;
        eVar.getClass();
        if (i3 >= 40) {
            eVar.e(0L);
        } else if (i3 >= 20 || i3 == 15) {
            synchronized (eVar) {
                j2 = eVar.b;
            }
            eVar.e(j2 / 2);
        }
        this.b.k(i3);
        p016g0.g gVar = this.f3202e;
        synchronized (gVar) {
            try {
                if (i3 >= 40) {
                    synchronized (gVar) {
                        gVar.b(0);
                    }
                } else if (i3 >= 20 || i3 == 15) {
                    gVar.b(gVar.f4325e / 2);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }
}
